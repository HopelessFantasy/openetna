.class public final Landroid/webkit/gears/ApacheHttpRequestAndroid;
.super Ljava/lang/Object;
.source "ApacheHttpRequestAndroid.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/gears/ApacheHttpRequestAndroid$StreamEntity;,
        Landroid/webkit/gears/ApacheHttpRequestAndroid$DataPacket;,
        Landroid/webkit/gears/ApacheHttpRequestAndroid$SignalConsumed;,
        Landroid/webkit/gears/ApacheHttpRequestAndroid$Buffer;,
        Landroid/webkit/gears/ApacheHttpRequestAndroid$Connection;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x1000

.field private static final DEFAULT_MIME_TYPE:Ljava/lang/String; = "text/plain"

.field public static final HEADERS_MAP_INDEX_KEY:I = 0x0

.field public static final HEADERS_MAP_INDEX_VALUE:I = 0x1

.field private static final HTTP_LINE_ENDING:Ljava/lang/String; = "\r\n"

.field public static final KEY_CONTENT_LENGTH:Ljava/lang/String; = "Content-Length"

.field public static final KEY_CONTENT_TYPE:Ljava/lang/String; = "Content-Type"

.field public static final KEY_ETAG:Ljava/lang/String; = "ETag"

.field public static final KEY_EXPIRES:Ljava/lang/String; = "Expires"

.field public static final KEY_LAST_MODIFIED:Ljava/lang/String; = "Last-Modified"

.field public static final KEY_LOCATION:Ljava/lang/String; = "Location"

.field private static final LOGV_ENABLED:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "Gears-J"


# instance fields
.field private mBodyInputStream:Ljava/io/InputStream;

.field private mBridgeThread:Ljava/lang/Thread;

.field private mBuffer:Landroid/webkit/gears/ApacheHttpRequestAndroid$Buffer;

.field private mCacheResult:Landroid/webkit/CacheManager$CacheResult;

.field private mCacheResultUrl:Ljava/lang/String;

.field private mClient:Lorg/apache/http/impl/client/AbstractHttpClient;

.field private mConnectionFailed:Z

.field private mConnectionFailedLock:Ljava/util/concurrent/locks/Lock;

.field private mConnectionFinished:Z

.field private mContentLength:J

.field private mHttpThread:Ljava/lang/Thread;

.field private mHttpThreadLock:Ljava/util/concurrent/locks/Lock;

.field private mMethod:Lorg/apache/http/client/methods/HttpRequestBase;

.field private mPostEntity:Landroid/webkit/gears/ApacheHttpRequestAndroid$StreamEntity;

.field private mRequestHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mResponse:Lorg/apache/http/HttpResponse;

.field private mResponseHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mResponseLine:Ljava/lang/String;

.field private mSignal:Landroid/webkit/gears/ApacheHttpRequestAndroid$SignalConsumed;

.field private mStreamingReady:Ljava/util/concurrent/locks/Condition;

.field private mStreamingReadyLock:Ljava/util/concurrent/locks/Lock;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid;->mRequestHeaders:Ljava/util/Map;

    .line 121
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid;->mResponseHeaders:Ljava/util/Map;

    .line 143
    iput-object v2, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid;->mPostEntity:Landroid/webkit/gears/ApacheHttpRequestAndroid$StreamEntity;

    .line 148
    iput-object v2, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid;->mHttpThread:Ljava/lang/Thread;

    .line 150
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid;->mHttpThreadLock:Ljava/util/concurrent/locks/Lock;

    .line 152
    iput-boolean v1, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid;->mConnectionFinished:Z

    .line 154
    iput-boolean v1, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid;->mConnectionFailed:Z

    .line 156
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid;->mConnectionFailedLock:Ljava/util/concurrent/locks/Lock;

    .line 159
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid;->mStreamingReadyLock:Ljava/util/concurrent/locks/Lock;

    .line 161
    iget-object v0, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid;->mStreamingReadyLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid;->mStreamingReady:Ljava/util/concurrent/locks/Condition;

    .line 164
    new-instance v0, Landroid/webkit/gears/ApacheHttpRequestAndroid$Buffer;

    invoke-direct {v0, p0}, Landroid/webkit/gears/ApacheHttpRequestAndroid$Buffer;-><init>(Landroid/webkit/gears/ApacheHttpRequestAndroid;)V

    iput-object v0, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid;->mBuffer:Landroid/webkit/gears/ApacheHttpRequestAndroid$Buffer;

    .line 166
    new-instance v0, Landroid/webkit/gears/ApacheHttpRequestAndroid$SignalConsumed;

    invoke-direct {v0, p0}, Landroid/webkit/gears/ApacheHttpRequestAndroid$SignalConsumed;-><init>(Landroid/webkit/gears/ApacheHttpRequestAndroid;)V

    iput-object v0, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid;->mSignal:Landroid/webkit/gears/ApacheHttpRequestAndroid$SignalConsumed;

    .line 329
    return-void
.end method

.method static synthetic access$000(Landroid/webkit/gears/ApacheHttpRequestAndroid;)Lorg/apache/http/HttpResponse;
    .registers 2
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid;->mResponse:Lorg/apache/http/HttpResponse;

    return-object v0
.end method

.method static synthetic access$002(Landroid/webkit/gears/ApacheHttpRequestAndroid;Lorg/apache/http/HttpResponse;)Lorg/apache/http/HttpResponse;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput-object p1, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid;->mResponse:Lorg/apache/http/HttpResponse;

    return-object p1
.end method

.method static synthetic access$100(Landroid/webkit/gears/ApacheHttpRequestAndroid;)Lorg/apache/http/client/methods/HttpRequestBase;
    .registers 2
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid;->mMethod:Lorg/apache/http/client/methods/HttpRequestBase;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/webkit/gears/ApacheHttpRequestAndroid;)Landroid/webkit/gears/ApacheHttpRequestAndroid$Buffer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid;->mBuffer:Landroid/webkit/gears/ApacheHttpRequestAndroid$Buffer;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/webkit/gears/ApacheHttpRequestAndroid;)Landroid/webkit/gears/ApacheHttpRequestAndroid$SignalConsumed;
    .registers 2
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid;->mSignal:Landroid/webkit/gears/ApacheHttpRequestAndroid$SignalConsumed;

    return-object v0
.end method

.method static synthetic access$200(Landroid/webkit/gears/ApacheHttpRequestAndroid;)Lorg/apache/http/impl/client/AbstractHttpClient;
    .registers 2
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid;->mClient:Lorg/apache/http/impl/client/AbstractHttpClient;

    return-object v0
.end method

.method static synthetic access$302(Landroid/webkit/gears/ApacheHttpRequestAndroid;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput-object p1, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid;->mResponseLine:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Landroid/webkit/gears/ApacheHttpRequestAndroid;)Ljava/util/concurrent/locks/Lock;
    .registers 2
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid;->mConnectionFailedLock:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method static synthetic access$500(Landroid/webkit/gears/ApacheHttpRequestAndroid;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 87
    iget-boolean v0, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid;->mConnectionFailed:Z

    return v0
.end method

.method static synthetic access$502(Landroid/webkit/gears/ApacheHttpRequestAndroid;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput-boolean p1, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid;->mConnectionFailed:Z

    return p1
.end method

.method static synthetic access$600(Landroid/webkit/gears/ApacheHttpRequestAndroid;)Landroid/webkit/gears/ApacheHttpRequestAndroid$StreamEntity;
    .registers 2
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid;->mPostEntity:Landroid/webkit/gears/ApacheHttpRequestAndroid$StreamEntity;

    return-object v0
.end method

.method static synthetic access$700(Landroid/webkit/gears/ApacheHttpRequestAndroid;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 87
    iget-wide v0, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid;->mContentLength:J

    return-wide v0
.end method

.method static synthetic access$800(Landroid/webkit/gears/ApacheHttpRequestAndroid;)Ljava/util/concurrent/locks/Lock;
    .registers 2
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid;->mStreamingReadyLock:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method static synthetic access$900(Landroid/webkit/gears/ApacheHttpRequestAndroid;)Ljava/util/concurrent/locks/Condition;
    .registers 2
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid;->mStreamingReady:Ljava/util/concurrent/locks/Condition;

    return-object v0
.end method

.method private applyRequestHeaders()V
    .registers 6

    .prologue
    .line 645
    iget-object v2, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid;->mMethod:Lorg/apache/http/client/methods/HttpRequestBase;

    if-nez v2, :cond_5

    .line 658
    :cond_4
    return-void

    .line 647
    :cond_5
    iget-object v2, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid;->mRequestHeaders:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 648
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<[Ljava/lang/String;>;"
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 650
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 655
    .local v0, entry:[Ljava/lang/String;
    iget-object v2, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid;->mMethod:Lorg/apache/http/client/methods/HttpRequestBase;

    const/4 v3, 0x0

    aget-object v3, v0, v3

    const/4 v4, 0x1

    aget-object v4, v0, v4

    invoke-virtual {v2, v3, v4}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f
.end method

.method public static getCookieForUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "url"

    .prologue
    .line 736
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setCookieForUrl(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "url"
    .parameter "cookie"

    .prologue
    .line 748
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    return-void
.end method

.method private setResponseHeader(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "name"
    .parameter "value"

    .prologue
    .line 722
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 723
    .local v0, mapValue:[Ljava/lang/String;
    iget-object v1, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid;->mResponseHeaders:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 724
    return-void
.end method

.method private synthesizeHeadersFromCacheResult(Landroid/webkit/CacheManager$CacheResult;)V
    .registers 16
    .parameter "cacheResult"

    .prologue
    const/16 v13, 0x12c

    .line 847
    invoke-virtual {p1}, Landroid/webkit/CacheManager$CacheResult;->getHttpStatusCode()I

    move-result v10

    .line 850
    .local v10, statusCode:I
    const/16 v12, 0xc8

    if-lt v10, v12, :cond_ac

    if-ge v10, v13, :cond_ac

    .line 851
    const-string v11, "OK"

    .line 858
    .local v11, statusMessage:Ljava/lang/String;
    :goto_e
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "HTTP/1.1 "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid;->mResponseLine:Ljava/lang/String;

    .line 863
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    iput-object v12, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid;->mResponseHeaders:Ljava/util/Map;

    .line 864
    invoke-virtual {p1}, Landroid/webkit/CacheManager$CacheResult;->getContentLength()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 865
    .local v0, contentLength:Ljava/lang/String;
    const-string v12, "Content-Length"

    invoke-direct {p0, v12, v0}, Landroid/webkit/gears/ApacheHttpRequestAndroid;->setResponseHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 866
    invoke-virtual {p1}, Landroid/webkit/CacheManager$CacheResult;->getExpires()J

    move-result-wide v4

    .line 867
    .local v4, expires:J
    const-wide/16 v12, 0x0

    cmp-long v12, v4, v12

    if-ltz v12, :cond_59

    .line 870
    new-instance v12, Ljava/util/Date;

    invoke-direct {v12, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-static {v12}, Lorg/apache/http/impl/cookie/DateUtils;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 871
    .local v6, expiresString:Ljava/lang/String;
    const-string v12, "Expires"

    invoke-direct {p0, v12, v6}, Landroid/webkit/gears/ApacheHttpRequestAndroid;->setResponseHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    .end local v6           #expiresString:Ljava/lang/String;
    :cond_59
    invoke-virtual {p1}, Landroid/webkit/CacheManager$CacheResult;->getLastModified()Ljava/lang/String;

    move-result-object v7

    .line 874
    .local v7, lastModified:Ljava/lang/String;
    if-eqz v7, :cond_64

    .line 877
    const-string v12, "Last-Modified"

    invoke-direct {p0, v12, v7}, Landroid/webkit/gears/ApacheHttpRequestAndroid;->setResponseHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 879
    :cond_64
    invoke-virtual {p1}, Landroid/webkit/CacheManager$CacheResult;->getETag()Ljava/lang/String;

    move-result-object v2

    .line 880
    .local v2, eTag:Ljava/lang/String;
    if-eqz v2, :cond_6f

    .line 882
    const-string v12, "ETag"

    invoke-direct {p0, v12, v2}, Landroid/webkit/gears/ApacheHttpRequestAndroid;->setResponseHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 884
    :cond_6f
    invoke-virtual {p1}, Landroid/webkit/CacheManager$CacheResult;->getLocation()Ljava/lang/String;

    move-result-object v8

    .line 885
    .local v8, location:Ljava/lang/String;
    if-eqz v8, :cond_7a

    .line 887
    const-string v12, "Location"

    invoke-direct {p0, v12, v8}, Landroid/webkit/gears/ApacheHttpRequestAndroid;->setResponseHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 889
    :cond_7a
    invoke-virtual {p1}, Landroid/webkit/CacheManager$CacheResult;->getMimeType()Ljava/lang/String;

    move-result-object v9

    .line 890
    .local v9, mimeType:Ljava/lang/String;
    if-nez v9, :cond_82

    .line 895
    const-string v9, "text/plain"

    .line 897
    :cond_82
    invoke-virtual {p1}, Landroid/webkit/CacheManager$CacheResult;->getEncoding()Ljava/lang/String;

    move-result-object v3

    .line 899
    .local v3, encoding:Ljava/lang/String;
    move-object v1, v9

    .line 900
    .local v1, contentType:Ljava/lang/String;
    if-eqz v3, :cond_a6

    .line 901
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_a6

    .line 902
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "; charset="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 905
    :cond_a6
    const-string v12, "Content-Type"

    invoke-direct {p0, v12, v1}, Landroid/webkit/gears/ApacheHttpRequestAndroid;->setResponseHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 906
    return-void

    .line 852
    .end local v0           #contentLength:Ljava/lang/String;
    .end local v1           #contentType:Ljava/lang/String;
    .end local v2           #eTag:Ljava/lang/String;
    .end local v3           #encoding:Ljava/lang/String;
    .end local v4           #expires:J
    .end local v7           #lastModified:Ljava/lang/String;
    .end local v8           #location:Ljava/lang/String;
    .end local v9           #mimeType:Ljava/lang/String;
    .end local v11           #statusMessage:Ljava/lang/String;
    :cond_ac
    if-lt v10, v13, :cond_b6

    const/16 v12, 0x190

    if-ge v10, v12, :cond_b6

    .line 853
    const-string v11, "MOVED"

    .restart local v11       #statusMessage:Ljava/lang/String;
    goto/16 :goto_e

    .line 855
    .end local v11           #statusMessage:Ljava/lang/String;
    :cond_b6
    const-string v11, "UNAVAILABLE"

    .restart local v11       #statusMessage:Ljava/lang/String;
    goto/16 :goto_e
.end method

.method private waitUntilConnectionFinished()V
    .registers 3

    .prologue
    .line 557
    iget-boolean v0, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid;->mConnectionFinished:Z

    if-nez v0, :cond_10

    .line 558
    iget-object v0, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid;->mHttpThread:Ljava/lang/Thread;

    if-eqz v0, :cond_11

    .line 560
    :try_start_8
    iget-object v0, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid;->mHttpThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    .line 561
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid;->mConnectionFinished:Z
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_10} :catch_19

    .line 575
    :cond_10
    :goto_10
    return-void

    .line 571
    :cond_11
    const-string v0, "Gears-J"

    const-string v1, ">>> Trying to join on mHttpThread when it does not exist!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 565
    :catch_19
    move-exception v0

    goto :goto_10
.end method


# virtual methods
.method public declared-synchronized abort()V
    .registers 2

    .prologue
    .line 1013
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid;->mMethod:Lorg/apache/http/client/methods/HttpRequestBase;

    if-eqz v0, :cond_a

    .line 1014
    iget-object v0, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid;->mMethod:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 1016
    :cond_a
    monitor-exit p0

    return-void

    .line 1013
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized appendCacheResult([BI)Z
    .registers 7
    .parameter "data"
    .parameter "bytes"

    .prologue
    const/4 v3, 0x0

    .line 963
    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid;->mCacheResult:Landroid/webkit/CacheManager$CacheResult;
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_19

    if-nez v1, :cond_9

    move v1, v3

    .line 978
    :goto_7
    monitor-exit p0

    return v1

    .line 971
    :cond_9
    :try_start_9
    iget-object v1, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid;->mCacheResult:Landroid/webkit/CacheManager$CacheResult;

    invoke-virtual {v1}, Landroid/webkit/CacheManager$CacheResult;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, p2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_19
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_13} :catch_15

    .line 978
    const/4 v1, 0x1

    goto :goto_7

    .line 972
    :catch_15
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/io/IOException;
    move v1, v3

    .line 976
    goto :goto_7

    .line 963
    .end local v0           #ex:Ljava/io/IOException;
    :catchall_19
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized connectToRemote()Z
    .registers 4

    .prologue
    .line 527
    monitor-enter p0

    const/4 v0, 0x0

    .line 528
    .local v0, ret:Z
    :try_start_2
    invoke-direct {p0}, Landroid/webkit/gears/ApacheHttpRequestAndroid;->applyRequestHeaders()V

    .line 529
    iget-object v1, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid;->mConnectionFailedLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 530
    iget-boolean v1, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid;->mConnectionFailed:Z

    if-nez v1, :cond_1f

    .line 531
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Landroid/webkit/gears/ApacheHttpRequestAndroid$Connection;

    invoke-direct {v2, p0}, Landroid/webkit/gears/ApacheHttpRequestAndroid$Connection;-><init>(Landroid/webkit/gears/ApacheHttpRequestAndroid;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid;->mHttpThread:Ljava/lang/Thread;

    .line 532
    iget-object v1, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid;->mHttpThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 534
    :cond_1f
    iget-boolean v0, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid;->mConnectionFailed:Z

    .line 535
    iget-object v1, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid;->mConnectionFailedLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_26
    .catchall {:try_start_2 .. :try_end_26} :catchall_2d

    .line 536
    if-nez v0, :cond_2b

    const/4 v1, 0x1

    :goto_29
    monitor-exit p0

    return v1

    :cond_2b
    const/4 v1, 0x0

    goto :goto_29

    .line 527
    :catchall_2d
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized createCacheResult(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z
    .registers 14
    .parameter "url"
    .parameter "responseCode"
    .parameter "mimeType"
    .parameter "encoding"

    .prologue
    const/4 v8, 0x1

    .line 923
    monitor-enter p0

    :try_start_2
    new-instance v1, Landroid/net/http/Headers;

    invoke-direct {v1}, Landroid/net/http/Headers;-><init>()V

    .line 924
    .local v1, cacheHeaders:Landroid/net/http/Headers;
    iget-object v5, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid;->mResponseHeaders:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 926
    .local v3, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;[Ljava/lang/String;>;>;"
    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_56

    .line 927
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 929
    .local v2, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;[Ljava/lang/String;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    const/4 v7, 0x1

    aget-object v5, v5, v7

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 931
    .local v4, keyValue:Ljava/lang/String;
    new-instance v0, Lorg/apache/http/util/CharArrayBuffer;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    invoke-direct {v0, v5}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 932
    .local v0, buffer:Lorg/apache/http/util/CharArrayBuffer;
    invoke-virtual {v0, v4}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 934
    invoke-virtual {v1, v0}, Landroid/net/http/Headers;->parseHeader(Lorg/apache/http/util/CharArrayBuffer;)V
    :try_end_52
    .catchall {:try_start_2 .. :try_end_52} :catchall_53

    goto :goto_11

    .line 923
    .end local v0           #buffer:Lorg/apache/http/util/CharArrayBuffer;
    .end local v1           #cacheHeaders:Landroid/net/http/Headers;
    .end local v2           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;[Ljava/lang/String;>;"
    .end local v3           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;[Ljava/lang/String;>;>;"
    .end local v4           #keyValue:Ljava/lang/String;
    :catchall_53
    move-exception v5

    monitor-exit p0

    throw v5

    .line 936
    .restart local v1       #cacheHeaders:Landroid/net/http/Headers;
    .restart local v3       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;[Ljava/lang/String;>;>;"
    :cond_56
    const/4 v5, 0x1

    :try_start_57
    invoke-static {p1, p2, v1, p3, v5}, Landroid/webkit/CacheManager;->createCacheFile(Ljava/lang/String;ILandroid/net/http/Headers;Ljava/lang/String;Z)Landroid/webkit/CacheManager$CacheResult;

    move-result-object v5

    iput-object v5, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid;->mCacheResult:Landroid/webkit/CacheManager$CacheResult;

    .line 938
    iget-object v5, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid;->mCacheResult:Landroid/webkit/CacheManager$CacheResult;

    if-eqz v5, :cond_6b

    .line 942
    iget-object v5, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid;->mCacheResult:Landroid/webkit/CacheManager$CacheResult;

    invoke-virtual {v5, p4}, Landroid/webkit/CacheManager$CacheResult;->setEncoding(Ljava/lang/String;)V

    .line 943
    iput-object p1, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid;->mCacheResultUrl:Ljava/lang/String;
    :try_end_68
    .catchall {:try_start_57 .. :try_end_68} :catchall_53

    move v5, v8

    .line 949
    :goto_69
    monitor-exit p0

    return v5

    :cond_6b
    const/4 v5, 0x0

    goto :goto_69
.end method

.method public declared-synchronized getAllResponseHeaders()Ljava/lang/String;
    .registers 5

    .prologue
    const-string v3, "\r\n"

    .line 690
    monitor-enter p0

    :try_start_3
    iget-object v3, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid;->mResponseHeaders:Ljava/util/Map;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_3c

    if-nez v3, :cond_a

    .line 695
    const/4 v3, 0x0

    .line 708
    :goto_8
    monitor-exit p0

    return-object v3

    .line 697
    :cond_a
    :try_start_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 698
    .local v2, result:Ljava/lang/StringBuilder;
    iget-object v3, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid;->mResponseHeaders:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 699
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<[Ljava/lang/String;>;"
    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 700
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 702
    .local v0, entry:[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 703
    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 704
    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 705
    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3b
    .catchall {:try_start_a .. :try_end_3b} :catchall_3c

    goto :goto_19

    .line 690
    .end local v0           #entry:[Ljava/lang/String;
    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<[Ljava/lang/String;>;"
    .end local v2           #result:Ljava/lang/StringBuilder;
    :catchall_3c
    move-exception v3

    monitor-exit p0

    throw v3

    .line 707
    .restart local v1       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<[Ljava/lang/String;>;"
    .restart local v2       #result:Ljava/lang/StringBuilder;
    :cond_3f
    :try_start_3f
    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 708
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_47
    .catchall {:try_start_3f .. :try_end_47} :catchall_3c

    move-result-object v3

    goto :goto_8
.end method

.method public declared-synchronized getRequestHeader(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "name"

    .prologue
    .line 636
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid;->mRequestHeaders:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 637
    .local v0, value:[Ljava/lang/String;
    if-eqz v0, :cond_14

    .line 638
    const/4 v1, 0x1

    aget-object v1, v0, v1
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_16

    .line 640
    :goto_12
    monitor-exit p0

    return-object v1

    :cond_14
    const/4 v1, 0x0

    goto :goto_12

    .line 636
    .end local v0           #value:[Ljava/lang/String;
    :catchall_16
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getResponseHeader(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "name"

    .prologue
    const/4 v3, 0x0

    .line 667
    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid;->mResponseHeaders:Ljava/util/Map;

    if-eqz v1, :cond_1b

    .line 668
    iget-object v1, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid;->mResponseHeaders:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 669
    .local v0, value:[Ljava/lang/String;
    if-eqz v0, :cond_19

    .line 670
    const/4 v1, 0x1

    aget-object v1, v0, v1
    :try_end_17
    .catchall {:try_start_2 .. :try_end_17} :catchall_1d

    .line 679
    .end local v0           #value:[Ljava/lang/String;
    :goto_17
    monitor-exit p0

    return-object v1

    .restart local v0       #value:[Ljava/lang/String;
    :cond_19
    move-object v1, v3

    .line 672
    goto :goto_17

    .end local v0           #value:[Ljava/lang/String;
    :cond_1b
    move-object v1, v3

    .line 679
    goto :goto_17

    .line 667
    :catchall_1d
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getResponseLine()Ljava/lang/String;
    .registers 2

    .prologue
    .line 545
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid;->mResponseLine:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized initChildThread()V
    .registers 2

    .prologue
    .line 453
    monitor-enter p0

    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid;->mBridgeThread:Ljava/lang/Thread;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 454
    monitor-exit p0

    return-void

    .line 453
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized interrupt()V
    .registers 2

    .prologue
    .line 1026
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid;->mConnectionFailedLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1027
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid;->mConnectionFailed:Z

    .line 1028
    iget-object v0, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid;->mConnectionFailedLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1029
    iget-object v0, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid;->mMethod:Lorg/apache/http/client/methods/HttpRequestBase;

    if-eqz v0, :cond_17

    .line 1030
    iget-object v0, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid;->mMethod:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    .line 1032
    :cond_17
    iget-object v0, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid;->mHttpThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1e

    .line 1033
    invoke-direct {p0}, Landroid/webkit/gears/ApacheHttpRequestAndroid;->waitUntilConnectionFinished()V
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    .line 1035
    :cond_1e
    monitor-exit p0

    return-void

    .line 1026
    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized open(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9
    .parameter "method"
    .parameter "url"

    .prologue
    const/4 v5, 0x0

    .line 476
    monitor-enter p0

    :try_start_2
    iget-boolean v1, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid;->mConnectionFailed:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_70

    if-eqz v1, :cond_9

    move v1, v5

    .line 515
    :goto_7
    monitor-exit p0

    return v1

    .line 480
    :cond_9
    :try_start_9
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    iput-object v1, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid;->mClient:Lorg/apache/http/impl/client/AbstractHttpClient;

    .line 481
    iget-object v1, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid;->mClient:Lorg/apache/http/impl/client/AbstractHttpClient;

    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;-><init>(IZ)V

    invoke-virtual {v1, v2}, Lorg/apache/http/impl/client/AbstractHttpClient;->setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V

    .line 483
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid;->mBodyInputStream:Ljava/io/InputStream;

    .line 484
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid;->mResponseLine:Ljava/lang/String;

    .line 485
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid;->mResponseHeaders:Ljava/util/Map;

    .line 486
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid;->mPostEntity:Landroid/webkit/gears/ApacheHttpRequestAndroid$StreamEntity;

    .line 487
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid;->mHttpThread:Ljava/lang/Thread;

    .line 488
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid;->mConnectionFailed:Z

    .line 489
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid;->mConnectionFinished:Z

    .line 493
    const-string v1, "GET"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 494
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, p2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid;->mMethod:Lorg/apache/http/client/methods/HttpRequestBase;

    .line 511
    :goto_40
    iget-object v1, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid;->mClient:Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/AbstractHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    .line 513
    .local v0, params:Lorg/apache/http/params/HttpParams;
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    .line 514
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    .line 515
    const/4 v1, 0x1

    goto :goto_7

    .line 495
    .end local v0           #params:Lorg/apache/http/params/HttpParams;
    :cond_50
    const-string v1, "POST"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_73

    .line 496
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v1, p2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid;->mMethod:Lorg/apache/http/client/methods/HttpRequestBase;

    .line 497
    new-instance v1, Landroid/webkit/gears/ApacheHttpRequestAndroid$StreamEntity;

    invoke-direct {v1, p0}, Landroid/webkit/gears/ApacheHttpRequestAndroid$StreamEntity;-><init>(Landroid/webkit/gears/ApacheHttpRequestAndroid;)V

    iput-object v1, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid;->mPostEntity:Landroid/webkit/gears/ApacheHttpRequestAndroid$StreamEntity;

    .line 498
    iget-object v1, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid;->mMethod:Lorg/apache/http/client/methods/HttpRequestBase;

    check-cast v1, Lorg/apache/http/client/methods/HttpPost;

    iget-object v2, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid;->mPostEntity:Landroid/webkit/gears/ApacheHttpRequestAndroid$StreamEntity;

    invoke-virtual {v1, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_6f
    .catchall {:try_start_9 .. :try_end_6f} :catchall_70

    goto :goto_40

    .line 476
    :catchall_70
    move-exception v1

    monitor-exit p0

    throw v1

    .line 499
    :cond_73
    :try_start_73
    const-string v1, "HEAD"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_83

    .line 500
    new-instance v1, Lorg/apache/http/client/methods/HttpHead;

    invoke-direct {v1, p2}, Lorg/apache/http/client/methods/HttpHead;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid;->mMethod:Lorg/apache/http/client/methods/HttpRequestBase;

    goto :goto_40

    .line 501
    :cond_83
    const-string v1, "PUT"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_93

    .line 502
    new-instance v1, Lorg/apache/http/client/methods/HttpPut;

    invoke-direct {v1, p2}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid;->mMethod:Lorg/apache/http/client/methods/HttpRequestBase;

    goto :goto_40

    .line 503
    :cond_93
    const-string v1, "DELETE"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a3

    .line 504
    new-instance v1, Lorg/apache/http/client/methods/HttpDelete;

    invoke-direct {v1, p2}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid;->mMethod:Lorg/apache/http/client/methods/HttpRequestBase;
    :try_end_a2
    .catchall {:try_start_73 .. :try_end_a2} :catchall_70

    goto :goto_40

    :cond_a3
    move v1, v5

    .line 509
    goto/16 :goto_7
.end method

.method public declared-synchronized parseHeaders()Z
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 586
    monitor-enter p0

    :try_start_2
    iget-object v3, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid;->mConnectionFailedLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 587
    iget-boolean v3, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid;->mConnectionFailed:Z

    if-eqz v3, :cond_13

    .line 588
    iget-object v3, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid;->mConnectionFailedLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_10
    .catchall {:try_start_2 .. :try_end_10} :catchall_44

    move v3, v4

    .line 607
    :goto_11
    monitor-exit p0

    return v3

    .line 591
    :cond_13
    :try_start_13
    iget-object v3, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid;->mConnectionFailedLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 592
    invoke-direct {p0}, Landroid/webkit/gears/ApacheHttpRequestAndroid;->waitUntilConnectionFinished()V

    .line 593
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid;->mResponseHeaders:Ljava/util/Map;

    .line 594
    iget-object v3, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid;->mResponse:Lorg/apache/http/HttpResponse;

    if-nez v3, :cond_28

    move v3, v4

    .line 595
    goto :goto_11

    .line 597
    :cond_28
    iget-object v3, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid;->mResponse:Lorg/apache/http/HttpResponse;

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v1

    .line 598
    .local v1, headers:[Lorg/apache/http/Header;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2f
    array-length v3, v1

    if-ge v2, v3, :cond_42

    .line 599
    aget-object v0, v1, v2

    .line 604
    .local v0, header:Lorg/apache/http/Header;
    invoke-interface {v0}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Landroid/webkit/gears/ApacheHttpRequestAndroid;->setResponseHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3f
    .catchall {:try_start_13 .. :try_end_3f} :catchall_44

    .line 598
    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    .line 607
    .end local v0           #header:Lorg/apache/http/Header;
    :cond_42
    const/4 v3, 0x1

    goto :goto_11

    .line 586
    .end local v1           #headers:[Lorg/apache/http/Header;
    .end local v2           #i:I
    :catchall_44
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized receive([B)I
    .registers 7
    .parameter "buf"

    .prologue
    .line 1047
    monitor-enter p0

    :try_start_1
    iget-object v4, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid;->mBodyInputStream:Ljava/io/InputStream;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_32

    if-nez v4, :cond_1c

    .line 1052
    :try_start_5
    iget-object v4, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid;->mResponse:Lorg/apache/http/HttpResponse;

    if-eqz v4, :cond_15

    .line 1053
    iget-object v4, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid;->mResponse:Lorg/apache/http/HttpResponse;

    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 1054
    .local v1, entity:Lorg/apache/http/HttpEntity;
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v4

    iput-object v4, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid;->mBodyInputStream:Ljava/io/InputStream;
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_32
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_15} :catch_35

    .line 1064
    .end local v1           #entity:Lorg/apache/http/HttpEntity;
    :cond_15
    :goto_15
    :try_start_15
    iget-object v4, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid;->mBodyInputStream:Ljava/io/InputStream;
    :try_end_17
    .catchall {:try_start_15 .. :try_end_17} :catchall_32

    if-nez v4, :cond_1c

    .line 1069
    const/4 v4, 0x0

    .line 1090
    :goto_1a
    monitor-exit p0

    return v4

    .line 1074
    :cond_1c
    :try_start_1c
    iget-object v4, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid;->mBodyInputStream:Ljava/io/InputStream;

    invoke-virtual {v4, p1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 1075
    .local v2, got:I
    if-lez v2, :cond_27

    .line 1077
    move v3, v2

    .end local v2           #got:I
    .local v3, ret:I
    :goto_25
    move v4, v3

    .line 1090
    goto :goto_1a

    .line 1080
    .end local v3           #ret:I
    .restart local v2       #got:I
    :cond_27
    iget-object v4, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid;->mBodyInputStream:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2c
    .catchall {:try_start_1c .. :try_end_2c} :catchall_32
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_2c} :catch_2e

    .line 1081
    const/4 v3, 0x0

    .restart local v3       #ret:I
    goto :goto_25

    .line 1083
    .end local v2           #got:I
    .end local v3           #ret:I
    :catch_2e
    move-exception v4

    move-object v0, v4

    .line 1088
    .local v0, e:Ljava/io/IOException;
    const/4 v3, -0x1

    .restart local v3       #ret:I
    goto :goto_25

    .line 1047
    .end local v0           #e:Ljava/io/IOException;
    .end local v3           #ret:I
    :catchall_32
    move-exception v4

    monitor-exit p0

    throw v4

    .line 1056
    :catch_35
    move-exception v4

    goto :goto_15
.end method

.method public declared-synchronized saveCacheResult()Z
    .registers 3

    .prologue
    .line 987
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid;->mCacheResult:Landroid/webkit/CacheManager$CacheResult;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid;->mCacheResultUrl:Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_1b

    if-nez v0, :cond_c

    .line 992
    :cond_9
    const/4 v0, 0x0

    .line 1001
    :goto_a
    monitor-exit p0

    return v0

    .line 998
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid;->mCacheResultUrl:Ljava/lang/String;

    iget-object v1, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid;->mCacheResult:Landroid/webkit/CacheManager$CacheResult;

    invoke-static {v0, v1}, Landroid/webkit/CacheManager;->saveCacheFile(Ljava/lang/String;Landroid/webkit/CacheManager$CacheResult;)V

    .line 999
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid;->mCacheResult:Landroid/webkit/CacheManager$CacheResult;

    .line 1000
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid;->mCacheResultUrl:Ljava/lang/String;
    :try_end_19
    .catchall {:try_start_c .. :try_end_19} :catchall_1b

    .line 1001
    const/4 v0, 0x1

    goto :goto_a

    .line 987
    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public sendPostData([BI)Z
    .registers 6
    .parameter "data"
    .parameter "bytes"

    .prologue
    const/4 v2, 0x0

    .line 1105
    iget-object v0, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid;->mConnectionFailedLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1106
    iget-boolean v0, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid;->mConnectionFailed:Z

    if-eqz v0, :cond_11

    .line 1107
    iget-object v0, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid;->mConnectionFailedLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move v0, v2

    .line 1131
    :goto_10
    return v0

    .line 1110
    :cond_11
    iget-object v0, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid;->mConnectionFailedLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1111
    iget-object v0, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid;->mPostEntity:Landroid/webkit/gears/ApacheHttpRequestAndroid$StreamEntity;

    if-nez v0, :cond_1c

    move v0, v2

    goto :goto_10

    .line 1115
    :cond_1c
    iget-object v0, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid;->mPostEntity:Landroid/webkit/gears/ApacheHttpRequestAndroid$StreamEntity;

    invoke-virtual {v0}, Landroid/webkit/gears/ApacheHttpRequestAndroid$StreamEntity;->isReady()Z

    move-result v0

    if-nez v0, :cond_26

    move v0, v2

    goto :goto_10

    .line 1117
    :cond_26
    if-nez p1, :cond_4c

    if-nez p2, :cond_4c

    .line 1118
    iget-object v0, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid;->mBuffer:Landroid/webkit/gears/ApacheHttpRequestAndroid$Buffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/gears/ApacheHttpRequestAndroid$Buffer;->put(Landroid/webkit/gears/ApacheHttpRequestAndroid$DataPacket;)V

    .line 1122
    :goto_30
    iget-object v0, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid;->mSignal:Landroid/webkit/gears/ApacheHttpRequestAndroid$SignalConsumed;

    invoke-virtual {v0}, Landroid/webkit/gears/ApacheHttpRequestAndroid$SignalConsumed;->waitUntilPacketConsumed()V

    .line 1124
    iget-object v0, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid;->mConnectionFailedLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1125
    iget-boolean v0, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid;->mConnectionFailed:Z

    if-eqz v0, :cond_57

    .line 1126
    const-string v0, "Gears-J"

    const-string v1, "failure"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    iget-object v0, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid;->mConnectionFailedLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move v0, v2

    .line 1128
    goto :goto_10

    .line 1120
    :cond_4c
    iget-object v0, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid;->mBuffer:Landroid/webkit/gears/ApacheHttpRequestAndroid$Buffer;

    new-instance v1, Landroid/webkit/gears/ApacheHttpRequestAndroid$DataPacket;

    invoke-direct {v1, p0, p1, p2}, Landroid/webkit/gears/ApacheHttpRequestAndroid$DataPacket;-><init>(Landroid/webkit/gears/ApacheHttpRequestAndroid;[BI)V

    invoke-virtual {v0, v1}, Landroid/webkit/gears/ApacheHttpRequestAndroid$Buffer;->put(Landroid/webkit/gears/ApacheHttpRequestAndroid$DataPacket;)V

    goto :goto_30

    .line 1130
    :cond_57
    iget-object v0, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid;->mConnectionFailedLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1131
    const/4 v0, 0x1

    goto :goto_10
.end method

.method public setContentLength(J)V
    .registers 3
    .parameter "length"

    .prologue
    .line 457
    iput-wide p1, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid;->mContentLength:J

    .line 458
    return-void
.end method

.method public declared-synchronized setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "name"
    .parameter "value"

    .prologue
    .line 618
    monitor-enter p0

    const/4 v1, 0x2

    :try_start_2
    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 622
    .local v0, mapValue:[Ljava/lang/String;
    const-string v1, "Content-Length"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 623
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Landroid/webkit/gears/ApacheHttpRequestAndroid;->setContentLength(J)V
    :try_end_19
    .catchall {:try_start_2 .. :try_end_19} :catchall_25

    .line 627
    :goto_19
    monitor-exit p0

    return-void

    .line 625
    :cond_1b
    :try_start_1b
    iget-object v1, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid;->mRequestHeaders:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_24
    .catchall {:try_start_1b .. :try_end_24} :catchall_25

    goto :goto_19

    .line 618
    .end local v0           #mapValue:[Ljava/lang/String;
    :catchall_25
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized useCacheResult(Ljava/lang/String;)Z
    .registers 13
    .parameter "url"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 795
    monitor-enter p0

    :try_start_3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 796
    .local v0, cacheRequestHeaders:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v6, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid;->mRequestHeaders:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 798
    .local v4, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;[Ljava/lang/String;>;>;"
    :goto_12
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_32

    .line 799
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 800
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;[Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    const/4 v8, 0x1

    aget-object v6, v6, v8

    invoke-interface {v0, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2f

    goto :goto_12

    .line 795
    .end local v0           #cacheRequestHeaders:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;[Ljava/lang/String;>;"
    .end local v4           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;[Ljava/lang/String;>;>;"
    :catchall_2f
    move-exception v6

    monitor-exit p0

    throw v6

    .line 804
    .restart local v0       #cacheRequestHeaders:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v4       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;[Ljava/lang/String;>;>;"
    :cond_32
    :try_start_32
    invoke-static {p1, v0}, Landroid/webkit/CacheManager;->getCacheFile(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/CacheManager$CacheResult;
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_2f

    move-result-object v5

    .line 806
    .local v5, mCacheResult:Landroid/webkit/CacheManager$CacheResult;
    if-nez v5, :cond_3b

    move v6, v9

    .line 838
    :goto_39
    monitor-exit p0

    return v6

    .line 817
    :cond_3b
    :try_start_3b
    invoke-virtual {v5}, Landroid/webkit/CacheManager$CacheResult;->getExpires()J

    move-result-wide v2

    .line 818
    .local v2, expires:J
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-ltz v6, :cond_4f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v6, v6, v2

    if-ltz v6, :cond_4f

    move v6, v9

    .line 825
    goto :goto_39

    .line 828
    :cond_4f
    invoke-virtual {v5}, Landroid/webkit/CacheManager$CacheResult;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    iput-object v6, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid;->mBodyInputStream:Ljava/io/InputStream;

    .line 829
    iget-object v6, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid;->mBodyInputStream:Ljava/io/InputStream;

    if-nez v6, :cond_5b

    move v6, v9

    .line 834
    goto :goto_39

    .line 837
    :cond_5b
    invoke-direct {p0, v5}, Landroid/webkit/gears/ApacheHttpRequestAndroid;->synthesizeHeadersFromCacheResult(Landroid/webkit/CacheManager$CacheResult;)V
    :try_end_5e
    .catchall {:try_start_3b .. :try_end_5e} :catchall_2f

    move v6, v10

    .line 838
    goto :goto_39
.end method

.method public declared-synchronized useLocalServerResult(Ljava/lang/String;)Z
    .registers 6
    .parameter "url"

    .prologue
    const/4 v3, 0x0

    .line 762
    monitor-enter p0

    :try_start_2
    invoke-static {}, Landroid/webkit/gears/UrlInterceptHandlerGears;->getInstance()Landroid/webkit/gears/UrlInterceptHandlerGears;
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_29

    move-result-object v0

    .line 764
    .local v0, handler:Landroid/webkit/gears/UrlInterceptHandlerGears;
    if-nez v0, :cond_b

    move v2, v3

    .line 783
    :goto_9
    monitor-exit p0

    return v2

    .line 767
    :cond_b
    :try_start_b
    iget-object v2, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid;->mRequestHeaders:Ljava/util/Map;

    invoke-virtual {v0, p1, v2}, Landroid/webkit/gears/UrlInterceptHandlerGears;->getServiceResponse(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/gears/UrlInterceptHandlerGears$ServiceResponse;

    move-result-object v1

    .line 769
    .local v1, serviceResponse:Landroid/webkit/gears/UrlInterceptHandlerGears$ServiceResponse;
    if-nez v1, :cond_15

    move v2, v3

    .line 773
    goto :goto_9

    .line 777
    :cond_15
    invoke-virtual {v1}, Landroid/webkit/gears/UrlInterceptHandlerGears$ServiceResponse;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid;->mBodyInputStream:Ljava/io/InputStream;

    .line 778
    invoke-virtual {v1}, Landroid/webkit/gears/UrlInterceptHandlerGears$ServiceResponse;->getStatusLine()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid;->mResponseLine:Ljava/lang/String;

    .line 779
    invoke-virtual {v1}, Landroid/webkit/gears/UrlInterceptHandlerGears$ServiceResponse;->getResponseHeaders()Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid;->mResponseHeaders:Ljava/util/Map;
    :try_end_27
    .catchall {:try_start_b .. :try_end_27} :catchall_29

    .line 783
    const/4 v2, 0x1

    goto :goto_9

    .line 762
    .end local v0           #handler:Landroid/webkit/gears/UrlInterceptHandlerGears;
    .end local v1           #serviceResponse:Landroid/webkit/gears/UrlInterceptHandlerGears$ServiceResponse;
    :catchall_29
    move-exception v2

    monitor-exit p0

    throw v2
.end method
