.class public Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;
.super Ljava/lang/Object;
.source "DefaultClientConnectionOperator.java"

# interfaces
.implements Lorg/apache/http/conn/ClientConnectionOperator;


# instance fields
.field protected schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;


# direct methods
.method public constructor <init>(Lorg/apache/http/conn/scheme/SchemeRegistry;)V
    .registers 4
    .parameter "schemes"

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    if-nez p1, :cond_d

    .line 82
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Scheme registry must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_d
    iput-object p1, p0, Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;->schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;

    .line 86
    return-void
.end method


# virtual methods
.method public createConnection()Lorg/apache/http/conn/OperatedClientConnection;
    .registers 2

    .prologue
    .line 91
    new-instance v0, Lorg/apache/http/impl/conn/DefaultClientConnection;

    invoke-direct {v0}, Lorg/apache/http/impl/conn/DefaultClientConnection;-><init>()V

    return-object v0
.end method

.method public openConnection(Lorg/apache/http/conn/OperatedClientConnection;Lorg/apache/http/HttpHost;Ljava/net/InetAddress;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V
    .registers 15
    .parameter "conn"
    .parameter "target"
    .parameter "local"
    .parameter "context"
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    if-nez p1, :cond_a

    .line 104
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Connection must not be null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 107
    :cond_a
    if-nez p2, :cond_14

    .line 108
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Target host must not be null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 113
    :cond_14
    if-nez p5, :cond_1e

    .line 114
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Parameters must not be null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 117
    :cond_1e
    invoke-interface {p1}, Lorg/apache/http/conn/OperatedClientConnection;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 118
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Connection must not be open."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 122
    :cond_2c
    iget-object v2, p0, Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;->schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-virtual {p2}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->getScheme(Ljava/lang/String;)Lorg/apache/http/conn/scheme/Scheme;

    move-result-object v8

    .line 123
    .local v8, schm:Lorg/apache/http/conn/scheme/Scheme;
    invoke-virtual {v8}, Lorg/apache/http/conn/scheme/Scheme;->getSocketFactory()Lorg/apache/http/conn/scheme/SocketFactory;

    move-result-object v0

    .line 125
    .local v0, sf:Lorg/apache/http/conn/scheme/SocketFactory;
    invoke-interface {v0}, Lorg/apache/http/conn/scheme/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v1

    .line 126
    .local v1, sock:Ljava/net/Socket;
    invoke-interface {p1, v1, p2}, Lorg/apache/http/conn/OperatedClientConnection;->opening(Ljava/net/Socket;Lorg/apache/http/HttpHost;)V

    .line 129
    :try_start_41
    invoke-virtual {p2}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v3

    invoke-virtual {v8, v3}, Lorg/apache/http/conn/scheme/Scheme;->resolvePort(I)I

    move-result v3

    const/4 v5, 0x0

    move-object v4, p3

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lorg/apache/http/conn/scheme/SocketFactory;->connectSocket(Ljava/net/Socket;Ljava/lang/String;ILjava/net/InetAddress;ILorg/apache/http/params/HttpParams;)Ljava/net/Socket;
    :try_end_53
    .catch Ljava/net/ConnectException; {:try_start_41 .. :try_end_53} :catch_5f

    move-result-object v1

    .line 135
    invoke-virtual {p0, v1, p4, p5}, Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;->prepareSocket(Ljava/net/Socket;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V

    .line 136
    invoke-interface {v0, v1}, Lorg/apache/http/conn/scheme/SocketFactory;->isSecure(Ljava/net/Socket;)Z

    move-result v2

    invoke-interface {p1, v2, p5}, Lorg/apache/http/conn/OperatedClientConnection;->openCompleted(ZLorg/apache/http/params/HttpParams;)V

    .line 137
    return-void

    .line 132
    :catch_5f
    move-exception v2

    move-object v7, v2

    .line 133
    .local v7, ex:Ljava/net/ConnectException;
    new-instance v2, Lorg/apache/http/conn/HttpHostConnectException;

    invoke-direct {v2, p2, v7}, Lorg/apache/http/conn/HttpHostConnectException;-><init>(Lorg/apache/http/HttpHost;Ljava/net/ConnectException;)V

    throw v2
.end method

.method protected prepareSocket(Ljava/net/Socket;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V
    .registers 6
    .parameter "sock"
    .parameter "context"
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 204
    invoke-static {p3}, Lorg/apache/http/params/HttpConnectionParams;->getTcpNoDelay(Lorg/apache/http/params/HttpParams;)Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 205
    invoke-static {p3}, Lorg/apache/http/params/HttpConnectionParams;->getSoTimeout(Lorg/apache/http/params/HttpParams;)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 207
    invoke-static {p3}, Lorg/apache/http/params/HttpConnectionParams;->getLinger(Lorg/apache/http/params/HttpParams;)I

    move-result v0

    .line 208
    .local v0, linger:I
    if-ltz v0, :cond_1a

    .line 209
    if-lez v0, :cond_1b

    const/4 v1, 0x1

    :goto_17
    invoke-virtual {p1, v1, v0}, Ljava/net/Socket;->setSoLinger(ZI)V

    .line 212
    :cond_1a
    return-void

    .line 209
    :cond_1b
    const/4 v1, 0x0

    goto :goto_17
.end method

.method public updateSecureConnection(Lorg/apache/http/conn/OperatedClientConnection;Lorg/apache/http/HttpHost;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V
    .registers 13
    .parameter "conn"
    .parameter "target"
    .parameter "context"
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 148
    if-nez p1, :cond_a

    .line 149
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Connection must not be null."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 152
    :cond_a
    if-nez p2, :cond_14

    .line 153
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Target host must not be null."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 157
    :cond_14
    if-nez p4, :cond_1e

    .line 158
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Parameters must not be null."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 161
    :cond_1e
    invoke-interface {p1}, Lorg/apache/http/conn/OperatedClientConnection;->isOpen()Z

    move-result v4

    if-nez v4, :cond_2c

    .line 162
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Connection must be open."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 166
    :cond_2c
    iget-object v4, p0, Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;->schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-virtual {p2}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/http/conn/scheme/SchemeRegistry;->getScheme(Ljava/lang/String;)Lorg/apache/http/conn/scheme/Scheme;

    move-result-object v2

    .line 167
    .local v2, schm:Lorg/apache/http/conn/scheme/Scheme;
    invoke-virtual {v2}, Lorg/apache/http/conn/scheme/Scheme;->getSocketFactory()Lorg/apache/http/conn/scheme/SocketFactory;

    move-result-object v4

    instance-of v4, v4, Lorg/apache/http/conn/scheme/LayeredSocketFactory;

    if-nez v4, :cond_61

    .line 168
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Target scheme ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lorg/apache/http/conn/scheme/Scheme;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") must have layered socket factory."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 173
    :cond_61
    invoke-virtual {v2}, Lorg/apache/http/conn/scheme/Scheme;->getSocketFactory()Lorg/apache/http/conn/scheme/SocketFactory;

    move-result-object v1

    check-cast v1, Lorg/apache/http/conn/scheme/LayeredSocketFactory;

    .line 176
    .local v1, lsf:Lorg/apache/http/conn/scheme/LayeredSocketFactory;
    :try_start_67
    invoke-interface {p1}, Lorg/apache/http/conn/OperatedClientConnection;->getSocket()Ljava/net/Socket;

    move-result-object v4

    invoke-virtual {p2}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v6

    const/4 v7, 0x1

    invoke-interface {v1, v4, v5, v6, v7}, Lorg/apache/http/conn/scheme/LayeredSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    :try_end_77
    .catch Ljava/net/ConnectException; {:try_start_67 .. :try_end_77} :catch_83

    move-result-object v3

    .line 181
    .local v3, sock:Ljava/net/Socket;
    invoke-virtual {p0, v3, p3, p4}, Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;->prepareSocket(Ljava/net/Socket;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V

    .line 182
    invoke-interface {v1, v3}, Lorg/apache/http/conn/scheme/LayeredSocketFactory;->isSecure(Ljava/net/Socket;)Z

    move-result v4

    invoke-interface {p1, v3, p2, v4, p4}, Lorg/apache/http/conn/OperatedClientConnection;->update(Ljava/net/Socket;Lorg/apache/http/HttpHost;ZLorg/apache/http/params/HttpParams;)V

    .line 185
    return-void

    .line 178
    .end local v3           #sock:Ljava/net/Socket;
    :catch_83
    move-exception v4

    move-object v0, v4

    .line 179
    .local v0, ex:Ljava/net/ConnectException;
    new-instance v4, Lorg/apache/http/conn/HttpHostConnectException;

    invoke-direct {v4, p2, v0}, Lorg/apache/http/conn/HttpHostConnectException;-><init>(Lorg/apache/http/HttpHost;Ljava/net/ConnectException;)V

    throw v4
.end method
