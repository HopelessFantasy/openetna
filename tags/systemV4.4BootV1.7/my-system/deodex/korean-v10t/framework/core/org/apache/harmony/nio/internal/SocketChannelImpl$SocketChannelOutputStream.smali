.class Lorg/apache/harmony/nio/internal/SocketChannelImpl$SocketChannelOutputStream;
.super Ljava/io/OutputStream;
.source "SocketChannelImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/nio/internal/SocketChannelImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SocketChannelOutputStream"
.end annotation


# instance fields
.field channel:Ljava/nio/channels/SocketChannel;


# direct methods
.method public constructor <init>(Ljava/nio/channels/SocketChannel;)V
    .registers 2
    .parameter "channel"

    .prologue
    .line 962
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 963
    iput-object p1, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl$SocketChannelOutputStream;->channel:Ljava/nio/channels/SocketChannel;

    .line 964
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 973
    iget-object v0, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl$SocketChannelOutputStream;->channel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->close()V

    .line 974
    return-void
.end method

.method public write(I)V
    .registers 5
    .parameter "oneByte"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 997
    iget-object v1, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl$SocketChannelOutputStream;->channel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->isBlocking()Z

    move-result v1

    if-nez v1, :cond_e

    .line 998
    new-instance v1, Ljava/nio/channels/IllegalBlockingModeException;

    invoke-direct {v1}, Ljava/nio/channels/IllegalBlockingModeException;-><init>()V

    throw v1

    .line 1000
    :cond_e
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1001
    .local v0, buffer:Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 1002
    iget-object v1, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl$SocketChannelOutputStream;->channel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v1, v0}, Ljava/nio/channels/SocketChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 1003
    return-void
.end method

.method public write([BII)V
    .registers 7
    .parameter "buffer"
    .parameter "offset"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 982
    if-ltz p2, :cond_9

    if-ltz p3, :cond_9

    add-int v1, p3, p2

    array-length v2, p1

    if-le v1, v2, :cond_f

    .line 983
    :cond_9
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 985
    :cond_f
    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 986
    .local v0, buf:Ljava/nio/ByteBuffer;
    iget-object v1, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl$SocketChannelOutputStream;->channel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->isBlocking()Z

    move-result v1

    if-nez v1, :cond_21

    .line 987
    new-instance v1, Ljava/nio/channels/IllegalBlockingModeException;

    invoke-direct {v1}, Ljava/nio/channels/IllegalBlockingModeException;-><init>()V

    throw v1

    .line 989
    :cond_21
    iget-object v1, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl$SocketChannelOutputStream;->channel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v1, v0}, Ljava/nio/channels/SocketChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 990
    return-void
.end method
