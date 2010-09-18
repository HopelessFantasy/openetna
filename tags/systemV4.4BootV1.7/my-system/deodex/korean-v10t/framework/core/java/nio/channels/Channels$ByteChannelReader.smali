.class Ljava/nio/channels/Channels$ByteChannelReader;
.super Ljava/io/Reader;
.source "Channels.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/nio/channels/Channels;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ByteChannelReader"
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x2000


# instance fields
.field bytes:Ljava/nio/ByteBuffer;

.field chars:Ljava/nio/CharBuffer;

.field decoder:Ljava/nio/charset/CharsetDecoder;

.field private inputStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/nio/charset/CharsetDecoder;I)V
    .registers 7
    .parameter "aInputStream"
    .parameter "aDecoder"
    .parameter "minBufferCapacity"

    .prologue
    .line 487
    invoke-direct {p0, p1}, Ljava/io/Reader;-><init>(Ljava/lang/Object;)V

    .line 488
    invoke-virtual {p2}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 489
    iput-object p1, p0, Ljava/nio/channels/Channels$ByteChannelReader;->inputStream:Ljava/io/InputStream;

    .line 490
    const/16 v1, 0x2000

    invoke-static {p3, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 491
    .local v0, bufferSize:I
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Ljava/nio/channels/Channels$ByteChannelReader;->bytes:Ljava/nio/ByteBuffer;

    .line 492
    invoke-static {v0}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v1

    iput-object v1, p0, Ljava/nio/channels/Channels$ByteChannelReader;->chars:Ljava/nio/CharBuffer;

    .line 493
    iput-object p2, p0, Ljava/nio/channels/Channels$ByteChannelReader;->decoder:Ljava/nio/charset/CharsetDecoder;

    .line 494
    iget-object v1, p0, Ljava/nio/channels/Channels$ByteChannelReader;->chars:Ljava/nio/CharBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/CharBuffer;->limit(I)Ljava/nio/Buffer;

    .line 495
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
    .line 501
    iget-object v0, p0, Ljava/nio/channels/Channels$ByteChannelReader;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 502
    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Ljava/nio/channels/Channels$ByteChannelReader;->decoder:Ljava/nio/charset/CharsetDecoder;

    .line 503
    iget-object v1, p0, Ljava/nio/channels/Channels$ByteChannelReader;->inputStream:Ljava/io/InputStream;

    if-eqz v1, :cond_12

    .line 504
    iget-object v1, p0, Ljava/nio/channels/Channels$ByteChannelReader;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 505
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/nio/channels/Channels$ByteChannelReader;->inputStream:Ljava/io/InputStream;

    .line 507
    :cond_12
    monitor-exit v0

    .line 508
    return-void

    .line 507
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_4 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public read()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 531
    iget-object v0, p0, Ljava/nio/channels/Channels$ByteChannelReader;->inputStream:Ljava/io/InputStream;

    iget-object v1, p0, Ljava/nio/channels/Channels$ByteChannelReader;->bytes:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Ljava/nio/channels/Channels$ByteChannelReader;->chars:Ljava/nio/CharBuffer;

    iget-object v3, p0, Ljava/nio/channels/Channels$ByteChannelReader;->decoder:Ljava/nio/charset/CharsetDecoder;

    iget-object v4, p0, Ljava/nio/channels/Channels$ByteChannelReader;->lock:Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3, v4}, Lorg/apache/harmony/nio/internal/IOUtil;->readInputStreamReader(Ljava/io/InputStream;Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Ljava/nio/charset/CharsetDecoder;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public read([CII)I
    .registers 12
    .parameter "buf"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 539
    iget-object v3, p0, Ljava/nio/channels/Channels$ByteChannelReader;->inputStream:Ljava/io/InputStream;

    iget-object v4, p0, Ljava/nio/channels/Channels$ByteChannelReader;->bytes:Ljava/nio/ByteBuffer;

    iget-object v5, p0, Ljava/nio/channels/Channels$ByteChannelReader;->chars:Ljava/nio/CharBuffer;

    iget-object v6, p0, Ljava/nio/channels/Channels$ByteChannelReader;->decoder:Ljava/nio/charset/CharsetDecoder;

    iget-object v7, p0, Ljava/nio/channels/Channels$ByteChannelReader;->lock:Ljava/lang/Object;

    move-object v0, p1

    move v1, p2

    move v2, p3

    invoke-static/range {v0 .. v7}, Lorg/apache/harmony/nio/internal/IOUtil;->readInputStreamReader([CIILjava/io/InputStream;Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Ljava/nio/charset/CharsetDecoder;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public ready()Z
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 514
    iget-object v1, p0, Ljava/nio/channels/Channels$ByteChannelReader;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 515
    :try_start_4
    iget-object v2, p0, Ljava/nio/channels/Channels$ByteChannelReader;->inputStream:Ljava/io/InputStream;

    if-nez v2, :cond_b

    .line 516
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_2c

    move v1, v4

    .line 522
    :goto_a
    return v1

    .line 519
    :cond_b
    :try_start_b
    iget-object v2, p0, Ljava/nio/channels/Channels$ByteChannelReader;->chars:Ljava/nio/CharBuffer;

    invoke-virtual {v2}, Ljava/nio/CharBuffer;->limit()I

    move-result v2

    iget-object v3, p0, Ljava/nio/channels/Channels$ByteChannelReader;->chars:Ljava/nio/CharBuffer;

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->position()I

    move-result v3

    if-gt v2, v3, :cond_21

    iget-object v2, p0, Ljava/nio/channels/Channels$ByteChannelReader;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->available()I
    :try_end_1e
    .catchall {:try_start_b .. :try_end_1e} :catchall_2c
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_1e} :catch_27

    move-result v2

    if-lez v2, :cond_25

    :cond_21
    const/4 v2, 0x1

    :goto_22
    :try_start_22
    monitor-exit v1

    move v1, v2

    goto :goto_a

    :cond_25
    move v2, v4

    goto :goto_22

    .line 521
    :catch_27
    move-exception v2

    move-object v0, v2

    .line 522
    .local v0, e:Ljava/io/IOException;
    monitor-exit v1

    move v1, v4

    goto :goto_a

    .line 524
    .end local v0           #e:Ljava/io/IOException;
    :catchall_2c
    move-exception v2

    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_22 .. :try_end_2e} :catchall_2c

    throw v2
.end method
