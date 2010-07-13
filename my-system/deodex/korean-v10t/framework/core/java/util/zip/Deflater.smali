.class public Ljava/util/zip/Deflater;
.super Ljava/lang/Object;
.source "Deflater.java"


# static fields
.field public static final BEST_COMPRESSION:I = 0x9

.field public static final BEST_SPEED:I = 0x1

.field public static final DEFAULT_COMPRESSION:I = -0x1

.field public static final DEFAULT_STRATEGY:I = 0x0

.field public static final DEFLATED:I = 0x8

.field public static final FILTERED:I = 0x1

.field public static final HUFFMAN_ONLY:I = 0x2

.field public static final NO_COMPRESSION:I = 0x0

.field private static final STUB_INPUT_BUFFER:[B = null

.field private static final Z_FINISH:I = 0x4

.field private static final Z_NO_FLUSH:I


# instance fields
.field private compressLevel:I

.field private finished:Z

.field private flushParm:I

.field private inLength:I

.field private inRead:I

.field private inputBuffer:[B

.field private strategy:I

.field private streamHandle:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 104
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Ljava/util/zip/Deflater;->STUB_INPUT_BUFFER:[B

    .line 107
    invoke-static {}, Ljava/util/zip/Deflater;->oneTimeInitialization()V

    .line 108
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 135
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/util/zip/Deflater;-><init>(IZ)V

    .line 136
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .parameter "level"

    .prologue
    .line 149
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/util/zip/Deflater;-><init>(IZ)V

    .line 150
    return-void
.end method

.method public constructor <init>(IZ)V
    .registers 6
    .parameter "level"
    .parameter "noHeader"

    .prologue
    const/4 v0, 0x0

    const/4 v2, -0x1

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput v0, p0, Ljava/util/zip/Deflater;->flushParm:I

    .line 114
    iput v2, p0, Ljava/util/zip/Deflater;->compressLevel:I

    .line 116
    iput v0, p0, Ljava/util/zip/Deflater;->strategy:I

    .line 118
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ljava/util/zip/Deflater;->streamHandle:J

    .line 166
    if-lt p1, v2, :cond_15

    const/16 v0, 0x9

    if-le p1, v0, :cond_1b

    .line 167
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 169
    :cond_1b
    iput p1, p0, Ljava/util/zip/Deflater;->compressLevel:I

    .line 170
    iget v0, p0, Ljava/util/zip/Deflater;->compressLevel:I

    iget v1, p0, Ljava/util/zip/Deflater;->strategy:I

    invoke-direct {p0, v0, v1, p2}, Ljava/util/zip/Deflater;->createStream(IIZ)J

    move-result-wide v0

    iput-wide v0, p0, Ljava/util/zip/Deflater;->streamHandle:J

    .line 171
    return-void
.end method

.method private native createStream(IIZ)J
.end method

.method private synchronized native declared-synchronized deflateImpl([BIIJI)I
.end method

.method private synchronized native declared-synchronized endImpl(J)V
.end method

.method private synchronized native declared-synchronized getAdlerImpl(J)I
.end method

.method private synchronized native declared-synchronized getTotalInImpl(J)J
.end method

.method private synchronized native declared-synchronized getTotalOutImpl(J)J
.end method

.method private static native oneTimeInitialization()V
.end method

.method private synchronized native declared-synchronized resetImpl(J)V
.end method

.method private synchronized native declared-synchronized setDictionaryImpl([BIIJ)V
.end method

.method private synchronized native declared-synchronized setInputImpl([BIIJ)V
.end method

.method private synchronized native declared-synchronized setLevelsImpl(IIJ)V
.end method


# virtual methods
.method public deflate([B)I
    .registers 4
    .parameter "buf"

    .prologue
    .line 184
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/util/zip/Deflater;->deflate([BII)I

    move-result v0

    return v0
.end method

.method public declared-synchronized deflate([BII)I
    .registers 11
    .parameter "buf"
    .parameter "off"
    .parameter "nbytes"

    .prologue
    .line 201
    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Ljava/util/zip/Deflater;->streamHandle:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_12

    .line 202
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_f

    .line 201
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0

    .line 205
    :cond_12
    :try_start_12
    array-length v0, p1

    if-gt p2, v0, :cond_34

    if-ltz p3, :cond_34

    if-ltz p2, :cond_34

    array-length v0, p1

    sub-int/2addr v0, p2

    if-lt v0, p3, :cond_34

    .line 208
    iget-object v0, p0, Ljava/util/zip/Deflater;->inputBuffer:[B

    if-nez v0, :cond_26

    .line 209
    sget-object v0, Ljava/util/zip/Deflater;->STUB_INPUT_BUFFER:[B

    invoke-virtual {p0, v0}, Ljava/util/zip/Deflater;->setInput([B)V

    .line 211
    :cond_26
    iget-wide v4, p0, Ljava/util/zip/Deflater;->streamHandle:J

    iget v6, p0, Ljava/util/zip/Deflater;->flushParm:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Ljava/util/zip/Deflater;->deflateImpl([BIIJI)I
    :try_end_31
    .catchall {:try_start_12 .. :try_end_31} :catchall_f

    move-result v0

    monitor-exit p0

    return v0

    .line 213
    :cond_34
    :try_start_34
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
    :try_end_3a
    .catchall {:try_start_34 .. :try_end_3a} :catchall_f
.end method

.method public declared-synchronized end()V
    .registers 5

    .prologue
    const-wide/16 v2, -0x1

    .line 231
    monitor-enter p0

    :try_start_3
    iget-wide v0, p0, Ljava/util/zip/Deflater;->streamHandle:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_15

    .line 232
    iget-wide v0, p0, Ljava/util/zip/Deflater;->streamHandle:J

    invoke-direct {p0, v0, v1}, Ljava/util/zip/Deflater;->endImpl(J)V

    .line 233
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/zip/Deflater;->inputBuffer:[B

    .line 234
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ljava/util/zip/Deflater;->streamHandle:J
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_17

    .line 236
    :cond_15
    monitor-exit p0

    return-void

    .line 231
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .registers 1

    .prologue
    .line 240
    invoke-virtual {p0}, Ljava/util/zip/Deflater;->end()V

    .line 241
    return-void
.end method

.method public declared-synchronized finish()V
    .registers 2

    .prologue
    .line 251
    monitor-enter p0

    const/4 v0, 0x4

    :try_start_2
    iput v0, p0, Ljava/util/zip/Deflater;->flushParm:I
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 252
    monitor-exit p0

    return-void

    .line 251
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized finished()Z
    .registers 2

    .prologue
    .line 262
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Ljava/util/zip/Deflater;->finished:Z
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
    .line 277
    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Ljava/util/zip/Deflater;->streamHandle:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_12

    .line 278
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_f

    .line 277
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0

    .line 281
    :cond_12
    :try_start_12
    iget-wide v0, p0, Ljava/util/zip/Deflater;->streamHandle:J

    invoke-direct {p0, v0, v1}, Ljava/util/zip/Deflater;->getAdlerImpl(J)I
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_f

    move-result v0

    monitor-exit p0

    return v0
.end method

.method public declared-synchronized getBytesRead()J
    .registers 5

    .prologue
    .line 510
    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Ljava/util/zip/Deflater;->streamHandle:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_12

    .line 511
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_f

    .line 510
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0

    .line 513
    :cond_12
    :try_start_12
    iget-wide v0, p0, Ljava/util/zip/Deflater;->streamHandle:J

    invoke-direct {p0, v0, v1}, Ljava/util/zip/Deflater;->getTotalInImpl(J)J
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_f

    move-result-wide v0

    monitor-exit p0

    return-wide v0
.end method

.method public declared-synchronized getBytesWritten()J
    .registers 5

    .prologue
    .line 526
    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Ljava/util/zip/Deflater;->streamHandle:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_12

    .line 527
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_f

    .line 526
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0

    .line 529
    :cond_12
    :try_start_12
    iget-wide v0, p0, Ljava/util/zip/Deflater;->streamHandle:J

    invoke-direct {p0, v0, v1}, Ljava/util/zip/Deflater;->getTotalOutImpl(J)J
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_f

    move-result-wide v0

    monitor-exit p0

    return-wide v0
.end method

.method public declared-synchronized getTotalIn()I
    .registers 5

    .prologue
    .line 293
    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Ljava/util/zip/Deflater;->streamHandle:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_12

    .line 294
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_f

    .line 293
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0

    .line 297
    :cond_12
    :try_start_12
    iget-wide v0, p0, Ljava/util/zip/Deflater;->streamHandle:J

    invoke-direct {p0, v0, v1}, Ljava/util/zip/Deflater;->getTotalInImpl(J)J
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_f

    move-result-wide v0

    long-to-int v0, v0

    monitor-exit p0

    return v0
.end method

.method public declared-synchronized getTotalOut()I
    .registers 5

    .prologue
    .line 309
    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Ljava/util/zip/Deflater;->streamHandle:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_12

    .line 310
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_f

    .line 309
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0

    .line 313
    :cond_12
    :try_start_12
    iget-wide v0, p0, Ljava/util/zip/Deflater;->streamHandle:J

    invoke-direct {p0, v0, v1}, Ljava/util/zip/Deflater;->getTotalOutImpl(J)J
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_f

    move-result-wide v0

    long-to-int v0, v0

    monitor-exit p0

    return v0
.end method

.method public declared-synchronized needsInput()Z
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 333
    monitor-enter p0

    :try_start_2
    iget-object v0, p0, Ljava/util/zip/Deflater;->inputBuffer:[B
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_13

    if-nez v0, :cond_9

    move v0, v2

    .line 336
    :goto_7
    monitor-exit p0

    return v0

    :cond_9
    :try_start_9
    iget v0, p0, Ljava/util/zip/Deflater;->inRead:I

    iget v1, p0, Ljava/util/zip/Deflater;->inLength:I
    :try_end_d
    .catchall {:try_start_9 .. :try_end_d} :catchall_13

    if-ne v0, v1, :cond_11

    move v0, v2

    goto :goto_7

    :cond_11
    const/4 v0, 0x0

    goto :goto_7

    .line 333
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized reset()V
    .registers 5

    .prologue
    .line 349
    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Ljava/util/zip/Deflater;->streamHandle:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_12

    .line 350
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_f

    .line 349
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0

    .line 353
    :cond_12
    const/4 v0, 0x0

    :try_start_13
    iput v0, p0, Ljava/util/zip/Deflater;->flushParm:I

    .line 354
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/zip/Deflater;->finished:Z

    .line 355
    iget-wide v0, p0, Ljava/util/zip/Deflater;->streamHandle:J

    invoke-direct {p0, v0, v1}, Ljava/util/zip/Deflater;->resetImpl(J)V

    .line 356
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/zip/Deflater;->inputBuffer:[B
    :try_end_20
    .catchall {:try_start_13 .. :try_end_20} :catchall_f

    .line 357
    monitor-exit p0

    return-void
.end method

.method public setDictionary([B)V
    .registers 4
    .parameter "buf"

    .prologue
    .line 373
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/util/zip/Deflater;->setDictionary([BII)V

    .line 374
    return-void
.end method

.method public declared-synchronized setDictionary([BII)V
    .registers 10
    .parameter "buf"
    .parameter "off"
    .parameter "nbytes"

    .prologue
    .line 392
    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Ljava/util/zip/Deflater;->streamHandle:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_12

    .line 393
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_f

    .line 392
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0

    .line 396
    :cond_12
    :try_start_12
    array-length v0, p1

    if-gt p2, v0, :cond_28

    if-ltz p3, :cond_28

    if-ltz p2, :cond_28

    array-length v0, p1

    sub-int/2addr v0, p2

    if-lt v0, p3, :cond_28

    .line 398
    iget-wide v4, p0, Ljava/util/zip/Deflater;->streamHandle:J

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Ljava/util/zip/Deflater;->setDictionaryImpl([BIIJ)V
    :try_end_26
    .catchall {:try_start_12 .. :try_end_26} :catchall_f

    .line 402
    monitor-exit p0

    return-void

    .line 400
    :cond_28
    :try_start_28
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
    :try_end_2e
    .catchall {:try_start_28 .. :try_end_2e} :catchall_f
.end method

.method public setInput([B)V
    .registers 4
    .parameter "buf"

    .prologue
    .line 416
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/util/zip/Deflater;->setInput([BII)V

    .line 417
    return-void
.end method

.method public declared-synchronized setInput([BII)V
    .registers 10
    .parameter "buf"
    .parameter "off"
    .parameter "nbytes"

    .prologue
    .line 433
    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Ljava/util/zip/Deflater;->streamHandle:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_12

    .line 434
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_f

    .line 433
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0

    .line 437
    :cond_12
    :try_start_12
    array-length v0, p1

    if-gt p2, v0, :cond_3c

    if-ltz p3, :cond_3c

    if-ltz p2, :cond_3c

    array-length v0, p1

    sub-int/2addr v0, p2

    if-lt v0, p3, :cond_3c

    .line 439
    iput p3, p0, Ljava/util/zip/Deflater;->inLength:I

    .line 440
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/zip/Deflater;->inRead:I

    .line 441
    iget-object v0, p0, Ljava/util/zip/Deflater;->inputBuffer:[B

    if-nez v0, :cond_2f

    .line 442
    iget v0, p0, Ljava/util/zip/Deflater;->compressLevel:I

    iget v1, p0, Ljava/util/zip/Deflater;->strategy:I

    iget-wide v2, p0, Ljava/util/zip/Deflater;->streamHandle:J

    invoke-direct {p0, v0, v1, v2, v3}, Ljava/util/zip/Deflater;->setLevelsImpl(IIJ)V

    .line 444
    :cond_2f
    iput-object p1, p0, Ljava/util/zip/Deflater;->inputBuffer:[B

    .line 445
    iget-wide v4, p0, Ljava/util/zip/Deflater;->streamHandle:J

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Ljava/util/zip/Deflater;->setInputImpl([BIIJ)V
    :try_end_3a
    .catchall {:try_start_12 .. :try_end_3a} :catchall_f

    .line 449
    monitor-exit p0

    return-void

    .line 447
    :cond_3c
    :try_start_3c
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
    :try_end_42
    .catchall {:try_start_3c .. :try_end_42} :catchall_f
.end method

.method public declared-synchronized setLevel(I)V
    .registers 3
    .parameter "level"

    .prologue
    .line 469
    monitor-enter p0

    const/4 v0, -0x1

    if-lt p1, v0, :cond_8

    const/16 v0, 0x9

    if-le p1, v0, :cond_11

    .line 470
    :cond_8
    :try_start_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_e

    .line 469
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0

    .line 472
    :cond_11
    :try_start_11
    iget-object v0, p0, Ljava/util/zip/Deflater;->inputBuffer:[B

    if-eqz v0, :cond_1b

    .line 473
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 475
    :cond_1b
    iput p1, p0, Ljava/util/zip/Deflater;->compressLevel:I
    :try_end_1d
    .catchall {:try_start_11 .. :try_end_1d} :catchall_e

    .line 476
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setStrategy(I)V
    .registers 3
    .parameter "strategy"

    .prologue
    .line 491
    monitor-enter p0

    if-ltz p1, :cond_6

    const/4 v0, 0x2

    if-le p1, v0, :cond_f

    .line 492
    :cond_6
    :try_start_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_c

    .line 491
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0

    .line 494
    :cond_f
    :try_start_f
    iget-object v0, p0, Ljava/util/zip/Deflater;->inputBuffer:[B

    if-eqz v0, :cond_19

    .line 495
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 497
    :cond_19
    iput p1, p0, Ljava/util/zip/Deflater;->strategy:I
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_c

    .line 498
    monitor-exit p0

    return-void
.end method
