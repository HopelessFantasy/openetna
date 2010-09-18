.class final Lorg/apache/harmony/nio/internal/PipeImpl;
.super Ljava/nio/channels/Pipe;
.source "PipeImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/nio/internal/PipeImpl$SinkChannelImpl;,
        Lorg/apache/harmony/nio/internal/PipeImpl$SourceChannelImpl;
    }
.end annotation


# instance fields
.field private serverPort:I

.field private sink:Lorg/apache/harmony/nio/internal/PipeImpl$SinkChannelImpl;

.field private source:Lorg/apache/harmony/nio/internal/PipeImpl$SourceChannelImpl;


# direct methods
.method public constructor <init>()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/nio/channels/Pipe;-><init>()V

    .line 46
    :try_start_3
    new-instance v2, Lorg/apache/harmony/nio/internal/PipeImpl$SinkChannelImpl;

    invoke-static {}, Ljava/nio/channels/spi/SelectorProvider;->provider()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lorg/apache/harmony/nio/internal/PipeImpl$SinkChannelImpl;-><init>(Lorg/apache/harmony/nio/internal/PipeImpl;Ljava/nio/channels/spi/SelectorProvider;)V

    iput-object v2, p0, Lorg/apache/harmony/nio/internal/PipeImpl;->sink:Lorg/apache/harmony/nio/internal/PipeImpl$SinkChannelImpl;

    .line 47
    new-instance v2, Lorg/apache/harmony/nio/internal/PipeImpl$SourceChannelImpl;

    invoke-static {}, Ljava/nio/channels/spi/SelectorProvider;->provider()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lorg/apache/harmony/nio/internal/PipeImpl$SourceChannelImpl;-><init>(Lorg/apache/harmony/nio/internal/PipeImpl;Ljava/nio/channels/spi/SelectorProvider;)V

    iput-object v2, p0, Lorg/apache/harmony/nio/internal/PipeImpl;->source:Lorg/apache/harmony/nio/internal/PipeImpl$SourceChannelImpl;

    .line 48
    iget-object v2, p0, Lorg/apache/harmony/nio/internal/PipeImpl;->sink:Lorg/apache/harmony/nio/internal/PipeImpl$SinkChannelImpl;

    invoke-virtual {v2}, Lorg/apache/harmony/nio/internal/PipeImpl$SinkChannelImpl;->finishConnect()Z

    .line 49
    iget-object v2, p0, Lorg/apache/harmony/nio/internal/PipeImpl;->source:Lorg/apache/harmony/nio/internal/PipeImpl$SourceChannelImpl;

    invoke-virtual {v2}, Lorg/apache/harmony/nio/internal/PipeImpl$SourceChannelImpl;->accept()V

    .line 50
    iget-object v2, p0, Lorg/apache/harmony/nio/internal/PipeImpl;->source:Lorg/apache/harmony/nio/internal/PipeImpl$SourceChannelImpl;

    invoke-virtual {v2}, Lorg/apache/harmony/nio/internal/PipeImpl$SourceChannelImpl;->closeServer()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_28} :catch_29
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_28} :catch_2f

    .line 58
    return-void

    .line 51
    :catch_29
    move-exception v2

    move-object v1, v2

    .line 52
    .local v1, ioe:Ljava/io/IOException;
    invoke-direct {p0}, Lorg/apache/harmony/nio/internal/PipeImpl;->reset()V

    .line 53
    throw v1

    .line 54
    .end local v1           #ioe:Ljava/io/IOException;
    :catch_2f
    move-exception v2

    move-object v0, v2

    .line 55
    .local v0, e:Ljava/lang/RuntimeException;
    invoke-direct {p0}, Lorg/apache/harmony/nio/internal/PipeImpl;->reset()V

    .line 56
    throw v0
.end method

.method static synthetic access$000(Lorg/apache/harmony/nio/internal/PipeImpl;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 35
    iget v0, p0, Lorg/apache/harmony/nio/internal/PipeImpl;->serverPort:I

    return v0
.end method

.method static synthetic access$002(Lorg/apache/harmony/nio/internal/PipeImpl;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput p1, p0, Lorg/apache/harmony/nio/internal/PipeImpl;->serverPort:I

    return p1
.end method

.method private reset()V
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lorg/apache/harmony/nio/internal/PipeImpl;->sink:Lorg/apache/harmony/nio/internal/PipeImpl$SinkChannelImpl;

    if-eqz v0, :cond_9

    .line 63
    :try_start_4
    iget-object v0, p0, Lorg/apache/harmony/nio/internal/PipeImpl;->sink:Lorg/apache/harmony/nio/internal/PipeImpl$SinkChannelImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/nio/internal/PipeImpl$SinkChannelImpl;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_9} :catch_1c

    .line 67
    :cond_9
    :goto_9
    iget-object v0, p0, Lorg/apache/harmony/nio/internal/PipeImpl;->source:Lorg/apache/harmony/nio/internal/PipeImpl$SourceChannelImpl;

    if-eqz v0, :cond_17

    .line 69
    :try_start_d
    iget-object v0, p0, Lorg/apache/harmony/nio/internal/PipeImpl;->source:Lorg/apache/harmony/nio/internal/PipeImpl$SourceChannelImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/nio/internal/PipeImpl$SourceChannelImpl;->closeServer()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_12} :catch_1a

    .line 73
    :goto_12
    :try_start_12
    iget-object v0, p0, Lorg/apache/harmony/nio/internal/PipeImpl;->source:Lorg/apache/harmony/nio/internal/PipeImpl$SourceChannelImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/nio/internal/PipeImpl$SourceChannelImpl;->close()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_17} :catch_18

    .line 77
    :cond_17
    :goto_17
    return-void

    .line 74
    :catch_18
    move-exception v0

    goto :goto_17

    .line 70
    :catch_1a
    move-exception v0

    goto :goto_12

    .line 64
    :catch_1c
    move-exception v0

    goto :goto_9
.end method


# virtual methods
.method public sink()Ljava/nio/channels/Pipe$SinkChannel;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lorg/apache/harmony/nio/internal/PipeImpl;->sink:Lorg/apache/harmony/nio/internal/PipeImpl$SinkChannelImpl;

    return-object v0
.end method

.method public source()Ljava/nio/channels/Pipe$SourceChannel;
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Lorg/apache/harmony/nio/internal/PipeImpl;->source:Lorg/apache/harmony/nio/internal/PipeImpl$SourceChannelImpl;

    return-object v0
.end method
