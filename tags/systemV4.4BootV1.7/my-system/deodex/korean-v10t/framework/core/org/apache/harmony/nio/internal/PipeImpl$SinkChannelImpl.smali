.class Lorg/apache/harmony/nio/internal/PipeImpl$SinkChannelImpl;
.super Ljava/nio/channels/Pipe$SinkChannel;
.source "PipeImpl.java"

# interfaces
.implements Lorg/apache/harmony/luni/platform/FileDescriptorHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/nio/internal/PipeImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SinkChannelImpl"
.end annotation


# instance fields
.field private sinkSocket:Lorg/apache/harmony/nio/internal/SocketChannelImpl;

.field final synthetic this$0:Lorg/apache/harmony/nio/internal/PipeImpl;


# direct methods
.method protected constructor <init>(Lorg/apache/harmony/nio/internal/PipeImpl;Ljava/nio/channels/spi/SelectorProvider;)V
    .registers 4
    .parameter
    .parameter "provider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 158
    iput-object p1, p0, Lorg/apache/harmony/nio/internal/PipeImpl$SinkChannelImpl;->this$0:Lorg/apache/harmony/nio/internal/PipeImpl;

    .line 159
    invoke-direct {p0, p2}, Ljava/nio/channels/Pipe$SinkChannel;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    .line 160
    invoke-virtual {p2}, Ljava/nio/channels/spi/SelectorProvider;->openSocketChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/nio/internal/SocketChannelImpl;

    iput-object v0, p0, Lorg/apache/harmony/nio/internal/PipeImpl$SinkChannelImpl;->sinkSocket:Lorg/apache/harmony/nio/internal/SocketChannelImpl;

    .line 161
    return-void
.end method


# virtual methods
.method public finishConnect()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 164
    iget-object v0, p0, Lorg/apache/harmony/nio/internal/PipeImpl$SinkChannelImpl;->sinkSocket:Lorg/apache/harmony/nio/internal/SocketChannelImpl;

    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/harmony/nio/internal/PipeImpl$SinkChannelImpl;->this$0:Lorg/apache/harmony/nio/internal/PipeImpl;

    invoke-static {v3}, Lorg/apache/harmony/nio/internal/PipeImpl;->access$000(Lorg/apache/harmony/nio/internal/PipeImpl;)I

    move-result v3

    invoke-direct {v1, v2, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v0, v1}, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->connect(Ljava/net/SocketAddress;)Z

    move-result v0

    return v0
.end method

.method public getFD()Ljava/io/FileDescriptor;
    .registers 2

    .prologue
    .line 191
    iget-object v0, p0, Lorg/apache/harmony/nio/internal/PipeImpl$SinkChannelImpl;->sinkSocket:Lorg/apache/harmony/nio/internal/SocketChannelImpl;

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
    .line 169
    iget-object v0, p0, Lorg/apache/harmony/nio/internal/PipeImpl$SinkChannelImpl;->sinkSocket:Lorg/apache/harmony/nio/internal/SocketChannelImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->close()V

    .line 170
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
    .line 174
    iget-object v0, p0, Lorg/apache/harmony/nio/internal/PipeImpl$SinkChannelImpl;->sinkSocket:Lorg/apache/harmony/nio/internal/SocketChannelImpl;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 175
    return-void
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .registers 3
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 178
    iget-object v0, p0, Lorg/apache/harmony/nio/internal/PipeImpl$SinkChannelImpl;->sinkSocket:Lorg/apache/harmony/nio/internal/SocketChannelImpl;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->write(Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method public write([Ljava/nio/ByteBuffer;)J
    .registers 4
    .parameter "buffers"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 182
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/harmony/nio/internal/PipeImpl$SinkChannelImpl;->write([Ljava/nio/ByteBuffer;II)J

    move-result-wide v0

    return-wide v0
.end method

.method public write([Ljava/nio/ByteBuffer;II)J
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
    .line 187
    iget-object v0, p0, Lorg/apache/harmony/nio/internal/PipeImpl$SinkChannelImpl;->sinkSocket:Lorg/apache/harmony/nio/internal/SocketChannelImpl;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->write([Ljava/nio/ByteBuffer;II)J

    move-result-wide v0

    return-wide v0
.end method
