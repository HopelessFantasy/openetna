.class public abstract Lorg/apache/harmony/nio/internal/FileChannelImpl;
.super Ljava/nio/channels/FileChannel;
.source "FileChannelImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/nio/internal/FileChannelImpl$1;,
        Lorg/apache/harmony/nio/internal/FileChannelImpl$RepositioningLock;
    }
.end annotation


# static fields
.field private static final ALLOC_GRANULARITY:I

.field private static final fileSystem:Lorg/apache/harmony/luni/platform/IFileSystem;


# instance fields
.field private final handle:I

.field private final lockManager:Lorg/apache/harmony/nio/internal/LockManager;

.field private final repositioningLock:Ljava/lang/Object;

.field private final stream:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 57
    invoke-static {}, Lorg/apache/harmony/luni/platform/Platform;->getFileSystem()Lorg/apache/harmony/luni/platform/IFileSystem;

    move-result-object v1

    sput-object v1, Lorg/apache/harmony/nio/internal/FileChannelImpl;->fileSystem:Lorg/apache/harmony/luni/platform/IFileSystem;

    .line 63
    :try_start_6
    sget-object v1, Lorg/apache/harmony/nio/internal/FileChannelImpl;->fileSystem:Lorg/apache/harmony/luni/platform/IFileSystem;

    invoke-interface {v1}, Lorg/apache/harmony/luni/platform/IFileSystem;->getAllocGranularity()I

    move-result v1

    sput v1, Lorg/apache/harmony/nio/internal/FileChannelImpl;->ALLOC_GRANULARITY:I
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_e} :catch_f

    .line 68
    return-void

    .line 64
    :catch_f
    move-exception v1

    move-object v0, v1

    .line 65
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Ljava/lang/Object;I)V
    .registers 5
    .parameter "stream"
    .parameter "handle"

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/nio/channels/FileChannel;-><init>()V

    .line 74
    new-instance v0, Lorg/apache/harmony/nio/internal/LockManager;

    invoke-direct {v0}, Lorg/apache/harmony/nio/internal/LockManager;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/nio/internal/FileChannelImpl;->lockManager:Lorg/apache/harmony/nio/internal/LockManager;

    .line 77
    new-instance v0, Lorg/apache/harmony/nio/internal/FileChannelImpl$RepositioningLock;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/harmony/nio/internal/FileChannelImpl$RepositioningLock;-><init>(Lorg/apache/harmony/nio/internal/FileChannelImpl;Lorg/apache/harmony/nio/internal/FileChannelImpl$1;)V

    iput-object v0, p0, Lorg/apache/harmony/nio/internal/FileChannelImpl;->repositioningLock:Ljava/lang/Object;

    .line 88
    iput p2, p0, Lorg/apache/harmony/nio/internal/FileChannelImpl;->handle:I

    .line 89
    iput-object p1, p0, Lorg/apache/harmony/nio/internal/FileChannelImpl;->stream:Ljava/lang/Object;

    .line 90
    return-void
.end method

.method private kernelTransfer(ILjava/io/FileDescriptor;JJ)J
    .registers 17
    .parameter "l"
    .parameter "fd"
    .parameter "position"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 482
    const/4 v7, 0x0

    .line 484
    .local v7, completed:Z
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/harmony/nio/internal/FileChannelImpl;->begin()V

    .line 485
    sget-object v0, Lorg/apache/harmony/nio/internal/FileChannelImpl;->fileSystem:Lorg/apache/harmony/luni/platform/IFileSystem;

    move v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    invoke-interface/range {v0 .. v6}, Lorg/apache/harmony/luni/platform/IFileSystem;->transfer(ILjava/io/FileDescriptor;JJ)J
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_13

    move-result-wide v8

    .line 486
    .local v8, ret:J
    const/4 v7, 0x1

    .line 489
    invoke-virtual {p0, v7}, Lorg/apache/harmony/nio/internal/FileChannelImpl;->end(Z)V

    return-wide v8

    .end local v8           #ret:J
    :catchall_13
    move-exception v0

    invoke-virtual {p0, v7}, Lorg/apache/harmony/nio/internal/FileChannelImpl;->end(Z)V

    throw v0
.end method

.method private writeImpl(Ljava/nio/ByteBuffer;)I
    .registers 13
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 551
    const/4 v3, 0x0

    .line 552
    .local v3, completed:Z
    iget-object v5, p0, Lorg/apache/harmony/nio/internal/FileChannelImpl;->repositioningLock:Ljava/lang/Object;

    monitor-enter v5

    .line 553
    :try_start_4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v6

    if-eqz v6, :cond_42

    .line 554
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/nio/internal/DirectBuffer;

    move-object v4, v0

    .line 555
    .local v4, directBuffer:Lorg/apache/harmony/nio/internal/DirectBuffer;
    invoke-interface {v4}, Lorg/apache/harmony/nio/internal/DirectBuffer;->getEffectiveAddress()Lorg/apache/harmony/luni/platform/PlatformAddress;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/harmony/luni/platform/PlatformAddress;->toInt()I
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_3f

    move-result v1

    .line 557
    .local v1, address:I
    :try_start_16
    invoke-virtual {p0}, Lorg/apache/harmony/nio/internal/FileChannelImpl;->begin()V

    .line 558
    sget-object v6, Lorg/apache/harmony/nio/internal/FileChannelImpl;->fileSystem:Lorg/apache/harmony/luni/platform/IFileSystem;

    iget v7, p0, Lorg/apache/harmony/nio/internal/FileChannelImpl;->handle:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v9

    invoke-interface {v6, v7, v1, v8, v9}, Lorg/apache/harmony/luni/platform/IFileSystem;->writeDirect(IIII)J
    :try_end_28
    .catchall {:try_start_16 .. :try_end_28} :catchall_3a

    move-result-wide v6

    long-to-int v2, v6

    .line 560
    .local v2, bytesWritten:I
    const/4 v3, 0x1

    .line 562
    :try_start_2b
    invoke-virtual {p0, v3}, Lorg/apache/harmony/nio/internal/FileChannelImpl;->end(Z)V

    .line 575
    .end local v1           #address:I
    .end local v4           #directBuffer:Lorg/apache/harmony/nio/internal/DirectBuffer;
    :goto_2e
    if-lez v2, :cond_38

    .line 576
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    add-int/2addr v6, v2

    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 578
    :cond_38
    monitor-exit v5

    .line 579
    return v2

    .line 562
    .end local v2           #bytesWritten:I
    .restart local v1       #address:I
    .restart local v4       #directBuffer:Lorg/apache/harmony/nio/internal/DirectBuffer;
    :catchall_3a
    move-exception v6

    invoke-virtual {p0, v3}, Lorg/apache/harmony/nio/internal/FileChannelImpl;->end(Z)V

    throw v6

    .line 578
    .end local v1           #address:I
    .end local v4           #directBuffer:Lorg/apache/harmony/nio/internal/DirectBuffer;
    :catchall_3f
    move-exception v6

    monitor-exit v5
    :try_end_41
    .catchall {:try_start_2b .. :try_end_41} :catchall_3f

    throw v6

    .line 566
    :cond_42
    :try_start_42
    invoke-virtual {p0}, Lorg/apache/harmony/nio/internal/FileChannelImpl;->begin()V

    .line 567
    sget-object v6, Lorg/apache/harmony/nio/internal/FileChannelImpl;->fileSystem:Lorg/apache/harmony/luni/platform/IFileSystem;

    iget v7, p0, Lorg/apache/harmony/nio/internal/FileChannelImpl;->handle:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v9

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v10

    invoke-interface {v6, v7, v8, v9, v10}, Lorg/apache/harmony/luni/platform/IFileSystem;->write(I[BII)J
    :try_end_5d
    .catchall {:try_start_42 .. :try_end_5d} :catchall_64

    move-result-wide v6

    long-to-int v2, v6

    .line 570
    .restart local v2       #bytesWritten:I
    const/4 v3, 0x1

    .line 572
    :try_start_60
    invoke-virtual {p0, v3}, Lorg/apache/harmony/nio/internal/FileChannelImpl;->end(Z)V

    goto :goto_2e

    .end local v2           #bytesWritten:I
    :catchall_64
    move-exception v6

    invoke-virtual {p0, v3}, Lorg/apache/harmony/nio/internal/FileChannelImpl;->end(Z)V

    throw v6
    :try_end_69
    .catchall {:try_start_60 .. :try_end_69} :catchall_3f
.end method


# virtual methods
.method protected basicLock(JJZZ)Ljava/nio/channels/FileLock;
    .registers 16
    .parameter "position"
    .parameter "size"
    .parameter "shared"
    .parameter "wait"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 116
    cmp-long v1, p1, v2

    if-ltz v1, :cond_a

    cmp-long v1, p3, v2

    if-gez v1, :cond_16

    .line 118
    :cond_a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "nio.0A"

    invoke-static {v2}, Lorg/apache/harmony/nio/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 121
    :cond_16
    if-eqz p5, :cond_37

    const/4 v1, 0x1

    move v7, v1

    .line 123
    .local v7, lockType:I
    :goto_1a
    new-instance v0, Lorg/apache/harmony/nio/internal/FileLockImpl;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/apache/harmony/nio/internal/FileLockImpl;-><init>(Ljava/nio/channels/FileChannel;JJZ)V

    .line 124
    .local v0, pendingLock:Ljava/nio/channels/FileLock;
    iget-object v1, p0, Lorg/apache/harmony/nio/internal/FileChannelImpl;->lockManager:Lorg/apache/harmony/nio/internal/LockManager;

    invoke-virtual {v1, v0}, Lorg/apache/harmony/nio/internal/LockManager;->addLock(Ljava/nio/channels/FileLock;)V

    .line 126
    sget-object v1, Lorg/apache/harmony/nio/internal/FileChannelImpl;->fileSystem:Lorg/apache/harmony/luni/platform/IFileSystem;

    iget v2, p0, Lorg/apache/harmony/nio/internal/FileChannelImpl;->handle:I

    move-wide v3, p1

    move-wide v5, p3

    move v8, p6

    invoke-interface/range {v1 .. v8}, Lorg/apache/harmony/luni/platform/IFileSystem;->lock(IJJIZ)Z

    move-result v1

    if-eqz v1, :cond_3a

    move-object v1, v0

    .line 132
    :goto_36
    return-object v1

    .line 121
    .end local v0           #pendingLock:Ljava/nio/channels/FileLock;
    .end local v7           #lockType:I
    :cond_37
    const/4 v1, 0x2

    move v7, v1

    goto :goto_1a

    .line 131
    .restart local v0       #pendingLock:Ljava/nio/channels/FileLock;
    .restart local v7       #lockType:I
    :cond_3a
    iget-object v1, p0, Lorg/apache/harmony/nio/internal/FileChannelImpl;->lockManager:Lorg/apache/harmony/nio/internal/LockManager;

    invoke-virtual {v1, v0}, Lorg/apache/harmony/nio/internal/LockManager;->removeLock(Ljava/nio/channels/FileLock;)V

    .line 132
    const/4 v1, 0x0

    goto :goto_36
.end method

.method public force(Z)V
    .registers 4
    .parameter "metadata"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 184
    invoke-virtual {p0}, Lorg/apache/harmony/nio/internal/FileChannelImpl;->openCheck()V

    .line 186
    if-eqz p1, :cond_c

    .line 187
    sget-object v0, Lorg/apache/harmony/nio/internal/FileChannelImpl;->fileSystem:Lorg/apache/harmony/luni/platform/IFileSystem;

    iget v1, p0, Lorg/apache/harmony/nio/internal/FileChannelImpl;->handle:I

    invoke-interface {v0, v1, p1}, Lorg/apache/harmony/luni/platform/IFileSystem;->fflush(IZ)V

    .line 189
    :cond_c
    return-void
.end method

.method public getHandle()I
    .registers 2

    .prologue
    .line 658
    iget v0, p0, Lorg/apache/harmony/nio/internal/FileChannelImpl;->handle:I

    return v0
.end method

.method protected implCloseChannel()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Lorg/apache/harmony/nio/internal/FileChannelImpl;->stream:Ljava/lang/Object;

    instance-of v0, v0, Ljava/io/Closeable;

    if-eqz v0, :cond_d

    .line 110
    iget-object p0, p0, Lorg/apache/harmony/nio/internal/FileChannelImpl;->stream:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/io/Closeable;

    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    .line 112
    :cond_d
    return-void
.end method

.method public final lock(JJZ)Ljava/nio/channels/FileLock;
    .registers 15
    .parameter "position"
    .parameter "size"
    .parameter "shared"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 143
    invoke-virtual {p0}, Lorg/apache/harmony/nio/internal/FileChannelImpl;->openCheck()V

    .line 144
    const/4 v8, 0x0

    .line 146
    .local v8, resultLock:Ljava/nio/channels/FileLock;
    const/4 v7, 0x0

    .line 148
    .local v7, completed:Z
    :try_start_5
    invoke-virtual {p0}, Lorg/apache/harmony/nio/internal/FileChannelImpl;->begin()V

    .line 149
    const/4 v6, 0x1

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lorg/apache/harmony/nio/internal/FileChannelImpl;->basicLock(JJZZ)Ljava/nio/channels/FileLock;
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_16

    move-result-object v8

    .line 150
    const/4 v7, 0x1

    .line 152
    invoke-virtual {p0, v7}, Lorg/apache/harmony/nio/internal/FileChannelImpl;->end(Z)V

    .line 155
    return-object v8

    .line 152
    :catchall_16
    move-exception v0

    invoke-virtual {p0, v7}, Lorg/apache/harmony/nio/internal/FileChannelImpl;->end(Z)V

    throw v0
.end method

.method public abstract map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected final mapImpl(IJJ)Ljava/nio/MappedByteBuffer;
    .registers 16
    .parameter "mapMode"
    .parameter "position"
    .parameter "size"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 196
    add-long v3, p2, p4

    invoke-virtual {p0}, Lorg/apache/harmony/nio/internal/FileChannelImpl;->size()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-lez v0, :cond_13

    .line 197
    sget-object v0, Lorg/apache/harmony/nio/internal/FileChannelImpl;->fileSystem:Lorg/apache/harmony/luni/platform/IFileSystem;

    iget v1, p0, Lorg/apache/harmony/nio/internal/FileChannelImpl;->handle:I

    add-long v3, p2, p4

    invoke-interface {v0, v1, v3, v4}, Lorg/apache/harmony/luni/platform/IFileSystem;->truncate(IJ)V

    .line 199
    :cond_13
    sget v0, Lorg/apache/harmony/nio/internal/FileChannelImpl;->ALLOC_GRANULARITY:I

    int-to-long v3, v0

    rem-long v3, p2, v3

    sub-long v1, p2, v3

    .line 200
    .local v1, alignment:J
    sub-long v3, p2, v1

    long-to-int v9, v3

    .line 201
    .local v9, offset:I
    iget v0, p0, Lorg/apache/harmony/nio/internal/FileChannelImpl;->handle:I

    int-to-long v3, v9

    add-long/2addr v3, p4

    move v5, p1

    invoke-static/range {v0 .. v5}, Lorg/apache/harmony/luni/platform/PlatformAddressFactory;->allocMap(IJJI)Lorg/apache/harmony/luni/platform/PlatformAddress;

    move-result-object v6

    .line 203
    .local v6, address:Lorg/apache/harmony/luni/platform/PlatformAddress;
    const/4 v7, 0x0

    .line 205
    .local v7, buffer:Ljava/nio/MappedByteBuffer;
    :try_start_27
    invoke-static {v6, p1, p4, p5, v9}, Lorg/apache/harmony/nio/internal/MappedByteBufferFactory;->getBuffer(Lorg/apache/harmony/luni/platform/PlatformAddress;IJI)Ljava/nio/MappedByteBuffer;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2a} :catch_2c

    move-result-object v7

    .line 210
    return-object v7

    .line 207
    :catch_2c
    move-exception v8

    .line 208
    .local v8, e:Ljava/lang/Exception;
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    .end local v1           #alignment:J
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final openCheck()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/ClosedChannelException;
        }
    .end annotation

    .prologue
    .line 98
    invoke-virtual {p0}, Lorg/apache/harmony/nio/internal/FileChannelImpl;->isOpen()Z

    move-result v0

    if-nez v0, :cond_c

    .line 99
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0

    .line 101
    :cond_c
    return-void
.end method

.method public position()J
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 217
    invoke-virtual {p0}, Lorg/apache/harmony/nio/internal/FileChannelImpl;->openCheck()V

    .line 218
    sget-object v0, Lorg/apache/harmony/nio/internal/FileChannelImpl;->fileSystem:Lorg/apache/harmony/luni/platform/IFileSystem;

    iget v1, p0, Lorg/apache/harmony/nio/internal/FileChannelImpl;->handle:I

    const-wide/16 v2, 0x0

    const/4 v4, 0x2

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/apache/harmony/luni/platform/IFileSystem;->seek(IJI)J

    move-result-wide v0

    return-wide v0
.end method

.method public position(J)Ljava/nio/channels/FileChannel;
    .registers 7
    .parameter "newPosition"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 225
    invoke-virtual {p0}, Lorg/apache/harmony/nio/internal/FileChannelImpl;->openCheck()V

    .line 226
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_15

    .line 228
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "nio.0B"

    invoke-static {v1}, Lorg/apache/harmony/nio/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 232
    :cond_15
    iget-object v0, p0, Lorg/apache/harmony/nio/internal/FileChannelImpl;->repositioningLock:Ljava/lang/Object;

    monitor-enter v0

    .line 233
    :try_start_18
    sget-object v1, Lorg/apache/harmony/nio/internal/FileChannelImpl;->fileSystem:Lorg/apache/harmony/luni/platform/IFileSystem;

    iget v2, p0, Lorg/apache/harmony/nio/internal/FileChannelImpl;->handle:I

    const/4 v3, 0x1

    invoke-interface {v1, v2, p1, p2, v3}, Lorg/apache/harmony/luni/platform/IFileSystem;->seek(IJI)J

    .line 234
    monitor-exit v0

    .line 235
    return-object p0

    .line 234
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_18 .. :try_end_24} :catchall_22

    throw v1
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .registers 15
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 263
    invoke-virtual {p0}, Lorg/apache/harmony/nio/internal/FileChannelImpl;->openCheck()V

    .line 264
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v5

    if-nez v5, :cond_d

    move v5, v11

    .line 302
    :goto_c
    return v5

    .line 267
    :cond_d
    const/4 v3, 0x0

    .line 268
    .local v3, completed:Z
    const/4 v2, 0x0

    .line 269
    .local v2, bytesRead:I
    iget-object v5, p0, Lorg/apache/harmony/nio/internal/FileChannelImpl;->repositioningLock:Ljava/lang/Object;

    monitor-enter v5

    .line 270
    :try_start_12
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v6

    if-eqz v6, :cond_5f

    .line 271
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/nio/internal/DirectBuffer;

    move-object v4, v0

    .line 272
    .local v4, directBuffer:Lorg/apache/harmony/nio/internal/DirectBuffer;
    invoke-interface {v4}, Lorg/apache/harmony/nio/internal/DirectBuffer;->getEffectiveAddress()Lorg/apache/harmony/luni/platform/PlatformAddress;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/harmony/luni/platform/PlatformAddress;->toInt()I
    :try_end_23
    .catchall {:try_start_12 .. :try_end_23} :catchall_5a

    move-result v1

    .line 274
    .local v1, address:I
    :try_start_24
    invoke-virtual {p0}, Lorg/apache/harmony/nio/internal/FileChannelImpl;->begin()V

    .line 278
    sget-object v6, Lorg/apache/harmony/nio/internal/FileChannelImpl;->fileSystem:Lorg/apache/harmony/luni/platform/IFileSystem;

    iget v7, p0, Lorg/apache/harmony/nio/internal/FileChannelImpl;->handle:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v9

    invoke-interface {v6, v7, v1, v8, v9}, Lorg/apache/harmony/luni/platform/IFileSystem;->readDirect(IIII)J
    :try_end_36
    .catchall {:try_start_24 .. :try_end_36} :catchall_50

    move-result-wide v6

    long-to-int v2, v6

    .line 280
    const/4 v3, 0x1

    .line 282
    if-eqz v3, :cond_4e

    if-ltz v2, :cond_4e

    move v6, v12

    :goto_3e
    :try_start_3e
    invoke-virtual {p0, v6}, Lorg/apache/harmony/nio/internal/FileChannelImpl;->end(Z)V

    .line 298
    .end local v1           #address:I
    .end local v4           #directBuffer:Lorg/apache/harmony/nio/internal/DirectBuffer;
    :goto_41
    if-lez v2, :cond_4b

    .line 299
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    add-int/2addr v6, v2

    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 301
    :cond_4b
    monitor-exit v5

    move v5, v2

    .line 302
    goto :goto_c

    .restart local v1       #address:I
    .restart local v4       #directBuffer:Lorg/apache/harmony/nio/internal/DirectBuffer;
    :cond_4e
    move v6, v11

    .line 282
    goto :goto_3e

    :catchall_50
    move-exception v6

    if-eqz v3, :cond_5d

    if-ltz v2, :cond_5d

    move v7, v12

    :goto_56
    invoke-virtual {p0, v7}, Lorg/apache/harmony/nio/internal/FileChannelImpl;->end(Z)V

    throw v6

    .line 301
    .end local v1           #address:I
    .end local v4           #directBuffer:Lorg/apache/harmony/nio/internal/DirectBuffer;
    :catchall_5a
    move-exception v6

    monitor-exit v5
    :try_end_5c
    .catchall {:try_start_3e .. :try_end_5c} :catchall_5a

    throw v6

    .restart local v1       #address:I
    .restart local v4       #directBuffer:Lorg/apache/harmony/nio/internal/DirectBuffer;
    :cond_5d
    move v7, v11

    .line 282
    goto :goto_56

    .line 286
    .end local v1           #address:I
    .end local v4           #directBuffer:Lorg/apache/harmony/nio/internal/DirectBuffer;
    :cond_5f
    :try_start_5f
    invoke-virtual {p0}, Lorg/apache/harmony/nio/internal/FileChannelImpl;->begin()V

    .line 290
    sget-object v6, Lorg/apache/harmony/nio/internal/FileChannelImpl;->fileSystem:Lorg/apache/harmony/luni/platform/IFileSystem;

    iget v7, p0, Lorg/apache/harmony/nio/internal/FileChannelImpl;->handle:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v9

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v10

    invoke-interface {v6, v7, v8, v9, v10}, Lorg/apache/harmony/luni/platform/IFileSystem;->read(I[BII)J
    :try_end_7a
    .catchall {:try_start_5f .. :try_end_7a} :catchall_88

    move-result-wide v6

    long-to-int v2, v6

    .line 293
    const/4 v3, 0x1

    .line 295
    if-eqz v3, :cond_86

    if-ltz v2, :cond_86

    move v6, v12

    :goto_82
    :try_start_82
    invoke-virtual {p0, v6}, Lorg/apache/harmony/nio/internal/FileChannelImpl;->end(Z)V

    goto :goto_41

    :cond_86
    move v6, v11

    goto :goto_82

    :catchall_88
    move-exception v6

    if-eqz v3, :cond_92

    if-ltz v2, :cond_92

    move v7, v12

    :goto_8e
    invoke-virtual {p0, v7}, Lorg/apache/harmony/nio/internal/FileChannelImpl;->end(Z)V

    throw v6
    :try_end_92
    .catchall {:try_start_82 .. :try_end_92} :catchall_5a

    :cond_92
    move v7, v11

    goto :goto_8e
.end method

.method public read(Ljava/nio/ByteBuffer;J)I
    .registers 9
    .parameter "buffer"
    .parameter "position"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 239
    if-nez p1, :cond_8

    .line 240
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 242
    :cond_8
    const-wide/16 v3, 0x0

    cmp-long v3, p2, v3

    if-gez v3, :cond_14

    .line 243
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 245
    :cond_14
    invoke-virtual {p0}, Lorg/apache/harmony/nio/internal/FileChannelImpl;->openCheck()V

    .line 246
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-nez v3, :cond_1f

    .line 247
    const/4 v3, 0x0

    .line 258
    :goto_1e
    return v3

    .line 249
    :cond_1f
    iget-object v3, p0, Lorg/apache/harmony/nio/internal/FileChannelImpl;->repositioningLock:Ljava/lang/Object;

    monitor-enter v3

    .line 250
    const/4 v0, 0x0

    .line 251
    .local v0, bytesRead:I
    :try_start_23
    invoke-virtual {p0}, Lorg/apache/harmony/nio/internal/FileChannelImpl;->position()J

    move-result-wide v1

    .line 252
    .local v1, preReadPosition:J
    invoke-virtual {p0, p2, p3}, Lorg/apache/harmony/nio/internal/FileChannelImpl;->position(J)Ljava/nio/channels/FileChannel;
    :try_end_2a
    .catchall {:try_start_23 .. :try_end_2a} :catchall_39

    .line 254
    :try_start_2a
    invoke-virtual {p0, p1}, Lorg/apache/harmony/nio/internal/FileChannelImpl;->read(Ljava/nio/ByteBuffer;)I
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_34

    move-result v0

    .line 256
    :try_start_2e
    invoke-virtual {p0, v1, v2}, Lorg/apache/harmony/nio/internal/FileChannelImpl;->position(J)Ljava/nio/channels/FileChannel;

    .line 258
    monitor-exit v3

    move v3, v0

    goto :goto_1e

    .line 256
    :catchall_34
    move-exception v4

    invoke-virtual {p0, v1, v2}, Lorg/apache/harmony/nio/internal/FileChannelImpl;->position(J)Ljava/nio/channels/FileChannel;

    throw v4

    .line 259
    .end local v1           #preReadPosition:J
    :catchall_39
    move-exception v4

    monitor-exit v3
    :try_end_3b
    .catchall {:try_start_2e .. :try_end_3b} :catchall_39

    throw v4
.end method

.method public read([Ljava/nio/ByteBuffer;II)J
    .registers 24
    .parameter "buffers"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 307
    const/4 v15, 0x0

    .line 308
    .local v15, count:I
    if-ltz p2, :cond_d

    if-ltz p3, :cond_d

    add-int v2, p2, p3

    move-object/from16 v0, p1

    array-length v0, v0

    move v3, v0

    if-le v2, v3, :cond_13

    .line 309
    :cond_d
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 311
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lorg/apache/harmony/nio/internal/FileChannelImpl;->openCheck()V

    .line 312
    move/from16 v18, p2

    .local v18, i:I
    :goto_18
    add-int v2, p2, p3

    move/from16 v0, v18

    move v1, v2

    if-ge v0, v1, :cond_29

    .line 313
    aget-object v2, p1, v18

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    add-int/2addr v15, v2

    .line 312
    add-int/lit8 v18, v18, 0x1

    goto :goto_18

    .line 315
    :cond_29
    if-nez v15, :cond_2e

    .line 316
    const-wide/16 v2, 0x0

    .line 382
    :goto_2d
    return-wide v2

    .line 318
    :cond_2e
    invoke-virtual/range {p0 .. p0}, Lorg/apache/harmony/nio/internal/FileChannelImpl;->size()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_3b

    .line 319
    const-wide/16 v2, -0x1

    goto :goto_2d

    .line 321
    :cond_3b
    move/from16 v0, p3

    new-array v0, v0, [Ljava/nio/ByteBuffer;

    move-object/from16 v16, v0

    .line 322
    .local v16, directBuffers:[Ljava/nio/ByteBuffer;
    move/from16 v0, p3

    new-array v0, v0, [I

    move-object v4, v0

    .line 323
    .local v4, handles:[I
    move/from16 v0, p3

    new-array v0, v0, [I

    move-object v5, v0

    .line 324
    .local v5, offsets:[I
    move/from16 v0, p3

    new-array v0, v0, [I

    move-object v6, v0

    .line 325
    .local v6, lengths:[I
    const/16 v18, 0x0

    :goto_52
    move/from16 v0, v18

    move/from16 v1, p3

    if-ge v0, v1, :cond_8d

    .line 326
    add-int v2, v18, p2

    aget-object v9, p1, v2

    .line 327
    .local v9, buffer:Ljava/nio/ByteBuffer;
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v2

    if-nez v2, :cond_86

    .line 328
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 329
    aput-object v9, v16, v18

    .line 330
    const/4 v2, 0x0

    aput v2, v5, v18

    .line 334
    :goto_6f
    move-object v0, v9

    check-cast v0, Lorg/apache/harmony/nio/internal/DirectBuffer;

    move-object v10, v0

    invoke-interface {v10}, Lorg/apache/harmony/nio/internal/DirectBuffer;->getEffectiveAddress()Lorg/apache/harmony/luni/platform/PlatformAddress;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/harmony/luni/platform/PlatformAddress;->toInt()I

    move-result v2

    aput v2, v4, v18

    .line 335
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    aput v2, v6, v18

    .line 325
    add-int/lit8 v18, v18, 0x1

    goto :goto_52

    .line 332
    :cond_86
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    aput v2, v5, v18

    goto :goto_6f

    .line 337
    .end local v9           #buffer:Ljava/nio/ByteBuffer;
    :cond_8d
    const-wide/16 v10, 0x0

    .line 339
    .local v10, bytesRead:J
    const/4 v14, 0x0

    .line 341
    .local v14, completed:Z
    :try_start_90
    invoke-virtual/range {p0 .. p0}, Lorg/apache/harmony/nio/internal/FileChannelImpl;->begin()V

    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/nio/internal/FileChannelImpl;->repositioningLock:Ljava/lang/Object;

    move-object v8, v0

    monitor-enter v8
    :try_end_99
    .catchall {:try_start_90 .. :try_end_99} :catchall_e6

    .line 343
    :try_start_99
    sget-object v2, Lorg/apache/harmony/nio/internal/FileChannelImpl;->fileSystem:Lorg/apache/harmony/luni/platform/IFileSystem;

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/harmony/nio/internal/FileChannelImpl;->handle:I

    move v3, v0

    move/from16 v7, p3

    invoke-interface/range {v2 .. v7}, Lorg/apache/harmony/luni/platform/IFileSystem;->readv(I[I[I[II)J

    move-result-wide v10

    .line 346
    monitor-exit v8
    :try_end_a7
    .catchall {:try_start_99 .. :try_end_a7} :catchall_e3

    .line 347
    const/4 v14, 0x1

    .line 352
    move-object/from16 v0, p0

    move v1, v14

    invoke-virtual {v0, v1}, Lorg/apache/harmony/nio/internal/FileChannelImpl;->end(Z)V

    .line 355
    add-int v17, p2, p3

    .line 356
    .local v17, end:I
    move-wide v12, v10

    .line 357
    .local v12, bytesRemaining:J
    move/from16 v18, p2

    :goto_b3
    move/from16 v0, v18

    move/from16 v1, v17

    if-ge v0, v1, :cond_fa

    const-wide/16 v2, 0x0

    cmp-long v2, v12, v2

    if-lez v2, :cond_fa

    .line 358
    aget-object v2, p1, v18

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v2

    if-eqz v2, :cond_fd

    .line 359
    aget v2, v6, v18

    int-to-long v2, v2

    cmp-long v2, v2, v12

    if-gez v2, :cond_ee

    .line 360
    aget-object v2, p1, v18

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v19

    .line 361
    .local v19, pos:I
    aget-object v2, p1, v18

    move-object v0, v2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 362
    aget v2, v6, v18

    int-to-long v2, v2

    sub-long/2addr v12, v2

    .line 357
    .end local v19           #pos:I
    :goto_e0
    add-int/lit8 v18, v18, 0x1

    goto :goto_b3

    .line 346
    .end local v12           #bytesRemaining:J
    .end local v17           #end:I
    :catchall_e3
    move-exception v2

    :try_start_e4
    monitor-exit v8
    :try_end_e5
    .catchall {:try_start_e4 .. :try_end_e5} :catchall_e3

    :try_start_e5
    throw v2
    :try_end_e6
    .catchall {:try_start_e5 .. :try_end_e6} :catchall_e6

    .line 352
    :catchall_e6
    move-exception v2

    move-object/from16 v0, p0

    move v1, v14

    invoke-virtual {v0, v1}, Lorg/apache/harmony/nio/internal/FileChannelImpl;->end(Z)V

    throw v2

    .line 364
    .restart local v12       #bytesRemaining:J
    .restart local v17       #end:I
    :cond_ee
    move-wide v0, v12

    long-to-int v0, v0

    move/from16 v19, v0

    .line 365
    .restart local v19       #pos:I
    aget-object v2, p1, v18

    move-object v0, v2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .end local v19           #pos:I
    :cond_fa
    move-wide v2, v10

    .line 382
    goto/16 :goto_2d

    .line 369
    :cond_fd
    sub-int v2, v18, p2

    aget-object v8, v16, v2

    .line 370
    .local v8, buf:Ljava/nio/ByteBuffer;
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, v12, v2

    if-gez v2, :cond_11e

    .line 372
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->position()I

    move-result v19

    .line 373
    .restart local v19       #pos:I
    aget-object v2, p1, v18

    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 374
    aget-object v2, p1, v18

    long-to-int v3, v12

    add-int v3, v3, v19

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 375
    const-wide/16 v12, 0x0

    .line 376
    goto :goto_e0

    .line 377
    .end local v19           #pos:I
    :cond_11e
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    int-to-long v2, v2

    sub-long/2addr v12, v2

    .line 378
    aget-object v2, p1, v18

    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto :goto_e0
.end method

.method release(Ljava/nio/channels/FileLock;)V
    .registers 8
    .parameter "lock"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 175
    invoke-virtual {p0}, Lorg/apache/harmony/nio/internal/FileChannelImpl;->openCheck()V

    .line 176
    sget-object v0, Lorg/apache/harmony/nio/internal/FileChannelImpl;->fileSystem:Lorg/apache/harmony/luni/platform/IFileSystem;

    iget v1, p0, Lorg/apache/harmony/nio/internal/FileChannelImpl;->handle:I

    invoke-virtual {p1}, Ljava/nio/channels/FileLock;->position()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/nio/channels/FileLock;->size()J

    move-result-wide v4

    invoke-interface/range {v0 .. v5}, Lorg/apache/harmony/luni/platform/IFileSystem;->unlock(IJJ)V

    .line 177
    iget-object v0, p0, Lorg/apache/harmony/nio/internal/FileChannelImpl;->lockManager:Lorg/apache/harmony/nio/internal/LockManager;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/nio/internal/LockManager;->removeLock(Ljava/nio/channels/FileLock;)V

    .line 178
    return-void
.end method

.method public size()J
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 389
    invoke-virtual {p0}, Lorg/apache/harmony/nio/internal/FileChannelImpl;->openCheck()V

    .line 390
    iget-object v4, p0, Lorg/apache/harmony/nio/internal/FileChannelImpl;->repositioningLock:Ljava/lang/Object;

    monitor-enter v4

    .line 391
    :try_start_6
    sget-object v5, Lorg/apache/harmony/nio/internal/FileChannelImpl;->fileSystem:Lorg/apache/harmony/luni/platform/IFileSystem;

    iget v6, p0, Lorg/apache/harmony/nio/internal/FileChannelImpl;->handle:I

    const-wide/16 v7, 0x0

    const/4 v9, 0x2

    invoke-interface {v5, v6, v7, v8, v9}, Lorg/apache/harmony/luni/platform/IFileSystem;->seek(IJI)J

    move-result-wide v0

    .line 393
    .local v0, currentPosition:J
    sget-object v5, Lorg/apache/harmony/nio/internal/FileChannelImpl;->fileSystem:Lorg/apache/harmony/luni/platform/IFileSystem;

    iget v6, p0, Lorg/apache/harmony/nio/internal/FileChannelImpl;->handle:I

    const-wide/16 v7, 0x0

    const/4 v9, 0x4

    invoke-interface {v5, v6, v7, v8, v9}, Lorg/apache/harmony/luni/platform/IFileSystem;->seek(IJI)J

    move-result-wide v2

    .line 395
    .local v2, endOfFilePosition:J
    sget-object v5, Lorg/apache/harmony/nio/internal/FileChannelImpl;->fileSystem:Lorg/apache/harmony/luni/platform/IFileSystem;

    iget v6, p0, Lorg/apache/harmony/nio/internal/FileChannelImpl;->handle:I

    const/4 v7, 0x1

    invoke-interface {v5, v6, v0, v1, v7}, Lorg/apache/harmony/luni/platform/IFileSystem;->seek(IJI)J

    .line 396
    monitor-exit v4

    return-wide v2

    .line 397
    .end local v0           #currentPosition:J
    .end local v2           #endOfFilePosition:J
    :catchall_26
    move-exception v5

    monitor-exit v4
    :try_end_28
    .catchall {:try_start_6 .. :try_end_28} :catchall_26

    throw v5
.end method

.method public transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J
    .registers 16
    .parameter "src"
    .parameter "position"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 402
    invoke-virtual {p0}, Lorg/apache/harmony/nio/internal/FileChannelImpl;->openCheck()V

    .line 403
    invoke-interface {p1}, Ljava/nio/channels/ReadableByteChannel;->isOpen()Z

    move-result v2

    if-nez v2, :cond_f

    .line 404
    new-instance v2, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v2}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v2

    .line 406
    :cond_f
    const-wide/16 v5, 0x0

    cmp-long v2, p2, v5

    if-ltz v2, :cond_29

    const-wide/16 v5, 0x0

    cmp-long v2, p4, v5

    if-ltz v2, :cond_29

    const-wide/32 v5, 0x7fffffff

    cmp-long v2, p2, v5

    if-gtz v2, :cond_29

    const-wide/32 v5, 0x7fffffff

    cmp-long v2, p4, v5

    if-lez v2, :cond_2f

    .line 408
    :cond_29
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 410
    :cond_2f
    invoke-virtual {p0}, Lorg/apache/harmony/nio/internal/FileChannelImpl;->size()J

    move-result-wide v5

    cmp-long v2, p2, v5

    if-lez v2, :cond_3a

    .line 411
    const-wide/16 v5, 0x0

    .line 435
    :cond_39
    :goto_39
    return-wide v5

    .line 414
    :cond_3a
    const/4 v7, 0x0

    .line 417
    .local v7, buffer:Ljava/nio/ByteBuffer;
    :try_start_3b
    instance-of v2, p1, Ljava/nio/channels/FileChannel;

    if-eqz v2, :cond_6a

    .line 418
    move-object v0, p1

    check-cast v0, Ljava/nio/channels/FileChannel;

    move-object v1, v0

    .line 419
    .local v1, fileSrc:Ljava/nio/channels/FileChannel;
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v8

    .line 420
    .local v8, size:J
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v3

    .line 421
    .local v3, filePosition:J
    sub-long v5, v8, v3

    invoke-static {p4, p5, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p4

    .line 422
    sget-object v2, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v7

    .line 423
    add-long v5, v3, p4

    invoke-virtual {v1, v5, v6}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 429
    .end local v1           #fileSrc:Ljava/nio/channels/FileChannel;
    .end local v3           #filePosition:J
    .end local v8           #size:J
    :goto_5d
    invoke-virtual {p0, v7, p2, p3}, Lorg/apache/harmony/nio/internal/FileChannelImpl;->write(Ljava/nio/ByteBuffer;J)I
    :try_end_60
    .catchall {:try_start_3b .. :try_end_60} :catchall_76

    move-result v2

    int-to-long v5, v2

    .line 432
    if-eqz v7, :cond_39

    .line 435
    check-cast v7, Lorg/apache/harmony/nio/internal/DirectBuffer;

    .end local v7           #buffer:Ljava/nio/ByteBuffer;
    invoke-interface {v7}, Lorg/apache/harmony/nio/internal/DirectBuffer;->free()V

    goto :goto_39

    .line 425
    .restart local v7       #buffer:Ljava/nio/ByteBuffer;
    :cond_6a
    long-to-int v2, p4

    :try_start_6b
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 426
    invoke-interface {p1, v7}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 427
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;
    :try_end_75
    .catchall {:try_start_6b .. :try_end_75} :catchall_76

    goto :goto_5d

    .line 432
    :catchall_76
    move-exception v2

    if-eqz v7, :cond_7e

    .line 435
    check-cast v7, Lorg/apache/harmony/nio/internal/DirectBuffer;

    .end local v7           #buffer:Ljava/nio/ByteBuffer;
    invoke-interface {v7}, Lorg/apache/harmony/nio/internal/DirectBuffer;->free()V

    :cond_7e
    throw v2
.end method

.method public transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    .registers 14
    .parameter "position"
    .parameter "count"
    .parameter "target"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/32 v4, 0x7fffffff

    const-wide/16 v2, 0x0

    .line 443
    invoke-virtual {p0}, Lorg/apache/harmony/nio/internal/FileChannelImpl;->openCheck()V

    .line 444
    invoke-interface {p5}, Ljava/nio/channels/WritableByteChannel;->isOpen()Z

    move-result v0

    if-nez v0, :cond_14

    .line 445
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0

    .line 447
    :cond_14
    instance-of v0, p5, Lorg/apache/harmony/nio/internal/ReadOnlyFileChannel;

    if-eqz v0, :cond_1e

    .line 448
    new-instance v0, Ljava/nio/channels/NonWritableChannelException;

    invoke-direct {v0}, Ljava/nio/channels/NonWritableChannelException;-><init>()V

    throw v0

    .line 450
    :cond_1e
    cmp-long v0, p1, v2

    if-ltz v0, :cond_2e

    cmp-long v0, p3, v2

    if-ltz v0, :cond_2e

    cmp-long v0, p1, v4

    if-gtz v0, :cond_2e

    cmp-long v0, p3, v4

    if-lez v0, :cond_34

    .line 452
    :cond_2e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 455
    :cond_34
    cmp-long v0, p3, v2

    if-eqz v0, :cond_40

    invoke-virtual {p0}, Lorg/apache/harmony/nio/internal/FileChannelImpl;->size()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_42

    :cond_40
    move-wide v0, v2

    .line 474
    .end local p5
    :cond_41
    :goto_41
    return-wide v0

    .line 458
    .restart local p5
    :cond_42
    const/4 v7, 0x0

    .line 459
    .local v7, buffer:Ljava/nio/ByteBuffer;
    invoke-virtual {p0}, Lorg/apache/harmony/nio/internal/FileChannelImpl;->size()J

    move-result-wide v0

    sub-long/2addr v0, p1

    invoke-static {p3, p4, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p3

    .line 460
    instance-of v0, p5, Lorg/apache/harmony/nio/internal/SocketChannelImpl;

    if-eqz v0, :cond_60

    .line 462
    iget v1, p0, Lorg/apache/harmony/nio/internal/FileChannelImpl;->handle:I

    check-cast p5, Lorg/apache/harmony/nio/internal/SocketChannelImpl;

    .end local p5
    invoke-virtual {p5}, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    move-object v0, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v0 .. v6}, Lorg/apache/harmony/nio/internal/FileChannelImpl;->kernelTransfer(ILjava/io/FileDescriptor;JJ)J

    move-result-wide v0

    goto :goto_41

    .line 467
    .restart local p5
    :cond_60
    :try_start_60
    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/harmony/nio/internal/FileChannelImpl;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v7

    .line 468
    invoke-interface {p5, v7}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_6c
    .catchall {:try_start_60 .. :try_end_6c} :catchall_76

    move-result v0

    int-to-long v0, v0

    .line 471
    if-eqz v7, :cond_41

    .line 474
    check-cast v7, Lorg/apache/harmony/nio/internal/DirectBuffer;

    .end local v7           #buffer:Ljava/nio/ByteBuffer;
    invoke-interface {v7}, Lorg/apache/harmony/nio/internal/DirectBuffer;->free()V

    goto :goto_41

    .line 471
    .restart local v7       #buffer:Ljava/nio/ByteBuffer;
    :catchall_76
    move-exception v0

    if-eqz v7, :cond_7e

    .line 474
    check-cast v7, Lorg/apache/harmony/nio/internal/DirectBuffer;

    .end local v7           #buffer:Ljava/nio/ByteBuffer;
    invoke-interface {v7}, Lorg/apache/harmony/nio/internal/DirectBuffer;->free()V

    :cond_7e
    throw v0
.end method

.method public truncate(J)Ljava/nio/channels/FileChannel;
    .registers 8
    .parameter "size"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 494
    invoke-virtual {p0}, Lorg/apache/harmony/nio/internal/FileChannelImpl;->openCheck()V

    .line 495
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gez v2, :cond_f

    .line 496
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 498
    :cond_f
    invoke-virtual {p0}, Lorg/apache/harmony/nio/internal/FileChannelImpl;->size()J

    move-result-wide v2

    cmp-long v2, p1, v2

    if-gez v2, :cond_2e

    .line 499
    iget-object v2, p0, Lorg/apache/harmony/nio/internal/FileChannelImpl;->repositioningLock:Ljava/lang/Object;

    monitor-enter v2

    .line 500
    :try_start_1a
    invoke-virtual {p0}, Lorg/apache/harmony/nio/internal/FileChannelImpl;->position()J

    move-result-wide v0

    .line 501
    .local v0, position:J
    sget-object v3, Lorg/apache/harmony/nio/internal/FileChannelImpl;->fileSystem:Lorg/apache/harmony/luni/platform/IFileSystem;

    iget v4, p0, Lorg/apache/harmony/nio/internal/FileChannelImpl;->handle:I

    invoke-interface {v3, v4, p1, p2}, Lorg/apache/harmony/luni/platform/IFileSystem;->truncate(IJ)V

    .line 508
    cmp-long v3, v0, p1

    if-lez v3, :cond_2f

    move-wide v3, p1

    :goto_2a
    invoke-virtual {p0, v3, v4}, Lorg/apache/harmony/nio/internal/FileChannelImpl;->position(J)Ljava/nio/channels/FileChannel;

    .line 509
    monitor-exit v2

    .line 511
    .end local v0           #position:J
    :cond_2e
    return-object p0

    .restart local v0       #position:J
    :cond_2f
    move-wide v3, v0

    .line 508
    goto :goto_2a

    .line 509
    .end local v0           #position:J
    :catchall_31
    move-exception v3

    monitor-exit v2
    :try_end_33
    .catchall {:try_start_1a .. :try_end_33} :catchall_31

    throw v3
.end method

.method public final tryLock(JJZ)Ljava/nio/channels/FileLock;
    .registers 13
    .parameter "position"
    .parameter "size"
    .parameter "shared"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 166
    invoke-virtual {p0}, Lorg/apache/harmony/nio/internal/FileChannelImpl;->openCheck()V

    .line 167
    const/4 v6, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lorg/apache/harmony/nio/internal/FileChannelImpl;->basicLock(JJZZ)Ljava/nio/channels/FileLock;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .registers 3
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 545
    invoke-virtual {p0}, Lorg/apache/harmony/nio/internal/FileChannelImpl;->openCheck()V

    .line 546
    invoke-direct {p0, p1}, Lorg/apache/harmony/nio/internal/FileChannelImpl;->writeImpl(Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method public write(Ljava/nio/ByteBuffer;J)I
    .registers 9
    .parameter "buffer"
    .parameter "position"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 521
    if-nez p1, :cond_8

    .line 522
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 524
    :cond_8
    const-wide/16 v3, 0x0

    cmp-long v3, p2, v3

    if-gez v3, :cond_14

    .line 525
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 527
    :cond_14
    invoke-virtual {p0}, Lorg/apache/harmony/nio/internal/FileChannelImpl;->openCheck()V

    .line 528
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-nez v3, :cond_1f

    .line 529
    const/4 v3, 0x0

    .line 541
    :goto_1e
    return v3

    .line 531
    :cond_1f
    const/4 v0, 0x0

    .line 532
    .local v0, bytesWritten:I
    iget-object v3, p0, Lorg/apache/harmony/nio/internal/FileChannelImpl;->repositioningLock:Ljava/lang/Object;

    monitor-enter v3

    .line 533
    :try_start_23
    invoke-virtual {p0}, Lorg/apache/harmony/nio/internal/FileChannelImpl;->position()J

    move-result-wide v1

    .line 534
    .local v1, preWritePosition:J
    invoke-virtual {p0, p2, p3}, Lorg/apache/harmony/nio/internal/FileChannelImpl;->position(J)Ljava/nio/channels/FileChannel;
    :try_end_2a
    .catchall {:try_start_23 .. :try_end_2a} :catchall_39

    .line 536
    :try_start_2a
    invoke-direct {p0, p1}, Lorg/apache/harmony/nio/internal/FileChannelImpl;->writeImpl(Ljava/nio/ByteBuffer;)I
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_34

    move-result v0

    .line 538
    :try_start_2e
    invoke-virtual {p0, v1, v2}, Lorg/apache/harmony/nio/internal/FileChannelImpl;->position(J)Ljava/nio/channels/FileChannel;

    .line 540
    monitor-exit v3

    move v3, v0

    .line 541
    goto :goto_1e

    .line 538
    :catchall_34
    move-exception v4

    invoke-virtual {p0, v1, v2}, Lorg/apache/harmony/nio/internal/FileChannelImpl;->position(J)Ljava/nio/channels/FileChannel;

    throw v4

    .line 540
    .end local v1           #preWritePosition:J
    :catchall_39
    move-exception v4

    monitor-exit v3
    :try_end_3b
    .catchall {:try_start_2e .. :try_end_3b} :catchall_39

    throw v4
.end method

.method public write([Ljava/nio/ByteBuffer;II)J
    .registers 23
    .parameter "buffers"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 584
    if-ltz p2, :cond_c

    if-ltz p3, :cond_c

    add-int v2, p2, p3

    move-object/from16 v0, p1

    array-length v0, v0

    move v3, v0

    if-le v2, v3, :cond_12

    .line 585
    :cond_c
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 587
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lorg/apache/harmony/nio/internal/FileChannelImpl;->openCheck()V

    .line 588
    const/4 v15, 0x0

    .line 589
    .local v15, count:I
    move/from16 v17, p2

    .local v17, i:I
    :goto_18
    add-int v2, p2, p3

    move/from16 v0, v17

    move v1, v2

    if-ge v0, v1, :cond_29

    .line 590
    aget-object v2, p1, v17

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    add-int/2addr v15, v2

    .line 589
    add-int/lit8 v17, v17, 0x1

    goto :goto_18

    .line 592
    :cond_29
    if-nez v15, :cond_2e

    .line 593
    const-wide/16 v2, 0x0

    .line 654
    :goto_2d
    return-wide v2

    .line 595
    :cond_2e
    move/from16 v0, p3

    new-array v0, v0, [I

    move-object v4, v0

    .line 596
    .local v4, handles:[I
    move/from16 v0, p3

    new-array v0, v0, [I

    move-object v5, v0

    .line 597
    .local v5, offsets:[I
    move/from16 v0, p3

    new-array v0, v0, [I

    move-object v6, v0

    .line 600
    .local v6, lengths:[I
    move/from16 v0, p3

    new-array v0, v0, [Lorg/apache/harmony/nio/internal/DirectBuffer;

    move-object v8, v0

    .line 602
    .local v8, allocatedBufs:[Lorg/apache/harmony/nio/internal/DirectBuffer;
    const/16 v17, 0x0

    :goto_44
    move/from16 v0, v17

    move/from16 v1, p3

    if-ge v0, v1, :cond_8f

    .line 603
    add-int v2, v17, p2

    aget-object v9, p1, v2

    .line 604
    .local v9, buffer:Ljava/nio/ByteBuffer;
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v2

    if-nez v2, :cond_85

    .line 605
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v16

    .line 607
    .local v16, directBuffer:Ljava/nio/ByteBuffer;
    move-object/from16 v0, v16

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 608
    invoke-virtual/range {v16 .. v16}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 609
    move-object/from16 v9, v16

    .line 610
    check-cast v16, Lorg/apache/harmony/nio/internal/DirectBuffer;

    .end local v16           #directBuffer:Ljava/nio/ByteBuffer;
    aput-object v16, v8, v17

    .line 611
    const/4 v2, 0x0

    aput v2, v5, v17

    .line 616
    :goto_6e
    move-object v0, v9

    check-cast v0, Lorg/apache/harmony/nio/internal/DirectBuffer;

    move-object v10, v0

    invoke-interface {v10}, Lorg/apache/harmony/nio/internal/DirectBuffer;->getEffectiveAddress()Lorg/apache/harmony/luni/platform/PlatformAddress;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/harmony/luni/platform/PlatformAddress;->toInt()I

    move-result v2

    aput v2, v4, v17

    .line 617
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    aput v2, v6, v17

    .line 602
    add-int/lit8 v17, v17, 0x1

    goto :goto_44

    .line 613
    :cond_85
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    aput v2, v5, v17

    .line 614
    const/4 v2, 0x0

    aput-object v2, v8, v17

    goto :goto_6e

    .line 621
    .end local v9           #buffer:Ljava/nio/ByteBuffer;
    :cond_8f
    const-wide/16 v12, 0x0

    .line 622
    .local v12, bytesWritten:J
    const/4 v14, 0x0

    .line 623
    .local v14, completed:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/nio/internal/FileChannelImpl;->repositioningLock:Ljava/lang/Object;

    move-object v9, v0

    monitor-enter v9

    .line 625
    :try_start_98
    invoke-virtual/range {p0 .. p0}, Lorg/apache/harmony/nio/internal/FileChannelImpl;->begin()V

    .line 626
    sget-object v2, Lorg/apache/harmony/nio/internal/FileChannelImpl;->fileSystem:Lorg/apache/harmony/luni/platform/IFileSystem;

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/harmony/nio/internal/FileChannelImpl;->handle:I

    move v3, v0

    move/from16 v7, p3

    invoke-interface/range {v2 .. v7}, Lorg/apache/harmony/luni/platform/IFileSystem;->writev(I[I[I[II)J
    :try_end_a7
    .catchall {:try_start_98 .. :try_end_a7} :catchall_c3

    move-result-wide v12

    .line 628
    const/4 v14, 0x1

    .line 630
    :try_start_a9
    move-object/from16 v0, p0

    move v1, v14

    invoke-virtual {v0, v1}, Lorg/apache/harmony/nio/internal/FileChannelImpl;->end(Z)V

    .line 633
    const/16 v17, 0x0

    :goto_b1
    move/from16 v0, v17

    move/from16 v1, p3

    if-ge v0, v1, :cond_e2

    .line 634
    aget-object v2, v8, v17

    if-eqz v2, :cond_c0

    .line 635
    aget-object v2, v8, v17

    invoke-interface {v2}, Lorg/apache/harmony/nio/internal/DirectBuffer;->free()V

    .line 633
    :cond_c0
    add-int/lit8 v17, v17, 0x1

    goto :goto_b1

    .line 630
    :catchall_c3
    move-exception v2

    move-object/from16 v0, p0

    move v1, v14

    invoke-virtual {v0, v1}, Lorg/apache/harmony/nio/internal/FileChannelImpl;->end(Z)V

    .line 633
    const/16 v17, 0x0

    :goto_cc
    move/from16 v0, v17

    move/from16 v1, p3

    if-ge v0, v1, :cond_de

    .line 634
    aget-object v3, v8, v17

    if-eqz v3, :cond_db

    .line 635
    aget-object v3, v8, v17

    invoke-interface {v3}, Lorg/apache/harmony/nio/internal/DirectBuffer;->free()V

    .line 633
    :cond_db
    add-int/lit8 v17, v17, 0x1

    goto :goto_cc

    :cond_de
    throw v2

    .line 640
    :catchall_df
    move-exception v2

    monitor-exit v9
    :try_end_e1
    .catchall {:try_start_a9 .. :try_end_e1} :catchall_df

    throw v2

    :cond_e2
    :try_start_e2
    monitor-exit v9
    :try_end_e3
    .catchall {:try_start_e2 .. :try_end_e3} :catchall_df

    .line 642
    move-wide v10, v12

    .line 643
    .local v10, bytesRemaining:J
    move/from16 v17, p2

    :goto_e6
    add-int v2, p3, p2

    move/from16 v0, v17

    move v1, v2

    if-ge v0, v1, :cond_122

    .line 644
    aget-object v2, p1, v17

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, v10, v2

    if-lez v2, :cond_111

    .line 645
    aget-object v2, p1, v17

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v18

    .line 646
    .local v18, pos:I
    aget-object v2, p1, v17

    move-object v0, v2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 647
    aget-object v2, p1, v17

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    int-to-long v2, v2

    sub-long/2addr v10, v2

    .line 643
    add-int/lit8 v17, v17, 0x1

    goto :goto_e6

    .line 649
    .end local v18           #pos:I
    :cond_111
    aget-object v2, p1, v17

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    long-to-int v3, v10

    add-int v18, v2, v3

    .line 650
    .restart local v18       #pos:I
    aget-object v2, p1, v17

    move-object v0, v2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .end local v18           #pos:I
    :cond_122
    move-wide v2, v12

    .line 654
    goto/16 :goto_2d
.end method
