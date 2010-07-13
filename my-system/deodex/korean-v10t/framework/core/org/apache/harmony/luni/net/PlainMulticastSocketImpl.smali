.class Lorg/apache/harmony/luni/net/PlainMulticastSocketImpl;
.super Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;
.source "PlainMulticastSocketImpl.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Lorg/apache/harmony/luni/net/PlainDatagramSocketImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public create()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-static {}, Lorg/apache/harmony/luni/platform/Platform;->getNetworkSystem()Lorg/apache/harmony/luni/platform/INetworkSystem;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/harmony/luni/net/PlainMulticastSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {}, Lorg/apache/harmony/luni/net/NetUtil;->preferIPv4Stack()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lorg/apache/harmony/luni/platform/INetworkSystem;->createMulticastSocket(Ljava/io/FileDescriptor;Z)V

    .line 37
    return-void
.end method
