.class public Lcom/google/android/net/GoogleHttpClient;
.super Ljava/lang/Object;
.source "GoogleHttpClient.java"

# interfaces
.implements Lorg/apache/http/client/HttpClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/net/GoogleHttpClient$1;,
        Lcom/google/android/net/GoogleHttpClient$WrappedLayeredSocketFactory;,
        Lcom/google/android/net/GoogleHttpClient$WrappedSocketFactory;,
        Lcom/google/android/net/GoogleHttpClient$BlockedRequestException;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GoogleHttpClient"


# instance fields
.field private final mAppName:Ljava/lang/String;

.field private final mClient:Landroid/net/http/AndroidHttpClient;

.field private final mConnectionAllocated:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mUserAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .registers 4
    .parameter "resolver"
    .parameter "userAgent"

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/google/android/net/GoogleHttpClient;->mConnectionAllocated:Ljava/lang/ThreadLocal;

    .line 83
    invoke-static {p2}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/net/GoogleHttpClient;->mClient:Landroid/net/http/AndroidHttpClient;

    .line 84
    iput-object p1, p0, Lcom/google/android/net/GoogleHttpClient;->mResolver:Landroid/content/ContentResolver;

    .line 85
    iput-object p2, p0, Lcom/google/android/net/GoogleHttpClient;->mAppName:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/net/GoogleHttpClient;->mUserAgent:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;Ljava/lang/String;Z)V
    .registers 5
    .parameter "resolver"
    .parameter "appAndVersion"
    .parameter "gzipCapable"

    .prologue
    .line 94
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/google/android/net/GoogleHttpClient;-><init>(Landroid/content/ContentResolver;Lorg/apache/harmony/xnet/provider/jsse/SSLClientSessionCache;Ljava/lang/String;Z)V

    .line 95
    return-void
.end method

.method private constructor <init>(Landroid/content/ContentResolver;Lorg/apache/harmony/xnet/provider/jsse/SSLClientSessionCache;Ljava/lang/String;Z)V
    .registers 15
    .parameter "resolver"
    .parameter "cache"
    .parameter "appAndVersion"
    .parameter "gzipCapable"

    .prologue
    const/4 v9, 0x0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v7, Ljava/lang/ThreadLocal;

    invoke-direct {v7}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v7, p0, Lcom/google/android/net/GoogleHttpClient;->mConnectionAllocated:Ljava/lang/ThreadLocal;

    .line 126
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 127
    .local v6, userAgent:Ljava/lang/String;
    if-eqz p4, :cond_4b

    .line 128
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "; gzip"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 131
    :cond_4b
    invoke-static {v6, p2}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;Lorg/apache/harmony/xnet/provider/jsse/SSLClientSessionCache;)Landroid/net/http/AndroidHttpClient;

    move-result-object v7

    iput-object v7, p0, Lcom/google/android/net/GoogleHttpClient;->mClient:Landroid/net/http/AndroidHttpClient;

    .line 132
    iput-object p1, p0, Lcom/google/android/net/GoogleHttpClient;->mResolver:Landroid/content/ContentResolver;

    .line 133
    iput-object p3, p0, Lcom/google/android/net/GoogleHttpClient;->mAppName:Ljava/lang/String;

    .line 134
    iput-object v6, p0, Lcom/google/android/net/GoogleHttpClient;->mUserAgent:Ljava/lang/String;

    .line 139
    invoke-virtual {p0}, Lcom/google/android/net/GoogleHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v2

    .line 140
    .local v2, registry:Lorg/apache/http/conn/scheme/SchemeRegistry;
    invoke-virtual {v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->getSchemeNames()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_67
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 141
    .local v1, name:Ljava/lang/String;
    invoke-virtual {v2, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->unregister(Ljava/lang/String;)Lorg/apache/http/conn/scheme/Scheme;

    move-result-object v3

    .line 142
    .local v3, scheme:Lorg/apache/http/conn/scheme/Scheme;
    invoke-virtual {v3}, Lorg/apache/http/conn/scheme/Scheme;->getSocketFactory()Lorg/apache/http/conn/scheme/SocketFactory;

    move-result-object v4

    .line 143
    .local v4, sf:Lorg/apache/http/conn/scheme/SocketFactory;
    instance-of v7, v4, Lorg/apache/http/conn/scheme/LayeredSocketFactory;

    if-eqz v7, :cond_94

    .line 144
    new-instance v5, Lcom/google/android/net/GoogleHttpClient$WrappedLayeredSocketFactory;

    check-cast v4, Lorg/apache/http/conn/scheme/LayeredSocketFactory;

    .end local v4           #sf:Lorg/apache/http/conn/scheme/SocketFactory;
    invoke-direct {v5, p0, v4, v9}, Lcom/google/android/net/GoogleHttpClient$WrappedLayeredSocketFactory;-><init>(Lcom/google/android/net/GoogleHttpClient;Lorg/apache/http/conn/scheme/LayeredSocketFactory;Lcom/google/android/net/GoogleHttpClient$1;)V

    .local v5, sf:Lorg/apache/http/conn/scheme/SocketFactory;
    move-object v4, v5

    .line 148
    .end local v5           #sf:Lorg/apache/http/conn/scheme/SocketFactory;
    .restart local v4       #sf:Lorg/apache/http/conn/scheme/SocketFactory;
    :goto_87
    new-instance v7, Lorg/apache/http/conn/scheme/Scheme;

    invoke-virtual {v3}, Lorg/apache/http/conn/scheme/Scheme;->getDefaultPort()I

    move-result v8

    invoke-direct {v7, v1, v4, v8}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v7}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    goto :goto_67

    .line 146
    :cond_94
    new-instance v5, Lcom/google/android/net/GoogleHttpClient$WrappedSocketFactory;

    invoke-direct {v5, p0, v4, v9}, Lcom/google/android/net/GoogleHttpClient$WrappedSocketFactory;-><init>(Lcom/google/android/net/GoogleHttpClient;Lorg/apache/http/conn/scheme/SocketFactory;Lcom/google/android/net/GoogleHttpClient$1;)V

    .end local v4           #sf:Lorg/apache/http/conn/scheme/SocketFactory;
    .restart local v5       #sf:Lorg/apache/http/conn/scheme/SocketFactory;
    move-object v4, v5

    .end local v5           #sf:Lorg/apache/http/conn/scheme/SocketFactory;
    .restart local v4       #sf:Lorg/apache/http/conn/scheme/SocketFactory;
    goto :goto_87

    .line 150
    .end local v1           #name:Ljava/lang/String;
    .end local v3           #scheme:Lorg/apache/http/conn/scheme/Scheme;
    .end local v4           #sf:Lorg/apache/http/conn/scheme/SocketFactory;
    :cond_9b
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 6
    .parameter "context"
    .parameter "appAndVersion"
    .parameter "gzipCapable"

    .prologue
    .line 118
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/net/SSLClientSessionCacheFactory;->getCache(Landroid/content/Context;)Lorg/apache/harmony/xnet/provider/jsse/SSLClientSessionCache;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/google/android/net/GoogleHttpClient;-><init>(Landroid/content/ContentResolver;Lorg/apache/harmony/xnet/provider/jsse/SSLClientSessionCache;Ljava/lang/String;Z)V

    .line 121
    return-void
.end method

.method static synthetic access$200(Lcom/google/android/net/GoogleHttpClient;)Ljava/lang/ThreadLocal;
    .registers 2
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/net/GoogleHttpClient;->mConnectionAllocated:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method public static getGzipCapableUserAgent(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "originalUserAgent"

    .prologue
    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; gzip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static wrapRequest(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/impl/client/RequestWrapper;
    .registers 4
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 307
    :try_start_0
    instance-of v2, p0, Lorg/apache/http/HttpEntityEnclosingRequest;

    if-eqz v2, :cond_f

    .line 308
    new-instance v1, Lorg/apache/http/impl/client/EntityEnclosingRequestWrapper;

    check-cast p0, Lorg/apache/http/HttpEntityEnclosingRequest;

    .end local p0
    invoke-direct {v1, p0}, Lorg/apache/http/impl/client/EntityEnclosingRequestWrapper;-><init>(Lorg/apache/http/HttpEntityEnclosingRequest;)V

    .line 315
    .local v1, wrapped:Lorg/apache/http/impl/client/RequestWrapper;
    :goto_b
    invoke-virtual {v1}, Lorg/apache/http/impl/client/RequestWrapper;->resetHeaders()V

    .line 317
    return-object v1

    .line 311
    .end local v1           #wrapped:Lorg/apache/http/impl/client/RequestWrapper;
    .restart local p0
    :cond_f
    new-instance v1, Lorg/apache/http/impl/client/RequestWrapper;

    invoke-direct {v1, p0}, Lorg/apache/http/impl/client/RequestWrapper;-><init>(Lorg/apache/http/HttpRequest;)V
    :try_end_14
    .catch Lorg/apache/http/ProtocolException; {:try_start_0 .. :try_end_14} :catch_15

    .restart local v1       #wrapped:Lorg/apache/http/impl/client/RequestWrapper;
    goto :goto_b

    .line 318
    .end local v1           #wrapped:Lorg/apache/http/impl/client/RequestWrapper;
    .end local p0
    :catch_15
    move-exception v2

    move-object v0, v2

    .line 319
    .local v0, e:Lorg/apache/http/ProtocolException;
    new-instance v2, Lorg/apache/http/client/ClientProtocolException;

    invoke-direct {v2, v0}, Lorg/apache/http/client/ClientProtocolException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public close()V
    .registers 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/google/android/net/GoogleHttpClient;->mClient:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 191
    return-void
.end method

.method public disableCurlLogging()V
    .registers 2

    .prologue
    .line 399
    iget-object v0, p0, Lcom/google/android/net/GoogleHttpClient;->mClient:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->disableCurlLogging()V

    .line 400
    return-void
.end method

.method public enableCurlLogging(Ljava/lang/String;I)V
    .registers 4
    .parameter "name"
    .parameter "level"

    .prologue
    .line 392
    iget-object v0, p0, Lcom/google/android/net/GoogleHttpClient;->mClient:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v0, p1, p2}, Landroid/net/http/AndroidHttpClient;->enableCurlLogging(Ljava/lang/String;I)V

    .line 393
    return-void
.end method

.method public execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;
    .registers 5
    .parameter "target"
    .parameter "request"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/HttpHost;",
            "Lorg/apache/http/HttpRequest;",
            "Lorg/apache/http/client/ResponseHandler",
            "<+TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/client/ClientProtocolException;
        }
    .end annotation

    .prologue
    .line 376
    .local p3, responseHandler:Lorg/apache/http/client/ResponseHandler;,"Lorg/apache/http/client/ResponseHandler<+TT;>;"
    iget-object v0, p0, Lcom/google/android/net/GoogleHttpClient;->mClient:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;
    .registers 6
    .parameter "target"
    .parameter "request"
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/HttpHost;",
            "Lorg/apache/http/HttpRequest;",
            "Lorg/apache/http/client/ResponseHandler",
            "<+TT;>;",
            "Lorg/apache/http/protocol/HttpContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/client/ClientProtocolException;
        }
    .end annotation

    .prologue
    .line 382
    .local p3, responseHandler:Lorg/apache/http/client/ResponseHandler;,"Lorg/apache/http/client/ResponseHandler<+TT;>;"
    iget-object v0, p0, Lcom/google/android/net/GoogleHttpClient;->mClient:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;
    .registers 4
    .parameter "request"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            "Lorg/apache/http/client/ResponseHandler",
            "<+TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/client/ClientProtocolException;
        }
    .end annotation

    .prologue
    .line 364
    .local p2, responseHandler:Lorg/apache/http/client/ResponseHandler;,"Lorg/apache/http/client/ResponseHandler<+TT;>;"
    iget-object v0, p0, Lcom/google/android/net/GoogleHttpClient;->mClient:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v0, p1, p2}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;
    .registers 5
    .parameter "request"
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            "Lorg/apache/http/client/ResponseHandler",
            "<+TT;>;",
            "Lorg/apache/http/protocol/HttpContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/client/ClientProtocolException;
        }
    .end annotation

    .prologue
    .line 370
    .local p2, responseHandler:Lorg/apache/http/client/ResponseHandler;,"Lorg/apache/http/client/ResponseHandler<+TT;>;"
    iget-object v0, p0, Lcom/google/android/net/GoogleHttpClient;->mClient:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;
    .registers 4
    .parameter "target"
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 353
    iget-object v0, p0, Lcom/google/android/net/GoogleHttpClient;->mClient:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v0, p1, p2}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .registers 5
    .parameter "target"
    .parameter "request"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 358
    iget-object v0, p0, Lcom/google/android/net/GoogleHttpClient;->mClient:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    .registers 3
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 348
    const/4 v0, 0x0

    check-cast v0, Lorg/apache/http/protocol/HttpContext;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/net/GoogleHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .registers 13
    .parameter "request"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 268
    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v5

    .line 269
    .local v5, uri:Ljava/net/URI;
    invoke-virtual {v5}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    .line 270
    .local v1, original:Ljava/lang/String;
    iget-object v7, p0, Lcom/google/android/net/GoogleHttpClient;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v7}, Lcom/google/android/net/UrlRules;->getRules(Landroid/content/ContentResolver;)Lcom/google/android/net/UrlRules;

    move-result-object v4

    .line 271
    .local v4, rules:Lcom/google/android/net/UrlRules;
    invoke-virtual {v4, v1}, Lcom/google/android/net/UrlRules;->matchRule(Ljava/lang/String;)Lcom/google/android/net/UrlRules$Rule;

    move-result-object v3

    .line 272
    .local v3, rule:Lcom/google/android/net/UrlRules$Rule;
    invoke-virtual {v3, v1}, Lcom/google/android/net/UrlRules$Rule;->apply(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 274
    .local v2, rewritten:Ljava/lang/String;
    if-nez v2, :cond_42

    .line 275
    const-string v7, "GoogleHttpClient"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Blocked by "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v3, Lcom/google/android/net/UrlRules$Rule;->mName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    new-instance v7, Lcom/google/android/net/GoogleHttpClient$BlockedRequestException;

    invoke-direct {v7, v3}, Lcom/google/android/net/GoogleHttpClient$BlockedRequestException;-><init>(Lcom/google/android/net/UrlRules$Rule;)V

    throw v7

    .line 277
    :cond_42
    if-ne v2, v1, :cond_49

    .line 278
    invoke-virtual {p0, p1, p2}, Lcom/google/android/net/GoogleHttpClient;->executeWithoutRewriting(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v7

    .line 295
    :goto_48
    return-object v7

    .line 282
    :cond_49
    :try_start_49
    new-instance v5, Ljava/net/URI;

    .end local v5           #uri:Ljava/net/URI;
    invoke-direct {v5, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_4e
    .catch Ljava/net/URISyntaxException; {:try_start_49 .. :try_end_4e} :catch_5b

    .line 288
    .restart local v5       #uri:Ljava/net/URI;
    invoke-static {p1}, Lcom/google/android/net/GoogleHttpClient;->wrapRequest(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/impl/client/RequestWrapper;

    move-result-object v6

    .line 289
    .local v6, wrapper:Lorg/apache/http/impl/client/RequestWrapper;
    invoke-virtual {v6, v5}, Lorg/apache/http/impl/client/RequestWrapper;->setURI(Ljava/net/URI;)V

    .line 290
    move-object p1, v6

    .line 295
    invoke-virtual {p0, p1, p2}, Lcom/google/android/net/GoogleHttpClient;->executeWithoutRewriting(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v7

    goto :goto_48

    .line 283
    .end local v5           #uri:Ljava/net/URI;
    .end local v6           #wrapper:Lorg/apache/http/impl/client/RequestWrapper;
    :catch_5b
    move-exception v7

    move-object v0, v7

    .line 284
    .local v0, e:Ljava/net/URISyntaxException;
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Bad URL from rule: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v3, Lcom/google/android/net/UrlRules$Rule;->mName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
.end method

.method public executeWithoutRewriting(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .registers 29
    .parameter "request"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 197
    const/4 v15, -0x1

    .line 198
    .local v15, code:I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    .line 201
    .local v18, start:J
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/net/GoogleHttpClient;->mConnectionAllocated:Ljava/lang/ThreadLocal;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 203
    invoke-static {}, Lcom/google/android/net/NetworkStatsEntity;->shouldLogNetworkStats()Z

    move-result v5

    if-eqz v5, :cond_14a

    .line 207
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    .line 208
    .local v6, uid:I
    invoke-static {v6}, Landroid/os/NetStat;->getUidTxBytes(I)J

    move-result-wide v7

    .line 209
    .local v7, startTx:J
    invoke-static {v6}, Landroid/os/NetStat;->getUidRxBytes(I)J

    move-result-wide v9

    .line 211
    .local v9, startRx:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/net/GoogleHttpClient;->mClient:Landroid/net/http/AndroidHttpClient;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v17

    .line 212
    .local v17, response:Lorg/apache/http/HttpResponse;
    if-nez v17, :cond_143

    const/4 v5, 0x0

    move-object v4, v5

    .line 213
    .local v4, origEntity:Lorg/apache/http/HttpEntity;
    :goto_32
    if-eqz v4, :cond_4a

    .line 216
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    .line 217
    .local v13, now:J
    sub-long v11, v13, v18

    .line 218
    .local v11, elapsed:J
    new-instance v3, Lcom/google/android/net/NetworkStatsEntity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/net/GoogleHttpClient;->mAppName:Ljava/lang/String;

    move-object v5, v0

    invoke-direct/range {v3 .. v14}, Lcom/google/android/net/NetworkStatsEntity;-><init>(Lorg/apache/http/HttpEntity;Ljava/lang/String;IJJJJ)V

    .line 221
    .local v3, entity:Lcom/google/android/net/NetworkStatsEntity;
    move-object/from16 v0, v17

    move-object v1, v3

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 227
    .end local v3           #entity:Lcom/google/android/net/NetworkStatsEntity;
    .end local v4           #origEntity:Lorg/apache/http/HttpEntity;
    .end local v6           #uid:I
    .end local v7           #startTx:J
    .end local v9           #startRx:J
    .end local v11           #elapsed:J
    .end local v13           #now:J
    :cond_4a
    :goto_4a
    invoke-interface/range {v17 .. v17}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I
    :try_end_51
    .catchall {:try_start_5 .. :try_end_51} :catchall_1a3

    move-result v15

    .line 235
    :try_start_52
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v22

    sub-long v11, v22, v18

    .line 236
    .restart local v11       #elapsed:J
    new-instance v21, Landroid/content/ContentValues;

    invoke-direct/range {v21 .. v21}, Landroid/content/ContentValues;-><init>()V

    .line 237
    .local v21, values:Landroid/content/ContentValues;
    const-string v5, "count"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v21

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 238
    const-string v5, "sum"

    move-wide v0, v11

    long-to-double v0, v0

    move-wide/from16 v22, v0

    const-wide v24, 0x408f400000000000L

    div-double v22, v22, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    move-object/from16 v0, v21

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 240
    const-string v5, "tag"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Landroid/provider/Checkin$Stats$Tag;->HTTP_REQUEST:Landroid/provider/Checkin$Stats$Tag;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/net/GoogleHttpClient;->mAppName:Ljava/lang/String;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v21

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/net/GoogleHttpClient;->mResolver:Landroid/content/ContentResolver;

    move-object v5, v0

    sget-object v6, Landroid/provider/Checkin$Stats;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/net/GoogleHttpClient;->mConnectionAllocated:Ljava/lang/ThreadLocal;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_fa

    if-ltz v15, :cond_fa

    .line 245
    const-string v5, "tag"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Landroid/provider/Checkin$Stats$Tag;->HTTP_REUSED:Landroid/provider/Checkin$Stats$Tag;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/net/GoogleHttpClient;->mAppName:Ljava/lang/String;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v21

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/net/GoogleHttpClient;->mResolver:Landroid/content/ContentResolver;

    move-object v5, v0

    sget-object v6, Landroid/provider/Checkin$Stats;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 249
    :cond_fa
    if-gez v15, :cond_274

    const-string v5, "IOException"

    move-object/from16 v20, v5

    .line 250
    .local v20, status:Ljava/lang/String;
    :goto_100
    const-string v5, "tag"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Landroid/provider/Checkin$Stats$Tag;->HTTP_STATUS:Landroid/provider/Checkin$Stats$Tag;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/net/GoogleHttpClient;->mAppName:Ljava/lang/String;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v21

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/net/GoogleHttpClient;->mResolver:Landroid/content/ContentResolver;

    move-object v5, v0

    sget-object v6, Landroid/provider/Checkin$Stats;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_142
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_142} :catch_264

    .line 228
    .end local v11           #elapsed:J
    .end local v20           #status:Ljava/lang/String;
    .end local v21           #values:Landroid/content/ContentValues;
    :goto_142
    return-object v17

    .line 212
    .restart local v6       #uid:I
    .restart local v7       #startTx:J
    .restart local v9       #startRx:J
    :cond_143
    :try_start_143
    invoke-interface/range {v17 .. v17}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    move-object v4, v5

    goto/16 :goto_32

    .line 224
    .end local v6           #uid:I
    .end local v7           #startTx:J
    .end local v9           #startRx:J
    .end local v17           #response:Lorg/apache/http/HttpResponse;
    :cond_14a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/net/GoogleHttpClient;->mClient:Landroid/net/http/AndroidHttpClient;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    :try_end_157
    .catchall {:try_start_143 .. :try_end_157} :catchall_1a3

    move-result-object v17

    .restart local v17       #response:Lorg/apache/http/HttpResponse;
    goto/16 :goto_4a

    .line 249
    .end local v17           #response:Lorg/apache/http/HttpResponse;
    .restart local v11       #elapsed:J
    .restart local v21       #values:Landroid/content/ContentValues;
    :cond_15a
    :try_start_15a
    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v20, v6

    .line 250
    .restart local v20       #status:Ljava/lang/String;
    :goto_160
    const-string v6, "tag"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Landroid/provider/Checkin$Stats$Tag;->HTTP_STATUS:Landroid/provider/Checkin$Stats$Tag;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/net/GoogleHttpClient;->mAppName:Ljava/lang/String;

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v21

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/net/GoogleHttpClient;->mResolver:Landroid/content/ContentResolver;

    move-object v6, v0

    sget-object v7, Landroid/provider/Checkin$Stats;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1a2
    .catch Ljava/lang/Exception; {:try_start_15a .. :try_end_1a2} :catch_254

    .line 234
    .end local v11           #elapsed:J
    .end local v20           #status:Ljava/lang/String;
    .end local v21           #values:Landroid/content/ContentValues;
    :goto_1a2
    throw v5

    :catchall_1a3
    move-exception v5

    .line 235
    :try_start_1a4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v22

    sub-long v11, v22, v18

    .line 236
    .restart local v11       #elapsed:J
    new-instance v21, Landroid/content/ContentValues;

    invoke-direct/range {v21 .. v21}, Landroid/content/ContentValues;-><init>()V

    .line 237
    .restart local v21       #values:Landroid/content/ContentValues;
    const-string v6, "count"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v21

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 238
    const-string v6, "sum"

    move-wide v0, v11

    long-to-double v0, v0

    move-wide/from16 v22, v0

    const-wide v24, 0x408f400000000000L

    div-double v22, v22, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    move-object/from16 v0, v21

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 240
    const-string v6, "tag"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Landroid/provider/Checkin$Stats$Tag;->HTTP_REQUEST:Landroid/provider/Checkin$Stats$Tag;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/net/GoogleHttpClient;->mAppName:Ljava/lang/String;

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v21

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/net/GoogleHttpClient;->mResolver:Landroid/content/ContentResolver;

    move-object v6, v0

    sget-object v7, Landroid/provider/Checkin$Stats;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/net/GoogleHttpClient;->mConnectionAllocated:Ljava/lang/ThreadLocal;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_24c

    if-ltz v15, :cond_24c

    .line 245
    const-string v6, "tag"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Landroid/provider/Checkin$Stats$Tag;->HTTP_REUSED:Landroid/provider/Checkin$Stats$Tag;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/net/GoogleHttpClient;->mAppName:Ljava/lang/String;

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v21

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/net/GoogleHttpClient;->mResolver:Landroid/content/ContentResolver;

    move-object v6, v0

    sget-object v7, Landroid/provider/Checkin$Stats;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 249
    :cond_24c
    if-gez v15, :cond_15a

    const-string v6, "IOException"
    :try_end_250
    .catch Ljava/lang/Exception; {:try_start_1a4 .. :try_end_250} :catch_254

    move-object/from16 v20, v6

    goto/16 :goto_160

    .line 253
    .end local v11           #elapsed:J
    .end local v21           #values:Landroid/content/ContentValues;
    :catch_254
    move-exception v6

    move-object/from16 v16, v6

    .line 254
    .local v16, e:Ljava/lang/Exception;
    const-string v6, "GoogleHttpClient"

    const-string v7, "Error recording stats"

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1a2

    .line 253
    .end local v16           #e:Ljava/lang/Exception;
    .restart local v17       #response:Lorg/apache/http/HttpResponse;
    :catch_264
    move-exception v5

    move-object/from16 v16, v5

    .line 254
    .restart local v16       #e:Ljava/lang/Exception;
    const-string v5, "GoogleHttpClient"

    const-string v6, "Error recording stats"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_142

    .line 249
    .end local v16           #e:Ljava/lang/Exception;
    .restart local v11       #elapsed:J
    .restart local v21       #values:Landroid/content/ContentValues;
    :cond_274
    :try_start_274
    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
    :try_end_277
    .catch Ljava/lang/Exception; {:try_start_274 .. :try_end_277} :catch_264

    move-result-object v5

    move-object/from16 v20, v5

    goto/16 :goto_100
.end method

.method public getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;
    .registers 2

    .prologue
    .line 344
    iget-object v0, p0, Lcom/google/android/net/GoogleHttpClient;->mClient:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    return-object v0
.end method

.method public getParams()Lorg/apache/http/params/HttpParams;
    .registers 2

    .prologue
    .line 340
    iget-object v0, p0, Lcom/google/android/net/GoogleHttpClient;->mClient:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    return-object v0
.end method

.method public rewriteURI(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "original"

    .prologue
    .line 260
    iget-object v2, p0, Lcom/google/android/net/GoogleHttpClient;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v2}, Lcom/google/android/net/UrlRules;->getRules(Landroid/content/ContentResolver;)Lcom/google/android/net/UrlRules;

    move-result-object v1

    .line 261
    .local v1, rules:Lcom/google/android/net/UrlRules;
    invoke-virtual {v1, p1}, Lcom/google/android/net/UrlRules;->matchRule(Ljava/lang/String;)Lcom/google/android/net/UrlRules$Rule;

    move-result-object v0

    .line 262
    .local v0, rule:Lcom/google/android/net/UrlRules$Rule;
    invoke-virtual {v0, p1}, Lcom/google/android/net/UrlRules$Rule;->apply(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
