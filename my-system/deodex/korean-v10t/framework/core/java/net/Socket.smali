.class public Ljava/net/Socket;
.super Ljava/lang/Object;
.source "Socket.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/net/Socket$1;,
        Ljava/net/Socket$ConnectLock;
    }
.end annotation


# static fields
.field static final FLAG_SHUTDOWN:I = 0x8

.field static final MULTICAST_IF:I = 0x1

.field static final MULTICAST_TTL:I = 0x2

.field static final TCP_NODELAY:I = 0x4

.field static factory:Ljava/net/SocketImplFactory;


# instance fields
.field private connectLock:Ljava/lang/Object;

.field impl:Ljava/net/SocketImpl;

.field private isBound:Z

.field private isClosed:Z

.field private isConnected:Z

.field private volatile isCreated:Z

.field private isInputShutdown:Z

.field private isOutputShutdown:Z

.field private proxy:Ljava/net/Proxy;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 71
    invoke-static {}, Lorg/apache/harmony/luni/platform/Platform;->getNetworkSystem()Lorg/apache/harmony/luni/platform/INetworkSystem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/apache/harmony/luni/platform/INetworkSystem;->oneTimeInitialization(Z)V

    .line 72
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-boolean v0, p0, Ljava/net/Socket;->isCreated:Z

    .line 45
    iput-boolean v0, p0, Ljava/net/Socket;->isBound:Z

    .line 47
    iput-boolean v0, p0, Ljava/net/Socket;->isConnected:Z

    .line 49
    iput-boolean v0, p0, Ljava/net/Socket;->isClosed:Z

    .line 51
    iput-boolean v0, p0, Ljava/net/Socket;->isInputShutdown:Z

    .line 53
    iput-boolean v0, p0, Ljava/net/Socket;->isOutputShutdown:Z

    .line 58
    new-instance v0, Ljava/net/Socket$ConnectLock;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/net/Socket$ConnectLock;-><init>(Ljava/net/Socket$1;)V

    iput-object v0, p0, Ljava/net/Socket;->connectLock:Ljava/lang/Object;

    .line 84
    sget-object v0, Ljava/net/Socket;->factory:Ljava/net/SocketImplFactory;

    if-eqz v0, :cond_25

    sget-object v0, Ljava/net/Socket;->factory:Ljava/net/SocketImplFactory;

    invoke-interface {v0}, Ljava/net/SocketImplFactory;->createSocketImpl()Ljava/net/SocketImpl;

    move-result-object v0

    :goto_22
    iput-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    .line 86
    return-void

    .line 84
    :cond_25
    invoke-static {}, Lorg/apache/harmony/luni/net/SocketImplProvider;->getSocketImpl()Ljava/net/SocketImpl;

    move-result-object v0

    goto :goto_22
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 9
    .parameter "dstName"
    .parameter "dstPort"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 154
    invoke-direct {p0}, Ljava/net/Socket;-><init>()V

    .line 155
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 156
    .local v1, dstAddress:Ljava/net/InetAddress;
    invoke-virtual {p0, v1, p2}, Ljava/net/Socket;->checkDestination(Ljava/net/InetAddress;I)V

    .line 157
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Ljava/net/Socket;->startupSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;IZ)V

    .line 158
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/net/InetAddress;I)V
    .registers 11
    .parameter "dstName"
    .parameter "dstPort"
    .parameter "localAddress"
    .parameter "localPort"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 187
    invoke-direct {p0}, Ljava/net/Socket;-><init>()V

    .line 188
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 189
    .local v1, dstAddress:Ljava/net/InetAddress;
    invoke-virtual {p0, v1, p2}, Ljava/net/Socket;->checkDestination(Ljava/net/InetAddress;I)V

    .line 190
    const/4 v5, 0x1

    move-object v0, p0

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Ljava/net/Socket;->startupSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;IZ)V

    .line 191
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZ)V
    .registers 10
    .parameter "hostName"
    .parameter "port"
    .parameter "streaming"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 220
    invoke-direct {p0}, Ljava/net/Socket;-><init>()V

    .line 221
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 222
    .local v1, host:Ljava/net/InetAddress;
    invoke-virtual {p0, v1, p2}, Ljava/net/Socket;->checkDestination(Ljava/net/InetAddress;I)V

    .line 223
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v2, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Ljava/net/Socket;->startupSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;IZ)V

    .line 224
    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;I)V
    .registers 9
    .parameter "dstAddress"
    .parameter "dstPort"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 243
    invoke-direct {p0}, Ljava/net/Socket;-><init>()V

    .line 244
    invoke-virtual {p0, p1, p2}, Ljava/net/Socket;->checkDestination(Ljava/net/InetAddress;I)V

    .line 245
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Ljava/net/Socket;->startupSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;IZ)V

    .line 246
    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;ILjava/net/InetAddress;I)V
    .registers 11
    .parameter "dstAddress"
    .parameter "dstPort"
    .parameter "localAddress"
    .parameter "localPort"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 271
    invoke-direct {p0}, Ljava/net/Socket;-><init>()V

    .line 272
    invoke-virtual {p0, p1, p2}, Ljava/net/Socket;->checkDestination(Ljava/net/InetAddress;I)V

    .line 273
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Ljava/net/Socket;->startupSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;IZ)V

    .line 274
    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;IZ)V
    .registers 10
    .parameter "addr"
    .parameter "port"
    .parameter "streaming"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 301
    invoke-direct {p0}, Ljava/net/Socket;-><init>()V

    .line 302
    invoke-virtual {p0, p1, p2}, Ljava/net/Socket;->checkDestination(Ljava/net/InetAddress;I)V

    .line 303
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Ljava/net/Socket;->startupSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;IZ)V

    .line 304
    return-void
.end method

.method public constructor <init>(Ljava/net/Proxy;)V
    .registers 8
    .parameter "proxy"

    .prologue
    const/4 v4, 0x0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-boolean v4, p0, Ljava/net/Socket;->isCreated:Z

    .line 45
    iput-boolean v4, p0, Ljava/net/Socket;->isBound:Z

    .line 47
    iput-boolean v4, p0, Ljava/net/Socket;->isConnected:Z

    .line 49
    iput-boolean v4, p0, Ljava/net/Socket;->isClosed:Z

    .line 51
    iput-boolean v4, p0, Ljava/net/Socket;->isInputShutdown:Z

    .line 53
    iput-boolean v4, p0, Ljava/net/Socket;->isOutputShutdown:Z

    .line 58
    new-instance v4, Ljava/net/Socket$ConnectLock;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Ljava/net/Socket$ConnectLock;-><init>(Ljava/net/Socket$1;)V

    iput-object v4, p0, Ljava/net/Socket;->connectLock:Ljava/lang/Object;

    .line 113
    if-eqz p1, :cond_22

    sget-object v4, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v5

    if-ne v4, v5, :cond_2e

    .line 115
    :cond_22
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "KA023"

    invoke-static {v5}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 117
    :cond_2e
    invoke-virtual {p1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v1

    check-cast v1, Ljava/net/InetSocketAddress;

    .line 118
    .local v1, address:Ljava/net/InetSocketAddress;
    if-eqz v1, :cond_47

    .line 119
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 121
    .local v0, addr:Ljava/net/InetAddress;
    if-eqz v0, :cond_56

    .line 122
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    .line 126
    .local v2, host:Ljava/lang/String;
    :goto_40
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v3

    .line 127
    .local v3, port:I
    invoke-direct {p0, v2, v3}, Ljava/net/Socket;->checkConnectPermission(Ljava/lang/String;I)V

    .line 129
    .end local v0           #addr:Ljava/net/InetAddress;
    .end local v2           #host:Ljava/lang/String;
    .end local v3           #port:I
    :cond_47
    sget-object v4, Ljava/net/Socket;->factory:Ljava/net/SocketImplFactory;

    if-eqz v4, :cond_5b

    sget-object v4, Ljava/net/Socket;->factory:Ljava/net/SocketImplFactory;

    invoke-interface {v4}, Ljava/net/SocketImplFactory;->createSocketImpl()Ljava/net/SocketImpl;

    move-result-object v4

    :goto_51
    iput-object v4, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    .line 131
    iput-object p1, p0, Ljava/net/Socket;->proxy:Ljava/net/Proxy;

    .line 132
    return-void

    .line 124
    .restart local v0       #addr:Ljava/net/InetAddress;
    :cond_56
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v2

    .restart local v2       #host:Ljava/lang/String;
    goto :goto_40

    .line 129
    .end local v0           #addr:Ljava/net/InetAddress;
    .end local v2           #host:Ljava/lang/String;
    :cond_5b
    invoke-static {p1}, Lorg/apache/harmony/luni/net/SocketImplProvider;->getSocketImpl(Ljava/net/Proxy;)Ljava/net/SocketImpl;

    move-result-object v4

    goto :goto_51
.end method

.method protected constructor <init>(Ljava/net/SocketImpl;)V
    .registers 4
    .parameter "anImpl"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-boolean v0, p0, Ljava/net/Socket;->isCreated:Z

    .line 45
    iput-boolean v0, p0, Ljava/net/Socket;->isBound:Z

    .line 47
    iput-boolean v0, p0, Ljava/net/Socket;->isConnected:Z

    .line 49
    iput-boolean v0, p0, Ljava/net/Socket;->isClosed:Z

    .line 51
    iput-boolean v0, p0, Ljava/net/Socket;->isInputShutdown:Z

    .line 53
    iput-boolean v0, p0, Ljava/net/Socket;->isOutputShutdown:Z

    .line 58
    new-instance v0, Ljava/net/Socket$ConnectLock;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/net/Socket$ConnectLock;-><init>(Ljava/net/Socket$1;)V

    iput-object v0, p0, Ljava/net/Socket;->connectLock:Ljava/lang/Object;

    .line 316
    iput-object p1, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    .line 317
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
    .line 806
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 807
    new-instance v1, Ljava/net/SocketException;

    const-string v2, "K003d"

    invoke-static {v2}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 809
    :cond_12
    if-nez p1, :cond_26

    .line 810
    invoke-virtual {p0}, Ljava/net/Socket;->isConnected()Z

    move-result v1

    if-nez v1, :cond_2a

    .line 811
    new-instance v1, Ljava/net/SocketException;

    const-string v2, "K0320"

    invoke-static {v2}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 821
    :cond_26
    iget-boolean v1, p0, Ljava/net/Socket;->isCreated:Z

    if-eqz v1, :cond_2b

    .line 837
    :cond_2a
    :goto_2a
    return-void

    .line 824
    :cond_2b
    monitor-enter p0

    .line 825
    :try_start_2c
    iget-boolean v1, p0, Ljava/net/Socket;->isCreated:Z

    if-eqz v1, :cond_35

    .line 826
    monitor-exit p0

    goto :goto_2a

    .line 836
    :catchall_32
    move-exception v1

    monitor-exit p0
    :try_end_34
    .catchall {:try_start_2c .. :try_end_34} :catchall_32

    throw v1

    .line 829
    :cond_35
    :try_start_35
    iget-object v1, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/net/SocketImpl;->create(Z)V
    :try_end_3b
    .catchall {:try_start_35 .. :try_end_3b} :catchall_32
    .catch Ljava/net/SocketException; {:try_start_35 .. :try_end_3b} :catch_40
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_3b} :catch_43

    .line 835
    const/4 v1, 0x1

    :try_start_3c
    iput-boolean v1, p0, Ljava/net/Socket;->isCreated:Z

    .line 836
    monitor-exit p0

    goto :goto_2a

    .line 830
    :catch_40
    move-exception v1

    move-object v0, v1

    .line 831
    .local v0, e:Ljava/net/SocketException;
    throw v0

    .line 832
    .end local v0           #e:Ljava/net/SocketException;
    :catch_43
    move-exception v1

    move-object v0, v1

    .line 833
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ljava/net/SocketException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_4f
    .catchall {:try_start_3c .. :try_end_4f} :catchall_32
.end method

.method private checkConnectPermission(Ljava/lang/String;I)V
    .registers 4
    .parameter "hostname"
    .parameter "dstPort"

    .prologue
    .line 346
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 347
    .local v0, security:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_9

    .line 348
    invoke-virtual {v0, p1, p2}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    .line 350
    :cond_9
    return-void
.end method

.method static preferIPv4Stack()Z
    .registers 3

    .prologue
    .line 1181
    new-instance v1, Lorg/apache/harmony/luni/util/PriviAction;

    const-string v2, "java.net.preferIPv4Stack"

    invoke-direct {v1, v2}, Lorg/apache/harmony/luni/util/PriviAction;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1183
    .local v0, result:Ljava/lang/String;
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static declared-synchronized setSocketImplFactory(Ljava/net/SocketImplFactory;)V
    .registers 5
    .parameter "fac"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 577
    const-class v1, Ljava/net/Socket;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 578
    .local v0, security:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_c

    .line 579
    invoke-virtual {v0}, Ljava/lang/SecurityManager;->checkSetFactory()V

    .line 581
    :cond_c
    sget-object v2, Ljava/net/Socket;->factory:Ljava/net/SocketImplFactory;

    if-eqz v2, :cond_1f

    .line 582
    new-instance v2, Ljava/net/SocketException;

    const-string v3, "K0044"

    invoke-static {v3}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1c

    .line 577
    .end local v0           #security:Ljava/lang/SecurityManager;
    :catchall_1c
    move-exception v2

    monitor-exit v1

    throw v2

    .line 584
    .restart local v0       #security:Ljava/lang/SecurityManager;
    :cond_1f
    :try_start_1f
    sput-object p0, Ljava/net/Socket;->factory:Ljava/net/SocketImplFactory;
    :try_end_21
    .catchall {:try_start_1f .. :try_end_21} :catchall_1c

    .line 585
    monitor-exit v1

    return-void
.end method


# virtual methods
.method accepted()V
    .registers 2

    .prologue
    .line 1177
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/Socket;->isConnected:Z

    iput-boolean v0, p0, Ljava/net/Socket;->isBound:Z

    iput-boolean v0, p0, Ljava/net/Socket;->isCreated:Z

    .line 1178
    return-void
.end method

.method public bind(Ljava/net/SocketAddress;)V
    .registers 10
    .parameter "localAddr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 915
    invoke-direct {p0, v5}, Ljava/net/Socket;->checkClosedAndCreate(Z)V

    .line 916
    invoke-virtual {p0}, Ljava/net/Socket;->isBound()Z

    move-result v5

    if-eqz v5, :cond_16

    .line 917
    new-instance v5, Ljava/net/BindException;

    const-string v6, "K0315"

    invoke-static {v6}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/BindException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 920
    :cond_16
    const/4 v4, 0x0

    .line 921
    .local v4, port:I
    sget-object v1, Ljava/net/InetAddress;->ANY:Ljava/net/InetAddress;

    .line 922
    .local v1, addr:Ljava/net/InetAddress;
    if-eqz p1, :cond_4d

    .line 923
    instance-of v5, p1, Ljava/net/InetSocketAddress;

    if-nez v5, :cond_2f

    .line 924
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "K0316"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 927
    :cond_2f
    move-object v0, p1

    check-cast v0, Ljava/net/InetSocketAddress;

    move-object v3, v0

    .line 928
    .local v3, inetAddr:Ljava/net/InetSocketAddress;
    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    if-nez v1, :cond_49

    .line 929
    new-instance v5, Ljava/net/SocketException;

    const-string v6, "K0317"

    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 932
    :cond_49
    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v4

    .line 935
    .end local v3           #inetAddr:Ljava/net/InetSocketAddress;
    :cond_4d
    monitor-enter p0

    .line 937
    :try_start_4e
    iget-object v5, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v5, v1, v4}, Ljava/net/SocketImpl;->bind(Ljava/net/InetAddress;I)V

    .line 938
    const/4 v5, 0x1

    iput-boolean v5, p0, Ljava/net/Socket;->isBound:Z
    :try_end_56
    .catchall {:try_start_4e .. :try_end_56} :catchall_60
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_56} :catch_58

    .line 943
    :try_start_56
    monitor-exit p0

    .line 944
    return-void

    .line 939
    :catch_58
    move-exception v5

    move-object v2, v5

    .line 940
    .local v2, e:Ljava/io/IOException;
    iget-object v5, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v5}, Ljava/net/SocketImpl;->close()V

    .line 941
    throw v2

    .line 943
    .end local v2           #e:Ljava/io/IOException;
    :catchall_60
    move-exception v5

    monitor-exit p0
    :try_end_62
    .catchall {:try_start_56 .. :try_end_62} :catchall_60

    throw v5
.end method

.method checkDestination(Ljava/net/InetAddress;I)V
    .registers 5
    .parameter "destAddr"
    .parameter "dstPort"

    .prologue
    .line 329
    if-ltz p2, :cond_7

    const v0, 0xffff

    if-le p2, v0, :cond_13

    .line 330
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "K0032"

    invoke-static {v1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 333
    :cond_13
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Ljava/net/Socket;->checkConnectPermission(Ljava/lang/String;I)V

    .line 335
    return-void
.end method

.method public declared-synchronized close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 361
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Ljava/net/Socket;->isClosed:Z

    .line 362
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v0}, Ljava/net/SocketImpl;->close()V
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_b

    .line 363
    monitor-exit p0

    return-void

    .line 361
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public connect(Ljava/net/SocketAddress;)V
    .registers 3
    .parameter "remoteAddr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 960
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 961
    return-void
.end method

.method public connect(Ljava/net/SocketAddress;I)V
    .registers 12
    .parameter "remoteAddr"
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 984
    invoke-direct {p0, v5}, Ljava/net/Socket;->checkClosedAndCreate(Z)V

    .line 985
    if-gez p2, :cond_12

    .line 986
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "K0036"

    invoke-static {v6}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 988
    :cond_12
    invoke-virtual {p0}, Ljava/net/Socket;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_24

    .line 989
    new-instance v5, Ljava/net/SocketException;

    const-string v6, "K0079"

    invoke-static {v6}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 991
    :cond_24
    if-nez p1, :cond_32

    .line 992
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "K0318"

    invoke-static {v6}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 995
    :cond_32
    instance-of v5, p1, Ljava/net/InetSocketAddress;

    if-nez v5, :cond_46

    .line 996
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "K0316"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 999
    :cond_46
    move-object v0, p1

    check-cast v0, Ljava/net/InetSocketAddress;

    move-object v3, v0

    .line 1001
    .local v3, inetAddr:Ljava/net/InetSocketAddress;
    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    .local v1, addr:Ljava/net/InetAddress;
    if-nez v1, :cond_5c

    .line 1002
    new-instance v5, Ljava/net/UnknownHostException;

    const-string v6, "K0317"

    invoke-static {v6, p1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1004
    :cond_5c
    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v4

    .line 1006
    .local v4, port:I
    invoke-virtual {p0, v1, v4}, Ljava/net/Socket;->checkDestination(Ljava/net/InetAddress;I)V

    .line 1007
    iget-object v5, p0, Ljava/net/Socket;->connectLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1009
    :try_start_66
    invoke-virtual {p0}, Ljava/net/Socket;->isBound()Z

    move-result v6

    if-nez v6, :cond_7f

    .line 1014
    iget-object v6, p0, Ljava/net/Socket;->proxy:Ljava/net/Proxy;

    invoke-static {v6}, Lorg/apache/harmony/luni/net/NetUtil;->usingSocks(Ljava/net/Proxy;)Z

    move-result v6

    if-nez v6, :cond_7c

    .line 1015
    iget-object v6, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    sget-object v7, Ljava/net/InetAddress;->ANY:Ljava/net/InetAddress;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Ljava/net/SocketImpl;->bind(Ljava/net/InetAddress;I)V

    .line 1017
    :cond_7c
    const/4 v6, 0x1

    iput-boolean v6, p0, Ljava/net/Socket;->isBound:Z

    .line 1019
    :cond_7f
    iget-object v6, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v6, p1, p2}, Ljava/net/SocketImpl;->connect(Ljava/net/SocketAddress;I)V

    .line 1020
    const/4 v6, 0x1

    iput-boolean v6, p0, Ljava/net/Socket;->isConnected:Z
    :try_end_87
    .catchall {:try_start_66 .. :try_end_87} :catchall_91
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_87} :catch_89

    .line 1025
    :try_start_87
    monitor-exit v5

    .line 1026
    return-void

    .line 1021
    :catch_89
    move-exception v6

    move-object v2, v6

    .line 1022
    .local v2, e:Ljava/io/IOException;
    iget-object v6, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v6}, Ljava/net/SocketImpl;->close()V

    .line 1023
    throw v2

    .line 1025
    .end local v2           #e:Ljava/io/IOException;
    :catchall_91
    move-exception v6

    monitor-exit v5
    :try_end_93
    .catchall {:try_start_87 .. :try_end_93} :catchall_91

    throw v6
.end method

.method public getChannel()Ljava/nio/channels/SocketChannel;
    .registers 2

    .prologue
    .line 1194
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInetAddress()Ljava/net/InetAddress;
    .registers 2

    .prologue
    .line 373
    invoke-virtual {p0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-nez v0, :cond_8

    .line 374
    const/4 v0, 0x0

    .line 376
    :goto_7
    return-object v0

    :cond_8
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v0}, Ljava/net/SocketImpl;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    goto :goto_7
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 389
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/net/Socket;->checkClosedAndCreate(Z)V

    .line 390
    invoke-virtual {p0}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 391
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "K0321"

    invoke-static {v1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 393
    :cond_16
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v0}, Ljava/net/SocketImpl;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getKeepAlive()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 407
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/net/Socket;->checkClosedAndCreate(Z)V

    .line 408
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getLocalAddress()Ljava/net/InetAddress;
    .registers 4

    .prologue
    .line 420
    invoke-virtual {p0}, Ljava/net/Socket;->isBound()Z

    move-result v0

    if-nez v0, :cond_9

    .line 421
    sget-object v0, Ljava/net/InetAddress;->ANY:Ljava/net/InetAddress;

    .line 423
    :goto_8
    return-object v0

    :cond_9
    invoke-static {}, Lorg/apache/harmony/luni/platform/Platform;->getNetworkSystem()Lorg/apache/harmony/luni/platform/INetworkSystem;

    move-result-object v0

    iget-object v1, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    iget-object v1, v1, Ljava/net/SocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {}, Ljava/net/InetAddress;->preferIPv6Addresses()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lorg/apache/harmony/luni/platform/INetworkSystem;->getSocketLocalAddress(Ljava/io/FileDescriptor;Z)Ljava/net/InetAddress;

    move-result-object v0

    goto :goto_8
.end method

.method public getLocalPort()I
    .registers 2

    .prologue
    .line 435
    invoke-virtual {p0}, Ljava/net/Socket;->isBound()Z

    move-result v0

    if-nez v0, :cond_8

    .line 436
    const/4 v0, -0x1

    .line 438
    :goto_7
    return v0

    :cond_8
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v0}, Ljava/net/SocketImpl;->getLocalPort()I

    move-result v0

    goto :goto_7
.end method

.method public getLocalSocketAddress()Ljava/net/SocketAddress;
    .registers 4

    .prologue
    .line 848
    invoke-virtual {p0}, Ljava/net/Socket;->isBound()Z

    move-result v0

    if-nez v0, :cond_8

    .line 849
    const/4 v0, 0x0

    .line 851
    :goto_7
    return-object v0

    :cond_8
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/Socket;->getLocalPort()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    goto :goto_7
.end method

.method public getOOBInline()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 1113
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/net/Socket;->checkClosedAndCreate(Z)V

    .line 1114
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    const/16 v1, 0x1003

    invoke-virtual {v0, v1}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 451
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/net/Socket;->checkClosedAndCreate(Z)V

    .line 452
    invoke-virtual {p0}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 453
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "KA00f"

    invoke-static {v1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 455
    :cond_16
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v0}, Ljava/net/SocketImpl;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public getPort()I
    .registers 2

    .prologue
    .line 466
    invoke-virtual {p0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-nez v0, :cond_8

    .line 467
    const/4 v0, 0x0

    .line 469
    :goto_7
    return v0

    :cond_8
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v0}, Ljava/net/SocketImpl;->getPort()I

    move-result v0

    goto :goto_7
.end method

.method public declared-synchronized getReceiveBufferSize()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 497
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    invoke-direct {p0, v0}, Ljava/net/Socket;->checkClosedAndCreate(Z)V

    .line 498
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    const/16 v1, 0x1002

    invoke-virtual {v0, v1}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_12
    .catchall {:try_start_2 .. :try_end_12} :catchall_15

    move-result v0

    monitor-exit p0

    return v0

    .line 497
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getRemoteSocketAddress()Ljava/net/SocketAddress;
    .registers 4

    .prologue
    .line 862
    invoke-virtual {p0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-nez v0, :cond_8

    .line 863
    const/4 v0, 0x0

    .line 865
    :goto_7
    return-object v0

    :cond_8
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/Socket;->getPort()I

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
    .line 1079
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/net/Socket;->checkClosedAndCreate(Z)V

    .line 1080
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

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
    .line 511
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    invoke-direct {p0, v0}, Ljava/net/Socket;->checkClosedAndCreate(Z)V

    .line 512
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_12
    .catchall {:try_start_2 .. :try_end_12} :catchall_15

    move-result v0

    monitor-exit p0

    return v0

    .line 511
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSoLinger()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 483
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/net/Socket;->checkClosedAndCreate(Z)V

    .line 484
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public declared-synchronized getSoTimeout()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 527
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    invoke-direct {p0, v0}, Ljava/net/Socket;->checkClosedAndCreate(Z)V

    .line 528
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    const/16 v1, 0x1006

    invoke-virtual {v0, v1}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_12
    .catchall {:try_start_2 .. :try_end_12} :catchall_15

    move-result v0

    monitor-exit p0

    return v0

    .line 527
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getTcpNoDelay()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 542
    invoke-direct {p0, v1}, Ljava/net/Socket;->checkClosedAndCreate(Z)V

    .line 543
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v0, v1}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getTrafficClass()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 1149
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/net/Socket;->checkClosedAndCreate(Z)V

    .line 1150
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

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
    .line 876
    iget-boolean v0, p0, Ljava/net/Socket;->isBound:Z

    return v0
.end method

.method public isClosed()Z
    .registers 2

    .prologue
    .line 896
    iget-boolean v0, p0, Ljava/net/Socket;->isClosed:Z

    return v0
.end method

.method public isConnected()Z
    .registers 2

    .prologue
    .line 886
    iget-boolean v0, p0, Ljava/net/Socket;->isConnected:Z

    return v0
.end method

.method public isInputShutdown()Z
    .registers 2

    .prologue
    .line 1037
    iget-boolean v0, p0, Ljava/net/Socket;->isInputShutdown:Z

    return v0
.end method

.method public isOutputShutdown()Z
    .registers 2

    .prologue
    .line 1049
    iget-boolean v0, p0, Ljava/net/Socket;->isOutputShutdown:Z

    return v0
.end method

.method public sendUrgentData(I)V
    .registers 4
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1164
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v0}, Ljava/net/SocketImpl;->supportsUrgentData()Z

    move-result v0

    if-nez v0, :cond_14

    .line 1165
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "K0333"

    invoke-static {v1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1167
    :cond_14
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v0, p1}, Ljava/net/SocketImpl;->sendUrgentData(I)V

    .line 1168
    return-void
.end method

.method public setKeepAlive(Z)V
    .registers 5
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 558
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    if-eqz v0, :cond_13

    .line 559
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/net/Socket;->checkClosedAndCreate(Z)V

    .line 560
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    const/16 v1, 0x8

    if-eqz p1, :cond_14

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_10
    invoke-virtual {v0, v1, v2}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    .line 563
    :cond_13
    return-void

    .line 560
    :cond_14
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_10
.end method

.method public setOOBInline(Z)V
    .registers 5
    .parameter "oobinline"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 1097
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/net/Socket;->checkClosedAndCreate(Z)V

    .line 1098
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    const/16 v1, 0x1003

    if-eqz p1, :cond_10

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_c
    invoke-virtual {v0, v1, v2}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    .line 1100
    return-void

    .line 1098
    :cond_10
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_c
.end method

.method public setPerformancePreferences(III)V
    .registers 4
    .parameter "connectionTime"
    .parameter "latency"
    .parameter "bandwidth"

    .prologue
    .line 1216
    return-void
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
    const/4 v1, 0x1

    .line 621
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_3
    invoke-direct {p0, v0}, Ljava/net/Socket;->checkClosedAndCreate(Z)V

    .line 622
    if-ge p1, v1, :cond_17

    .line 623
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "K0035"

    invoke-static {v1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_14

    .line 621
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0

    .line 625
    :cond_17
    :try_start_17
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    const/16 v1, 0x1002

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V
    :try_end_22
    .catchall {:try_start_17 .. :try_end_22} :catchall_14

    .line 626
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
    .line 1063
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/net/Socket;->checkClosedAndCreate(Z)V

    .line 1064
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    const/4 v1, 0x4

    if-eqz p1, :cond_f

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_b
    invoke-virtual {v0, v1, v2}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    .line 1066
    return-void

    .line 1064
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
    const/4 v1, 0x1

    .line 600
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_3
    invoke-direct {p0, v0}, Ljava/net/Socket;->checkClosedAndCreate(Z)V

    .line 601
    if-ge p1, v1, :cond_17

    .line 602
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "K0035"

    invoke-static {v1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_14

    .line 600
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0

    .line 604
    :cond_17
    :try_start_17
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    const/16 v1, 0x1001

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V
    :try_end_22
    .catchall {:try_start_17 .. :try_end_22} :catchall_14

    .line 605
    monitor-exit p0

    return-void
.end method

.method public setSoLinger(ZI)V
    .registers 6
    .parameter "on"
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x80

    .line 643
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/net/Socket;->checkClosedAndCreate(Z)V

    .line 644
    if-eqz p1, :cond_16

    if-gez p2, :cond_16

    .line 645
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "K0045"

    invoke-static {v1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 652
    :cond_16
    if-eqz p1, :cond_2a

    .line 653
    const v0, 0xffff

    if-le p2, v0, :cond_20

    .line 654
    const p2, 0xffff

    .line 656
    :cond_20
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    .line 661
    :goto_29
    return-void

    .line 658
    :cond_2a
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2, v1}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    goto :goto_29
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
    .line 678
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    invoke-direct {p0, v0}, Ljava/net/Socket;->checkClosedAndCreate(Z)V

    .line 679
    if-gez p1, :cond_16

    .line 680
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "K0036"

    invoke-static {v1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_13
    .catchall {:try_start_2 .. :try_end_13} :catchall_13

    .line 678
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0

    .line 682
    :cond_16
    :try_start_16
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    const/16 v1, 0x1006

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V
    :try_end_21
    .catchall {:try_start_16 .. :try_end_21} :catchall_13

    .line 683
    monitor-exit p0

    return-void
.end method

.method public setTcpNoDelay(Z)V
    .registers 5
    .parameter "on"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 696
    invoke-direct {p0, v2}, Ljava/net/Socket;->checkClosedAndCreate(Z)V

    .line 697
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    .line 698
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
    .line 1132
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/net/Socket;->checkClosedAndCreate(Z)V

    .line 1133
    if-ltz p1, :cond_a

    const/16 v0, 0xff

    if-le p1, v0, :cond_10

    .line 1134
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1136
    :cond_10
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    const/4 v1, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    .line 1137
    return-void
.end method

.method public shutdownInput()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 770
    invoke-virtual {p0}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 771
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "K0321"

    invoke-static {v1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 773
    :cond_12
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/net/Socket;->checkClosedAndCreate(Z)V

    .line 774
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v0}, Ljava/net/SocketImpl;->shutdownInput()V

    .line 775
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/Socket;->isInputShutdown:Z

    .line 776
    return-void
.end method

.method public shutdownOutput()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 790
    invoke-virtual {p0}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 791
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "KA00f"

    invoke-static {v1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 793
    :cond_12
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/net/Socket;->checkClosedAndCreate(Z)V

    .line 794
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v0}, Ljava/net/SocketImpl;->shutdownOutput()V

    .line 795
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/Socket;->isOutputShutdown:Z

    .line 796
    return-void
.end method

.method startupSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;IZ)V
    .registers 10
    .parameter "dstAddress"
    .parameter "dstPort"
    .parameter "localAddress"
    .parameter "localPort"
    .parameter "streaming"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 720
    if-ltz p4, :cond_7

    const v2, 0xffff

    if-le p4, v2, :cond_13

    .line 721
    :cond_7
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "K0046"

    invoke-static {v3}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 724
    :cond_13
    if-nez p3, :cond_3d

    sget-object v2, Ljava/net/InetAddress;->ANY:Ljava/net/InetAddress;

    move-object v0, v2

    .line 726
    .local v0, addr:Ljava/net/InetAddress;
    :goto_18
    monitor-enter p0

    .line 727
    :try_start_19
    iget-object v2, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v2, p5}, Ljava/net/SocketImpl;->create(Z)V

    .line 728
    const/4 v2, 0x1

    iput-boolean v2, p0, Ljava/net/Socket;->isCreated:Z
    :try_end_21
    .catchall {:try_start_19 .. :try_end_21} :catchall_47

    .line 730
    if-eqz p5, :cond_2b

    :try_start_23
    iget-object v2, p0, Ljava/net/Socket;->proxy:Ljava/net/Proxy;

    invoke-static {v2}, Lorg/apache/harmony/luni/net/NetUtil;->usingSocks(Ljava/net/Proxy;)Z

    move-result v2

    if-nez v2, :cond_30

    .line 731
    :cond_2b
    iget-object v2, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v2, v0, p4}, Ljava/net/SocketImpl;->bind(Ljava/net/InetAddress;I)V

    .line 733
    :cond_30
    const/4 v2, 0x1

    iput-boolean v2, p0, Ljava/net/Socket;->isBound:Z

    .line 734
    iget-object v2, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v2, p1, p2}, Ljava/net/SocketImpl;->connect(Ljava/net/InetAddress;I)V

    .line 735
    const/4 v2, 0x1

    iput-boolean v2, p0, Ljava/net/Socket;->isConnected:Z
    :try_end_3b
    .catchall {:try_start_23 .. :try_end_3b} :catchall_47
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_3b} :catch_3f

    .line 740
    :try_start_3b
    monitor-exit p0

    .line 741
    return-void

    .end local v0           #addr:Ljava/net/InetAddress;
    :cond_3d
    move-object v0, p3

    .line 724
    goto :goto_18

    .line 736
    .restart local v0       #addr:Ljava/net/InetAddress;
    :catch_3f
    move-exception v2

    move-object v1, v2

    .line 737
    .local v1, e:Ljava/io/IOException;
    iget-object v2, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v2}, Ljava/net/SocketImpl;->close()V

    .line 738
    throw v1

    .line 740
    .end local v1           #e:Ljava/io/IOException;
    :catchall_47
    move-exception v2

    monitor-exit p0
    :try_end_49
    .catchall {:try_start_3b .. :try_end_49} :catchall_47

    throw v2
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 752
    invoke-virtual {p0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-nez v0, :cond_9

    .line 753
    const-string v0, "Socket[unconnected]"

    .line 755
    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v0}, Ljava/net/SocketImpl;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method
