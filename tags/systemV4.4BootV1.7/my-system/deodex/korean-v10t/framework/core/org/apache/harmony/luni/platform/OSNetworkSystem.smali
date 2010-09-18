.class final Lorg/apache/harmony/luni/platform/OSNetworkSystem;
.super Ljava/lang/Object;
.source "OSNetworkSystem.java"

# interfaces
.implements Lorg/apache/harmony/luni/platform/INetworkSystem;


# static fields
.field private static final ERRORCODE_SOCKET_TIMEOUT:I = -0xd1

.field private static final INETADDR_REACHABLE:I

.field private static isNetworkInited:Z

.field private static ref:Lorg/apache/harmony/luni/platform/OSNetworkSystem;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 49
    new-instance v0, Lorg/apache/harmony/luni/platform/OSNetworkSystem;

    invoke-direct {v0}, Lorg/apache/harmony/luni/platform/OSNetworkSystem;-><init>()V

    sput-object v0, Lorg/apache/harmony/luni/platform/OSNetworkSystem;->ref:Lorg/apache/harmony/luni/platform/OSNetworkSystem;

    .line 53
    const/4 v0, 0x0

    sput-boolean v0, Lorg/apache/harmony/luni/platform/OSNetworkSystem;->isNetworkInited:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    return-void
.end method

.method static native acceptSocketImpl(Ljava/io/FileDescriptor;Ljava/net/SocketImpl;Ljava/io/FileDescriptor;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native availableStreamImpl(Ljava/io/FileDescriptor;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method static native connectDatagramImpl2(Ljava/io/FileDescriptor;IILjava/net/InetAddress;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method static native connectSocketImpl(Ljava/io/FileDescriptor;ILjava/net/InetAddress;I)I
.end method

.method static native connectStreamWithTimeoutSocketImpl(Ljava/io/FileDescriptor;IIILjava/net/InetAddress;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native connectWithTimeoutSocketImpl(Ljava/io/FileDescriptor;IILjava/net/InetAddress;II[B)I
.end method

.method static native createDatagramSocketImpl(Ljava/io/FileDescriptor;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method static native createMulticastSocketImpl(Ljava/io/FileDescriptor;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method static native createServerStreamSocketImpl(Ljava/io/FileDescriptor;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method static native createSocketImpl(Ljava/io/FileDescriptor;Z)V
.end method

.method static native disconnectDatagramImpl(Ljava/io/FileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method static native getHostByAddrImpl([B)Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation
.end method

.method static native getHostByNameImpl(Ljava/lang/String;Z)Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation
.end method

.method public static getOSNetworkSystem()Lorg/apache/harmony/luni/platform/OSNetworkSystem;
    .registers 1

    .prologue
    .line 69
    sget-object v0, Lorg/apache/harmony/luni/platform/OSNetworkSystem;->ref:Lorg/apache/harmony/luni/platform/OSNetworkSystem;

    return-object v0
.end method

.method static native getSocketFlagsImpl()I
.end method

.method static native getSocketLocalAddressImpl(Ljava/io/FileDescriptor;Z)Ljava/net/InetAddress;
.end method

.method static native getSocketLocalPortImpl(Ljava/io/FileDescriptor;Z)I
.end method

.method static native getSocketOptionImpl(Ljava/io/FileDescriptor;I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method static native listenStreamSocketImpl(Ljava/io/FileDescriptor;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method static native peekDatagramImpl(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native readSocketDirectImpl(Ljava/io/FileDescriptor;IIII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native readSocketImpl(Ljava/io/FileDescriptor;[BIII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native receiveDatagramDirectImpl(Ljava/io/FileDescriptor;Ljava/net/DatagramPacket;IIIIZ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native receiveDatagramImpl(Ljava/io/FileDescriptor;Ljava/net/DatagramPacket;[BIIIZ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native receiveStreamImpl(Ljava/io/FileDescriptor;[BIII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native recvConnectedDatagramDirectImpl(Ljava/io/FileDescriptor;Ljava/net/DatagramPacket;IIIIZ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native recvConnectedDatagramImpl(Ljava/io/FileDescriptor;Ljava/net/DatagramPacket;[BIIIZ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native selectImpl([Ljava/io/FileDescriptor;[Ljava/io/FileDescriptor;II[IJ)I
.end method

.method static native sendConnectedDatagramDirectImpl(Ljava/io/FileDescriptor;IIIZ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native sendConnectedDatagramImpl(Ljava/io/FileDescriptor;[BIIZ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native sendDatagramDirectImpl(Ljava/io/FileDescriptor;IIIIZILjava/net/InetAddress;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native sendDatagramImpl(Ljava/io/FileDescriptor;[BIIIZILjava/net/InetAddress;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native sendDatagramImpl2(Ljava/io/FileDescriptor;[BIIILjava/net/InetAddress;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native sendStreamImpl(Ljava/io/FileDescriptor;[BII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native sendUrgentDataImpl(Ljava/io/FileDescriptor;B)V
.end method

.method static native setNonBlockingImpl(Ljava/io/FileDescriptor;Z)V
.end method

.method static native setSocketOptionImpl(Ljava/io/FileDescriptor;ILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method private native shutdownInputImpl(Ljava/io/FileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native shutdownOutputImpl(Ljava/io/FileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native socketBindImpl(Ljava/io/FileDescriptor;ILjava/net/InetAddress;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method static native socketBindImpl2(Ljava/io/FileDescriptor;IZLjava/net/InetAddress;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method static native socketCloseImpl(Ljava/io/FileDescriptor;)V
.end method

.method static native supportsUrgentDataImpl(Ljava/io/FileDescriptor;)Z
.end method

.method static native writeSocketDirectImpl(Ljava/io/FileDescriptor;III)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native writeSocketImpl(Ljava/io/FileDescriptor;[BII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method


# virtual methods
.method public accept(Ljava/io/FileDescriptor;Ljava/net/SocketImpl;Ljava/io/FileDescriptor;I)V
    .registers 5
    .parameter "fdServer"
    .parameter "newSocket"
    .parameter "fdnewSocket"
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 156
    invoke-static {p1, p2, p3, p4}, Lorg/apache/harmony/luni/platform/OSNetworkSystem;->acceptSocketImpl(Ljava/io/FileDescriptor;Ljava/net/SocketImpl;Ljava/io/FileDescriptor;I)V

    .line 157
    return-void
.end method

.method public availableStream(Ljava/io/FileDescriptor;)I
    .registers 3
    .parameter "aFD"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 261
    invoke-static {p1}, Lorg/apache/harmony/luni/platform/OSNetworkSystem;->availableStreamImpl(Ljava/io/FileDescriptor;)I

    move-result v0

    return v0
.end method

.method public bind(Ljava/io/FileDescriptor;ILjava/net/InetAddress;)V
    .registers 4
    .parameter "aFD"
    .parameter "port"
    .parameter "inetAddress"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 146
    invoke-static {p1, p2, p3}, Lorg/apache/harmony/luni/platform/OSNetworkSystem;->socketBindImpl(Ljava/io/FileDescriptor;ILjava/net/InetAddress;)V

    .line 147
    return-void
.end method

.method public bind2(Ljava/io/FileDescriptor;IZLjava/net/InetAddress;)Z
    .registers 6
    .parameter "aFD"
    .parameter "port"
    .parameter "bindToDevice"
    .parameter "inetAddress"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 151
    invoke-static {p1, p2, p3, p4}, Lorg/apache/harmony/luni/platform/OSNetworkSystem;->socketBindImpl2(Ljava/io/FileDescriptor;IZLjava/net/InetAddress;)Z

    move-result v0

    return v0
.end method

.method public connect(Ljava/io/FileDescriptor;ILjava/net/InetAddress;I)I
    .registers 6
    .parameter "aFD"
    .parameter "trafficClass"
    .parameter "inetAddress"
    .parameter "port"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 125
    invoke-static {p1, p2, p3, p4}, Lorg/apache/harmony/luni/platform/OSNetworkSystem;->connectSocketImpl(Ljava/io/FileDescriptor;ILjava/net/InetAddress;I)I

    move-result v0

    return v0
.end method

.method public connectDatagram(Ljava/io/FileDescriptor;IILjava/net/InetAddress;)V
    .registers 5
    .parameter "aFD"
    .parameter "port"
    .parameter "trafficClass"
    .parameter "inetAddress"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 120
    invoke-static {p1, p2, p3, p4}, Lorg/apache/harmony/luni/platform/OSNetworkSystem;->connectDatagramImpl2(Ljava/io/FileDescriptor;IILjava/net/InetAddress;)V

    .line 121
    return-void
.end method

.method public connectStreamWithTimeoutSocket(Ljava/io/FileDescriptor;IIILjava/net/InetAddress;)V
    .registers 6
    .parameter "aFD"
    .parameter "aport"
    .parameter "timeout"
    .parameter "trafficClass"
    .parameter "inetAddress"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 140
    invoke-static {p1, p2, p3, p4, p5}, Lorg/apache/harmony/luni/platform/OSNetworkSystem;->connectStreamWithTimeoutSocketImpl(Ljava/io/FileDescriptor;IIILjava/net/InetAddress;)V

    .line 142
    return-void
.end method

.method public connectWithTimeout(Ljava/io/FileDescriptor;IILjava/net/InetAddress;II[B)I
    .registers 9
    .parameter "aFD"
    .parameter "timeout"
    .parameter "trafficClass"
    .parameter "inetAddress"
    .parameter "port"
    .parameter "step"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 132
    invoke-static/range {p1 .. p7}, Lorg/apache/harmony/luni/platform/OSNetworkSystem;->connectWithTimeoutSocketImpl(Ljava/io/FileDescriptor;IILjava/net/InetAddress;II[B)I

    move-result v0

    return v0
.end method

.method public createDatagramSocket(Ljava/io/FileDescriptor;Z)V
    .registers 3
    .parameter "fd"
    .parameter "preferIPv4Stack"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 90
    invoke-static {p1, p2}, Lorg/apache/harmony/luni/platform/OSNetworkSystem;->createDatagramSocketImpl(Ljava/io/FileDescriptor;Z)V

    .line 91
    return-void
.end method

.method public createMulticastSocket(Ljava/io/FileDescriptor;Z)V
    .registers 3
    .parameter "aFD"
    .parameter "preferIPv4Stack"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 226
    invoke-static {p1, p2}, Lorg/apache/harmony/luni/platform/OSNetworkSystem;->createMulticastSocketImpl(Ljava/io/FileDescriptor;Z)V

    .line 227
    return-void
.end method

.method public createServerStreamSocket(Ljava/io/FileDescriptor;Z)V
    .registers 3
    .parameter "aFD"
    .parameter "preferIPv4Stack"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 231
    invoke-static {p1, p2}, Lorg/apache/harmony/luni/platform/OSNetworkSystem;->createServerStreamSocketImpl(Ljava/io/FileDescriptor;Z)V

    .line 232
    return-void
.end method

.method public createSocket(Ljava/io/FileDescriptor;Z)V
    .registers 3
    .parameter "fd"
    .parameter "preferIPv4Stack"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    invoke-static {p1, p2}, Lorg/apache/harmony/luni/platform/OSNetworkSystem;->createSocketImpl(Ljava/io/FileDescriptor;Z)V

    .line 86
    return-void
.end method

.method public disconnectDatagram(Ljava/io/FileDescriptor;)V
    .registers 2
    .parameter "aFD"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 221
    invoke-static {p1}, Lorg/apache/harmony/luni/platform/OSNetworkSystem;->disconnectDatagramImpl(Ljava/io/FileDescriptor;)V

    .line 222
    return-void
.end method

.method public getHostByAddr([B)Ljava/net/InetAddress;
    .registers 3
    .parameter "addr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 384
    invoke-static {p1}, Lorg/apache/harmony/luni/platform/OSNetworkSystem;->getHostByAddrImpl([B)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getHostByName(Ljava/lang/String;Z)Ljava/net/InetAddress;
    .registers 4
    .parameter "addr"
    .parameter "preferIPv6Addresses"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 389
    invoke-static {p1, p2}, Lorg/apache/harmony/luni/platform/OSNetworkSystem;->getHostByNameImpl(Ljava/lang/String;Z)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getSocketFlags()I
    .registers 2

    .prologue
    .line 371
    invoke-static {}, Lorg/apache/harmony/luni/platform/OSNetworkSystem;->getSocketFlagsImpl()I

    move-result v0

    return v0
.end method

.method public getSocketLocalAddress(Ljava/io/FileDescriptor;Z)Ljava/net/InetAddress;
    .registers 4
    .parameter "aFD"
    .parameter "preferIPv6Addresses"

    .prologue
    .line 329
    invoke-static {p1, p2}, Lorg/apache/harmony/luni/platform/OSNetworkSystem;->getSocketLocalAddressImpl(Ljava/io/FileDescriptor;Z)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getSocketLocalPort(Ljava/io/FileDescriptor;Z)I
    .registers 4
    .parameter "aFD"
    .parameter "preferIPv6Addresses"

    .prologue
    .line 341
    invoke-static {p1, p2}, Lorg/apache/harmony/luni/platform/OSNetworkSystem;->getSocketLocalPortImpl(Ljava/io/FileDescriptor;Z)I

    move-result v0

    return v0
.end method

.method public getSocketOption(Ljava/io/FileDescriptor;I)Ljava/lang/Object;
    .registers 4
    .parameter "aFD"
    .parameter "opt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 354
    invoke-static {p1, p2}, Lorg/apache/harmony/luni/platform/OSNetworkSystem;->getSocketOptionImpl(Ljava/io/FileDescriptor;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public inheritedChannel()Ljava/nio/channels/Channel;
    .registers 2

    .prologue
    .line 735
    invoke-virtual {p0}, Lorg/apache/harmony/luni/platform/OSNetworkSystem;->inheritedChannelImpl()Ljava/nio/channels/Channel;

    move-result-object v0

    return-object v0
.end method

.method native inheritedChannelImpl()Ljava/nio/channels/Channel;
.end method

.method public listenStreamSocket(Ljava/io/FileDescriptor;I)V
    .registers 3
    .parameter "aFD"
    .parameter "backlog"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 279
    invoke-static {p1, p2}, Lorg/apache/harmony/luni/platform/OSNetworkSystem;->listenStreamSocketImpl(Ljava/io/FileDescriptor;I)V

    .line 280
    return-void
.end method

.method public oneTimeInitialization(Z)V
    .registers 3
    .parameter "jcl_supports_ipv6"

    .prologue
    .line 739
    sget-boolean v0, Lorg/apache/harmony/luni/platform/OSNetworkSystem;->isNetworkInited:Z

    if-nez v0, :cond_a

    .line 740
    invoke-virtual {p0, p1}, Lorg/apache/harmony/luni/platform/OSNetworkSystem;->oneTimeInitializationImpl(Z)V

    .line 741
    const/4 v0, 0x1

    sput-boolean v0, Lorg/apache/harmony/luni/platform/OSNetworkSystem;->isNetworkInited:Z

    .line 743
    :cond_a
    return-void
.end method

.method native oneTimeInitializationImpl(Z)V
.end method

.method public peekDatagram(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)I
    .registers 5
    .parameter "aFD"
    .parameter "sender"
    .parameter "receiveTimeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 207
    invoke-static {p1, p2, p3}, Lorg/apache/harmony/luni/platform/OSNetworkSystem;->peekDatagramImpl(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)I

    move-result v0

    return v0
.end method

.method public read(Ljava/io/FileDescriptor;[BIII)I
    .registers 7
    .parameter "aFD"
    .parameter "data"
    .parameter "offset"
    .parameter "count"
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    invoke-static {p1, p2, p3, p4, p5}, Lorg/apache/harmony/luni/platform/OSNetworkSystem;->readSocketImpl(Ljava/io/FileDescriptor;[BIII)I

    move-result v0

    return v0
.end method

.method public readDirect(Ljava/io/FileDescriptor;IIII)I
    .registers 7
    .parameter "aFD"
    .parameter "address"
    .parameter "offset"
    .parameter "count"
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    invoke-static {p1, p2, p3, p4, p5}, Lorg/apache/harmony/luni/platform/OSNetworkSystem;->readSocketDirectImpl(Ljava/io/FileDescriptor;IIII)I

    move-result v0

    return v0
.end method

.method public receiveDatagram(Ljava/io/FileDescriptor;Ljava/net/DatagramPacket;[BIIIZ)I
    .registers 9
    .parameter "aFD"
    .parameter "packet"
    .parameter "data"
    .parameter "offset"
    .parameter "length"
    .parameter "receiveTimeout"
    .parameter "peek"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 181
    invoke-static/range {p1 .. p7}, Lorg/apache/harmony/luni/platform/OSNetworkSystem;->receiveDatagramImpl(Ljava/io/FileDescriptor;Ljava/net/DatagramPacket;[BIIIZ)I

    move-result v0

    return v0
.end method

.method public receiveDatagramDirect(Ljava/io/FileDescriptor;Ljava/net/DatagramPacket;IIIIZ)I
    .registers 9
    .parameter "aFD"
    .parameter "packet"
    .parameter "address"
    .parameter "offset"
    .parameter "length"
    .parameter "receiveTimeout"
    .parameter "peek"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 188
    invoke-static/range {p1 .. p7}, Lorg/apache/harmony/luni/platform/OSNetworkSystem;->receiveDatagramDirectImpl(Ljava/io/FileDescriptor;Ljava/net/DatagramPacket;IIIIZ)I

    move-result v0

    return v0
.end method

.method public receiveStream(Ljava/io/FileDescriptor;[BIII)I
    .registers 7
    .parameter "aFD"
    .parameter "data"
    .parameter "offset"
    .parameter "count"
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 236
    invoke-static {p1, p2, p3, p4, p5}, Lorg/apache/harmony/luni/platform/OSNetworkSystem;->receiveStreamImpl(Ljava/io/FileDescriptor;[BIII)I

    move-result v0

    return v0
.end method

.method public recvConnectedDatagram(Ljava/io/FileDescriptor;Ljava/net/DatagramPacket;[BIIIZ)I
    .registers 9
    .parameter "aFD"
    .parameter "packet"
    .parameter "data"
    .parameter "offset"
    .parameter "length"
    .parameter "receiveTimeout"
    .parameter "peek"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 195
    invoke-static/range {p1 .. p7}, Lorg/apache/harmony/luni/platform/OSNetworkSystem;->recvConnectedDatagramImpl(Ljava/io/FileDescriptor;Ljava/net/DatagramPacket;[BIIIZ)I

    move-result v0

    return v0
.end method

.method public recvConnectedDatagramDirect(Ljava/io/FileDescriptor;Ljava/net/DatagramPacket;IIIIZ)I
    .registers 9
    .parameter "aFD"
    .parameter "packet"
    .parameter "address"
    .parameter "offset"
    .parameter "length"
    .parameter "receiveTimeout"
    .parameter "peek"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 202
    invoke-static/range {p1 .. p7}, Lorg/apache/harmony/luni/platform/OSNetworkSystem;->recvConnectedDatagramDirectImpl(Ljava/io/FileDescriptor;Ljava/net/DatagramPacket;IIIIZ)I

    move-result v0

    return v0
.end method

.method public select([Ljava/io/FileDescriptor;[Ljava/io/FileDescriptor;J)[I
    .registers 14
    .parameter "readFDs"
    .parameter "writeFDs"
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 305
    array-length v2, p1

    .line 306
    .local v2, countRead:I
    array-length v3, p2

    .line 307
    .local v3, countWrite:I
    const/4 v7, 0x0

    .line 308
    .local v7, result:I
    add-int v0, v2, v3

    if-nez v0, :cond_b

    .line 309
    new-array v0, v8, [I

    .line 321
    :goto_a
    return-object v0

    .line 311
    :cond_b
    add-int v0, v2, v3

    new-array v4, v0, [I

    .local v4, flags:[I
    move-object v0, p1

    move-object v1, p2

    move-wide v5, p3

    .line 314
    invoke-static/range {v0 .. v6}, Lorg/apache/harmony/luni/platform/OSNetworkSystem;->selectImpl([Ljava/io/FileDescriptor;[Ljava/io/FileDescriptor;II[IJ)I

    move-result v7

    .line 317
    if-ltz v7, :cond_1a

    move-object v0, v4

    .line 318
    goto :goto_a

    .line 320
    :cond_1a
    const/16 v0, -0xd1

    if-ne v0, v7, :cond_21

    .line 321
    new-array v0, v8, [I

    goto :goto_a

    .line 323
    :cond_21
    new-instance v0, Ljava/net/SocketException;

    invoke-direct {v0}, Ljava/net/SocketException;-><init>()V

    throw v0
.end method

.method public sendConnectedDatagram(Ljava/io/FileDescriptor;[BIIZ)I
    .registers 7
    .parameter "fd"
    .parameter "data"
    .parameter "offset"
    .parameter "length"
    .parameter "bindToDevice"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 212
    invoke-static {p1, p2, p3, p4, p5}, Lorg/apache/harmony/luni/platform/OSNetworkSystem;->sendConnectedDatagramImpl(Ljava/io/FileDescriptor;[BIIZ)I

    move-result v0

    return v0
.end method

.method public sendConnectedDatagramDirect(Ljava/io/FileDescriptor;IIIZ)I
    .registers 7
    .parameter "fd"
    .parameter "address"
    .parameter "offset"
    .parameter "length"
    .parameter "bindToDevice"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 217
    invoke-static {p1, p2, p3, p4, p5}, Lorg/apache/harmony/luni/platform/OSNetworkSystem;->sendConnectedDatagramDirectImpl(Ljava/io/FileDescriptor;IIIZ)I

    move-result v0

    return v0
.end method

.method public sendDatagram(Ljava/io/FileDescriptor;[BIIIZILjava/net/InetAddress;)I
    .registers 10
    .parameter "fd"
    .parameter "data"
    .parameter "offset"
    .parameter "length"
    .parameter "port"
    .parameter "bindToDevice"
    .parameter "trafficClass"
    .parameter "inetAddress"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 162
    invoke-static/range {p1 .. p8}, Lorg/apache/harmony/luni/platform/OSNetworkSystem;->sendDatagramImpl(Ljava/io/FileDescriptor;[BIIIZILjava/net/InetAddress;)I

    move-result v0

    return v0
.end method

.method public sendDatagram2(Ljava/io/FileDescriptor;[BIIILjava/net/InetAddress;)I
    .registers 8
    .parameter "fd"
    .parameter "data"
    .parameter "offset"
    .parameter "length"
    .parameter "port"
    .parameter "inetAddress"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 175
    invoke-static/range {p1 .. p6}, Lorg/apache/harmony/luni/platform/OSNetworkSystem;->sendDatagramImpl2(Ljava/io/FileDescriptor;[BIIILjava/net/InetAddress;)I

    move-result v0

    return v0
.end method

.method public sendDatagramDirect(Ljava/io/FileDescriptor;IIIIZILjava/net/InetAddress;)I
    .registers 10
    .parameter "fd"
    .parameter "address"
    .parameter "offset"
    .parameter "length"
    .parameter "port"
    .parameter "bindToDevice"
    .parameter "trafficClass"
    .parameter "inetAddress"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 169
    invoke-static/range {p1 .. p8}, Lorg/apache/harmony/luni/platform/OSNetworkSystem;->sendDatagramDirectImpl(Ljava/io/FileDescriptor;IIIIZILjava/net/InetAddress;)I

    move-result v0

    return v0
.end method

.method public sendStream(Ljava/io/FileDescriptor;[BII)I
    .registers 6
    .parameter "fd"
    .parameter "data"
    .parameter "offset"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 241
    invoke-static {p1, p2, p3, p4}, Lorg/apache/harmony/luni/platform/OSNetworkSystem;->sendStreamImpl(Ljava/io/FileDescriptor;[BII)I

    move-result v0

    return v0
.end method

.method public sendUrgentData(Ljava/io/FileDescriptor;B)V
    .registers 3
    .parameter "fd"
    .parameter "value"

    .prologue
    .line 257
    invoke-static {p1, p2}, Lorg/apache/harmony/luni/platform/OSNetworkSystem;->sendUrgentDataImpl(Ljava/io/FileDescriptor;B)V

    .line 258
    return-void
.end method

.method public setInetAddress(Ljava/net/InetAddress;[B)V
    .registers 3
    .parameter "sender"
    .parameter "address"

    .prologue
    .line 393
    invoke-virtual {p0, p1, p2}, Lorg/apache/harmony/luni/platform/OSNetworkSystem;->setInetAddressImpl(Ljava/net/InetAddress;[B)V

    .line 394
    return-void
.end method

.method native setInetAddressImpl(Ljava/net/InetAddress;[B)V
.end method

.method public setNonBlocking(Ljava/io/FileDescriptor;Z)V
    .registers 3
    .parameter "aFD"
    .parameter "block"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 115
    invoke-static {p1, p2}, Lorg/apache/harmony/luni/platform/OSNetworkSystem;->setNonBlockingImpl(Ljava/io/FileDescriptor;Z)V

    .line 116
    return-void
.end method

.method public setSocketOption(Ljava/io/FileDescriptor;ILjava/lang/Object;)V
    .registers 4
    .parameter "aFD"
    .parameter "opt"
    .parameter "optVal"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 367
    invoke-static {p1, p2, p3}, Lorg/apache/harmony/luni/platform/OSNetworkSystem;->setSocketOptionImpl(Ljava/io/FileDescriptor;ILjava/lang/Object;)V

    .line 368
    return-void
.end method

.method public shutdownInput(Ljava/io/FileDescriptor;)V
    .registers 2
    .parameter "descriptor"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 245
    invoke-direct {p0, p1}, Lorg/apache/harmony/luni/platform/OSNetworkSystem;->shutdownInputImpl(Ljava/io/FileDescriptor;)V

    .line 246
    return-void
.end method

.method public shutdownOutput(Ljava/io/FileDescriptor;)V
    .registers 2
    .parameter "descriptor"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 249
    invoke-direct {p0, p1}, Lorg/apache/harmony/luni/platform/OSNetworkSystem;->shutdownOutputImpl(Ljava/io/FileDescriptor;)V

    .line 250
    return-void
.end method

.method public socketClose(Ljava/io/FileDescriptor;)V
    .registers 2
    .parameter "aFD"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 380
    invoke-static {p1}, Lorg/apache/harmony/luni/platform/OSNetworkSystem;->socketCloseImpl(Ljava/io/FileDescriptor;)V

    .line 381
    return-void
.end method

.method public supportsUrgentData(Ljava/io/FileDescriptor;)Z
    .registers 3
    .parameter "fd"

    .prologue
    .line 253
    invoke-static {p1}, Lorg/apache/harmony/luni/platform/OSNetworkSystem;->supportsUrgentDataImpl(Ljava/io/FileDescriptor;)Z

    move-result v0

    return v0
.end method

.method public write(Ljava/io/FileDescriptor;[BII)I
    .registers 6
    .parameter "aFD"
    .parameter "data"
    .parameter "offset"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    invoke-static {p1, p2, p3, p4}, Lorg/apache/harmony/luni/platform/OSNetworkSystem;->writeSocketImpl(Ljava/io/FileDescriptor;[BII)I

    move-result v0

    return v0
.end method

.method public writeDirect(Ljava/io/FileDescriptor;III)I
    .registers 6
    .parameter "aFD"
    .parameter "address"
    .parameter "offset"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 110
    invoke-static {p1, p2, p3, p4}, Lorg/apache/harmony/luni/platform/OSNetworkSystem;->writeSocketDirectImpl(Ljava/io/FileDescriptor;III)I

    move-result v0

    return v0
.end method
