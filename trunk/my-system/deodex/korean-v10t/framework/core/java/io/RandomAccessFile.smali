.class public Ljava/io/RandomAccessFile;
.super Ljava/lang/Object;
.source "RandomAccessFile.java"

# interfaces
.implements Ljava/io/DataInput;
.implements Ljava/io/DataOutput;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/io/RandomAccessFile$1;,
        Ljava/io/RandomAccessFile$RepositionLock;
    }
.end annotation


# instance fields
.field private channel:Ljava/nio/channels/FileChannel;

.field private fd:Ljava/io/FileDescriptor;

.field private fileSystem:Lorg/apache/harmony/luni/platform/IFileSystem;

.field private isReadOnly:Z

.field private options:I

.field private repositionLock:Ljava/lang/Object;

.field private syncMetadata:Z


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .registers 10
    .parameter "file"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v6, "rws"

    const-string v5, "rwd"

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-boolean v3, p0, Ljava/io/RandomAccessFile;->syncMetadata:Z

    .line 51
    invoke-static {}, Lorg/apache/harmony/luni/platform/Platform;->getFileSystem()Lorg/apache/harmony/luni/platform/IFileSystem;

    move-result-object v1

    iput-object v1, p0, Ljava/io/RandomAccessFile;->fileSystem:Lorg/apache/harmony/luni/platform/IFileSystem;

    .line 62
    new-instance v1, Ljava/io/RandomAccessFile$RepositionLock;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/io/RandomAccessFile$RepositionLock;-><init>(Ljava/io/RandomAccessFile$1;)V

    iput-object v1, p0, Ljava/io/RandomAccessFile;->repositionLock:Ljava/lang/Object;

    .line 116
    iput v3, p0, Ljava/io/RandomAccessFile;->options:I

    .line 118
    new-instance v1, Ljava/io/FileDescriptor;

    invoke-direct {v1}, Ljava/io/FileDescriptor;-><init>()V

    iput-object v1, p0, Ljava/io/RandomAccessFile;->fd:Ljava/io/FileDescriptor;

    .line 120
    const-string v1, "r"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_64

    .line 121
    iput-boolean v4, p0, Ljava/io/RandomAccessFile;->isReadOnly:Z

    .line 122
    iget-object v1, p0, Ljava/io/RandomAccessFile;->fd:Ljava/io/FileDescriptor;

    iput-boolean v4, v1, Ljava/io/FileDescriptor;->readOnly:Z

    .line 123
    iput v3, p0, Ljava/io/RandomAccessFile;->options:I

    .line 139
    :cond_32
    :goto_32
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 140
    .local v0, security:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_4a

    .line 141
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkRead(Ljava/lang/String;)V

    .line 142
    iget-boolean v1, p0, Ljava/io/RandomAccessFile;->isReadOnly:Z

    if-nez v1, :cond_4a

    .line 143
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkWrite(Ljava/lang/String;)V

    .line 147
    :cond_4a
    iget-object v1, p0, Ljava/io/RandomAccessFile;->fd:Ljava/io/FileDescriptor;

    iget-object v2, p0, Ljava/io/RandomAccessFile;->fileSystem:Lorg/apache/harmony/luni/platform/IFileSystem;

    invoke-virtual {p1, v4}, Ljava/io/File;->properPath(Z)[B

    move-result-object v3

    iget v4, p0, Ljava/io/RandomAccessFile;->options:I

    invoke-interface {v2, v3, v4}, Lorg/apache/harmony/luni/platform/IFileSystem;->open([BI)I

    move-result v2

    iput v2, v1, Ljava/io/FileDescriptor;->descriptor:I

    .line 150
    iget-boolean v1, p0, Ljava/io/RandomAccessFile;->syncMetadata:Z

    if-eqz v1, :cond_63

    .line 152
    :try_start_5e
    iget-object v1, p0, Ljava/io/RandomAccessFile;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->sync()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_63} :catch_a6

    .line 157
    :cond_63
    :goto_63
    return-void

    .line 124
    .end local v0           #security:Ljava/lang/SecurityManager;
    :cond_64
    const-string v1, "rw"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7c

    const-string v1, "rws"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7c

    const-string v1, "rwd"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9a

    .line 125
    :cond_7c
    iput-boolean v3, p0, Ljava/io/RandomAccessFile;->isReadOnly:Z

    .line 126
    const/16 v1, 0x10

    iput v1, p0, Ljava/io/RandomAccessFile;->options:I

    .line 128
    const-string v1, "rws"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8d

    .line 130
    iput-boolean v4, p0, Ljava/io/RandomAccessFile;->syncMetadata:Z

    goto :goto_32

    .line 131
    :cond_8d
    const-string v1, "rwd"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 133
    const/16 v1, 0x20

    iput v1, p0, Ljava/io/RandomAccessFile;->options:I

    goto :goto_32

    .line 136
    :cond_9a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "K0081"

    invoke-static {v2}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 153
    .restart local v0       #security:Ljava/lang/SecurityManager;
    :catch_a6
    move-exception v1

    goto :goto_63
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "fileName"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 186
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 187
    return-void
.end method

.method private declared-synchronized openCheck()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 273
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljava/io/RandomAccessFile;->fd:Ljava/io/FileDescriptor;

    iget v0, v0, Ljava/io/FileDescriptor;->descriptor:I

    if-gez v0, :cond_10

    .line 274
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    .line 273
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 276
    :cond_10
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 198
    monitor-enter p0

    .line 199
    :try_start_1
    iget-object v0, p0, Ljava/io/RandomAccessFile;->channel:Ljava/nio/channels/FileChannel;

    if-eqz v0, :cond_15

    iget-object v0, p0, Ljava/io/RandomAccessFile;->channel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 200
    iget-object v0, p0, Ljava/io/RandomAccessFile;->channel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 201
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/io/RandomAccessFile;->channel:Ljava/nio/channels/FileChannel;

    .line 203
    :cond_15
    iget-object v0, p0, Ljava/io/RandomAccessFile;->fd:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Ljava/io/RandomAccessFile;->fd:Ljava/io/FileDescriptor;

    iget v0, v0, Ljava/io/FileDescriptor;->descriptor:I

    if-ltz v0, :cond_2d

    .line 204
    iget-object v0, p0, Ljava/io/RandomAccessFile;->fileSystem:Lorg/apache/harmony/luni/platform/IFileSystem;

    iget-object v1, p0, Ljava/io/RandomAccessFile;->fd:Ljava/io/FileDescriptor;

    iget v1, v1, Ljava/io/FileDescriptor;->descriptor:I

    invoke-interface {v0, v1}, Lorg/apache/harmony/luni/platform/IFileSystem;->close(I)V

    .line 205
    iget-object v0, p0, Ljava/io/RandomAccessFile;->fd:Ljava/io/FileDescriptor;

    const/4 v1, -0x1

    iput v1, v0, Ljava/io/FileDescriptor;->descriptor:I

    .line 207
    :cond_2d
    monitor-exit p0

    .line 209
    return-void

    .line 207
    :catchall_2f
    move-exception v0

    monitor-exit p0
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_2f

    throw v0
.end method

.method public final getChannel()Ljava/nio/channels/FileChannel;
    .registers 3

    .prologue
    .line 225
    monitor-enter p0

    .line 226
    :try_start_1
    iget-object v0, p0, Ljava/io/RandomAccessFile;->channel:Ljava/nio/channels/FileChannel;

    if-nez v0, :cond_11

    .line 227
    iget-object v0, p0, Ljava/io/RandomAccessFile;->fd:Ljava/io/FileDescriptor;

    iget v0, v0, Ljava/io/FileDescriptor;->descriptor:I

    iget v1, p0, Ljava/io/RandomAccessFile;->options:I

    invoke-static {p0, v0, v1}, Lorg/apache/harmony/nio/FileChannelFactory;->getFileChannel(Ljava/lang/Object;II)Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Ljava/io/RandomAccessFile;->channel:Ljava/nio/channels/FileChannel;

    .line 230
    :cond_11
    iget-object v0, p0, Ljava/io/RandomAccessFile;->channel:Ljava/nio/channels/FileChannel;

    monitor-exit p0

    return-object v0

    .line 231
    :catchall_15
    move-exception v0

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_15

    throw v0
.end method

.method public final getFD()Ljava/io/FileDescriptor;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 246
    iget-object v0, p0, Ljava/io/RandomAccessFile;->fd:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method public getFilePointer()J
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 261
    invoke-direct {p0}, Ljava/io/RandomAccessFile;->openCheck()V

    .line 262
    iget-object v0, p0, Ljava/io/RandomAccessFile;->fileSystem:Lorg/apache/harmony/luni/platform/IFileSystem;

    iget-object v1, p0, Ljava/io/RandomAccessFile;->fd:Ljava/io/FileDescriptor;

    iget v1, v1, Ljava/io/FileDescriptor;->descriptor:I

    const-wide/16 v2, 0x0

    const/4 v4, 0x2

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/apache/harmony/luni/platform/IFileSystem;->seek(IJI)J

    move-result-wide v0

    return-wide v0
.end method

.method public length()J
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 287
    invoke-direct {p0}, Ljava/io/RandomAccessFile;->openCheck()V

    .line 288
    iget-object v4, p0, Ljava/io/RandomAccessFile;->repositionLock:Ljava/lang/Object;

    monitor-enter v4

    .line 289
    :try_start_6
    iget-object v5, p0, Ljava/io/RandomAccessFile;->fileSystem:Lorg/apache/harmony/luni/platform/IFileSystem;

    iget-object v6, p0, Ljava/io/RandomAccessFile;->fd:Ljava/io/FileDescriptor;

    iget v6, v6, Ljava/io/FileDescriptor;->descriptor:I

    const-wide/16 v7, 0x0

    const/4 v9, 0x2

    invoke-interface {v5, v6, v7, v8, v9}, Lorg/apache/harmony/luni/platform/IFileSystem;->seek(IJI)J

    move-result-wide v0

    .line 291
    .local v0, currentPosition:J
    iget-object v5, p0, Ljava/io/RandomAccessFile;->fileSystem:Lorg/apache/harmony/luni/platform/IFileSystem;

    iget-object v6, p0, Ljava/io/RandomAccessFile;->fd:Ljava/io/FileDescriptor;

    iget v6, v6, Ljava/io/FileDescriptor;->descriptor:I

    const-wide/16 v7, 0x0

    const/4 v9, 0x4

    invoke-interface {v5, v6, v7, v8, v9}, Lorg/apache/harmony/luni/platform/IFileSystem;->seek(IJI)J

    move-result-wide v2

    .line 293
    .local v2, endOfFilePosition:J
    iget-object v5, p0, Ljava/io/RandomAccessFile;->fileSystem:Lorg/apache/harmony/luni/platform/IFileSystem;

    iget-object v6, p0, Ljava/io/RandomAccessFile;->fd:Ljava/io/FileDescriptor;

    iget v6, v6, Ljava/io/FileDescriptor;->descriptor:I

    const/4 v7, 0x1

    invoke-interface {v5, v6, v0, v1, v7}, Lorg/apache/harmony/luni/platform/IFileSystem;->seek(IJI)J

    .line 295
    monitor-exit v4

    return-wide v2

    .line 296
    .end local v0           #currentPosition:J
    .end local v2           #endOfFilePosition:J
    :catchall_2c
    move-exception v5

    monitor-exit v4
    :try_end_2e
    .catchall {:try_start_6 .. :try_end_2e} :catchall_2c

    throw v5
.end method

.method public read()I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 311
    invoke-direct {p0}, Ljava/io/RandomAccessFile;->openCheck()V

    .line 312
    new-array v0, v3, [B

    .line 313
    .local v0, bytes:[B
    iget-object v3, p0, Ljava/io/RandomAccessFile;->repositionLock:Ljava/lang/Object;

    monitor-enter v3

    .line 314
    :try_start_9
    iget-object v4, p0, Ljava/io/RandomAccessFile;->fileSystem:Lorg/apache/harmony/luni/platform/IFileSystem;

    iget-object v5, p0, Ljava/io/RandomAccessFile;->fd:Ljava/io/FileDescriptor;

    iget v5, v5, Ljava/io/FileDescriptor;->descriptor:I

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-interface {v4, v5, v0, v6, v7}, Lorg/apache/harmony/luni/platform/IFileSystem;->read(I[BII)J

    move-result-wide v1

    .line 315
    .local v1, readed:J
    const-wide/16 v4, -0x1

    cmp-long v4, v1, v4

    if-nez v4, :cond_1e

    const/4 v4, -0x1

    :goto_1c
    monitor-exit v3

    return v4

    :cond_1e
    const/4 v4, 0x0

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    goto :goto_1c

    .line 316
    .end local v1           #readed:J
    :catchall_24
    move-exception v4

    monitor-exit v3
    :try_end_26
    .catchall {:try_start_9 .. :try_end_26} :catchall_24

    throw v4
.end method

.method public read([B)I
    .registers 4
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 334
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .registers 7
    .parameter "buffer"
    .parameter "offset"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 366
    if-nez p1, :cond_e

    .line 367
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "K0047"

    invoke-static {v1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 369
    :cond_e
    or-int v0, p2, p3

    if-ltz v0, :cond_16

    array-length v0, p1

    sub-int/2addr v0, p2

    if-le p3, v0, :cond_22

    .line 370
    :cond_16
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "K002f"

    invoke-static {v1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 373
    :cond_22
    if-nez p3, :cond_26

    .line 374
    const/4 v0, 0x0

    .line 378
    :goto_25
    return v0

    .line 376
    :cond_26
    invoke-direct {p0}, Ljava/io/RandomAccessFile;->openCheck()V

    .line 377
    iget-object v0, p0, Ljava/io/RandomAccessFile;->repositionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 378
    :try_start_2c
    iget-object v1, p0, Ljava/io/RandomAccessFile;->fileSystem:Lorg/apache/harmony/luni/platform/IFileSystem;

    iget-object v2, p0, Ljava/io/RandomAccessFile;->fd:Ljava/io/FileDescriptor;

    iget v2, v2, Ljava/io/FileDescriptor;->descriptor:I

    invoke-interface {v1, v2, p1, p2, p3}, Lorg/apache/harmony/luni/platform/IFileSystem;->read(I[BII)J

    move-result-wide v1

    long-to-int v1, v1

    monitor-exit v0

    move v0, v1

    goto :goto_25

    .line 379
    :catchall_3a
    move-exception v1

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_2c .. :try_end_3c} :catchall_3a

    throw v1
.end method

.method public final readBoolean()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 396
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    .line 397
    .local v0, temp:I
    if-gez v0, :cond_c

    .line 398
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 400
    :cond_c
    if-eqz v0, :cond_10

    const/4 v1, 0x1

    :goto_f
    return v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public final readByte()B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 417
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    .line 418
    .local v0, temp:I
    if-gez v0, :cond_c

    .line 419
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 421
    :cond_c
    int-to-byte v1, v0

    return v1
.end method

.method public final readChar()C
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 438
    const/4 v1, 0x2

    new-array v0, v1, [B

    .line 439
    .local v0, buffer:[B
    array-length v1, v0

    invoke-virtual {p0, v0, v3, v1}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    array-length v2, v0

    if-eq v1, v2, :cond_12

    .line 440
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 442
    :cond_12
    aget-byte v1, v0, v3

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    const/4 v2, 0x1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v1, v2

    int-to-char v1, v1

    return v1
.end method

.method public final readDouble()D
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 459
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final readFloat()F
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 476
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public final readFully([B)V
    .registers 4
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 495
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 496
    return-void
.end method

.method public final readFully([BII)V
    .registers 7
    .parameter "buffer"
    .parameter "offset"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 523
    if-nez p1, :cond_e

    .line 524
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "K0047"

    invoke-static {v2}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 532
    :cond_e
    or-int v1, p2, p3

    if-ltz v1, :cond_16

    array-length v1, p1

    sub-int/2addr v1, p2

    if-le p3, v1, :cond_24

    .line 533
    :cond_16
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    const-string v2, "K002f"

    invoke-static {v2}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 541
    .local v0, result:I
    :cond_22
    add-int/2addr p2, v0

    .line 542
    sub-int/2addr p3, v0

    .line 536
    .end local v0           #result:I
    :cond_24
    if-lez p3, :cond_32

    .line 537
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v0

    .line 538
    .restart local v0       #result:I
    if-gez v0, :cond_22

    .line 539
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 544
    .end local v0           #result:I
    :cond_32
    return-void
.end method

.method public final readInt()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 560
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 561
    .local v0, buffer:[B
    array-length v1, v0

    invoke-virtual {p0, v0, v3, v1}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    array-length v2, v0

    if-eq v1, v2, :cond_12

    .line 562
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 564
    :cond_12
    aget-byte v1, v0, v3

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    const/4 v2, 0x1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    add-int/2addr v1, v2

    const/4 v2, 0x2

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    const/4 v2, 0x3

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v1, v2

    return v1
.end method

.method public final readLine()Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 585
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v5, 0x50

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 586
    .local v1, line:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 587
    .local v0, foundTerminator:Z
    const-wide/16 v3, 0x0

    .line 589
    .local v3, unreadPosition:J
    :goto_a
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v2

    .line 590
    .local v2, nextByte:I
    sparse-switch v2, :sswitch_data_42

    .line 605
    if-eqz v0, :cond_3d

    .line 606
    invoke-virtual {p0, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 607
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_1a
    return-object v5

    .line 592
    :sswitch_1b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-eqz v5, :cond_26

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1a

    :cond_26
    const/4 v5, 0x0

    goto :goto_1a

    .line 594
    :sswitch_28
    if-eqz v0, :cond_32

    .line 595
    invoke-virtual {p0, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 596
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1a

    .line 598
    :cond_32
    const/4 v0, 0x1

    .line 600
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v3

    .line 601
    goto :goto_a

    .line 603
    :sswitch_38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1a

    .line 609
    :cond_3d
    int-to-char v5, v2

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_a

    .line 590
    :sswitch_data_42
    .sparse-switch
        -0x1 -> :sswitch_1b
        0xa -> :sswitch_38
        0xd -> :sswitch_28
    .end sparse-switch
.end method

.method public final readLong()J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 628
    const/16 v1, 0x8

    new-array v0, v1, [B

    .line 629
    .local v0, buffer:[B
    array-length v1, v0

    invoke-virtual {p0, v0, v3, v1}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    array-length v2, v0

    if-eq v1, v2, :cond_13

    .line 630
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 632
    :cond_13
    aget-byte v1, v0, v3

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    const/4 v2, 0x1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    add-int/2addr v1, v2

    const/4 v2, 0x2

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    const/4 v2, 0x3

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v1, v2

    int-to-long v1, v1

    const/16 v3, 0x20

    shl-long/2addr v1, v3

    const/4 v3, 0x4

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    const/16 v5, 0x18

    shl-long/2addr v3, v5

    add-long/2addr v1, v3

    const/4 v3, 0x5

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    int-to-long v3, v3

    add-long/2addr v1, v3

    const/4 v3, 0x6

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    int-to-long v3, v3

    add-long/2addr v1, v3

    const/4 v3, 0x7

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    add-long/2addr v1, v3

    return-wide v1
.end method

.method public final readShort()S
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 654
    const/4 v1, 0x2

    new-array v0, v1, [B

    .line 655
    .local v0, buffer:[B
    array-length v1, v0

    invoke-virtual {p0, v0, v3, v1}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    array-length v2, v0

    if-eq v1, v2, :cond_12

    .line 656
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 658
    :cond_12
    aget-byte v1, v0, v3

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    const/4 v2, 0x1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v1, v2

    int-to-short v1, v1

    return v1
.end method

.method public final readUTF()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 722
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readUnsignedShort()I

    move-result v1

    .line 723
    .local v1, utfSize:I
    if-nez v1, :cond_a

    .line 724
    const-string v2, ""

    .line 730
    :goto_9
    return-object v2

    .line 726
    :cond_a
    new-array v0, v1, [B

    .line 727
    .local v0, buf:[B
    array-length v2, v0

    invoke-virtual {p0, v0, v4, v2}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v2

    array-length v3, v0

    if-eq v2, v3, :cond_1a

    .line 728
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 730
    :cond_1a
    invoke-static {v0, v4, v1}, Lorg/apache/harmony/luni/util/Util;->convertFromUTF8([BII)Ljava/lang/String;

    move-result-object v2

    goto :goto_9
.end method

.method public final readUnsignedByte()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 675
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    .line 676
    .local v0, temp:I
    if-gez v0, :cond_c

    .line 677
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 679
    :cond_c
    return v0
.end method

.method public final readUnsignedShort()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 696
    const/4 v1, 0x2

    new-array v0, v1, [B

    .line 697
    .local v0, buffer:[B
    array-length v1, v0

    invoke-virtual {p0, v0, v3, v1}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    array-length v2, v0

    if-eq v1, v2, :cond_12

    .line 698
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 700
    :cond_12
    aget-byte v1, v0, v3

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    const/4 v2, 0x1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v1, v2

    return v1
.end method

.method public seek(J)V
    .registers 7
    .parameter "pos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 748
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_12

    .line 750
    new-instance v0, Ljava/io/IOException;

    const-string v1, "K0347"

    invoke-static {v1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 752
    :cond_12
    invoke-direct {p0}, Ljava/io/RandomAccessFile;->openCheck()V

    .line 753
    iget-object v0, p0, Ljava/io/RandomAccessFile;->repositionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 754
    :try_start_18
    iget-object v1, p0, Ljava/io/RandomAccessFile;->fileSystem:Lorg/apache/harmony/luni/platform/IFileSystem;

    iget-object v2, p0, Ljava/io/RandomAccessFile;->fd:Ljava/io/FileDescriptor;

    iget v2, v2, Ljava/io/FileDescriptor;->descriptor:I

    const/4 v3, 0x1

    invoke-interface {v1, v2, p1, p2, v3}, Lorg/apache/harmony/luni/platform/IFileSystem;->seek(IJI)J

    .line 755
    monitor-exit v0

    .line 756
    return-void

    .line 755
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_18 .. :try_end_26} :catchall_24

    throw v1
.end method

.method public setLength(J)V
    .registers 11
    .parameter "newLength"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 774
    invoke-direct {p0}, Ljava/io/RandomAccessFile;->openCheck()V

    .line 775
    cmp-long v2, p1, v2

    if-gez v2, :cond_f

    .line 776
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 778
    :cond_f
    iget-object v2, p0, Ljava/io/RandomAccessFile;->repositionLock:Ljava/lang/Object;

    monitor-enter v2

    .line 779
    :try_start_12
    iget-object v3, p0, Ljava/io/RandomAccessFile;->fileSystem:Lorg/apache/harmony/luni/platform/IFileSystem;

    iget-object v4, p0, Ljava/io/RandomAccessFile;->fd:Ljava/io/FileDescriptor;

    iget v4, v4, Ljava/io/FileDescriptor;->descriptor:I

    const-wide/16 v5, 0x0

    const/4 v7, 0x2

    invoke-interface {v3, v4, v5, v6, v7}, Lorg/apache/harmony/luni/platform/IFileSystem;->seek(IJI)J

    move-result-wide v0

    .line 781
    .local v0, position:J
    iget-object v3, p0, Ljava/io/RandomAccessFile;->fileSystem:Lorg/apache/harmony/luni/platform/IFileSystem;

    iget-object v4, p0, Ljava/io/RandomAccessFile;->fd:Ljava/io/FileDescriptor;

    iget v4, v4, Ljava/io/FileDescriptor;->descriptor:I

    invoke-interface {v3, v4, p1, p2}, Lorg/apache/harmony/luni/platform/IFileSystem;->truncate(IJ)V

    .line 782
    cmp-long v3, v0, p1

    if-lez v3, :cond_3b

    move-wide v3, p1

    :goto_2d
    invoke-virtual {p0, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 783
    monitor-exit v2
    :try_end_31
    .catchall {:try_start_12 .. :try_end_31} :catchall_3d

    .line 786
    iget-boolean v2, p0, Ljava/io/RandomAccessFile;->syncMetadata:Z

    if-eqz v2, :cond_3a

    .line 787
    iget-object v2, p0, Ljava/io/RandomAccessFile;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v2}, Ljava/io/FileDescriptor;->sync()V

    .line 789
    :cond_3a
    return-void

    :cond_3b
    move-wide v3, v0

    .line 782
    goto :goto_2d

    .line 783
    .end local v0           #position:J
    :catchall_3d
    move-exception v3

    :try_start_3e
    monitor-exit v2
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    throw v3
.end method

.method public skipBytes(I)I
    .registers 9
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 805
    if-lez p1, :cond_1c

    .line 806
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    .local v0, currentPos:J
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    .line 807
    .local v2, eof:J
    int-to-long v5, p1

    add-long/2addr v5, v0

    cmp-long v5, v5, v2

    if-lez v5, :cond_1a

    sub-long v5, v2, v0

    :goto_12
    long-to-int v4, v5

    .line 809
    .local v4, newCount:I
    int-to-long v5, v4

    add-long/2addr v5, v0

    invoke-virtual {p0, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    move v5, v4

    .line 812
    .end local v0           #currentPos:J
    .end local v2           #eof:J
    .end local v4           #newCount:I
    :goto_19
    return v5

    .line 807
    .restart local v0       #currentPos:J
    .restart local v2       #eof:J
    :cond_1a
    int-to-long v5, p1

    goto :goto_12

    .line 812
    .end local v0           #currentPos:J
    .end local v2           #eof:J
    :cond_1c
    const/4 v5, 0x0

    goto :goto_19
.end method

.method public write(I)V
    .registers 8
    .parameter "oneByte"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 895
    invoke-direct {p0}, Ljava/io/RandomAccessFile;->openCheck()V

    .line 896
    new-array v0, v1, [B

    .line 897
    .local v0, bytes:[B
    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    .line 898
    iget-object v1, p0, Ljava/io/RandomAccessFile;->repositionLock:Ljava/lang/Object;

    monitor-enter v1

    .line 899
    :try_start_f
    iget-object v2, p0, Ljava/io/RandomAccessFile;->fileSystem:Lorg/apache/harmony/luni/platform/IFileSystem;

    iget-object v3, p0, Ljava/io/RandomAccessFile;->fd:Ljava/io/FileDescriptor;

    iget v3, v3, Ljava/io/FileDescriptor;->descriptor:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-interface {v2, v3, v0, v4, v5}, Lorg/apache/harmony/luni/platform/IFileSystem;->write(I[BII)J

    .line 900
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_25

    .line 903
    iget-boolean v1, p0, Ljava/io/RandomAccessFile;->syncMetadata:Z

    if-eqz v1, :cond_24

    .line 904
    iget-object v1, p0, Ljava/io/RandomAccessFile;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->sync()V

    .line 906
    :cond_24
    return-void

    .line 900
    :catchall_25
    move-exception v2

    :try_start_26
    monitor-exit v1
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v2
.end method

.method public write([B)V
    .registers 4
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 830
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 831
    return-void
.end method

.method public write([BII)V
    .registers 7
    .parameter "buffer"
    .parameter "offset"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 860
    if-nez p1, :cond_e

    .line 861
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "K0047"

    invoke-static {v1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 863
    :cond_e
    or-int v0, p2, p3

    if-ltz v0, :cond_16

    array-length v0, p1

    sub-int/2addr v0, p2

    if-le p3, v0, :cond_22

    .line 864
    :cond_16
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "K002f"

    invoke-static {v1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 867
    :cond_22
    if-nez p3, :cond_25

    .line 881
    :cond_24
    :goto_24
    return-void

    .line 871
    :cond_25
    invoke-direct {p0}, Ljava/io/RandomAccessFile;->openCheck()V

    .line 873
    iget-object v0, p0, Ljava/io/RandomAccessFile;->repositionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 874
    :try_start_2b
    iget-object v1, p0, Ljava/io/RandomAccessFile;->fileSystem:Lorg/apache/harmony/luni/platform/IFileSystem;

    iget-object v2, p0, Ljava/io/RandomAccessFile;->fd:Ljava/io/FileDescriptor;

    iget v2, v2, Ljava/io/FileDescriptor;->descriptor:I

    invoke-interface {v1, v2, p1, p2, p3}, Lorg/apache/harmony/luni/platform/IFileSystem;->write(I[BII)J

    .line 875
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_2b .. :try_end_35} :catchall_3f

    .line 878
    iget-boolean v0, p0, Ljava/io/RandomAccessFile;->syncMetadata:Z

    if-eqz v0, :cond_24

    .line 879
    iget-object v0, p0, Ljava/io/RandomAccessFile;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V

    goto :goto_24

    .line 875
    :catchall_3f
    move-exception v1

    :try_start_40
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    throw v1
.end method

.method public final writeBoolean(Z)V
    .registers 3
    .parameter "val"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 919
    if-eqz p1, :cond_7

    const/4 v0, 0x1

    :goto_3
    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->write(I)V

    .line 920
    return-void

    .line 919
    :cond_7
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public final writeByte(I)V
    .registers 3
    .parameter "val"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 935
    and-int/lit16 v0, p1, 0xff

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->write(I)V

    .line 936
    return-void
.end method

.method public final writeBytes(Ljava/lang/String;)V
    .registers 5
    .parameter "str"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 953
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    new-array v0, v2, [B

    .line 954
    .local v0, bytes:[B
    const/4 v1, 0x0

    .local v1, index:I
    :goto_7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_19

    .line 955
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 954
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 957
    :cond_19
    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 958
    return-void
.end method

.method public final writeChar(I)V
    .registers 6
    .parameter "val"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 974
    const/4 v1, 0x2

    new-array v0, v1, [B

    .line 975
    .local v0, buffer:[B
    shr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    .line 976
    const/4 v1, 0x1

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 977
    array-length v1, v0

    invoke-virtual {p0, v0, v3, v1}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 978
    return-void
.end method

.method public final writeChars(Ljava/lang/String;)V
    .registers 7
    .parameter "str"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 993
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    new-array v1, v3, [B

    .line 994
    .local v1, newBytes:[B
    const/4 v0, 0x0

    .local v0, index:I
    :goto_9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_2f

    .line 995
    if-nez v0, :cond_2b

    move v2, v0

    .line 996
    .local v2, newIndex:I
    :goto_12
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    shr-int/lit8 v3, v3, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 997
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 994
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 995
    .end local v2           #newIndex:I
    :cond_2b
    mul-int/lit8 v3, v0, 0x2

    move v2, v3

    goto :goto_12

    .line 999
    :cond_2f
    invoke-virtual {p0, v1}, Ljava/io/RandomAccessFile;->write([B)V

    .line 1000
    return-void
.end method

.method public final writeDouble(D)V
    .registers 5
    .parameter "val"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1015
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/io/RandomAccessFile;->writeLong(J)V

    .line 1016
    return-void
.end method

.method public final writeFloat(F)V
    .registers 3
    .parameter "val"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1031
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 1032
    return-void
.end method

.method public final writeInt(I)V
    .registers 6
    .parameter "val"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1047
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 1048
    .local v0, buffer:[B
    shr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    .line 1049
    const/4 v1, 0x1

    shr-int/lit8 v2, p1, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1050
    const/4 v1, 0x2

    shr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1051
    const/4 v1, 0x3

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 1052
    array-length v1, v0

    invoke-virtual {p0, v0, v3, v1}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 1053
    return-void
.end method

.method public final writeLong(J)V
    .registers 10
    .parameter "val"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 1068
    new-array v0, v6, [B

    .line 1069
    .local v0, buffer:[B
    const/16 v2, 0x20

    shr-long v2, p1, v2

    long-to-int v1, v2

    .line 1070
    .local v1, t:I
    shr-int/lit8 v2, v1, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v5

    .line 1071
    const/4 v2, 0x1

    shr-int/lit8 v3, v1, 0x10

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 1072
    const/4 v2, 0x2

    shr-int/lit8 v3, v1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 1073
    const/4 v2, 0x3

    int-to-byte v3, v1

    aput-byte v3, v0, v2

    .line 1074
    const/4 v2, 0x4

    const/16 v3, 0x18

    shr-long v3, p1, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 1075
    const/4 v2, 0x5

    const/16 v3, 0x10

    shr-long v3, p1, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 1076
    const/4 v2, 0x6

    shr-long v3, p1, v6

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 1077
    const/4 v2, 0x7

    long-to-int v3, p1

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 1078
    array-length v2, v0

    invoke-virtual {p0, v0, v5, v2}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 1079
    return-void
.end method

.method public final writeShort(I)V
    .registers 2
    .parameter "val"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1094
    invoke-virtual {p0, p1}, Ljava/io/RandomAccessFile;->writeChar(I)V

    .line 1095
    return-void
.end method

.method public final writeUTF(Ljava/lang/String;)V
    .registers 12
    .parameter "str"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x7ff

    const/16 v8, 0x7f

    .line 1112
    const/4 v4, 0x0

    .local v4, utfCount:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 1113
    .local v2, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_a
    if-ge v1, v2, :cond_21

    .line 1114
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1115
    .local v0, charValue:I
    if-lez v0, :cond_19

    if-gt v0, v8, :cond_19

    .line 1116
    add-int/lit8 v4, v4, 0x1

    .line 1113
    :goto_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 1117
    :cond_19
    if-gt v0, v9, :cond_1e

    .line 1118
    add-int/lit8 v4, v4, 0x2

    goto :goto_16

    .line 1120
    :cond_1e
    add-int/lit8 v4, v4, 0x3

    goto :goto_16

    .line 1123
    .end local v0           #charValue:I
    :cond_21
    const v7, 0xffff

    if-le v4, v7, :cond_32

    .line 1124
    new-instance v7, Ljava/io/UTFDataFormatException;

    const-string v8, "K0068"

    invoke-static {v8}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1126
    :cond_32
    add-int/lit8 v7, v4, 0x2

    new-array v3, v7, [B

    .line 1127
    .local v3, utfBytes:[B
    const/4 v5, 0x2

    .line 1128
    .local v5, utfIndex:I
    const/4 v1, 0x0

    move v6, v5

    .end local v5           #utfIndex:I
    .local v6, utfIndex:I
    :goto_39
    if-ge v1, v2, :cond_84

    .line 1129
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1130
    .restart local v0       #charValue:I
    if-lez v0, :cond_4c

    if-gt v0, v8, :cond_4c

    .line 1131
    add-int/lit8 v5, v6, 0x1

    .end local v6           #utfIndex:I
    .restart local v5       #utfIndex:I
    int-to-byte v7, v0

    aput-byte v7, v3, v6

    .line 1128
    :goto_48
    add-int/lit8 v1, v1, 0x1

    move v6, v5

    .end local v5           #utfIndex:I
    .restart local v6       #utfIndex:I
    goto :goto_39

    .line 1132
    :cond_4c
    if-gt v0, v9, :cond_64

    .line 1133
    add-int/lit8 v5, v6, 0x1

    .end local v6           #utfIndex:I
    .restart local v5       #utfIndex:I
    shr-int/lit8 v7, v0, 0x6

    and-int/lit8 v7, v7, 0x1f

    or-int/lit16 v7, v7, 0xc0

    int-to-byte v7, v7

    aput-byte v7, v3, v6

    .line 1134
    add-int/lit8 v6, v5, 0x1

    .end local v5           #utfIndex:I
    .restart local v6       #utfIndex:I
    and-int/lit8 v7, v0, 0x3f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v3, v5

    move v5, v6

    .end local v6           #utfIndex:I
    .restart local v5       #utfIndex:I
    goto :goto_48

    .line 1136
    .end local v5           #utfIndex:I
    .restart local v6       #utfIndex:I
    :cond_64
    add-int/lit8 v5, v6, 0x1

    .end local v6           #utfIndex:I
    .restart local v5       #utfIndex:I
    shr-int/lit8 v7, v0, 0xc

    and-int/lit8 v7, v7, 0xf

    or-int/lit16 v7, v7, 0xe0

    int-to-byte v7, v7

    aput-byte v7, v3, v6

    .line 1137
    add-int/lit8 v6, v5, 0x1

    .end local v5           #utfIndex:I
    .restart local v6       #utfIndex:I
    shr-int/lit8 v7, v0, 0x6

    and-int/lit8 v7, v7, 0x3f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v3, v5

    .line 1138
    add-int/lit8 v5, v6, 0x1

    .end local v6           #utfIndex:I
    .restart local v5       #utfIndex:I
    and-int/lit8 v7, v0, 0x3f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v3, v6

    goto :goto_48

    .line 1141
    .end local v0           #charValue:I
    .end local v5           #utfIndex:I
    .restart local v6       #utfIndex:I
    :cond_84
    const/4 v7, 0x0

    shr-int/lit8 v8, v4, 0x8

    int-to-byte v8, v8

    aput-byte v8, v3, v7

    .line 1142
    const/4 v7, 0x1

    int-to-byte v8, v4

    aput-byte v8, v3, v7

    .line 1143
    invoke-virtual {p0, v3}, Ljava/io/RandomAccessFile;->write([B)V

    .line 1144
    return-void
.end method
