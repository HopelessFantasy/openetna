.class Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;
.super Ljava/net/DatagramSocketImpl;
.source "PlainDatagramSocketImpl.java"


# static fields
.field static final FLAG_SHUTDOWN:I = 0x8

.field static final IP_MULTICAST_ADD:I = 0x13

.field static final IP_MULTICAST_DROP:I = 0x14

.field static final IP_MULTICAST_TTL:I = 0x11

.field static final MULTICAST_IF:I = 0x1

.field static final MULTICAST_TTL:I = 0x2

.field static final REUSEADDR_AND_REUSEPORT:I = 0x2711

.field private static final SO_BROADCAST:I = 0x20

.field static final TCP_NODELAY:I = 0x4


# instance fields
.field private bindToDevice:Z

.field private connectedAddress:Ljava/net/InetAddress;

.field private connectedPort:I

.field private ipaddress:[B

.field private volatile isNativeConnected:Z

.field private netImpl:Lorg/apache/harmony/luni/platform/INetworkSystem;

.field public receiveTimeout:I

.field public shutdownInput:Z

.field public streaming:Z

.field private trafficClass:I

.field private ttl:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 111
    invoke-direct {p0}, Ljava/net/DatagramSocketImpl;-><init>()V

    .line 75
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_22

    iput-object v0, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->ipaddress:[B

    .line 77
    iput v1, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->ttl:I

    .line 79
    invoke-static {}, Lorg/apache/harmony/luni/platform/Platform;->getNetworkSystem()Lorg/apache/harmony/luni/platform/INetworkSystem;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->netImpl:Lorg/apache/harmony/luni/platform/INetworkSystem;

    .line 85
    iput-boolean v1, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->streaming:Z

    .line 95
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->connectedPort:I

    .line 112
    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    .line 113
    return-void

    .line 75
    nop

    :array_22
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;I)V
    .registers 5
    .parameter "fd"
    .parameter "localPort"

    .prologue
    const/4 v1, 0x1

    .line 105
    invoke-direct {p0}, Ljava/net/DatagramSocketImpl;-><init>()V

    .line 75
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_1e

    iput-object v0, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->ipaddress:[B

    .line 77
    iput v1, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->ttl:I

    .line 79
    invoke-static {}, Lorg/apache/harmony/luni/platform/Platform;->getNetworkSystem()Lorg/apache/harmony/luni/platform/INetworkSystem;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->netImpl:Lorg/apache/harmony/luni/platform/INetworkSystem;

    .line 85
    iput-boolean v1, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->streaming:Z

    .line 95
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->connectedPort:I

    .line 106
    iput-object p1, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    .line 107
    iput p2, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->localPort:I

    .line 108
    return-void

    .line 75
    :array_1e
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private updatePacketRecvAddress(Ljava/net/DatagramPacket;)V
    .registers 3
    .parameter "packet"

    .prologue
    .line 419
    iget-object v0, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->connectedAddress:Ljava/net/InetAddress;

    invoke-virtual {p1, v0}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 420
    iget v0, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->connectedPort:I

    invoke-virtual {p1, v0}, Ljava/net/DatagramPacket;->setPort(I)V

    .line 421
    return-void
.end method


# virtual methods
.method public bind(ILjava/net/InetAddress;)V
    .registers 8
    .parameter "port"
    .parameter "addr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 117
    new-instance v2, Lorg/apache/harmony/luni/util/PriviAction;

    const-string v3, "bindToDevice"

    invoke-direct {v2, v3}, Lorg/apache/harmony/luni/util/PriviAction;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 118
    .local v0, prop:Ljava/lang/String;
    if-eqz v0, :cond_33

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    const/4 v2, 0x1

    move v1, v2

    .line 119
    .local v1, useBindToDevice:Z
    :goto_1d
    iget-object v2, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->netImpl:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v3, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-interface {v2, v3, p1, v1, p2}, Lorg/apache/harmony/luni/platform/INetworkSystem;->bind2(Ljava/io/FileDescriptor;IZLjava/net/InetAddress;)Z

    move-result v2

    iput-boolean v2, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->bindToDevice:Z

    .line 120
    if-eqz p1, :cond_36

    .line 121
    iput p1, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->localPort:I

    .line 128
    :goto_2b
    const/16 v2, 0x20

    :try_start_2d
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v2, v3}, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->setOption(ILjava/lang/Object;)V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_32} :catch_45

    .line 131
    :goto_32
    return-void

    .line 118
    .end local v1           #useBindToDevice:Z
    :cond_33
    const/4 v2, 0x0

    move v1, v2

    goto :goto_1d

    .line 123
    .restart local v1       #useBindToDevice:Z
    :cond_36
    iget-object v2, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->netImpl:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v3, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {}, Lorg/apache/harmony/luni/net/NetUtil;->preferIPv6Addresses()Z

    move-result v4

    invoke-interface {v2, v3, v4}, Lorg/apache/harmony/luni/platform/INetworkSystem;->getSocketLocalPort(Ljava/io/FileDescriptor;Z)I

    move-result v2

    iput v2, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->localPort:I

    goto :goto_2b

    .line 129
    :catch_45
    move-exception v2

    goto :goto_32
.end method

.method public close()V
    .registers 4

    .prologue
    .line 135
    iget-object v0, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    monitor-enter v0

    .line 136
    :try_start_3
    iget-object v1, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->valid()Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_1b

    move-result v1

    if-eqz v1, :cond_19

    .line 138
    :try_start_b
    iget-object v1, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->netImpl:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v2, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-interface {v1, v2}, Lorg/apache/harmony/luni/platform/INetworkSystem;->socketClose(Ljava/io/FileDescriptor;)V
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_1b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_12} :catch_1e

    .line 141
    :goto_12
    :try_start_12
    new-instance v1, Ljava/io/FileDescriptor;

    invoke-direct {v1}, Ljava/io/FileDescriptor;-><init>()V

    iput-object v1, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    .line 143
    :cond_19
    monitor-exit v0

    .line 144
    return-void

    .line 143
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_1b

    throw v1

    .line 139
    :catch_1e
    move-exception v1

    goto :goto_12
.end method

.method public connect(Ljava/net/InetAddress;I)V
    .registers 7
    .parameter "inetAddr"
    .parameter "port"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 364
    iget-object v1, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->netImpl:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v2, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    iget v3, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->trafficClass:I

    invoke-interface {v1, v2, p2, v3, p1}, Lorg/apache/harmony/luni/platform/INetworkSystem;->connectDatagram(Ljava/io/FileDescriptor;IILjava/net/InetAddress;)V

    .line 368
    :try_start_9
    invoke-virtual {p1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->connectedAddress:Ljava/net/InetAddress;
    :try_end_13
    .catch Ljava/net/UnknownHostException; {:try_start_9 .. :try_end_13} :catch_19

    .line 374
    iput p2, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->connectedPort:I

    .line 375
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->isNativeConnected:Z

    .line 376
    return-void

    .line 369
    :catch_19
    move-exception v1

    move-object v0, v1

    .line 372
    .local v0, e:Ljava/net/UnknownHostException;
    new-instance v1, Ljava/net/SocketException;

    const-string v2, "K0317"

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public create()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 148
    iget-object v0, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->netImpl:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v1, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {}, Lorg/apache/harmony/luni/net/NetUtil;->preferIPv4Stack()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lorg/apache/harmony/luni/platform/INetworkSystem;->createDatagramSocket(Ljava/io/FileDescriptor;Z)V

    .line 149
    return-void
.end method

.method public disconnect()V
    .registers 3

    .prologue
    .line 381
    :try_start_0
    iget-object v0, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->netImpl:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v1, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-interface {v0, v1}, Lorg/apache/harmony/luni/platform/INetworkSystem;->disconnectDatagram(Ljava/io/FileDescriptor;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_11

    .line 386
    :goto_7
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->connectedPort:I

    .line 387
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->connectedAddress:Ljava/net/InetAddress;

    .line 388
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->isNativeConnected:Z

    .line 389
    return-void

    .line 382
    :catch_11
    move-exception v0

    goto :goto_7
.end method

.method protected finalize()V
    .registers 1

    .prologue
    .line 153
    invoke-virtual {p0}, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->close()V

    .line 154
    return-void
.end method

.method public getOption(I)Ljava/lang/Object;
    .registers 6
    .parameter "optID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 158
    const/16 v2, 0x1006

    if-ne p1, v2, :cond_b

    .line 159
    iget v2, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->receiveTimeout:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 174
    :goto_a
    return-object v2

    .line 160
    :cond_b
    const/4 v2, 0x3

    if-ne p1, v2, :cond_15

    .line 161
    iget v2, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->trafficClass:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_a

    .line 165
    :cond_15
    iget-object v2, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->netImpl:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v3, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-interface {v2, v3, p1}, Lorg/apache/harmony/luni/platform/INetworkSystem;->getSocketOption(Ljava/io/FileDescriptor;I)Ljava/lang/Object;

    move-result-object v1

    .line 166
    .local v1, result:Ljava/lang/Object;
    const/16 v2, 0x10

    if-ne p1, v2, :cond_36

    iget-object v2, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->netImpl:Lorg/apache/harmony/luni/platform/INetworkSystem;

    invoke-interface {v2}, Lorg/apache/harmony/luni/platform/INetworkSystem;->getSocketFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_36

    .line 169
    :try_start_2b
    iget-object v2, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->ipaddress:[B

    invoke-static {v2}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;
    :try_end_30
    .catch Ljava/net/UnknownHostException; {:try_start_2b .. :try_end_30} :catch_32

    move-result-object v2

    goto :goto_a

    .line 170
    :catch_32
    move-exception v2

    move-object v0, v2

    .line 171
    .local v0, e:Ljava/net/UnknownHostException;
    const/4 v2, 0x0

    goto :goto_a

    .end local v0           #e:Ljava/net/UnknownHostException;
    :cond_36
    move-object v2, v1

    .line 174
    goto :goto_a
.end method

.method public getTTL()B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 193
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    .line 194
    .local v0, result:B
    iget-object v1, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->netImpl:Lorg/apache/harmony/luni/platform/INetworkSystem;

    invoke-interface {v1}, Lorg/apache/harmony/luni/platform/INetworkSystem;->getSocketFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1a

    .line 195
    iget v1, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->ttl:I

    int-to-byte v1, v1

    .line 197
    :goto_19
    return v1

    :cond_1a
    move v1, v0

    goto :goto_19
.end method

.method public getTimeToLive()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 182
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    and-int/lit16 v0, v1, 0xff

    .line 183
    .local v0, result:I
    iget-object v1, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->netImpl:Lorg/apache/harmony/luni/platform/INetworkSystem;

    invoke-interface {v1}, Lorg/apache/harmony/luni/platform/INetworkSystem;->getSocketFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1b

    .line 184
    iget v1, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->ttl:I

    .line 186
    :goto_1a
    return v1

    :cond_1b
    move v1, v0

    goto :goto_1a
.end method

.method public join(Ljava/net/InetAddress;)V
    .registers 4
    .parameter "addr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 202
    const/16 v0, 0x13

    new-instance v1, Lorg/apache/harmony/luni/net/GenericIPMreq;

    invoke-direct {v1, p1}, Lorg/apache/harmony/luni/net/GenericIPMreq;-><init>(Ljava/net/InetAddress;)V

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->setOption(ILjava/lang/Object;)V

    .line 203
    return-void
.end method

.method public joinGroup(Ljava/net/SocketAddress;Ljava/net/NetworkInterface;)V
    .registers 6
    .parameter "addr"
    .parameter "netInterface"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 207
    instance-of v1, p1, Ljava/net/InetSocketAddress;

    if-eqz v1, :cond_14

    .line 208
    check-cast p1, Ljava/net/InetSocketAddress;

    .end local p1
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 209
    .local v0, groupAddr:Ljava/net/InetAddress;
    const/16 v1, 0x13

    new-instance v2, Lorg/apache/harmony/luni/net/GenericIPMreq;

    invoke-direct {v2, v0, p2}, Lorg/apache/harmony/luni/net/GenericIPMreq;-><init>(Ljava/net/InetAddress;Ljava/net/NetworkInterface;)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->setOption(ILjava/lang/Object;)V

    .line 211
    .end local v0           #groupAddr:Ljava/net/InetAddress;
    :cond_14
    return-void
.end method

.method public leave(Ljava/net/InetAddress;)V
    .registers 4
    .parameter "addr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 215
    const/16 v0, 0x14

    new-instance v1, Lorg/apache/harmony/luni/net/GenericIPMreq;

    invoke-direct {v1, p1}, Lorg/apache/harmony/luni/net/GenericIPMreq;-><init>(Ljava/net/InetAddress;)V

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->setOption(ILjava/lang/Object;)V

    .line 216
    return-void
.end method

.method public leaveGroup(Ljava/net/SocketAddress;Ljava/net/NetworkInterface;)V
    .registers 6
    .parameter "addr"
    .parameter "netInterface"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 221
    instance-of v1, p1, Ljava/net/InetSocketAddress;

    if-eqz v1, :cond_14

    .line 222
    check-cast p1, Ljava/net/InetSocketAddress;

    .end local p1
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 223
    .local v0, groupAddr:Ljava/net/InetAddress;
    const/16 v1, 0x14

    new-instance v2, Lorg/apache/harmony/luni/net/GenericIPMreq;

    invoke-direct {v2, v0, p2}, Lorg/apache/harmony/luni/net/GenericIPMreq;-><init>(Ljava/net/InetAddress;Ljava/net/NetworkInterface;)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->setOption(ILjava/lang/Object;)V

    .line 225
    .end local v0           #groupAddr:Ljava/net/InetAddress;
    :cond_14
    return-void
.end method

.method protected peek(Ljava/net/InetAddress;)I
    .registers 11
    .parameter "sender"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 229
    iget-boolean v0, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->isNativeConnected:Z

    if-eqz v0, :cond_32

    .line 237
    const/16 v0, 0xa

    new-array v8, v0, [B

    .line 238
    .local v8, storageArray:[B
    new-instance v2, Ljava/net/DatagramPacket;

    array-length v0, v8

    invoke-direct {v2, v8, v0}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 239
    .local v2, pack:Ljava/net/DatagramPacket;
    iget-object v0, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->netImpl:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v1, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v3

    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getOffset()I

    move-result v4

    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getLength()I

    move-result v5

    iget v6, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->receiveTimeout:I

    const/4 v7, 0x1

    invoke-interface/range {v0 .. v7}, Lorg/apache/harmony/luni/platform/INetworkSystem;->recvConnectedDatagram(Ljava/io/FileDescriptor;Ljava/net/DatagramPacket;[BIIIZ)I

    .line 243
    iget-object v0, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->netImpl:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v1, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->connectedAddress:Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lorg/apache/harmony/luni/platform/INetworkSystem;->setInetAddress(Ljava/net/InetAddress;[B)V

    .line 244
    iget v0, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->connectedPort:I

    .line 246
    .end local v2           #pack:Ljava/net/DatagramPacket;
    .end local v8           #storageArray:[B
    :goto_31
    return v0

    :cond_32
    iget-object v0, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->netImpl:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v1, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    iget v3, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->receiveTimeout:I

    invoke-interface {v0, v1, p1, v3}, Lorg/apache/harmony/luni/platform/INetworkSystem;->peekDatagram(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)I

    move-result v0

    goto :goto_31
.end method

.method public peekData(Ljava/net/DatagramPacket;)I
    .registers 11
    .parameter "pack"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 394
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->isNativeConnected:Z

    if-eqz v0, :cond_23

    .line 395
    iget-object v0, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->netImpl:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v1, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v3

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getOffset()I

    move-result v4

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v5

    iget v6, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->receiveTimeout:I

    const/4 v7, 0x1

    move-object v2, p1

    invoke-interface/range {v0 .. v7}, Lorg/apache/harmony/luni/platform/INetworkSystem;->recvConnectedDatagram(Ljava/io/FileDescriptor;Ljava/net/DatagramPacket;[BIIIZ)I

    .line 397
    invoke-direct {p0, p1}, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->updatePacketRecvAddress(Ljava/net/DatagramPacket;)V
    :try_end_1e
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_1e} :catch_3b

    .line 406
    :goto_1e
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getPort()I

    move-result v0

    return v0

    .line 400
    :cond_23
    :try_start_23
    iget-object v0, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->netImpl:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v1, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v3

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getOffset()I

    move-result v4

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v5

    iget v6, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->receiveTimeout:I

    const/4 v7, 0x1

    move-object v2, p1

    invoke-interface/range {v0 .. v7}, Lorg/apache/harmony/luni/platform/INetworkSystem;->receiveDatagram(Ljava/io/FileDescriptor;Ljava/net/DatagramPacket;[BIIIZ)I
    :try_end_3a
    .catch Ljava/io/InterruptedIOException; {:try_start_23 .. :try_end_3a} :catch_3b

    goto :goto_1e

    .line 403
    :catch_3b
    move-exception v0

    move-object v8, v0

    .line 404
    .local v8, e:Ljava/io/InterruptedIOException;
    new-instance v0, Ljava/net/SocketTimeoutException;

    invoke-virtual {v8}, Ljava/io/InterruptedIOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public receive(Ljava/net/DatagramPacket;)V
    .registers 11
    .parameter "pack"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 252
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->isNativeConnected:Z

    if-eqz v0, :cond_1f

    .line 254
    iget-object v0, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->netImpl:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v1, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v3

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getOffset()I

    move-result v4

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v5

    iget v6, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->receiveTimeout:I

    const/4 v7, 0x0

    move-object v2, p1

    invoke-interface/range {v0 .. v7}, Lorg/apache/harmony/luni/platform/INetworkSystem;->recvConnectedDatagram(Ljava/io/FileDescriptor;Ljava/net/DatagramPacket;[BIIIZ)I

    .line 256
    invoke-direct {p0, p1}, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->updatePacketRecvAddress(Ljava/net/DatagramPacket;)V

    .line 265
    :goto_1e
    return-void

    .line 259
    :cond_1f
    iget-object v0, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->netImpl:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v1, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v3

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getOffset()I

    move-result v4

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v5

    iget v6, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->receiveTimeout:I

    const/4 v7, 0x0

    move-object v2, p1

    invoke-interface/range {v0 .. v7}, Lorg/apache/harmony/luni/platform/INetworkSystem;->receiveDatagram(Ljava/io/FileDescriptor;Ljava/net/DatagramPacket;[BIIIZ)I
    :try_end_36
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_36} :catch_37

    goto :goto_1e

    .line 262
    :catch_37
    move-exception v0

    move-object v8, v0

    .line 263
    .local v8, e:Ljava/io/InterruptedIOException;
    new-instance v0, Ljava/net/SocketTimeoutException;

    invoke-virtual {v8}, Ljava/io/InterruptedIOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public send(Ljava/net/DatagramPacket;)V
    .registers 11
    .parameter "packet"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 270
    iget-boolean v0, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->isNativeConnected:Z

    if-eqz v0, :cond_1a

    .line 271
    iget-object v0, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->netImpl:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v1, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v2

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getOffset()I

    move-result v3

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v4

    iget-boolean v5, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->bindToDevice:Z

    invoke-interface/range {v0 .. v5}, Lorg/apache/harmony/luni/platform/INetworkSystem;->sendConnectedDatagram(Ljava/io/FileDescriptor;[BIIZ)I

    .line 278
    :goto_19
    return-void

    .line 275
    :cond_1a
    iget-object v0, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->netImpl:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v1, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v2

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getOffset()I

    move-result v3

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v4

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getPort()I

    move-result v5

    iget-boolean v6, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->bindToDevice:Z

    iget v7, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->trafficClass:I

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v8

    invoke-interface/range {v0 .. v8}, Lorg/apache/harmony/luni/platform/INetworkSystem;->sendDatagram(Ljava/io/FileDescriptor;[BIIIZILjava/net/InetAddress;)I

    goto :goto_19
.end method

.method public setOption(ILjava/lang/Object;)V
    .registers 12
    .parameter "optID"
    .parameter "val"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x3

    .line 294
    const/4 v5, 0x4

    if-ne p1, v5, :cond_6

    .line 295
    const/16 p1, 0x2711

    .line 298
    :cond_6
    const/16 v5, 0x1006

    if-ne p1, v5, :cond_13

    .line 299
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->receiveTimeout:I

    .line 342
    :cond_12
    :goto_12
    return-void

    .line 301
    .restart local p2
    :cond_13
    iget-object v5, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->netImpl:Lorg/apache/harmony/luni/platform/INetworkSystem;

    invoke-interface {v5}, Lorg/apache/harmony/luni/platform/INetworkSystem;->getSocketFlags()I

    move-result v2

    .line 303
    .local v2, flags:I
    :try_start_19
    iget-object v5, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->netImpl:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v6, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    shl-int/lit8 v7, v2, 0x10

    or-int/2addr v7, p1

    invoke-interface {v5, v6, v7, p2}, Lorg/apache/harmony/luni/platform/INetworkSystem;->setSocketOption(Ljava/io/FileDescriptor;ILjava/lang/Object;)V
    :try_end_23
    .catch Ljava/net/SocketException; {:try_start_19 .. :try_end_23} :catch_55

    .line 311
    :cond_23
    const/16 v5, 0x10

    if-ne p1, v5, :cond_4a

    and-int/lit8 v5, v2, 0x1

    if-eqz v5, :cond_4a

    .line 312
    move-object v0, p2

    check-cast v0, Ljava/net/InetAddress;

    move-object v3, v0

    .line 313
    .local v3, inet:Ljava/net/InetAddress;
    invoke-virtual {v3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lorg/apache/harmony/luni/net/NetUtil;->bytesToInt([BI)I

    move-result v5

    if-eqz v5, :cond_40

    invoke-virtual {v3}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v5

    if-eqz v5, :cond_5a

    .line 314
    :cond_40
    move-object v0, p2

    check-cast v0, Ljava/net/InetAddress;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v5

    iput-object v5, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->ipaddress:[B

    .line 338
    .end local v3           #inet:Ljava/net/InetAddress;
    :cond_4a
    :goto_4a
    if-ne p1, v8, :cond_12

    .line 339
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->trafficClass:I

    goto :goto_12

    .line 304
    .restart local p2
    :catch_55
    move-exception v5

    move-object v1, v5

    .line 307
    .local v1, e:Ljava/net/SocketException;
    if-eq p1, v8, :cond_23

    .line 308
    throw v1

    .line 316
    .end local v1           #e:Ljava/net/SocketException;
    .restart local v3       #inet:Ljava/net/InetAddress;
    :cond_5a
    const/4 v4, 0x0

    .line 318
    .local v4, local:Ljava/net/InetAddress;
    :try_start_5b
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;
    :try_end_5e
    .catch Ljava/net/UnknownHostException; {:try_start_5b .. :try_end_5e} :catch_70

    move-result-object v4

    .line 322
    invoke-virtual {v3, v4}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8e

    .line 323
    move-object v0, p2

    check-cast v0, Ljava/net/InetAddress;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v5

    iput-object v5, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->ipaddress:[B

    goto :goto_4a

    .line 319
    :catch_70
    move-exception v1

    .line 320
    .local v1, e:Ljava/net/UnknownHostException;
    new-instance v5, Ljava/net/SocketException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getLocalHost(): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/net/UnknownHostException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 325
    .end local v1           #e:Ljava/net/UnknownHostException;
    :cond_8e
    new-instance v5, Ljava/net/SocketException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " != getLocalHost(): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public setTTL(B)V
    .registers 4
    .parameter "ttl"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 354
    const/16 v0, 0x11

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->setOption(ILjava/lang/Object;)V

    .line 355
    iget-object v0, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->netImpl:Lorg/apache/harmony/luni/platform/INetworkSystem;

    invoke-interface {v0}, Lorg/apache/harmony/luni/platform/INetworkSystem;->getSocketFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_15

    .line 356
    iput p1, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->ttl:I

    .line 358
    :cond_15
    return-void
.end method

.method public setTimeToLive(I)V
    .registers 4
    .parameter "ttl"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 346
    const/16 v0, 0x11

    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->setOption(ILjava/lang/Object;)V

    .line 347
    iget-object v0, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->netImpl:Lorg/apache/harmony/luni/platform/INetworkSystem;

    invoke-interface {v0}, Lorg/apache/harmony/luni/platform/INetworkSystem;->getSocketFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_18

    .line 348
    iput p1, p0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;->ttl:I

    .line 350
    :cond_18
    return-void
.end method
