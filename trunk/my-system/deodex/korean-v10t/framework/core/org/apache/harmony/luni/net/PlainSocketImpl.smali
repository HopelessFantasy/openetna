.class Lorg/apache/harmony/luni/net/PlainSocketImpl;
.super Ljava/net/SocketImpl;
.source "PlainSocketImpl.java"


# static fields
.field static final FLAG_SHUTDOWN:I = 0x8

.field static final MULTICAST_IF:I = 0x1

.field static final MULTICAST_TTL:I = 0x2

.field static final TCP_NODELAY:I = 0x4

.field private static fdField:Ljava/lang/reflect/Field;

.field private static lastConnectedAddress:Ljava/net/InetAddress;

.field private static lastConnectedPort:I

.field private static localportField:Ljava/lang/reflect/Field;


# instance fields
.field protected netImpl:Lorg/apache/harmony/luni/platform/INetworkSystem;

.field proxy:Ljava/net/Proxy;

.field public receiveTimeout:I

.field public shutdownInput:Z

.field public streaming:Z

.field private tcpNoDelay:Z

.field private trafficClass:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 88
    invoke-direct {p0}, Ljava/net/SocketImpl;-><init>()V

    .line 68
    iput-boolean v1, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->tcpNoDelay:Z

    .line 77
    invoke-static {}, Lorg/apache/harmony/luni/platform/Platform;->getNetworkSystem()Lorg/apache/harmony/luni/platform/INetworkSystem;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->netImpl:Lorg/apache/harmony/luni/platform/INetworkSystem;

    .line 79
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->receiveTimeout:I

    .line 81
    iput-boolean v1, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->streaming:Z

    .line 89
    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    .line 90
    return-void
.end method

.method private connect(Ljava/net/InetAddress;II)V
    .registers 11
    .parameter "anAddr"
    .parameter "aPort"
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 218
    invoke-virtual {p1}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v0

    move-object v5, v0

    .line 222
    .local v5, normalAddr:Ljava/net/InetAddress;
    :goto_b
    :try_start_b
    iget-boolean v0, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->streaming:Z

    if-eqz v0, :cond_67

    .line 223
    iget-object v0, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->proxy:Ljava/net/Proxy;

    invoke-static {v0}, Lorg/apache/harmony/luni/net/NetUtil;->usingSocks(Ljava/net/Proxy;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 224
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/harmony/luni/net/PlainSocketImpl;->socksConnect(Ljava/net/InetAddress;II)V
    :try_end_1b
    .catch Ljava/net/ConnectException; {:try_start_b .. :try_end_1b} :catch_2e

    .line 240
    :goto_1b
    iput-object v5, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->address:Ljava/net/InetAddress;

    .line 241
    iput p2, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->port:I

    .line 242
    return-void

    .end local v5           #normalAddr:Ljava/net/InetAddress;
    :cond_20
    move-object v5, p1

    .line 218
    goto :goto_b

    .line 226
    .restart local v5       #normalAddr:Ljava/net/InetAddress;
    :cond_22
    if-nez p3, :cond_5b

    .line 227
    :try_start_24
    iget-object v0, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->netImpl:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v1, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    iget v2, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->trafficClass:I

    invoke-interface {v0, v1, v2, v5, p2}, Lorg/apache/harmony/luni/platform/INetworkSystem;->connect(Ljava/io/FileDescriptor;ILjava/net/InetAddress;I)I
    :try_end_2d
    .catch Ljava/net/ConnectException; {:try_start_24 .. :try_end_2d} :catch_2e

    goto :goto_1b

    .line 236
    :catch_2e
    move-exception v0

    move-object v6, v0

    .line 237
    .local v6, e:Ljava/net/ConnectException;
    new-instance v0, Ljava/net/ConnectException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/net/ConnectException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 229
    .end local v6           #e:Ljava/net/ConnectException;
    :cond_5b
    :try_start_5b
    iget-object v0, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->netImpl:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v1, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    iget v4, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->trafficClass:I

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Lorg/apache/harmony/luni/platform/INetworkSystem;->connectStreamWithTimeoutSocket(Ljava/io/FileDescriptor;IIILjava/net/InetAddress;)V

    goto :goto_1b

    .line 234
    :cond_67
    iget-object v0, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->netImpl:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v1, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    iget v2, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->trafficClass:I

    invoke-interface {v0, v1, p2, v2, v5}, Lorg/apache/harmony/luni/platform/INetworkSystem;->connectDatagram(Ljava/io/FileDescriptor;IILjava/net/InetAddress;)V
    :try_end_70
    .catch Ljava/net/ConnectException; {:try_start_5b .. :try_end_70} :catch_2e

    goto :goto_1b
.end method

.method private getSocketImplField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 3
    .parameter "fieldName"

    .prologue
    .line 137
    new-instance v0, Lorg/apache/harmony/luni/net/PlainSocketImpl$1;

    invoke-direct {v0, p0, p1}, Lorg/apache/harmony/luni/net/PlainSocketImpl$1;-><init>(Lorg/apache/harmony/luni/net/PlainSocketImpl;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/reflect/Field;

    return-object p0
.end method

.method private setLocalport(I)V
    .registers 2
    .parameter "localport"

    .prologue
    .line 542
    iput p1, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->localport:I

    .line 543
    return-void
.end method

.method private socksBind()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 446
    :try_start_0
    iget-object v3, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->netImpl:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v4, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    iget v5, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->trafficClass:I

    invoke-direct {p0}, Lorg/apache/harmony/luni/net/PlainSocketImpl;->socksGetServerAddress()Ljava/net/InetAddress;

    move-result-object v6

    invoke-direct {p0}, Lorg/apache/harmony/luni/net/PlainSocketImpl;->socksGetServerPort()I

    move-result v7

    invoke-interface {v3, v4, v5, v6, v7}, Lorg/apache/harmony/luni/platform/INetworkSystem;->connect(Ljava/io/FileDescriptor;ILjava/net/InetAddress;I)I
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_21

    .line 454
    sget-object v3, Lorg/apache/harmony/luni/net/PlainSocketImpl;->lastConnectedAddress:Ljava/net/InetAddress;

    if-nez v3, :cond_2f

    .line 455
    new-instance v3, Ljava/net/SocketException;

    const-string v4, "K0040"

    invoke-static {v4}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 448
    :catch_21
    move-exception v3

    move-object v0, v3

    .line 449
    .local v0, e:Ljava/lang/Exception;
    new-instance v3, Ljava/io/IOException;

    const-string v4, "K003f"

    invoke-static {v4, v0}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 459
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2f
    const/4 v3, 0x2

    sget-object v4, Lorg/apache/harmony/luni/net/PlainSocketImpl;->lastConnectedAddress:Ljava/net/InetAddress;

    sget v5, Lorg/apache/harmony/luni/net/PlainSocketImpl;->lastConnectedPort:I

    invoke-direct {p0, v3, v4, v5}, Lorg/apache/harmony/luni/net/PlainSocketImpl;->socksSendRequest(ILjava/net/InetAddress;I)V

    .line 461
    invoke-direct {p0}, Lorg/apache/harmony/luni/net/PlainSocketImpl;->socksReadReply()Lorg/apache/harmony/luni/net/Socks4Message;

    move-result-object v1

    .line 463
    .local v1, reply:Lorg/apache/harmony/luni/net/Socks4Message;
    invoke-virtual {v1}, Lorg/apache/harmony/luni/net/Socks4Message;->getCommandOrResult()I

    move-result v3

    const/16 v4, 0x5a

    if-eq v3, v4, :cond_51

    .line 464
    new-instance v3, Ljava/io/IOException;

    invoke-virtual {v1}, Lorg/apache/harmony/luni/net/Socks4Message;->getCommandOrResult()I

    move-result v4

    invoke-virtual {v1, v4}, Lorg/apache/harmony/luni/net/Socks4Message;->getErrorString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 470
    :cond_51
    invoke-virtual {v1}, Lorg/apache/harmony/luni/net/Socks4Message;->getIP()I

    move-result v3

    if-nez v3, :cond_64

    .line 471
    invoke-direct {p0}, Lorg/apache/harmony/luni/net/PlainSocketImpl;->socksGetServerAddress()Ljava/net/InetAddress;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->address:Ljava/net/InetAddress;

    .line 480
    :goto_5d
    invoke-virtual {v1}, Lorg/apache/harmony/luni/net/Socks4Message;->getPort()I

    move-result v3

    iput v3, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->localport:I

    .line 481
    return-void

    .line 476
    :cond_64
    const/4 v3, 0x4

    new-array v2, v3, [B

    .line 477
    .local v2, replyBytes:[B
    invoke-virtual {v1}, Lorg/apache/harmony/luni/net/Socks4Message;->getIP()I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Lorg/apache/harmony/luni/net/NetUtil;->intToBytes(I[BI)V

    .line 478
    invoke-static {v2}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->address:Ljava/net/InetAddress;

    goto :goto_5d
.end method

.method private socksConnect(Ljava/net/InetAddress;II)V
    .registers 11
    .parameter "applicationServerAddress"
    .parameter "applicationServerPort"
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 379
    if-nez p3, :cond_1b

    .line 380
    :try_start_2
    iget-object v0, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->netImpl:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v1, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    iget v2, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->trafficClass:I

    invoke-direct {p0}, Lorg/apache/harmony/luni/net/PlainSocketImpl;->socksGetServerAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-direct {p0}, Lorg/apache/harmony/luni/net/PlainSocketImpl;->socksGetServerPort()I

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/apache/harmony/luni/platform/INetworkSystem;->connect(Ljava/io/FileDescriptor;ILjava/net/InetAddress;I)I
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_13} :catch_2e

    .line 392
    :goto_13
    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/luni/net/PlainSocketImpl;->socksRequestConnection(Ljava/net/InetAddress;I)V

    .line 394
    sput-object p1, Lorg/apache/harmony/luni/net/PlainSocketImpl;->lastConnectedAddress:Ljava/net/InetAddress;

    .line 395
    sput p2, Lorg/apache/harmony/luni/net/PlainSocketImpl;->lastConnectedPort:I

    .line 396
    return-void

    .line 383
    :cond_1b
    :try_start_1b
    iget-object v0, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->netImpl:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v1, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-direct {p0}, Lorg/apache/harmony/luni/net/PlainSocketImpl;->socksGetServerPort()I

    move-result v2

    iget v4, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->trafficClass:I

    invoke-direct {p0}, Lorg/apache/harmony/luni/net/PlainSocketImpl;->socksGetServerAddress()Ljava/net/InetAddress;

    move-result-object v5

    move v3, p3

    invoke-interface/range {v0 .. v5}, Lorg/apache/harmony/luni/platform/INetworkSystem;->connectStreamWithTimeoutSocket(Ljava/io/FileDescriptor;IIILjava/net/InetAddress;)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_2d} :catch_2e

    goto :goto_13

    .line 388
    :catch_2e
    move-exception v0

    move-object v6, v0

    .line 389
    .local v6, e:Ljava/lang/Exception;
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "K003e"

    invoke-static {v1, v6}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private socksGetServerAddress()Ljava/net/InetAddress;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 362
    iget-object v3, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->proxy:Ljava/net/Proxy;

    invoke-virtual {v3}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    .line 363
    .local v0, addr:Ljava/net/InetSocketAddress;
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v2

    .line 364
    .local v2, proxyName:Ljava/lang/String;
    if-nez v2, :cond_16

    .line 365
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    .line 368
    :cond_16
    iget-object v3, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->netImpl:Lorg/apache/harmony/luni/platform/INetworkSystem;

    invoke-static {}, Lorg/apache/harmony/luni/net/NetUtil;->preferIPv6Addresses()Z

    move-result v4

    invoke-interface {v3, v2, v4}, Lorg/apache/harmony/luni/platform/INetworkSystem;->getHostByName(Ljava/lang/String;Z)Ljava/net/InetAddress;

    move-result-object v1

    .line 370
    .local v1, anAddr:Ljava/net/InetAddress;
    return-object v1
.end method

.method private socksGetServerPort()I
    .registers 3

    .prologue
    .line 349
    iget-object v1, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->proxy:Ljava/net/Proxy;

    invoke-virtual {v1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    .line 350
    .local v0, addr:Ljava/net/InetSocketAddress;
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v1

    return v1
.end method

.method private socksReadReply()Lorg/apache/harmony/luni/net/Socks4Message;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x8

    .line 501
    new-instance v2, Lorg/apache/harmony/luni/net/Socks4Message;

    invoke-direct {v2}, Lorg/apache/harmony/luni/net/Socks4Message;-><init>()V

    .line 502
    .local v2, reply:Lorg/apache/harmony/luni/net/Socks4Message;
    const/4 v0, 0x0

    .line 503
    .local v0, bytesRead:I
    :goto_8
    if-ge v0, v6, :cond_1b

    .line 504
    invoke-virtual {p0}, Lorg/apache/harmony/luni/net/PlainSocketImpl;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v2}, Lorg/apache/harmony/luni/net/Socks4Message;->getBytes()[B

    move-result-object v4

    sub-int v5, v6, v0

    invoke-virtual {v3, v4, v0, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 506
    .local v1, count:I
    const/4 v3, -0x1

    if-ne v3, v1, :cond_29

    .line 511
    .end local v1           #count:I
    :cond_1b
    if-eq v6, v0, :cond_2b

    .line 512
    new-instance v3, Ljava/net/SocketException;

    const-string v4, "KA011"

    invoke-static {v4}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 509
    .restart local v1       #count:I
    :cond_29
    add-int/2addr v0, v1

    .line 510
    goto :goto_8

    .line 514
    .end local v1           #count:I
    :cond_2b
    return-object v2
.end method

.method private socksRequestConnection(Ljava/net/InetAddress;I)V
    .registers 6
    .parameter "applicationServerAddress"
    .parameter "applicationServerPort"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 404
    const/4 v1, 0x1

    invoke-direct {p0, v1, p1, p2}, Lorg/apache/harmony/luni/net/PlainSocketImpl;->socksSendRequest(ILjava/net/InetAddress;I)V

    .line 406
    invoke-direct {p0}, Lorg/apache/harmony/luni/net/PlainSocketImpl;->socksReadReply()Lorg/apache/harmony/luni/net/Socks4Message;

    move-result-object v0

    .line 407
    .local v0, reply:Lorg/apache/harmony/luni/net/Socks4Message;
    invoke-virtual {v0}, Lorg/apache/harmony/luni/net/Socks4Message;->getCommandOrResult()I

    move-result v1

    const/16 v2, 0x5a

    if-eq v1, v2, :cond_1e

    .line 408
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/net/Socks4Message;->getCommandOrResult()I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/apache/harmony/luni/net/Socks4Message;->getErrorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 411
    :cond_1e
    return-void
.end method

.method private socksSendRequest(ILjava/net/InetAddress;I)V
    .registers 9
    .parameter "command"
    .parameter "address"
    .parameter "port"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 488
    new-instance v0, Lorg/apache/harmony/luni/net/Socks4Message;

    invoke-direct {v0}, Lorg/apache/harmony/luni/net/Socks4Message;-><init>()V

    .line 489
    .local v0, request:Lorg/apache/harmony/luni/net/Socks4Message;
    invoke-virtual {v0, p1}, Lorg/apache/harmony/luni/net/Socks4Message;->setCommandOrResult(I)V

    .line 490
    invoke-virtual {v0, p3}, Lorg/apache/harmony/luni/net/Socks4Message;->setPort(I)V

    .line 491
    invoke-virtual {p2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/harmony/luni/net/Socks4Message;->setIP([B)V

    .line 492
    const-string v1, "default"

    invoke-virtual {v0, v1}, Lorg/apache/harmony/luni/net/Socks4Message;->setUserId(Ljava/lang/String;)V

    .line 494
    invoke-virtual {p0}, Lorg/apache/harmony/luni/net/PlainSocketImpl;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/harmony/luni/net/Socks4Message;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0}, Lorg/apache/harmony/luni/net/Socks4Message;->getLength()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 495
    return-void
.end method


# virtual methods
.method protected accept(Ljava/net/SocketImpl;)V
    .registers 10
    .parameter "newImpl"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    iget-object v4, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->proxy:Ljava/net/Proxy;

    invoke-static {v4}, Lorg/apache/harmony/luni/net/NetUtil;->usingSocks(Ljava/net/Proxy;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 95
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/luni/net/PlainSocketImpl;

    move-object v4, v0

    invoke-direct {v4}, Lorg/apache/harmony/luni/net/PlainSocketImpl;->socksBind()V

    .line 96
    check-cast p1, Lorg/apache/harmony/luni/net/PlainSocketImpl;

    .end local p1
    invoke-virtual {p1}, Lorg/apache/harmony/luni/net/PlainSocketImpl;->socksAccept()V

    .line 131
    :goto_14
    return-void

    .line 101
    .restart local p1
    :cond_15
    :try_start_15
    instance-of v4, p1, Lorg/apache/harmony/luni/net/PlainSocketImpl;

    if-eqz v4, :cond_3e

    .line 102
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/luni/net/PlainSocketImpl;

    move-object v3, v0

    .line 105
    .local v3, newPlainSocketImpl:Lorg/apache/harmony/luni/net/PlainSocketImpl;
    iget-object v4, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->netImpl:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v5, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v3}, Lorg/apache/harmony/luni/net/PlainSocketImpl;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    iget v7, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->receiveTimeout:I

    invoke-interface {v4, v5, p1, v6, v7}, Lorg/apache/harmony/luni/platform/INetworkSystem;->accept(Ljava/io/FileDescriptor;Ljava/net/SocketImpl;Ljava/io/FileDescriptor;I)V

    .line 108
    invoke-virtual {p0}, Lorg/apache/harmony/luni/net/PlainSocketImpl;->getLocalPort()I

    move-result v4

    invoke-direct {v3, v4}, Lorg/apache/harmony/luni/net/PlainSocketImpl;->setLocalport(I)V
    :try_end_31
    .catch Ljava/io/InterruptedIOException; {:try_start_15 .. :try_end_31} :catch_32
    .catch Ljava/lang/IllegalAccessException; {:try_start_15 .. :try_end_31} :catch_71

    goto :goto_14

    .line 126
    .end local v3           #newPlainSocketImpl:Lorg/apache/harmony/luni/net/PlainSocketImpl;
    :catch_32
    move-exception v4

    move-object v1, v4

    .line 127
    .local v1, e:Ljava/io/InterruptedIOException;
    new-instance v4, Ljava/net/SocketTimeoutException;

    invoke-virtual {v1}, Ljava/io/InterruptedIOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 112
    .end local v1           #e:Ljava/io/InterruptedIOException;
    :cond_3e
    :try_start_3e
    sget-object v4, Lorg/apache/harmony/luni/net/PlainSocketImpl;->fdField:Ljava/lang/reflect/Field;

    if-nez v4, :cond_4a

    .line 113
    const-string v4, "fd"

    invoke-direct {p0, v4}, Lorg/apache/harmony/luni/net/PlainSocketImpl;->getSocketImplField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    sput-object v4, Lorg/apache/harmony/luni/net/PlainSocketImpl;->fdField:Ljava/lang/reflect/Field;

    .line 115
    :cond_4a
    sget-object v4, Lorg/apache/harmony/luni/net/PlainSocketImpl;->fdField:Ljava/lang/reflect/Field;

    invoke-virtual {v4, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/FileDescriptor;

    .line 118
    .local v2, newFd:Ljava/io/FileDescriptor;
    iget-object v4, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->netImpl:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v5, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    iget v6, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->receiveTimeout:I

    invoke-interface {v4, v5, p1, v2, v6}, Lorg/apache/harmony/luni/platform/INetworkSystem;->accept(Ljava/io/FileDescriptor;Ljava/net/SocketImpl;Ljava/io/FileDescriptor;I)V

    .line 121
    sget-object v4, Lorg/apache/harmony/luni/net/PlainSocketImpl;->localportField:Ljava/lang/reflect/Field;

    if-nez v4, :cond_67

    .line 122
    const-string v4, "localport"

    invoke-direct {p0, v4}, Lorg/apache/harmony/luni/net/PlainSocketImpl;->getSocketImplField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    sput-object v4, Lorg/apache/harmony/luni/net/PlainSocketImpl;->localportField:Ljava/lang/reflect/Field;

    .line 124
    :cond_67
    sget-object v4, Lorg/apache/harmony/luni/net/PlainSocketImpl;->localportField:Ljava/lang/reflect/Field;

    invoke-virtual {p0}, Lorg/apache/harmony/luni/net/PlainSocketImpl;->getLocalPort()I

    move-result v5

    invoke-virtual {v4, p1, v5}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_70
    .catch Ljava/io/InterruptedIOException; {:try_start_3e .. :try_end_70} :catch_32
    .catch Ljava/lang/IllegalAccessException; {:try_start_3e .. :try_end_70} :catch_71

    goto :goto_14

    .line 128
    .end local v2           #newFd:Ljava/io/FileDescriptor;
    :catch_71
    move-exception v4

    goto :goto_14
.end method

.method protected declared-synchronized available()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 155
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->shutdownInput:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_12

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    .line 156
    const/4 v0, 0x0

    .line 158
    :goto_7
    monitor-exit p0

    return v0

    :cond_9
    :try_start_9
    iget-object v0, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->netImpl:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v1, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-interface {v0, v1}, Lorg/apache/harmony/luni/platform/INetworkSystem;->availableStream(Ljava/io/FileDescriptor;)I
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_12

    move-result v0

    goto :goto_7

    .line 155
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected bind(Ljava/net/InetAddress;I)V
    .registers 6
    .parameter "anAddr"
    .parameter "aPort"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 163
    iget-object v0, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->netImpl:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v1, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-interface {v0, v1, p2, p1}, Lorg/apache/harmony/luni/platform/INetworkSystem;->bind(Ljava/io/FileDescriptor;ILjava/net/InetAddress;)V

    .line 165
    iput-object p1, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->address:Ljava/net/InetAddress;

    .line 166
    if-eqz p2, :cond_e

    .line 167
    iput p2, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->localport:I

    .line 172
    :goto_d
    return-void

    .line 169
    :cond_e
    iget-object v0, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->netImpl:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v1, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {}, Lorg/apache/harmony/luni/net/NetUtil;->preferIPv6Addresses()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lorg/apache/harmony/luni/platform/INetworkSystem;->getSocketLocalPort(Ljava/io/FileDescriptor;Z)I

    move-result v0

    iput v0, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->localport:I

    goto :goto_d
.end method

.method protected close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 176
    iget-object v0, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    monitor-enter v0

    .line 177
    :try_start_3
    iget-object v1, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->valid()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 178
    iget-object v1, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->netImpl:Lorg/apache/harmony/luni/platform/INetworkSystem;

    invoke-interface {v1}, Lorg/apache/harmony/luni/platform/INetworkSystem;->getSocketFlags()I
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_28

    move-result v1

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_18

    .line 180
    :try_start_15
    invoke-virtual {p0}, Lorg/apache/harmony/luni/net/PlainSocketImpl;->shutdownOutput()V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_28
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_18} :catch_2b

    .line 184
    :cond_18
    :goto_18
    :try_start_18
    iget-object v1, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->netImpl:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v2, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-interface {v1, v2}, Lorg/apache/harmony/luni/platform/INetworkSystem;->socketClose(Ljava/io/FileDescriptor;)V

    .line 185
    new-instance v1, Ljava/io/FileDescriptor;

    invoke-direct {v1}, Ljava/io/FileDescriptor;-><init>()V

    iput-object v1, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    .line 187
    :cond_26
    monitor-exit v0

    .line 188
    return-void

    .line 187
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_18 .. :try_end_2a} :catchall_28

    throw v1

    .line 181
    :catch_2b
    move-exception v1

    goto :goto_18
.end method

.method protected connect(Ljava/lang/String;I)V
    .registers 6
    .parameter "aHost"
    .parameter "aPort"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 192
    iget-object v1, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->netImpl:Lorg/apache/harmony/luni/platform/INetworkSystem;

    invoke-static {}, Lorg/apache/harmony/luni/net/NetUtil;->preferIPv6Addresses()Z

    move-result v2

    invoke-interface {v1, p1, v2}, Lorg/apache/harmony/luni/platform/INetworkSystem;->getHostByName(Ljava/lang/String;Z)Ljava/net/InetAddress;

    move-result-object v0

    .line 194
    .local v0, anAddr:Ljava/net/InetAddress;
    invoke-virtual {p0, v0, p2}, Lorg/apache/harmony/luni/net/PlainSocketImpl;->connect(Ljava/net/InetAddress;I)V

    .line 195
    return-void
.end method

.method protected connect(Ljava/net/InetAddress;I)V
    .registers 4
    .parameter "anAddr"
    .parameter "aPort"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 199
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/harmony/luni/net/PlainSocketImpl;->connect(Ljava/net/InetAddress;II)V

    .line 200
    return-void
.end method

.method protected connect(Ljava/net/SocketAddress;I)V
    .registers 7
    .parameter "remoteAddr"
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 520
    move-object v0, p1

    check-cast v0, Ljava/net/InetSocketAddress;

    move-object v1, v0

    .line 521
    .local v1, inetAddr:Ljava/net/InetSocketAddress;
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v3

    invoke-direct {p0, v2, v3, p2}, Lorg/apache/harmony/luni/net/PlainSocketImpl;->connect(Ljava/net/InetAddress;II)V

    .line 522
    return-void
.end method

.method protected create(Z)V
    .registers 5
    .parameter "streaming"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 247
    iput-boolean p1, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->streaming:Z

    .line 248
    if-eqz p1, :cond_10

    .line 251
    iget-object v0, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->netImpl:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v1, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {}, Lorg/apache/harmony/luni/net/NetUtil;->preferIPv4Stack()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lorg/apache/harmony/luni/platform/INetworkSystem;->createSocket(Ljava/io/FileDescriptor;Z)V

    .line 256
    :goto_f
    return-void

    .line 254
    :cond_10
    iget-object v0, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->netImpl:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v1, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {}, Lorg/apache/harmony/luni/net/NetUtil;->preferIPv4Stack()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lorg/apache/harmony/luni/platform/INetworkSystem;->createDatagramSocket(Ljava/io/FileDescriptor;Z)V

    goto :goto_f
.end method

.method protected finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 260
    invoke-virtual {p0}, Lorg/apache/harmony/luni/net/PlainSocketImpl;->close()V

    .line 261
    return-void
.end method

.method getFD()Ljava/io/FileDescriptor;
    .registers 2

    .prologue
    .line 538
    iget-object v0, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method protected declared-synchronized getInputStream()Ljava/io/InputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 265
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-nez v0, :cond_18

    .line 266
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "K003d"

    invoke-static {v1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_15

    .line 265
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0

    .line 269
    :cond_18
    :try_start_18
    new-instance v0, Lorg/apache/harmony/luni/net/SocketInputStream;

    invoke-direct {v0, p0}, Lorg/apache/harmony/luni/net/SocketInputStream;-><init>(Ljava/net/SocketImpl;)V
    :try_end_1d
    .catchall {:try_start_18 .. :try_end_1d} :catchall_15

    monitor-exit p0

    return-object v0
.end method

.method public getOption(I)Ljava/lang/Object;
    .registers 5
    .parameter "optID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 274
    const/16 v1, 0x1006

    if-ne p1, v1, :cond_b

    .line 275
    iget v1, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->receiveTimeout:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 286
    :goto_a
    return-object v1

    .line 276
    :cond_b
    const/4 v1, 0x3

    if-ne p1, v1, :cond_15

    .line 277
    iget v1, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->trafficClass:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_a

    .line 281
    :cond_15
    iget-object v1, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->netImpl:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v2, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-interface {v1, v2, p1}, Lorg/apache/harmony/luni/platform/INetworkSystem;->getSocketOption(Ljava/io/FileDescriptor;I)Ljava/lang/Object;

    move-result-object v0

    .line 282
    .local v0, result:Ljava/lang/Object;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_31

    iget-object v1, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->netImpl:Lorg/apache/harmony/luni/platform/INetworkSystem;

    invoke-interface {v1}, Lorg/apache/harmony/luni/platform/INetworkSystem;->getSocketFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_31

    .line 284
    iget-boolean v1, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->tcpNoDelay:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_a

    :cond_31
    move-object v1, v0

    .line 286
    goto :goto_a
.end method

.method protected declared-synchronized getOutputStream()Ljava/io/OutputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 292
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-nez v0, :cond_18

    .line 293
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "K003d"

    invoke-static {v1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_15

    .line 292
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0

    .line 295
    :cond_18
    :try_start_18
    new-instance v0, Lorg/apache/harmony/luni/net/SocketOutputStream;

    invoke-direct {v0, p0}, Lorg/apache/harmony/luni/net/SocketOutputStream;-><init>(Ljava/net/SocketImpl;)V
    :try_end_1d
    .catchall {:try_start_18 .. :try_end_1d} :catchall_15

    monitor-exit p0

    return-object v0
.end method

.method protected listen(I)V
    .registers 4
    .parameter "backlog"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 300
    iget-object v0, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->proxy:Ljava/net/Proxy;

    invoke-static {v0}, Lorg/apache/harmony/luni/net/NetUtil;->usingSocks(Ljava/net/Proxy;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 306
    :goto_8
    return-void

    .line 305
    :cond_9
    iget-object v0, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->netImpl:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v1, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-interface {v0, v1, p1}, Lorg/apache/harmony/luni/platform/INetworkSystem;->listenStreamSocket(Ljava/io/FileDescriptor;I)V

    goto :goto_8
.end method

.method read([BII)I
    .registers 13
    .parameter "buffer"
    .parameter "offset"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, -0x1

    .line 546
    iget-boolean v0, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->shutdownInput:Z

    if-eqz v0, :cond_7

    move v0, v8

    .line 555
    :goto_6
    return v0

    .line 550
    :cond_7
    :try_start_7
    iget-object v0, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->netImpl:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v1, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    iget v5, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->receiveTimeout:I

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-interface/range {v0 .. v5}, Lorg/apache/harmony/luni/platform/INetworkSystem;->receiveStream(Ljava/io/FileDescriptor;[BIII)I

    move-result v7

    .line 552
    .local v7, read:I
    if-ne v7, v8, :cond_19

    .line 553
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->shutdownInput:Z
    :try_end_19
    .catch Ljava/io/InterruptedIOException; {:try_start_7 .. :try_end_19} :catch_1b

    :cond_19
    move v0, v7

    .line 555
    goto :goto_6

    .line 556
    .end local v7           #read:I
    :catch_1b
    move-exception v0

    move-object v6, v0

    .line 557
    .local v6, e:Ljava/io/InterruptedIOException;
    new-instance v0, Ljava/net/SocketTimeoutException;

    invoke-virtual {v6}, Ljava/io/InterruptedIOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected sendUrgentData(I)V
    .registers 5
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 534
    iget-object v0, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->netImpl:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v1, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    int-to-byte v2, p1

    invoke-interface {v0, v1, v2}, Lorg/apache/harmony/luni/platform/INetworkSystem;->sendUrgentData(Ljava/io/FileDescriptor;B)V

    .line 535
    return-void
.end method

.method public setOption(ILjava/lang/Object;)V
    .registers 8
    .parameter "optID"
    .parameter "val"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x3

    .line 310
    const/16 v2, 0x1006

    if-ne p1, v2, :cond_e

    .line 311
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->receiveTimeout:I

    .line 340
    :cond_d
    :goto_d
    return-void

    .line 314
    .restart local p2
    :cond_e
    :try_start_e
    iget-object v2, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->netImpl:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v3, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-interface {v2, v3, p1, p2}, Lorg/apache/harmony/luni/platform/INetworkSystem;->setSocketOption(Ljava/io/FileDescriptor;ILjava/lang/Object;)V

    .line 315
    const/4 v2, 0x1

    if-ne p1, v2, :cond_2c

    iget-object v2, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->netImpl:Lorg/apache/harmony/luni/platform/INetworkSystem;

    invoke-interface {v2}, Lorg/apache/harmony/luni/platform/INetworkSystem;->getSocketFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_2c

    .line 317
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->tcpNoDelay:Z
    :try_end_2c
    .catch Ljava/net/SocketException; {:try_start_e .. :try_end_2c} :catch_37

    .line 336
    :cond_2c
    if-ne p1, v4, :cond_d

    .line 337
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->trafficClass:I

    goto :goto_d

    .line 319
    .restart local p2
    :catch_37
    move-exception v2

    move-object v1, v2

    .line 322
    .local v1, e:Ljava/net/SocketException;
    if-eq p1, v4, :cond_2c

    .line 323
    throw v1
.end method

.method protected shutdownInput()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 429
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->shutdownInput:Z

    .line 430
    iget-object v0, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->netImpl:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v1, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-interface {v0, v1}, Lorg/apache/harmony/luni/platform/INetworkSystem;->shutdownInput(Ljava/io/FileDescriptor;)V

    .line 431
    return-void
.end method

.method protected shutdownOutput()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 438
    iget-object v0, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->netImpl:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v1, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-interface {v0, v1}, Lorg/apache/harmony/luni/platform/INetworkSystem;->shutdownOutput(Ljava/io/FileDescriptor;)V

    .line 439
    return-void
.end method

.method public socksAccept()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 417
    invoke-direct {p0}, Lorg/apache/harmony/luni/net/PlainSocketImpl;->socksReadReply()Lorg/apache/harmony/luni/net/Socks4Message;

    move-result-object v0

    .line 418
    .local v0, reply:Lorg/apache/harmony/luni/net/Socks4Message;
    invoke-virtual {v0}, Lorg/apache/harmony/luni/net/Socks4Message;->getCommandOrResult()I

    move-result v1

    const/16 v2, 0x5a

    if-eq v1, v2, :cond_1a

    .line 419
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/net/Socks4Message;->getCommandOrResult()I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/apache/harmony/luni/net/Socks4Message;->getErrorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 422
    :cond_1a
    return-void
.end method

.method protected supportsUrgentData()Z
    .registers 3

    .prologue
    .line 529
    iget-boolean v0, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->streaming:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->netImpl:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v1, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-interface {v0, v1}, Lorg/apache/harmony/luni/platform/INetworkSystem;->supportsUrgentData(Ljava/io/FileDescriptor;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method write([BII)I
    .registers 11
    .parameter "buffer"
    .parameter "offset"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 562
    iget-boolean v0, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->streaming:Z

    if-nez v0, :cond_14

    .line 563
    iget-object v0, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->netImpl:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v1, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    iget v5, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->port:I

    iget-object v6, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->address:Ljava/net/InetAddress;

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-interface/range {v0 .. v6}, Lorg/apache/harmony/luni/platform/INetworkSystem;->sendDatagram2(Ljava/io/FileDescriptor;[BIIILjava/net/InetAddress;)I

    move-result v0

    .line 566
    :goto_13
    return v0

    :cond_14
    iget-object v0, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->netImpl:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v1, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-interface {v0, v1, p1, p2, p3}, Lorg/apache/harmony/luni/platform/INetworkSystem;->sendStream(Ljava/io/FileDescriptor;[BII)I

    move-result v0

    goto :goto_13
.end method
