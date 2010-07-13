.class public Ljava/util/StringTokenizer;
.super Ljava/lang/Object;
.source "StringTokenizer.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Enumeration",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private delimiters:Ljava/lang/String;

.field private position:I

.field private returnDelimiters:Z

.field private string:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .parameter "string"

    .prologue
    .line 148
    const-string v0, " \t\n\r\u000c"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 149
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "string"
    .parameter "delimiters"

    .prologue
    .line 165
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 166
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5
    .parameter "string"
    .parameter "delimiters"
    .parameter "returnDelimiters"

    .prologue
    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    if-eqz p1, :cond_f

    .line 186
    iput-object p1, p0, Ljava/util/StringTokenizer;->string:Ljava/lang/String;

    .line 187
    iput-object p2, p0, Ljava/util/StringTokenizer;->delimiters:Ljava/lang/String;

    .line 188
    iput-boolean p3, p0, Ljava/util/StringTokenizer;->returnDelimiters:Z

    .line 189
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/StringTokenizer;->position:I

    .line 192
    return-void

    .line 191
    :cond_f
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method


# virtual methods
.method public countTokens()I
    .registers 8

    .prologue
    .line 202
    const/4 v0, 0x0

    .line 203
    .local v0, count:I
    const/4 v2, 0x0

    .line 204
    .local v2, inToken:Z
    iget v1, p0, Ljava/util/StringTokenizer;->position:I

    .local v1, i:I
    iget-object v4, p0, Ljava/util/StringTokenizer;->string:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    .local v3, length:I
    :goto_a
    if-ge v1, v3, :cond_2b

    .line 205
    iget-object v4, p0, Ljava/util/StringTokenizer;->delimiters:Ljava/lang/String;

    iget-object v5, p0, Ljava/util/StringTokenizer;->string:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    if-ltz v4, :cond_29

    .line 206
    iget-boolean v4, p0, Ljava/util/StringTokenizer;->returnDelimiters:Z

    if-eqz v4, :cond_21

    .line 207
    add-int/lit8 v0, v0, 0x1

    .line 208
    :cond_21
    if-eqz v2, :cond_26

    .line 209
    add-int/lit8 v0, v0, 0x1

    .line 210
    const/4 v2, 0x0

    .line 204
    :cond_26
    :goto_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 213
    :cond_29
    const/4 v2, 0x1

    goto :goto_26

    .line 216
    :cond_2b
    if-eqz v2, :cond_2f

    .line 217
    add-int/lit8 v0, v0, 0x1

    .line 218
    :cond_2f
    return v0
.end method

.method public hasMoreElements()Z
    .registers 2

    .prologue
    .line 229
    invoke-virtual {p0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    return v0
.end method

.method public hasMoreTokens()Z
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 239
    iget-object v2, p0, Ljava/util/StringTokenizer;->string:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 240
    .local v1, length:I
    iget v2, p0, Ljava/util/StringTokenizer;->position:I

    if-ge v2, v1, :cond_2a

    .line 241
    iget-boolean v2, p0, Ljava/util/StringTokenizer;->returnDelimiters:Z

    if-eqz v2, :cond_12

    move v2, v5

    .line 250
    :goto_11
    return v2

    .line 246
    :cond_12
    iget v0, p0, Ljava/util/StringTokenizer;->position:I

    .local v0, i:I
    :goto_14
    if-ge v0, v1, :cond_2a

    .line 247
    iget-object v2, p0, Ljava/util/StringTokenizer;->delimiters:Ljava/lang/String;

    iget-object v3, p0, Ljava/util/StringTokenizer;->string:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_27

    move v2, v5

    .line 248
    goto :goto_11

    .line 246
    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .end local v0           #i:I
    :cond_2a
    move v2, v4

    .line 250
    goto :goto_11
.end method

.method public nextElement()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 263
    invoke-virtual {p0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nextToken()Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 275
    iget v0, p0, Ljava/util/StringTokenizer;->position:I

    .line 276
    .local v0, i:I
    iget-object v2, p0, Ljava/util/StringTokenizer;->string:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 278
    .local v1, length:I
    if-ge v0, v1, :cond_a9

    .line 279
    iget-boolean v2, p0, Ljava/util/StringTokenizer;->returnDelimiters:Z

    if-eqz v2, :cond_61

    .line 280
    iget-object v2, p0, Ljava/util/StringTokenizer;->delimiters:Ljava/lang/String;

    iget-object v3, p0, Ljava/util/StringTokenizer;->string:Ljava/lang/String;

    iget v4, p0, Ljava/util/StringTokenizer;->position:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-ltz v2, :cond_30

    .line 281
    iget-object v2, p0, Ljava/util/StringTokenizer;->string:Ljava/lang/String;

    iget v3, p0, Ljava/util/StringTokenizer;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Ljava/util/StringTokenizer;->position:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    .line 295
    :goto_2f
    return-object v2

    .line 282
    :cond_30
    iget v2, p0, Ljava/util/StringTokenizer;->position:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/StringTokenizer;->position:I

    :goto_36
    iget v2, p0, Ljava/util/StringTokenizer;->position:I

    if-ge v2, v1, :cond_5a

    .line 283
    iget-object v2, p0, Ljava/util/StringTokenizer;->delimiters:Ljava/lang/String;

    iget-object v3, p0, Ljava/util/StringTokenizer;->string:Ljava/lang/String;

    iget v4, p0, Ljava/util/StringTokenizer;->position:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-ltz v2, :cond_53

    .line 284
    iget-object v2, p0, Ljava/util/StringTokenizer;->string:Ljava/lang/String;

    iget v3, p0, Ljava/util/StringTokenizer;->position:I

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_2f

    .line 282
    :cond_53
    iget v2, p0, Ljava/util/StringTokenizer;->position:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/StringTokenizer;->position:I

    goto :goto_36

    .line 285
    :cond_5a
    iget-object v2, p0, Ljava/util/StringTokenizer;->string:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2f

    .line 288
    :cond_61
    :goto_61
    if-ge v0, v1, :cond_74

    iget-object v2, p0, Ljava/util/StringTokenizer;->delimiters:Ljava/lang/String;

    iget-object v3, p0, Ljava/util/StringTokenizer;->string:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-ltz v2, :cond_74

    .line 289
    add-int/lit8 v0, v0, 0x1

    goto :goto_61

    .line 290
    :cond_74
    iput v0, p0, Ljava/util/StringTokenizer;->position:I

    .line 291
    if-ge v0, v1, :cond_a9

    .line 292
    iget v2, p0, Ljava/util/StringTokenizer;->position:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/StringTokenizer;->position:I

    :goto_7e
    iget v2, p0, Ljava/util/StringTokenizer;->position:I

    if-ge v2, v1, :cond_a2

    .line 293
    iget-object v2, p0, Ljava/util/StringTokenizer;->delimiters:Ljava/lang/String;

    iget-object v3, p0, Ljava/util/StringTokenizer;->string:Ljava/lang/String;

    iget v4, p0, Ljava/util/StringTokenizer;->position:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-ltz v2, :cond_9b

    .line 294
    iget-object v2, p0, Ljava/util/StringTokenizer;->string:Ljava/lang/String;

    iget v3, p0, Ljava/util/StringTokenizer;->position:I

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_2f

    .line 292
    :cond_9b
    iget v2, p0, Ljava/util/StringTokenizer;->position:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/StringTokenizer;->position:I

    goto :goto_7e

    .line 295
    :cond_a2
    iget-object v2, p0, Ljava/util/StringTokenizer;->string:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2f

    .line 298
    :cond_a9
    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    throw v2
.end method

.method public nextToken(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "delims"

    .prologue
    .line 314
    if-nez p1, :cond_8

    .line 315
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 318
    :cond_8
    iput-object p1, p0, Ljava/util/StringTokenizer;->delimiters:Ljava/lang/String;

    .line 319
    invoke-virtual {p0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
