.class Lorg/apache/harmony/luni/net/PlainServerSocketImpl;
.super Lorg/apache/harmony/luni/net/PlainSocketImpl;
.source "PlainServerSocketImpl.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Lorg/apache/harmony/luni/net/PlainSocketImpl;-><init>()V

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;)V
    .registers 2
    .parameter "fd"

    .prologue
    .line 41
    invoke-direct {p0}, Lorg/apache/harmony/luni/net/PlainSocketImpl;-><init>()V

    .line 42
    iput-object p1, p0, Lorg/apache/harmony/luni/net/PlainServerSocketImpl;->fd:Ljava/io/FileDescriptor;

    .line 43
    return-void
.end method


# virtual methods
.method protected create(Z)V
    .registers 5
    .parameter "isStreaming"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 47
    iput-boolean p1, p0, Lorg/apache/harmony/luni/net/PlainServerSocketImpl;->streaming:Z

    .line 48
    if-eqz p1, :cond_10

    .line 49
    iget-object v0, p0, Lorg/apache/harmony/luni/net/PlainServerSocketImpl;->netImpl:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v1, p0, Lorg/apache/harmony/luni/net/PlainServerSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {}, Lorg/apache/harmony/luni/net/NetUtil;->preferIPv4Stack()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lorg/apache/harmony/luni/platform/INetworkSystem;->createServerStreamSocket(Ljava/io/FileDescriptor;Z)V

    .line 53
    :goto_f
    return-void

    .line 51
    :cond_10
    iget-object v0, p0, Lorg/apache/harmony/luni/net/PlainServerSocketImpl;->netImpl:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v1, p0, Lorg/apache/harmony/luni/net/PlainServerSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {}, Lorg/apache/harmony/luni/net/NetUtil;->preferIPv4Stack()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lorg/apache/harmony/luni/platform/INetworkSystem;->createDatagramSocket(Ljava/io/FileDescriptor;Z)V

    goto :goto_f
.end method
