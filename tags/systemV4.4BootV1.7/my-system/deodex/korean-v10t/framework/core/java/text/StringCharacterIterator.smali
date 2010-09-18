.class public final Ljava/text/StringCharacterIterator;
.super Ljava/lang/Object;
.source "StringCharacterIterator.java"

# interfaces
.implements Ljava/text/CharacterIterator;


# instance fields
.field end:I

.field offset:I

.field start:I

.field string:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Ljava/text/StringCharacterIterator;->string:Ljava/lang/String;

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Ljava/text/StringCharacterIterator;->offset:I

    iput v0, p0, Ljava/text/StringCharacterIterator;->start:I

    .line 43
    iget-object v0, p0, Ljava/text/StringCharacterIterator;->string:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Ljava/text/StringCharacterIterator;->end:I

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .parameter "value"
    .parameter "location"

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Ljava/text/StringCharacterIterator;->string:Ljava/lang/String;

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Ljava/text/StringCharacterIterator;->start:I

    .line 64
    iget-object v0, p0, Ljava/text/StringCharacterIterator;->string:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Ljava/text/StringCharacterIterator;->end:I

    .line 65
    if-ltz p2, :cond_16

    iget v0, p0, Ljava/text/StringCharacterIterator;->end:I

    if-le p2, v0, :cond_1c

    .line 66
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 68
    :cond_1c
    iput p2, p0, Ljava/text/StringCharacterIterator;->offset:I

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;III)V
    .registers 6
    .parameter "value"
    .parameter "start"
    .parameter "end"
    .parameter "location"

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Ljava/text/StringCharacterIterator;->string:Ljava/lang/String;

    .line 92
    if-ltz p2, :cond_15

    iget-object v0, p0, Ljava/text/StringCharacterIterator;->string:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p3, v0, :cond_15

    if-gt p2, p3, :cond_15

    if-lt p4, p2, :cond_15

    if-le p4, p3, :cond_1b

    .line 94
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 96
    :cond_1b
    iput p2, p0, Ljava/text/StringCharacterIterator;->start:I

    .line 97
    iput p3, p0, Ljava/text/StringCharacterIterator;->end:I

    .line 98
    iput p4, p0, Ljava/text/StringCharacterIterator;->offset:I

    .line 99
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 112
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    .line 114
    :goto_4
    return-object v1

    .line 113
    :catch_5
    move-exception v0

    .line 114
    .local v0, e:Ljava/lang/CloneNotSupportedException;
    const/4 v1, 0x0

    goto :goto_4
.end method

.method public current()C
    .registers 3

    .prologue
    .line 126
    iget v0, p0, Ljava/text/StringCharacterIterator;->offset:I

    iget v1, p0, Ljava/text/StringCharacterIterator;->end:I

    if-ne v0, v1, :cond_a

    .line 127
    const v0, 0xffff

    .line 129
    :goto_9
    return v0

    :cond_a
    iget-object v0, p0, Ljava/text/StringCharacterIterator;->string:Ljava/lang/String;

    iget v1, p0, Ljava/text/StringCharacterIterator;->offset:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_9
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter "object"

    .prologue
    const/4 v4, 0x0

    .line 147
    instance-of v2, p1, Ljava/text/StringCharacterIterator;

    if-nez v2, :cond_7

    move v2, v4

    .line 151
    :goto_6
    return v2

    .line 150
    :cond_7
    move-object v0, p1

    check-cast v0, Ljava/text/StringCharacterIterator;

    move-object v1, v0

    .line 151
    .local v1, it:Ljava/text/StringCharacterIterator;
    iget-object v2, p0, Ljava/text/StringCharacterIterator;->string:Ljava/lang/String;

    iget-object v3, v1, Ljava/text/StringCharacterIterator;->string:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    iget v2, p0, Ljava/text/StringCharacterIterator;->start:I

    iget v3, v1, Ljava/text/StringCharacterIterator;->start:I

    if-ne v2, v3, :cond_29

    iget v2, p0, Ljava/text/StringCharacterIterator;->end:I

    iget v3, v1, Ljava/text/StringCharacterIterator;->end:I

    if-ne v2, v3, :cond_29

    iget v2, p0, Ljava/text/StringCharacterIterator;->offset:I

    iget v3, v1, Ljava/text/StringCharacterIterator;->offset:I

    if-ne v2, v3, :cond_29

    const/4 v2, 0x1

    goto :goto_6

    :cond_29
    move v2, v4

    goto :goto_6
.end method

.method public first()C
    .registers 3

    .prologue
    .line 164
    iget v0, p0, Ljava/text/StringCharacterIterator;->start:I

    iget v1, p0, Ljava/text/StringCharacterIterator;->end:I

    if-ne v0, v1, :cond_a

    .line 165
    const v0, 0xffff

    .line 168
    :goto_9
    return v0

    .line 167
    :cond_a
    iget v0, p0, Ljava/text/StringCharacterIterator;->start:I

    iput v0, p0, Ljava/text/StringCharacterIterator;->offset:I

    .line 168
    iget-object v0, p0, Ljava/text/StringCharacterIterator;->string:Ljava/lang/String;

    iget v1, p0, Ljava/text/StringCharacterIterator;->offset:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_9
.end method

.method public getBeginIndex()I
    .registers 2

    .prologue
    .line 178
    iget v0, p0, Ljava/text/StringCharacterIterator;->start:I

    return v0
.end method

.method public getEndIndex()I
    .registers 2

    .prologue
    .line 188
    iget v0, p0, Ljava/text/StringCharacterIterator;->end:I

    return v0
.end method

.method public getIndex()I
    .registers 2

    .prologue
    .line 198
    iget v0, p0, Ljava/text/StringCharacterIterator;->offset:I

    return v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 203
    iget-object v0, p0, Ljava/text/StringCharacterIterator;->string:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget v1, p0, Ljava/text/StringCharacterIterator;->start:I

    add-int/2addr v0, v1

    iget v1, p0, Ljava/text/StringCharacterIterator;->end:I

    add-int/2addr v0, v1

    iget v1, p0, Ljava/text/StringCharacterIterator;->offset:I

    add-int/2addr v0, v1

    return v0
.end method

.method public last()C
    .registers 3

    .prologue
    .line 215
    iget v0, p0, Ljava/text/StringCharacterIterator;->start:I

    iget v1, p0, Ljava/text/StringCharacterIterator;->end:I

    if-ne v0, v1, :cond_a

    .line 216
    const v0, 0xffff

    .line 219
    :goto_9
    return v0

    .line 218
    :cond_a
    iget v0, p0, Ljava/text/StringCharacterIterator;->end:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Ljava/text/StringCharacterIterator;->offset:I

    .line 219
    iget-object v0, p0, Ljava/text/StringCharacterIterator;->string:Ljava/lang/String;

    iget v1, p0, Ljava/text/StringCharacterIterator;->offset:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_9
.end method

.method public next()C
    .registers 4

    .prologue
    .line 230
    iget v0, p0, Ljava/text/StringCharacterIterator;->offset:I

    iget v1, p0, Ljava/text/StringCharacterIterator;->end:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-lt v0, v1, :cond_10

    .line 231
    iget v0, p0, Ljava/text/StringCharacterIterator;->end:I

    iput v0, p0, Ljava/text/StringCharacterIterator;->offset:I

    .line 232
    const v0, 0xffff

    .line 234
    :goto_f
    return v0

    :cond_10
    iget-object v0, p0, Ljava/text/StringCharacterIterator;->string:Ljava/lang/String;

    iget v1, p0, Ljava/text/StringCharacterIterator;->offset:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/text/StringCharacterIterator;->offset:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_f
.end method

.method public previous()C
    .registers 4

    .prologue
    .line 245
    iget v0, p0, Ljava/text/StringCharacterIterator;->offset:I

    iget v1, p0, Ljava/text/StringCharacterIterator;->start:I

    if-ne v0, v1, :cond_a

    .line 246
    const v0, 0xffff

    .line 248
    :goto_9
    return v0

    :cond_a
    iget-object v0, p0, Ljava/text/StringCharacterIterator;->string:Ljava/lang/String;

    iget v1, p0, Ljava/text/StringCharacterIterator;->offset:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Ljava/text/StringCharacterIterator;->offset:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_9
.end method

.method public setIndex(I)C
    .registers 4
    .parameter "location"

    .prologue
    .line 264
    iget v0, p0, Ljava/text/StringCharacterIterator;->start:I

    if-lt p1, v0, :cond_8

    iget v0, p0, Ljava/text/StringCharacterIterator;->end:I

    if-le p1, v0, :cond_e

    .line 265
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 267
    :cond_e
    iput p1, p0, Ljava/text/StringCharacterIterator;->offset:I

    .line 268
    iget v0, p0, Ljava/text/StringCharacterIterator;->offset:I

    iget v1, p0, Ljava/text/StringCharacterIterator;->end:I

    if-ne v0, v1, :cond_1a

    .line 269
    const v0, 0xffff

    .line 271
    :goto_19
    return v0

    :cond_1a
    iget-object v0, p0, Ljava/text/StringCharacterIterator;->string:Ljava/lang/String;

    iget v1, p0, Ljava/text/StringCharacterIterator;->offset:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_19
.end method

.method public setText(Ljava/lang/String;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 283
    iput-object p1, p0, Ljava/text/StringCharacterIterator;->string:Ljava/lang/String;

    .line 284
    const/4 v0, 0x0

    iput v0, p0, Ljava/text/StringCharacterIterator;->offset:I

    iput v0, p0, Ljava/text/StringCharacterIterator;->start:I

    .line 285
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Ljava/text/StringCharacterIterator;->end:I

    .line 286
    return-void
.end method
