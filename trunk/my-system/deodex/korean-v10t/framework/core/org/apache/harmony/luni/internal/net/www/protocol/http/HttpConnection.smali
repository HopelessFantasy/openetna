.class public Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;
.super Ljava/lang/Object;
.source "HttpConnection.java"


# static fields
.field private static final SOCKET_TIMEOUT_CLASS:Ljava/lang/Class;


# instance fields
.field private config:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConfiguration;

.field private inputStream:Ljava/io/InputStream;

.field private outputStream:Ljava/io/OutputStream;

.field private socket:Ljava/net/Socket;

.field private sslInputStream:Ljava/io/InputStream;

.field private sslOutputStream:Ljava/io/OutputStream;

.field private sslSocket:Ljavax/net/ssl/SSLSocket;

.field private usingSecureSocket:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 250
    invoke-static {}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->SocketTimeoutExceptionClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->SOCKET_TIMEOUT_CLASS:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConfiguration;I)V
    .registers 8
    .parameter "config"
    .parameter "connectTimeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v3, 0x0

    iput-boolean v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->usingSecureSocket:Z

    .line 58
    iput-object p1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->config:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConfiguration;

    .line 59
    invoke-virtual {p1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConfiguration;->getHostName()Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, hostName:Ljava/lang/String;
    invoke-virtual {p1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConfiguration;->getHostPort()I

    move-result v1

    .line 61
    .local v1, hostPort:I
    invoke-virtual {p1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConfiguration;->getProxy()Ljava/net/Proxy;

    move-result-object v2

    .line 62
    .local v2, proxy:Ljava/net/Proxy;
    if-eqz v2, :cond_1e

    invoke-virtual {v2}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v3

    sget-object v4, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v3, v4, :cond_30

    .line 63
    :cond_1e
    new-instance v3, Ljava/net/Socket;

    invoke-direct {v3}, Ljava/net/Socket;-><init>()V

    iput-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->socket:Ljava/net/Socket;

    .line 67
    :goto_25
    iget-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->socket:Ljava/net/Socket;

    new-instance v4, Ljava/net/InetSocketAddress;

    invoke-direct {v4, v0, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v3, v4, p2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 68
    return-void

    .line 65
    :cond_30
    new-instance v3, Ljava/net/Socket;

    invoke-direct {v3, v2}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    iput-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->socket:Ljava/net/Socket;

    goto :goto_25
.end method

.method private static SocketTimeoutExceptionClass()Ljava/lang/Class;
    .registers 2

    .prologue
    .line 270
    :try_start_0
    const-string v1, "java.net.SocketTimeoutException"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 272
    :goto_6
    return-object v1

    .line 271
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 272
    .local v0, e:Ljava/lang/ClassNotFoundException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public static isSocketTimeoutException(Ljava/io/InterruptedIOException;)Z
    .registers 2
    .parameter "e"

    .prologue
    .line 257
    sget-object v0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->SOCKET_TIMEOUT_CLASS:Ljava/lang/Class;

    if-eqz v0, :cond_b

    .line 258
    sget-object v0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->SOCKET_TIMEOUT_CLASS:Ljava/lang/Class;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    .line 260
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x1

    goto :goto_a
.end method


# virtual methods
.method public closeSocketAndStreams()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 71
    iget-boolean v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->usingSecureSocket:Z

    if-eqz v1, :cond_26

    .line 72
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->sslOutputStream:Ljava/io/OutputStream;

    if-eqz v1, :cond_10

    .line 73
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->sslOutputStream:Ljava/io/OutputStream;

    .line 74
    .local v0, temp:Ljava/io/OutputStream;
    iput-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->sslOutputStream:Ljava/io/OutputStream;

    .line 76
    :try_start_d
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_10} :catch_48

    .line 82
    .end local v0           #temp:Ljava/io/OutputStream;
    :cond_10
    :goto_10
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->sslInputStream:Ljava/io/InputStream;

    if-eqz v1, :cond_1b

    .line 83
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->sslInputStream:Ljava/io/InputStream;

    .line 84
    .local v0, temp:Ljava/io/InputStream;
    iput-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->sslInputStream:Ljava/io/InputStream;

    .line 86
    :try_start_18
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1b} :catch_4a

    .line 92
    .end local v0           #temp:Ljava/io/InputStream;
    :cond_1b
    :goto_1b
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->sslSocket:Ljavax/net/ssl/SSLSocket;

    if-eqz v1, :cond_26

    .line 93
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->sslSocket:Ljavax/net/ssl/SSLSocket;

    .line 94
    .local v0, temp:Ljava/net/Socket;
    iput-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->sslSocket:Ljavax/net/ssl/SSLSocket;

    .line 96
    :try_start_23
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->close()V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_26} :catch_4c

    .line 102
    .end local v0           #temp:Ljava/net/Socket;
    :cond_26
    :goto_26
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->outputStream:Ljava/io/OutputStream;

    if-eqz v1, :cond_31

    .line 103
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->outputStream:Ljava/io/OutputStream;

    .line 104
    .local v0, temp:Ljava/io/OutputStream;
    iput-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->outputStream:Ljava/io/OutputStream;

    .line 106
    :try_start_2e
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_31} :catch_4e

    .line 112
    .end local v0           #temp:Ljava/io/OutputStream;
    :cond_31
    :goto_31
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->inputStream:Ljava/io/InputStream;

    if-eqz v1, :cond_3c

    .line 113
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->inputStream:Ljava/io/InputStream;

    .line 114
    .local v0, temp:Ljava/io/InputStream;
    iput-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->inputStream:Ljava/io/InputStream;

    .line 116
    :try_start_39
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_3c} :catch_50

    .line 122
    .end local v0           #temp:Ljava/io/InputStream;
    :cond_3c
    :goto_3c
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->socket:Ljava/net/Socket;

    if-eqz v1, :cond_47

    .line 123
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->socket:Ljava/net/Socket;

    .line 124
    .local v0, temp:Ljava/net/Socket;
    iput-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->socket:Ljava/net/Socket;

    .line 126
    :try_start_44
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_47} :catch_52

    .line 131
    .end local v0           #temp:Ljava/net/Socket;
    :cond_47
    :goto_47
    return-void

    .line 77
    .local v0, temp:Ljava/io/OutputStream;
    :catch_48
    move-exception v1

    goto :goto_10

    .line 87
    .local v0, temp:Ljava/io/InputStream;
    :catch_4a
    move-exception v1

    goto :goto_1b

    .line 97
    .local v0, temp:Ljava/net/Socket;
    :catch_4c
    move-exception v1

    goto :goto_26

    .line 107
    .local v0, temp:Ljava/io/OutputStream;
    :catch_4e
    move-exception v1

    goto :goto_31

    .line 117
    .local v0, temp:Ljava/io/InputStream;
    :catch_50
    move-exception v1

    goto :goto_3c

    .line 127
    .local v0, temp:Ljava/net/Socket;
    :catch_52
    move-exception v1

    goto :goto_47
.end method

.method public getHttpConfiguration()Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConfiguration;
    .registers 2

    .prologue
    .line 162
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->config:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConfiguration;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 150
    iget-boolean v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->usingSecureSocket:Z

    if-eqz v0, :cond_13

    .line 151
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->sslInputStream:Ljava/io/InputStream;

    if-nez v0, :cond_10

    .line 152
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->sslSocket:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->sslInputStream:Ljava/io/InputStream;

    .line 154
    :cond_10
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->sslInputStream:Ljava/io/InputStream;

    .line 158
    :goto_12
    return-object v0

    .line 155
    :cond_13
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->inputStream:Ljava/io/InputStream;

    if-nez v0, :cond_1f

    .line 156
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->inputStream:Ljava/io/InputStream;

    .line 158
    :cond_1f
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->inputStream:Ljava/io/InputStream;

    goto :goto_12
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 138
    iget-boolean v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->usingSecureSocket:Z

    if-eqz v0, :cond_13

    .line 139
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->sslOutputStream:Ljava/io/OutputStream;

    if-nez v0, :cond_10

    .line 140
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->sslSocket:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->sslOutputStream:Ljava/io/OutputStream;

    .line 142
    :cond_10
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->sslOutputStream:Ljava/io/OutputStream;

    .line 146
    :goto_12
    return-object v0

    .line 143
    :cond_13
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->outputStream:Ljava/io/OutputStream;

    if-nez v0, :cond_1f

    .line 144
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->outputStream:Ljava/io/OutputStream;

    .line 146
    :cond_1f
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->outputStream:Ljava/io/OutputStream;

    goto :goto_12
.end method

.method public getSecureSocket(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;)Ljavax/net/ssl/SSLSocket;
    .registers 7
    .parameter "sslSocketFactory"
    .parameter "hostnameVerifier"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 166
    iget-boolean v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->usingSecureSocket:Z

    if-nez v2, :cond_3f

    .line 167
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->config:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConfiguration;

    invoke-virtual {v2}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConfiguration;->getHostName()Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, hostName:Ljava/lang/String;
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->config:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConfiguration;

    invoke-virtual {v2}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConfiguration;->getHostPort()I

    move-result v1

    .line 170
    .local v1, port:I
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {p1, v2, v0, v1, v3}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v2

    check-cast v2, Ljavax/net/ssl/SSLSocket;

    iput-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->sslSocket:Ljavax/net/ssl/SSLSocket;

    .line 172
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->sslSocket:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v2, v3}, Ljavax/net/ssl/SSLSocket;->setUseClientMode(Z)V

    .line 173
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->sslSocket:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 174
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->sslSocket:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v2

    invoke-interface {p2, v0, v2}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v2

    if-nez v2, :cond_3d

    .line 175
    new-instance v2, Ljava/io/IOException;

    const-string v3, "luni.02"

    invoke-static {v3, v0}, Lorg/apache/harmony/luni/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 177
    :cond_3d
    iput-boolean v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->usingSecureSocket:Z

    .line 179
    .end local v0           #hostName:Ljava/lang/String;
    .end local v1           #port:I
    :cond_3f
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->sslSocket:Ljavax/net/ssl/SSLSocket;

    return-object v2
.end method

.method getSocket()Ljava/net/Socket;
    .registers 2

    .prologue
    .line 183
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->socket:Ljava/net/Socket;

    return-object v0
.end method

.method protected isEligibleForRecycling()Z
    .registers 2

    .prologue
    .line 241
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    if-nez v0, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method protected isStale()Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 191
    const/4 v2, 0x1

    .line 195
    .local v2, isStale:Z
    iget-object v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->isClosed()Z

    move-result v4

    if-nez v4, :cond_43

    iget-object v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v4

    if-nez v4, :cond_43

    iget-object v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v4

    if-nez v4, :cond_43

    .line 198
    const/4 v2, 0x0

    .line 200
    :try_start_1a
    iget-object v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->available()I

    move-result v4

    if-gtz v4, :cond_43

    .line 201
    iget-object v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getSoTimeout()I
    :try_end_27
    .catch Ljava/io/InterruptedIOException; {:try_start_1a .. :try_end_27} :catch_51
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_27} :catch_5a

    move-result v3

    .line 203
    .local v3, soTimeout:I
    :try_start_28
    iget-object v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->socket:Ljava/net/Socket;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 204
    iget-object v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->inputStream:Ljava/io/InputStream;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/io/InputStream;->mark(I)V

    .line 205
    iget-object v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I
    :try_end_39
    .catchall {:try_start_28 .. :try_end_39} :catchall_4a

    move-result v0

    .line 206
    .local v0, byteRead:I
    const/4 v4, -0x1

    if-ne v0, v4, :cond_44

    .line 209
    const/4 v2, 0x1

    .line 214
    :goto_3e
    :try_start_3e
    iget-object v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v4, v3}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_43
    .catch Ljava/io/InterruptedIOException; {:try_start_3e .. :try_end_43} :catch_51
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_43} :catch_5a

    .line 228
    .end local v0           #byteRead:I
    .end local v3           #soTimeout:I
    :cond_43
    :goto_43
    return v2

    .line 211
    .restart local v0       #byteRead:I
    .restart local v3       #soTimeout:I
    :cond_44
    :try_start_44
    iget-object v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->reset()V
    :try_end_49
    .catchall {:try_start_44 .. :try_end_49} :catchall_4a

    goto :goto_3e

    .line 214
    .end local v0           #byteRead:I
    :catchall_4a
    move-exception v4

    :try_start_4b
    iget-object v5, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v5, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    throw v4
    :try_end_51
    .catch Ljava/io/InterruptedIOException; {:try_start_4b .. :try_end_51} :catch_51
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_51} :catch_5a

    .line 217
    .end local v3           #soTimeout:I
    :catch_51
    move-exception v4

    move-object v1, v4

    .line 218
    .local v1, e:Ljava/io/InterruptedIOException;
    invoke-static {v1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->isSocketTimeoutException(Ljava/io/InterruptedIOException;)Z

    move-result v4

    if-nez v4, :cond_43

    .line 219
    throw v1

    .line 222
    .end local v1           #e:Ljava/io/InterruptedIOException;
    :catch_5a
    move-exception v4

    move-object v1, v4

    .line 224
    .local v1, e:Ljava/io/IOException;
    const/4 v2, 0x1

    goto :goto_43
.end method

.method public setSoTimeout(I)V
    .registers 3
    .parameter "readTimeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 134
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 135
    return-void
.end method
