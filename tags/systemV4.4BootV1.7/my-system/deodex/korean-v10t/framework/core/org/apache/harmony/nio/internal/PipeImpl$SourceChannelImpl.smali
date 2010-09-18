.class Lorg/apache/harmony/nio/internal/PipeImpl$SourceChannelImpl;
.super Ljava/nio/channels/Pipe$SourceChannel;
.source "PipeImpl.java"

# interfaces
.implements Lorg/apache/harmony/luni/platform/FileDescriptorHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/nio/internal/PipeImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SourceChannelImpl"
.end annotation


# instance fields
.field private sourceServer:Ljava/nio/channels/ServerSocketChannel;

.field private sourceSocket:Lorg/apache/harmony/nio/internal/SocketChannelImpl;

.field final synthetic this$0:Lorg/apache/harmony/nio/internal/PipeImpl;


# direct methods
.method protected constructor <init>(Lorg/apache/harmony/nio/internal/PipeImpl;Ljava/nio/channels/spi/SelectorProvider;)V
    .registers 7
    .parameter
    .parameter "provider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    iput-object p1, p0, Lorg/apache/harmony/nio/internal/PipeImpl$SourceChannelImpl;->this$0:Lorg/apache/harmony/nio/internal/PipeImpl;

    .line 108
    invoke-direct {p0, p2}, Ljava/nio/channels/Pipe$SourceChannel;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    .line 109
    invoke-virtual {p2}, Ljava/nio/channels/spi/SelectorProvider;->openServerSocketChannel()Ljava/nio/channels/ServerSocketChannel;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/nio/internal/PipeImpl$SourceChannelImpl;->sourceServer:Ljava/nio/channels/ServerSocketChannel;

    .line 110
    iget-object v0, p0, Lorg/apache/harmony/nio/internal/PipeImpl$SourceChannelImpl;->sourceServer:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object v0

    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v0, v1}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V

    .line 112
    iget-object v0, p0, Lorg/apache/harmony/nio/internal/PipeImpl$SourceChannelImpl;->sourceServer:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v0

    invoke-static {p1, v0}, Lorg/apache/harmony/nio/internal/PipeImpl;->access$002(Lorg/apache/harmony/nio/internal/PipeImpl;I)I

    .line 113
    return-void
.end method


# virtual methods
.method accept()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Lorg/apache/harmony/nio/internal/PipeImpl$SourceChannelImpl;->sourceServer:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/ServerSocketChannel;->accept()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/nio/internal/SocketChannelImpl;

    iput-object v0, p0, Lorg/apache/harmony/nio/internal/PipeImpl$SourceChannelImpl;->sourceSocket:Lorg/apache/harmony/nio/internal/SocketChannelImpl;

    .line 121
    return-void
.end method

.method closeServer()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Lorg/apache/harmony/nio/internal/PipeImpl$SourceChannelImpl;->sourceServer:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/ServerSocketChannel;->close()V

    .line 117
    return-void
.end method

.method public getFD()Ljava/io/FileDescriptor;
    .registers 2

    .prologue
    .line 146
    iget-object v0, p0, Lorg/apache/harmony/nio/internal/PipeImpl$SourceChannelImpl;->sourceSocket:Lorg/apache/harmony/nio/internal/SocketChannelImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method protected implCloseSelectableChannel()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Lorg/apache/harmony/nio/internal/PipeImpl$SourceChannelImpl;->sourceSocket:Lorg/apache/harmony/nio/internal/SocketChannelImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->close()V

    .line 125
    return-void
.end method

.method protected implConfigureBlocking(Z)V
    .registers 3
    .parameter "blockingMode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 129
    iget-object v0, p0, Lorg/apache/harmony/nio/internal/PipeImpl$SourceChannelImpl;->sourceSocket:Lorg/apache/harmony/nio/internal/SocketChannelImpl;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 130
    return-void
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .registers 3
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 133
    iget-object v0, p0, Lorg/apache/harmony/nio/internal/PipeImpl$SourceChannelImpl;->sourceSocket:Lorg/apache/harmony/nio/internal/SocketChannelImpl;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method public read([Ljava/nio/ByteBuffer;)J
    .registers 4
    .parameter "buffers"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 137
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/harmony/nio/internal/PipeImpl$SourceChannelImpl;->read([Ljava/nio/ByteBuffer;II)J

    move-result-wide v0

    return-wide v0
.end method

.method public read([Ljava/nio/ByteBuffer;II)J
    .registers 6
    .parameter "buffers"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 142
    iget-object v0, p0, Lorg/apache/harmony/nio/internal/PipeImpl$SourceChannelImpl;->sourceSocket:Lorg/apache/harmony/nio/internal/SocketChannelImpl;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->read([Ljava/nio/ByteBuffer;II)J

    move-result-wide v0

    return-wide v0
.end method
