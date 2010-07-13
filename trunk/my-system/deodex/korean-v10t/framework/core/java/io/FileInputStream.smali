.class public Ljava/io/FileInputStream;
.super Ljava/io/InputStream;
.source "FileInputStream.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/io/FileInputStream$1;,
        Ljava/io/FileInputStream$RepositioningLock;
    }
.end annotation


# instance fields
.field private channel:Ljava/nio/channels/FileChannel;

.field fd:Ljava/io/FileDescriptor;

.field private fileSystem:Lorg/apache/harmony/luni/platform/IFileSystem;

.field innerFD:Z

.field private repositioningLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 9
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 72
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 52
    invoke-static {}, Lorg/apache/harmony/luni/platform/Platform;->getFileSystem()Lorg/apache/harmony/luni/platform/IFileSystem;

    move-result-object v2

    iput-object v2, p0, Ljava/io/FileInputStream;->fileSystem:Lorg/apache/harmony/luni/platform/IFileSystem;

    .line 57
    new-instance v2, Ljava/io/FileInputStream$RepositioningLock;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream$RepositioningLock;-><init>(Ljava/io/FileInputStream$1;)V

    iput-object v2, p0, Ljava/io/FileInputStream;->repositioningLock:Ljava/lang/Object;

    .line 73
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 74
    .local v1, security:Ljava/lang/SecurityManager;
    if-eqz v1, :cond_1e

    .line 75
    if-nez p1, :cond_3b

    move-object v0, v3

    .line 76
    .local v0, filePath:Ljava/lang/String;
    :goto_1b
    invoke-virtual {v1, v0}, Ljava/lang/SecurityManager;->checkRead(Ljava/lang/String;)V

    .line 78
    .end local v0           #filePath:Ljava/lang/String;
    :cond_1e
    new-instance v2, Ljava/io/FileDescriptor;

    invoke-direct {v2}, Ljava/io/FileDescriptor;-><init>()V

    iput-object v2, p0, Ljava/io/FileInputStream;->fd:Ljava/io/FileDescriptor;

    .line 79
    iget-object v2, p0, Ljava/io/FileInputStream;->fd:Ljava/io/FileDescriptor;

    iput-boolean v6, v2, Ljava/io/FileDescriptor;->readOnly:Z

    .line 80
    iget-object v2, p0, Ljava/io/FileInputStream;->fd:Ljava/io/FileDescriptor;

    iget-object v3, p0, Ljava/io/FileInputStream;->fileSystem:Lorg/apache/harmony/luni/platform/IFileSystem;

    invoke-virtual {p1, v6}, Ljava/io/File;->properPath(Z)[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lorg/apache/harmony/luni/platform/IFileSystem;->open([BI)I

    move-result v3

    iput v3, v2, Ljava/io/FileDescriptor;->descriptor:I

    .line 82
    iput-boolean v6, p0, Ljava/io/FileInputStream;->innerFD:Z

    .line 87
    return-void

    .line 75
    :cond_3b
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    goto :goto_1b
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;)V
    .registers 5
    .parameter "fd"

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 52
    invoke-static {}, Lorg/apache/harmony/luni/platform/Platform;->getFileSystem()Lorg/apache/harmony/luni/platform/IFileSystem;

    move-result-object v1

    iput-object v1, p0, Ljava/io/FileInputStream;->fileSystem:Lorg/apache/harmony/luni/platform/IFileSystem;

    .line 57
    new-instance v1, Ljava/io/FileInputStream$RepositioningLock;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/io/FileInputStream$RepositioningLock;-><init>(Ljava/io/FileInputStream$1;)V

    iput-object v1, p0, Ljava/io/FileInputStream;->repositioningLock:Ljava/lang/Object;

    .line 105
    if-nez p1, :cond_19

    .line 106
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 108
    :cond_19
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 109
    .local v0, security:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_22

    .line 110
    invoke-virtual {v0, p1}, Ljava/lang/SecurityManager;->checkRead(Ljava/io/FileDescriptor;)V

    .line 112
    :cond_22
    iput-object p1, p0, Ljava/io/FileInputStream;->fd:Ljava/io/FileDescriptor;

    .line 113
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljava/io/FileInputStream;->innerFD:Z

    .line 118
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "fileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 135
    if-nez p1, :cond_9

    const/4 v0, 0x0

    check-cast v0, Ljava/io/File;

    :goto_5
    invoke-direct {p0, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 136
    return-void

    .line 135
    :cond_9
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_5
.end method

.method private declared-synchronized openCheck()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 388
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljava/io/FileInputStream;->fd:Ljava/io/FileDescriptor;

    iget v0, v0, Ljava/io/FileDescriptor;->descriptor:I

    if-gez v0, :cond_10

    .line 389
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    .line 388
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 391
    :cond_10
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public available()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/io/FileInputStream;->openCheck()V

    .line 159
    iget-object v0, p0, Ljava/io/FileInputStream;->fileSystem:Lorg/apache/harmony/luni/platform/IFileSystem;

    iget-object v1, p0, Ljava/io/FileInputStream;->fd:Ljava/io/FileDescriptor;

    iget v1, v1, Ljava/io/FileDescriptor;->descriptor:I

    invoke-interface {v0, v1}, Lorg/apache/harmony/luni/platform/IFileSystem;->ioctlAvailable(I)I

    move-result v0

    return v0
.end method

.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 190
    monitor-enter p0

    .line 191
    :try_start_1
    iget-object v0, p0, Ljava/io/FileInputStream;->channel:Ljava/nio/channels/FileChannel;

    if-eqz v0, :cond_15

    iget-object v0, p0, Ljava/io/FileInputStream;->channel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 192
    iget-object v0, p0, Ljava/io/FileInputStream;->channel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 193
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/io/FileInputStream;->channel:Ljava/nio/channels/FileChannel;

    .line 195
    :cond_15
    iget-object v0, p0, Ljava/io/FileInputStream;->fd:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_31

    iget-object v0, p0, Ljava/io/FileInputStream;->fd:Ljava/io/FileDescriptor;

    iget v0, v0, Ljava/io/FileDescriptor;->descriptor:I

    if-ltz v0, :cond_31

    iget-boolean v0, p0, Ljava/io/FileInputStream;->innerFD:Z

    if-eqz v0, :cond_31

    .line 196
    iget-object v0, p0, Ljava/io/FileInputStream;->fileSystem:Lorg/apache/harmony/luni/platform/IFileSystem;

    iget-object v1, p0, Ljava/io/FileInputStream;->fd:Ljava/io/FileDescriptor;

    iget v1, v1, Ljava/io/FileDescriptor;->descriptor:I

    invoke-interface {v0, v1}, Lorg/apache/harmony/luni/platform/IFileSystem;->close(I)V

    .line 197
    iget-object v0, p0, Ljava/io/FileInputStream;->fd:Ljava/io/FileDescriptor;

    const/4 v1, -0x1

    iput v1, v0, Ljava/io/FileDescriptor;->descriptor:I

    .line 199
    :cond_31
    monitor-exit p0

    .line 201
    return-void

    .line 199
    :catchall_33
    move-exception v0

    monitor-exit p0
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_33

    throw v0
.end method

.method protected finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 213
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V

    .line 214
    return-void
.end method

.method public getChannel()Ljava/nio/channels/FileChannel;
    .registers 3

    .prologue
    .line 230
    monitor-enter p0

    .line 231
    :try_start_1
    iget-object v0, p0, Ljava/io/FileInputStream;->channel:Ljava/nio/channels/FileChannel;

    if-nez v0, :cond_10

    .line 232
    iget-object v0, p0, Ljava/io/FileInputStream;->fd:Ljava/io/FileDescriptor;

    iget v0, v0, Ljava/io/FileDescriptor;->descriptor:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/apache/harmony/nio/FileChannelFactory;->getFileChannel(Ljava/lang/Object;II)Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Ljava/io/FileInputStream;->channel:Ljava/nio/channels/FileChannel;

    .line 235
    :cond_10
    iget-object v0, p0, Ljava/io/FileInputStream;->channel:Ljava/nio/channels/FileChannel;

    monitor-exit p0

    return-object v0

    .line 236
    :catchall_14
    move-exception v0

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_14

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
    .line 251
    iget-object v0, p0, Ljava/io/FileInputStream;->fd:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method public read()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 266
    new-array v0, v4, [B

    .line 267
    .local v0, readed:[B
    invoke-virtual {p0, v0, v3, v4}, Ljava/io/FileInputStream;->read([BII)I

    move-result v1

    .line 268
    .local v1, result:I
    if-ne v1, v2, :cond_c

    :goto_b
    return v2

    :cond_c
    aget-byte v2, v0, v3

    and-int/lit16 v2, v2, 0xff

    goto :goto_b
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
    .line 285
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/io/FileInputStream;->read([BII)I

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
    .line 317
    if-nez p1, :cond_e

    .line 318
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "K0047"

    invoke-static {v1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 320
    :cond_e
    or-int v0, p3, p2

    if-ltz v0, :cond_16

    array-length v0, p1

    sub-int/2addr v0, p2

    if-le p3, v0, :cond_22

    .line 321
    :cond_16
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "K002f"

    invoke-static {v1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 324
    :cond_22
    if-nez p3, :cond_26

    .line 325
    const/4 v0, 0x0

    .line 333
    :goto_25
    return v0

    .line 327
    :cond_26
    invoke-direct {p0}, Ljava/io/FileInputStream;->openCheck()V

    .line 328
    iget-object v0, p0, Ljava/io/FileInputStream;->repositioningLock:Ljava/lang/Object;

    monitor-enter v0

    .line 330
    :try_start_2c
    iget-object v1, p0, Ljava/io/FileInputStream;->fd:Ljava/io/FileDescriptor;

    sget-object v2, Ljava/io/FileDescriptor;->in:Ljava/io/FileDescriptor;

    if-ne v1, v2, :cond_3c

    .line 331
    iget-object v1, p0, Ljava/io/FileInputStream;->fileSystem:Lorg/apache/harmony/luni/platform/IFileSystem;

    invoke-interface {v1, p1, p2, p3}, Lorg/apache/harmony/luni/platform/IFileSystem;->ttyRead([BII)J

    move-result-wide v1

    long-to-int v1, v1

    monitor-exit v0

    move v0, v1

    goto :goto_25

    .line 333
    :cond_3c
    iget-object v1, p0, Ljava/io/FileInputStream;->fileSystem:Lorg/apache/harmony/luni/platform/IFileSystem;

    iget-object v2, p0, Ljava/io/FileInputStream;->fd:Ljava/io/FileDescriptor;

    iget v2, v2, Ljava/io/FileDescriptor;->descriptor:I

    invoke-interface {v1, v2, p1, p2, p3}, Lorg/apache/harmony/luni/platform/IFileSystem;->read(I[BII)J

    move-result-wide v1

    long-to-int v1, v1

    monitor-exit v0

    move v0, v1

    goto :goto_25

    .line 334
    :catchall_4a
    move-exception v1

    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_2c .. :try_end_4c} :catchall_4a

    throw v1
.end method

.method public skip(J)J
    .registers 23
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 352
    invoke-direct/range {p0 .. p0}, Ljava/io/FileInputStream;->openCheck()V

    .line 354
    const-wide/16 v14, 0x0

    cmp-long v14, p1, v14

    if-nez v14, :cond_c

    .line 355
    const-wide/16 v14, 0x0

    .line 383
    :goto_b
    return-wide v14

    .line 357
    :cond_c
    const-wide/16 v14, 0x0

    cmp-long v14, p1, v14

    if-gez v14, :cond_1e

    .line 359
    new-instance v14, Ljava/io/IOException;

    const-string v15, "KA013"

    invoke-static {v15}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 363
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/FileInputStream;->fd:Ljava/io/FileDescriptor;

    move-object v14, v0

    sget-object v15, Ljava/io/FileDescriptor;->in:Ljava/io/FileDescriptor;

    if-ne v14, v15, :cond_5b

    .line 365
    const-wide/16 v12, 0x0

    .line 366
    .local v12, skipped:J
    const-wide/16 v14, 0x2000

    cmp-long v14, p1, v14

    if-gez v14, :cond_51

    move-wide/from16 v0, p1

    long-to-int v0, v0

    move v14, v0

    move v3, v14

    .line 367
    .local v3, chunk:I
    :goto_34
    new-array v2, v3, [B

    .line 368
    .local v2, buffer:[B
    int-to-long v14, v3

    div-long v6, p1, v14

    .local v6, i:J
    :goto_39
    const-wide/16 v14, 0x0

    cmp-long v14, v6, v14

    if-ltz v14, :cond_59

    .line 369
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/FileInputStream;->fileSystem:Lorg/apache/harmony/luni/platform/IFileSystem;

    move-object v14, v0

    const/4 v15, 0x0

    invoke-interface {v14, v2, v15, v3}, Lorg/apache/harmony/luni/platform/IFileSystem;->ttyRead([BII)J

    move-result-wide v10

    .line 370
    .local v10, numRead:J
    add-long/2addr v12, v10

    .line 371
    int-to-long v14, v3

    cmp-long v14, v10, v14

    if-gez v14, :cond_55

    move-wide v14, v12

    .line 372
    goto :goto_b

    .line 366
    .end local v2           #buffer:[B
    .end local v3           #chunk:I
    .end local v6           #i:J
    .end local v10           #numRead:J
    :cond_51
    const/16 v14, 0x2000

    move v3, v14

    goto :goto_34

    .line 368
    .restart local v2       #buffer:[B
    .restart local v3       #chunk:I
    .restart local v6       #i:J
    .restart local v10       #numRead:J
    :cond_55
    const-wide/16 v14, 0x1

    sub-long/2addr v6, v14

    goto :goto_39

    .end local v10           #numRead:J
    :cond_59
    move-wide v14, v12

    .line 375
    goto :goto_b

    .line 378
    .end local v2           #buffer:[B
    .end local v3           #chunk:I
    .end local v6           #i:J
    .end local v12           #skipped:J
    :cond_5b
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/FileInputStream;->repositioningLock:Ljava/lang/Object;

    move-object v14, v0

    monitor-enter v14

    .line 379
    :try_start_61
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/FileInputStream;->fileSystem:Lorg/apache/harmony/luni/platform/IFileSystem;

    move-object v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/FileInputStream;->fd:Ljava/io/FileDescriptor;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Ljava/io/FileDescriptor;->descriptor:I

    move/from16 v16, v0

    const-wide/16 v17, 0x0

    const/16 v19, 0x2

    invoke-interface/range {v15 .. v19}, Lorg/apache/harmony/luni/platform/IFileSystem;->seek(IJI)J

    move-result-wide v4

    .line 381
    .local v4, currentPosition:J
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/FileInputStream;->fileSystem:Lorg/apache/harmony/luni/platform/IFileSystem;

    move-object v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/FileInputStream;->fd:Ljava/io/FileDescriptor;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Ljava/io/FileDescriptor;->descriptor:I

    move/from16 v16, v0

    add-long v17, v4, p1

    const/16 v19, 0x1

    invoke-interface/range {v15 .. v19}, Lorg/apache/harmony/luni/platform/IFileSystem;->seek(IJI)J

    move-result-wide v8

    .line 383
    .local v8, newPosition:J
    sub-long v15, v8, v4

    monitor-exit v14

    move-wide v14, v15

    goto/16 :goto_b

    .line 384
    .end local v4           #currentPosition:J
    .end local v8           #newPosition:J
    :catchall_99
    move-exception v15

    monitor-exit v14
    :try_end_9b
    .catchall {:try_start_61 .. :try_end_9b} :catchall_99

    throw v15
.end method
