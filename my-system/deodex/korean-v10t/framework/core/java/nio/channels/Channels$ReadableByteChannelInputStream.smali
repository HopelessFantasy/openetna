.class Ljava/nio/channels/Channels$ReadableByteChannelInputStream;
.super Ljava/nio/channels/Channels$ChannelInputStream;
.source "Channels.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/nio/channels/Channels;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReadableByteChannelInputStream"
.end annotation


# direct methods
.method public constructor <init>(Ljava/nio/channels/ReadableByteChannel;)V
    .registers 2
    .parameter "aChannel"

    .prologue
    .line 272
    invoke-direct {p0, p1}, Ljava/nio/channels/Channels$ChannelInputStream;-><init>(Ljava/nio/channels/ReadableByteChannel;)V

    .line 273
    return-void
.end method


# virtual methods
.method public declared-synchronized read([BII)I
    .registers 7
    .parameter "target"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 282
    monitor-enter p0

    add-int v1, p3, p2

    :try_start_3
    array-length v2, p1

    if-gt v1, v2, :cond_a

    if-ltz p3, :cond_a

    if-gez p2, :cond_13

    .line 283
    :cond_a
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_10

    .line 282
    :catchall_10
    move-exception v1

    monitor-exit p0

    throw v1

    .line 285
    :cond_13
    if-nez p3, :cond_18

    .line 286
    const/4 v1, 0x0

    .line 294
    :goto_16
    monitor-exit p0

    return v1

    .line 288
    :cond_18
    :try_start_18
    iget-object v1, p0, Ljava/nio/channels/Channels$ReadableByteChannelInputStream;->channel:Ljava/nio/channels/ReadableByteChannel;

    instance-of v1, v1, Ljava/nio/channels/SelectableChannel;

    if-eqz v1, :cond_2e

    .line 289
    iget-object v1, p0, Ljava/nio/channels/Channels$ReadableByteChannelInputStream;->channel:Ljava/nio/channels/ReadableByteChannel;

    check-cast v1, Ljava/nio/channels/SelectableChannel;

    invoke-virtual {v1}, Ljava/nio/channels/SelectableChannel;->isBlocking()Z

    move-result v1

    if-nez v1, :cond_2e

    .line 290
    new-instance v1, Ljava/nio/channels/IllegalBlockingModeException;

    invoke-direct {v1}, Ljava/nio/channels/IllegalBlockingModeException;-><init>()V

    throw v1

    .line 293
    :cond_2e
    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 294
    .local v0, buffer:Ljava/nio/ByteBuffer;
    iget-object v1, p0, Ljava/nio/channels/Channels$ReadableByteChannelInputStream;->channel:Ljava/nio/channels/ReadableByteChannel;

    invoke-interface {v1, v0}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I
    :try_end_37
    .catchall {:try_start_18 .. :try_end_37} :catchall_10

    move-result v1

    goto :goto_16
.end method
