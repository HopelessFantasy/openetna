.class public Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;
.super Ljava/net/HttpURLConnection;
.source "HttpURLConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$HttpOutputStream;,
        Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$ChunkedInputStream;,
        Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$LimitedInputStream;,
        Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$LocalCloseInputStream;
    }
.end annotation


# static fields
.field private static final GET:Ljava/lang/String; = "GET"

.field private static final HEAD:Ljava/lang/String; = "HEAD"

.field private static final POST:Ljava/lang/String; = "POST"

.field private static final PUT:Ljava/lang/String; = "PUT"

.field private static defaultReqHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;


# instance fields
.field private cacheOut:Ljava/io/OutputStream;

.field private cacheRequest:Ljava/net/CacheRequest;

.field private cacheResponse:Ljava/net/CacheResponse;

.field protected connection:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;

.field private final defaultPort:I

.field private hasTriedCache:Z

.field private hostAddress:Ljava/net/InetAddress;

.field private hostName:Ljava/lang/String;

.field private hostPort:I

.field private httpVersion:I

.field private is:Ljava/io/InputStream;

.field private os:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$HttpOutputStream;

.field private proxy:Ljava/net/Proxy;

.field private proxyName:Ljava/lang/String;

.field private reqHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;

.field private resHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;

.field private responseCache:Ljava/net/ResponseCache;

.field sendChunked:Z

.field private sentRequest:Z

.field private socketOut:Ljava/io/OutputStream;

.field private uis:Ljava/io/InputStream;

.field private uri:Ljava/net/URI;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 118
    new-instance v0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;

    invoke-direct {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;-><init>()V

    sput-object v0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->defaultReqHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;

    return-void
.end method

.method protected constructor <init>(Ljava/net/URL;)V
    .registers 3
    .parameter "url"

    .prologue
    .line 699
    const/16 v0, 0x50

    invoke-direct {p0, p1, v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;-><init>(Ljava/net/URL;I)V

    .line 700
    return-void
.end method

.method protected constructor <init>(Ljava/net/URL;I)V
    .registers 4
    .parameter "url"
    .parameter "port"

    .prologue
    .line 711
    invoke-direct {p0, p1}, Ljava/net/HttpURLConnection;-><init>(Ljava/net/URL;)V

    .line 77
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->httpVersion:I

    .line 105
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->hostPort:I

    .line 712
    iput p2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->defaultPort:I

    .line 713
    sget-object v0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->defaultReqHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;

    iput-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->reqHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;

    .line 716
    :try_start_15
    invoke-virtual {p1}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->uri:Ljava/net/URI;
    :try_end_1b
    .catch Ljava/net/URISyntaxException; {:try_start_15 .. :try_end_1b} :catch_29

    .line 720
    :goto_1b
    new-instance v0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$1;

    invoke-direct {v0, p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$1;-><init>(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/ResponseCache;

    iput-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->responseCache:Ljava/net/ResponseCache;

    .line 726
    return-void

    .line 717
    :catch_29
    move-exception v0

    goto :goto_1b
.end method

.method protected constructor <init>(Ljava/net/URL;ILjava/net/Proxy;)V
    .registers 4
    .parameter "url"
    .parameter "port"
    .parameter "proxy"

    .prologue
    .line 739
    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;-><init>(Ljava/net/URL;I)V

    .line 740
    iput-object p3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->proxy:Ljava/net/Proxy;

    .line 741
    return-void
.end method

.method static synthetic access$000(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;)Ljava/io/InputStream;
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->is:Ljava/io/InputStream;

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->useCaches:Z

    return v0
.end method

.method static synthetic access$1000(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->useCaches:Z

    return v0
.end method

.method static synthetic access$1100(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->useCaches:Z

    return v0
.end method

.method static synthetic access$1200(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->useCaches:Z

    return v0
.end method

.method static synthetic access$1300(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->useCaches:Z

    return v0
.end method

.method static synthetic access$1400(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->chunkLength:I

    return v0
.end method

.method static synthetic access$1500(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->chunkLength:I

    return v0
.end method

.method static synthetic access$1600(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;)Ljava/io/OutputStream;
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->socketOut:Ljava/io/OutputStream;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;)Ljava/io/OutputStream;
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->cacheOut:Ljava/io/OutputStream;

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->useCaches:Z

    return v0
.end method

.method static synthetic access$400(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->useCaches:Z

    return v0
.end method

.method static synthetic access$500(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->useCaches:Z

    return v0
.end method

.method static synthetic access$600(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;)Ljava/net/CacheRequest;
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->cacheRequest:Ljava/net/CacheRequest;

    return-object v0
.end method

.method static synthetic access$700(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->disconnect(Z)V

    return-void
.end method

.method static synthetic access$800(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->useCaches:Z

    return v0
.end method

.method static synthetic access$900(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->useCaches:Z

    return v0
.end method

.method private createRequest()[B
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x20

    const-string v10, "content-length"

    const-string v9, "\r\n"

    .line 1319
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v7, 0x100

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1320
    .local v5, output:Ljava/lang/StringBuilder;
    iget-object v7, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->method:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1321
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1322
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->requestString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1323
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1324
    const-string v7, "HTTP/1."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1325
    iget v7, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->httpVersion:I

    if-nez v7, :cond_133

    .line 1326
    const-string v7, "0\r\n"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1330
    :goto_2d
    iget-object v7, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->reqHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;

    const-string v8, "User-Agent"

    invoke-virtual {v7, v8}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_57

    .line 1331
    const-string v7, "User-Agent: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1332
    const-string v7, "http.agent"

    invoke-direct {p0, v7}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1333
    .local v0, agent:Ljava/lang/String;
    if-nez v0, :cond_13a

    .line 1334
    const-string v7, "Java"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1335
    const-string v7, "java.version"

    invoke-direct {p0, v7}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1339
    :goto_52
    const-string v7, "\r\n"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1341
    .end local v0           #agent:Ljava/lang/String;
    :cond_57
    iget-object v7, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->reqHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;

    const-string v8, "Host"

    invoke-virtual {v7, v8}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_8c

    .line 1342
    const-string v7, "Host: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1343
    iget-object v7, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->url:Ljava/net/URL;

    invoke-virtual {v7}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1344
    iget-object v7, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->url:Ljava/net/URL;

    invoke-virtual {v7}, Ljava/net/URL;->getPort()I

    move-result v6

    .line 1345
    .local v6, port:I
    if-lez v6, :cond_87

    iget v7, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->defaultPort:I

    if-eq v6, v7, :cond_87

    .line 1346
    const/16 v7, 0x3a

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1347
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1349
    :cond_87
    const-string v7, "\r\n"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1351
    .end local v6           #port:I
    :cond_8c
    iget v7, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->httpVersion:I

    if-lez v7, :cond_9f

    iget-object v7, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->reqHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;

    const-string v8, "Connection"

    invoke-virtual {v7, v8}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_9f

    .line 1352
    const-string v7, "Connection: Keep-Alive\r\n"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1356
    :cond_9f
    iget-object v7, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->os:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$HttpOutputStream;

    if-eqz v7, :cond_db

    .line 1357
    iget-object v7, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->reqHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;

    const-string v8, "Content-Type"

    invoke-virtual {v7, v8}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_b2

    .line 1358
    const-string v7, "Content-Type: application/x-www-form-urlencoded\r\n"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1360
    :cond_b2
    iget-object v7, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->os:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$HttpOutputStream;

    invoke-virtual {v7}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$HttpOutputStream;->isCached()Z

    move-result v7

    if-eqz v7, :cond_13f

    .line 1361
    iget-object v7, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->reqHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;

    const-string v8, "Content-Length"

    invoke-virtual {v7, v8}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_db

    .line 1362
    const-string v7, "Content-Length: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1363
    iget-object v7, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->os:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$HttpOutputStream;

    invoke-virtual {v7}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$HttpOutputStream;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1364
    const-string v7, "\r\n"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1371
    :cond_db
    :goto_db
    const/4 v1, 0x0

    .line 1373
    .local v1, hasContentLength:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_dd
    iget-object v7, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->reqHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;

    invoke-virtual {v7}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;->length()I

    move-result v7

    if-ge v2, v7, :cond_15e

    .line 1374
    iget-object v7, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->reqHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;

    invoke-virtual {v7, v2}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;->getKey(I)Ljava/lang/String;

    move-result-object v3

    .line 1375
    .local v3, key:Ljava/lang/String;
    if-eqz v3, :cond_130

    .line 1376
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 1377
    .local v4, lKey:Ljava/lang/String;
    iget-object v7, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->os:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$HttpOutputStream;

    if-eqz v7, :cond_fd

    iget-object v7, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->os:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$HttpOutputStream;

    invoke-virtual {v7}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$HttpOutputStream;->isChunked()Z

    move-result v7

    if-eqz v7, :cond_10d

    :cond_fd
    const-string v7, "transfer-encoding"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_130

    const-string v7, "content-length"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_130

    .line 1380
    :cond_10d
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1381
    const-string v7, ": "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1386
    const-string v7, "content-length"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_154

    .line 1387
    const/4 v1, 0x1

    .line 1392
    iget v7, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->fixedContentLength:I

    if-ltz v7, :cond_14d

    iget v7, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->fixedContentLength:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    :goto_128
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1398
    :goto_12b
    const-string v7, "\r\n"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1373
    .end local v4           #lKey:Ljava/lang/String;
    :cond_130
    add-int/lit8 v2, v2, 0x1

    goto :goto_dd

    .line 1328
    .end local v1           #hasContentLength:Z
    .end local v2           #i:I
    .end local v3           #key:Ljava/lang/String;
    :cond_133
    const-string v7, "1\r\n"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2d

    .line 1337
    .restart local v0       #agent:Ljava/lang/String;
    :cond_13a
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_52

    .line 1366
    .end local v0           #agent:Ljava/lang/String;
    :cond_13f
    iget-object v7, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->os:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$HttpOutputStream;

    invoke-virtual {v7}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$HttpOutputStream;->isChunked()Z

    move-result v7

    if-eqz v7, :cond_db

    .line 1367
    const-string v7, "Transfer-Encoding: chunked\r\n"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_db

    .line 1392
    .restart local v1       #hasContentLength:Z
    .restart local v2       #i:I
    .restart local v3       #key:Ljava/lang/String;
    .restart local v4       #lKey:Ljava/lang/String;
    :cond_14d
    iget-object v7, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->reqHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;

    invoke-virtual {v7, v2}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;->get(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_128

    .line 1396
    :cond_154
    iget-object v7, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->reqHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;

    invoke-virtual {v7, v2}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;->get(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_12b

    .line 1402
    .end local v3           #key:Ljava/lang/String;
    .end local v4           #lKey:Ljava/lang/String;
    :cond_15e
    iget v7, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->fixedContentLength:I

    if-ltz v7, :cond_177

    if-nez v1, :cond_177

    .line 1403
    const-string v7, "content-length: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1404
    iget v7, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->fixedContentLength:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1405
    const-string v7, "\r\n"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1408
    :cond_177
    const-string v7, "\r\n"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1409
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "ISO8859_1"

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    return-object v7
.end method

.method private declared-synchronized disconnect(Z)V
    .registers 4
    .parameter "closeSocket"

    .prologue
    .line 896
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->connection:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;

    if-eqz v0, :cond_19

    .line 897
    if-nez p1, :cond_11

    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->os:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$HttpOutputStream;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->os:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$HttpOutputStream;

    iget-boolean v0, v0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$HttpOutputStream;->closed:Z

    if-nez v0, :cond_21

    .line 904
    :cond_11
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->connection:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->closeSocketAndStreams()V

    .line 909
    :goto_16
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->connection:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;

    .line 917
    :cond_19
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->is:Ljava/io/InputStream;

    .line 918
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->os:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$HttpOutputStream;
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_2b

    .line 919
    monitor-exit p0

    return-void

    .line 906
    :cond_21
    :try_start_21
    invoke-static {}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnectionManager;->getDefault()Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnectionManager;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->connection:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;

    invoke-virtual {v0, v1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnectionManager;->returnConnectionToPool(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;)V
    :try_end_2a
    .catchall {:try_start_21 .. :try_end_2a} :catchall_2b

    goto :goto_16

    .line 896
    :catchall_2b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getAuthorizationCredentials(Ljava/lang/String;)Ljava/lang/String;
    .registers 15
    .parameter "challenge"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, -0x1

    const-string v12, "ISO8859_1"

    const-string v11, " "

    .line 1666
    const-string v8, " "

    invoke-virtual {p1, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 1667
    .local v3, idx:I
    const/4 v8, 0x0

    invoke-virtual {p1, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 1668
    .local v7, scheme:Ljava/lang/String;
    const-string v8, "realm=\""

    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v6, v8, 0x7

    .line 1669
    .local v6, realm:I
    const/4 v5, 0x0

    .line 1670
    .local v5, prompt:Ljava/lang/String;
    if-eq v6, v9, :cond_27

    .line 1671
    const/16 v8, 0x22

    invoke-virtual {p1, v8, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 1672
    .local v2, end:I
    if-eq v2, v9, :cond_27

    .line 1673
    invoke-virtual {p1, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 1678
    .end local v2           #end:I
    :cond_27
    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->getHostAddress()Ljava/net/InetAddress;

    move-result-object v8

    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->getHostPort()I

    move-result v9

    iget-object v10, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->url:Ljava/net/URL;

    invoke-virtual {v10}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10, v5, v7}, Ljava/net/Authenticator;->requestPasswordAuthentication(Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/PasswordAuthentication;

    move-result-object v4

    .line 1681
    .local v4, pa:Ljava/net/PasswordAuthentication;
    if-nez v4, :cond_3d

    .line 1683
    const/4 v8, 0x0

    .line 1689
    :goto_3c
    return-object v8

    .line 1686
    :cond_3d
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/net/PasswordAuthentication;->getUserName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    new-instance v9, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/net/PasswordAuthentication;->getPassword()[C

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "ISO8859_1"

    invoke-virtual {v8, v12}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 1688
    .local v0, bytes:[B
    const-string v8, "ISO8859_1"

    invoke-static {v0, v12}, Lorg/apache/harmony/luni/util/Base64;->encode([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1689
    .local v1, encoded:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_3c
.end method

.method private getContentStream()Ljava/io/InputStream;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1071
    iget-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->uis:Ljava/io/InputStream;

    if-eqz v3, :cond_7

    .line 1072
    iget-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->uis:Ljava/io/InputStream;

    .line 1095
    :goto_6
    return-object v3

    .line 1075
    :cond_7
    iget-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->resHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;

    const-string v4, "Transfer-Encoding"

    invoke-virtual {v3, v4}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1076
    .local v0, encoding:Ljava/lang/String;
    if-eqz v0, :cond_25

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "chunked"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 1077
    new-instance v3, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$ChunkedInputStream;

    invoke-direct {v3, p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$ChunkedInputStream;-><init>(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;)V

    iput-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->uis:Ljava/io/InputStream;

    goto :goto_6

    .line 1080
    :cond_25
    iget-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->resHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;

    const-string v4, "Content-Length"

    invoke-virtual {v3, v4}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1081
    .local v2, sLength:Ljava/lang/String;
    if-eqz v2, :cond_3c

    .line 1083
    :try_start_2f
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1084
    .local v1, length:I
    new-instance v3, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$LimitedInputStream;

    invoke-direct {v3, p0, v1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$LimitedInputStream;-><init>(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;I)V

    iput-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->uis:Ljava/io/InputStream;
    :try_end_3a
    .catch Ljava/lang/NumberFormatException; {:try_start_2f .. :try_end_3a} :catch_3b

    goto :goto_6

    .line 1085
    .end local v1           #length:I
    :catch_3b
    move-exception v3

    .line 1095
    :cond_3c
    new-instance v3, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$LocalCloseInputStream;

    invoke-direct {v3, p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$LocalCloseInputStream;-><init>(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;)V

    iput-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->uis:Ljava/io/InputStream;

    goto :goto_6
.end method

.method public static getDefaultRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "field"

    .prologue
    .line 934
    sget-object v0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->defaultReqHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;

    invoke-virtual {v0, p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getFromCache()Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 848
    iget-boolean v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->useCaches:Z

    if-eqz v1, :cond_4d

    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->responseCache:Ljava/net/ResponseCache;

    if-eqz v1, :cond_4d

    iget-boolean v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->hasTriedCache:Z

    if-nez v1, :cond_4d

    .line 849
    iput-boolean v5, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->hasTriedCache:Z

    .line 850
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->resHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;

    if-nez v1, :cond_1a

    .line 851
    new-instance v1, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;

    invoke-direct {v1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;-><init>()V

    iput-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->resHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;

    .line 853
    :cond_1a
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->responseCache:Ljava/net/ResponseCache;

    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->uri:Ljava/net/URI;

    iget-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->method:Ljava/lang/String;

    iget-object v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->resHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;

    invoke-virtual {v4}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;->getFieldMap()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Ljava/net/ResponseCache;->get(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)Ljava/net/CacheResponse;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->cacheResponse:Ljava/net/CacheResponse;

    .line 855
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->cacheResponse:Ljava/net/CacheResponse;

    if-eqz v1, :cond_4d

    .line 856
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->cacheResponse:Ljava/net/CacheResponse;

    invoke-virtual {v1}, Ljava/net/CacheResponse;->getHeaders()Ljava/util/Map;

    move-result-object v0

    .line 857
    .local v0, headMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    if-eqz v0, :cond_3f

    .line 858
    new-instance v1, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;

    invoke-direct {v1, v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;-><init>(Ljava/util/Map;)V

    iput-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->resHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;

    .line 860
    :cond_3f
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->cacheResponse:Ljava/net/CacheResponse;

    invoke-virtual {v1}, Ljava/net/CacheResponse;->getBody()Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->is:Ljava/io/InputStream;

    .line 861
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->is:Ljava/io/InputStream;

    if-eqz v1, :cond_4d

    move v1, v5

    .line 869
    .end local v0           #headMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :goto_4c
    return v1

    .line 866
    :cond_4d
    iget-boolean v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->hasTriedCache:Z

    if-eqz v1, :cond_57

    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->is:Ljava/io/InputStream;

    if-eqz v1, :cond_57

    move v1, v5

    .line 867
    goto :goto_4c

    .line 869
    :cond_57
    const/4 v1, 0x0

    goto :goto_4c
.end method

.method private getHostAddress()Ljava/net/InetAddress;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1495
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->hostAddress:Ljava/net/InetAddress;

    if-nez v0, :cond_20

    .line 1497
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->proxy:Ljava/net/Proxy;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->proxy:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v1, :cond_23

    .line 1498
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->proxy:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->hostAddress:Ljava/net/InetAddress;

    .line 1504
    :cond_20
    :goto_20
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->hostAddress:Ljava/net/InetAddress;

    return-object v0

    .line 1501
    :cond_23
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->hostAddress:Ljava/net/InetAddress;

    goto :goto_20
.end method

.method private getHostName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1512
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->hostName:Ljava/lang/String;

    if-nez v0, :cond_16

    .line 1514
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->proxy:Ljava/net/Proxy;

    if-eqz v0, :cond_19

    .line 1515
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->proxy:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->hostName:Ljava/lang/String;

    .line 1520
    :cond_16
    :goto_16
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->hostName:Ljava/lang/String;

    return-object v0

    .line 1517
    :cond_19
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->hostName:Ljava/lang/String;

    goto :goto_16
.end method

.method private getHostPort()I
    .registers 2

    .prologue
    .line 1476
    iget v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->hostPort:I

    if-gez v0, :cond_1e

    .line 1478
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->proxy:Ljava/net/Proxy;

    if-eqz v0, :cond_21

    .line 1479
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->proxy:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    iput v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->hostPort:I

    .line 1483
    :goto_16
    iget v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->hostPort:I

    if-gez v0, :cond_1e

    .line 1484
    iget v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->defaultPort:I

    iput v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->hostPort:I

    .line 1487
    :cond_1e
    iget v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->hostPort:I

    return v0

    .line 1481
    :cond_21
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getPort()I

    move-result v0

    iput v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->hostPort:I

    goto :goto_16
.end method

.method private getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "property"

    .prologue
    .line 1524
    new-instance v0, Lorg/apache/harmony/luni/util/PriviAction;

    invoke-direct {v0, p1}, Lorg/apache/harmony/luni/util/PriviAction;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private putToCache()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 875
    iget-boolean v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->useCaches:Z

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->responseCache:Ljava/net/ResponseCache;

    if-eqz v0, :cond_1e

    .line 876
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->responseCache:Ljava/net/ResponseCache;

    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->uri:Ljava/net/URI;

    invoke-virtual {v0, v1, p0}, Ljava/net/ResponseCache;->put(Ljava/net/URI;Ljava/net/URLConnection;)Ljava/net/CacheRequest;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->cacheRequest:Ljava/net/CacheRequest;

    .line 877
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->cacheRequest:Ljava/net/CacheRequest;

    if-eqz v0, :cond_1e

    .line 878
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->cacheRequest:Ljava/net/CacheRequest;

    invoke-virtual {v0}, Ljava/net/CacheRequest;->getBody()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->cacheOut:Ljava/io/OutputStream;

    .line 881
    :cond_1e
    return-void
.end method

.method private sendRequest()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 1223
    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->createRequest()[B

    move-result-object v0

    .line 1226
    .local v0, request:[B
    iget-boolean v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->connected:Z

    if-nez v1, :cond_c

    .line 1227
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->connect()V

    .line 1229
    :cond_c
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->cacheResponse:Ljava/net/CacheResponse;

    if-eqz v1, :cond_12

    move v1, v3

    .line 1244
    :goto_11
    return v1

    .line 1234
    :cond_12
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->socketOut:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1235
    iput-boolean v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->sentRequest:Z

    .line 1237
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->os:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$HttpOutputStream;

    if-eqz v1, :cond_30

    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->os:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$HttpOutputStream;

    invoke-virtual {v1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$HttpOutputStream;->isCached()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 1238
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->socketOut:Ljava/io/OutputStream;

    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->os:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$HttpOutputStream;

    invoke-virtual {v2}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$HttpOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 1240
    :cond_30
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->os:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$HttpOutputStream;

    if-eqz v1, :cond_3c

    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->os:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$HttpOutputStream;

    invoke-virtual {v1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$HttpOutputStream;->isCached()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 1241
    :cond_3c
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->readServerResponse()V

    move v1, v3

    .line 1242
    goto :goto_11

    .line 1244
    :cond_41
    const/4 v1, 0x0

    goto :goto_11
.end method

.method public static setDefaultRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "field"
    .parameter "value"

    .prologue
    .line 1422
    sget-object v0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->defaultReqHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;

    invoke-virtual {v0, p0, p1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1423
    return-void
.end method

.method private setProxy(Ljava/lang/String;)V
    .registers 7
    .parameter "proxy"

    .prologue
    .line 1693
    const/16 v3, 0x3a

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 1694
    .local v1, index:I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_10

    .line 1695
    iput-object p1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->proxyName:Ljava/lang/String;

    .line 1696
    iget v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->defaultPort:I

    iput v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->hostPort:I

    .line 1709
    :cond_f
    return-void

    .line 1698
    :cond_10
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->proxyName:Ljava/lang/String;

    .line 1699
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 1701
    .local v2, port:Ljava/lang/String;
    :try_start_1d
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->hostPort:I
    :try_end_23
    .catch Ljava/lang/NumberFormatException; {:try_start_1d .. :try_end_23} :catch_3a

    .line 1705
    iget v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->hostPort:I

    if-ltz v3, :cond_2e

    iget v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->hostPort:I

    const v4, 0xffff

    if-le v3, v4, :cond_f

    .line 1706
    :cond_2e
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "K00b0"

    invoke-static {v4}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1702
    :catch_3a
    move-exception v3

    move-object v0, v3

    .line 1703
    .local v0, e:Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "K00af"

    invoke-static {v4, v2}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "field"
    .parameter "value"

    .prologue
    .line 1462
    iget-boolean v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->connected:Z

    if-eqz v0, :cond_10

    .line 1463
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "K0092"

    invoke-static {v1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1465
    :cond_10
    if-nez p1, :cond_18

    .line 1466
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1468
    :cond_18
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->reqHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;

    invoke-virtual {v0, p1, p2}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1469
    return-void
.end method

.method public connect()V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v14, 0x0

    .line 757
    iget-boolean v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->connected:Z

    if-eqz v0, :cond_6

    .line 817
    :cond_5
    :goto_5
    return-void

    .line 760
    :cond_6
    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->getFromCache()Z

    move-result v0

    if-nez v0, :cond_5

    .line 769
    :try_start_c
    new-instance v0, Ljava/net/URI;

    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->url:Ljava/net/URL;

    invoke-virtual {v4}, Ljava/net/URL;->getPort()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->uri:Ljava/net/URI;
    :try_end_29
    .catch Ljava/net/URISyntaxException; {:try_start_c .. :try_end_29} :catch_53

    .line 781
    iput-object v14, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->connection:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;

    .line 783
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->proxy:Ljava/net/Proxy;

    if-eqz v0, :cond_5f

    .line 787
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->proxy:Ljava/net/Proxy;

    invoke-virtual {p0, v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->getHTTPConnection(Ljava/net/Proxy;)Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->connection:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;

    .line 810
    :cond_37
    :goto_37
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->connection:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;

    if-nez v0, :cond_41

    .line 812
    invoke-virtual {p0, v14}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->getHTTPConnection(Ljava/net/Proxy;)Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->connection:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;

    .line 814
    :cond_41
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->connection:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;

    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->getReadTimeout()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->setSoTimeout(I)V

    .line 815
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->connection:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;

    invoke-virtual {p0, v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->setUpTransportIO(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;)V

    .line 816
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->connected:Z

    goto :goto_5

    .line 776
    :catch_53
    move-exception v0

    move-object v9, v0

    .line 777
    .local v9, e1:Ljava/net/URISyntaxException;
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {v9}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 791
    .end local v9           #e1:Ljava/net/URISyntaxException;
    :cond_5f
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v13

    .line 792
    .local v13, selector:Ljava/net/ProxySelector;
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->uri:Ljava/net/URI;

    invoke-virtual {v13, v0}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object v11

    .line 793
    .local v11, proxyList:Ljava/util/List;,"Ljava/util/List<Ljava/net/Proxy;>;"
    if-eqz v11, :cond_37

    .line 794
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_6f
    :goto_6f
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/net/Proxy;

    .line 795
    .local v12, selectedProxy:Ljava/net/Proxy;
    invoke-virtual {v12}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v1, :cond_6f

    .line 800
    :try_start_83
    invoke-virtual {p0, v12}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->getHTTPConnection(Ljava/net/Proxy;)Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->connection:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;

    .line 801
    iput-object v12, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->proxy:Ljava/net/Proxy;
    :try_end_8b
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_8b} :catch_8c

    goto :goto_37

    .line 803
    :catch_8c
    move-exception v0

    move-object v8, v0

    .line 805
    .local v8, e:Ljava/io/IOException;
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->uri:Ljava/net/URI;

    invoke-virtual {v12}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v1

    invoke-virtual {v13, v0, v1, v8}, Ljava/net/ProxySelector;->connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V

    goto :goto_6f
.end method

.method public disconnect()V
    .registers 2

    .prologue
    .line 891
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->disconnect(Z)V

    .line 892
    return-void
.end method

.method protected doRequest()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1537
    iget-boolean v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->sentRequest:Z

    if-eqz v0, :cond_18

    .line 1540
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->resHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;

    if-nez v0, :cond_17

    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->os:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$HttpOutputStream;

    if-eqz v0, :cond_17

    .line 1541
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->os:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$HttpOutputStream;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$HttpOutputStream;->close()V

    .line 1542
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->readServerResponse()V

    .line 1543
    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->getContentStream()Ljava/io/InputStream;

    .line 1548
    :cond_17
    :goto_17
    return-void

    .line 1547
    :cond_18
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->doRequestInternal()V

    goto :goto_17
.end method

.method doRequestInternal()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x131

    const/4 v7, 0x0

    .line 1551
    const/4 v3, 0x0

    .line 1554
    .local v3, redirect:I
    :goto_4
    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->sendRequest()Z

    move-result v5

    if-nez v5, :cond_b

    .line 1653
    :goto_a
    return-void

    .line 1558
    :cond_b
    iget v5, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->responseCode:I

    const/16 v6, 0x197

    if-ne v5, v6, :cond_51

    .line 1559
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->usingProxy()Z

    move-result v5

    if-nez v5, :cond_23

    .line 1562
    new-instance v5, Ljava/io/IOException;

    const-string v6, "KA017"

    invoke-static {v6}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1566
    :cond_23
    iget-object v5, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->resHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;

    const-string v6, "Proxy-Authenticate"

    invoke-virtual {v5, v6}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1567
    .local v0, challenge:Ljava/lang/String;
    if-nez v0, :cond_39

    .line 1569
    new-instance v5, Ljava/io/IOException;

    const-string v6, "KA016"

    invoke-static {v6}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1573
    :cond_39
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->endRequest()V

    .line 1574
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->disconnect()V

    .line 1575
    iput-boolean v7, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->connected:Z

    .line 1576
    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->getAuthorizationCredentials(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1577
    .local v1, credentials:Ljava/lang/String;
    if-nez v1, :cond_4b

    .line 1652
    .end local v0           #challenge:Ljava/lang/String;
    .end local v1           #credentials:Ljava/lang/String;
    :cond_47
    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->getContentStream()Ljava/io/InputStream;

    goto :goto_a

    .line 1582
    .restart local v0       #challenge:Ljava/lang/String;
    .restart local v1       #credentials:Ljava/lang/String;
    :cond_4b
    const-string v5, "Proxy-Authorization"

    invoke-virtual {p0, v5, v1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 1587
    .end local v0           #challenge:Ljava/lang/String;
    .end local v1           #credentials:Ljava/lang/String;
    :cond_51
    iget v5, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->responseCode:I

    const/16 v6, 0x191

    if-ne v5, v6, :cond_81

    .line 1589
    iget-object v5, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->resHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;

    const-string v6, "WWW-Authenticate"

    invoke-virtual {v5, v6}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1590
    .restart local v0       #challenge:Ljava/lang/String;
    if-nez v0, :cond_6d

    .line 1592
    new-instance v5, Ljava/io/IOException;

    const-string v6, "KA018"

    invoke-static {v6}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1596
    :cond_6d
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->endRequest()V

    .line 1597
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->disconnect()V

    .line 1598
    iput-boolean v7, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->connected:Z

    .line 1599
    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->getAuthorizationCredentials(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1600
    .restart local v1       #credentials:Ljava/lang/String;
    if-eqz v1, :cond_47

    .line 1605
    const-string v5, "Authorization"

    invoke-virtual {p0, v5, v1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 1614
    .end local v0           #challenge:Ljava/lang/String;
    .end local v1           #credentials:Ljava/lang/String;
    :cond_81
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->getInstanceFollowRedirects()Z

    move-result v5

    if-eqz v5, :cond_47

    .line 1615
    iget v5, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->responseCode:I

    const/16 v6, 0x12c

    if-eq v5, v6, :cond_a3

    iget v5, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->responseCode:I

    const/16 v6, 0x12d

    if-eq v5, v6, :cond_a3

    iget v5, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->responseCode:I

    const/16 v6, 0x12e

    if-eq v5, v6, :cond_a3

    iget v5, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->responseCode:I

    const/16 v6, 0x12f

    if-eq v5, v6, :cond_a3

    iget v5, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->responseCode:I

    if-ne v5, v8, :cond_47

    :cond_a3
    iget-object v5, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->os:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$HttpOutputStream;

    if-nez v5, :cond_47

    .line 1621
    add-int/lit8 v3, v3, 0x1

    const/4 v5, 0x4

    if-le v3, v5, :cond_b8

    .line 1622
    new-instance v5, Ljava/net/ProtocolException;

    const-string v6, "K0093"

    invoke-static {v6}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1624
    :cond_b8
    const-string v5, "Location"

    invoke-virtual {p0, v5}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1625
    .local v2, location:Ljava/lang/String;
    if-eqz v2, :cond_47

    .line 1627
    iget v5, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->responseCode:I

    if-ne v5, v8, :cond_10b

    .line 1628
    const/4 v4, 0x0

    .line 1629
    .local v4, start:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->url:Ljava/net/URL;

    invoke-virtual {v6}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x3a

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f0

    .line 1630
    iget-object v5, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->url:Ljava/net/URL;

    invoke-virtual {v5}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v4, v5, 0x1

    .line 1632
    :cond_f0
    const-string v5, "//"

    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_fa

    .line 1633
    add-int/lit8 v4, v4, 0x2

    .line 1635
    :cond_fa
    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->setProxy(Ljava/lang/String;)V

    .line 1642
    .end local v4           #start:I
    :goto_101
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->endRequest()V

    .line 1643
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->disconnect()V

    .line 1644
    iput-boolean v7, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->connected:Z

    goto/16 :goto_4

    .line 1637
    :cond_10b
    new-instance v5, Ljava/net/URL;

    iget-object v6, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->url:Ljava/net/URL;

    invoke-direct {v5, v6, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    iput-object v5, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->url:Ljava/net/URL;

    .line 1638
    iget-object v5, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->url:Ljava/net/URL;

    invoke-virtual {v5}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->hostName:Ljava/lang/String;

    .line 1640
    const/4 v5, -0x1

    iput v5, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->hostPort:I

    goto :goto_101
.end method

.method protected endRequest()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 923
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->os:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$HttpOutputStream;

    if-eqz v0, :cond_9

    .line 924
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->os:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$HttpOutputStream;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$HttpOutputStream;->close()V

    .line 926
    :cond_9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->sentRequest:Z

    .line 927
    return-void
.end method

.method public getErrorStream()Ljava/io/InputStream;
    .registers 3

    .prologue
    .line 948
    iget-boolean v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->connected:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->method:Ljava/lang/String;

    const-string v1, "HEAD"

    if-eq v0, v1, :cond_13

    iget v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->responseCode:I

    const/16 v1, 0x190

    if-lt v0, v1, :cond_13

    .line 949
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->uis:Ljava/io/InputStream;

    .line 951
    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method protected getHTTPConnection(Ljava/net/Proxy;)Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;
    .registers 6
    .parameter "proxy"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 824
    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v1

    sget-object v2, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-ne v1, v2, :cond_1c

    .line 825
    :cond_a
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->proxy:Ljava/net/Proxy;

    .line 826
    invoke-static {}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnectionManager;->getDefault()Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnectionManager;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->uri:Ljava/net/URI;

    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->getConnectTimeout()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnectionManager;->getConnection(Ljava/net/URI;I)Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;

    move-result-object v0

    .line 830
    .local v0, connection:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;
    :goto_1b
    return-object v0

    .line 828
    .end local v0           #connection:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;
    :cond_1c
    invoke-static {}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnectionManager;->getDefault()Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnectionManager;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->uri:Ljava/net/URI;

    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->getConnectTimeout()I

    move-result v3

    invoke-virtual {v1, v2, p1, v3}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnectionManager;->getConnection(Ljava/net/URI;Ljava/net/Proxy;I)Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;

    move-result-object v0

    .restart local v0       #connection:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;
    goto :goto_1b
.end method

.method public getHeaderField(I)Ljava/lang/String;
    .registers 3
    .parameter "pos"

    .prologue
    .line 968
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_10

    .line 972
    :goto_3
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->resHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;

    if-nez v0, :cond_9

    .line 973
    const/4 v0, 0x0

    .line 975
    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->resHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;->get(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    .line 969
    :catch_10
    move-exception v0

    goto :goto_3
.end method

.method public getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "key"

    .prologue
    .line 995
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_10

    .line 999
    :goto_3
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->resHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;

    if-nez v0, :cond_9

    .line 1000
    const/4 v0, 0x0

    .line 1002
    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->resHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    .line 996
    :catch_10
    move-exception v0

    goto :goto_3
.end method

.method public getHeaderFieldKey(I)Ljava/lang/String;
    .registers 3
    .parameter "pos"

    .prologue
    .line 1008
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_10

    .line 1012
    :goto_3
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->resHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;

    if-nez v0, :cond_9

    .line 1013
    const/4 v0, 0x0

    .line 1015
    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->resHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;->getKey(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    .line 1009
    :catch_10
    move-exception v0

    goto :goto_3
.end method

.method public getHeaderFields()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1029
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_10

    .line 1033
    :goto_3
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->resHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;

    if-nez v0, :cond_9

    .line 1034
    const/4 v0, 0x0

    .line 1036
    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->resHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;->getFieldMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_8

    .line 1030
    :catch_10
    move-exception v0

    goto :goto_3
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1049
    iget-boolean v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->doInput:Z

    if-nez v0, :cond_10

    .line 1050
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "K008d"

    invoke-static {v1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1054
    :cond_10
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->connect()V

    .line 1055
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->doRequest()V

    .line 1063
    iget v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->responseCode:I

    const/16 v1, 0x190

    if-lt v0, v1, :cond_28

    .line 1064
    new-instance v0, Ljava/io/FileNotFoundException;

    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1067
    :cond_28
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->uis:Ljava/io/InputStream;

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const-string v6, "POST"

    .line 1101
    iget-boolean v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->doOutput:Z

    if-nez v3, :cond_13

    .line 1102
    new-instance v3, Ljava/net/ProtocolException;

    const-string v4, "K008e"

    invoke-static {v4}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1106
    :cond_13
    iget-boolean v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->sentRequest:Z

    if-eqz v3, :cond_23

    .line 1107
    new-instance v3, Ljava/net/ProtocolException;

    const-string v4, "K0090"

    invoke-static {v4}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1110
    :cond_23
    iget-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->os:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$HttpOutputStream;

    if-eqz v3, :cond_2a

    .line 1111
    iget-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->os:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$HttpOutputStream;

    .line 1155
    :goto_29
    return-object v3

    .line 1115
    :cond_2a
    iget-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->method:Ljava/lang/String;

    const-string v4, "GET"

    if-ne v3, v4, :cond_34

    .line 1116
    const-string v3, "POST"

    iput-object v6, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->method:Ljava/lang/String;

    .line 1120
    :cond_34
    iget-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->method:Ljava/lang/String;

    const-string v4, "PUT"

    if-eq v3, v4, :cond_4e

    iget-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->method:Ljava/lang/String;

    const-string v4, "POST"

    if-eq v3, v6, :cond_4e

    .line 1121
    new-instance v3, Ljava/net/ProtocolException;

    const-string v4, "K008f"

    iget-object v5, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->method:Ljava/lang/String;

    invoke-static {v4, v5}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1124
    :cond_4e
    const/4 v2, -0x1

    .line 1125
    .local v2, limit:I
    iget-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->reqHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;

    const-string v4, "Content-Length"

    invoke-virtual {v3, v4}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1126
    .local v0, contentLength:Ljava/lang/String;
    if-eqz v0, :cond_5d

    .line 1127
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1130
    :cond_5d
    iget-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->reqHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;

    const-string v4, "Transfer-Encoding"

    invoke-virtual {v3, v4}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1131
    .local v1, encoding:Ljava/lang/String;
    iget v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->httpVersion:I

    if-lez v3, :cond_7a

    if-eqz v1, :cond_7a

    .line 1132
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 1133
    const-string v3, "chunked"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7a

    .line 1134
    iput-boolean v5, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->sendChunked:Z

    .line 1135
    const/4 v2, -0x1

    .line 1139
    :cond_7a
    iget v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->chunkLength:I

    if-lez v3, :cond_81

    .line 1140
    iput-boolean v5, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->sendChunked:Z

    .line 1141
    const/4 v2, -0x1

    .line 1143
    :cond_81
    iget v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->fixedContentLength:I

    if-ltz v3, :cond_87

    .line 1144
    iget v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->fixedContentLength:I

    .line 1146
    :cond_87
    iget v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->httpVersion:I

    if-lez v3, :cond_8f

    iget-boolean v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->sendChunked:Z

    if-nez v3, :cond_91

    :cond_8f
    if-ltz v2, :cond_9e

    .line 1147
    :cond_91
    new-instance v3, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$HttpOutputStream;

    invoke-direct {v3, p0, v2}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$HttpOutputStream;-><init>(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;I)V

    iput-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->os:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$HttpOutputStream;

    .line 1148
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->doRequest()V

    .line 1149
    iget-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->os:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$HttpOutputStream;

    goto :goto_29

    .line 1151
    :cond_9e
    iget-boolean v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->connected:Z

    if-nez v3, :cond_a5

    .line 1153
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->connect()V

    .line 1155
    :cond_a5
    new-instance v3, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$HttpOutputStream;

    invoke-direct {v3, p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$HttpOutputStream;-><init>(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;)V

    iput-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->os:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$HttpOutputStream;

    goto/16 :goto_29
.end method

.method public getPermission()Ljava/security/Permission;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1161
    new-instance v0, Ljava/net/SocketPermission;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->getHostName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->getHostPort()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "connect, resolve"

    invoke-direct {v0, v1, v2}, Ljava/net/SocketPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getRequestProperties()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1041
    iget-boolean v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->connected:Z

    if-eqz v0, :cond_10

    .line 1042
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "K0091"

    invoke-static {v1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1044
    :cond_10
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->reqHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;->getFieldMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "field"

    .prologue
    .line 1167
    if-nez p1, :cond_4

    .line 1168
    const/4 v0, 0x0

    .line 1170
    :goto_3
    return-object v0

    :cond_4
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->reqHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public getResponseCode()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 1275
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->connect()V

    .line 1276
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->doRequest()V

    .line 1277
    iget v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->responseCode:I

    if-eq v3, v4, :cond_e

    .line 1278
    iget v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->responseCode:I

    .line 1300
    :goto_d
    return v3

    .line 1280
    :cond_e
    iget-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->resHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;

    invoke-virtual {v3}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;->getStatusLine()Ljava/lang/String;

    move-result-object v2

    .line 1281
    .local v2, response:Ljava/lang/String;
    if-eqz v2, :cond_1e

    const-string v3, "HTTP/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_20

    :cond_1e
    move v3, v4

    .line 1282
    goto :goto_d

    .line 1284
    :cond_20
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 1285
    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v1, v3, 0x1

    .line 1286
    .local v1, mark:I
    if-nez v1, :cond_30

    move v3, v4

    .line 1287
    goto :goto_d

    .line 1289
    :cond_30
    const/4 v3, 0x2

    sub-int v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x31

    if-eq v3, v4, :cond_3e

    .line 1290
    const/4 v3, 0x0

    iput v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->httpVersion:I

    .line 1292
    :cond_3e
    add-int/lit8 v0, v1, 0x3

    .line 1293
    .local v0, last:I
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-le v0, v3, :cond_4a

    .line 1294
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    .line 1296
    :cond_4a
    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->responseCode:I

    .line 1297
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v3, v4, :cond_64

    .line 1298
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->responseMessage:Ljava/lang/String;

    .line 1300
    :cond_64
    iget v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->responseCode:I

    goto :goto_d
.end method

.method readHeaders()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1306
    :goto_0
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->readln()Ljava/lang/String;

    move-result-object v1

    .local v1, line:Ljava/lang/String;
    if-eqz v1, :cond_36

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_36

    .line 1309
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .local v0, idx:I
    if-gez v0, :cond_21

    .line 1310
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->resHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;

    const-string v3, ""

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;->add(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1312
    :cond_21
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->resHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;->add(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1316
    .end local v0           #idx:I
    :cond_36
    return-void
.end method

.method readServerResponse()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x64

    .line 1248
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->socketOut:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 1250
    :cond_7
    const/4 v1, -0x1

    iput v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->responseCode:I

    .line 1251
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->responseMessage:Ljava/lang/String;

    .line 1252
    new-instance v1, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;

    invoke-direct {v1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;-><init>()V

    iput-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->resHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;

    .line 1253
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->readln()Ljava/lang/String;

    move-result-object v0

    .line 1255
    .local v0, line:Ljava/lang/String;
    if-eqz v0, :cond_26

    .line 1256
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->resHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;->setStatusLine(Ljava/lang/String;)V

    .line 1257
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->readHeaders()V

    .line 1259
    :cond_26
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->getResponseCode()I

    move-result v1

    if-eq v1, v3, :cond_7

    .line 1261
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->method:Ljava/lang/String;

    const-string v2, "HEAD"

    if-eq v1, v2, :cond_48

    iget v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->responseCode:I

    if-lt v1, v3, :cond_3c

    iget v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->responseCode:I

    const/16 v2, 0xc8

    if-lt v1, v2, :cond_48

    :cond_3c
    iget v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->responseCode:I

    const/16 v2, 0xcc

    if-eq v1, v2, :cond_48

    iget v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->responseCode:I

    const/16 v2, 0x130

    if-ne v1, v2, :cond_53

    .line 1264
    :cond_48
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->disconnect()V

    .line 1265
    new-instance v1, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$LimitedInputStream;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$LimitedInputStream;-><init>(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;I)V

    iput-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->uis:Ljava/io/InputStream;

    .line 1267
    :cond_53
    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->putToCache()V

    .line 1268
    return-void
.end method

.method readln()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0xd

    .line 1179
    const/4 v1, 0x0

    .line 1180
    .local v1, lastCr:Z
    new-instance v2, Ljava/lang/StringBuffer;

    const/16 v3, 0x50

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1181
    .local v2, result:Ljava/lang/StringBuffer;
    iget-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->is:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 1182
    .local v0, c:I
    if-gez v0, :cond_14

    .line 1183
    const/4 v3, 0x0

    .line 1200
    :goto_13
    return-object v3

    .line 1185
    :cond_14
    const/16 v3, 0xa

    if-eq v0, v3, :cond_29

    .line 1186
    if-eqz v1, :cond_1e

    .line 1187
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1188
    const/4 v1, 0x0

    .line 1190
    :cond_1e
    if-ne v0, v4, :cond_2e

    .line 1191
    const/4 v1, 0x1

    .line 1195
    :goto_21
    iget-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->is:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 1196
    if-gez v0, :cond_14

    .line 1200
    :cond_29
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_13

    .line 1193
    :cond_2e
    int-to-char v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_21
.end method

.method protected requestString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1204
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->usingProxy()Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->proxyName:Ljava/lang/String;

    if-eqz v1, :cond_11

    .line 1205
    :cond_a
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1211
    :goto_10
    return-object v1

    .line 1207
    :cond_11
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    .line 1208
    .local v0, file:Ljava/lang/String;
    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_21

    .line 1209
    :cond_1f
    const-string v0, "/"

    :cond_21
    move-object v1, v0

    .line 1211
    goto :goto_10
.end method

.method public setIfModifiedSince(J)V
    .registers 7
    .parameter "newValue"

    .prologue
    .line 1440
    invoke-super {p0, p1, p2}, Ljava/net/HttpURLConnection;->setIfModifiedSince(J)V

    .line 1442
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "E, dd MMM yyyy HH:mm:ss \'GMT\'"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1444
    .local v1, sdf:Ljava/text/SimpleDateFormat;
    const-string v2, "GMT"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1445
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 1446
    .local v0, date:Ljava/lang/String;
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->reqHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;

    const-string v3, "If-Modified-Since"

    invoke-virtual {v2, v3, v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1447
    return-void
.end method

.method public setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "field"
    .parameter "newValue"

    .prologue
    .line 1451
    iget-boolean v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->connected:Z

    if-eqz v0, :cond_10

    .line 1452
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "K0092"

    invoke-static {v1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1454
    :cond_10
    if-nez p1, :cond_18

    .line 1455
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1457
    :cond_18
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->reqHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;

    invoke-virtual {v0, p1, p2}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/Header;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1458
    return-void
.end method

.method protected setUpTransportIO(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;)V
    .registers 3
    .parameter "connection"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 840
    invoke-virtual {p1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->socketOut:Ljava/io/OutputStream;

    .line 841
    invoke-virtual {p1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->is:Ljava/io/InputStream;

    .line 842
    return-void
.end method

.method public usingProxy()Z
    .registers 3

    .prologue
    .line 1529
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->proxy:Ljava/net/Proxy;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->proxy:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v1, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method
