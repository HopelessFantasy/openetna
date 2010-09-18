.class public Lorg/apache/harmony/nio/internal/SelectorProviderImpl;
.super Ljava/nio/channels/spi/SelectorProvider;
.source "SelectorProviderImpl.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/nio/channels/spi/SelectorProvider;-><init>()V

    .line 40
    return-void
.end method


# virtual methods
.method public openDatagramChannel()Ljava/nio/channels/DatagramChannel;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    new-instance v0, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;

    invoke-direct {v0, p0}, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    return-object v0
.end method

.method public openPipe()Ljava/nio/channels/Pipe;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    new-instance v0, Lorg/apache/harmony/nio/internal/PipeImpl;

    invoke-direct {v0}, Lorg/apache/harmony/nio/internal/PipeImpl;-><init>()V

    return-object v0
.end method

.method public openSelector()Ljava/nio/channels/spi/AbstractSelector;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    new-instance v0, Lorg/apache/harmony/nio/internal/SelectorImpl;

    invoke-direct {v0, p0}, Lorg/apache/harmony/nio/internal/SelectorImpl;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    return-object v0
.end method

.method public openServerSocketChannel()Ljava/nio/channels/ServerSocketChannel;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    new-instance v0, Lorg/apache/harmony/nio/internal/ServerSocketChannelImpl;

    invoke-direct {v0, p0}, Lorg/apache/harmony/nio/internal/ServerSocketChannelImpl;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    return-object v0
.end method

.method public openSocketChannel()Ljava/nio/channels/SocketChannel;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    new-instance v0, Lorg/apache/harmony/nio/internal/SocketChannelImpl;

    invoke-direct {v0, p0}, Lorg/apache/harmony/nio/internal/SocketChannelImpl;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    return-object v0
.end method
