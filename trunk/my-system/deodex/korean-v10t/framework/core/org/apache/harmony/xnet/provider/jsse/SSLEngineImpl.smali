.class public Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;
.super Ljavax/net/ssl/SSLEngine;
.source "SSLEngineImpl.java"


# instance fields
.field private alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

.field private appData:Lorg/apache/harmony/xnet/provider/jsse/SSLEngineAppData;

.field private close_notify_was_received:Z

.field private close_notify_was_sent:Z

.field private dataStream:Lorg/apache/harmony/xnet/provider/jsse/SSLEngineDataStream;

.field private engine_was_closed:Z

.field private engine_was_shutteddown:Z

.field private handshakeProtocol:Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;

.field private handshake_started:Z

.field private isInboundDone:Z

.field private isOutboundDone:Z

.field private logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

.field private peer_mode_was_set:Z

.field private recProtIS:Lorg/apache/harmony/xnet/provider/jsse/SSLBufferedInput;

.field protected recordProtocol:Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;

.field private remaining_hsh_data:[B

.field private remaining_wrapped_data:[B

.field private session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

.field protected sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;


# direct methods
.method protected constructor <init>(Ljava/lang/String;ILorg/apache/harmony/xnet/provider/jsse/SSLParameters;)V
    .registers 6
    .parameter "host"
    .parameter "port"
    .parameter "sslParameters"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 107
    invoke-direct {p0, p1, p2}, Ljavax/net/ssl/SSLEngine;-><init>(Ljava/lang/String;I)V

    .line 46
    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->peer_mode_was_set:Z

    .line 48
    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->handshake_started:Z

    .line 50
    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->isInboundDone:Z

    .line 52
    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->isOutboundDone:Z

    .line 54
    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->close_notify_was_sent:Z

    .line 56
    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->close_notify_was_received:Z

    .line 59
    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->engine_was_closed:Z

    .line 62
    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->engine_was_shutteddown:Z

    .line 75
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineDataStream;

    invoke-direct {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineDataStream;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->dataStream:Lorg/apache/harmony/xnet/provider/jsse/SSLEngineDataStream;

    .line 85
    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->remaining_wrapped_data:[B

    .line 86
    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->remaining_hsh_data:[B

    .line 89
    const-string v0, "engine"

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/Logger;->getStream(Ljava/lang/String;)Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    .line 108
    iput-object p3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    .line 109
    return-void
.end method

.method protected constructor <init>(Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;)V
    .registers 4
    .parameter "sslParameters"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 96
    invoke-direct {p0}, Ljavax/net/ssl/SSLEngine;-><init>()V

    .line 46
    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->peer_mode_was_set:Z

    .line 48
    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->handshake_started:Z

    .line 50
    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->isInboundDone:Z

    .line 52
    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->isOutboundDone:Z

    .line 54
    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->close_notify_was_sent:Z

    .line 56
    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->close_notify_was_received:Z

    .line 59
    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->engine_was_closed:Z

    .line 62
    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->engine_was_shutteddown:Z

    .line 75
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineDataStream;

    invoke-direct {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineDataStream;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->dataStream:Lorg/apache/harmony/xnet/provider/jsse/SSLEngineDataStream;

    .line 85
    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->remaining_wrapped_data:[B

    .line 86
    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->remaining_hsh_data:[B

    .line 89
    const-string v0, "engine"

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/Logger;->getStream(Ljava/lang/String;)Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    .line 97
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    .line 98
    return-void
.end method

.method private getEngineStatus()Ljavax/net/ssl/SSLEngineResult$Status;
    .registers 2

    .prologue
    .line 746
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->engine_was_closed:Z

    if-eqz v0, :cond_7

    sget-object v0, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    :goto_6
    return-object v0

    :cond_7
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    goto :goto_6
.end method

.method private shutdown()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 730
    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->engine_was_closed:Z

    .line 731
    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->engine_was_shutteddown:Z

    .line 732
    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->isOutboundDone:Z

    .line 733
    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->isInboundDone:Z

    .line 734
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->handshake_started:Z

    if-eqz v0, :cond_23

    .line 735
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->shutdown()V

    .line 736
    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    .line 737
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->handshakeProtocol:Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->shutdown()V

    .line 738
    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->handshakeProtocol:Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;

    .line 739
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->recordProtocol:Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->shutdown()V

    .line 740
    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->recordProtocol:Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;

    .line 742
    :cond_23
    return-void
.end method


# virtual methods
.method public beginHandshake()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 118
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->engine_was_closed:Z

    if-eqz v0, :cond_c

    .line 119
    new-instance v0, Ljavax/net/ssl/SSLException;

    const-string v1, "Engine has already been closed."

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_c
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->peer_mode_was_set:Z

    if-nez v0, :cond_18

    .line 122
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Client/Server mode was not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_18
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->handshake_started:Z

    if-nez v0, :cond_50

    .line 125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->handshake_started:Z

    .line 126
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->getUseClientMode()Z

    move-result v0

    if-eqz v0, :cond_56

    .line 127
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;

    invoke-direct {v0, p0}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->handshakeProtocol:Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;

    .line 131
    :goto_2c
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineAppData;

    invoke-direct {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineAppData;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->appData:Lorg/apache/harmony/xnet/provider/jsse/SSLEngineAppData;

    .line 132
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    invoke-direct {v0}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    .line 133
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/SSLBufferedInput;

    invoke-direct {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLBufferedInput;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->recProtIS:Lorg/apache/harmony/xnet/provider/jsse/SSLBufferedInput;

    .line 134
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->handshakeProtocol:Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->recProtIS:Lorg/apache/harmony/xnet/provider/jsse/SSLBufferedInput;

    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->appData:Lorg/apache/harmony/xnet/provider/jsse/SSLEngineAppData;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;-><init>(Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;Lorg/apache/harmony/xnet/provider/jsse/Appendable;)V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->recordProtocol:Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;

    .line 137
    :cond_50
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->handshakeProtocol:Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->start()V

    .line 138
    return-void

    .line 129
    :cond_56
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;

    invoke-direct {v0, p0}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->handshakeProtocol:Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;

    goto :goto_2c
.end method

.method public closeInbound()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 147
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    if-eqz v0, :cond_1f

    .line 148
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closeInbound() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->isInboundDone:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 150
    :cond_1f
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->isInboundDone:Z

    if-eqz v0, :cond_24

    .line 169
    :cond_23
    :goto_23
    return-void

    .line 153
    :cond_24
    iput-boolean v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->isInboundDone:Z

    .line 154
    iput-boolean v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->engine_was_closed:Z

    .line 155
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->handshake_started:Z

    if-eqz v0, :cond_49

    .line 156
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->close_notify_was_received:Z

    if-nez v0, :cond_23

    .line 157
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    if-eqz v0, :cond_39

    .line 158
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->invalidate()V

    .line 160
    :cond_39
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    const/4 v1, 0x2

    const/16 v2, 0x50

    invoke-virtual {v0, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->alert(BB)V

    .line 162
    new-instance v0, Ljavax/net/ssl/SSLException;

    const-string v1, "Inbound is closed before close_notify alert has been received."

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_49
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->shutdown()V

    goto :goto_23
.end method

.method public closeOutbound()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 177
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    if-eqz v0, :cond_1f

    .line 178
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closeOutbound() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->isOutboundDone:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 180
    :cond_1f
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->isOutboundDone:Z

    if-eqz v0, :cond_24

    .line 194
    :goto_23
    return-void

    .line 183
    :cond_24
    iput-boolean v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->isOutboundDone:Z

    .line 184
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->handshake_started:Z

    if-eqz v0, :cond_35

    .line 186
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->alert(BB)V

    .line 188
    iput-boolean v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->close_notify_was_sent:Z

    .line 193
    :goto_32
    iput-boolean v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->engine_was_closed:Z

    goto :goto_23

    .line 191
    :cond_35
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->shutdown()V

    goto :goto_32
.end method

.method public getDelegatedTask()Ljava/lang/Runnable;
    .registers 2

    .prologue
    .line 203
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->handshakeProtocol:Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->getTask()Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method

.method public getEnableSessionCreation()Z
    .registers 2

    .prologue
    .line 337
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->getEnableSessionCreation()Z

    move-result v0

    return v0
.end method

.method public getEnabledCipherSuites()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 224
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEnabledProtocols()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 251
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .registers 2

    .prologue
    .line 348
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->handshake_started:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->engine_was_shutteddown:Z

    if-eqz v0, :cond_b

    .line 350
    :cond_8
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    .line 360
    :goto_a
    return-object v0

    .line 352
    :cond_b
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->hasAlert()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 354
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    goto :goto_a

    .line 356
    :cond_16
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->close_notify_was_sent:Z

    if-eqz v0, :cond_21

    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->close_notify_was_received:Z

    if-nez v0, :cond_21

    .line 358
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    goto :goto_a

    .line 360
    :cond_21
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->handshakeProtocol:Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->getStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    goto :goto_a
.end method

.method public getNeedClientAuth()Z
    .registers 2

    .prologue
    .line 301
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->getNeedClientAuth()Z

    move-result v0

    return v0
.end method

.method public getSession()Ljavax/net/ssl/SSLSession;
    .registers 2

    .prologue
    .line 369
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    if-eqz v0, :cond_7

    .line 370
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    .line 372
    :goto_6
    return-object v0

    :cond_7
    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->NULL_SESSION:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    goto :goto_6
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 213
    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->getSupportedCipherSuiteNames()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedProtocols()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 242
    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->supportedProtocols:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/String;

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getUseClientMode()Z
    .registers 2

    .prologue
    .line 283
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->getUseClientMode()Z

    move-result v0

    return v0
.end method

.method public getWantClientAuth()Z
    .registers 2

    .prologue
    .line 319
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->getWantClientAuth()Z

    move-result v0

    return v0
.end method

.method public isInboundDone()Z
    .registers 2

    .prologue
    .line 382
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->isInboundDone:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->engine_was_closed:Z

    if-eqz v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isOutboundDone()Z
    .registers 2

    .prologue
    .line 391
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->isOutboundDone:Z

    return v0
.end method

.method public setEnableSessionCreation(Z)V
    .registers 3
    .parameter "flag"

    .prologue
    .line 328
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->setEnableSessionCreation(Z)V

    .line 329
    return-void
.end method

.method public setEnabledCipherSuites([Ljava/lang/String;)V
    .registers 3
    .parameter "suites"

    .prologue
    .line 233
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 234
    return-void
.end method

.method public setEnabledProtocols([Ljava/lang/String;)V
    .registers 3
    .parameter "protocols"

    .prologue
    .line 260
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->setEnabledProtocols([Ljava/lang/String;)V

    .line 261
    return-void
.end method

.method public setNeedClientAuth(Z)V
    .registers 3
    .parameter "need"

    .prologue
    .line 292
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->setNeedClientAuth(Z)V

    .line 293
    return-void
.end method

.method public setUseClientMode(Z)V
    .registers 4
    .parameter "mode"

    .prologue
    .line 269
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->handshake_started:Z

    if-eqz v0, :cond_c

    .line 270
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Could not change the mode after the initial handshake has begun."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 273
    :cond_c
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->setUseClientMode(Z)V

    .line 274
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->peer_mode_was_set:Z

    .line 275
    return-void
.end method

.method public setWantClientAuth(Z)V
    .registers 3
    .parameter "want"

    .prologue
    .line 310
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->setWantClientAuth(Z)V

    .line 311
    return-void
.end method

.method public unwrap(Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;II)Ljavax/net/ssl/SSLEngineResult;
    .registers 16
    .parameter "src"
    .parameter "dsts"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 407
    iget-boolean v6, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->engine_was_shutteddown:Z

    if-eqz v6, :cond_10

    .line 408
    new-instance v6, Ljavax/net/ssl/SSLEngineResult;

    sget-object v7, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    sget-object v8, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    .line 529
    :goto_f
    return-object v6

    .line 411
    :cond_10
    if-eqz p1, :cond_14

    if-nez p2, :cond_1c

    .line 412
    :cond_14
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Some of the input parameters are null"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 416
    :cond_1c
    iget-boolean v6, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->handshake_started:Z

    if-nez v6, :cond_23

    .line 417
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->beginHandshake()V

    .line 420
    :cond_23
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v3

    .line 423
    .local v3, handshakeStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    if-eqz v6, :cond_2f

    iget-boolean v6, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->engine_was_closed:Z

    if-eqz v6, :cond_4b

    :cond_2f
    sget-object v6, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-virtual {v3, v6}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3f

    sget-object v6, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_TASK:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-virtual {v3, v6}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4b

    .line 428
    :cond_3f
    new-instance v6, Ljavax/net/ssl/SSLEngineResult;

    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->getEngineStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {v6, v7, v3, v8, v9}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    goto :goto_f

    .line 432
    :cond_4b
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->recordProtocol:Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;

    invoke-virtual {v7}, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->getMinRecordSize()I

    move-result v7

    if-ge v6, v7, :cond_65

    .line 433
    new-instance v6, Ljavax/net/ssl/SSLEngineResult;

    sget-object v7, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_UNDERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    goto :goto_f

    .line 439
    :cond_65
    :try_start_65
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 441
    const/4 v0, 0x0

    .line 442
    .local v0, capacity:I
    move v4, p3

    .local v4, i:I
    :goto_6a
    add-int v6, p3, p4

    if-ge v4, v6, :cond_c5

    .line 443
    aget-object v6, p2, v4

    if-nez v6, :cond_8d

    .line 444
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Some of the input parameters are null"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_7a
    .catch Ljava/nio/BufferUnderflowException; {:try_start_65 .. :try_end_7a} :catch_7a
    .catch Lorg/apache/harmony/xnet/provider/jsse/AlertException; {:try_start_65 .. :try_end_7a} :catch_9b
    .catch Ljavax/net/ssl/SSLException; {:try_start_65 .. :try_end_7a} :catch_e0
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_7a} :catch_10c

    .line 526
    .end local v0           #capacity:I
    .end local v4           #i:I
    :catch_7a
    move-exception v6

    move-object v2, v6

    .line 528
    .local v2, e:Ljava/nio/BufferUnderflowException;
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 529
    new-instance v6, Ljavax/net/ssl/SSLEngineResult;

    sget-object v7, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_UNDERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    goto :goto_f

    .line 447
    .end local v2           #e:Ljava/nio/BufferUnderflowException;
    .restart local v0       #capacity:I
    .restart local v4       #i:I
    :cond_8d
    :try_start_8d
    aget-object v6, p2, v4

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v6

    if-eqz v6, :cond_bb

    .line 448
    new-instance v6, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v6}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v6
    :try_end_9b
    .catch Ljava/nio/BufferUnderflowException; {:try_start_8d .. :try_end_9b} :catch_7a
    .catch Lorg/apache/harmony/xnet/provider/jsse/AlertException; {:try_start_8d .. :try_end_9b} :catch_9b
    .catch Ljavax/net/ssl/SSLException; {:try_start_8d .. :try_end_9b} :catch_e0
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_9b} :catch_10c

    .line 531
    .end local v0           #capacity:I
    .end local v4           #i:I
    :catch_9b
    move-exception v6

    move-object v2, v6

    .line 533
    .local v2, e:Lorg/apache/harmony/xnet/provider/jsse/AlertException;
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    const/4 v7, 0x2

    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/AlertException;->getDescriptionCode()B

    move-result v8

    invoke-virtual {v6, v7, v8}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->alert(BB)V

    .line 534
    const/4 v6, 0x1

    iput-boolean v6, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->engine_was_closed:Z

    .line 535
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 536
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    if-eqz v6, :cond_b6

    .line 537
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    invoke-virtual {v6}, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->invalidate()V

    .line 541
    :cond_b6
    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/AlertException;->getReason()Ljavax/net/ssl/SSLException;

    move-result-object v6

    throw v6

    .line 450
    .end local v2           #e:Lorg/apache/harmony/xnet/provider/jsse/AlertException;
    .restart local v0       #capacity:I
    .restart local v4       #i:I
    :cond_bb
    :try_start_bb
    aget-object v6, p2, v4

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    add-int/2addr v0, v6

    .line 442
    add-int/lit8 v4, v4, 0x1

    goto :goto_6a

    .line 452
    :cond_c5
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->recordProtocol:Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    invoke-virtual {v6, v7}, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->getDataSize(I)I

    move-result v6

    if-ge v0, v6, :cond_e3

    .line 453
    new-instance v6, Ljavax/net/ssl/SSLEngineResult;

    sget-object v7, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V
    :try_end_de
    .catch Ljava/nio/BufferUnderflowException; {:try_start_bb .. :try_end_de} :catch_7a
    .catch Lorg/apache/harmony/xnet/provider/jsse/AlertException; {:try_start_bb .. :try_end_de} :catch_9b
    .catch Ljavax/net/ssl/SSLException; {:try_start_bb .. :try_end_de} :catch_e0
    .catch Ljava/io/IOException; {:try_start_bb .. :try_end_de} :catch_10c

    goto/16 :goto_f

    .line 542
    .end local v0           #capacity:I
    .end local v4           #i:I
    :catch_e0
    move-exception v6

    move-object v2, v6

    .line 543
    .local v2, e:Ljavax/net/ssl/SSLException;
    throw v2

    .line 457
    .end local v2           #e:Ljavax/net/ssl/SSLException;
    .restart local v0       #capacity:I
    .restart local v4       #i:I
    :cond_e3
    :try_start_e3
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->recProtIS:Lorg/apache/harmony/xnet/provider/jsse/SSLBufferedInput;

    invoke-virtual {v6, p1}, Lorg/apache/harmony/xnet/provider/jsse/SSLBufferedInput;->setSourceBuffer(Ljava/nio/ByteBuffer;)V

    .line 461
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->recordProtocol:Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;

    invoke-virtual {v6}, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->unwrap()I

    move-result v5

    .line 463
    .local v5, type:I
    packed-switch v5, :pswitch_data_1e0

    .line 521
    :cond_f1
    :goto_f1
    :pswitch_f1
    new-instance v6, Ljavax/net/ssl/SSLEngineResult;

    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->getEngineStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v7

    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v8

    iget-object v9, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->recProtIS:Lorg/apache/harmony/xnet/provider/jsse/SSLBufferedInput;

    invoke-virtual {v9}, Lorg/apache/harmony/xnet/provider/jsse/SSLBufferedInput;->consumed()I

    move-result v9

    iget-object v10, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->appData:Lorg/apache/harmony/xnet/provider/jsse/SSLEngineAppData;

    invoke-virtual {v10, p2, p3, p4}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineAppData;->placeTo([Ljava/nio/ByteBuffer;II)I

    move-result v10

    invoke-direct {v6, v7, v8, v9, v10}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V
    :try_end_10a
    .catch Ljava/nio/BufferUnderflowException; {:try_start_e3 .. :try_end_10a} :catch_7a
    .catch Lorg/apache/harmony/xnet/provider/jsse/AlertException; {:try_start_e3 .. :try_end_10a} :catch_9b
    .catch Ljavax/net/ssl/SSLException; {:try_start_e3 .. :try_end_10a} :catch_e0
    .catch Ljava/io/IOException; {:try_start_e3 .. :try_end_10a} :catch_10c

    goto/16 :goto_f

    .line 544
    .end local v0           #capacity:I
    .end local v4           #i:I
    .end local v5           #type:I
    :catch_10c
    move-exception v6

    move-object v2, v6

    .line 545
    .local v2, e:Ljava/io/IOException;
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    const/4 v7, 0x2

    const/16 v8, 0x50

    invoke-virtual {v6, v7, v8}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->alert(BB)V

    .line 547
    const/4 v6, 0x1

    iput-boolean v6, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->engine_was_closed:Z

    .line 550
    new-instance v6, Ljavax/net/ssl/SSLException;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 466
    .end local v2           #e:Ljava/io/IOException;
    .restart local v0       #capacity:I
    .restart local v4       #i:I
    .restart local v5       #type:I
    :pswitch_123
    :try_start_123
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->handshakeProtocol:Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;

    invoke-virtual {v6}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->getStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v6

    sget-object v7, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-virtual {v6, v7}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f1

    .line 468
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->recordProtocol:Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;

    invoke-virtual {v6}, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->getSession()Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-result-object v6

    iput-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    goto :goto_f1

    .line 474
    :pswitch_13a
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    invoke-virtual {v6}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->isFatalAlert()Z

    move-result v6

    if-eqz v6, :cond_172

    .line 475
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    invoke-virtual {v6}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->setProcessed()V

    .line 476
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    if-eqz v6, :cond_150

    .line 477
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    invoke-virtual {v6}, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->invalidate()V

    .line 479
    :cond_150
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Fatal alert received "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    invoke-virtual {v7}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->getAlertDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 481
    .local v1, description:Ljava/lang/String;
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->shutdown()V

    .line 482
    new-instance v6, Ljavax/net/ssl/SSLException;

    invoke-direct {v6, v1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 484
    .end local v1           #description:Ljava/lang/String;
    :cond_172
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    if-eqz v6, :cond_194

    .line 485
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Warning allert has been received: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    invoke-virtual {v8}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->getAlertDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 488
    :cond_194
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    invoke-virtual {v6}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->getDescriptionCode()B

    move-result v6

    sparse-switch v6, :sswitch_data_1ec

    .line 516
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    invoke-virtual {v6}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->setProcessed()V

    goto/16 :goto_f1

    .line 490
    :sswitch_1a4
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    invoke-virtual {v6}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->setProcessed()V

    .line 491
    const/4 v6, 0x1

    iput-boolean v6, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->close_notify_was_received:Z

    .line 492
    iget-boolean v6, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->close_notify_was_sent:Z

    if-nez v6, :cond_1b8

    .line 493
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->closeOutbound()V

    .line 494
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->closeInbound()V

    goto/16 :goto_f1

    .line 496
    :cond_1b8
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->closeInbound()V

    .line 497
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->shutdown()V

    goto/16 :goto_f1

    .line 501
    :sswitch_1c0
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    invoke-virtual {v6}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->setProcessed()V

    .line 502
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    if-nez v6, :cond_1d8

    .line 505
    new-instance v6, Lorg/apache/harmony/xnet/provider/jsse/AlertException;

    const/16 v7, 0x28

    new-instance v8, Ljavax/net/ssl/SSLHandshakeException;

    const-string v9, "Received no_renegotiation during the initial handshake"

    invoke-direct {v8, v9}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7, v8}, Lorg/apache/harmony/xnet/provider/jsse/AlertException;-><init>(BLjavax/net/ssl/SSLException;)V

    throw v6

    .line 512
    :cond_1d8
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->handshakeProtocol:Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;

    invoke-virtual {v6}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->stop()V
    :try_end_1dd
    .catch Ljava/nio/BufferUnderflowException; {:try_start_123 .. :try_end_1dd} :catch_7a
    .catch Lorg/apache/harmony/xnet/provider/jsse/AlertException; {:try_start_123 .. :try_end_1dd} :catch_9b
    .catch Ljavax/net/ssl/SSLException; {:try_start_123 .. :try_end_1dd} :catch_e0
    .catch Ljava/io/IOException; {:try_start_123 .. :try_end_1dd} :catch_10c

    goto/16 :goto_f1

    .line 463
    nop

    :pswitch_data_1e0
    .packed-switch 0x14
        :pswitch_123
        :pswitch_13a
        :pswitch_123
        :pswitch_f1
    .end packed-switch

    .line 488
    :sswitch_data_1ec
    .sparse-switch
        0x0 -> :sswitch_1a4
        0x64 -> :sswitch_1c0
    .end sparse-switch
.end method

.method public wrap([Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    .registers 16
    .parameter "srcs"
    .parameter "offset"
    .parameter "len"
    .parameter "dst"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    const-string v8, ")"

    .line 571
    iget-boolean v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->engine_was_shutteddown:Z

    if-eqz v5, :cond_12

    .line 572
    new-instance v5, Ljavax/net/ssl/SSLEngineResult;

    sget-object v6, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    sget-object v7, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-direct {v5, v6, v7, v9, v9}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    .line 712
    :goto_11
    return-object v5

    .line 575
    :cond_12
    if-eqz p1, :cond_16

    if-nez p4, :cond_1e

    .line 576
    :cond_16
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Some of the input parameters are null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 579
    :cond_1e
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 580
    new-instance v5, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v5}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v5

    .line 583
    :cond_2a
    iget-boolean v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->handshake_started:Z

    if-nez v5, :cond_31

    .line 584
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->beginHandshake()V

    .line 587
    :cond_31
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v3

    .line 590
    .local v3, handshakeStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    if-eqz v5, :cond_3d

    iget-boolean v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->engine_was_closed:Z

    if-eqz v5, :cond_57

    :cond_3d
    sget-object v5, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-virtual {v3, v5}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4d

    sget-object v5, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_TASK:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-virtual {v3, v5}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_57

    .line 595
    :cond_4d
    new-instance v5, Ljavax/net/ssl/SSLEngineResult;

    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->getEngineStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v6

    invoke-direct {v5, v6, v3, v9, v9}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    goto :goto_11

    .line 599
    :cond_57
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    .line 600
    .local v1, capacity:I
    const/4 v4, 0x0

    .line 602
    .local v4, produced:I
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    invoke-virtual {v5}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->hasAlert()Z

    move-result v5

    if-eqz v5, :cond_ce

    .line 604
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->recordProtocol:Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;

    invoke-virtual {v5, v10}, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->getRecordSize(I)I

    move-result v5

    if-ge v1, v5, :cond_74

    .line 605
    new-instance v5, Ljavax/net/ssl/SSLEngineResult;

    sget-object v6, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    invoke-direct {v5, v6, v3, v9, v9}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    goto :goto_11

    .line 609
    :cond_74
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    invoke-virtual {v5}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->wrap()[B

    move-result-object v0

    .line 611
    .local v0, alert_data:[B
    invoke-virtual {p4, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 612
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    invoke-virtual {v5}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->isFatalAlert()Z

    move-result v5

    if-eqz v5, :cond_a2

    .line 613
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    invoke-virtual {v5}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->setProcessed()V

    .line 614
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    if-eqz v5, :cond_93

    .line 615
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    invoke-virtual {v5}, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->invalidate()V

    .line 618
    :cond_93
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->shutdown()V

    .line 619
    new-instance v5, Ljavax/net/ssl/SSLEngineResult;

    sget-object v6, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    sget-object v7, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    array-length v8, v0

    invoke-direct {v5, v6, v7, v9, v8}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    goto/16 :goto_11

    .line 624
    :cond_a2
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    invoke-virtual {v5}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->setProcessed()V

    .line 626
    iget-boolean v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->close_notify_was_sent:Z

    if-eqz v5, :cond_be

    iget-boolean v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->close_notify_was_received:Z

    if-eqz v5, :cond_be

    .line 627
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->shutdown()V

    .line 628
    new-instance v5, Ljavax/net/ssl/SSLEngineResult;

    sget-object v6, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    sget-object v7, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    array-length v8, v0

    invoke-direct {v5, v6, v7, v9, v8}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    goto/16 :goto_11

    .line 632
    :cond_be
    new-instance v5, Ljavax/net/ssl/SSLEngineResult;

    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->getEngineStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v6

    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v7

    array-length v8, v0

    invoke-direct {v5, v6, v7, v9, v8}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    goto/16 :goto_11

    .line 639
    .end local v0           #alert_data:[B
    :cond_ce
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->recordProtocol:Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;

    invoke-virtual {v5}, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->getMinRecordSize()I

    move-result v5

    if-ge v1, v5, :cond_111

    .line 640
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    if-eqz v5, :cond_108

    .line 641
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Capacity of the destination("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") < MIN_PACKET_SIZE("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->recordProtocol:Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;

    invoke-virtual {v7}, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->getMinRecordSize()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 645
    :cond_108
    new-instance v5, Ljavax/net/ssl/SSLEngineResult;

    sget-object v6, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    invoke-direct {v5, v6, v3, v9, v9}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    goto/16 :goto_11

    .line 650
    :cond_111
    :try_start_111
    sget-object v5, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-virtual {v3, v5}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1d0

    .line 653
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->dataStream:Lorg/apache/harmony/xnet/provider/jsse/SSLEngineDataStream;

    invoke-virtual {v5, p1, p2, p3}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineDataStream;->setSourceBuffers([Ljava/nio/ByteBuffer;II)V

    .line 654
    sget v5, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->MAX_SSL_PACKET_SIZE:I

    if-ge v1, v5, :cond_18f

    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->recordProtocol:Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;

    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->dataStream:Lorg/apache/harmony/xnet/provider/jsse/SSLEngineDataStream;

    invoke-virtual {v6}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineDataStream;->available()I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->getRecordSize(I)I

    move-result v5

    if-ge v1, v5, :cond_18f

    .line 657
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    if-eqz v5, :cond_168

    .line 658
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The destination buffer("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") can not take the resulting packet("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->recordProtocol:Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;

    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->dataStream:Lorg/apache/harmony/xnet/provider/jsse/SSLEngineDataStream;

    invoke-virtual {v8}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineDataStream;->available()I

    move-result v8

    invoke-virtual {v7, v8}, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->getRecordSize(I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 663
    :cond_168
    new-instance v5, Ljavax/net/ssl/SSLEngineResult;

    sget-object v6, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v5, v6, v3, v7, v8}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V
    :try_end_171
    .catch Lorg/apache/harmony/xnet/provider/jsse/AlertException; {:try_start_111 .. :try_end_171} :catch_173

    goto/16 :goto_11

    .line 715
    :catch_173
    move-exception v5

    move-object v2, v5

    .line 717
    .local v2, e:Lorg/apache/harmony/xnet/provider/jsse/AlertException;
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/AlertException;->getDescriptionCode()B

    move-result v6

    invoke-virtual {v5, v10, v6}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->alert(BB)V

    .line 718
    const/4 v5, 0x1

    iput-boolean v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->engine_was_closed:Z

    .line 719
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    if-eqz v5, :cond_18a

    .line 720
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    invoke-virtual {v5}, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->invalidate()V

    .line 724
    :cond_18a
    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/AlertException;->getReason()Ljavax/net/ssl/SSLException;

    move-result-object v5

    throw v5

    .line 667
    .end local v2           #e:Lorg/apache/harmony/xnet/provider/jsse/AlertException;
    :cond_18f
    :try_start_18f
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->remaining_wrapped_data:[B

    if-nez v5, :cond_19f

    .line 668
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->recordProtocol:Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;

    const/16 v6, 0x17

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->dataStream:Lorg/apache/harmony/xnet/provider/jsse/SSLEngineDataStream;

    invoke-virtual {v5, v6, v7}, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->wrap(BLorg/apache/harmony/xnet/provider/jsse/DataStream;)[B

    move-result-object v5

    iput-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->remaining_wrapped_data:[B

    .line 672
    :cond_19f
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->remaining_wrapped_data:[B

    array-length v5, v5

    if-ge v1, v5, :cond_1b4

    .line 678
    new-instance v5, Ljavax/net/ssl/SSLEngineResult;

    sget-object v6, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->dataStream:Lorg/apache/harmony/xnet/provider/jsse/SSLEngineDataStream;

    invoke-virtual {v7}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineDataStream;->consumed()I

    move-result v7

    const/4 v8, 0x0

    invoke-direct {v5, v6, v3, v7, v8}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    goto/16 :goto_11

    .line 682
    :cond_1b4
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->remaining_wrapped_data:[B

    invoke-virtual {p4, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 683
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->remaining_wrapped_data:[B

    array-length v4, v5

    .line 684
    const/4 v5, 0x0

    iput-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->remaining_wrapped_data:[B

    .line 685
    new-instance v5, Ljavax/net/ssl/SSLEngineResult;

    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->getEngineStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->dataStream:Lorg/apache/harmony/xnet/provider/jsse/SSLEngineDataStream;

    invoke-virtual {v7}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineDataStream;->consumed()I

    move-result v7

    invoke-direct {v5, v6, v3, v7, v4}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    goto/16 :goto_11

    .line 689
    :cond_1d0
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->remaining_hsh_data:[B

    if-nez v5, :cond_1dc

    .line 690
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->handshakeProtocol:Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;

    invoke-virtual {v5}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->wrap()[B

    move-result-object v5

    iput-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->remaining_hsh_data:[B

    .line 692
    :cond_1dc
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->remaining_hsh_data:[B

    array-length v5, v5

    if-ge v1, v5, :cond_1ec

    .line 698
    new-instance v5, Ljavax/net/ssl/SSLEngineResult;

    sget-object v6, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v5, v6, v3, v7, v8}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    goto/16 :goto_11

    .line 702
    :cond_1ec
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->remaining_hsh_data:[B

    invoke-virtual {p4, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 703
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->remaining_hsh_data:[B

    array-length v4, v5

    .line 704
    const/4 v5, 0x0

    iput-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->remaining_hsh_data:[B

    .line 706
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->handshakeProtocol:Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;

    invoke-virtual {v5}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->getStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v3

    .line 707
    sget-object v5, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-virtual {v3, v5}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20d

    .line 709
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->recordProtocol:Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;

    invoke-virtual {v5}, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->getSession()Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    .line 712
    :cond_20d
    new-instance v5, Ljavax/net/ssl/SSLEngineResult;

    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->getEngineStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v6

    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8, v4}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V
    :try_end_21b
    .catch Lorg/apache/harmony/xnet/provider/jsse/AlertException; {:try_start_18f .. :try_end_21b} :catch_173

    goto/16 :goto_11
.end method
