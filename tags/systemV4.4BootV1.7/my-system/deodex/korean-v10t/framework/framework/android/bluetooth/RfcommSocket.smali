.class public Landroid/bluetooth/RfcommSocket;
.super Ljava/lang/Object;
.source "RfcommSocket.java"


# instance fields
.field private mAcceptTimeoutRemainingMs:I

.field private mAddress:Ljava/lang/String;

.field private mFd:Ljava/io/FileDescriptor;

.field protected mInputStream:Ljava/io/FileInputStream;

.field private mIsBound:Z

.field private mIsConnecting:Z

.field private mIsListening:Z

.field private mNativeData:I

.field protected mOutputStream:Ljava/io/FileOutputStream;

.field private mPort:I

.field private mTimeoutRemainingMs:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .prologue
    .line 152
    invoke-static {}, Landroid/bluetooth/RfcommSocket;->classInitNative()V

    .line 153
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-boolean v0, p0, Landroid/bluetooth/RfcommSocket;->mIsBound:Z

    .line 104
    iput-boolean v0, p0, Landroid/bluetooth/RfcommSocket;->mIsListening:Z

    .line 132
    invoke-direct {p0}, Landroid/bluetooth/RfcommSocket;->initializeNativeDataNative()V

    .line 133
    return-void
.end method

.method private native acceptNative(Landroid/bluetooth/RfcommSocket;I)Ljava/io/FileDescriptor;
.end method

.method private native bindNative(Ljava/lang/String;I)Z
.end method

.method private static native classInitNative()V
.end method

.method private native cleanupNativeDataNative()V
.end method

.method private native connectAsyncNative(Ljava/lang/String;I)Z
.end method

.method private native connectNative(Ljava/lang/String;I)Z
.end method

.method private native createNative()Ljava/io/FileDescriptor;
.end method

.method private native destroyNative()V
.end method

.method private native initializeNativeDataNative()V
.end method

.method private native interruptAsyncConnectNative()Z
.end method

.method private native isConnectedNative()I
.end method

.method private native listenNative(I)Z
.end method

.method private native shutdownNative(Z)Z
.end method

.method private native waitForAsyncConnectNative(I)I
.end method


# virtual methods
.method public accept(Landroid/bluetooth/RfcommSocket;I)Ljava/io/FileDescriptor;
    .registers 5
    .parameter "newSock"
    .parameter "timeoutMs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 618
    monitor-enter p1

    .line 619
    :try_start_1
    iget-object v0, p0, Landroid/bluetooth/RfcommSocket;->mFd:Ljava/io/FileDescriptor;

    if-nez v0, :cond_10

    .line 620
    new-instance v0, Ljava/io/IOException;

    const-string v1, "socket not created"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 627
    :catchall_d
    move-exception v0

    monitor-exit p1
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_d

    throw v0

    .line 622
    :cond_10
    :try_start_10
    iget-boolean v0, p0, Landroid/bluetooth/RfcommSocket;->mIsListening:Z

    if-nez v0, :cond_1c

    .line 623
    new-instance v0, Ljava/io/IOException;

    const-string v1, "not listening on socket"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 625
    :cond_1c
    invoke-direct {p0, p1, p2}, Landroid/bluetooth/RfcommSocket;->acceptNative(Landroid/bluetooth/RfcommSocket;I)Ljava/io/FileDescriptor;

    move-result-object v0

    iput-object v0, p1, Landroid/bluetooth/RfcommSocket;->mFd:Ljava/io/FileDescriptor;

    .line 626
    iget-object v0, p1, Landroid/bluetooth/RfcommSocket;->mFd:Ljava/io/FileDescriptor;

    monitor-exit p1
    :try_end_25
    .catchall {:try_start_10 .. :try_end_25} :catchall_d

    return-object v0
.end method

.method public bind(Ljava/lang/String;)Z
    .registers 6
    .parameter "device"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 522
    iget-object v1, p0, Landroid/bluetooth/RfcommSocket;->mFd:Ljava/io/FileDescriptor;

    if-nez v1, :cond_e

    .line 523
    new-instance v1, Ljava/io/IOException;

    const-string v2, "socket not created"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 525
    :cond_e
    const/16 v0, 0xc

    .local v0, port:I
    :goto_10
    const/16 v1, 0x1e

    if-gt v0, v1, :cond_21

    .line 526
    invoke-direct {p0, p1, v0}, Landroid/bluetooth/RfcommSocket;->bindNative(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 527
    iput-boolean v3, p0, Landroid/bluetooth/RfcommSocket;->mIsBound:Z

    move v1, v3

    .line 532
    :goto_1d
    return v1

    .line 525
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 531
    :cond_21
    iput-boolean v2, p0, Landroid/bluetooth/RfcommSocket;->mIsBound:Z

    move v1, v2

    .line 532
    goto :goto_1d
.end method

.method public bind(Ljava/lang/String;I)Z
    .registers 5
    .parameter "device"
    .parameter "port"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 553
    iget-object v0, p0, Landroid/bluetooth/RfcommSocket;->mFd:Ljava/io/FileDescriptor;

    if-nez v0, :cond_c

    .line 554
    new-instance v0, Ljava/io/IOException;

    const-string v1, "socket not created"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 556
    :cond_c
    invoke-direct {p0, p1, p2}, Landroid/bluetooth/RfcommSocket;->bindNative(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/bluetooth/RfcommSocket;->mIsBound:Z

    .line 557
    iget-boolean v0, p0, Landroid/bluetooth/RfcommSocket;->mIsBound:Z

    return v0
.end method

.method public connect(Ljava/lang/String;I)Z
    .registers 5
    .parameter "address"
    .parameter "port"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 269
    monitor-enter p0

    .line 270
    :try_start_1
    iget-object v0, p0, Landroid/bluetooth/RfcommSocket;->mFd:Ljava/io/FileDescriptor;

    if-nez v0, :cond_10

    .line 271
    new-instance v0, Ljava/io/IOException;

    const-string v1, "socket not created"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 274
    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_d

    throw v0

    .line 273
    :cond_10
    :try_start_10
    invoke-direct {p0, p1, p2}, Landroid/bluetooth/RfcommSocket;->connectNative(Ljava/lang/String;I)Z

    move-result v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_d

    return v0
.end method

.method public connectAsync(Ljava/lang/String;I)Z
    .registers 5
    .parameter "address"
    .parameter "port"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 300
    monitor-enter p0

    .line 301
    :try_start_1
    iget-object v0, p0, Landroid/bluetooth/RfcommSocket;->mFd:Ljava/io/FileDescriptor;

    if-nez v0, :cond_10

    .line 302
    new-instance v0, Ljava/io/IOException;

    const-string v1, "socket not created"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 306
    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_d

    throw v0

    .line 304
    :cond_10
    :try_start_10
    invoke-direct {p0, p1, p2}, Landroid/bluetooth/RfcommSocket;->connectAsyncNative(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/bluetooth/RfcommSocket;->mIsConnecting:Z

    .line 305
    iget-boolean v0, p0, Landroid/bluetooth/RfcommSocket;->mIsConnecting:Z

    monitor-exit p0
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_d

    return v0
.end method

.method public create()Ljava/io/FileDescriptor;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 164
    iget-object v0, p0, Landroid/bluetooth/RfcommSocket;->mFd:Ljava/io/FileDescriptor;

    if-nez v0, :cond_a

    .line 165
    invoke-direct {p0}, Landroid/bluetooth/RfcommSocket;->createNative()Ljava/io/FileDescriptor;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/RfcommSocket;->mFd:Ljava/io/FileDescriptor;

    .line 167
    :cond_a
    iget-object v0, p0, Landroid/bluetooth/RfcommSocket;->mFd:Ljava/io/FileDescriptor;

    if-nez v0, :cond_16

    .line 168
    new-instance v0, Ljava/io/IOException;

    const-string v1, "socket not created"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_16
    iget-object v0, p0, Landroid/bluetooth/RfcommSocket;->mFd:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method public destroy()V
    .registers 2

    .prologue
    .line 183
    monitor-enter p0

    .line 184
    :try_start_1
    invoke-direct {p0}, Landroid/bluetooth/RfcommSocket;->destroyNative()V

    .line 185
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/RfcommSocket;->mFd:Ljava/io/FileDescriptor;

    .line 186
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/bluetooth/RfcommSocket;->mIsBound:Z

    .line 187
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/bluetooth/RfcommSocket;->mIsListening:Z

    .line 188
    monitor-exit p0

    .line 189
    return-void

    .line 188
    :catchall_f
    move-exception v0

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_f

    throw v0
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 143
    :try_start_0
    invoke-direct {p0}, Landroid/bluetooth/RfcommSocket;->cleanupNativeDataNative()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_7

    .line 145
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 147
    return-void

    .line 145
    :catchall_7
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getFileDescriptor()Ljava/io/FileDescriptor;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 201
    iget-object v0, p0, Landroid/bluetooth/RfcommSocket;->mFd:Ljava/io/FileDescriptor;

    if-nez v0, :cond_c

    .line 202
    new-instance v0, Ljava/io/IOException;

    const-string v1, "socket not created"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 204
    :cond_c
    iget-object v0, p0, Landroid/bluetooth/RfcommSocket;->mFd:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 218
    iget-object v0, p0, Landroid/bluetooth/RfcommSocket;->mFd:Ljava/io/FileDescriptor;

    if-nez v0, :cond_c

    .line 219
    new-instance v0, Ljava/io/IOException;

    const-string v1, "socket not created"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 222
    :cond_c
    monitor-enter p0

    .line 223
    :try_start_d
    iget-object v0, p0, Landroid/bluetooth/RfcommSocket;->mInputStream:Ljava/io/FileInputStream;

    if-nez v0, :cond_1a

    .line 224
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Landroid/bluetooth/RfcommSocket;->mFd:Ljava/io/FileDescriptor;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v0, p0, Landroid/bluetooth/RfcommSocket;->mInputStream:Ljava/io/FileInputStream;

    .line 227
    :cond_1a
    iget-object v0, p0, Landroid/bluetooth/RfcommSocket;->mInputStream:Ljava/io/FileInputStream;

    monitor-exit p0

    return-object v0

    .line 228
    :catchall_1e
    move-exception v0

    monitor-exit p0
    :try_end_20
    .catchall {:try_start_d .. :try_end_20} :catchall_1e

    throw v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 242
    iget-object v0, p0, Landroid/bluetooth/RfcommSocket;->mFd:Ljava/io/FileDescriptor;

    if-nez v0, :cond_c

    .line 243
    new-instance v0, Ljava/io/IOException;

    const-string v1, "socket not created"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 246
    :cond_c
    monitor-enter p0

    .line 247
    :try_start_d
    iget-object v0, p0, Landroid/bluetooth/RfcommSocket;->mOutputStream:Ljava/io/FileOutputStream;

    if-nez v0, :cond_1a

    .line 248
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Landroid/bluetooth/RfcommSocket;->mFd:Ljava/io/FileDescriptor;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v0, p0, Landroid/bluetooth/RfcommSocket;->mOutputStream:Ljava/io/FileOutputStream;

    .line 251
    :cond_1a
    iget-object v0, p0, Landroid/bluetooth/RfcommSocket;->mOutputStream:Ljava/io/FileOutputStream;

    monitor-exit p0

    return-object v0

    .line 252
    :catchall_1e
    move-exception v0

    monitor-exit p0
    :try_end_20
    .catchall {:try_start_d .. :try_end_20} :catchall_1e

    throw v0
.end method

.method public getPort()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 658
    iget-object v0, p0, Landroid/bluetooth/RfcommSocket;->mFd:Ljava/io/FileDescriptor;

    if-nez v0, :cond_c

    .line 659
    new-instance v0, Ljava/io/IOException;

    const-string v1, "socket not created"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 661
    :cond_c
    iget-boolean v0, p0, Landroid/bluetooth/RfcommSocket;->mIsListening:Z

    if-nez v0, :cond_1e

    invoke-virtual {p0}, Landroid/bluetooth/RfcommSocket;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 662
    new-instance v0, Ljava/io/IOException;

    const-string v1, "not listening or connected on socket"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 664
    :cond_1e
    iget v0, p0, Landroid/bluetooth/RfcommSocket;->mPort:I

    return v0
.end method

.method public getRemainingAcceptWaitingTimeMs()I
    .registers 2

    .prologue
    .line 642
    iget v0, p0, Landroid/bluetooth/RfcommSocket;->mAcceptTimeoutRemainingMs:I

    return v0
.end method

.method public getRemainingAsyncConnectWaitingTimeMs()I
    .registers 2

    .prologue
    .line 395
    iget v0, p0, Landroid/bluetooth/RfcommSocket;->mTimeoutRemainingMs:I

    return v0
.end method

.method public interruptAsyncConnect()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 320
    monitor-enter p0

    .line 321
    :try_start_1
    iget-object v0, p0, Landroid/bluetooth/RfcommSocket;->mFd:Ljava/io/FileDescriptor;

    if-nez v0, :cond_10

    .line 322
    new-instance v0, Ljava/io/IOException;

    const-string v1, "socket not created"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 327
    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_d

    throw v0

    .line 324
    :cond_10
    :try_start_10
    iget-boolean v0, p0, Landroid/bluetooth/RfcommSocket;->mIsConnecting:Z

    if-eqz v0, :cond_1d

    .line 325
    invoke-direct {p0}, Landroid/bluetooth/RfcommSocket;->interruptAsyncConnectNative()Z

    move-result v0

    if-nez v0, :cond_1f

    const/4 v0, 0x1

    :goto_1b
    iput-boolean v0, p0, Landroid/bluetooth/RfcommSocket;->mIsConnecting:Z

    .line 327
    :cond_1d
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_10 .. :try_end_1e} :catchall_d

    .line 328
    return-void

    .line 325
    :cond_1f
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public isConnected()Z
    .registers 2

    .prologue
    .line 473
    invoke-direct {p0}, Landroid/bluetooth/RfcommSocket;->isConnectedNative()I

    move-result v0

    if-lez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isConnecting()Z
    .registers 2

    .prologue
    .line 341
    iget-boolean v0, p0, Landroid/bluetooth/RfcommSocket;->mIsConnecting:Z

    return v0
.end method

.method public isInputConnected()Z
    .registers 2

    .prologue
    .line 485
    invoke-direct {p0}, Landroid/bluetooth/RfcommSocket;->isConnectedNative()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isListening()Z
    .registers 2

    .prologue
    .line 672
    iget-boolean v0, p0, Landroid/bluetooth/RfcommSocket;->mIsListening:Z

    return v0
.end method

.method public isOutputConnected()Z
    .registers 2

    .prologue
    .line 497
    invoke-direct {p0}, Landroid/bluetooth/RfcommSocket;->isConnectedNative()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public listen(I)Z
    .registers 4
    .parameter "backlog"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 576
    iget-object v0, p0, Landroid/bluetooth/RfcommSocket;->mFd:Ljava/io/FileDescriptor;

    if-nez v0, :cond_c

    .line 577
    new-instance v0, Ljava/io/IOException;

    const-string v1, "socket not created"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 579
    :cond_c
    iget-boolean v0, p0, Landroid/bluetooth/RfcommSocket;->mIsBound:Z

    if-nez v0, :cond_18

    .line 580
    new-instance v0, Ljava/io/IOException;

    const-string v1, "socket not bound"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 582
    :cond_18
    invoke-direct {p0, p1}, Landroid/bluetooth/RfcommSocket;->listenNative(I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/bluetooth/RfcommSocket;->mIsListening:Z

    .line 583
    iget-boolean v0, p0, Landroid/bluetooth/RfcommSocket;->mIsListening:Z

    return v0
.end method

.method public shutdown()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 412
    monitor-enter p0

    .line 413
    :try_start_2
    iget-object v0, p0, Landroid/bluetooth/RfcommSocket;->mFd:Ljava/io/FileDescriptor;

    if-nez v0, :cond_11

    .line 414
    new-instance v0, Ljava/io/IOException;

    const-string v1, "socket not created"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 421
    :catchall_e
    move-exception v0

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_2 .. :try_end_10} :catchall_e

    throw v0

    .line 416
    :cond_11
    const/4 v0, 0x1

    :try_start_12
    invoke-direct {p0, v0}, Landroid/bluetooth/RfcommSocket;->shutdownNative(Z)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 417
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/bluetooth/RfcommSocket;->shutdownNative(Z)Z

    move-result v0

    monitor-exit p0

    .line 420
    :goto_1e
    return v0

    :cond_1f
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_12 .. :try_end_20} :catchall_e

    move v0, v1

    goto :goto_1e
.end method

.method public shutdownInput()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 435
    monitor-enter p0

    .line 436
    :try_start_1
    iget-object v0, p0, Landroid/bluetooth/RfcommSocket;->mFd:Ljava/io/FileDescriptor;

    if-nez v0, :cond_10

    .line 437
    new-instance v0, Ljava/io/IOException;

    const-string v1, "socket not created"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 440
    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_d

    throw v0

    .line 439
    :cond_10
    const/4 v0, 0x1

    :try_start_11
    invoke-direct {p0, v0}, Landroid/bluetooth/RfcommSocket;->shutdownNative(Z)Z

    move-result v0

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_d

    return v0
.end method

.method public shutdownOutput()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 454
    monitor-enter p0

    .line 455
    :try_start_1
    iget-object v0, p0, Landroid/bluetooth/RfcommSocket;->mFd:Ljava/io/FileDescriptor;

    if-nez v0, :cond_10

    .line 456
    new-instance v0, Ljava/io/IOException;

    const-string v1, "socket not created"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 459
    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_d

    throw v0

    .line 458
    :cond_10
    const/4 v0, 0x0

    :try_start_11
    invoke-direct {p0, v0}, Landroid/bluetooth/RfcommSocket;->shutdownNative(Z)Z

    move-result v0

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_d

    return v0
.end method

.method public waitForAsyncConnect(I)I
    .registers 5
    .parameter "timeoutMs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 366
    monitor-enter p0

    .line 367
    :try_start_1
    iget-object v1, p0, Landroid/bluetooth/RfcommSocket;->mFd:Ljava/io/FileDescriptor;

    if-nez v1, :cond_10

    .line 368
    new-instance v1, Ljava/io/IOException;

    const-string v2, "socket not created"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 375
    :catchall_d
    move-exception v1

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_d

    throw v1

    .line 370
    :cond_10
    :try_start_10
    invoke-direct {p0, p1}, Landroid/bluetooth/RfcommSocket;->waitForAsyncConnectNative(I)I

    move-result v0

    .line 371
    .local v0, ret:I
    if-eqz v0, :cond_19

    .line 372
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/bluetooth/RfcommSocket;->mIsConnecting:Z

    .line 374
    :cond_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_10 .. :try_end_1a} :catchall_d

    return v0
.end method
