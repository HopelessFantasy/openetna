.class public Landroid/net/http/HttpsConnection;
.super Landroid/net/http/Connection;
.source "HttpsConnection.java"


# static fields
.field private static mSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;


# instance fields
.field private mAborted:Z

.field private mSuspendLock:Ljava/lang/Object;

.field private mSuspended:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 59
    sput-object v0, Landroid/net/http/HttpsConnection;->mSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 65
    invoke-static {v0}, Landroid/net/http/HttpsConnection;->initializeEngine(Ljava/io/File;)V

    .line 66
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lorg/apache/http/HttpHost;Landroid/net/http/RequestQueue$ConnectionManager;Landroid/net/http/RequestFeeder;)V
    .registers 7
    .parameter "context"
    .parameter "host"
    .parameter "connectionManager"
    .parameter "requestFeeder"

    .prologue
    const/4 v1, 0x0

    .line 140
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/net/http/Connection;-><init>(Landroid/content/Context;Lorg/apache/http/HttpHost;Landroid/net/http/RequestQueue$ConnectionManager;Landroid/net/http/RequestFeeder;)V

    .line 120
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/net/http/HttpsConnection;->mSuspendLock:Ljava/lang/Object;

    .line 126
    iput-boolean v1, p0, Landroid/net/http/HttpsConnection;->mSuspended:Z

    .line 132
    iput-boolean v1, p0, Landroid/net/http/HttpsConnection;->mAborted:Z

    .line 141
    return-void
.end method

.method private static declared-synchronized getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .registers 2

    .prologue
    .line 114
    const-class v0, Landroid/net/http/HttpsConnection;

    monitor-enter v0

    :try_start_3
    sget-object v1, Landroid/net/http/HttpsConnection;->mSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static initializeEngine(Ljava/io/File;)V
    .registers 8
    .parameter "sessionDir"

    .prologue
    .line 75
    const/4 v4, 0x0

    .line 76
    .local v4, cache:Lorg/apache/harmony/xnet/provider/jsse/SSLClientSessionCache;
    if-eqz p0, :cond_25

    .line 77
    :try_start_3
    const-string v1, "HttpsConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Caching SSL sessions in "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-static {p0}, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache;->usingDirectory(Ljava/io/File;)Lorg/apache/harmony/xnet/provider/jsse/SSLClientSessionCache;

    move-result-object v4

    .line 82
    :cond_25
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/SSLContextImpl;

    invoke-direct {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLContextImpl;-><init>()V

    .line 85
    .local v0, sslContext:Lorg/apache/harmony/xnet/provider/jsse/SSLContextImpl;
    const/4 v1, 0x1

    new-array v2, v1, [Ljavax/net/ssl/TrustManager;

    const/4 v1, 0x0

    new-instance v3, Landroid/net/http/HttpsConnection$1;

    invoke-direct {v3}, Landroid/net/http/HttpsConnection$1;-><init>()V

    aput-object v3, v2, v1

    .line 101
    .local v2, trustManagers:[Ljavax/net/ssl/TrustManager;
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lorg/apache/harmony/xnet/provider/jsse/SSLContextImpl;->engineInit([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;Lorg/apache/harmony/xnet/provider/jsse/SSLClientSessionCache;Lorg/apache/harmony/xnet/provider/jsse/SSLServerSessionCache;)V

    .line 103
    const-class v1, Landroid/net/http/HttpsConnection;

    monitor-enter v1
    :try_end_3e
    .catch Ljava/security/KeyManagementException; {:try_start_3 .. :try_end_3e} :catch_49
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3e} :catch_51

    .line 104
    :try_start_3e
    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLContextImpl;->engineGetSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    sput-object v3, Landroid/net/http/HttpsConnection;->mSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 105
    monitor-exit v1

    .line 111
    return-void

    .line 105
    :catchall_46
    move-exception v3

    monitor-exit v1
    :try_end_48
    .catchall {:try_start_3e .. :try_end_48} :catchall_46

    :try_start_48
    throw v3
    :try_end_49
    .catch Ljava/security/KeyManagementException; {:try_start_48 .. :try_end_49} :catch_49
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_49} :catch_51

    .line 106
    .end local v0           #sslContext:Lorg/apache/harmony/xnet/provider/jsse/SSLContextImpl;
    .end local v2           #trustManagers:[Ljavax/net/ssl/TrustManager;
    :catch_49
    move-exception v1

    move-object v6, v1

    .line 107
    .local v6, e:Ljava/security/KeyManagementException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 108
    .end local v6           #e:Ljava/security/KeyManagementException;
    :catch_51
    move-exception v1

    move-object v6, v1

    .line 109
    .local v6, e:Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method closeConnection()V
    .registers 4

    .prologue
    .line 387
    iget-boolean v1, p0, Landroid/net/http/HttpsConnection;->mSuspended:Z

    if-eqz v1, :cond_8

    .line 389
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/net/http/HttpsConnection;->restartConnection(Z)V

    .line 393
    :cond_8
    :try_start_8
    iget-object v1, p0, Landroid/net/http/HttpsConnection;->mHttpClientConnection:Landroid/net/http/AndroidHttpClientConnection;

    if-eqz v1, :cond_19

    iget-object v1, p0, Landroid/net/http/HttpsConnection;->mHttpClientConnection:Landroid/net/http/AndroidHttpClientConnection;

    invoke-virtual {v1}, Landroid/net/http/AndroidHttpClientConnection;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 394
    iget-object v1, p0, Landroid/net/http/HttpsConnection;->mHttpClientConnection:Landroid/net/http/AndroidHttpClientConnection;

    invoke-virtual {v1}, Landroid/net/http/AndroidHttpClientConnection;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_19} :catch_1a

    .line 402
    :cond_19
    :goto_19
    return-void

    .line 396
    :catch_1a
    move-exception v1

    move-object v0, v1

    .line 398
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HttpsConnection.closeConnection(): failed closing connection "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/http/HttpsConnection;->mHost:Lorg/apache/http/HttpHost;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/http/HttpLog;->v(Ljava/lang/String;)V

    .line 400
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_19
.end method

.method getScheme()Ljava/lang/String;
    .registers 2

    .prologue
    .line 424
    const-string v0, "https"

    return-object v0
.end method

.method openConnection(Landroid/net/http/Request;)Landroid/net/http/AndroidHttpClientConnection;
    .registers 34
    .parameter "req"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 160
    const/16 v24, 0x0

    .line 162
    .local v24, sslSock:Ljavax/net/ssl/SSLSocket;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/HttpsConnection;->mConnectionManager:Landroid/net/http/RequestQueue$ConnectionManager;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Landroid/net/http/RequestQueue$ConnectionManager;->getProxyHost()Lorg/apache/http/HttpHost;

    move-result-object v20

    .line 163
    .local v20, proxyHost:Lorg/apache/http/HttpHost;
    if-eqz v20, :cond_210

    .line 171
    const/16 v18, 0x0

    .line 172
    .local v18, proxyConnection:Landroid/net/http/AndroidHttpClientConnection;
    const/16 v22, 0x0

    .line 174
    .local v22, proxySock:Ljava/net/Socket;
    :try_start_12
    new-instance v23, Ljava/net/Socket;

    invoke-virtual/range {v20 .. v20}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v20 .. v20}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v29

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_25} :catch_b3

    .line 177
    .end local v22           #proxySock:Ljava/net/Socket;
    .local v23, proxySock:Ljava/net/Socket;
    const v28, 0xea60

    :try_start_28
    move-object/from16 v0, v23

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 179
    new-instance v19, Landroid/net/http/AndroidHttpClientConnection;

    invoke-direct/range {v19 .. v19}, Landroid/net/http/AndroidHttpClientConnection;-><init>()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_34} :catch_2da

    .line 180
    .end local v18           #proxyConnection:Landroid/net/http/AndroidHttpClientConnection;
    .local v19, proxyConnection:Landroid/net/http/AndroidHttpClientConnection;
    :try_start_34
    new-instance v17, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct/range {v17 .. v17}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 181
    .local v17, params:Lorg/apache/http/params/HttpParams;
    const/16 v28, 0x2000

    move-object/from16 v0, v17

    move/from16 v1, v28

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 183
    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/net/http/AndroidHttpClientConnection;->bind(Ljava/net/Socket;Lorg/apache/http/params/HttpParams;)V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_4b} :catch_2e1

    .line 198
    const/16 v26, 0x0

    .line 199
    .local v26, statusLine:Lorg/apache/http/StatusLine;
    const/16 v25, 0x0

    .line 200
    .local v25, statusCode:I
    new-instance v14, Landroid/net/http/Headers;

    invoke-direct {v14}, Landroid/net/http/Headers;-><init>()V

    .line 202
    .local v14, headers:Landroid/net/http/Headers;
    :try_start_54
    new-instance v21, Lorg/apache/http/message/BasicHttpRequest;

    const-string v28, "CONNECT"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/HttpsConnection;->mHost:Lorg/apache/http/HttpHost;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lorg/apache/http/HttpHost;->toHostString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicHttpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    .local v21, proxyReq:Lorg/apache/http/message/BasicHttpRequest;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/http/Request;->mHttpRequest:Lorg/apache/http/message/BasicHttpRequest;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lorg/apache/http/message/BasicHttpRequest;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v5

    .local v5, arr$:[Lorg/apache/http/Header;
    move-object v0, v5

    array-length v0, v0

    move/from16 v16, v0

    .local v16, len$:I
    const/4 v15, 0x0

    .local v15, i$:I
    :goto_7a
    move v0, v15

    move/from16 v1, v16

    if-ge v0, v1, :cond_cc

    aget-object v12, v5, v15

    .line 207
    .local v12, h:Lorg/apache/http/Header;
    invoke-interface {v12}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    .line 210
    .local v13, headerName:Ljava/lang/String;
    const-string v28, "proxy"

    move-object v0, v13

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v28

    if-nez v28, :cond_aa

    const-string v28, "keep-alive"

    move-object v0, v13

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_aa

    const-string v28, "host"

    move-object v0, v13

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_b0

    .line 212
    :cond_aa
    move-object/from16 v0, v21

    move-object v1, v12

    invoke-virtual {v0, v1}, Lorg/apache/http/message/BasicHttpRequest;->addHeader(Lorg/apache/http/Header;)V
    :try_end_b0
    .catch Lorg/apache/http/ParseException; {:try_start_54 .. :try_end_b0} :catch_17d
    .catch Lorg/apache/http/HttpException; {:try_start_54 .. :try_end_b0} :catch_191
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_b0} :catch_1a5

    .line 206
    :cond_b0
    add-int/lit8 v15, v15, 0x1

    goto :goto_7a

    .line 184
    .end local v5           #arr$:[Lorg/apache/http/Header;
    .end local v12           #h:Lorg/apache/http/Header;
    .end local v13           #headerName:Ljava/lang/String;
    .end local v14           #headers:Landroid/net/http/Headers;
    .end local v15           #i$:I
    .end local v16           #len$:I
    .end local v17           #params:Lorg/apache/http/params/HttpParams;
    .end local v19           #proxyConnection:Landroid/net/http/AndroidHttpClientConnection;
    .end local v21           #proxyReq:Lorg/apache/http/message/BasicHttpRequest;
    .end local v23           #proxySock:Ljava/net/Socket;
    .end local v25           #statusCode:I
    .end local v26           #statusLine:Lorg/apache/http/StatusLine;
    .restart local v18       #proxyConnection:Landroid/net/http/AndroidHttpClientConnection;
    .restart local v22       #proxySock:Ljava/net/Socket;
    :catch_b3
    move-exception v28

    move-object/from16 v8, v28

    .line 185
    .local v8, e:Ljava/io/IOException;
    :goto_b6
    if-eqz v18, :cond_bb

    .line 186
    invoke-virtual/range {v18 .. v18}, Landroid/net/http/AndroidHttpClientConnection;->close()V

    .line 189
    :cond_bb
    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    .line 190
    .local v10, errorMessage:Ljava/lang/String;
    if-nez v10, :cond_c3

    .line 191
    const-string v10, "failed to establish a connection to the proxy"

    .line 195
    :cond_c3
    new-instance v28, Ljava/io/IOException;

    move-object/from16 v0, v28

    move-object v1, v10

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v28

    .line 216
    .end local v8           #e:Ljava/io/IOException;
    .end local v10           #errorMessage:Ljava/lang/String;
    .end local v18           #proxyConnection:Landroid/net/http/AndroidHttpClientConnection;
    .end local v22           #proxySock:Ljava/net/Socket;
    .restart local v5       #arr$:[Lorg/apache/http/Header;
    .restart local v14       #headers:Landroid/net/http/Headers;
    .restart local v15       #i$:I
    .restart local v16       #len$:I
    .restart local v17       #params:Lorg/apache/http/params/HttpParams;
    .restart local v19       #proxyConnection:Landroid/net/http/AndroidHttpClientConnection;
    .restart local v21       #proxyReq:Lorg/apache/http/message/BasicHttpRequest;
    .restart local v23       #proxySock:Ljava/net/Socket;
    .restart local v25       #statusCode:I
    .restart local v26       #statusLine:Lorg/apache/http/StatusLine;
    :cond_cc
    :try_start_cc
    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/net/http/AndroidHttpClientConnection;->sendRequestHeader(Lorg/apache/http/HttpRequest;)V

    .line 217
    invoke-virtual/range {v19 .. v19}, Landroid/net/http/AndroidHttpClientConnection;->flush()V

    .line 224
    :cond_d6
    move-object/from16 v0, v19

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/net/http/AndroidHttpClientConnection;->parseResponseHeader(Landroid/net/http/Headers;)Lorg/apache/http/StatusLine;

    move-result-object v26

    .line 225
    invoke-interface/range {v26 .. v26}, Lorg/apache/http/StatusLine;->getStatusCode()I
    :try_end_e0
    .catch Lorg/apache/http/ParseException; {:try_start_cc .. :try_end_e0} :catch_17d
    .catch Lorg/apache/http/HttpException; {:try_start_cc .. :try_end_e0} :catch_191
    .catch Ljava/io/IOException; {:try_start_cc .. :try_end_e0} :catch_1a5

    move-result v25

    .line 226
    const/16 v28, 0xc8

    move/from16 v0, v25

    move/from16 v1, v28

    if-lt v0, v1, :cond_d6

    .line 253
    const/16 v28, 0xc8

    move/from16 v0, v25

    move/from16 v1, v28

    if-ne v0, v1, :cond_1d2

    .line 255
    :try_start_f1
    invoke-static {}, Landroid/net/http/HttpsConnection;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/HttpsConnection;->mHost:Lorg/apache/http/HttpHost;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/HttpsConnection;->mHost:Lorg/apache/http/HttpHost;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v30

    const/16 v31, 0x1

    move-object/from16 v0, v28

    move-object/from16 v1, v23

    move-object/from16 v2, v29

    move/from16 v3, v30

    move/from16 v4, v31

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v25

    .end local v25           #statusCode:I
    move-object/from16 v0, v25

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    move-object/from16 v24, v0
    :try_end_11f
    .catch Ljava/io/IOException; {:try_start_f1 .. :try_end_11f} :catch_1b9

    .line 309
    .end local v5           #arr$:[Lorg/apache/http/Header;
    .end local v14           #headers:Landroid/net/http/Headers;
    .end local v15           #i$:I
    .end local v16           #len$:I
    .end local v17           #params:Lorg/apache/http/params/HttpParams;
    .end local v19           #proxyConnection:Landroid/net/http/AndroidHttpClientConnection;
    .end local v21           #proxyReq:Lorg/apache/http/message/BasicHttpRequest;
    .end local v23           #proxySock:Ljava/net/Socket;
    .end local v26           #statusLine:Lorg/apache/http/StatusLine;
    :goto_11f
    invoke-static {}, Landroid/net/http/CertificateChainValidator;->getInstance()Landroid/net/http/CertificateChainValidator;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/HttpsConnection;->mHost:Lorg/apache/http/HttpHost;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    move-object/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/http/CertificateChainValidator;->doHandshakeAndValidateServerCertificates(Landroid/net/http/HttpsConnection;Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)Landroid/net/http/SslError;

    move-result-object v9

    .line 312
    .local v9, error:Landroid/net/http/SslError;
    invoke-virtual/range {p1 .. p1}, Landroid/net/http/Request;->getEventHandler()Landroid/net/http/EventHandler;

    move-result-object v11

    .line 316
    .local v11, eventHandler:Landroid/net/http/EventHandler;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/HttpsConnection;->mCertificate:Landroid/net/http/SslCertificate;

    move-object/from16 v28, v0

    move-object v0, v11

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/net/http/EventHandler;->certificate(Landroid/net/http/SslCertificate;)V

    .line 319
    if-eqz v9, :cond_2b5

    .line 325
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/HttpsConnection;->mSuspendLock:Ljava/lang/Object;

    move-object/from16 v28, v0

    monitor-enter v28

    .line 326
    const/16 v29, 0x1

    :try_start_154
    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/http/HttpsConnection;->mSuspended:Z

    .line 327
    monitor-exit v28
    :try_end_15b
    .catchall {:try_start_154 .. :try_end_15b} :catchall_263

    .line 329
    invoke-interface {v11, v9}, Landroid/net/http/EventHandler;->handleSslErrorRequest(Landroid/net/http/SslError;)Z

    move-result v6

    .line 330
    .local v6, canHandle:Z
    if-nez v6, :cond_266

    .line 331
    new-instance v28, Ljava/io/IOException;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "failed to handle "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v28

    .line 227
    .end local v6           #canHandle:Z
    .end local v9           #error:Landroid/net/http/SslError;
    .end local v11           #eventHandler:Landroid/net/http/EventHandler;
    .restart local v14       #headers:Landroid/net/http/Headers;
    .restart local v17       #params:Lorg/apache/http/params/HttpParams;
    .restart local v19       #proxyConnection:Landroid/net/http/AndroidHttpClientConnection;
    .restart local v23       #proxySock:Ljava/net/Socket;
    .restart local v25       #statusCode:I
    .restart local v26       #statusLine:Lorg/apache/http/StatusLine;
    :catch_17d
    move-exception v28

    move-object/from16 v8, v28

    .line 228
    .local v8, e:Lorg/apache/http/ParseException;
    invoke-virtual {v8}, Lorg/apache/http/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v10

    .line 229
    .restart local v10       #errorMessage:Ljava/lang/String;
    if-nez v10, :cond_188

    .line 230
    const-string v10, "failed to send a CONNECT request"

    .line 234
    :cond_188
    new-instance v28, Ljava/io/IOException;

    move-object/from16 v0, v28

    move-object v1, v10

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v28

    .line 235
    .end local v8           #e:Lorg/apache/http/ParseException;
    .end local v10           #errorMessage:Ljava/lang/String;
    :catch_191
    move-exception v28

    move-object/from16 v8, v28

    .line 236
    .local v8, e:Lorg/apache/http/HttpException;
    invoke-virtual {v8}, Lorg/apache/http/HttpException;->getMessage()Ljava/lang/String;

    move-result-object v10

    .line 237
    .restart local v10       #errorMessage:Ljava/lang/String;
    if-nez v10, :cond_19c

    .line 238
    const-string v10, "failed to send a CONNECT request"

    .line 242
    :cond_19c
    new-instance v28, Ljava/io/IOException;

    move-object/from16 v0, v28

    move-object v1, v10

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v28

    .line 243
    .end local v8           #e:Lorg/apache/http/HttpException;
    .end local v10           #errorMessage:Ljava/lang/String;
    :catch_1a5
    move-exception v28

    move-object/from16 v8, v28

    .line 244
    .local v8, e:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    .line 245
    .restart local v10       #errorMessage:Ljava/lang/String;
    if-nez v10, :cond_1b0

    .line 246
    const-string v10, "failed to send a CONNECT request"

    .line 250
    :cond_1b0
    new-instance v28, Ljava/io/IOException;

    move-object/from16 v0, v28

    move-object v1, v10

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v28

    .line 257
    .end local v8           #e:Ljava/io/IOException;
    .end local v10           #errorMessage:Ljava/lang/String;
    .end local v25           #statusCode:I
    .restart local v5       #arr$:[Lorg/apache/http/Header;
    .restart local v15       #i$:I
    .restart local v16       #len$:I
    .restart local v21       #proxyReq:Lorg/apache/http/message/BasicHttpRequest;
    :catch_1b9
    move-exception v28

    move-object/from16 v8, v28

    .line 258
    .restart local v8       #e:Ljava/io/IOException;
    if-eqz v24, :cond_1c1

    .line 259
    #Replaced unresolvable odex instruction with a throw
    throw v24
    #invoke-virtual-quick/range {v24 .. v24}, vtable@0xe

    .line 262
    :cond_1c1
    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    .line 263
    .restart local v10       #errorMessage:Ljava/lang/String;
    if-nez v10, :cond_1c9

    .line 264
    const-string v10, "failed to create an SSL socket"

    .line 267
    :cond_1c9
    new-instance v28, Ljava/io/IOException;

    move-object/from16 v0, v28

    move-object v1, v10

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v28

    .line 271
    .end local v8           #e:Ljava/io/IOException;
    .end local v10           #errorMessage:Ljava/lang/String;
    .restart local v25       #statusCode:I
    :cond_1d2
    invoke-interface/range {v26 .. v26}, Lorg/apache/http/StatusLine;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    move-result-object v27

    .line 273
    .local v27, version:Lorg/apache/http/ProtocolVersion;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/http/Request;->mEventHandler:Landroid/net/http/EventHandler;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v27}, Lorg/apache/http/ProtocolVersion;->getMajor()I

    move-result v29

    invoke-virtual/range {v27 .. v27}, Lorg/apache/http/ProtocolVersion;->getMinor()I

    move-result v30

    invoke-interface/range {v26 .. v26}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v28

    move/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v25

    move-object/from16 v4, v31

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/net/http/EventHandler;->status(IIILjava/lang/String;)V

    .line 277
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/http/Request;->mEventHandler:Landroid/net/http/EventHandler;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object v1, v14

    invoke-interface {v0, v1}, Landroid/net/http/EventHandler;->headers(Landroid/net/http/Headers;)V

    .line 278
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/http/Request;->mEventHandler:Landroid/net/http/EventHandler;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Landroid/net/http/EventHandler;->endData()V

    .line 280
    invoke-virtual/range {v19 .. v19}, Landroid/net/http/AndroidHttpClientConnection;->close()V

    .line 284
    const/16 v28, 0x0

    .line 373
    .end local v5           #arr$:[Lorg/apache/http/Header;
    .end local v14           #headers:Landroid/net/http/Headers;
    .end local v15           #i$:I
    .end local v16           #len$:I
    .end local v17           #params:Lorg/apache/http/params/HttpParams;
    .end local v19           #proxyConnection:Landroid/net/http/AndroidHttpClientConnection;
    .end local v21           #proxyReq:Lorg/apache/http/message/BasicHttpRequest;
    .end local v23           #proxySock:Ljava/net/Socket;
    .end local v25           #statusCode:I
    .end local v26           #statusLine:Lorg/apache/http/StatusLine;
    .end local v27           #version:Lorg/apache/http/ProtocolVersion;
    :goto_20f
    return-object v28

    .line 289
    :cond_210
    :try_start_210
    invoke-static {}, Landroid/net/http/HttpsConnection;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v25

    move-object/from16 v0, v25

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    move-object/from16 v24, v0

    .line 291
    const v28, 0xea60

    move-object/from16 v0, v24

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLSocket;->setSoTimeout(I)V

    .line 292
    new-instance v28, Ljava/net/InetSocketAddress;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/HttpsConnection;->mHost:Lorg/apache/http/HttpHost;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/HttpsConnection;->mHost:Lorg/apache/http/HttpHost;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v30

    invoke-direct/range {v28 .. v30}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLSocket;->connect(Ljava/net/SocketAddress;)V
    :try_end_248
    .catch Ljava/io/IOException; {:try_start_210 .. :try_end_248} :catch_24a

    goto/16 :goto_11f

    .line 294
    :catch_24a
    move-exception v28

    move-object/from16 v8, v28

    .line 295
    .restart local v8       #e:Ljava/io/IOException;
    if-eqz v24, :cond_252

    .line 296
    invoke-virtual/range {v24 .. v24}, Ljavax/net/ssl/SSLSocket;->close()V

    .line 299
    :cond_252
    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    .line 300
    .restart local v10       #errorMessage:Ljava/lang/String;
    if-nez v10, :cond_25a

    .line 301
    const-string v10, "failed to create an SSL socket"

    .line 304
    :cond_25a
    new-instance v28, Ljava/io/IOException;

    move-object/from16 v0, v28

    move-object v1, v10

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v28

    .line 327
    .end local v8           #e:Ljava/io/IOException;
    .end local v10           #errorMessage:Ljava/lang/String;
    .restart local v9       #error:Landroid/net/http/SslError;
    .restart local v11       #eventHandler:Landroid/net/http/EventHandler;
    :catchall_263
    move-exception v29

    :try_start_264
    monitor-exit v28
    :try_end_265
    .catchall {:try_start_264 .. :try_end_265} :catchall_263

    throw v29

    .line 333
    .restart local v6       #canHandle:Z
    :cond_266
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/HttpsConnection;->mSuspendLock:Ljava/lang/Object;

    move-object/from16 v28, v0

    monitor-enter v28

    .line 334
    :try_start_26d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/http/HttpsConnection;->mSuspended:Z

    move/from16 v29, v0
    :try_end_273
    .catchall {:try_start_26d .. :try_end_273} :catchall_2b1

    if-eqz v29, :cond_29e

    .line 342
    :try_start_275
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/HttpsConnection;->mSuspendLock:Ljava/lang/Object;

    move-object/from16 v29, v0

    const-wide/32 v30, 0x927c0

    invoke-virtual/range {v29 .. v31}, Ljava/lang/Object;->wait(J)V

    .line 343
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/http/HttpsConnection;->mSuspended:Z

    move/from16 v29, v0

    if-eqz v29, :cond_29e

    .line 347
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/http/HttpsConnection;->mSuspended:Z

    .line 348
    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/http/HttpsConnection;->mAborted:Z

    .line 350
    const-string v29, "HttpsConnection.openConnection(): SSL timeout expired and request was cancelled!!!"

    invoke-static/range {v29 .. v29}, Landroid/net/http/HttpLog;->v(Ljava/lang/String;)V
    :try_end_29e
    .catchall {:try_start_275 .. :try_end_29e} :catchall_2b1
    .catch Ljava/lang/InterruptedException; {:try_start_275 .. :try_end_29e} :catch_2d8

    .line 358
    :cond_29e
    :goto_29e
    :try_start_29e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/http/HttpsConnection;->mAborted:Z

    move/from16 v29, v0

    if-eqz v29, :cond_2b4

    .line 361
    invoke-virtual/range {v24 .. v24}, Ljavax/net/ssl/SSLSocket;->close()V

    .line 362
    new-instance v29, Landroid/net/http/SSLConnectionClosedByUserException;

    const-string v30, "connection closed by the user"

    invoke-direct/range {v29 .. v30}, Landroid/net/http/SSLConnectionClosedByUserException;-><init>(Ljava/lang/String;)V

    throw v29

    .line 364
    :catchall_2b1
    move-exception v29

    monitor-exit v28
    :try_end_2b3
    .catchall {:try_start_29e .. :try_end_2b3} :catchall_2b1

    throw v29

    :cond_2b4
    :try_start_2b4
    monitor-exit v28
    :try_end_2b5
    .catchall {:try_start_2b4 .. :try_end_2b5} :catchall_2b1

    .line 368
    .end local v6           #canHandle:Z
    :cond_2b5
    new-instance v7, Landroid/net/http/AndroidHttpClientConnection;

    invoke-direct {v7}, Landroid/net/http/AndroidHttpClientConnection;-><init>()V

    .line 369
    .local v7, conn:Landroid/net/http/AndroidHttpClientConnection;
    new-instance v17, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct/range {v17 .. v17}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 370
    .local v17, params:Lorg/apache/http/params/BasicHttpParams;
    const-string v28, "http.socket.buffer-size"

    const/16 v29, 0x2000

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/params/BasicHttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    .line 371
    move-object v0, v7

    move-object/from16 v1, v24

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/net/http/AndroidHttpClientConnection;->bind(Ljava/net/Socket;Lorg/apache/http/params/HttpParams;)V

    move-object/from16 v28, v7

    .line 373
    goto/16 :goto_20f

    .line 354
    .end local v7           #conn:Landroid/net/http/AndroidHttpClientConnection;
    .end local v17           #params:Lorg/apache/http/params/BasicHttpParams;
    .restart local v6       #canHandle:Z
    :catch_2d8
    move-exception v29

    goto :goto_29e

    .line 184
    .end local v6           #canHandle:Z
    .end local v9           #error:Landroid/net/http/SslError;
    .end local v11           #eventHandler:Landroid/net/http/EventHandler;
    .restart local v18       #proxyConnection:Landroid/net/http/AndroidHttpClientConnection;
    .restart local v23       #proxySock:Ljava/net/Socket;
    :catch_2da
    move-exception v28

    move-object/from16 v8, v28

    move-object/from16 v22, v23

    .end local v23           #proxySock:Ljava/net/Socket;
    .restart local v22       #proxySock:Ljava/net/Socket;
    goto/16 :goto_b6

    .end local v18           #proxyConnection:Landroid/net/http/AndroidHttpClientConnection;
    .end local v22           #proxySock:Ljava/net/Socket;
    .restart local v19       #proxyConnection:Landroid/net/http/AndroidHttpClientConnection;
    .restart local v23       #proxySock:Ljava/net/Socket;
    :catch_2e1
    move-exception v28

    move-object/from16 v8, v28

    move-object/from16 v22, v23

    .end local v23           #proxySock:Ljava/net/Socket;
    .restart local v22       #proxySock:Ljava/net/Socket;
    move-object/from16 v18, v19

    .end local v19           #proxyConnection:Landroid/net/http/AndroidHttpClientConnection;
    .restart local v18       #proxyConnection:Landroid/net/http/AndroidHttpClientConnection;
    goto/16 :goto_b6
.end method

.method restartConnection(Z)V
    .registers 5
    .parameter "proceed"

    .prologue
    const/4 v2, 0x0

    .line 409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HttpsConnection.restartConnection(): proceed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/http/HttpLog;->v(Ljava/lang/String;)V

    .line 413
    iget-object v0, p0, Landroid/net/http/HttpsConnection;->mSuspendLock:Ljava/lang/Object;

    monitor-enter v0

    .line 414
    :try_start_1a
    iget-boolean v1, p0, Landroid/net/http/HttpsConnection;->mSuspended:Z

    if-eqz v1, :cond_2b

    .line 415
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/net/http/HttpsConnection;->mSuspended:Z

    .line 416
    if-nez p1, :cond_2d

    const/4 v1, 0x1

    :goto_24
    iput-boolean v1, p0, Landroid/net/http/HttpsConnection;->mAborted:Z

    .line 417
    iget-object v1, p0, Landroid/net/http/HttpsConnection;->mSuspendLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 419
    :cond_2b
    monitor-exit v0

    .line 420
    return-void

    :cond_2d
    move v1, v2

    .line 416
    goto :goto_24

    .line 419
    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_1a .. :try_end_31} :catchall_2f

    throw v1
.end method

.method setCertificate(Landroid/net/http/SslCertificate;)V
    .registers 2
    .parameter "certificate"

    .prologue
    .line 149
    iput-object p1, p0, Landroid/net/http/HttpsConnection;->mCertificate:Landroid/net/http/SslCertificate;

    .line 150
    return-void
.end method
