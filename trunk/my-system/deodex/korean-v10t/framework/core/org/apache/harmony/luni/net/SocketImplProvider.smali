.class public Lorg/apache/harmony/luni/net/SocketImplProvider;
.super Ljava/lang/Object;
.source "SocketImplProvider.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDatagramSocketImpl()Ljava/net/DatagramSocketImpl;
    .registers 1

    .prologue
    .line 51
    new-instance v0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;

    invoke-direct {v0}, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;-><init>()V

    return-object v0
.end method

.method public static getDatagramSocketImpl(Ljava/io/FileDescriptor;I)Ljava/net/DatagramSocketImpl;
    .registers 3
    .parameter "fd"
    .parameter "localPort"

    .prologue
    .line 59
    new-instance v0, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;

    invoke-direct {v0, p0, p1}, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;-><init>(Ljava/io/FileDescriptor;I)V

    return-object v0
.end method

.method public static getMulticastSocketImpl()Ljava/net/DatagramSocketImpl;
    .registers 1

    .prologue
    .line 55
    new-instance v0, Lorg/apache/harmony/luni/net/PlainMulticastSocketImpl;

    invoke-direct {v0}, Lorg/apache/harmony/luni/net/PlainMulticastSocketImpl;-><init>()V

    return-object v0
.end method

.method public static getServerSocketImpl()Ljava/net/SocketImpl;
    .registers 1

    .prologue
    .line 43
    new-instance v0, Lorg/apache/harmony/luni/net/PlainServerSocketImpl;

    invoke-direct {v0}, Lorg/apache/harmony/luni/net/PlainServerSocketImpl;-><init>()V

    return-object v0
.end method

.method public static getServerSocketImpl(Ljava/io/FileDescriptor;)Ljava/net/SocketImpl;
    .registers 2
    .parameter "fd"

    .prologue
    .line 47
    new-instance v0, Lorg/apache/harmony/luni/net/PlainServerSocketImpl;

    invoke-direct {v0, p0}, Lorg/apache/harmony/luni/net/PlainServerSocketImpl;-><init>(Ljava/io/FileDescriptor;)V

    return-object v0
.end method

.method public static getSocketImpl()Ljava/net/SocketImpl;
    .registers 1

    .prologue
    .line 27
    new-instance v0, Lorg/apache/harmony/luni/net/PlainSocketImpl2;

    invoke-direct {v0}, Lorg/apache/harmony/luni/net/PlainSocketImpl2;-><init>()V

    return-object v0
.end method

.method public static getSocketImpl(Ljava/io/FileDescriptor;ILjava/net/InetAddress;I)Ljava/net/SocketImpl;
    .registers 5
    .parameter "fd"
    .parameter "localport"
    .parameter "addr"
    .parameter "port"

    .prologue
    .line 39
    new-instance v0, Lorg/apache/harmony/luni/net/PlainSocketImpl2;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/apache/harmony/luni/net/PlainSocketImpl2;-><init>(Ljava/io/FileDescriptor;ILjava/net/InetAddress;I)V

    return-object v0
.end method

.method public static getSocketImpl(Ljava/net/Proxy;)Ljava/net/SocketImpl;
    .registers 2
    .parameter "proxy"

    .prologue
    .line 34
    new-instance v0, Lorg/apache/harmony/luni/net/PlainSocketImpl2;

    invoke-direct {v0, p0}, Lorg/apache/harmony/luni/net/PlainSocketImpl2;-><init>(Ljava/net/Proxy;)V

    return-object v0
.end method
