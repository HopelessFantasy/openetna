.class abstract Ljava/lang/AbstractStringBuilder;
.super Ljava/lang/Object;
.source "AbstractStringBuilder.java"


# static fields
.field static final INITIAL_CAPACITY:I = 0x10


# instance fields
.field private count:I

.field private shared:Z

.field private value:[C


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/16 v0, 0x10

    new-array v0, v0, [C

    iput-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    .line 79
    return-void
.end method

.method constructor <init>(I)V
    .registers 3
    .parameter "capacity"

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    if-gez p1, :cond_b

    .line 83
    new-instance v0, Ljava/lang/NegativeArraySizeException;

    invoke-direct {v0}, Ljava/lang/NegativeArraySizeException;-><init>()V

    throw v0

    .line 85
    :cond_b
    new-array v0, p1, [C

    iput-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    .line 86
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .registers 5
    .parameter "string"

    .prologue
    const/4 v2, 0x0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 90
    iput-boolean v2, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    .line 91
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/lit8 v0, v0, 0x10

    new-array v0, v0, [C

    iput-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    .line 93
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    invoke-virtual {p1, v2, v0, v1, v2}, Ljava/lang/String;->_getChars(II[CI)V

    .line 95
    return-void
.end method

.method private enlargeBuffer(I)V
    .registers 7
    .parameter "min"

    .prologue
    const/4 v4, 0x0

    .line 98
    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    array-length v2, v2

    shl-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v2, 0x2

    .line 99
    .local v1, twice:I
    if-le p1, v1, :cond_19

    move v2, p1

    :goto_b
    new-array v0, v2, [C

    .line 100
    .local v0, newData:[C
    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v3, p0, Ljava/lang/AbstractStringBuilder;->count:I

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 101
    iput-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    .line 102
    iput-boolean v4, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    .line 103
    return-void

    .end local v0           #newData:[C
    :cond_19
    move v2, v1

    .line 99
    goto :goto_b
.end method

.method private move(II)V
    .registers 11
    .parameter "size"
    .parameter "index"

    .prologue
    const/4 v7, 0x0

    .line 413
    iget-object v4, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    array-length v4, v4

    iget v5, p0, Ljava/lang/AbstractStringBuilder;->count:I

    sub-int/2addr v4, v5

    if-lt v4, p1, :cond_33

    .line 414
    iget-boolean v4, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    if-nez v4, :cond_1a

    .line 415
    iget-object v4, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget-object v5, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    add-int v6, p2, p1

    iget v7, p0, Ljava/lang/AbstractStringBuilder;->count:I

    sub-int/2addr v7, p2

    invoke-static {v4, p2, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 431
    :goto_19
    return-void

    .line 419
    :cond_1a
    iget-object v4, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    array-length v3, v4

    .line 425
    .local v3, newSize:I
    :goto_1d
    new-array v2, v3, [C

    .line 426
    .local v2, newData:[C
    iget-object v4, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    invoke-static {v4, v7, v2, v7, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 428
    iget-object v4, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    add-int v5, p2, p1

    iget v6, p0, Ljava/lang/AbstractStringBuilder;->count:I

    sub-int/2addr v6, p2

    invoke-static {v4, p2, v2, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 429
    iput-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    .line 430
    iput-boolean v7, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    goto :goto_19

    .line 421
    .end local v2           #newData:[C
    .end local v3           #newSize:I
    :cond_33
    iget v4, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int v0, v4, p1

    .local v0, a:I
    iget-object v4, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    array-length v4, v4

    shl-int/lit8 v4, v4, 0x1

    add-int/lit8 v1, v4, 0x2

    .line 422
    .local v1, b:I
    if-le v0, v1, :cond_42

    move v3, v0

    .restart local v3       #newSize:I
    :goto_41
    goto :goto_1d

    .end local v3           #newSize:I
    :cond_42
    move v3, v1

    goto :goto_41
.end method


# virtual methods
.method final append0(C)V
    .registers 5
    .parameter "ch"

    .prologue
    .line 152
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    array-length v1, v1

    if-ne v0, v1, :cond_e

    .line 153
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Ljava/lang/AbstractStringBuilder;->enlargeBuffer(I)V

    .line 155
    :cond_e
    iget-boolean v0, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    if-eqz v0, :cond_1f

    .line 156
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    invoke-virtual {v0}, [C->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    iput-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    .line 157
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    .line 159
    :cond_1f
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    aput-char p1, v0, v1

    .line 160
    return-void
.end method

.method final append0(Ljava/lang/CharSequence;II)V
    .registers 11
    .parameter "s"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 182
    if-nez p1, :cond_4

    .line 183
    const-string p1, "null"

    .line 185
    :cond_4
    if-ltz p2, :cond_10

    if-ltz p3, :cond_10

    if-gt p2, p3, :cond_10

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-le p3, v5, :cond_16

    .line 186
    :cond_10
    new-instance v5, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v5}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v5

    .line 190
    :cond_16
    sub-int v0, p3, p2

    .line 191
    .local v0, adding:I
    iget v5, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int v4, v5, v0

    .line 192
    .local v4, newSize:I
    iget-object v5, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    array-length v5, v5

    if-le v4, v5, :cond_34

    .line 193
    invoke-direct {p0, v4}, Ljava/lang/AbstractStringBuilder;->enlargeBuffer(I)V

    .line 199
    :cond_24
    :goto_24
    instance-of v5, p1, Ljava/lang/String;

    if-eqz v5, :cond_46

    .line 201
    check-cast p1, Ljava/lang/String;

    .end local p1
    iget-object v5, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v6, p0, Ljava/lang/AbstractStringBuilder;->count:I

    invoke-virtual {p1, p2, p3, v5, v6}, Ljava/lang/String;->_getChars(II[CI)V

    .line 210
    :cond_31
    iput v4, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 212
    return-void

    .line 194
    .restart local p1
    :cond_34
    iget-boolean v5, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    if-eqz v5, :cond_24

    .line 195
    iget-object v5, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    invoke-virtual {v5}, [C->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [C

    iput-object v5, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    .line 196
    const/4 v5, 0x0

    iput-boolean v5, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    goto :goto_24

    .line 204
    :cond_46
    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 205
    .local v2, j:I
    move v1, p2

    .local v1, i:I
    move v3, v2

    .end local v2           #j:I
    .local v3, j:I
    :goto_4a
    if-ge v1, p3, :cond_31

    .line 206
    iget-object v5, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    add-int/lit8 v2, v3, 0x1

    .end local v3           #j:I
    .restart local v2       #j:I
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    aput-char v6, v5, v3

    .line 205
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    .end local v2           #j:I
    .restart local v3       #j:I
    goto :goto_4a
.end method

.method final append0(Ljava/lang/String;)V
    .registers 7
    .parameter "string"

    .prologue
    const/4 v4, 0x0

    .line 163
    if-nez p1, :cond_7

    .line 164
    invoke-virtual {p0}, Ljava/lang/AbstractStringBuilder;->appendNull()V

    .line 179
    :goto_6
    return-void

    .line 167
    :cond_7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 168
    .local v0, adding:I
    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int v1, v2, v0

    .line 169
    .local v1, newSize:I
    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    array-length v2, v2

    if-le v1, v2, :cond_21

    .line 170
    invoke-direct {p0, v1}, Ljava/lang/AbstractStringBuilder;->enlargeBuffer(I)V

    .line 176
    :cond_17
    :goto_17
    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v3, p0, Ljava/lang/AbstractStringBuilder;->count:I

    invoke-virtual {p1, v4, v0, v2, v3}, Ljava/lang/String;->_getChars(II[CI)V

    .line 178
    iput v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    goto :goto_6

    .line 171
    :cond_21
    iget-boolean v2, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    if-eqz v2, :cond_17

    .line 172
    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    invoke-virtual {v2}, [C->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [C

    iput-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    .line 173
    iput-boolean v4, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    goto :goto_17
.end method

.method final append0([C)V
    .registers 7
    .parameter "chars"

    .prologue
    const/4 v4, 0x0

    .line 120
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    array-length v2, p1

    add-int v0, v1, v2

    .line 121
    .local v0, newSize:I
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    array-length v1, v1

    if-le v0, v1, :cond_19

    .line 122
    invoke-direct {p0, v0}, Ljava/lang/AbstractStringBuilder;->enlargeBuffer(I)V

    .line 127
    :cond_e
    :goto_e
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    array-length v3, p1

    invoke-static {p1, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 128
    iput v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 129
    return-void

    .line 123
    :cond_19
    iget-boolean v1, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    if-eqz v1, :cond_e

    .line 124
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    invoke-virtual {v1}, [C->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [C

    iput-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    .line 125
    iput-boolean v4, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    goto :goto_e
.end method

.method final append0([CII)V
    .registers 7
    .parameter "chars"
    .parameter "start"
    .parameter "length"

    .prologue
    .line 132
    if-nez p1, :cond_8

    .line 133
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 136
    :cond_8
    if-ltz p2, :cond_38

    if-ltz p3, :cond_38

    array-length v1, p1

    sub-int/2addr v1, p2

    if-gt p3, v1, :cond_38

    .line 137
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int v0, v1, p3

    .line 138
    .local v0, newSize:I
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    array-length v1, v1

    if-le v0, v1, :cond_26

    .line 139
    invoke-direct {p0, v0}, Ljava/lang/AbstractStringBuilder;->enlargeBuffer(I)V

    .line 144
    :cond_1c
    :goto_1c
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 145
    iput v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 149
    return-void

    .line 140
    :cond_26
    iget-boolean v1, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    if-eqz v1, :cond_1c

    .line 141
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    invoke-virtual {v1}, [C->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [C

    iput-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    .line 142
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    goto :goto_1c

    .line 147
    .end local v0           #newSize:I
    :cond_38
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1
.end method

.method final appendNull()V
    .registers 6

    .prologue
    const/16 v4, 0x6c

    .line 106
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/lit8 v0, v1, 0x4

    .line 107
    .local v0, newSize:I
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    array-length v1, v1

    if-le v0, v1, :cond_3b

    .line 108
    invoke-direct {p0, v0}, Ljava/lang/AbstractStringBuilder;->enlargeBuffer(I)V

    .line 113
    :cond_e
    :goto_e
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/lang/AbstractStringBuilder;->count:I

    const/16 v3, 0x6e

    aput-char v3, v1, v2

    .line 114
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/lang/AbstractStringBuilder;->count:I

    const/16 v3, 0x75

    aput-char v3, v1, v2

    .line 115
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/lang/AbstractStringBuilder;->count:I

    aput-char v4, v1, v2

    .line 116
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/lang/AbstractStringBuilder;->count:I

    aput-char v4, v1, v2

    .line 117
    return-void

    .line 109
    :cond_3b
    iget-boolean v1, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    if-eqz v1, :cond_e

    .line 110
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    invoke-virtual {v1}, [C->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [C

    iput-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    .line 111
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    goto :goto_e
.end method

.method public capacity()I
    .registers 2

    .prologue
    .line 222
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    array-length v0, v0

    return v0
.end method

.method public charAt(I)C
    .registers 3
    .parameter "index"

    .prologue
    .line 236
    if-ltz p1, :cond_6

    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-lt p1, v0, :cond_c

    .line 237
    :cond_6
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 239
    :cond_c
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    aget-char v0, v0, p1

    return v0
.end method

.method public codePointAt(I)I
    .registers 4
    .parameter "index"

    .prologue
    .line 788
    if-ltz p1, :cond_6

    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-lt p1, v0, :cond_c

    .line 789
    :cond_6
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 791
    :cond_c
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    invoke-static {v0, p1, v1}, Ljava/lang/Character;->codePointAt([CII)I

    move-result v0

    return v0
.end method

.method public codePointBefore(I)I
    .registers 3
    .parameter "index"

    .prologue
    .line 807
    const/4 v0, 0x1

    if-lt p1, v0, :cond_7

    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-le p1, v0, :cond_d

    .line 808
    :cond_7
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 810
    :cond_d
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    invoke-static {v0, p1}, Ljava/lang/Character;->codePointBefore([CI)I

    move-result v0

    return v0
.end method

.method public codePointCount(II)I
    .registers 5
    .parameter "beginIndex"
    .parameter "endIndex"

    .prologue
    .line 832
    if-ltz p1, :cond_8

    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-gt p2, v0, :cond_8

    if-le p1, p2, :cond_e

    .line 833
    :cond_8
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/StringIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 835
    :cond_e
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    sub-int v1, p2, p1

    invoke-static {v0, p1, v1}, Ljava/lang/Character;->codePointCount([CII)I

    move-result v0

    return v0
.end method

.method final delete0(II)V
    .registers 7
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v3, 0x0

    .line 243
    if-ltz p1, :cond_3b

    .line 244
    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-le p2, v2, :cond_9

    .line 245
    iget p2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 247
    :cond_9
    if-ne p2, p1, :cond_c

    .line 264
    :goto_b
    return-void

    .line 250
    :cond_c
    if-le p2, p1, :cond_3b

    .line 251
    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    sub-int v0, v2, p2

    .line 252
    .local v0, length:I
    if-lez v0, :cond_1f

    .line 253
    iget-boolean v2, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    if-nez v2, :cond_27

    .line 254
    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget-object v3, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    invoke-static {v2, p2, v3, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 263
    :cond_1f
    :goto_1f
    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    sub-int v3, p2, p1

    sub-int/2addr v2, v3

    iput v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    goto :goto_b

    .line 256
    :cond_27
    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    array-length v2, v2

    new-array v1, v2, [C

    .line 257
    .local v1, newData:[C
    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    invoke-static {v2, v3, v1, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 258
    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    invoke-static {v2, p2, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 259
    iput-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    .line 260
    iput-boolean v3, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    goto :goto_1f

    .line 267
    .end local v0           #length:I
    .end local v1           #newData:[C
    :cond_3b
    new-instance v2, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>()V

    throw v2
.end method

.method final deleteCharAt0(I)V
    .registers 8
    .parameter "location"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 271
    if-ltz p1, :cond_8

    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-lt p1, v2, :cond_e

    .line 272
    :cond_8
    new-instance v2, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v2, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v2

    .line 274
    :cond_e
    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    sub-int/2addr v2, p1

    sub-int v0, v2, v5

    .line 275
    .local v0, length:I
    if-lez v0, :cond_22

    .line 276
    iget-boolean v2, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    if-nez v2, :cond_28

    .line 277
    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    add-int/lit8 v3, p1, 0x1

    iget-object v4, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    invoke-static {v2, v3, v4, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 288
    :cond_22
    :goto_22
    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    sub-int/2addr v2, v5

    iput v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 289
    return-void

    .line 279
    :cond_28
    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    array-length v2, v2

    new-array v1, v2, [C

    .line 280
    .local v1, newData:[C
    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    invoke-static {v2, v4, v1, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 281
    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    add-int/lit8 v3, p1, 0x1

    invoke-static {v2, v3, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 284
    iput-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    .line 285
    iput-boolean v4, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    goto :goto_22
.end method

.method public ensureCapacity(I)V
    .registers 3
    .parameter "min"

    .prologue
    .line 304
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    array-length v0, v0

    if-le p1, v0, :cond_8

    .line 305
    invoke-direct {p0, p1}, Ljava/lang/AbstractStringBuilder;->enlargeBuffer(I)V

    .line 307
    :cond_8
    return-void
.end method

.method public getChars(II[CI)V
    .registers 7
    .parameter "start"
    .parameter "end"
    .parameter "dest"
    .parameter "destStart"

    .prologue
    .line 329
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-gt p1, v0, :cond_a

    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-gt p2, v0, :cond_a

    if-le p1, p2, :cond_10

    .line 330
    :cond_a
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/StringIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 332
    :cond_10
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    sub-int v1, p2, p1

    invoke-static {v0, p1, p3, p4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 333
    return-void
.end method

.method final getValue()[C
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    return-object v0
.end method

.method public indexOf(Ljava/lang/String;)I
    .registers 3
    .parameter "string"

    .prologue
    .line 647
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/lang/AbstractStringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public indexOf(Ljava/lang/String;I)I
    .registers 12
    .parameter "subString"
    .parameter "start"

    .prologue
    const/4 v8, -0x1

    .line 663
    if-gez p2, :cond_4

    .line 664
    const/4 p2, 0x0

    .line 666
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 667
    .local v5, subCount:I
    if-lez v5, :cond_4a

    .line 668
    add-int v6, v5, p2

    iget v7, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-le v6, v7, :cond_12

    move v6, v8

    .line 695
    :goto_11
    return v6

    .line 672
    :cond_12
    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 674
    .local v0, firstChar:C
    :goto_17
    move v2, p2

    .line 675
    .local v2, i:I
    const/4 v1, 0x0

    .line 676
    .local v1, found:Z
    :goto_19
    iget v6, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-ge v2, v6, :cond_24

    .line 677
    iget-object v6, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    aget-char v6, v6, v2

    if-ne v6, v0, :cond_2e

    .line 678
    const/4 v1, 0x1

    .line 682
    :cond_24
    if-eqz v1, :cond_2c

    add-int v6, v5, v2

    iget v7, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-le v6, v7, :cond_31

    :cond_2c
    move v6, v8

    .line 683
    goto :goto_11

    .line 676
    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 685
    :cond_31
    move v3, v2

    .local v3, o1:I
    const/4 v4, 0x0

    .line 686
    .local v4, o2:I
    :cond_33
    add-int/lit8 v4, v4, 0x1

    if-ge v4, v5, :cond_43

    iget-object v6, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    add-int/lit8 v3, v3, 0x1

    aget-char v6, v6, v3

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v6, v7, :cond_33

    .line 689
    :cond_43
    if-ne v4, v5, :cond_47

    move v6, v2

    .line 690
    goto :goto_11

    .line 692
    :cond_47
    add-int/lit8 p2, v2, 0x1

    .line 693
    goto :goto_17

    .line 695
    .end local v0           #firstChar:C
    .end local v1           #found:Z
    .end local v2           #i:I
    .end local v3           #o1:I
    .end local v4           #o2:I
    :cond_4a
    iget v6, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-lt p2, v6, :cond_50

    if-nez p2, :cond_52

    :cond_50
    move v6, p2

    goto :goto_11

    :cond_52
    iget v6, p0, Ljava/lang/AbstractStringBuilder;->count:I

    goto :goto_11
.end method

.method final insert0(IC)V
    .registers 4
    .parameter "index"
    .parameter "ch"

    .prologue
    .line 364
    if-ltz p1, :cond_6

    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-le p1, v0, :cond_c

    .line 366
    :cond_6
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 368
    :cond_c
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Ljava/lang/AbstractStringBuilder;->move(II)V

    .line 369
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    aput-char p2, v0, p1

    .line 370
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 371
    return-void
.end method

.method final insert0(ILjava/lang/CharSequence;II)V
    .registers 6
    .parameter "index"
    .parameter "s"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 392
    if-nez p2, :cond_4

    .line 393
    const-string p2, "null"

    .line 395
    :cond_4
    if-ltz p1, :cond_16

    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-gt p1, v0, :cond_16

    if-ltz p3, :cond_16

    if-ltz p4, :cond_16

    if-gt p3, p4, :cond_16

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-le p4, v0, :cond_1c

    .line 397
    :cond_16
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 399
    :cond_1c
    invoke-interface {p2, p3, p4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/lang/AbstractStringBuilder;->insert0(ILjava/lang/String;)V

    .line 400
    return-void
.end method

.method final insert0(ILjava/lang/String;)V
    .registers 6
    .parameter "index"
    .parameter "string"

    .prologue
    .line 374
    if-ltz p1, :cond_1f

    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-gt p1, v1, :cond_1f

    .line 375
    if-nez p2, :cond_a

    .line 376
    const-string p2, "null"

    .line 378
    :cond_a
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 379
    .local v0, min:I
    if-eqz v0, :cond_1e

    .line 380
    invoke-direct {p0, v0, p1}, Ljava/lang/AbstractStringBuilder;->move(II)V

    .line 382
    const/4 v1, 0x0

    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    invoke-virtual {p2, v1, v0, v2, p1}, Ljava/lang/String;->_getChars(II[CI)V

    .line 384
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/2addr v1, v0

    iput v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 389
    :cond_1e
    return-void

    .line 387
    .end local v0           #min:I
    :cond_1f
    new-instance v1, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v1, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v1
.end method

.method final insert0(I[C)V
    .registers 6
    .parameter "index"
    .parameter "chars"

    .prologue
    .line 336
    if-ltz p1, :cond_6

    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-le p1, v0, :cond_c

    .line 337
    :cond_6
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 339
    :cond_c
    array-length v0, p2

    if-eqz v0, :cond_20

    .line 340
    array-length v0, p2

    invoke-direct {p0, v0, p1}, Ljava/lang/AbstractStringBuilder;->move(II)V

    .line 341
    const/4 v0, 0x0

    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    array-length v2, p2

    invoke-static {p2, v0, v1, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 342
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    array-length v1, p2

    add-int/2addr v0, v1

    iput v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 344
    :cond_20
    return-void
.end method

.method final insert0(I[CII)V
    .registers 8
    .parameter "index"
    .parameter "chars"
    .parameter "start"
    .parameter "length"

    .prologue
    .line 347
    if-ltz p1, :cond_4c

    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-gt p1, v0, :cond_4c

    .line 349
    if-ltz p3, :cond_1e

    if-ltz p4, :cond_1e

    array-length v0, p2

    sub-int/2addr v0, p3

    if-gt p4, v0, :cond_1e

    .line 350
    if-eqz p4, :cond_1d

    .line 351
    invoke-direct {p0, p4, p1}, Ljava/lang/AbstractStringBuilder;->move(II)V

    .line 352
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    invoke-static {p2, p3, v0, p1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 353
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/2addr v0, p4

    iput v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 355
    :cond_1d
    return-void

    .line 357
    :cond_1e
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "offset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", len "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", array.length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 360
    :cond_4c
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public lastIndexOf(Ljava/lang/String;)I
    .registers 3
    .parameter "string"

    .prologue
    .line 709
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    invoke-virtual {p0, p1, v0}, Ljava/lang/AbstractStringBuilder;->lastIndexOf(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public lastIndexOf(Ljava/lang/String;I)I
    .registers 12
    .parameter "subString"
    .parameter "start"

    .prologue
    const/4 v8, -0x1

    .line 725
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 726
    .local v5, subCount:I
    iget v6, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-gt v5, v6, :cond_50

    if-ltz p2, :cond_50

    .line 727
    if-lez v5, :cond_47

    .line 728
    iget v6, p0, Ljava/lang/AbstractStringBuilder;->count:I

    sub-int/2addr v6, v5

    if-le p2, v6, :cond_16

    .line 729
    iget v6, p0, Ljava/lang/AbstractStringBuilder;->count:I

    sub-int p2, v6, v5

    .line 733
    :cond_16
    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 735
    .local v0, firstChar:C
    :goto_1b
    move v2, p2

    .line 736
    .local v2, i:I
    const/4 v1, 0x0

    .line 737
    .local v1, found:Z
    :goto_1d
    if-ltz v2, :cond_26

    .line 738
    iget-object v6, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    aget-char v6, v6, v2

    if-ne v6, v0, :cond_2a

    .line 739
    const/4 v1, 0x1

    .line 743
    :cond_26
    if-nez v1, :cond_2d

    move v6, v8

    .line 759
    .end local v0           #firstChar:C
    .end local v1           #found:Z
    .end local v2           #i:I
    :goto_29
    return v6

    .line 737
    .restart local v0       #firstChar:C
    .restart local v1       #found:Z
    .restart local v2       #i:I
    :cond_2a
    add-int/lit8 v2, v2, -0x1

    goto :goto_1d

    .line 746
    :cond_2d
    move v3, v2

    .local v3, o1:I
    const/4 v4, 0x0

    .line 748
    .local v4, o2:I
    :cond_2f
    add-int/lit8 v4, v4, 0x1

    if-ge v4, v5, :cond_3f

    iget-object v6, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    add-int/lit8 v3, v3, 0x1

    aget-char v6, v6, v3

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v6, v7, :cond_2f

    .line 751
    :cond_3f
    if-ne v4, v5, :cond_43

    move v6, v2

    .line 752
    goto :goto_29

    .line 754
    :cond_43
    const/4 v6, 0x1

    sub-int p2, v2, v6

    .line 755
    goto :goto_1b

    .line 757
    .end local v0           #firstChar:C
    .end local v1           #found:Z
    .end local v2           #i:I
    .end local v3           #o1:I
    .end local v4           #o2:I
    :cond_47
    iget v6, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-ge p2, v6, :cond_4d

    move v6, p2

    goto :goto_29

    :cond_4d
    iget v6, p0, Ljava/lang/AbstractStringBuilder;->count:I

    goto :goto_29

    :cond_50
    move v6, v8

    .line 759
    goto :goto_29
.end method

.method public length()I
    .registers 2

    .prologue
    .line 408
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    return v0
.end method

.method public offsetByCodePoints(II)I
    .registers 6
    .parameter "index"
    .parameter "codePointOffset"

    .prologue
    .line 860
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    const/4 v1, 0x0

    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    invoke-static {v0, v1, v2, p1, p2}, Ljava/lang/Character;->offsetByCodePoints([CIIII)I

    move-result v0

    return v0
.end method

.method final replace0(IILjava/lang/String;)V
    .registers 12
    .parameter "start"
    .parameter "end"
    .parameter "string"

    .prologue
    const/4 v7, 0x0

    .line 434
    if-ltz p1, :cond_6f

    .line 435
    iget v3, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-le p2, v3, :cond_9

    .line 436
    iget p2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 438
    :cond_9
    if-le p2, p1, :cond_61

    .line 439
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    .line 440
    .local v2, stringLength:I
    sub-int v3, p2, p1

    sub-int v0, v3, v2

    .line 441
    .local v0, diff:I
    if-lez v0, :cond_49

    .line 442
    iget-boolean v3, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    if-nez v3, :cond_30

    .line 444
    iget-object v3, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget-object v4, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    add-int v5, p1, v2

    iget v6, p0, Ljava/lang/AbstractStringBuilder;->count:I

    sub-int/2addr v6, p2

    invoke-static {v3, p2, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 463
    :cond_25
    :goto_25
    iget-object v3, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    invoke-virtual {p3, v7, v2, v3, p1}, Ljava/lang/String;->_getChars(II[CI)V

    .line 465
    iget v3, p0, Ljava/lang/AbstractStringBuilder;->count:I

    sub-int/2addr v3, v0

    iput v3, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 473
    .end local v0           #diff:I
    .end local v2           #stringLength:I
    :goto_2f
    return-void

    .line 447
    .restart local v0       #diff:I
    .restart local v2       #stringLength:I
    :cond_30
    iget-object v3, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    array-length v3, v3

    new-array v1, v3, [C

    .line 448
    .local v1, newData:[C
    iget-object v3, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    invoke-static {v3, v7, v1, v7, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 450
    iget-object v3, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    add-int v4, p1, v2

    iget v5, p0, Ljava/lang/AbstractStringBuilder;->count:I

    sub-int/2addr v5, p2

    invoke-static {v3, p2, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 452
    iput-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    .line 453
    iput-boolean v7, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    goto :goto_25

    .line 455
    .end local v1           #newData:[C
    :cond_49
    if-gez v0, :cond_50

    .line 457
    neg-int v3, v0

    invoke-direct {p0, v3, p2}, Ljava/lang/AbstractStringBuilder;->move(II)V

    goto :goto_25

    .line 458
    :cond_50
    iget-boolean v3, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    if-eqz v3, :cond_25

    .line 459
    iget-object v3, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    invoke-virtual {v3}, [C->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [C

    iput-object v3, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    .line 460
    iput-boolean v7, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    goto :goto_25

    .line 468
    .end local v0           #diff:I
    .end local v2           #stringLength:I
    :cond_61
    if-ne p1, p2, :cond_6f

    .line 469
    if-nez p3, :cond_6b

    .line 470
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 472
    :cond_6b
    invoke-virtual {p0, p1, p3}, Ljava/lang/AbstractStringBuilder;->insert0(ILjava/lang/String;)V

    goto :goto_2f

    .line 476
    :cond_6f
    new-instance v3, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/StringIndexOutOfBoundsException;-><init>()V

    throw v3
.end method

.method final reverse0()V
    .registers 8

    .prologue
    .line 480
    iget v5, p0, Ljava/lang/AbstractStringBuilder;->count:I

    const/4 v6, 0x2

    if-ge v5, v6, :cond_6

    .line 497
    :cond_5
    :goto_5
    return-void

    .line 483
    :cond_6
    iget-boolean v5, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    if-nez v5, :cond_28

    .line 484
    const/4 v1, 0x0

    .local v1, i:I
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .local v0, end:I
    iget v5, p0, Ljava/lang/AbstractStringBuilder;->count:I

    div-int/lit8 v2, v5, 0x2

    .local v2, mid:I
    :goto_11
    if-ge v1, v2, :cond_5

    .line 485
    iget-object v5, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    add-int/lit8 v0, v0, -0x1

    aget-char v4, v5, v0

    .line 486
    .local v4, temp:C
    iget-object v5, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget-object v6, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    aget-char v6, v6, v1

    aput-char v6, v5, v0

    .line 487
    iget-object v5, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    aput-char v4, v5, v1

    .line 484
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 490
    .end local v0           #end:I
    .end local v1           #i:I
    .end local v2           #mid:I
    .end local v4           #temp:C
    :cond_28
    iget-object v5, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    array-length v5, v5

    new-array v3, v5, [C

    .line 491
    .local v3, newData:[C
    const/4 v1, 0x0

    .restart local v1       #i:I
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .restart local v0       #end:I
    :goto_30
    iget v5, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-ge v1, v5, :cond_3f

    .line 492
    add-int/lit8 v0, v0, -0x1

    iget-object v5, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    aget-char v5, v5, v1

    aput-char v5, v3, v0

    .line 491
    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    .line 494
    :cond_3f
    iput-object v3, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    .line 495
    const/4 v5, 0x0

    iput-boolean v5, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    goto :goto_5
.end method

.method final set([CI)V
    .registers 5
    .parameter "val"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 65
    if-nez p1, :cond_5

    .line 66
    new-array p1, v1, [C

    .line 68
    :cond_5
    array-length v0, p1

    if-ge v0, p2, :cond_14

    .line 69
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "K0199"

    invoke-static {v1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_14
    iput-boolean v1, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    .line 73
    iput-object p1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    .line 74
    iput p2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 75
    return-void
.end method

.method public setCharAt(IC)V
    .registers 4
    .parameter "index"
    .parameter "ch"

    .prologue
    .line 511
    if-ltz p1, :cond_6

    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-lt p1, v0, :cond_c

    .line 512
    :cond_6
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 514
    :cond_c
    iget-boolean v0, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    if-eqz v0, :cond_1d

    .line 515
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    invoke-virtual {v0}, [C->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    iput-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    .line 516
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    .line 518
    :cond_1d
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    aput-char p2, v0, p1

    .line 519
    return-void
.end method

.method public setLength(I)V
    .registers 6
    .parameter "length"

    .prologue
    const/4 v3, 0x0

    .line 533
    if-gez p1, :cond_9

    .line 534
    new-instance v1, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v1, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v1

    .line 536
    :cond_9
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-ge v1, p1, :cond_15

    .line 537
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    array-length v1, v1

    if-le p1, v1, :cond_18

    .line 538
    invoke-direct {p0, p1}, Ljava/lang/AbstractStringBuilder;->enlargeBuffer(I)V

    .line 550
    :cond_15
    :goto_15
    iput p1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 551
    return-void

    .line 540
    :cond_18
    iget-boolean v1, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    if-eqz v1, :cond_2d

    .line 541
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    array-length v1, v1

    new-array v0, v1, [C

    .line 542
    .local v0, newData:[C
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 543
    iput-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    .line 544
    iput-boolean v3, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    goto :goto_15

    .line 546
    .end local v0           #newData:[C
    :cond_2d
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    invoke-static {v1, v2, p1, v3}, Ljava/util/Arrays;->fill([CIIC)V

    goto :goto_15
.end method

.method final shareValue()[C
    .registers 2

    .prologue
    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    .line 58
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    return-object v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .registers 4
    .parameter "start"
    .parameter "end"

    .prologue
    .line 633
    invoke-virtual {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public substring(I)Ljava/lang/String;
    .registers 5
    .parameter "start"

    .prologue
    .line 565
    if-ltz p1, :cond_1b

    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-gt p1, v0, :cond_1b

    .line 566
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-ne p1, v0, :cond_d

    .line 567
    const-string v0, ""

    .line 571
    :goto_c
    return-object v0

    .line 570
    :cond_d
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    .line 571
    new-instance v0, Ljava/lang/String;

    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    sub-int/2addr v1, p1

    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    invoke-direct {v0, p1, v1, v2}, Ljava/lang/String;-><init>(II[C)V

    goto :goto_c

    .line 573
    :cond_1b
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public substring(II)Ljava/lang/String;
    .registers 6
    .parameter "start"
    .parameter "end"

    .prologue
    .line 590
    if-ltz p1, :cond_1a

    if-gt p1, p2, :cond_1a

    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-gt p2, v0, :cond_1a

    .line 591
    if-ne p1, p2, :cond_d

    .line 592
    const-string v0, ""

    .line 596
    :goto_c
    return-object v0

    .line 595
    :cond_d
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    .line 596
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    sub-int v2, p2, p1

    invoke-direct {v0, v1, p1, v2}, Ljava/lang/String;-><init>([CII)V

    goto :goto_c

    .line 598
    :cond_1a
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/StringIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 608
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-nez v0, :cond_8

    .line 609
    const-string v0, ""

    .line 616
    :goto_7
    return-object v0

    .line 612
    :cond_8
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    const/16 v1, 0x100

    if-lt v0, v1, :cond_21

    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    array-length v1, v1

    shr-int/lit8 v1, v1, 0x1

    if-gt v0, v1, :cond_21

    .line 613
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([CII)V

    goto :goto_7

    .line 615
    :cond_21
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    .line 616
    new-instance v0, Ljava/lang/String;

    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    invoke-direct {v0, v3, v1, v2}, Ljava/lang/String;-><init>(II[C)V

    goto :goto_7
.end method

.method public trimToSize()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 767
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    array-length v2, v2

    if-ge v1, v2, :cond_17

    .line 768
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    new-array v0, v1, [C

    .line 769
    .local v0, newValue:[C
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 770
    iput-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    .line 771
    iput-boolean v3, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    .line 773
    .end local v0           #newValue:[C
    :cond_17
    return-void
.end method
