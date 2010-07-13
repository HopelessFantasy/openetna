.class public Ljava/net/ServerSocket;
.super Ljava/lang/Object;
.source "ServerSocket.java"


# static fields
.field static factory:Ljava/net/SocketImplFactory;


# instance fields
.field impl:Ljava/net/SocketImpl;

.field private isBound:Z

.field private isClosed:Z

.field private volatile isCreated:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 49
    invoke-static {}, Lorg/apache/harmony/luni/platform/Platform;->getNetworkSystem()Lorg/apache/harmony/luni/platform/INetworkSystem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/apache/harmony/luni/platform/INetworkSystem;->oneTimeInitialization(Z)V

    .line 50
    return-void
.end method

.method public constructor <init>()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    sget-object v0, Ljava/net/ServerSocket;->factory:Ljava/net/SocketImplFactory;

    if-eqz v0, :cond_10

    sget-object v0, Ljava/net/ServerSocket;->factory:Ljava/net/SocketImplFactory;

    invoke-interface {v0}, Ljava/net/SocketImplFactory;->createSocketImpl()Ljava/net/SocketImpl;

    move-result-object v0

    :goto_d
    iput-object v0, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    .line 63
    return-void

    .line 61
    :cond_10
    invoke-static {}, Lorg/apache/harmony/luni/net/SocketImplProvider;->getServerSocketImpl()Ljava/net/SocketImpl;

    move-result-object v0

    goto :goto_d
.end method

.method public constructor <init>(I)V
    .registers 4
    .parameter "aport"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    invoke-static {}, Ljava/net/ServerSocket;->defaultBacklog()I

    move-result v0

    sget-object v1, Ljava/net/InetAddress;->ANY:Ljava/net/InetAddress;

    invoke-direct {p0, p1, v0, v1}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    .line 93
    return-void
.end method

.method public constructor <init>(II)V
    .registers 4
    .parameter "aport"
    .parameter "backlog"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 111
    sget-object v0, Ljava/net/InetAddress;->ANY:Ljava/net/InetAddress;

    invoke-direct {p0, p1, p2, v0}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    .line 112
    return-void
.end method

.method public constructor <init>(IILjava/net/InetAddress;)V
    .registers 8
    .parameter "aport"
    .parameter "backlog"
    .parameter "localAddr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    invoke-virtual {p0, p1}, Ljava/net/ServerSocket;->checkListen(I)V

    .line 135
    sget-object v2, Ljava/net/ServerSocket;->factory:Ljava/net/SocketImplFactory;

    if-eqz v2, :cond_33

    sget-object v2, Ljava/net/ServerSocket;->factory:Ljava/net/SocketImplFactory;

    invoke-interface {v2}, Ljava/net/SocketImplFactory;->createSocketImpl()Ljava/net/SocketImpl;

    move-result-object v2

    :goto_10
    iput-object v2, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    .line 137
    if-nez p3, :cond_38

    sget-object v2, Ljava/net/InetAddress;->ANY:Ljava/net/InetAddress;

    move-object v0, v2

    .line 139
    .local v0, addr:Ljava/net/InetAddress;
    :goto_17
    monitor-enter p0

    .line 140
    :try_start_18
    iget-object v2, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/net/SocketImpl;->create(Z)V

    .line 141
    const/4 v2, 0x1

    iput-boolean v2, p0, Ljava/net/ServerSocket;->isCreated:Z
    :try_end_21
    .catchall {:try_start_18 .. :try_end_21} :catchall_45

    .line 143
    :try_start_21
    iget-object v2, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v2, v0, p1}, Ljava/net/SocketImpl;->bind(Ljava/net/InetAddress;I)V

    .line 144
    const/4 v2, 0x1

    iput-boolean v2, p0, Ljava/net/ServerSocket;->isBound:Z

    .line 145
    iget-object v2, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    if-lez p2, :cond_3a

    move v3, p2

    :goto_2e
    invoke-virtual {v2, v3}, Ljava/net/SocketImpl;->listen(I)V
    :try_end_31
    .catchall {:try_start_21 .. :try_end_31} :catchall_45
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_31} :catch_3f

    .line 150
    :try_start_31
    monitor-exit p0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_45

    .line 151
    return-void

    .line 135
    .end local v0           #addr:Ljava/net/InetAddress;
    :cond_33
    invoke-static {}, Lorg/apache/harmony/luni/net/SocketImplProvider;->getServerSocketImpl()Ljava/net/SocketImpl;

    move-result-object v2

    goto :goto_10

    :cond_38
    move-object v0, p3

    .line 137
    goto :goto_17

    .line 145
    .restart local v0       #addr:Ljava/net/InetAddress;
    :cond_3a
    :try_start_3a
    invoke-static {}, Ljava/net/ServerSocket;->defaultBacklog()I
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_45
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3d} :catch_3f

    move-result v3

    goto :goto_2e

    .line 146
    :catch_3f
    move-exception v2

    move-object v1, v2

    .line 147
    .local v1, e:Ljava/io/IOException;
    :try_start_41
    invoke-virtual {p0}, Ljava/net/ServerSocket;->close()V

    .line 148
    throw v1

    .line 150
    .end local v1           #e:Ljava/io/IOException;
    :catchall_45
    move-exception v2

    monitor-exit p0
    :try_end_47
    .catchall {:try_start_41 .. :try_end_47} :catchall_45

    throw v2
.end method

.method protected constructor <init>(Ljava/net/SocketImpl;)V
    .registers 2
    .parameter "impl"

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    .line 78
    return-void
.end method

.method private checkClosedAndCreate(Z)V
    .registers 5
    .parameter "create"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 482
    invoke-virtual {p0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 483
    new-instance v1, Ljava/net/SocketException;

    const-string v2, "K003d"

    invoke-static {v2}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 486
    :cond_12
    if-eqz p1, :cond_18

    iget-boolean v1, p0, Ljava/net/ServerSocket;->isCreated:Z

    if-eqz v1, :cond_19

    .line 503
    :cond_18
    :goto_18
    return-void

    .line 490
    :cond_19
    monitor-enter p0

    .line 491
    :try_start_1a
    iget-boolean v1, p0, Ljava/net/ServerSocket;->isCreated:Z

    if-eqz v1, :cond_23

    .line 492
    monitor-exit p0

    goto :goto_18

    .line 502
    :catchall_20
    move-exception v1

    monitor-exit p0
    :try_end_22
    .catchall {:try_start_1a .. :try_end_22} :catchall_20

    throw v1

    .line 495
    :cond_23
    :try_start_23
    iget-object v1, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/net/SocketImpl;->create(Z)V
    :try_end_29
    .catchall {:try_start_23 .. :try_end_29} :catchall_20
    .catch Ljava/net/SocketException; {:try_start_23 .. :try_end_29} :catch_2e
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_29} :catch_31

    .line 501
    const/4 v1, 0x1

    :try_start_2a
    iput-boolean v1, p0, Ljava/net/ServerSocket;->isCreated:Z

    .line 502
    monitor-exit p0

    goto :goto_18

    .line 496
    :catch_2e
    move-exception v1

    move-object v0, v1

    .line 497
    .local v0, e:Ljava/net/SocketException;
    throw v0

    .line 498
    .end local v0           #e:Ljava/net/SocketException;
    :catch_31
    move-exception v1

    move-object v0, v1

    .line 499
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ljava/net/SocketException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3d
    .catchall {:try_start_2a .. :try_end_3d} :catchall_20
.end method

.method static defaultBacklog()I
    .registers 1

    .prologue
    .line 229
    const/16 v0, 0x32

    return v0
.end method

.method public static declared-synchronized setSocketFactory(Ljava/net/SocketImplFactory;)V
    .registers 5
    .parameter "aFactory"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 317
    const-class v1, Ljava/net/ServerSocket;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 318
    .local v0, security:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_c

    .line 319
    invoke-virtual {v0}, Ljava/lang/SecurityManager;->checkSetFactory()V

    .line 321
    :cond_c
    sget-object v2, Ljava/net/ServerSocket;->factory:Ljava/net/SocketImplFactory;

    if-eqz v2, :cond_1f

    .line 322
    new-instance v2, Ljava/net/SocketException;

    const-string v3, "K0042"

    invoke-static {v3}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1c

    .line 317
    .end local v0           #security:Ljava/lang/SecurityManager;
    :catchall_1c
    move-exception v2

    monitor-exit v1

    throw v2

    .line 324
    .restart local v0       #security:Ljava/lang/SecurityManager;
    :cond_1f
    :try_start_1f
    sput-object p0, Ljava/net/ServerSocket;->factory:Ljava/net/SocketImplFactory;
    :try_end_21
    .catchall {:try_start_1f .. :try_end_21} :catchall_1c

    .line 325
    monitor-exit v1

    return-void
.end method


# virtual methods
.method public accept()Ljava/net/Socket;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 164
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Ljava/net/ServerSocket;->checkClosedAndCreate(Z)V

    .line 165
    invoke-virtual {p0}, Ljava/net/ServerSocket;->isBound()Z

    move-result v3

    if-nez v3, :cond_16

    .line 166
    new-instance v3, Ljava/net/SocketException;

    const-string v4, "K031f"

    invoke-static {v4}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 169
    :cond_16
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    .line 171
    .local v0, aSocket:Ljava/net/Socket;
    :try_start_1b
    monitor-enter p0
    :try_end_1c
    .catch Ljava/lang/SecurityException; {:try_start_1b .. :try_end_1c} :catch_39
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1c} :catch_3f

    .line 172
    :try_start_1c
    invoke-virtual {p0, v0}, Ljava/net/ServerSocket;->implAccept(Ljava/net/Socket;)V

    .line 173
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1c .. :try_end_20} :catchall_36

    .line 174
    :try_start_20
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v2

    .line 175
    .local v2, security:Ljava/lang/SecurityManager;
    if-eqz v2, :cond_35

    .line 176
    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/net/Socket;->getPort()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/SecurityManager;->checkAccept(Ljava/lang/String;I)V
    :try_end_35
    .catch Ljava/lang/SecurityException; {:try_start_20 .. :try_end_35} :catch_39
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_35} :catch_3f

    .line 186
    :cond_35
    return-object v0

    .line 173
    .end local v2           #security:Ljava/lang/SecurityManager;
    :catchall_36
    move-exception v3

    :try_start_37
    monitor-exit p0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    :try_start_38
    throw v3
    :try_end_39
    .catch Ljava/lang/SecurityException; {:try_start_38 .. :try_end_39} :catch_39
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_39} :catch_3f

    .line 179
    :catch_39
    move-exception v3

    move-object v1, v3

    .line 180
    .local v1, e:Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 181
    throw v1

    .line 182
    .end local v1           #e:Ljava/lang/SecurityException;
    :catch_3f
    move-exception v3

    move-object v1, v3

    .line 183
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 184
    throw v1
.end method

.method public bind(Ljava/net/SocketAddress;)V
    .registers 3
    .parameter "localAddr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 385
    invoke-static {}, Ljava/net/ServerSocket;->defaultBacklog()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;I)V

    .line 386
    return-void
.end method

.method public bind(Ljava/net/SocketAddress;I)V
    .registers 12
    .parameter "localAddr"
    .parameter "backlog"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 408
    invoke-direct {p0, v6}, Ljava/net/ServerSocket;->checkClosedAndCreate(Z)V

    .line 409
    invoke-virtual {p0}, Ljava/net/ServerSocket;->isBound()Z

    move-result v6

    if-eqz v6, :cond_16

    .line 410
    new-instance v6, Ljava/net/BindException;

    const-string v7, "K0315"

    invoke-static {v7}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/net/BindException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 412
    :cond_16
    const/4 v4, 0x0

    .line 413
    .local v4, port:I
    sget-object v1, Ljava/net/InetAddress;->ANY:Ljava/net/InetAddress;

    .line 414
    .local v1, addr:Ljava/net/InetAddress;
    if-eqz p1, :cond_4d

    .line 415
    instance-of v6, p1, Ljava/net/InetSocketAddress;

    if-nez v6, :cond_2f

    .line 416
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "K0316"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 419
    :cond_2f
    move-object v0, p1

    check-cast v0, Ljava/net/InetSocketAddress;

    move-object v3, v0

    .line 420
    .local v3, inetAddr:Ljava/net/InetSocketAddress;
    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    if-nez v1, :cond_49

    .line 421
    new-instance v6, Ljava/net/SocketException;

    const-string v7, "K0317"

    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 424
    :cond_49
    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v4

    .line 426
    .end local v3           #inetAddr:Ljava/net/InetSocketAddress;
    :cond_4d
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v5

    .line 427
    .local v5, security:Ljava/lang/SecurityManager;
    if-eqz v5, :cond_56

    .line 428
    invoke-virtual {v5, v4}, Ljava/lang/SecurityManager;->checkListen(I)V

    .line 431
    :cond_56
    monitor-enter p0

    .line 433
    :try_start_57
    iget-object v6, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v6, v1, v4}, Ljava/net/SocketImpl;->bind(Ljava/net/InetAddress;I)V

    .line 434
    const/4 v6, 0x1

    iput-boolean v6, p0, Ljava/net/ServerSocket;->isBound:Z

    .line 435
    iget-object v6, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    if-lez p2, :cond_69

    move v7, p2

    :goto_64
    invoke-virtual {v6, v7}, Ljava/net/SocketImpl;->listen(I)V
    :try_end_67
    .catchall {:try_start_57 .. :try_end_67} :catchall_74
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_67} :catch_6e

    .line 440
    :try_start_67
    monitor-exit p0
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_74

    .line 441
    return-void

    .line 435
    :cond_69
    :try_start_69
    invoke-static {}, Ljava/net/ServerSocket;->defaultBacklog()I
    :try_end_6c
    .catchall {:try_start_69 .. :try_end_6c} :catchall_74
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_6c} :catch_6e

    move-result v7

    goto :goto_64

    .line 436
    :catch_6e
    move-exception v6

    move-object v2, v6

    .line 437
    .local v2, e:Ljava/io/IOException;
    :try_start_70
    invoke-virtual {p0}, Ljava/net/ServerSocket;->close()V

    .line 438
    throw v2

    .line 440
    .end local v2           #e:Ljava/io/IOException;
    :catchall_74
    move-exception v6

    monitor-exit p0
    :try_end_76
    .catchall {:try_start_70 .. :try_end_76} :catchall_74

    throw v6
.end method

.method checkListen(I)V
    .registers 5
    .parameter "aPort"

    .prologue
    .line 199
    if-ltz p1, :cond_7

    const v1, 0xffff

    if-le p1, v1, :cond_13

    .line 200
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "K0325"

    invoke-static {v2, p1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 202
    :cond_13
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 203
    .local v0, security:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_1c

    .line 204
    invoke-virtual {v0, p1}, Ljava/lang/SecurityManager;->checkListen(I)V

    .line 206
    :cond_1c
    return-void
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 217
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/ServerSocket;->isClosed:Z

    .line 218
    iget-object v0, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v0}, Ljava/net/SocketImpl;->close()V

    .line 219
    return-void
.end method

.method public getChannel()Ljava/nio/channels/ServerSocketChannel;
    .registers 2

    .prologue
    .line 576
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInetAddress()Ljava/net/InetAddress;
    .registers 2

    .prologue
    .line 240
    invoke-virtual {p0}, Ljava/net/ServerSocket;->isBound()Z

    move-result v0

    if-nez v0, :cond_8

    .line 241
    const/4 v0, 0x0

    .line 243
    :goto_7
    return-object v0

    :cond_8
    iget-object v0, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v0}, Ljava/net/SocketImpl;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    goto :goto_7
.end method

.method public getLocalPort()I
    .registers 2

    .prologue
    .line 254
    invoke-virtual {p0}, Ljava/net/ServerSocket;->isBound()Z

    move-result v0

    if-nez v0, :cond_8

    .line 255
    const/4 v0, -0x1

    .line 257
    :goto_7
    return v0

    :cond_8
    iget-object v0, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v0}, Ljava/net/SocketImpl;->getLocalPort()I

    move-result v0

    goto :goto_7
.end method

.method public getLocalSocketAddress()Ljava/net/SocketAddress;
    .registers 4

    .prologue
    .line 451
    invoke-virtual {p0}, Ljava/net/ServerSocket;->isBound()Z

    move-result v0

    if-nez v0, :cond_8

    .line 452
    const/4 v0, 0x0

    .line 454
    :goto_7
    return-object v0

    :cond_8
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Ljava/net/ServerSocket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    goto :goto_7
.end method

.method public getReceiveBufferSize()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 563
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/net/ServerSocket;->checkClosedAndCreate(Z)V

    .line 564
    iget-object v0, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    const/16 v1, 0x1002

    invoke-virtual {v0, v1}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getReuseAddress()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 529
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/net/ServerSocket;->checkClosedAndCreate(Z)V

    .line 530
    iget-object v0, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized getSoTimeout()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 270
    monitor-enter p0

    :try_start_1
    iget-boolean v1, p0, Ljava/net/ServerSocket;->isCreated:Z

    if-nez v1, :cond_14

    .line 271
    monitor-enter p0
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_2a

    .line 272
    :try_start_6
    iget-boolean v1, p0, Ljava/net/ServerSocket;->isCreated:Z
    :try_end_8
    .catchall {:try_start_6 .. :try_end_8} :catchall_27

    if-nez v1, :cond_13

    .line 274
    :try_start_a
    iget-object v1, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/net/SocketImpl;->create(Z)V
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_27
    .catch Ljava/net/SocketException; {:try_start_a .. :try_end_10} :catch_24
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_10} :catch_2d

    .line 280
    const/4 v1, 0x1

    :try_start_11
    iput-boolean v1, p0, Ljava/net/ServerSocket;->isCreated:Z

    .line 282
    :cond_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_27

    .line 284
    :cond_14
    :try_start_14
    iget-object v1, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    const/16 v2, 0x1006

    invoke-virtual {v1, v2}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_21
    .catchall {:try_start_14 .. :try_end_21} :catchall_2a

    move-result v1

    monitor-exit p0

    return v1

    .line 275
    :catch_24
    move-exception v1

    move-object v0, v1

    .line 276
    .local v0, e:Ljava/net/SocketException;
    :try_start_26
    throw v0

    .line 282
    .end local v0           #e:Ljava/net/SocketException;
    :catchall_27
    move-exception v1

    monitor-exit p0
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_27

    :try_start_29
    throw v1
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_2a

    .line 270
    :catchall_2a
    move-exception v1

    monitor-exit p0

    throw v1

    .line 277
    :catch_2d
    move-exception v1

    move-object v0, v1

    .line 278
    .local v0, e:Ljava/io/IOException;
    :try_start_2f
    new-instance v1, Ljava/net/SocketException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_39
    .catchall {:try_start_2f .. :try_end_39} :catchall_27
.end method

.method protected final implAccept(Ljava/net/Socket;)V
    .registers 4
    .parameter "aSocket"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 299
    iget-object v0, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    iget-object v1, p1, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v0, v1}, Ljava/net/SocketImpl;->accept(Ljava/net/SocketImpl;)V

    .line 300
    invoke-virtual {p1}, Ljava/net/Socket;->accepted()V

    .line 301
    return-void
.end method

.method public isBound()Z
    .registers 2

    .prologue
    .line 465
    iget-boolean v0, p0, Ljava/net/ServerSocket;->isBound:Z

    return v0
.end method

.method public isClosed()Z
    .registers 2

    .prologue
    .line 475
    iget-boolean v0, p0, Ljava/net/ServerSocket;->isClosed:Z

    return v0
.end method

.method public setPerformancePreferences(III)V
    .registers 4
    .parameter "connectionTime"
    .parameter "latency"
    .parameter "bandwidth"

    .prologue
    .line 598
    return-void
.end method

.method public setReceiveBufferSize(I)V
    .registers 5
    .parameter "size"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 546
    invoke-direct {p0, v0}, Ljava/net/ServerSocket;->checkClosedAndCreate(Z)V

    .line 547
    if-ge p1, v0, :cond_12

    .line 548
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "K0035"

    invoke-static {v1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 550
    :cond_12
    iget-object v0, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    const/16 v1, 0x1002

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    .line 551
    return-void
.end method

.method public setReuseAddress(Z)V
    .registers 5
    .parameter "reuse"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 515
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/net/ServerSocket;->checkClosedAndCreate(Z)V

    .line 516
    iget-object v0, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    const/4 v1, 0x4

    if-eqz p1, :cond_f

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_b
    invoke-virtual {v0, v1, v2}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    .line 518
    return-void

    .line 516
    :cond_f
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_b
.end method

.method public declared-synchronized setSoTimeout(I)V
    .registers 5
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 339
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    invoke-direct {p0, v0}, Ljava/net/ServerSocket;->checkClosedAndCreate(Z)V

    .line 340
    if-gez p1, :cond_16

    .line 341
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "K0036"

    invoke-static {v1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_13
    .catchall {:try_start_2 .. :try_end_13} :catchall_13

    .line 339
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0

    .line 343
    :cond_16
    :try_start_16
    iget-object v0, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    const/16 v1, 0x1006

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V
    :try_end_21
    .catchall {:try_start_16 .. :try_end_21} :catchall_13

    .line 344
    monitor-exit p0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 356
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 357
    .local v0, result:Ljava/lang/StringBuffer;
    const-string v1, "ServerSocket["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 358
    invoke-virtual {p0}, Ljava/net/ServerSocket;->isBound()Z

    move-result v1

    if-nez v1, :cond_1d

    .line 359
    const-string v1, "unbound]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 361
    :goto_1c
    return-object v1

    :cond_1d
    const-string v1, "addr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/ServerSocket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/ServerSocket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ",port=0,localport="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1c
.end method
