.class Ljava/nio/channels/Channels$ByteChannelWriter;
.super Ljava/io/Writer;
.source "Channels.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/nio/channels/Channels;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ByteChannelWriter"
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x2000


# instance fields
.field private byteBuf:Ljava/nio/ByteBuffer;

.field private encoder:Ljava/nio/charset/CharsetEncoder;

.field private outputStream:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Ljava/nio/charset/CharsetEncoder;I)V
    .registers 5
    .parameter "aOutputStream"
    .parameter "aEncoder"
    .parameter "minBufferCap"

    .prologue
    .line 563
    invoke-direct {p0, p1}, Ljava/io/Writer;-><init>(Ljava/lang/Object;)V

    .line 564
    invoke-virtual {p2}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    .line 565
    iput-object p1, p0, Ljava/nio/channels/Channels$ByteChannelWriter;->outputStream:Ljava/io/OutputStream;

    .line 566
    const/16 v0, 0x2000

    invoke-static {p3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Ljava/nio/channels/Channels$ByteChannelWriter;->byteBuf:Ljava/nio/ByteBuffer;

    .line 567
    iput-object p2, p0, Ljava/nio/channels/Channels$ByteChannelWriter;->encoder:Ljava/nio/charset/CharsetEncoder;

    .line 568
    return-void
.end method


# virtual methods
.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 574
    iget-object v0, p0, Ljava/nio/channels/Channels$ByteChannelWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 575
    :try_start_3
    iget-object v1, p0, Ljava/nio/channels/Channels$ByteChannelWriter;->encoder:Ljava/nio/charset/CharsetEncoder;

    if-eqz v1, :cond_1a

    .line 576
    invoke-virtual {p0}, Ljava/nio/channels/Channels$ByteChannelWriter;->flush()V

    .line 577
    iget-object v1, p0, Ljava/nio/channels/Channels$ByteChannelWriter;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 578
    iget-object v1, p0, Ljava/nio/channels/Channels$ByteChannelWriter;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 579
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/nio/channels/Channels$ByteChannelWriter;->encoder:Ljava/nio/charset/CharsetEncoder;

    .line 580
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/nio/channels/Channels$ByteChannelWriter;->byteBuf:Ljava/nio/ByteBuffer;

    .line 582
    :cond_1a
    monitor-exit v0

    .line 583
    return-void

    .line 582
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public flush()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 589
    iget-object v0, p0, Ljava/nio/channels/Channels$ByteChannelWriter;->outputStream:Ljava/io/OutputStream;

    iget-object v1, p0, Ljava/nio/channels/Channels$ByteChannelWriter;->byteBuf:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Ljava/nio/channels/Channels$ByteChannelWriter;->encoder:Ljava/nio/charset/CharsetEncoder;

    iget-object v3, p0, Ljava/nio/channels/Channels$ByteChannelWriter;->lock:Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lorg/apache/harmony/nio/internal/IOUtil;->flushOutputStreamWriter(Ljava/io/OutputStream;Ljava/nio/ByteBuffer;Ljava/nio/charset/CharsetEncoder;Ljava/lang/Object;)V

    .line 591
    return-void
.end method

.method public write(I)V
    .registers 6
    .parameter "oneChar"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 605
    iget-object v0, p0, Ljava/nio/channels/Channels$ByteChannelWriter;->outputStream:Ljava/io/OutputStream;

    iget-object v1, p0, Ljava/nio/channels/Channels$ByteChannelWriter;->byteBuf:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Ljava/nio/channels/Channels$ByteChannelWriter;->encoder:Ljava/nio/charset/CharsetEncoder;

    iget-object v3, p0, Ljava/nio/channels/Channels$ByteChannelWriter;->lock:Ljava/lang/Object;

    invoke-static {p1, v0, v1, v2, v3}, Lorg/apache/harmony/nio/internal/IOUtil;->writeOutputStreamWriter(ILjava/io/OutputStream;Ljava/nio/ByteBuffer;Ljava/nio/charset/CharsetEncoder;Ljava/lang/Object;)V

    .line 607
    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .registers 11
    .parameter "str"
    .parameter "offset"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 613
    iget-object v3, p0, Ljava/nio/channels/Channels$ByteChannelWriter;->outputStream:Ljava/io/OutputStream;

    iget-object v4, p0, Ljava/nio/channels/Channels$ByteChannelWriter;->byteBuf:Ljava/nio/ByteBuffer;

    iget-object v5, p0, Ljava/nio/channels/Channels$ByteChannelWriter;->encoder:Ljava/nio/charset/CharsetEncoder;

    iget-object v6, p0, Ljava/nio/channels/Channels$ByteChannelWriter;->lock:Ljava/lang/Object;

    move-object v0, p1

    move v1, p2

    move v2, p3

    invoke-static/range {v0 .. v6}, Lorg/apache/harmony/nio/internal/IOUtil;->writeOutputStreamWriter(Ljava/lang/String;IILjava/io/OutputStream;Ljava/nio/ByteBuffer;Ljava/nio/charset/CharsetEncoder;Ljava/lang/Object;)V

    .line 615
    return-void
.end method

.method public write([CII)V
    .registers 11
    .parameter "buf"
    .parameter "offset"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 597
    iget-object v3, p0, Ljava/nio/channels/Channels$ByteChannelWriter;->outputStream:Ljava/io/OutputStream;

    iget-object v4, p0, Ljava/nio/channels/Channels$ByteChannelWriter;->byteBuf:Ljava/nio/ByteBuffer;

    iget-object v5, p0, Ljava/nio/channels/Channels$ByteChannelWriter;->encoder:Ljava/nio/charset/CharsetEncoder;

    iget-object v6, p0, Ljava/nio/channels/Channels$ByteChannelWriter;->lock:Ljava/lang/Object;

    move-object v0, p1

    move v1, p2

    move v2, p3

    invoke-static/range {v0 .. v6}, Lorg/apache/harmony/nio/internal/IOUtil;->writeOutputStreamWriter([CIILjava/io/OutputStream;Ljava/nio/ByteBuffer;Ljava/nio/charset/CharsetEncoder;Ljava/lang/Object;)V

    .line 599
    return-void
.end method
