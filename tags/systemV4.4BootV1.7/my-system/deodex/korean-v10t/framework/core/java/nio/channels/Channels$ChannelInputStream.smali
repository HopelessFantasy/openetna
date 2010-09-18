.class Ljava/nio/channels/Channels$ChannelInputStream;
.super Ljava/io/InputStream;
.source "Channels.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/nio/channels/Channels;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ChannelInputStream"
.end annotation


# instance fields
.field protected channel:Ljava/nio/channels/ReadableByteChannel;


# direct methods
.method public constructor <init>(Ljava/nio/channels/ReadableByteChannel;)V
    .registers 2
    .parameter "aChannel"

    .prologue
    .line 235
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 236
    iput-object p1, p0, Ljava/nio/channels/Channels$ChannelInputStream;->channel:Ljava/nio/channels/ReadableByteChannel;

    .line 237
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
    .line 258
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljava/nio/channels/Channels$ChannelInputStream;->channel:Ljava/nio/channels/ReadableByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/ReadableByteChannel;->close()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 259
    monitor-exit p0

    return-void

    .line 258
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized read()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 244
    monitor-enter p0

    const/4 v2, 0x1

    :try_start_3
    new-array v1, v2, [B

    .line 245
    .local v1, oneByte:[B
    invoke-virtual {p0, v1}, Ljava/nio/channels/Channels$ChannelInputStream;->read([B)I

    move-result v0

    .line 246
    .local v0, n:I
    if-ne v0, v3, :cond_12

    .line 248
    const/4 v2, 0x0

    aget-byte v2, v1, v2
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_14

    and-int/lit16 v2, v2, 0xff

    .line 250
    :goto_10
    monitor-exit p0

    return v2

    :cond_12
    const/4 v2, -0x1

    goto :goto_10

    .line 244
    .end local v0           #n:I
    .end local v1           #oneByte:[B
    :catchall_14
    move-exception v2

    monitor-exit p0

    throw v2
.end method
