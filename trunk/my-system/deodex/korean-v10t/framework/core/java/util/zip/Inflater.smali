.class public Ljava/util/zip/Inflater;
.super Ljava/lang/Object;
.source "Inflater.java"


# static fields
.field private static final MAGIC_NUMBER:B = 0x78t


# instance fields
.field private finished:Z

.field private gotFirstByte:Z

.field inLength:I

.field inRead:I

.field private needsDictionary:Z

.field private pass_magic_number_check:Z

.field private streamHandle:J


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .prologue
    .line 60
    invoke-static {}, Ljava/util/zip/Inflater;->oneTimeInitialization()V

    .line 61
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 240
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/zip/Inflater;-><init>(Z)V

    .line 241
    return-void
.end method

.method public constructor <init>(Z)V
    .registers 4
    .parameter "noHeader"

    .prologue
    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ljava/util/zip/Inflater;->streamHandle:J

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/zip/Inflater;->gotFirstByte:Z

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/zip/Inflater;->pass_magic_number_check:Z

    .line 253
    invoke-direct {p0, p1}, Ljava/util/zip/Inflater;->createStream(Z)J

    move-result-wide v0

    iput-wide v0, p0, Ljava/util/zip/Inflater;->streamHandle:J

    .line 254
    return-void
.end method

.method private native createStream(Z)J
.end method

.method private synchronized native declared-synchronized endImpl(J)V
.end method

.method private synchronized native declared-synchronized getAdlerImpl(J)I
.end method

.method private synchronized native declared-synchronized getTotalInImpl(J)J
.end method

.method private synchronized native declared-synchronized getTotalOutImpl(J)J
.end method

.method private synchronized native declared-synchronized inflateImpl([BIIJ)I
.end method

.method private static native oneTimeInitialization()V
.end method

.method private synchronized native declared-synchronized resetImpl(J)V
.end method

.method private synchronized native declared-synchronized setDictionaryImpl([BIIJ)V
.end method

.method private synchronized native declared-synchronized setFileInputImpl(Ljava/io/FileDescriptor;JIJ)I
.end method

.method private synchronized native declared-synchronized setInputImpl([BIIJ)V
.end method


# virtual methods
.method public declared-synchronized end()V
    .registers 5

    .prologue
    const-wide/16 v2, -0x1

    .line 74
    monitor-enter p0

    :try_start_3
    iget-wide v0, p0, Ljava/util/zip/Inflater;->streamHandle:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_18

    .line 75
    iget-wide v0, p0, Ljava/util/zip/Inflater;->streamHandle:J

    invoke-direct {p0, v0, v1}, Ljava/util/zip/Inflater;->endImpl(J)V

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/zip/Inflater;->inRead:I

    .line 77
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/zip/Inflater;->inLength:I

    .line 78
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ljava/util/zip/Inflater;->streamHandle:J
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_1a

    .line 80
    :cond_18
    monitor-exit p0

    return-void

    .line 74
    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .registers 1

    .prologue
    .line 86
    invoke-virtual {p0}, Ljava/util/zip/Inflater;->end()V

    .line 87
    return-void
.end method

.method public declared-synchronized finished()Z
    .registers 2

    .prologue
    .line 100
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Ljava/util/zip/Inflater;->finished:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAdler()I
    .registers 5

    .prologue
    .line 112
    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Ljava/util/zip/Inflater;->streamHandle:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_12

    .line 113
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_f

    .line 112
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0

    .line 115
    :cond_12
    :try_start_12
    iget-wide v0, p0, Ljava/util/zip/Inflater;->streamHandle:J

    invoke-direct {p0, v0, v1}, Ljava/util/zip/Inflater;->getAdlerImpl(J)I
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_f

    move-result v0

    monitor-exit p0

    return v0
.end method

.method public declared-synchronized getBytesRead()J
    .registers 5

    .prologue
    .line 439
    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Ljava/util/zip/Inflater;->streamHandle:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_12

    .line 440
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_f

    .line 439
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0

    .line 442
    :cond_12
    :try_start_12
    iget-wide v0, p0, Ljava/util/zip/Inflater;->streamHandle:J

    invoke-direct {p0, v0, v1}, Ljava/util/zip/Inflater;->getTotalInImpl(J)J
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_f

    move-result-wide v0

    monitor-exit p0

    return-wide v0
.end method

.method public declared-synchronized getBytesWritten()J
    .registers 5

    .prologue
    .line 455
    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Ljava/util/zip/Inflater;->streamHandle:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_12

    .line 456
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_f

    .line 455
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0

    .line 458
    :cond_12
    :try_start_12
    iget-wide v0, p0, Ljava/util/zip/Inflater;->streamHandle:J

    invoke-direct {p0, v0, v1}, Ljava/util/zip/Inflater;->getTotalOutImpl(J)J
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_f

    move-result-wide v0

    monitor-exit p0

    return-wide v0
.end method

.method public declared-synchronized getRemaining()I
    .registers 3

    .prologue
    .line 128
    monitor-enter p0

    :try_start_1
    iget v0, p0, Ljava/util/zip/Inflater;->inLength:I

    iget v1, p0, Ljava/util/zip/Inflater;->inRead:I
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

.method public declared-synchronized getTotalIn()I
    .registers 7

    .prologue
    .line 139
    monitor-enter p0

    :try_start_1
    iget-wide v2, p0, Ljava/util/zip/Inflater;->streamHandle:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_12

    .line 140
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_f

    .line 139
    :catchall_f
    move-exception v2

    monitor-exit p0

    throw v2

    .line 142
    :cond_12
    :try_start_12
    iget-wide v2, p0, Ljava/util/zip/Inflater;->streamHandle:J

    invoke-direct {p0, v2, v3}, Ljava/util/zip/Inflater;->getTotalInImpl(J)J
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_f

    move-result-wide v0

    .line 143
    .local v0, totalIn:J
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_22

    long-to-int v2, v0

    :goto_20
    monitor-exit p0

    return v2

    :cond_22
    const v2, 0x7fffffff

    goto :goto_20
.end method

.method public declared-synchronized getTotalOut()I
    .registers 7

    .prologue
    .line 157
    monitor-enter p0

    :try_start_1
    iget-wide v2, p0, Ljava/util/zip/Inflater;->streamHandle:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_12

    .line 158
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_f

    .line 157
    :catchall_f
    move-exception v2

    monitor-exit p0

    throw v2

    .line 160
    :cond_12
    :try_start_12
    iget-wide v2, p0, Ljava/util/zip/Inflater;->streamHandle:J

    invoke-direct {p0, v2, v3}, Ljava/util/zip/Inflater;->getTotalOutImpl(J)J
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_f

    move-result-wide v0

    .line 161
    .local v0, totalOut:J
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_22

    long-to-int v2, v0

    :goto_20
    monitor-exit p0

    return v2

    :cond_22
    const v2, 0x7fffffff

    goto :goto_20
.end method

.method public inflate([B)I
    .registers 4
    .parameter "buf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/DataFormatException;
        }
    .end annotation

    .prologue
    .line 179
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v0

    return v0
.end method

.method public declared-synchronized inflate([BII)I
    .registers 12
    .parameter "buf"
    .parameter "off"
    .parameter "nbytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/DataFormatException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 200
    monitor-enter p0

    :try_start_2
    array-length v0, p1

    if-gt p2, v0, :cond_58

    if-ltz p3, :cond_58

    if-ltz p2, :cond_58

    array-length v0, p1
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_20

    sub-int/2addr v0, p2

    if-lt v0, p3, :cond_58

    .line 202
    if-nez p3, :cond_12

    move v0, v4

    .line 223
    :goto_10
    monitor-exit p0

    return v0

    .line 205
    :cond_12
    :try_start_12
    iget-wide v0, p0, Ljava/util/zip/Inflater;->streamHandle:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_23

    .line 206
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_20
    .catchall {:try_start_12 .. :try_end_20} :catchall_20

    .line 200
    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0

    .line 209
    :cond_23
    :try_start_23
    iget-boolean v0, p0, Ljava/util/zip/Inflater;->pass_magic_number_check:Z

    if-nez v0, :cond_2d

    .line 210
    new-instance v0, Ljava/util/zip/DataFormatException;

    invoke-direct {v0}, Ljava/util/zip/DataFormatException;-><init>()V

    throw v0

    .line 213
    :cond_2d
    invoke-virtual {p0}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v0

    if-eqz v0, :cond_35

    move v0, v4

    .line 214
    goto :goto_10

    .line 217
    :cond_35
    iget-boolean v6, p0, Ljava/util/zip/Inflater;->needsDictionary:Z

    .line 218
    .local v6, neededDict:Z
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/zip/Inflater;->needsDictionary:Z

    .line 219
    iget-wide v4, p0, Ljava/util/zip/Inflater;->streamHandle:J

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Ljava/util/zip/Inflater;->inflateImpl([BIIJ)I

    move-result v7

    .line 220
    .local v7, result:I
    iget-boolean v0, p0, Ljava/util/zip/Inflater;->needsDictionary:Z

    if-eqz v0, :cond_56

    if-eqz v6, :cond_56

    .line 221
    new-instance v0, Ljava/util/zip/DataFormatException;

    const-string v1, "archive.27"

    invoke-static {v1}, Lorg/apache/harmony/archive/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/zip/DataFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_56
    move v0, v7

    .line 223
    goto :goto_10

    .line 225
    .end local v6           #neededDict:Z
    .end local v7           #result:I
    :cond_58
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
    :try_end_5e
    .catchall {:try_start_23 .. :try_end_5e} :catchall_20
.end method

.method public declared-synchronized needsDictionary()Z
    .registers 2

    .prologue
    .line 269
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Ljava/util/zip/Inflater;->needsDictionary:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized needsInput()Z
    .registers 3

    .prologue
    .line 281
    monitor-enter p0

    :try_start_1
    iget v0, p0, Ljava/util/zip/Inflater;->inRead:I

    iget v1, p0, Ljava/util/zip/Inflater;->inLength:I
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_c

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_8
    monitor-exit p0

    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_8

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized reset()V
    .registers 5

    .prologue
    .line 291
    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Ljava/util/zip/Inflater;->streamHandle:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_12

    .line 292
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_f

    .line 291
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0

    .line 294
    :cond_12
    const/4 v0, 0x0

    :try_start_13
    iput-boolean v0, p0, Ljava/util/zip/Inflater;->finished:Z

    .line 295
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/zip/Inflater;->needsDictionary:Z

    .line 296
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/zip/Inflater;->inRead:I

    iput v0, p0, Ljava/util/zip/Inflater;->inLength:I

    .line 297
    iget-wide v0, p0, Ljava/util/zip/Inflater;->streamHandle:J

    invoke-direct {p0, v0, v1}, Ljava/util/zip/Inflater;->resetImpl(J)V
    :try_end_22
    .catchall {:try_start_13 .. :try_end_22} :catchall_f

    .line 298
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setDictionary([B)V
    .registers 4
    .parameter "buf"

    .prologue
    .line 313
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/util/zip/Inflater;->setDictionary([BII)V
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_8

    .line 314
    monitor-exit p0

    return-void

    .line 313
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDictionary([BII)V
    .registers 10
    .parameter "buf"
    .parameter "off"
    .parameter "nbytes"

    .prologue
    .line 330
    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Ljava/util/zip/Inflater;->streamHandle:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_12

    .line 331
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_f

    .line 330
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0

    .line 334
    :cond_12
    :try_start_12
    array-length v0, p1

    if-gt p2, v0, :cond_28

    if-ltz p3, :cond_28

    if-ltz p2, :cond_28

    array-length v0, p1

    sub-int/2addr v0, p2

    if-lt v0, p3, :cond_28

    .line 336
    iget-wide v4, p0, Ljava/util/zip/Inflater;->streamHandle:J

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Ljava/util/zip/Inflater;->setDictionaryImpl([BIIJ)V
    :try_end_26
    .catchall {:try_start_12 .. :try_end_26} :catchall_f

    .line 340
    monitor-exit p0

    return-void

    .line 338
    :cond_28
    :try_start_28
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
    :try_end_2e
    .catchall {:try_start_28 .. :try_end_2e} :catchall_f
.end method

.method declared-synchronized setFileInput(Ljava/io/FileDescriptor;JI)I
    .registers 12
    .parameter "fd"
    .parameter "off"
    .parameter "nbytes"

    .prologue
    .line 420
    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Ljava/util/zip/Inflater;->streamHandle:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_12

    .line 421
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_f

    .line 420
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0

    .line 423
    :cond_12
    const/4 v0, 0x0

    :try_start_13
    iput v0, p0, Ljava/util/zip/Inflater;->inRead:I

    .line 424
    iget-wide v5, p0, Ljava/util/zip/Inflater;->streamHandle:J

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    invoke-direct/range {v0 .. v6}, Ljava/util/zip/Inflater;->setFileInputImpl(Ljava/io/FileDescriptor;JIJ)I

    move-result v0

    iput v0, p0, Ljava/util/zip/Inflater;->inLength:I

    .line 425
    iget v0, p0, Ljava/util/zip/Inflater;->inLength:I
    :try_end_23
    .catchall {:try_start_13 .. :try_end_23} :catchall_f

    monitor-exit p0

    return v0
.end method

.method public declared-synchronized setInput([B)V
    .registers 4
    .parameter "buf"

    .prologue
    .line 355
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/util/zip/Inflater;->setInput([BII)V
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_8

    .line 356
    monitor-exit p0

    return-void

    .line 355
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setInput([BII)V
    .registers 12
    .parameter "buf"
    .parameter "off"
    .parameter "nbytes"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 374
    monitor-enter p0

    :try_start_3
    iget-wide v0, p0, Ljava/util/zip/Inflater;->streamHandle:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_14

    .line 375
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_11

    .line 374
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0

    .line 378
    :cond_14
    :try_start_14
    array-length v0, p1

    if-gt p2, v0, :cond_43

    if-ltz p3, :cond_43

    if-ltz p2, :cond_43

    array-length v0, p1

    sub-int/2addr v0, p2

    if-lt v0, p3, :cond_43

    .line 380
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/zip/Inflater;->inRead:I

    .line 381
    iput p3, p0, Ljava/util/zip/Inflater;->inLength:I

    .line 382
    iget-wide v4, p0, Ljava/util/zip/Inflater;->streamHandle:J

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Ljava/util/zip/Inflater;->setInputImpl([BIIJ)V

    .line 397
    iget-boolean v0, p0, Ljava/util/zip/Inflater;->gotFirstByte:Z

    if-nez v0, :cond_41

    if-lez p3, :cond_41

    .line 399
    aget-byte v0, p1, p2

    const/16 v1, 0x78

    if-eq v0, v1, :cond_3b

    if-le p3, v6, :cond_49

    :cond_3b
    move v0, v6

    :goto_3c
    iput-boolean v0, p0, Ljava/util/zip/Inflater;->pass_magic_number_check:Z

    .line 400
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/zip/Inflater;->gotFirstByte:Z
    :try_end_41
    .catchall {:try_start_14 .. :try_end_41} :catchall_11

    .line 402
    :cond_41
    monitor-exit p0

    return-void

    .line 384
    :cond_43
    :try_start_43
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
    :try_end_49
    .catchall {:try_start_43 .. :try_end_49} :catchall_11

    :cond_49
    move v0, v7

    .line 399
    goto :goto_3c
.end method
