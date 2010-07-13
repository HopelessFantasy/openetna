.class public Ljava/io/LineNumberInputStream;
.super Ljava/io/FilterInputStream;
.source "LineNumberInputStream.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private lastChar:I

.field private lineNumber:I

.field private markedLastChar:I

.field private markedLineNumber:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .parameter "in"

    .prologue
    const/4 v0, -0x1

    .line 55
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 40
    iput v0, p0, Ljava/io/LineNumberInputStream;->markedLineNumber:I

    .line 42
    iput v0, p0, Ljava/io/LineNumberInputStream;->lastChar:I

    .line 56
    return-void
.end method


# virtual methods
.method public available()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Ljava/io/LineNumberInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Ljava/io/LineNumberInputStream;->lastChar:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_10

    const/4 v1, 0x0

    :goto_e
    add-int/2addr v0, v1

    return v0

    :cond_10
    const/4 v1, 0x1

    goto :goto_e
.end method

.method public getLineNumber()I
    .registers 2

    .prologue
    .line 85
    iget v0, p0, Ljava/io/LineNumberInputStream;->lineNumber:I

    return v0
.end method

.method public mark(I)V
    .registers 3
    .parameter "readlimit"

    .prologue
    .line 108
    iget-object v0, p0, Ljava/io/LineNumberInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    .line 109
    iget v0, p0, Ljava/io/LineNumberInputStream;->lineNumber:I

    iput v0, p0, Ljava/io/LineNumberInputStream;->markedLineNumber:I

    .line 110
    iget v0, p0, Ljava/io/LineNumberInputStream;->lastChar:I

    iput v0, p0, Ljava/io/LineNumberInputStream;->markedLastChar:I

    .line 111
    return-void
.end method

.method public read()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    .line 132
    iget v0, p0, Ljava/io/LineNumberInputStream;->lastChar:I

    .line 133
    .local v0, currentChar:I
    if-ne v0, v3, :cond_f

    .line 134
    iget-object v1, p0, Ljava/io/LineNumberInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 138
    :goto_b
    packed-switch v0, :pswitch_data_2c

    .line 149
    :goto_e
    :pswitch_e
    return v0

    .line 136
    :cond_f
    iput v3, p0, Ljava/io/LineNumberInputStream;->lastChar:I

    goto :goto_b

    .line 140
    :pswitch_12
    const/16 v0, 0xa

    .line 141
    iget-object v1, p0, Ljava/io/LineNumberInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    iput v1, p0, Ljava/io/LineNumberInputStream;->lastChar:I

    .line 142
    iget v1, p0, Ljava/io/LineNumberInputStream;->lastChar:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_24

    .line 143
    iput v3, p0, Ljava/io/LineNumberInputStream;->lastChar:I

    .line 147
    :cond_24
    :pswitch_24
    iget v1, p0, Ljava/io/LineNumberInputStream;->lineNumber:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/io/LineNumberInputStream;->lineNumber:I

    goto :goto_e

    .line 138
    nop

    :pswitch_data_2c
    .packed-switch 0xa
        :pswitch_24
        :pswitch_e
        :pswitch_e
        :pswitch_12
    .end packed-switch
.end method

.method public read([BII)I
    .registers 10
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    .line 186
    if-nez p1, :cond_f

    .line 187
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "K0047"

    invoke-static {v4}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 194
    :cond_f
    or-int v3, p2, p3

    if-ltz v3, :cond_17

    array-length v3, p1

    sub-int/2addr v3, p2

    if-le p3, v3, :cond_23

    .line 195
    :cond_17
    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v4, "K002f"

    invoke-static {v4}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 199
    :cond_23
    const/4 v2, 0x0

    .local v2, i:I
    :goto_24
    if-ge v2, p3, :cond_40

    .line 202
    :try_start_26
    invoke-virtual {p0}, Ljava/io/LineNumberInputStream;->read()I
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_30

    move-result v0

    .line 209
    .local v0, currentChar:I
    if-ne v0, v5, :cond_38

    .line 210
    if-nez v2, :cond_36

    move v3, v5

    .line 214
    .end local v0           #currentChar:I
    :goto_2f
    return v3

    .line 203
    :catch_30
    move-exception v1

    .line 204
    .local v1, e:Ljava/io/IOException;
    if-eqz v2, :cond_35

    move v3, v2

    .line 205
    goto :goto_2f

    .line 207
    :cond_35
    throw v1

    .end local v1           #e:Ljava/io/IOException;
    .restart local v0       #currentChar:I
    :cond_36
    move v3, v2

    .line 210
    goto :goto_2f

    .line 212
    :cond_38
    add-int v3, p2, v2

    int-to-byte v4, v0

    aput-byte v4, p1, v3

    .line 199
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    .end local v0           #currentChar:I
    :cond_40
    move v3, p3

    .line 214
    goto :goto_2f
.end method

.method public reset()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 231
    iget-object v0, p0, Ljava/io/LineNumberInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 232
    iget v0, p0, Ljava/io/LineNumberInputStream;->markedLineNumber:I

    iput v0, p0, Ljava/io/LineNumberInputStream;->lineNumber:I

    .line 233
    iget v0, p0, Ljava/io/LineNumberInputStream;->markedLastChar:I

    iput v0, p0, Ljava/io/LineNumberInputStream;->lastChar:I

    .line 234
    return-void
.end method

.method public setLineNumber(I)V
    .registers 2
    .parameter "lineNumber"

    .prologue
    .line 248
    iput p1, p0, Ljava/io/LineNumberInputStream;->lineNumber:I

    .line 249
    return-void
.end method

.method public skip(J)J
    .registers 8
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v3, 0x0

    .line 270
    cmp-long v2, p1, v3

    if-gtz v2, :cond_8

    move-wide v2, v3

    .line 279
    :goto_7
    return-wide v2

    .line 273
    :cond_8
    const/4 v1, 0x0

    .local v1, i:I
    :goto_9
    int-to-long v2, v1

    cmp-long v2, v2, p1

    if-gez v2, :cond_1a

    .line 274
    invoke-virtual {p0}, Ljava/io/LineNumberInputStream;->read()I

    move-result v0

    .line 275
    .local v0, currentChar:I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_17

    .line 276
    int-to-long v2, v1

    goto :goto_7

    .line 273
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .end local v0           #currentChar:I
    :cond_1a
    move-wide v2, p1

    .line 279
    goto :goto_7
.end method
