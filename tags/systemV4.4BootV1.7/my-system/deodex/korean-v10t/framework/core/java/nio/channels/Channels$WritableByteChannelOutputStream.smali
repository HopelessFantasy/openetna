.class Ljava/nio/channels/Channels$WritableByteChannelOutputStream;
.super Ljava/io/OutputStream;
.source "Channels.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/nio/channels/Channels;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WritableByteChannelOutputStream"
.end annotation


# instance fields
.field private channel:Ljava/nio/channels/WritableByteChannel;


# direct methods
.method public constructor <init>(Ljava/nio/channels/WritableByteChannel;)V
    .registers 2
    .parameter "aChannel"

    .prologue
    .line 340
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 341
    iput-object p1, p0, Ljava/nio/channels/Channels$WritableByteChannelOutputStream;->channel:Ljava/nio/channels/WritableByteChannel;

    .line 342
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 378
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljava/nio/channels/Channels$WritableByteChannelOutputStream;->channel:Ljava/nio/channels/WritableByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/WritableByteChannel;->close()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 379
    monitor-exit p0

    return-void

    .line 378
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized write(I)V
    .registers 5
    .parameter "oneByte"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 348
    monitor-enter p0

    const/4 v1, 0x1

    :try_start_2
    new-array v0, v1, [B

    .line 349
    .local v0, wrappedByte:[B
    const/4 v1, 0x0

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 350
    invoke-virtual {p0, v0}, Ljava/nio/channels/Channels$WritableByteChannelOutputStream;->write([B)V
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_d

    .line 351
    monitor-exit p0

    return-void

    .line 348
    .end local v0           #wrappedByte:[B
    :catchall_d
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized write([BII)V
    .registers 7
    .parameter "source"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 359
    monitor-enter p0

    add-int v1, p3, p2

    :try_start_3
    array-length v2, p1

    if-gt v1, v2, :cond_a

    if-ltz p3, :cond_a

    if-gez p2, :cond_13

    .line 360
    :cond_a
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_10

    .line 359
    :catchall_10
    move-exception v1

    monitor-exit p0

    throw v1

    .line 362
    :cond_13
    if-nez p3, :cond_17

    .line 372
    :goto_15
    monitor-exit p0

    return-void

    .line 365
    :cond_17
    :try_start_17
    iget-object v1, p0, Ljava/nio/channels/Channels$WritableByteChannelOutputStream;->channel:Ljava/nio/channels/WritableByteChannel;

    instance-of v1, v1, Ljava/nio/channels/SelectableChannel;

    if-eqz v1, :cond_2d

    .line 366
    iget-object v1, p0, Ljava/nio/channels/Channels$WritableByteChannelOutputStream;->channel:Ljava/nio/channels/WritableByteChannel;

    check-cast v1, Ljava/nio/channels/SelectableChannel;

    invoke-virtual {v1}, Ljava/nio/channels/SelectableChannel;->isBlocking()Z

    move-result v1

    if-nez v1, :cond_2d

    .line 367
    new-instance v1, Ljava/nio/channels/IllegalBlockingModeException;

    invoke-direct {v1}, Ljava/nio/channels/IllegalBlockingModeException;-><init>()V

    throw v1

    .line 370
    :cond_2d
    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 371
    .local v0, buffer:Ljava/nio/ByteBuffer;
    iget-object v1, p0, Ljava/nio/channels/Channels$WritableByteChannelOutputStream;->channel:Ljava/nio/channels/WritableByteChannel;

    invoke-interface {v1, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_36
    .catchall {:try_start_17 .. :try_end_36} :catchall_10

    goto :goto_15
.end method
