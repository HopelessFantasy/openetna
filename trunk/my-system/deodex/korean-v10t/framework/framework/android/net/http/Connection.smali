.class abstract Landroid/net/http/Connection;
.super Ljava/lang/Object;
.source "Connection.java"


# static fields
.field private static final DONE:I = 0x3

.field private static final DRAIN:I = 0x2

.field private static final HTTP_CONNECTION:Ljava/lang/String; = "http.connection"

.field private static final MAX_PIPE:I = 0x3

.field private static final MIN_PIPE:I = 0x2

.field private static final READ:I = 0x1

.field private static final RETRY_REQUEST_LIMIT:I = 0x2

.field private static final SEND:I = 0x0

.field static final SOCKET_TIMEOUT:I = 0xea60

.field private static STATE_CANCEL_REQUESTED:I

.field private static STATE_NORMAL:I

.field private static final states:[Ljava/lang/String;


# instance fields
.field private mActive:I

.field private mBuf:[B

.field private mCanPersist:Z

.field protected mCertificate:Landroid/net/http/SslCertificate;

.field mConnectionManager:Landroid/net/http/RequestQueue$ConnectionManager;

.field mContext:Landroid/content/Context;

.field mHost:Lorg/apache/http/HttpHost;

.field protected mHttpClientConnection:Landroid/net/http/AndroidHttpClientConnection;

.field private mHttpContext:Lorg/apache/http/protocol/HttpContext;

.field mRequestFeeder:Landroid/net/http/RequestFeeder;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 54
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "SEND"

    aput-object v1, v0, v3

    const-string v1, "READ"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "DRAIN"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "DONE"

    aput-object v2, v0, v1

    sput-object v0, Landroid/net/http/Connection;->states:[Ljava/lang/String;

    .line 82
    sput v3, Landroid/net/http/Connection;->STATE_NORMAL:I

    .line 83
    sput v4, Landroid/net/http/Connection;->STATE_CANCEL_REQUESTED:I

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lorg/apache/http/HttpHost;Landroid/net/http/RequestQueue$ConnectionManager;Landroid/net/http/RequestFeeder;)V
    .registers 7
    .parameter "context"
    .parameter "host"
    .parameter "connectionManager"
    .parameter "requestFeeder"

    .prologue
    const/4 v1, 0x0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object v1, p0, Landroid/net/http/Connection;->mHttpClientConnection:Landroid/net/http/AndroidHttpClientConnection;

    .line 67
    iput-object v1, p0, Landroid/net/http/Connection;->mCertificate:Landroid/net/http/SslCertificate;

    .line 84
    sget v0, Landroid/net/http/Connection;->STATE_NORMAL:I

    iput v0, p0, Landroid/net/http/Connection;->mActive:I

    .line 109
    iput-object p1, p0, Landroid/net/http/Connection;->mContext:Landroid/content/Context;

    .line 110
    iput-object p2, p0, Landroid/net/http/Connection;->mHost:Lorg/apache/http/HttpHost;

    .line 111
    iput-object p3, p0, Landroid/net/http/Connection;->mConnectionManager:Landroid/net/http/RequestQueue$ConnectionManager;

    .line 112
    iput-object p4, p0, Landroid/net/http/Connection;->mRequestFeeder:Landroid/net/http/RequestFeeder;

    .line 114
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/http/Connection;->mCanPersist:Z

    .line 115
    new-instance v0, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v0, v1}, Lorg/apache/http/protocol/BasicHttpContext;-><init>(Lorg/apache/http/protocol/HttpContext;)V

    iput-object v0, p0, Landroid/net/http/Connection;->mHttpContext:Lorg/apache/http/protocol/HttpContext;

    .line 116
    return-void
.end method

.method private clearPipe(Ljava/util/LinkedList;)Z
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Landroid/net/http/Request;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 333
    .local p1, pipe:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/net/http/Request;>;"
    const/4 v0, 0x1

    .line 334
    .local v0, empty:Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connection.clearPipe(): clearing pipe "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/http/HttpLog;->v(Ljava/lang/String;)V

    .line 336
    iget-object v2, p0, Landroid/net/http/Connection;->mRequestFeeder:Landroid/net/http/RequestFeeder;

    monitor-enter v2

    .line 338
    :goto_1e
    :try_start_1e
    invoke-virtual {p1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_53

    .line 339
    invoke-virtual {p1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/http/Request;

    .line 340
    .local v1, tReq:Landroid/net/http/Request;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clearPipe() adding back "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/http/Connection;->mHost:Lorg/apache/http/HttpHost;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/http/HttpLog;->v(Ljava/lang/String;)V

    .line 342
    iget-object v3, p0, Landroid/net/http/Connection;->mRequestFeeder:Landroid/net/http/RequestFeeder;

    invoke-interface {v3, v1}, Landroid/net/http/RequestFeeder;->requeueRequest(Landroid/net/http/Request;)V

    .line 343
    const/4 v0, 0x0

    goto :goto_1e

    .line 345
    .end local v1           #tReq:Landroid/net/http/Request;
    :cond_53
    if-eqz v0, :cond_5d

    iget-object v3, p0, Landroid/net/http/Connection;->mRequestFeeder:Landroid/net/http/RequestFeeder;

    iget-object v4, p0, Landroid/net/http/Connection;->mHost:Lorg/apache/http/HttpHost;

    invoke-interface {v3, v4}, Landroid/net/http/RequestFeeder;->haveRequest(Lorg/apache/http/HttpHost;)Z

    move-result v0

    .line 346
    :cond_5d
    monitor-exit v2

    .line 347
    return v0

    .line 346
    :catchall_5f
    move-exception v3

    monitor-exit v2
    :try_end_61
    .catchall {:try_start_1e .. :try_end_61} :catchall_5f

    throw v3
.end method

.method static getConnection(Landroid/content/Context;Lorg/apache/http/HttpHost;Landroid/net/http/RequestQueue$ConnectionManager;Landroid/net/http/RequestFeeder;)Landroid/net/http/Connection;
    .registers 6
    .parameter "context"
    .parameter "host"
    .parameter "connectionManager"
    .parameter "requestFeeder"

    .prologue
    .line 131
    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 132
    new-instance v0, Landroid/net/http/HttpConnection;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/net/http/HttpConnection;-><init>(Landroid/content/Context;Lorg/apache/http/HttpHost;Landroid/net/http/RequestQueue$ConnectionManager;Landroid/net/http/RequestFeeder;)V

    .line 137
    :goto_11
    return-object v0

    :cond_12
    new-instance v0, Landroid/net/http/HttpsConnection;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/net/http/HttpsConnection;-><init>(Landroid/content/Context;Lorg/apache/http/HttpHost;Landroid/net/http/RequestQueue$ConnectionManager;Landroid/net/http/RequestFeeder;)V

    goto :goto_11
.end method

.method private httpFailure(Landroid/net/http/Request;ILjava/lang/Exception;)Z
    .registers 11
    .parameter "req"
    .parameter "errorId"
    .parameter "e"

    .prologue
    const-string v6, " "

    .line 434
    const/4 v3, 0x1

    .line 435
    .local v3, ret:Z
    iget-object v4, p0, Landroid/net/http/Connection;->mConnectionManager:Landroid/net/http/RequestQueue$ConnectionManager;

    invoke-interface {v4}, Landroid/net/http/RequestQueue$ConnectionManager;->isNetworkConnected()Z

    move-result v2

    .line 438
    .local v2, networkConnected:Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "httpFailure() ******* "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " count "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/net/http/Request;->mFailCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " networkConnected "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/net/http/Connection;->mHost:Lorg/apache/http/HttpHost;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/net/http/Request;->getUri()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/http/HttpLog;->v(Ljava/lang/String;)V

    .line 442
    if-eqz v2, :cond_74

    iget v4, p1, Landroid/net/http/Request;->mFailCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p1, Landroid/net/http/Request;->mFailCount:I

    const/4 v5, 0x2

    if-lt v4, v5, :cond_74

    .line 443
    const/4 v3, 0x0

    .line 445
    if-gez p2, :cond_7f

    .line 446
    iget-object v4, p0, Landroid/net/http/Connection;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/net/http/EventHandler;->errorStringResources:[I

    neg-int v6, p2

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 452
    .local v1, error:Ljava/lang/String;
    :goto_6c
    iget-object v4, p1, Landroid/net/http/Request;->mEventHandler:Landroid/net/http/EventHandler;

    invoke-interface {v4, p2, v1}, Landroid/net/http/EventHandler;->error(ILjava/lang/String;)V

    .line 453
    invoke-virtual {p1}, Landroid/net/http/Request;->complete()V

    .line 456
    .end local v1           #error:Ljava/lang/String;
    :cond_74
    invoke-virtual {p0}, Landroid/net/http/Connection;->closeConnection()V

    .line 457
    iget-object v4, p0, Landroid/net/http/Connection;->mHttpContext:Lorg/apache/http/protocol/HttpContext;

    const-string v5, "http.connection"

    invoke-interface {v4, v5}, Lorg/apache/http/protocol/HttpContext;->removeAttribute(Ljava/lang/String;)Ljava/lang/Object;

    .line 459
    return v3

    .line 449
    :cond_7f
    invoke-virtual {p3}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 450
    .local v0, cause:Ljava/lang/Throwable;
    if-eqz v0, :cond_8b

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .restart local v1       #error:Ljava/lang/String;
    :goto_8a
    goto :goto_6c

    .end local v1           #error:Ljava/lang/String;
    :cond_8b
    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    goto :goto_8a
.end method

.method private keepAlive(Lorg/apache/http/HttpEntity;Lorg/apache/http/ProtocolVersion;ILorg/apache/http/protocol/HttpContext;)Z
    .registers 12
    .parameter "entity"
    .parameter "ver"
    .parameter "connType"
    .parameter "context"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 472
    const-string v1, "http.connection"

    invoke-interface {p4, v1}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/HttpConnection;

    .line 475
    .local v0, conn:Lorg/apache/http/HttpConnection;
    if-eqz v0, :cond_14

    invoke-interface {v0}, Lorg/apache/http/HttpConnection;->isOpen()Z

    move-result v1

    if-nez v1, :cond_14

    move v1, v5

    .line 495
    :goto_13
    return v1

    .line 479
    :cond_14
    if-eqz p1, :cond_30

    .line 480
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gez v1, :cond_30

    .line 481
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->isChunked()Z

    move-result v1

    if-eqz v1, :cond_2e

    sget-object v1, Lorg/apache/http/HttpVersion;->HTTP_1_0:Lorg/apache/http/HttpVersion;

    invoke-virtual {p2, v1}, Lorg/apache/http/ProtocolVersion;->lessEquals(Lorg/apache/http/ProtocolVersion;)Z

    move-result v1

    if-eqz v1, :cond_30

    :cond_2e
    move v1, v5

    .line 484
    goto :goto_13

    .line 489
    :cond_30
    if-ne p3, v6, :cond_34

    move v1, v5

    .line 490
    goto :goto_13

    .line 491
    :cond_34
    const/4 v1, 0x2

    if-ne p3, v1, :cond_39

    move v1, v6

    .line 492
    goto :goto_13

    .line 495
    :cond_39
    sget-object v1, Lorg/apache/http/HttpVersion;->HTTP_1_0:Lorg/apache/http/HttpVersion;

    invoke-virtual {p2, v1}, Lorg/apache/http/ProtocolVersion;->lessEquals(Lorg/apache/http/ProtocolVersion;)Z

    move-result v1

    if-nez v1, :cond_43

    move v1, v6

    goto :goto_13

    :cond_43
    move v1, v5

    goto :goto_13
.end method

.method private openHttpConnection(Landroid/net/http/Request;)Z
    .registers 15
    .parameter "req"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x2

    .line 355
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 356
    .local v3, now:J
    const/4 v1, 0x0

    .line 357
    .local v1, error:I
    const/4 v2, 0x0

    .line 361
    .local v2, exception:Ljava/lang/Exception;
    const/4 v7, 0x0

    :try_start_a
    iput-object v7, p0, Landroid/net/http/Connection;->mCertificate:Landroid/net/http/SslCertificate;

    .line 362
    invoke-virtual {p0, p1}, Landroid/net/http/Connection;->openConnection(Landroid/net/http/Request;)Landroid/net/http/AndroidHttpClientConnection;

    move-result-object v7

    iput-object v7, p0, Landroid/net/http/Connection;->mHttpClientConnection:Landroid/net/http/AndroidHttpClientConnection;

    .line 363
    iget-object v7, p0, Landroid/net/http/Connection;->mHttpClientConnection:Landroid/net/http/AndroidHttpClientConnection;

    if-eqz v7, :cond_53

    .line 364
    iget-object v7, p0, Landroid/net/http/Connection;->mHttpClientConnection:Landroid/net/http/AndroidHttpClientConnection;

    const v8, 0xea60

    invoke-virtual {v7, v8}, Landroid/net/http/AndroidHttpClientConnection;->setSocketTimeout(I)V

    .line 365
    iget-object v7, p0, Landroid/net/http/Connection;->mHttpContext:Lorg/apache/http/protocol/HttpContext;

    const-string v8, "http.connection"

    iget-object v9, p0, Landroid/net/http/Connection;->mHttpClientConnection:Landroid/net/http/AndroidHttpClientConnection;

    invoke-interface {v7, v8, v9}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_27
    .catch Ljava/net/UnknownHostException; {:try_start_a .. :try_end_27} :catch_58
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_27} :catch_62
    .catch Landroid/net/http/SSLConnectionClosedByUserException; {:try_start_a .. :try_end_27} :catch_6e
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_a .. :try_end_27} :catch_74
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_27} :catch_81

    .line 403
    :goto_27
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 404
    .local v5, now2:J
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Connection.openHttpConnection() "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sub-long v8, v5, v3

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/net/http/Connection;->mHost:Lorg/apache/http/HttpHost;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/http/HttpLog;->v(Ljava/lang/String;)V

    .line 408
    if-nez v1, :cond_86

    move v7, v12

    .line 419
    .end local v5           #now2:J
    :goto_52
    return v7

    .line 371
    :cond_53
    const/4 v7, 0x2

    :try_start_54
    iput v7, p1, Landroid/net/http/Request;->mFailCount:I
    :try_end_56
    .catch Ljava/net/UnknownHostException; {:try_start_54 .. :try_end_56} :catch_58
    .catch Ljava/lang/IllegalArgumentException; {:try_start_54 .. :try_end_56} :catch_62
    .catch Landroid/net/http/SSLConnectionClosedByUserException; {:try_start_54 .. :try_end_56} :catch_6e
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_54 .. :try_end_56} :catch_74
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_56} :catch_81

    move v7, v11

    .line 372
    goto :goto_52

    .line 374
    :catch_58
    move-exception v7

    move-object v0, v7

    .line 375
    .local v0, e:Ljava/net/UnknownHostException;
    const-string v7, "Failed to open connection"

    invoke-static {v7}, Landroid/net/http/HttpLog;->v(Ljava/lang/String;)V

    .line 376
    const/4 v1, -0x2

    .line 377
    move-object v2, v0

    .line 400
    goto :goto_27

    .line 378
    .end local v0           #e:Ljava/net/UnknownHostException;
    :catch_62
    move-exception v7

    move-object v0, v7

    .line 379
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v7, "Illegal argument exception"

    invoke-static {v7}, Landroid/net/http/HttpLog;->v(Ljava/lang/String;)V

    .line 380
    const/4 v1, -0x6

    .line 381
    iput v10, p1, Landroid/net/http/Request;->mFailCount:I

    .line 382
    move-object v2, v0

    .line 400
    goto :goto_27

    .line 383
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_6e
    move-exception v7

    move-object v0, v7

    .line 386
    .local v0, e:Landroid/net/http/SSLConnectionClosedByUserException;
    iput v10, p1, Landroid/net/http/Request;->mFailCount:I

    move v7, v11

    .line 388
    goto :goto_52

    .line 389
    .end local v0           #e:Landroid/net/http/SSLConnectionClosedByUserException;
    :catch_74
    move-exception v7

    move-object v0, v7

    .line 392
    .local v0, e:Ljavax/net/ssl/SSLHandshakeException;
    iput v10, p1, Landroid/net/http/Request;->mFailCount:I

    .line 393
    const-string v7, "SSL exception performing handshake"

    invoke-static {v7}, Landroid/net/http/HttpLog;->v(Ljava/lang/String;)V

    .line 395
    const/16 v1, -0xb

    .line 396
    move-object v2, v0

    .line 400
    goto :goto_27

    .line 397
    .end local v0           #e:Ljavax/net/ssl/SSLHandshakeException;
    :catch_81
    move-exception v7

    move-object v0, v7

    .line 398
    .local v0, e:Ljava/io/IOException;
    const/4 v1, -0x6

    .line 399
    move-object v2, v0

    goto :goto_27

    .line 411
    .end local v0           #e:Ljava/io/IOException;
    .restart local v5       #now2:J
    :cond_86
    iget-object v7, p0, Landroid/net/http/Connection;->mConnectionManager:Landroid/net/http/RequestQueue$ConnectionManager;

    invoke-interface {v7}, Landroid/net/http/RequestQueue$ConnectionManager;->isNetworkConnected()Z

    move-result v7

    if-eqz v7, :cond_92

    iget v7, p1, Landroid/net/http/Request;->mFailCount:I

    if-ge v7, v10, :cond_a1

    .line 414
    :cond_92
    iget-object v7, p0, Landroid/net/http/Connection;->mRequestFeeder:Landroid/net/http/RequestFeeder;

    invoke-interface {v7, p1}, Landroid/net/http/RequestFeeder;->requeueRequest(Landroid/net/http/Request;)V

    .line 415
    iget v7, p1, Landroid/net/http/Request;->mFailCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p1, Landroid/net/http/Request;->mFailCount:I

    .line 419
    :goto_9d
    if-nez v1, :cond_a5

    move v7, v12

    goto :goto_52

    .line 417
    :cond_a1
    invoke-direct {p0, p1, v1, v2}, Landroid/net/http/Connection;->httpFailure(Landroid/net/http/Request;ILjava/lang/Exception;)Z

    goto :goto_9d

    :cond_a5
    move v7, v11

    .line 419
    goto :goto_52
.end method


# virtual methods
.method cancel()V
    .registers 3

    .prologue
    .line 154
    sget v0, Landroid/net/http/Connection;->STATE_CANCEL_REQUESTED:I

    iput v0, p0, Landroid/net/http/Connection;->mActive:I

    .line 155
    invoke-virtual {p0}, Landroid/net/http/Connection;->closeConnection()V

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connection.cancel(): connection closed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/http/Connection;->mHost:Lorg/apache/http/HttpHost;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/http/HttpLog;->v(Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method abstract closeConnection()V
.end method

.method getBuf()[B
    .registers 2

    .prologue
    .line 524
    iget-object v0, p0, Landroid/net/http/Connection;->mBuf:[B

    if-nez v0, :cond_a

    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/net/http/Connection;->mBuf:[B

    .line 525
    :cond_a
    iget-object v0, p0, Landroid/net/http/Connection;->mBuf:[B

    return-object v0
.end method

.method getCanPersist()Z
    .registers 2

    .prologue
    .line 507
    iget-boolean v0, p0, Landroid/net/http/Connection;->mCanPersist:Z

    return v0
.end method

.method getCertificate()Landroid/net/http/SslCertificate;
    .registers 2

    .prologue
    .line 146
    iget-object v0, p0, Landroid/net/http/Connection;->mCertificate:Landroid/net/http/SslCertificate;

    return-object v0
.end method

.method getHost()Lorg/apache/http/HttpHost;
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, Landroid/net/http/Connection;->mHost:Lorg/apache/http/HttpHost;

    return-object v0
.end method

.method getHttpContext()Lorg/apache/http/protocol/HttpContext;
    .registers 2

    .prologue
    .line 463
    iget-object v0, p0, Landroid/net/http/Connection;->mHttpContext:Lorg/apache/http/protocol/HttpContext;

    return-object v0
.end method

.method abstract getScheme()Ljava/lang/String;
.end method

.method abstract openConnection(Landroid/net/http/Request;)Landroid/net/http/AndroidHttpClientConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method processRequests(Landroid/net/http/Request;)V
    .registers 16
    .parameter "firstRequest"

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x0

    .line 165
    const/4 v8, 0x0

    .line 167
    .local v8, req:Landroid/net/http/Request;
    const/4 v2, 0x0

    .line 168
    .local v2, error:I
    const/4 v3, 0x0

    .line 170
    .local v3, exception:Ljava/lang/Exception;
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 172
    .local v6, pipe:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/net/http/Request;>;"
    const/4 v5, 0x2

    .local v5, minPipe:I
    const/4 v4, 0x3

    .line 173
    .local v4, maxPipe:I
    const/4 v9, 0x0

    .line 175
    .local v9, state:I
    :cond_d
    :goto_d
    if-eq v9, v13, :cond_17f

    .line 176
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Landroid/net/http/Connection;->states:[Ljava/lang/String;

    aget-object v11, v11, v9

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " pipe "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/http/HttpLog;->v(Ljava/lang/String;)V

    .line 182
    iget v10, p0, Landroid/net/http/Connection;->mActive:I

    sget v11, Landroid/net/http/Connection;->STATE_CANCEL_REQUESTED:I

    if-ne v10, v11, :cond_40

    .line 184
    const-wide/16 v10, 0x64

    :try_start_39
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3c
    .catch Ljava/lang/InterruptedException; {:try_start_39 .. :try_end_3c} :catch_17c

    .line 186
    :goto_3c
    sget v10, Landroid/net/http/Connection;->STATE_NORMAL:I

    iput v10, p0, Landroid/net/http/Connection;->mActive:I

    .line 189
    :cond_40
    packed-switch v9, :pswitch_data_180

    goto :goto_d

    .line 191
    :pswitch_44
    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v10

    if-ne v10, v4, :cond_4c

    .line 192
    const/4 v9, 0x1

    .line 193
    goto :goto_d

    .line 196
    :cond_4c
    if-nez p1, :cond_5a

    .line 197
    iget-object v10, p0, Landroid/net/http/Connection;->mRequestFeeder:Landroid/net/http/RequestFeeder;

    iget-object v11, p0, Landroid/net/http/Connection;->mHost:Lorg/apache/http/HttpHost;

    invoke-interface {v10, v11}, Landroid/net/http/RequestFeeder;->getRequest(Lorg/apache/http/HttpHost;)Landroid/net/http/Request;

    move-result-object v8

    .line 202
    :goto_56
    if-nez v8, :cond_5d

    .line 203
    const/4 v9, 0x2

    .line 204
    goto :goto_d

    .line 199
    :cond_5a
    move-object v8, p1

    .line 200
    const/4 p1, 0x0

    goto :goto_56

    .line 206
    :cond_5d
    invoke-virtual {v8, p0}, Landroid/net/http/Request;->setConnection(Landroid/net/http/Connection;)V

    .line 209
    iget-boolean v10, v8, Landroid/net/http/Request;->mCancelled:Z

    if-eqz v10, :cond_7e

    .line 210
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "processRequests(): skipping cancelled request "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/http/HttpLog;->v(Ljava/lang/String;)V

    .line 213
    invoke-virtual {v8}, Landroid/net/http/Request;->complete()V

    goto :goto_d

    .line 217
    :cond_7e
    iget-object v10, p0, Landroid/net/http/Connection;->mHttpClientConnection:Landroid/net/http/AndroidHttpClientConnection;

    if-eqz v10, :cond_8a

    iget-object v10, p0, Landroid/net/http/Connection;->mHttpClientConnection:Landroid/net/http/AndroidHttpClientConnection;

    invoke-virtual {v10}, Landroid/net/http/AndroidHttpClientConnection;->isOpen()Z

    move-result v10

    if-nez v10, :cond_93

    .line 225
    :cond_8a
    invoke-direct {p0, v8}, Landroid/net/http/Connection;->openHttpConnection(Landroid/net/http/Request;)Z

    move-result v10

    if-nez v10, :cond_93

    .line 226
    const/4 v9, 0x3

    .line 227
    goto/16 :goto_d

    .line 235
    :cond_93
    :try_start_93
    iget-object v10, p0, Landroid/net/http/Connection;->mHttpClientConnection:Landroid/net/http/AndroidHttpClientConnection;

    invoke-virtual {v8, v10}, Landroid/net/http/Request;->sendRequest(Landroid/net/http/AndroidHttpClientConnection;)V
    :try_end_98
    .catch Lorg/apache/http/HttpException; {:try_start_93 .. :try_end_98} :catch_bb
    .catch Ljava/io/IOException; {:try_start_93 .. :try_end_98} :catch_c0
    .catch Ljava/lang/IllegalStateException; {:try_start_93 .. :try_end_98} :catch_c5

    .line 246
    :goto_98
    if-eqz v3, :cond_cc

    .line 247
    invoke-direct {p0, v8, v2, v3}, Landroid/net/http/Connection;->httpFailure(Landroid/net/http/Request;ILjava/lang/Exception;)Z

    move-result v10

    if-eqz v10, :cond_a7

    iget-boolean v10, v8, Landroid/net/http/Request;->mCancelled:Z

    if-nez v10, :cond_a7

    .line 251
    invoke-virtual {v6, v8}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 253
    :cond_a7
    const/4 v3, 0x0

    .line 254
    invoke-direct {p0, v6}, Landroid/net/http/Connection;->clearPipe(Ljava/util/LinkedList;)Z

    move-result v10

    if-nez v10, :cond_b6

    iget-object v10, p0, Landroid/net/http/Connection;->mConnectionManager:Landroid/net/http/RequestQueue$ConnectionManager;

    invoke-interface {v10}, Landroid/net/http/RequestQueue$ConnectionManager;->isNetworkConnected()Z

    move-result v10

    if-nez v10, :cond_ca

    :cond_b6
    move v9, v13

    .line 257
    :goto_b7
    const/4 v4, 0x1

    move v5, v4

    .line 258
    goto/16 :goto_d

    .line 236
    :catch_bb
    move-exception v10

    move-object v0, v10

    .line 237
    .local v0, e:Lorg/apache/http/HttpException;
    move-object v3, v0

    .line 238
    const/4 v2, -0x1

    .line 245
    goto :goto_98

    .line 239
    .end local v0           #e:Lorg/apache/http/HttpException;
    :catch_c0
    move-exception v10

    move-object v0, v10

    .line 240
    .local v0, e:Ljava/io/IOException;
    move-object v3, v0

    .line 241
    const/4 v2, -0x7

    .line 245
    goto :goto_98

    .line 242
    .end local v0           #e:Ljava/io/IOException;
    :catch_c5
    move-exception v10

    move-object v0, v10

    .line 243
    .local v0, e:Ljava/lang/IllegalStateException;
    move-object v3, v0

    .line 244
    const/4 v2, -0x7

    goto :goto_98

    .end local v0           #e:Ljava/lang/IllegalStateException;
    :cond_ca
    move v9, v12

    .line 254
    goto :goto_b7

    .line 261
    :cond_cc
    invoke-virtual {v6, v8}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 262
    iget-boolean v10, p0, Landroid/net/http/Connection;->mCanPersist:Z

    if-nez v10, :cond_d

    const/4 v9, 0x1

    goto/16 :goto_d

    .line 268
    :pswitch_d6
    iget-object v10, p0, Landroid/net/http/Connection;->mRequestFeeder:Landroid/net/http/RequestFeeder;

    iget-object v11, p0, Landroid/net/http/Connection;->mHost:Lorg/apache/http/HttpHost;

    invoke-interface {v10, v11}, Landroid/net/http/RequestFeeder;->haveRequest(Lorg/apache/http/HttpHost;)Z

    move-result v10

    if-nez v10, :cond_f4

    const/4 v10, 0x1

    move v1, v10

    .line 269
    .local v1, empty:Z
    :goto_e2
    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v7

    .line 270
    .local v7, pipeSize:I
    const/4 v10, 0x2

    if-eq v9, v10, :cond_f6

    if-ge v7, v5, :cond_f6

    if-nez v1, :cond_f6

    iget-boolean v10, p0, Landroid/net/http/Connection;->mCanPersist:Z

    if-eqz v10, :cond_f6

    .line 272
    const/4 v9, 0x0

    .line 273
    goto/16 :goto_d

    .end local v1           #empty:Z
    .end local v7           #pipeSize:I
    :cond_f4
    move v1, v12

    .line 268
    goto :goto_e2

    .line 274
    .restart local v1       #empty:Z
    .restart local v7       #pipeSize:I
    :cond_f6
    if-nez v7, :cond_ff

    .line 276
    if-eqz v1, :cond_fd

    move v9, v13

    .line 277
    :goto_fb
    goto/16 :goto_d

    :cond_fd
    move v9, v12

    .line 276
    goto :goto_fb

    .line 280
    :cond_ff
    invoke-virtual {v6}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v8

    .end local v8           #req:Landroid/net/http/Request;
    check-cast v8, Landroid/net/http/Request;

    .line 281
    .restart local v8       #req:Landroid/net/http/Request;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "processRequests() reading "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/http/HttpLog;->v(Ljava/lang/String;)V

    .line 285
    :try_start_11b
    iget-object v10, p0, Landroid/net/http/Connection;->mHttpClientConnection:Landroid/net/http/AndroidHttpClientConnection;

    invoke-virtual {v8, v10}, Landroid/net/http/Request;->readResponse(Landroid/net/http/AndroidHttpClientConnection;)V
    :try_end_120
    .catch Lorg/apache/http/ParseException; {:try_start_11b .. :try_end_120} :catch_16b
    .catch Ljava/io/IOException; {:try_start_11b .. :try_end_120} :catch_170
    .catch Ljava/lang/IllegalStateException; {:try_start_11b .. :try_end_120} :catch_175

    .line 296
    :goto_120
    if-eqz v3, :cond_135

    .line 297
    invoke-direct {p0, v8, v2, v3}, Landroid/net/http/Connection;->httpFailure(Landroid/net/http/Request;ILjava/lang/Exception;)Z

    move-result v10

    if-eqz v10, :cond_132

    iget-boolean v10, v8, Landroid/net/http/Request;->mCancelled:Z

    if-nez v10, :cond_132

    .line 301
    invoke-virtual {v8}, Landroid/net/http/Request;->reset()V

    .line 302
    invoke-virtual {v6, v8}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 304
    :cond_132
    const/4 v3, 0x0

    .line 305
    iput-boolean v12, p0, Landroid/net/http/Connection;->mCanPersist:Z

    .line 307
    :cond_135
    iget-boolean v10, p0, Landroid/net/http/Connection;->mCanPersist:Z

    if-nez v10, :cond_d

    .line 308
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "processRequests(): no persist, closing "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Landroid/net/http/Connection;->mHost:Lorg/apache/http/HttpHost;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/http/HttpLog;->v(Ljava/lang/String;)V

    .line 312
    invoke-virtual {p0}, Landroid/net/http/Connection;->closeConnection()V

    .line 314
    iget-object v10, p0, Landroid/net/http/Connection;->mHttpContext:Lorg/apache/http/protocol/HttpContext;

    const-string v11, "http.connection"

    invoke-interface {v10, v11}, Lorg/apache/http/protocol/HttpContext;->removeAttribute(Ljava/lang/String;)Ljava/lang/Object;

    .line 315
    invoke-direct {p0, v6}, Landroid/net/http/Connection;->clearPipe(Ljava/util/LinkedList;)Z

    .line 316
    const/4 v4, 0x1

    move v5, v4

    .line 318
    iget-object v10, p0, Landroid/net/http/Connection;->mConnectionManager:Landroid/net/http/RequestQueue$ConnectionManager;

    invoke-interface {v10}, Landroid/net/http/RequestQueue$ConnectionManager;->isNetworkConnected()Z

    move-result v10

    if-eqz v10, :cond_17a

    move v9, v12

    :goto_169
    goto/16 :goto_d

    .line 286
    :catch_16b
    move-exception v10

    move-object v0, v10

    .line 287
    .local v0, e:Lorg/apache/http/ParseException;
    move-object v3, v0

    .line 288
    const/4 v2, -0x7

    .line 295
    goto :goto_120

    .line 289
    .end local v0           #e:Lorg/apache/http/ParseException;
    :catch_170
    move-exception v10

    move-object v0, v10

    .line 290
    .local v0, e:Ljava/io/IOException;
    move-object v3, v0

    .line 291
    const/4 v2, -0x7

    .line 295
    goto :goto_120

    .line 292
    .end local v0           #e:Ljava/io/IOException;
    :catch_175
    move-exception v10

    move-object v0, v10

    .line 293
    .local v0, e:Ljava/lang/IllegalStateException;
    move-object v3, v0

    .line 294
    const/4 v2, -0x7

    goto :goto_120

    .end local v0           #e:Ljava/lang/IllegalStateException;
    :cond_17a
    move v9, v13

    .line 318
    goto :goto_169

    .line 185
    .end local v1           #empty:Z
    .end local v7           #pipeSize:I
    :catch_17c
    move-exception v10

    goto/16 :goto_3c

    .line 325
    :cond_17f
    return-void

    .line 189
    :pswitch_data_180
    .packed-switch 0x0
        :pswitch_44
        :pswitch_d6
        :pswitch_d6
    .end packed-switch
.end method

.method setCanPersist(Lorg/apache/http/HttpEntity;Lorg/apache/http/ProtocolVersion;I)V
    .registers 5
    .parameter "entity"
    .parameter "ver"
    .parameter "connType"

    .prologue
    .line 499
    iget-object v0, p0, Landroid/net/http/Connection;->mHttpContext:Lorg/apache/http/protocol/HttpContext;

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/net/http/Connection;->keepAlive(Lorg/apache/http/HttpEntity;Lorg/apache/http/ProtocolVersion;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/net/http/Connection;->mCanPersist:Z

    .line 500
    return-void
.end method

.method setCanPersist(Z)V
    .registers 2
    .parameter "canPersist"

    .prologue
    .line 503
    iput-boolean p1, p0, Landroid/net/http/Connection;->mCanPersist:Z

    .line 504
    return-void
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 520
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/net/http/Connection;->mHost:Lorg/apache/http/HttpHost;

    invoke-virtual {v0}, Lorg/apache/http/HttpHost;->toString()Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method
