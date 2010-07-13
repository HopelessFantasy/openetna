.class public Lcom/google/common/io/android/GoogleHttpClient;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/http/client/HttpClient;


# static fields
.field private static final TAG:Ljava/lang/String; = "GoogleHttpClient_v09"


# instance fields
.field private final mClient:Lcom/google/common/io/android/AndroidHttpClient;

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mUserAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcom/google/common/io/android/AndroidHttpClient;->newInstance(Ljava/lang/String;)Lcom/google/common/io/android/AndroidHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/io/android/GoogleHttpClient;->mClient:Lcom/google/common/io/android/AndroidHttpClient;

    iput-object p1, p0, Lcom/google/common/io/android/GoogleHttpClient;->mResolver:Landroid/content/ContentResolver;

    iput-object p2, p0, Lcom/google/common/io/android/GoogleHttpClient;->mUserAgent:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;Ljava/lang/String;Z)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p3, :cond_43

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; gzip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_43
    invoke-static {v0}, Lcom/google/common/io/android/AndroidHttpClient;->newInstance(Ljava/lang/String;)Lcom/google/common/io/android/AndroidHttpClient;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/io/android/GoogleHttpClient;->mClient:Lcom/google/common/io/android/AndroidHttpClient;

    iput-object p1, p0, Lcom/google/common/io/android/GoogleHttpClient;->mResolver:Landroid/content/ContentResolver;

    iput-object v0, p0, Lcom/google/common/io/android/GoogleHttpClient;->mUserAgent:Ljava/lang/String;

    return-void
.end method

.method public static getGzipCapableUserAgent(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

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
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    instance-of v0, p0, Lorg/apache/http/HttpEntityEnclosingRequest;

    if-eqz v0, :cond_f

    new-instance v0, Lorg/apache/http/impl/client/EntityEnclosingRequestWrapper;

    check-cast p0, Lorg/apache/http/HttpEntityEnclosingRequest;

    invoke-direct {v0, p0}, Lorg/apache/http/impl/client/EntityEnclosingRequestWrapper;-><init>(Lorg/apache/http/HttpEntityEnclosingRequest;)V

    :goto_b
    invoke-virtual {v0}, Lorg/apache/http/impl/client/RequestWrapper;->resetHeaders()V

    return-object v0

    :cond_f
    new-instance v0, Lorg/apache/http/impl/client/RequestWrapper;

    invoke-direct {v0, p0}, Lorg/apache/http/impl/client/RequestWrapper;-><init>(Lorg/apache/http/HttpRequest;)V
    :try_end_14
    .catch Lorg/apache/http/ProtocolException; {:try_start_0 .. :try_end_14} :catch_15

    goto :goto_b

    :catch_15
    move-exception v0

    new-instance v1, Lorg/apache/http/client/ClientProtocolException;

    invoke-direct {v1, v0}, Lorg/apache/http/client/ClientProtocolException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public close()V
    .registers 2

    iget-object v0, p0, Lcom/google/common/io/android/GoogleHttpClient;->mClient:Lcom/google/common/io/android/AndroidHttpClient;

    invoke-virtual {v0}, Lcom/google/common/io/android/AndroidHttpClient;->close()V

    return-void
.end method

.method public disableCurlLogging()V
    .registers 2

    iget-object v0, p0, Lcom/google/common/io/android/GoogleHttpClient;->mClient:Lcom/google/common/io/android/AndroidHttpClient;

    invoke-virtual {v0}, Lcom/google/common/io/android/AndroidHttpClient;->disableCurlLogging()V

    return-void
.end method

.method public enableCurlLogging(Ljava/lang/String;I)V
    .registers 4

    iget-object v0, p0, Lcom/google/common/io/android/GoogleHttpClient;->mClient:Lcom/google/common/io/android/AndroidHttpClient;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/io/android/AndroidHttpClient;->enableCurlLogging(Ljava/lang/String;I)V

    return-void
.end method

.method public execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;
    .registers 5
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

    iget-object v0, p0, Lcom/google/common/io/android/GoogleHttpClient;->mClient:Lcom/google/common/io/android/AndroidHttpClient;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/common/io/android/AndroidHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;
    .registers 6
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

    iget-object v0, p0, Lcom/google/common/io/android/GoogleHttpClient;->mClient:Lcom/google/common/io/android/AndroidHttpClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/common/io/android/AndroidHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;
    .registers 4
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

    iget-object v0, p0, Lcom/google/common/io/android/GoogleHttpClient;->mClient:Lcom/google/common/io/android/AndroidHttpClient;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/io/android/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;
    .registers 5
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

    iget-object v0, p0, Lcom/google/common/io/android/GoogleHttpClient;->mClient:Lcom/google/common/io/android/AndroidHttpClient;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/common/io/android/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/io/android/GoogleHttpClient;->mClient:Lcom/google/common/io/android/AndroidHttpClient;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/io/android/AndroidHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/io/android/GoogleHttpClient;->mClient:Lcom/google/common/io/android/AndroidHttpClient;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/common/io/android/AndroidHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    check-cast v0, Lorg/apache/http/protocol/HttpContext;

    invoke-virtual {p0, p1, v0}, Lcom/google/common/io/android/GoogleHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_8
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/net/URISyntaxException; {:try_start_8 .. :try_end_d} :catch_19

    invoke-static {p1}, Lcom/google/common/io/android/GoogleHttpClient;->wrapRequest(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/impl/client/RequestWrapper;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/RequestWrapper;->setURI(Ljava/net/URI;)V

    invoke-virtual {p0, v0, p2}, Lcom/google/common/io/android/GoogleHttpClient;->executeWithoutRewriting(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0

    :catch_19
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad URL from: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public executeWithoutRewriting(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Error"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    :try_start_5
    iget-object v0, p0, Lcom/google/common/io/android/GoogleHttpClient;->mClient:Lcom/google/common/io/android/AndroidHttpClient;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/io/android/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_16} :catch_17

    return-object v0

    :catch_17
    move-exception v0

    const-string v1, "IOException"

    throw v0
.end method

.method public getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;
    .registers 2

    iget-object v0, p0, Lcom/google/common/io/android/GoogleHttpClient;->mClient:Lcom/google/common/io/android/AndroidHttpClient;

    invoke-virtual {v0}, Lcom/google/common/io/android/AndroidHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    return-object v0
.end method

.method public getParams()Lorg/apache/http/params/HttpParams;
    .registers 2

    iget-object v0, p0, Lcom/google/common/io/android/GoogleHttpClient;->mClient:Lcom/google/common/io/android/AndroidHttpClient;

    invoke-virtual {v0}, Lcom/google/common/io/android/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    return-object v0
.end method
