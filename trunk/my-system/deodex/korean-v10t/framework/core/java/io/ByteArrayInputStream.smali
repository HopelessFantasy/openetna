.class public Ljava/io/ByteArrayInputStream;
.super Ljava/io/InputStream;
.source "ByteArrayInputStream.java"


# instance fields
.field protected buf:[B

.field protected count:I

.field protected mark:I

.field protected pos:I


# direct methods
.method public constructor <init>([B)V
    .registers 3
    .parameter "buf"

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Ljava/io/ByteArrayInputStream;->mark:I

    .line 71
    iput-object p1, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    .line 72
    array-length v0, p1

    iput v0, p0, Ljava/io/ByteArrayInputStream;->count:I

    .line 73
    return-void
.end method

.method public constructor <init>([BII)V
    .registers 6
    .parameter "buf"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 92
    iput-object p1, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    .line 93
    iput p2, p0, Ljava/io/ByteArrayInputStream;->pos:I

    .line 94
    iput p2, p0, Ljava/io/ByteArrayInputStream;->mark:I

    .line 95
    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_12

    array-length v0, p1

    :goto_f
    iput v0, p0, Ljava/io/ByteArrayInputStream;->count:I

    .line 96
    return-void

    .line 95
    :cond_12
    add-int v0, p2, p3

    goto :goto_f
.end method


# virtual methods
.method public declared-synchronized available()I
    .registers 3

    .prologue
    .line 108
    monitor-enter p0

    :try_start_1
    iget v0, p0, Ljava/io/ByteArrayInputStream;->count:I

    iget v1, p0, Ljava/io/ByteArrayInputStream;->pos:I
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_8

    sub-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 121
    return-void
.end method

.method public declared-synchronized mark(I)V
    .registers 3
    .parameter "readlimit"

    .prologue
    .line 136
    monitor-enter p0

    :try_start_1
    iget v0, p0, Ljava/io/ByteArrayInputStream;->pos:I

    iput v0, p0, Ljava/io/ByteArrayInputStream;->mark:I
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    .line 137
    monitor-exit p0

    return-void

    .line 136
    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public markSupported()Z
    .registers 2

    .prologue
    .line 151
    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized read()I
    .registers 4

    .prologue
    .line 164
    monitor-enter p0

    :try_start_1
    iget v0, p0, Ljava/io/ByteArrayInputStream;->pos:I

    iget v1, p0, Ljava/io/ByteArrayInputStream;->count:I

    if-ge v0, v1, :cond_15

    iget-object v0, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    iget v1, p0, Ljava/io/ByteArrayInputStream;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/io/ByteArrayInputStream;->pos:I

    aget-byte v0, v0, v1
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_17

    and-int/lit16 v0, v0, 0xff

    :goto_13
    monitor-exit p0

    return v0

    :cond_15
    const/4 v0, -0x1

    goto :goto_13

    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized read([BII)I
    .registers 7
    .parameter "b"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 195
    monitor-enter p0

    if-nez p1, :cond_12

    .line 196
    :try_start_3
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "K0047"

    invoke-static {v2}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 195
    :catchall_f
    move-exception v1

    monitor-exit p0

    throw v1

    .line 203
    :cond_12
    or-int v1, p2, p3

    if-ltz v1, :cond_1a

    :try_start_16
    array-length v1, p1

    sub-int/2addr v1, p2

    if-le p3, v1, :cond_26

    .line 204
    :cond_1a
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    const-string v2, "K002f"

    invoke-static {v2}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 208
    :cond_26
    iget v1, p0, Ljava/io/ByteArrayInputStream;->pos:I

    iget v2, p0, Ljava/io/ByteArrayInputStream;->count:I
    :try_end_2a
    .catchall {:try_start_16 .. :try_end_2a} :catchall_f

    if-lt v1, v2, :cond_2f

    .line 209
    const/4 v1, -0x1

    .line 218
    :goto_2d
    monitor-exit p0

    return v1

    .line 211
    :cond_2f
    if-nez p3, :cond_33

    .line 212
    const/4 v1, 0x0

    goto :goto_2d

    .line 215
    :cond_33
    :try_start_33
    iget v1, p0, Ljava/io/ByteArrayInputStream;->count:I

    iget v2, p0, Ljava/io/ByteArrayInputStream;->pos:I

    sub-int/2addr v1, v2

    if-ge v1, p3, :cond_4e

    iget v1, p0, Ljava/io/ByteArrayInputStream;->count:I

    iget v2, p0, Ljava/io/ByteArrayInputStream;->pos:I

    sub-int/2addr v1, v2

    move v0, v1

    .line 216
    .local v0, copylen:I
    :goto_40
    iget-object v1, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    iget v2, p0, Ljava/io/ByteArrayInputStream;->pos:I

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 217
    iget v1, p0, Ljava/io/ByteArrayInputStream;->pos:I

    add-int/2addr v1, v0

    iput v1, p0, Ljava/io/ByteArrayInputStream;->pos:I
    :try_end_4c
    .catchall {:try_start_33 .. :try_end_4c} :catchall_f

    move v1, v0

    .line 218
    goto :goto_2d

    .end local v0           #copylen:I
    :cond_4e
    move v0, p3

    .line 215
    goto :goto_40
.end method

.method public declared-synchronized reset()V
    .registers 2

    .prologue
    .line 231
    monitor-enter p0

    :try_start_1
    iget v0, p0, Ljava/io/ByteArrayInputStream;->mark:I

    iput v0, p0, Ljava/io/ByteArrayInputStream;->pos:I
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    .line 232
    monitor-exit p0

    return-void

    .line 231
    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized skip(J)J
    .registers 7
    .parameter "n"

    .prologue
    const-wide/16 v2, 0x0

    .line 247
    monitor-enter p0

    cmp-long v1, p1, v2

    if-gtz v1, :cond_a

    move-wide v1, v2

    .line 252
    :goto_8
    monitor-exit p0

    return-wide v1

    .line 250
    :cond_a
    :try_start_a
    iget v0, p0, Ljava/io/ByteArrayInputStream;->pos:I

    .line 251
    .local v0, temp:I
    iget v1, p0, Ljava/io/ByteArrayInputStream;->count:I

    iget v2, p0, Ljava/io/ByteArrayInputStream;->pos:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    cmp-long v1, v1, p1

    if-gez v1, :cond_1f

    iget v1, p0, Ljava/io/ByteArrayInputStream;->count:I

    :goto_18
    iput v1, p0, Ljava/io/ByteArrayInputStream;->pos:I

    .line 252
    iget v1, p0, Ljava/io/ByteArrayInputStream;->pos:I

    sub-int/2addr v1, v0

    int-to-long v1, v1

    goto :goto_8

    .line 251
    :cond_1f
    iget v1, p0, Ljava/io/ByteArrayInputStream;->pos:I
    :try_end_21
    .catchall {:try_start_a .. :try_end_21} :catchall_25

    int-to-long v1, v1

    add-long/2addr v1, p1

    long-to-int v1, v1

    goto :goto_18

    .line 247
    .end local v0           #temp:I
    :catchall_25
    move-exception v1

    monitor-exit p0

    throw v1
.end method
