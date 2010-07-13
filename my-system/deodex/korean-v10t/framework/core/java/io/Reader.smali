.class public abstract Ljava/io/Reader;
.super Ljava/lang/Object;
.source "Reader.java"

# interfaces
.implements Ljava/lang/Readable;
.implements Ljava/io/Closeable;


# instance fields
.field protected lock:Ljava/lang/Object;


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p0, p0, Ljava/io/Reader;->lock:Ljava/lang/Object;

    .line 58
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Object;)V
    .registers 3
    .parameter "lock"

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    if-nez p1, :cond_b

    .line 72
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 74
    :cond_b
    iput-object p1, p0, Ljava/io/Reader;->lock:Ljava/lang/Object;

    .line 75
    return-void
.end method


# virtual methods
.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public mark(I)V
    .registers 3
    .parameter "readLimit"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
.end method

.method public markSupported()Z
    .registers 2

    .prologue
    .line 121
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 136
    iget-object v1, p0, Ljava/io/Reader;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 137
    const/4 v2, 0x1

    :try_start_5
    new-array v0, v2, [C

    .line 138
    .local v0, charArray:[C
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v2, v3}, Ljava/io/Reader;->read([CII)I

    move-result v2

    if-eq v2, v4, :cond_15

    .line 139
    const/4 v2, 0x0

    aget-char v2, v0, v2

    monitor-exit v1

    move v1, v2

    .line 141
    :goto_14
    return v1

    :cond_15
    monitor-exit v1

    move v1, v4

    goto :goto_14

    .line 142
    .end local v0           #charArray:[C
    :catchall_18
    move-exception v2

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_18

    throw v2
.end method

.method public read(Ljava/nio/CharBuffer;)I
    .registers 5
    .parameter "target"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 284
    if-nez p1, :cond_8

    .line 285
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 287
    :cond_8
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->length()I

    move-result v1

    .line 288
    .local v1, length:I
    new-array v0, v1, [C

    .line 289
    .local v0, buf:[C
    invoke-virtual {p0, v0}, Ljava/io/Reader;->read([C)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 290
    if-lez v1, :cond_1c

    .line 291
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/nio/CharBuffer;->put([CII)Ljava/nio/CharBuffer;

    .line 293
    :cond_1c
    return v1
.end method

.method public read([C)I
    .registers 4
    .parameter "buf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 162
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/io/Reader;->read([CII)I

    move-result v0

    return v0
.end method

.method public abstract read([CII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public ready()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 205
    const/4 v0, 0x0

    return v0
.end method

.method public reset()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 222
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
.end method

.method public skip(J)J
    .registers 15
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 244
    const-wide/16 v7, 0x0

    cmp-long v7, p1, v7

    if-gez v7, :cond_c

    .line 245
    new-instance v7, Ljava/lang/IllegalArgumentException;

    invoke-direct {v7}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v7

    .line 247
    :cond_c
    iget-object v7, p0, Ljava/io/Reader;->lock:Ljava/lang/Object;

    monitor-enter v7

    .line 248
    const-wide/16 v2, 0x0

    .line 249
    .local v2, skipped:J
    const-wide/16 v8, 0x200

    cmp-long v8, p1, v8

    if-gez v8, :cond_2a

    long-to-int v8, p1

    move v6, v8

    .line 250
    .local v6, toRead:I
    :goto_19
    :try_start_19
    new-array v0, v6, [C

    .line 251
    .local v0, charsSkipped:[C
    :cond_1b
    :goto_1b
    cmp-long v8, v2, p1

    if-gez v8, :cond_40

    .line 252
    const/4 v8, 0x0

    invoke-virtual {p0, v0, v8, v6}, Ljava/io/Reader;->read([CII)I

    move-result v1

    .line 253
    .local v1, read:I
    const/4 v8, -0x1

    if-ne v1, v8, :cond_2e

    .line 254
    monitor-exit v7

    move-wide v4, v2

    .line 264
    .end local v1           #read:I
    .end local v2           #skipped:J
    .local v4, skipped:J
    :goto_29
    return-wide v4

    .line 249
    .end local v0           #charsSkipped:[C
    .end local v4           #skipped:J
    .end local v6           #toRead:I
    .restart local v2       #skipped:J
    :cond_2a
    const/16 v8, 0x200

    move v6, v8

    goto :goto_19

    .line 256
    .restart local v0       #charsSkipped:[C
    .restart local v1       #read:I
    .restart local v6       #toRead:I
    :cond_2e
    int-to-long v8, v1

    add-long/2addr v2, v8

    .line 257
    if-ge v1, v6, :cond_35

    .line 258
    monitor-exit v7

    move-wide v4, v2

    .end local v2           #skipped:J
    .restart local v4       #skipped:J
    goto :goto_29

    .line 260
    .end local v4           #skipped:J
    .restart local v2       #skipped:J
    :cond_35
    sub-long v8, p1, v2

    int-to-long v10, v6

    cmp-long v8, v8, v10

    if-gez v8, :cond_1b

    .line 261
    sub-long v8, p1, v2

    long-to-int v6, v8

    goto :goto_1b

    .line 264
    .end local v1           #read:I
    :cond_40
    monitor-exit v7

    move-wide v4, v2

    .end local v2           #skipped:J
    .restart local v4       #skipped:J
    goto :goto_29

    .line 265
    .end local v0           #charsSkipped:[C
    .end local v4           #skipped:J
    .restart local v2       #skipped:J
    :catchall_43
    move-exception v8

    monitor-exit v7
    :try_end_45
    .catchall {:try_start_19 .. :try_end_45} :catchall_43

    throw v8
.end method
