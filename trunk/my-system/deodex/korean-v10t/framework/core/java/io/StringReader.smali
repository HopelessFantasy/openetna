.class public Ljava/io/StringReader;
.super Ljava/io/Reader;
.source "StringReader.java"


# instance fields
.field private count:I

.field private markpos:I

.field private pos:I

.field private str:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "str"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Ljava/io/Reader;-><init>(Ljava/lang/Object;)V

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Ljava/io/StringReader;->markpos:I

    .line 50
    iput-object p1, p0, Ljava/io/StringReader;->str:Ljava/lang/String;

    .line 51
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Ljava/io/StringReader;->count:I

    .line 52
    return-void
.end method

.method private isClosed()Z
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Ljava/io/StringReader;->str:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public close()V
    .registers 3

    .prologue
    .line 63
    iget-object v0, p0, Ljava/io/StringReader;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 64
    :try_start_3
    invoke-direct {p0}, Ljava/io/StringReader;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 65
    monitor-exit v0

    .line 69
    :goto_a
    return-void

    .line 67
    :cond_b
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/io/StringReader;->str:Ljava/lang/String;

    .line 68
    monitor-exit v0

    goto :goto_a

    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public mark(I)V
    .registers 5
    .parameter "readLimit"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    if-gez p1, :cond_8

    .line 98
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 101
    :cond_8
    iget-object v0, p0, Ljava/io/StringReader;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 102
    :try_start_b
    invoke-direct {p0}, Ljava/io/StringReader;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 103
    new-instance v1, Ljava/io/IOException;

    const-string v2, "K0083"

    invoke-static {v2}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 106
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_b .. :try_end_1f} :catchall_1d

    throw v1

    .line 105
    :cond_20
    :try_start_20
    iget v1, p0, Ljava/io/StringReader;->pos:I

    iput v1, p0, Ljava/io/StringReader;->markpos:I

    .line 106
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_20 .. :try_end_25} :catchall_1d

    .line 107
    return-void
.end method

.method public markSupported()Z
    .registers 2

    .prologue
    .line 118
    const/4 v0, 0x1

    return v0
.end method

.method public read()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 134
    iget-object v0, p0, Ljava/io/StringReader;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 135
    :try_start_3
    invoke-direct {p0}, Ljava/io/StringReader;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 136
    new-instance v1, Ljava/io/IOException;

    const-string v2, "K0083"

    invoke-static {v2}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 142
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1

    .line 138
    :cond_18
    :try_start_18
    iget v1, p0, Ljava/io/StringReader;->pos:I

    iget v2, p0, Ljava/io/StringReader;->count:I

    if-eq v1, v2, :cond_2d

    .line 139
    iget-object v1, p0, Ljava/io/StringReader;->str:Ljava/lang/String;

    iget v2, p0, Ljava/io/StringReader;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/io/StringReader;->pos:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    monitor-exit v0

    move v0, v1

    .line 141
    :goto_2c
    return v0

    :cond_2d
    const/4 v1, -0x1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_18 .. :try_end_2f} :catchall_15

    move v0, v1

    goto :goto_2c
.end method

.method public read([CII)I
    .registers 9
    .parameter "buf"
    .parameter "offset"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 178
    if-nez p1, :cond_e

    .line 179
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "K0047"

    invoke-static {v3}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 181
    :cond_e
    or-int v2, p2, p3

    if-ltz v2, :cond_16

    array-length v2, p1

    sub-int/2addr v2, p2

    if-le p3, v2, :cond_22

    .line 182
    :cond_16
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v3, "K002f"

    invoke-static {v3}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 185
    :cond_22
    iget-object v2, p0, Ljava/io/StringReader;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 186
    :try_start_25
    invoke-direct {p0}, Ljava/io/StringReader;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 187
    new-instance v3, Ljava/io/IOException;

    const-string v4, "K0083"

    invoke-static {v4}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 197
    :catchall_37
    move-exception v3

    monitor-exit v2
    :try_end_39
    .catchall {:try_start_25 .. :try_end_39} :catchall_37

    throw v3

    .line 189
    :cond_3a
    :try_start_3a
    iget v3, p0, Ljava/io/StringReader;->pos:I

    iget v4, p0, Ljava/io/StringReader;->count:I

    if-ne v3, v4, :cond_44

    .line 190
    const/4 v3, -0x1

    monitor-exit v2

    move v2, v3

    .line 196
    :goto_43
    return v2

    .line 192
    :cond_44
    iget v3, p0, Ljava/io/StringReader;->pos:I

    add-int/2addr v3, p3

    iget v4, p0, Ljava/io/StringReader;->count:I

    if-le v3, v4, :cond_5e

    iget v3, p0, Ljava/io/StringReader;->count:I

    move v0, v3

    .line 193
    .local v0, end:I
    :goto_4e
    iget-object v3, p0, Ljava/io/StringReader;->str:Ljava/lang/String;

    iget v4, p0, Ljava/io/StringReader;->pos:I

    invoke-virtual {v3, v4, v0, p1, p2}, Ljava/lang/String;->getChars(II[CI)V

    .line 194
    iget v3, p0, Ljava/io/StringReader;->pos:I

    sub-int v1, v0, v3

    .line 195
    .local v1, read:I
    iput v0, p0, Ljava/io/StringReader;->pos:I

    .line 196
    monitor-exit v2

    move v2, v1

    goto :goto_43

    .line 192
    .end local v0           #end:I
    .end local v1           #read:I
    :cond_5e
    iget v3, p0, Ljava/io/StringReader;->pos:I
    :try_end_60
    .catchall {:try_start_3a .. :try_end_60} :catchall_37

    add-int/2addr v3, p3

    move v0, v3

    goto :goto_4e
.end method

.method public ready()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 213
    iget-object v0, p0, Ljava/io/StringReader;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 214
    :try_start_3
    invoke-direct {p0}, Ljava/io/StringReader;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 215
    new-instance v1, Ljava/io/IOException;

    const-string v2, "K0083"

    invoke-static {v2}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 218
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1

    .line 217
    :cond_18
    const/4 v1, 0x1

    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_15

    return v1
.end method

.method public reset()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 235
    iget-object v0, p0, Ljava/io/StringReader;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 236
    :try_start_3
    invoke-direct {p0}, Ljava/io/StringReader;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 237
    new-instance v1, Ljava/io/IOException;

    const-string v2, "K0083"

    invoke-static {v2}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 240
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1

    .line 239
    :cond_18
    :try_start_18
    iget v1, p0, Ljava/io/StringReader;->markpos:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_23

    iget v1, p0, Ljava/io/StringReader;->markpos:I

    :goto_1f
    iput v1, p0, Ljava/io/StringReader;->pos:I

    .line 240
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_18 .. :try_end_22} :catchall_15

    .line 241
    return-void

    .line 239
    :cond_23
    const/4 v1, 0x0

    goto :goto_1f
.end method

.method public skip(J)J
    .registers 9
    .parameter "ns"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    .line 260
    iget-object v2, p0, Ljava/io/StringReader;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 261
    :try_start_5
    invoke-direct {p0}, Ljava/io/StringReader;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 262
    new-instance v3, Ljava/io/IOException;

    const-string v4, "K0083"

    invoke-static {v4}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 276
    :catchall_17
    move-exception v3

    monitor-exit v2
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_17

    throw v3

    .line 264
    :cond_1a
    cmp-long v3, p1, v4

    if-gtz v3, :cond_21

    .line 265
    :try_start_1e
    monitor-exit v2

    move-wide v2, v4

    .line 275
    :goto_20
    return-wide v2

    .line 267
    :cond_21
    const-wide/16 v0, 0x0

    .line 268
    .local v0, skipped:J
    iget v3, p0, Ljava/io/StringReader;->count:I

    iget v4, p0, Ljava/io/StringReader;->pos:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    cmp-long v3, p1, v3

    if-gez v3, :cond_37

    .line 269
    iget v3, p0, Ljava/io/StringReader;->pos:I

    long-to-int v4, p1

    add-int/2addr v3, v4

    iput v3, p0, Ljava/io/StringReader;->pos:I

    .line 270
    move-wide v0, p1

    .line 275
    :goto_34
    monitor-exit v2

    move-wide v2, v0

    goto :goto_20

    .line 272
    :cond_37
    iget v3, p0, Ljava/io/StringReader;->count:I

    iget v4, p0, Ljava/io/StringReader;->pos:I

    sub-int/2addr v3, v4

    int-to-long v0, v3

    .line 273
    iget v3, p0, Ljava/io/StringReader;->count:I

    iput v3, p0, Ljava/io/StringReader;->pos:I
    :try_end_41
    .catchall {:try_start_1e .. :try_end_41} :catchall_17

    goto :goto_34
.end method
