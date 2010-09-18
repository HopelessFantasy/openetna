.class public final Ljava/nio/channels/Channels;
.super Ljava/lang/Object;
.source "Channels.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/nio/channels/Channels$ByteChannelWriter;,
        Ljava/nio/channels/Channels$ByteChannelReader;,
        Ljava/nio/channels/Channels$WritableByteChannelImpl;,
        Ljava/nio/channels/Channels$ReadableByteChannelImpl;,
        Ljava/nio/channels/Channels$WritableByteChannelOutputStream;,
        Ljava/nio/channels/Channels$ReaderInputStream;,
        Ljava/nio/channels/Channels$ReadableByteChannelInputStream;,
        Ljava/nio/channels/Channels$ChannelInputStream;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method public static newChannel(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;
    .registers 2
    .parameter "inputStream"

    .prologue
    .line 112
    new-instance v0, Ljava/nio/channels/Channels$ReadableByteChannelImpl;

    invoke-direct {v0, p0}, Ljava/nio/channels/Channels$ReadableByteChannelImpl;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public static newChannel(Ljava/io/OutputStream;)Ljava/nio/channels/WritableByteChannel;
    .registers 2
    .parameter "outputStream"

    .prologue
    .line 131
    new-instance v0, Ljava/nio/channels/Channels$WritableByteChannelImpl;

    invoke-direct {v0, p0}, Ljava/nio/channels/Channels$WritableByteChannelImpl;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method

.method public static newInputStream(Ljava/nio/channels/ReadableByteChannel;)Ljava/io/InputStream;
    .registers 2
    .parameter "channel"

    .prologue
    .line 73
    new-instance v0, Ljava/nio/channels/Channels$ReadableByteChannelInputStream;

    invoke-direct {v0, p0}, Ljava/nio/channels/Channels$ReadableByteChannelInputStream;-><init>(Ljava/nio/channels/ReadableByteChannel;)V

    return-object v0
.end method

.method public static newOutputStream(Ljava/nio/channels/WritableByteChannel;)Ljava/io/OutputStream;
    .registers 2
    .parameter "channel"

    .prologue
    .line 94
    new-instance v0, Ljava/nio/channels/Channels$WritableByteChannelOutputStream;

    invoke-direct {v0, p0}, Ljava/nio/channels/Channels$WritableByteChannelOutputStream;-><init>(Ljava/nio/channels/WritableByteChannel;)V

    return-object v0
.end method

.method public static newReader(Ljava/nio/channels/ReadableByteChannel;Ljava/lang/String;)Ljava/io/Reader;
    .registers 4
    .parameter "channel"
    .parameter "charsetName"

    .prologue
    .line 169
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Ljava/nio/channels/Channels;->newReader(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/charset/CharsetDecoder;I)Ljava/io/Reader;

    move-result-object v0

    return-object v0
.end method

.method public static newReader(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/charset/CharsetDecoder;I)Ljava/io/Reader;
    .registers 5
    .parameter "channel"
    .parameter "decoder"
    .parameter "minBufferCapacity"

    .prologue
    .line 149
    new-instance v0, Ljava/nio/channels/Channels$ByteChannelReader;

    new-instance v1, Ljava/nio/channels/Channels$ReaderInputStream;

    invoke-direct {v1, p0}, Ljava/nio/channels/Channels$ReaderInputStream;-><init>(Ljava/nio/channels/ReadableByteChannel;)V

    invoke-direct {v0, v1, p1, p2}, Ljava/nio/channels/Channels$ByteChannelReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/CharsetDecoder;I)V

    return-object v0
.end method

.method public static newWriter(Ljava/nio/channels/WritableByteChannel;Ljava/lang/String;)Ljava/io/Writer;
    .registers 4
    .parameter "channel"
    .parameter "charsetName"

    .prologue
    .line 208
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Ljava/nio/channels/Channels;->newWriter(Ljava/nio/channels/WritableByteChannel;Ljava/nio/charset/CharsetEncoder;I)Ljava/io/Writer;

    move-result-object v0

    return-object v0
.end method

.method public static newWriter(Ljava/nio/channels/WritableByteChannel;Ljava/nio/charset/CharsetEncoder;I)Ljava/io/Writer;
    .registers 5
    .parameter "channel"
    .parameter "encoder"
    .parameter "minBufferCapacity"

    .prologue
    .line 188
    new-instance v0, Ljava/nio/channels/Channels$ByteChannelWriter;

    new-instance v1, Ljava/nio/channels/Channels$WritableByteChannelOutputStream;

    invoke-direct {v1, p0}, Ljava/nio/channels/Channels$WritableByteChannelOutputStream;-><init>(Ljava/nio/channels/WritableByteChannel;)V

    invoke-direct {v0, v1, p1, p2}, Ljava/nio/channels/Channels$ByteChannelWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/CharsetEncoder;I)V

    return-object v0
.end method

.method static wrapByteBuffer([BII)Ljava/nio/ByteBuffer;
    .registers 7
    .parameter "bytes"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 218
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 219
    .local v0, buffer:Ljava/nio/ByteBuffer;
    add-int v2, p1, p2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    if-gt v2, v3, :cond_16

    add-int v2, p1, p2

    move v1, v2

    .line 221
    .local v1, newLimit:I
    :goto_f
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 222
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 223
    return-object v0

    .line 219
    .end local v1           #newLimit:I
    :cond_16
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    move v1, v2

    goto :goto_f
.end method
