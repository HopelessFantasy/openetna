.class Ljava/nio/channels/Channels$ReaderInputStream;
.super Ljava/nio/channels/Channels$ChannelInputStream;
.source "Channels.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/nio/channels/Channels;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReaderInputStream"
.end annotation


# direct methods
.method public constructor <init>(Ljava/nio/channels/ReadableByteChannel;)V
    .registers 2
    .parameter "aChannel"

    .prologue
    .line 308
    invoke-direct {p0, p1}, Ljava/nio/channels/Channels$ChannelInputStream;-><init>(Ljava/nio/channels/ReadableByteChannel;)V

    .line 309
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
    .line 318
    monitor-enter p0

    add-int v1, p3, p2

    :try_start_3
    array-length v2, p1

    if-gt v1, v2, :cond_a

    if-ltz p3, :cond_a

    if-gez p2, :cond_13

    .line 319
    :cond_a
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_10

    .line 318
    :catchall_10
    move-exception v1

    monitor-exit p0

    throw v1

    .line 321
    :cond_13
    if-nez p3, :cond_18

    .line 322
    const/4 v1, 0x0

    .line 325
    :goto_16
    monitor-exit p0

    return v1

    .line 324
    :cond_18
    :try_start_18
    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 325
    .local v0, buffer:Ljava/nio/ByteBuffer;
    iget-object v1, p0, Ljava/nio/channels/Channels$ReaderInputStream;->channel:Ljava/nio/channels/ReadableByteChannel;

    invoke-interface {v1, v0}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I
    :try_end_21
    .catchall {:try_start_18 .. :try_end_21} :catchall_10

    move-result v1

    goto :goto_16
.end method
