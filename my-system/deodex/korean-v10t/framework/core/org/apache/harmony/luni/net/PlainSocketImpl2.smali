.class Lorg/apache/harmony/luni/net/PlainSocketImpl2;
.super Lorg/apache/harmony/luni/net/PlainSocketImpl;
.source "PlainSocketImpl2.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 44
    invoke-direct {p0}, Lorg/apache/harmony/luni/net/PlainSocketImpl;-><init>()V

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;ILjava/net/InetAddress;I)V
    .registers 5
    .parameter "fd"
    .parameter "localport"
    .parameter "addr"
    .parameter "port"

    .prologue
    .line 36
    invoke-direct {p0}, Lorg/apache/harmony/luni/net/PlainSocketImpl;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl2;->fd:Ljava/io/FileDescriptor;

    .line 38
    iput p2, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->localport:I

    .line 39
    iput-object p3, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->address:Ljava/net/InetAddress;

    .line 40
    iput p4, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl;->port:I

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/net/Proxy;)V
    .registers 2
    .parameter "proxy"

    .prologue
    .line 51
    invoke-direct {p0}, Lorg/apache/harmony/luni/net/PlainSocketImpl;-><init>()V

    .line 52
    iput-object p1, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl2;->proxy:Ljava/net/Proxy;

    .line 53
    return-void
.end method


# virtual methods
.method protected create(Z)V
    .registers 5
    .parameter "isStreaming"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    iput-boolean p1, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl2;->streaming:Z

    .line 58
    if-eqz p1, :cond_10

    .line 59
    iget-object v0, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl2;->netImpl:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v1, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl2;->fd:Ljava/io/FileDescriptor;

    invoke-static {}, Lorg/apache/harmony/luni/net/NetUtil;->preferIPv4Stack()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lorg/apache/harmony/luni/platform/INetworkSystem;->createSocket(Ljava/io/FileDescriptor;Z)V

    .line 63
    :goto_f
    return-void

    .line 61
    :cond_10
    iget-object v0, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl2;->netImpl:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v1, p0, Lorg/apache/harmony/luni/net/PlainSocketImpl2;->fd:Ljava/io/FileDescriptor;

    invoke-static {}, Lorg/apache/harmony/luni/net/NetUtil;->preferIPv4Stack()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lorg/apache/harmony/luni/platform/INetworkSystem;->createDatagramSocket(Ljava/io/FileDescriptor;Z)V

    goto :goto_f
.end method
