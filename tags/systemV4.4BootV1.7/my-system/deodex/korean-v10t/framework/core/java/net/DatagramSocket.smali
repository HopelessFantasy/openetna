.class public Ljava/net/DatagramSocket;
.super Ljava/lang/Object;
.source "DatagramSocket.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/net/DatagramSocket$1;,
        Ljava/net/DatagramSocket$Lock;
    }
.end annotation


# static fields
.field static factory:Ljava/net/DatagramSocketImplFactory;


# instance fields
.field address:Ljava/net/InetAddress;

.field impl:Ljava/net/DatagramSocketImpl;

.field isBound:Z

.field private isClosed:Z

.field private isConnected:Z

.field private lock:Ljava/lang/Object;

.field port:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 57
    invoke-static {}, Lorg/apache/harmony/luni/platform/Platform;->getNetworkSystem()Lorg/apache/harmony/luni/platform/INetworkSystem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/apache/harmony/luni/platform/INetworkSystem;->oneTimeInitialization(Z)V

    .line 58
    return-void
.end method

.method public constructor <init>()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/net/DatagramSocket;-><init>(I)V

    .line 72
    return-void
.end method

.method public constructor <init>(I)V
    .registers 4
    .parameter "aPort"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Ljava/net/DatagramSocket;->port:I

    .line 47
    iput-boolean v1, p0, Ljava/net/DatagramSocket;->isBound:Z

    .line 49
    iput-boolean v1, p0, Ljava/net/DatagramSocket;->isConnected:Z

    .line 51
    iput-boolean v1, p0, Ljava/net/DatagramSocket;->isClosed:Z

    .line 60
    new-instance v0, Ljava/net/DatagramSocket$Lock;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/net/DatagramSocket$Lock;-><init>(Ljava/net/DatagramSocket$1;)V

    iput-object v0, p0, Ljava/net/DatagramSocket;->lock:Ljava/lang/Object;

    .line 87
    invoke-virtual {p0, p1}, Ljava/net/DatagramSocket;->checkListen(I)V

    .line 88
    sget-object v0, Ljava/net/InetAddress;->ANY:Ljava/net/InetAddress;

    invoke-virtual {p0, p1, v0}, Ljava/net/DatagramSocket;->createSocket(ILjava/net/InetAddress;)V

    .line 89
    return-void
.end method

.method public constructor <init>(ILjava/net/InetAddress;)V
    .registers 5
    .parameter "aPort"
    .parameter "addr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Ljava/net/DatagramSocket;->port:I

    .line 47
    iput-boolean v1, p0, Ljava/net/DatagramSocket;->isBound:Z

    .line 49
    iput-boolean v1, p0, Ljava/net/DatagramSocket;->isConnected:Z

    .line 51
    iput-boolean v1, p0, Ljava/net/DatagramSocket;->isClosed:Z

    .line 60
    new-instance v0, Ljava/net/DatagramSocket$Lock;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/net/DatagramSocket$Lock;-><init>(Ljava/net/DatagramSocket$1;)V

    iput-object v0, p0, Ljava/net/DatagramSocket;->lock:Ljava/lang/Object;

    .line 106
    invoke-virtual {p0, p1}, Ljava/net/DatagramSocket;->checkListen(I)V

    .line 107
    if-nez p2, :cond_20

    sget-object v0, Ljava/net/InetAddress;->ANY:Ljava/net/InetAddress;

    :goto_1c
    invoke-virtual {p0, p1, v0}, Ljava/net/DatagramSocket;->createSocket(ILjava/net/InetAddress;)V

    .line 108
    return-void

    :cond_20
    move-object v0, p2

    .line 107
    goto :goto_1c
.end method

.method protected constructor <init>(Ljava/net/DatagramSocketImpl;)V
    .registers 4
    .parameter "socketImpl"

    .prologue
    const/4 v1, 0x0

    .line 577
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Ljava/net/DatagramSocket;->port:I

    .line 47
    iput-boolean v1, p0, Ljava/net/DatagramSocket;->isBound:Z

    .line 49
    iput-boolean v1, p0, Ljava/net/DatagramSocket;->isConnected:Z

    .line 51
    iput-boolean v1, p0, Ljava/net/DatagramSocket;->isClosed:Z

    .line 60
    new-instance v0, Ljava/net/DatagramSocket$Lock;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/net/DatagramSocket$Lock;-><init>(Ljava/net/DatagramSocket$1;)V

    iput-object v0, p0, Ljava/net/DatagramSocket;->lock:Ljava/lang/Object;

    .line 578
    if-nez p1, :cond_1d

    .line 579
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 581
    :cond_1d
    iput-object p1, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    .line 582
    return-void
.end method

.method public constructor <init>(Ljava/net/SocketAddress;)V
    .registers 7
    .parameter "localAddr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 595
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v2, -0x1

    iput v2, p0, Ljava/net/DatagramSocket;->port:I

    .line 47
    iput-boolean v3, p0, Ljava/net/DatagramSocket;->isBound:Z

    .line 49
    iput-boolean v3, p0, Ljava/net/DatagramSocket;->isConnected:Z

    .line 51
    iput-boolean v3, p0, Ljava/net/DatagramSocket;->isClosed:Z

    .line 60
    new-instance v2, Ljava/net/DatagramSocket$Lock;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/net/DatagramSocket$Lock;-><init>(Ljava/net/DatagramSocket$1;)V

    iput-object v2, p0, Ljava/net/DatagramSocket;->lock:Ljava/lang/Object;

    .line 596
    if-eqz p1, :cond_36

    .line 597
    instance-of v2, p1, Ljava/net/InetSocketAddress;

    if-nez v2, :cond_2b

    .line 598
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "K0316"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 601
    :cond_2b
    move-object v0, p1

    check-cast v0, Ljava/net/InetSocketAddress;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/net/DatagramSocket;->checkListen(I)V

    .line 603
    :cond_36
    sget-object v2, Ljava/net/DatagramSocket;->factory:Ljava/net/DatagramSocketImplFactory;

    if-eqz v2, :cond_51

    sget-object v2, Ljava/net/DatagramSocket;->factory:Ljava/net/DatagramSocketImplFactory;

    invoke-interface {v2}, Ljava/net/DatagramSocketImplFactory;->createDatagramSocketImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v2

    :goto_40
    iput-object v2, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    .line 605
    iget-object v2, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    invoke-virtual {v2}, Ljava/net/DatagramSocketImpl;->create()V

    .line 606
    if-eqz p1, :cond_4c

    .line 608
    :try_start_49
    invoke-virtual {p0, p1}, Ljava/net/DatagramSocket;->bind(Ljava/net/SocketAddress;)V
    :try_end_4c
    .catch Ljava/net/SocketException; {:try_start_49 .. :try_end_4c} :catch_56

    .line 615
    :cond_4c
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/net/DatagramSocket;->setBroadcast(Z)V

    .line 616
    return-void

    .line 603
    :cond_51
    invoke-static {}, Lorg/apache/harmony/luni/net/SocketImplProvider;->getDatagramSocketImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v2

    goto :goto_40

    .line 609
    :catch_56
    move-exception v1

    .line 610
    .local v1, e:Ljava/net/SocketException;
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->close()V

    .line 611
    throw v1
.end method

.method public static declared-synchronized setDatagramSocketImplFactory(Ljava/net/DatagramSocketImplFactory;)V
    .registers 5
    .parameter "fac"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 558
    const-class v1, Ljava/net/DatagramSocket;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 559
    .local v0, security:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_c

    .line 560
    invoke-virtual {v0}, Ljava/lang/SecurityManager;->checkSetFactory()V

    .line 562
    :cond_c
    sget-object v2, Ljava/net/DatagramSocket;->factory:Ljava/net/DatagramSocketImplFactory;

    if-eqz v2, :cond_1f

    .line 563
    new-instance v2, Ljava/net/SocketException;

    const-string v3, "K0044"

    invoke-static {v3}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1c

    .line 558
    .end local v0           #security:Ljava/lang/SecurityManager;
    :catchall_1c
    move-exception v2

    monitor-exit v1

    throw v2

    .line 565
    .restart local v0       #security:Ljava/lang/SecurityManager;
    :cond_1f
    :try_start_1f
    sput-object p0, Ljava/net/DatagramSocket;->factory:Ljava/net/DatagramSocketImplFactory;
    :try_end_21
    .catchall {:try_start_1f .. :try_end_21} :catchall_1c

    .line 566
    monitor-exit v1

    return-void
.end method


# virtual methods
.method public bind(Ljava/net/SocketAddress;)V
    .registers 9
    .parameter "localAddr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 642
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Ljava/net/DatagramSocket;->checkClosedAndBind(Z)V

    .line 643
    const/4 v3, 0x0

    .line 644
    .local v3, localPort:I
    sget-object v1, Ljava/net/InetAddress;->ANY:Ljava/net/InetAddress;

    .line 645
    .local v1, addr:Ljava/net/InetAddress;
    if-eqz p1, :cond_3e

    .line 646
    instance-of v4, p1, Ljava/net/InetSocketAddress;

    if-nez v4, :cond_1d

    .line 647
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "K0316"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 650
    :cond_1d
    move-object v0, p1

    check-cast v0, Ljava/net/InetSocketAddress;

    move-object v2, v0

    .line 651
    .local v2, inetAddr:Ljava/net/InetSocketAddress;
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    .line 652
    if-nez v1, :cond_37

    .line 653
    new-instance v4, Ljava/net/SocketException;

    const-string v5, "K0317"

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 656
    :cond_37
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v3

    .line 657
    invoke-virtual {p0, v3}, Ljava/net/DatagramSocket;->checkListen(I)V

    .line 659
    .end local v2           #inetAddr:Ljava/net/InetSocketAddress;
    :cond_3e
    iget-object v4, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    invoke-virtual {v4, v3, v1}, Ljava/net/DatagramSocketImpl;->bind(ILjava/net/InetAddress;)V

    .line 660
    const/4 v4, 0x1

    iput-boolean v4, p0, Ljava/net/DatagramSocket;->isBound:Z

    .line 661
    return-void
.end method

.method checkClosedAndBind(Z)V
    .registers 5
    .parameter "bind"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 619
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 620
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "K003d"

    invoke-static {v1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 622
    :cond_13
    if-eqz p1, :cond_28

    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isBound()Z

    move-result v0

    if-nez v0, :cond_28

    .line 623
    invoke-virtual {p0, v2}, Ljava/net/DatagramSocket;->checkListen(I)V

    .line 624
    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    sget-object v1, Ljava/net/InetAddress;->ANY:Ljava/net/InetAddress;

    invoke-virtual {v0, v2, v1}, Ljava/net/DatagramSocketImpl;->bind(ILjava/net/InetAddress;)V

    .line 625
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/DatagramSocket;->isBound:Z

    .line 627
    :cond_28
    return-void
.end method

.method checkListen(I)V
    .registers 5
    .parameter "aPort"

    .prologue
    .line 120
    if-ltz p1, :cond_7

    const v1, 0xffff

    if-le p1, v1, :cond_13

    .line 121
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "K0325"

    invoke-static {v2, p1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 123
    :cond_13
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 124
    .local v0, security:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_1c

    .line 125
    invoke-virtual {v0, p1}, Ljava/lang/SecurityManager;->checkListen(I)V

    .line 127
    :cond_1c
    return-void
.end method

.method public close()V
    .registers 2

    .prologue
    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/DatagramSocket;->isClosed:Z

    .line 138
    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    invoke-virtual {v0}, Ljava/net/DatagramSocketImpl;->close()V

    .line 139
    return-void
.end method

.method public connect(Ljava/net/InetAddress;I)V
    .registers 6
    .parameter "anAddress"
    .parameter "aPort"

    .prologue
    .line 155
    if-eqz p1, :cond_9

    if-ltz p2, :cond_9

    const v1, 0xffff

    if-le p2, v1, :cond_15

    .line 156
    :cond_9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "K0032"

    invoke-static {v2}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 159
    :cond_15
    iget-object v1, p0, Ljava/net/DatagramSocket;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 160
    :try_start_18
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 161
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_41

    .line 187
    :goto_1f
    return-void

    .line 164
    :cond_20
    const/4 v2, 0x1

    :try_start_21
    invoke-virtual {p0, v2}, Ljava/net/DatagramSocket;->checkClosedAndBind(Z)V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_41
    .catch Ljava/net/SocketException; {:try_start_21 .. :try_end_24} :catch_4c

    .line 169
    :goto_24
    :try_start_24
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 170
    .local v0, security:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_33

    .line 171
    invoke-virtual {p1}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v2

    if-eqz v2, :cond_44

    .line 172
    invoke-virtual {v0, p1}, Ljava/lang/SecurityManager;->checkMulticast(Ljava/net/InetAddress;)V
    :try_end_33
    .catchall {:try_start_24 .. :try_end_33} :catchall_41

    .line 179
    :cond_33
    :goto_33
    :try_start_33
    iget-object v2, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    invoke-virtual {v2, p1, p2}, Ljava/net/DatagramSocketImpl;->connect(Ljava/net/InetAddress;I)V
    :try_end_38
    .catchall {:try_start_33 .. :try_end_38} :catchall_41
    .catch Ljava/net/SocketException; {:try_start_33 .. :try_end_38} :catch_4e

    .line 183
    :goto_38
    :try_start_38
    iput-object p1, p0, Ljava/net/DatagramSocket;->address:Ljava/net/InetAddress;

    .line 184
    iput p2, p0, Ljava/net/DatagramSocket;->port:I

    .line 185
    const/4 v2, 0x1

    iput-boolean v2, p0, Ljava/net/DatagramSocket;->isConnected:Z

    .line 186
    monitor-exit v1

    goto :goto_1f

    .end local v0           #security:Ljava/lang/SecurityManager;
    :catchall_41
    move-exception v2

    monitor-exit v1
    :try_end_43
    .catchall {:try_start_38 .. :try_end_43} :catchall_41

    throw v2

    .line 174
    .restart local v0       #security:Ljava/lang/SecurityManager;
    :cond_44
    :try_start_44
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p2}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V
    :try_end_4b
    .catchall {:try_start_44 .. :try_end_4b} :catchall_41

    goto :goto_33

    .line 165
    .end local v0           #security:Ljava/lang/SecurityManager;
    :catch_4c
    move-exception v2

    goto :goto_24

    .line 180
    .restart local v0       #security:Ljava/lang/SecurityManager;
    :catch_4e
    move-exception v2

    goto :goto_38
.end method

.method public connect(Ljava/net/SocketAddress;)V
    .registers 9
    .parameter "remoteAddr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 676
    if-nez p1, :cond_e

    .line 677
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "K0318"

    invoke-static {v4}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 680
    :cond_e
    instance-of v3, p1, Ljava/net/InetSocketAddress;

    if-nez v3, :cond_22

    .line 681
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "K0316"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 685
    :cond_22
    move-object v0, p1

    check-cast v0, Ljava/net/InetSocketAddress;

    move-object v1, v0

    .line 686
    .local v1, inetAddr:Ljava/net/InetSocketAddress;
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    if-nez v3, :cond_3c

    .line 687
    new-instance v3, Ljava/net/SocketException;

    const-string v4, "K0317"

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 691
    :cond_3c
    iget-object v3, p0, Ljava/net/DatagramSocket;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 693
    const/4 v4, 0x1

    :try_start_40
    invoke-virtual {p0, v4}, Ljava/net/DatagramSocket;->checkClosedAndBind(Z)V

    .line 695
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v2

    .line 696
    .local v2, security:Ljava/lang/SecurityManager;
    if-eqz v2, :cond_5a

    .line 697
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v4

    if-eqz v4, :cond_78

    .line 698
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/SecurityManager;->checkMulticast(Ljava/net/InetAddress;)V
    :try_end_5a
    .catchall {:try_start_40 .. :try_end_5a} :catchall_88

    .line 709
    :cond_5a
    :goto_5a
    :try_start_5a
    iget-object v4, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljava/net/DatagramSocketImpl;->connect(Ljava/net/InetAddress;I)V
    :try_end_67
    .catchall {:try_start_5a .. :try_end_67} :catchall_88
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_67} :catch_8b

    .line 715
    :goto_67
    :try_start_67
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    iput-object v4, p0, Ljava/net/DatagramSocket;->address:Ljava/net/InetAddress;

    .line 716
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v4

    iput v4, p0, Ljava/net/DatagramSocket;->port:I

    .line 717
    const/4 v4, 0x1

    iput-boolean v4, p0, Ljava/net/DatagramSocket;->isConnected:Z

    .line 718
    monitor-exit v3

    .line 719
    return-void

    .line 700
    :cond_78
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    goto :goto_5a

    .line 718
    .end local v2           #security:Ljava/lang/SecurityManager;
    :catchall_88
    move-exception v4

    monitor-exit v3
    :try_end_8a
    .catchall {:try_start_67 .. :try_end_8a} :catchall_88

    throw v4

    .line 710
    .restart local v2       #security:Ljava/lang/SecurityManager;
    :catch_8b
    move-exception v4

    goto :goto_67
.end method

.method declared-synchronized createSocket(ILjava/net/InetAddress;)V
    .registers 5
    .parameter "aPort"
    .parameter "addr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 207
    monitor-enter p0

    :try_start_1
    sget-object v1, Ljava/net/DatagramSocket;->factory:Ljava/net/DatagramSocketImplFactory;

    if-eqz v1, :cond_1c

    sget-object v1, Ljava/net/DatagramSocket;->factory:Ljava/net/DatagramSocketImplFactory;

    invoke-interface {v1}, Ljava/net/DatagramSocketImplFactory;->createDatagramSocketImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v1

    :goto_b
    iput-object v1, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    .line 209
    iget-object v1, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    invoke-virtual {v1}, Ljava/net/DatagramSocketImpl;->create()V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_27

    .line 211
    :try_start_12
    iget-object v1, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    invoke-virtual {v1, p1, p2}, Ljava/net/DatagramSocketImpl;->bind(ILjava/net/InetAddress;)V

    .line 212
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/net/DatagramSocket;->isBound:Z
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_27
    .catch Ljava/net/SocketException; {:try_start_12 .. :try_end_1a} :catch_21

    .line 217
    monitor-exit p0

    return-void

    .line 207
    :cond_1c
    :try_start_1c
    invoke-static {}, Lorg/apache/harmony/luni/net/SocketImplProvider;->getDatagramSocketImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v1

    goto :goto_b

    .line 213
    :catch_21
    move-exception v1

    move-object v0, v1

    .line 214
    .local v0, e:Ljava/net/SocketException;
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->close()V

    .line 215
    throw v0
    :try_end_27
    .catchall {:try_start_1c .. :try_end_27} :catchall_27

    .line 207
    .end local v0           #e:Ljava/net/SocketException;
    :catchall_27
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public disconnect()V
    .registers 2

    .prologue
    .line 196
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isConnected()Z

    move-result v0

    if-nez v0, :cond_d

    .line 203
    :cond_c
    :goto_c
    return-void

    .line 199
    :cond_d
    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    invoke-virtual {v0}, Ljava/net/DatagramSocketImpl;->disconnect()V

    .line 200
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/DatagramSocket;->address:Ljava/net/InetAddress;

    .line 201
    const/4 v0, -0x1

    iput v0, p0, Ljava/net/DatagramSocket;->port:I

    .line 202
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/net/DatagramSocket;->isConnected:Z

    goto :goto_c
.end method

.method public getBroadcast()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 829
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/net/DatagramSocket;->checkClosedAndBind(Z)V

    .line 830
    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getChannel()Ljava/nio/channels/DatagramChannel;
    .registers 2

    .prologue
    .line 891
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInetAddress()Ljava/net/InetAddress;
    .registers 2

    .prologue
    .line 228
    iget-object v0, p0, Ljava/net/DatagramSocket;->address:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getLocalAddress()Ljava/net/InetAddress;
    .registers 6

    .prologue
    .line 240
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 241
    const/4 v3, 0x0

    .line 255
    :goto_7
    return-object v3

    .line 243
    :cond_8
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isBound()Z

    move-result v3

    if-nez v3, :cond_11

    .line 244
    sget-object v3, Ljava/net/InetAddress;->ANY:Ljava/net/InetAddress;

    goto :goto_7

    .line 246
    :cond_11
    iget-object v3, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    invoke-virtual {v3}, Ljava/net/DatagramSocketImpl;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 248
    .local v0, anAddr:Ljava/net/InetAddress;
    :try_start_17
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v2

    .line 249
    .local v2, security:Ljava/lang/SecurityManager;
    if-eqz v2, :cond_25

    .line 250
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V
    :try_end_25
    .catch Ljava/lang/SecurityException; {:try_start_17 .. :try_end_25} :catch_27

    :cond_25
    move-object v3, v0

    .line 255
    goto :goto_7

    .line 252
    .end local v2           #security:Ljava/lang/SecurityManager;
    :catch_27
    move-exception v3

    move-object v1, v3

    .line 253
    .local v1, e:Ljava/lang/SecurityException;
    sget-object v3, Ljava/net/InetAddress;->ANY:Ljava/net/InetAddress;

    goto :goto_7
.end method

.method public getLocalPort()I
    .registers 2

    .prologue
    .line 266
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 267
    const/4 v0, -0x1

    .line 272
    :goto_7
    return v0

    .line 269
    :cond_8
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isBound()Z

    move-result v0

    if-nez v0, :cond_10

    .line 270
    const/4 v0, 0x0

    goto :goto_7

    .line 272
    :cond_10
    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    invoke-virtual {v0}, Ljava/net/DatagramSocketImpl;->getLocalPort()I

    move-result v0

    goto :goto_7
.end method

.method public getLocalSocketAddress()Ljava/net/SocketAddress;
    .registers 4

    .prologue
    .line 763
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isBound()Z

    move-result v0

    if-nez v0, :cond_8

    .line 764
    const/4 v0, 0x0

    .line 766
    :goto_7
    return-object v0

    :cond_8
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getLocalPort()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    goto :goto_7
.end method

.method public getPort()I
    .registers 2

    .prologue
    .line 283
    iget v0, p0, Ljava/net/DatagramSocket;->port:I

    return v0
.end method

.method public declared-synchronized getReceiveBufferSize()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 305
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, v0}, Ljava/net/DatagramSocket;->checkClosedAndBind(Z)V

    .line 306
    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    const/16 v1, 0x1002

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_12
    .catchall {:try_start_2 .. :try_end_12} :catchall_15

    move-result v0

    monitor-exit p0

    return v0

    .line 305
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getRemoteSocketAddress()Ljava/net/SocketAddress;
    .registers 4

    .prologue
    .line 749
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isConnected()Z

    move-result v0

    if-nez v0, :cond_8

    .line 750
    const/4 v0, 0x0

    .line 752
    :goto_7
    return-object v0

    :cond_8
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getPort()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    goto :goto_7
.end method

.method public getReuseAddress()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 799
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/net/DatagramSocket;->checkClosedAndBind(Z)V

    .line 800
    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized getSendBufferSize()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 318
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, v0}, Ljava/net/DatagramSocket;->checkClosedAndBind(Z)V

    .line 319
    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_12
    .catchall {:try_start_2 .. :try_end_12} :catchall_15

    move-result v0

    monitor-exit p0

    return v0

    .line 318
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSoTimeout()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 333
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, v0}, Ljava/net/DatagramSocket;->checkClosedAndBind(Z)V

    .line 334
    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    const/16 v1, 0x1006

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_12
    .catchall {:try_start_2 .. :try_end_12} :catchall_15

    move-result v0

    monitor-exit p0

    return v0

    .line 333
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getTrafficClass()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 868
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/net/DatagramSocket;->checkClosedAndBind(Z)V

    .line 869
    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public isBound()Z
    .registers 2

    .prologue
    .line 728
    iget-boolean v0, p0, Ljava/net/DatagramSocket;->isBound:Z

    return v0
.end method

.method public isClosed()Z
    .registers 2

    .prologue
    .line 879
    iget-boolean v0, p0, Ljava/net/DatagramSocket;->isClosed:Z

    return v0
.end method

.method public isConnected()Z
    .registers 2

    .prologue
    .line 738
    iget-boolean v0, p0, Ljava/net/DatagramSocket;->isConnected:Z

    return v0
.end method

.method isMulticastSocket()Z
    .registers 2

    .prologue
    .line 293
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized receive(Ljava/net/DatagramPacket;)V
    .registers 14
    .parameter "pack"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 353
    monitor-enter p0

    const/4 v7, 0x1

    :try_start_2
    invoke-virtual {p0, v7}, Ljava/net/DatagramSocket;->checkClosedAndBind(Z)V

    .line 355
    const/4 v2, 0x1

    .line 357
    .local v2, secure:Z
    const/4 v4, 0x0

    .line 359
    .local v4, senderAddr:Ljava/net/InetAddress;
    const/4 v5, 0x0

    .line 360
    .local v5, senderPort:I
    new-instance v6, Ljava/net/DatagramPacket;

    const/4 v7, 0x1

    new-array v7, v7, [B

    const/4 v8, 0x1

    invoke-direct {v6, v7, v8}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 361
    .local v6, tempPack:Ljava/net/DatagramPacket;
    const/4 v0, 0x0

    .line 363
    .local v0, copy:Z
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v3

    .line 364
    .local v3, security:Ljava/lang/SecurityManager;
    iget-object v7, p0, Ljava/net/DatagramSocket;->address:Ljava/net/InetAddress;

    if-nez v7, :cond_1c

    if-eqz v3, :cond_43

    .line 366
    :cond_1c
    if-nez p1, :cond_27

    .line 367
    new-instance v7, Ljava/lang/NullPointerException;

    invoke-direct {v7}, Ljava/lang/NullPointerException;-><init>()V

    throw v7
    :try_end_24
    .catchall {:try_start_2 .. :try_end_24} :catchall_24

    .line 353
    .end local v0           #copy:Z
    .end local v2           #secure:Z
    .end local v3           #security:Ljava/lang/SecurityManager;
    .end local v4           #senderAddr:Ljava/net/InetAddress;
    .end local v5           #senderPort:I
    .end local v6           #tempPack:Ljava/net/DatagramPacket;
    :catchall_24
    move-exception v7

    monitor-exit p0

    throw v7

    .line 369
    .restart local v0       #copy:Z
    .restart local v2       #secure:Z
    .restart local v3       #security:Ljava/lang/SecurityManager;
    .restart local v4       #senderAddr:Ljava/net/InetAddress;
    .restart local v5       #senderPort:I
    .restart local v6       #tempPack:Ljava/net/DatagramPacket;
    :cond_27
    const/4 v2, 0x0

    .line 370
    :cond_28
    :goto_28
    if-nez v2, :cond_43

    .line 371
    const/4 v0, 0x0

    .line 373
    :try_start_2b
    iget-object v7, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    invoke-virtual {v7, v6}, Ljava/net/DatagramSocketImpl;->peekData(Ljava/net/DatagramPacket;)I

    move-result v5

    .line 374
    invoke-virtual {v6}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;
    :try_end_34
    .catchall {:try_start_2b .. :try_end_34} :catchall_24
    .catch Ljava/net/SocketException; {:try_start_2b .. :try_end_34} :catch_77

    move-result-object v4

    .line 388
    :goto_35
    :try_start_35
    iget-object v7, p0, Ljava/net/DatagramSocket;->address:Ljava/net/InetAddress;
    :try_end_37
    .catchall {:try_start_35 .. :try_end_37} :catchall_24

    if-nez v7, :cond_ba

    .line 390
    :try_start_39
    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7, v5}, Ljava/lang/SecurityManager;->checkAccept(Ljava/lang/String;I)V
    :try_end_40
    .catchall {:try_start_39 .. :try_end_40} :catchall_24
    .catch Ljava/lang/SecurityException; {:try_start_39 .. :try_end_40} :catch_a2

    .line 392
    if-nez v0, :cond_43

    .line 393
    const/4 v2, 0x1

    .line 419
    :cond_43
    :goto_43
    if-eqz v0, :cond_6e

    .line 420
    :try_start_45
    invoke-virtual {v6}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v9

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getOffset()I

    move-result v10

    invoke-virtual {v6}, Ljava/net/DatagramPacket;->getLength()I

    move-result v11

    invoke-static {v7, v8, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 422
    invoke-virtual {v6}, Ljava/net/DatagramPacket;->getLength()I

    move-result v7

    invoke-virtual {p1, v7}, Ljava/net/DatagramPacket;->setLength(I)V

    .line 423
    invoke-virtual {v6}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 424
    invoke-virtual {v6}, Ljava/net/DatagramPacket;->getPort()I

    move-result v7

    invoke-virtual {p1, v7}, Ljava/net/DatagramPacket;->setPort(I)V

    .line 426
    :cond_6e
    if-eqz v2, :cond_75

    .line 427
    iget-object v7, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    invoke-virtual {v7, p1}, Ljava/net/DatagramSocketImpl;->receive(Ljava/net/DatagramPacket;)V
    :try_end_75
    .catchall {:try_start_45 .. :try_end_75} :catchall_24

    .line 429
    :cond_75
    monitor-exit p0

    return-void

    .line 375
    :catch_77
    move-exception v7

    move-object v1, v7

    .line 376
    .local v1, e:Ljava/net/SocketException;
    :try_start_79
    invoke-virtual {v1}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object v7

    const-string v8, "The socket does not support the operation"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a1

    .line 378
    new-instance v6, Ljava/net/DatagramPacket;

    .end local v6           #tempPack:Ljava/net/DatagramPacket;
    iget v7, p1, Ljava/net/DatagramPacket;->length:I

    new-array v7, v7, [B

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v8

    invoke-direct {v6, v7, v8}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 380
    .restart local v6       #tempPack:Ljava/net/DatagramPacket;
    iget-object v7, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    invoke-virtual {v7, v6}, Ljava/net/DatagramSocketImpl;->receive(Ljava/net/DatagramPacket;)V

    .line 381
    invoke-virtual {v6}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    .line 382
    invoke-virtual {v6}, Ljava/net/DatagramPacket;->getPort()I

    move-result v5

    .line 383
    const/4 v0, 0x1

    goto :goto_35

    .line 385
    :cond_a1
    throw v1

    .line 396
    .end local v1           #e:Ljava/net/SocketException;
    :catch_a2
    move-exception v7

    move-object v1, v7

    .line 397
    .local v1, e:Ljava/lang/SecurityException;
    if-nez v0, :cond_28

    .line 398
    if-nez v6, :cond_b3

    .line 399
    new-instance v6, Ljava/net/DatagramPacket;

    .end local v6           #tempPack:Ljava/net/DatagramPacket;
    iget v7, p1, Ljava/net/DatagramPacket;->length:I

    new-array v7, v7, [B

    iget v8, p1, Ljava/net/DatagramPacket;->length:I

    invoke-direct {v6, v7, v8}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 402
    .restart local v6       #tempPack:Ljava/net/DatagramPacket;
    :cond_b3
    iget-object v7, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    invoke-virtual {v7, v6}, Ljava/net/DatagramSocketImpl;->receive(Ljava/net/DatagramPacket;)V

    goto/16 :goto_28

    .line 405
    .end local v1           #e:Ljava/lang/SecurityException;
    :cond_ba
    iget v7, p0, Ljava/net/DatagramSocket;->port:I

    if-ne v7, v5, :cond_cb

    iget-object v7, p0, Ljava/net/DatagramSocket;->address:Ljava/net/InetAddress;

    invoke-virtual {v7, v4}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_cb

    .line 406
    if-nez v0, :cond_43

    .line 407
    const/4 v2, 0x1

    goto/16 :goto_43

    .line 410
    :cond_cb
    if-nez v0, :cond_28

    .line 411
    if-nez v6, :cond_da

    .line 412
    new-instance v6, Ljava/net/DatagramPacket;

    .end local v6           #tempPack:Ljava/net/DatagramPacket;
    iget v7, p1, Ljava/net/DatagramPacket;->length:I

    new-array v7, v7, [B

    iget v8, p1, Ljava/net/DatagramPacket;->length:I

    invoke-direct {v6, v7, v8}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 415
    .restart local v6       #tempPack:Ljava/net/DatagramPacket;
    :cond_da
    iget-object v7, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    invoke-virtual {v7, v6}, Ljava/net/DatagramSocketImpl;->receive(Ljava/net/DatagramPacket;)V
    :try_end_df
    .catchall {:try_start_79 .. :try_end_df} :catchall_24

    goto/16 :goto_28
.end method

.method public send(Ljava/net/DatagramPacket;)V
    .registers 6
    .parameter "pack"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 444
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/net/DatagramSocket;->checkClosedAndBind(Z)V

    .line 446
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 447
    .local v0, packAddr:Ljava/net/InetAddress;
    iget-object v2, p0, Ljava/net/DatagramSocket;->address:Ljava/net/InetAddress;

    if-eqz v2, :cond_3a

    .line 448
    if-eqz v0, :cond_2a

    .line 449
    iget-object v2, p0, Ljava/net/DatagramSocket;->address:Ljava/net/InetAddress;

    invoke-virtual {v2, v0}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    iget v2, p0, Ljava/net/DatagramSocket;->port:I

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getPort()I

    move-result v3

    if-eq v2, v3, :cond_34

    .line 450
    :cond_1e
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "K0034"

    invoke-static {v3}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 453
    :cond_2a
    iget-object v2, p0, Ljava/net/DatagramSocket;->address:Ljava/net/InetAddress;

    invoke-virtual {p1, v2}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 454
    iget v2, p0, Ljava/net/DatagramSocket;->port:I

    invoke-virtual {p1, v2}, Ljava/net/DatagramPacket;->setPort(I)V

    .line 475
    :cond_34
    :goto_34
    iget-object v2, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    invoke-virtual {v2, p1}, Ljava/net/DatagramSocketImpl;->send(Ljava/net/DatagramPacket;)V

    .line 476
    :cond_39
    return-void

    .line 458
    :cond_3a
    if-nez v0, :cond_4d

    .line 459
    iget v2, p1, Ljava/net/DatagramPacket;->port:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_39

    .line 461
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "KA019"

    invoke-static {v3}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 465
    :cond_4d
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 466
    .local v1, security:Ljava/lang/SecurityManager;
    if-eqz v1, :cond_34

    .line 467
    invoke-virtual {v0}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 468
    invoke-virtual {v1, v0}, Ljava/lang/SecurityManager;->checkMulticast(Ljava/net/InetAddress;)V

    goto :goto_34

    .line 470
    :cond_5d
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getPort()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    goto :goto_34
.end method

.method public setBroadcast(Z)V
    .registers 5
    .parameter "broadcast"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 815
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/net/DatagramSocket;->checkClosedAndBind(Z)V

    .line 816
    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    const/16 v1, 0x20

    if-eqz p1, :cond_10

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_c
    invoke-virtual {v0, v1, v2}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V

    .line 818
    return-void

    .line 816
    :cond_10
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_c
.end method

.method public declared-synchronized setReceiveBufferSize(I)V
    .registers 5
    .parameter "size"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 512
    monitor-enter p0

    const/4 v0, 0x1

    if-ge p1, v0, :cond_13

    .line 513
    :try_start_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "K0035"

    invoke-static {v1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_10

    .line 512
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0

    .line 515
    :cond_13
    const/4 v0, 0x0

    :try_start_14
    invoke-virtual {p0, v0}, Ljava/net/DatagramSocket;->checkClosedAndBind(Z)V

    .line 516
    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    const/16 v1, 0x1002

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V
    :try_end_22
    .catchall {:try_start_14 .. :try_end_22} :catchall_10

    .line 517
    monitor-exit p0

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
    .line 785
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/net/DatagramSocket;->checkClosedAndBind(Z)V

    .line 786
    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    const/4 v1, 0x4

    if-eqz p1, :cond_f

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_b
    invoke-virtual {v0, v1, v2}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V

    .line 788
    return-void

    .line 786
    :cond_f
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_b
.end method

.method public declared-synchronized setSendBufferSize(I)V
    .registers 5
    .parameter "size"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 491
    monitor-enter p0

    const/4 v0, 0x1

    if-ge p1, v0, :cond_13

    .line 492
    :try_start_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "K0035"

    invoke-static {v1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_10

    .line 491
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0

    .line 494
    :cond_13
    const/4 v0, 0x0

    :try_start_14
    invoke-virtual {p0, v0}, Ljava/net/DatagramSocket;->checkClosedAndBind(Z)V

    .line 495
    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    const/16 v1, 0x1001

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V
    :try_end_22
    .catchall {:try_start_14 .. :try_end_22} :catchall_10

    .line 496
    monitor-exit p0

    return-void
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
    .line 534
    monitor-enter p0

    if-gez p1, :cond_12

    .line 535
    :try_start_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "K0036"

    invoke-static {v1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 534
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0

    .line 537
    :cond_12
    const/4 v0, 0x0

    :try_start_13
    invoke-virtual {p0, v0}, Ljava/net/DatagramSocket;->checkClosedAndBind(Z)V

    .line 538
    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    const/16 v1, 0x1006

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V
    :try_end_21
    .catchall {:try_start_13 .. :try_end_21} :catchall_f

    .line 539
    monitor-exit p0

    return-void
.end method

.method public setTrafficClass(I)V
    .registers 5
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 851
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/net/DatagramSocket;->checkClosedAndBind(Z)V

    .line 852
    if-ltz p1, :cond_a

    const/16 v0, 0xff

    if-le p1, v0, :cond_10

    .line 853
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 855
    :cond_10
    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    const/4 v1, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V

    .line 856
    return-void
.end method
