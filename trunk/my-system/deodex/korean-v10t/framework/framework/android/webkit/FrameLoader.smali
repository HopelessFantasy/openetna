.class Landroid/webkit/FrameLoader;
.super Ljava/lang/Object;
.source "FrameLoader.java"


# static fields
.field private static final CONTENT_TYPE:Ljava/lang/String; = "content-type"

.field static final HEADER_STR:Ljava/lang/String; = "text/xml, text/html, application/xhtml+xml, image/png, text/plain, */*;q=0.8"

.field private static final LOGTAG:Ljava/lang/String; = "webkit"

.field private static final URI_PROTOCOL:I = 0x100

.field private static final mAboutBlank:Ljava/lang/String; = "<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EB\"><html><head><title>about:blank</title></head><body></body></html>"

.field private static mUaProfile:Ljava/lang/String;

.field private static mUseUaProfile:I


# instance fields
.field private mCacheMode:I

.field private mContentType:Ljava/lang/String;

.field private mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mIsHighPriority:Z

.field private final mListener:Landroid/webkit/LoadListener;

.field private final mMethod:Ljava/lang/String;

.field private mNetwork:Landroid/webkit/Network;

.field private mPostData:[B

.field private mReferrer:Ljava/lang/String;

.field private final mSettings:Landroid/webkit/WebSettings;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 45
    const/4 v0, 0x0

    sput-object v0, Landroid/webkit/FrameLoader;->mUaProfile:Ljava/lang/String;

    .line 46
    const/4 v0, -0x1

    sput v0, Landroid/webkit/FrameLoader;->mUseUaProfile:I

    return-void
.end method

.method constructor <init>(Landroid/webkit/LoadListener;Landroid/webkit/WebSettings;Ljava/lang/String;Z)V
    .registers 6
    .parameter "listener"
    .parameter "settings"
    .parameter "method"
    .parameter "highPriority"

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/FrameLoader;->mHeaders:Ljava/util/Map;

    .line 67
    iput-object p3, p0, Landroid/webkit/FrameLoader;->mMethod:Ljava/lang/String;

    .line 68
    iput-boolean p4, p0, Landroid/webkit/FrameLoader;->mIsHighPriority:Z

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/FrameLoader;->mCacheMode:I

    .line 70
    iput-object p2, p0, Landroid/webkit/FrameLoader;->mSettings:Landroid/webkit/WebSettings;

    .line 71
    return-void
.end method

.method private handleCache()Z
    .registers 8

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 264
    iget v2, p0, Landroid/webkit/FrameLoader;->mCacheMode:I

    packed-switch v2, :pswitch_data_52

    .line 318
    iget-object v2, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    iget-object v3, p0, Landroid/webkit/FrameLoader;->mHeaders:Ljava/util/Map;

    invoke-virtual {v2, v3}, Landroid/webkit/LoadListener;->checkCache(Ljava/util/Map;)Z

    move-result v2

    .line 321
    :goto_f
    return v2

    .line 275
    :pswitch_10
    iget-object v2, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    invoke-virtual {v2}, Landroid/webkit/LoadListener;->url()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Landroid/webkit/CacheManager;->getCacheFile(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/CacheManager$CacheResult;

    move-result-object v1

    .line 277
    .local v1, result:Landroid/webkit/CacheManager$CacheResult;
    if-eqz v1, :cond_21

    .line 278
    invoke-direct {p0, v1}, Landroid/webkit/FrameLoader;->startCacheLoad(Landroid/webkit/CacheManager$CacheResult;)V

    :goto_1f
    move v2, v6

    .line 289
    goto :goto_f

    .line 284
    :cond_21
    const/16 v0, -0xe

    .line 285
    .local v0, err:I
    iget-object v2, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    iget-object v3, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    invoke-virtual {v3}, Landroid/webkit/LoadListener;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Landroid/net/http/EventHandler;->errorStringResources:[I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v5

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/webkit/LoadListener;->error(ILjava/lang/String;)V

    goto :goto_1f

    .line 303
    .end local v0           #err:I
    .end local v1           #result:Landroid/webkit/CacheManager$CacheResult;
    :pswitch_3f
    iget-object v2, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    invoke-virtual {v2}, Landroid/webkit/LoadListener;->url()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Landroid/webkit/CacheManager;->getCacheFile(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/CacheManager$CacheResult;

    move-result-object v1

    .line 305
    .restart local v1       #result:Landroid/webkit/CacheManager$CacheResult;
    if-eqz v1, :cond_50

    .line 306
    invoke-direct {p0, v1}, Landroid/webkit/FrameLoader;->startCacheLoad(Landroid/webkit/CacheManager$CacheResult;)V

    move v2, v6

    .line 307
    goto :goto_f

    .line 321
    .end local v1           #result:Landroid/webkit/CacheManager$CacheResult;
    :cond_50
    :pswitch_50
    const/4 v2, 0x0

    goto :goto_f

    .line 264
    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_3f
        :pswitch_50
        :pswitch_10
    .end packed-switch
.end method

.method private handleHTTPLoad()Z
    .registers 11

    .prologue
    const/4 v9, 0x1

    .line 172
    iget-object v0, p0, Landroid/webkit/FrameLoader;->mHeaders:Ljava/util/Map;

    if-nez v0, :cond_c

    .line 173
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/webkit/FrameLoader;->mHeaders:Ljava/util/Map;

    .line 175
    :cond_c
    invoke-direct {p0}, Landroid/webkit/FrameLoader;->populateStaticHeaders()V

    .line 176
    invoke-direct {p0}, Landroid/webkit/FrameLoader;->populateHeaders()V

    .line 179
    invoke-direct {p0}, Landroid/webkit/FrameLoader;->handleUrlIntercept()Z

    move-result v0

    if-eqz v0, :cond_1a

    move v0, v9

    .line 215
    :goto_19
    return v0

    .line 182
    :cond_1a
    invoke-direct {p0}, Landroid/webkit/FrameLoader;->handleCache()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 187
    iget-object v0, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    iget-object v1, p0, Landroid/webkit/FrameLoader;->mMethod:Ljava/lang/String;

    iget-object v2, p0, Landroid/webkit/FrameLoader;->mHeaders:Ljava/util/Map;

    iget-object v3, p0, Landroid/webkit/FrameLoader;->mPostData:[B

    iget-boolean v4, p0, Landroid/webkit/FrameLoader;->mIsHighPriority:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/webkit/LoadListener;->setRequestData(Ljava/lang/String;Ljava/util/Map;[BZ)V

    move v0, v9

    .line 189
    goto :goto_19

    .line 197
    :cond_2f
    const/4 v8, 0x0

    .line 198
    .local v8, ret:Z
    const/16 v6, -0xa

    .line 201
    .local v6, error:I
    :try_start_32
    iget-object v0, p0, Landroid/webkit/FrameLoader;->mNetwork:Landroid/webkit/Network;

    iget-object v1, p0, Landroid/webkit/FrameLoader;->mMethod:Ljava/lang/String;

    iget-object v2, p0, Landroid/webkit/FrameLoader;->mHeaders:Ljava/util/Map;

    iget-object v3, p0, Landroid/webkit/FrameLoader;->mPostData:[B

    iget-object v4, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    iget-boolean v5, p0, Landroid/webkit/FrameLoader;->mIsHighPriority:Z

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/Network;->requestURL(Ljava/lang/String;Ljava/util/Map;[BLandroid/webkit/LoadListener;Z)Z
    :try_end_41
    .catch Landroid/net/ParseException; {:try_start_32 .. :try_end_41} :catch_61
    .catch Ljava/lang/RuntimeException; {:try_start_32 .. :try_end_41} :catch_66

    move-result v8

    .line 210
    :goto_42
    if-nez v8, :cond_6b

    .line 211
    iget-object v0, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    iget-object v1, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    invoke-virtual {v1}, Landroid/webkit/LoadListener;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/net/http/EventHandler;->errorStringResources:[I

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v3

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Landroid/webkit/LoadListener;->error(ILjava/lang/String;)V

    .line 213
    const/4 v0, 0x0

    goto :goto_19

    .line 203
    :catch_61
    move-exception v0

    move-object v7, v0

    .line 204
    .local v7, ex:Landroid/net/ParseException;
    const/16 v6, -0xc

    .line 209
    goto :goto_42

    .line 205
    .end local v7           #ex:Landroid/net/ParseException;
    :catch_66
    move-exception v0

    move-object v7, v0

    .line 208
    .local v7, ex:Ljava/lang/RuntimeException;
    const/16 v6, -0xc

    goto :goto_42

    .end local v7           #ex:Ljava/lang/RuntimeException;
    :cond_6b
    move v0, v9

    .line 215
    goto :goto_19
.end method

.method static handleLocalFile(Ljava/lang/String;Landroid/webkit/LoadListener;Landroid/webkit/WebSettings;)Z
    .registers 8
    .parameter "url"
    .parameter "loadListener"
    .parameter "settings"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string v4, "<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EB\"><html><head><title>about:blank</title></head><body></body></html>"

    .line 146
    invoke-static {p0}, Landroid/webkit/URLUtil;->isAssetUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 147
    invoke-virtual {p1}, Landroid/webkit/LoadListener;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2}, Landroid/webkit/WebSettings;->getAllowFileAccess()Z

    move-result v1

    invoke-static {p0, p1, v0, v2, v1}, Landroid/webkit/FileLoader;->requestUrl(Ljava/lang/String;Landroid/webkit/LoadListener;Landroid/content/Context;ZZ)V

    move v0, v2

    .line 168
    :goto_16
    return v0

    .line 150
    :cond_17
    invoke-static {p0}, Landroid/webkit/URLUtil;->isFileUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 151
    invoke-virtual {p1}, Landroid/webkit/LoadListener;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2}, Landroid/webkit/WebSettings;->getAllowFileAccess()Z

    move-result v1

    invoke-static {p0, p1, v0, v3, v1}, Landroid/webkit/FileLoader;->requestUrl(Ljava/lang/String;Landroid/webkit/LoadListener;Landroid/content/Context;ZZ)V

    move v0, v2

    .line 153
    goto :goto_16

    .line 154
    :cond_2a
    invoke-static {p0}, Landroid/webkit/URLUtil;->isContentUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 157
    invoke-virtual {p1}, Landroid/webkit/LoadListener;->url()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/webkit/LoadListener;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, p1, v1}, Landroid/webkit/ContentLoader;->requestUrl(Ljava/lang/String;Landroid/webkit/LoadListener;Landroid/content/Context;)V

    move v0, v2

    .line 159
    goto :goto_16

    .line 160
    :cond_3d
    invoke-static {p0}, Landroid/webkit/URLUtil;->isDataUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 161
    invoke-static {p0, p1}, Landroid/webkit/DataLoader;->requestUrl(Ljava/lang/String;Landroid/webkit/LoadListener;)V

    move v0, v2

    .line 162
    goto :goto_16

    .line 163
    :cond_48
    invoke-static {p0}, Landroid/webkit/URLUtil;->isAboutUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 164
    const-string v0, "<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EB\"><html><head><title>about:blank</title></head><body></body></html>"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const-string v1, "<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EB\"><html><head><title>about:blank</title></head><body></body></html>"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/webkit/LoadListener;->data([BI)V

    .line 165
    invoke-virtual {p1}, Landroid/webkit/LoadListener;->endData()V

    move v0, v2

    .line 166
    goto :goto_16

    :cond_62
    move v0, v3

    .line 168
    goto :goto_16
.end method

.method private handleUrlIntercept()Z
    .registers 5

    .prologue
    .line 245
    iget-object v2, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    invoke-virtual {v2}, Landroid/webkit/LoadListener;->url()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/webkit/FrameLoader;->mHeaders:Ljava/util/Map;

    invoke-static {v2, v3}, Landroid/webkit/UrlInterceptRegistry;->getPluginData(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/PluginData;

    move-result-object v0

    .line 248
    .local v0, data:Landroid/webkit/PluginData;
    if-eqz v0, :cond_1a

    .line 249
    new-instance v1, Landroid/webkit/PluginContentLoader;

    iget-object v2, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    invoke-direct {v1, v2, v0}, Landroid/webkit/PluginContentLoader;-><init>(Landroid/webkit/LoadListener;Landroid/webkit/PluginData;)V

    .line 251
    .local v1, loader:Landroid/webkit/PluginContentLoader;
    invoke-virtual {v1}, Landroid/webkit/PluginContentLoader;->load()V

    .line 252
    const/4 v2, 0x1

    .line 255
    .end local v1           #loader:Landroid/webkit/PluginContentLoader;
    :goto_19
    return v2

    :cond_1a
    const/4 v2, 0x0

    goto :goto_19
.end method

.method private populateHeaders()V
    .registers 8

    .prologue
    .line 388
    iget-object v4, p0, Landroid/webkit/FrameLoader;->mReferrer:Ljava/lang/String;

    if-eqz v4, :cond_d

    iget-object v4, p0, Landroid/webkit/FrameLoader;->mHeaders:Ljava/util/Map;

    const-string v5, "Referer"

    iget-object v6, p0, Landroid/webkit/FrameLoader;->mReferrer:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    :cond_d
    iget-object v4, p0, Landroid/webkit/FrameLoader;->mContentType:Ljava/lang/String;

    if-eqz v4, :cond_1a

    iget-object v4, p0, Landroid/webkit/FrameLoader;->mHeaders:Ljava/util/Map;

    const-string v5, "content-type"

    iget-object v6, p0, Landroid/webkit/FrameLoader;->mContentType:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    :cond_1a
    iget-object v4, p0, Landroid/webkit/FrameLoader;->mNetwork:Landroid/webkit/Network;

    invoke-virtual {v4}, Landroid/webkit/Network;->isValidProxySet()Z

    move-result v4

    if-eqz v4, :cond_57

    .line 397
    iget-object v4, p0, Landroid/webkit/FrameLoader;->mNetwork:Landroid/webkit/Network;

    monitor-enter v4

    .line 398
    :try_start_25
    iget-object v5, p0, Landroid/webkit/FrameLoader;->mNetwork:Landroid/webkit/Network;

    invoke-virtual {v5}, Landroid/webkit/Network;->getProxyUsername()Ljava/lang/String;

    move-result-object v3

    .line 399
    .local v3, username:Ljava/lang/String;
    iget-object v5, p0, Landroid/webkit/FrameLoader;->mNetwork:Landroid/webkit/Network;

    invoke-virtual {v5}, Landroid/webkit/Network;->getProxyPassword()Ljava/lang/String;

    move-result-object v1

    .line 400
    .local v1, password:Ljava/lang/String;
    monitor-exit v4
    :try_end_32
    .catchall {:try_start_25 .. :try_end_32} :catchall_75

    .line 401
    if-eqz v3, :cond_57

    if-eqz v1, :cond_57

    .line 403
    const/4 v4, 0x1

    invoke-static {v4}, Landroid/net/http/RequestHandle;->authorizationHeader(Z)Ljava/lang/String;

    move-result-object v2

    .line 404
    .local v2, proxyHeader:Ljava/lang/String;
    iget-object v4, p0, Landroid/webkit/FrameLoader;->mHeaders:Ljava/util/Map;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Basic "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3, v1}, Landroid/net/http/RequestHandle;->computeBasicAuthResponse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    .end local v1           #password:Ljava/lang/String;
    .end local v2           #proxyHeader:Ljava/lang/String;
    .end local v3           #username:Ljava/lang/String;
    :cond_57
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v4

    iget-object v5, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    invoke-virtual {v5}, Landroid/webkit/LoadListener;->getWebAddress()Landroid/net/WebAddress;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/webkit/CookieManager;->getCookie(Landroid/net/WebAddress;)Ljava/lang/String;

    move-result-object v0

    .line 413
    .local v0, cookie:Ljava/lang/String;
    if-eqz v0, :cond_74

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_74

    .line 414
    iget-object v4, p0, Landroid/webkit/FrameLoader;->mHeaders:Ljava/util/Map;

    const-string v5, "Cookie"

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    :cond_74
    return-void

    .line 400
    .end local v0           #cookie:Ljava/lang/String;
    :catchall_75
    move-exception v5

    :try_start_76
    monitor-exit v4
    :try_end_77
    .catchall {:try_start_76 .. :try_end_77} :catchall_75

    throw v5
.end method

.method private populateStaticHeaders()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    const-string v5, "Accept"

    const-string v6, "webkit"

    .line 330
    iget-object v3, p0, Landroid/webkit/FrameLoader;->mHeaders:Ljava/util/Map;

    const-string v4, "Accept"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 331
    .local v0, accept:Ljava/lang/String;
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_20

    .line 332
    :cond_17
    iget-object v3, p0, Landroid/webkit/FrameLoader;->mHeaders:Ljava/util/Map;

    const-string v4, "Accept"

    const-string v4, "text/xml, text/html, application/xhtml+xml, image/png, text/plain, */*;q=0.8"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    :cond_20
    iget-object v3, p0, Landroid/webkit/FrameLoader;->mHeaders:Ljava/util/Map;

    const-string v4, "Accept-Charset"

    const-string v5, "utf-8, iso-8859-1, utf-16, *;q=0.7"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    iget-object v3, p0, Landroid/webkit/FrameLoader;->mSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getAcceptLanguage()Ljava/lang/String;

    move-result-object v1

    .line 337
    .local v1, acceptLanguage:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3c

    .line 338
    iget-object v3, p0, Landroid/webkit/FrameLoader;->mHeaders:Ljava/util/Map;

    const-string v4, "Accept-Language"

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    :cond_3c
    iget-object v3, p0, Landroid/webkit/FrameLoader;->mHeaders:Ljava/util/Map;

    const-string v4, "User-Agent"

    iget-object v5, p0, Landroid/webkit/FrameLoader;->mSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v5}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    sget v3, Landroid/webkit/FrameLoader;->mUseUaProfile:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_7f

    .line 346
    const/4 v3, 0x0

    sput v3, Landroid/webkit/FrameLoader;->mUseUaProfile:I

    .line 347
    iget-object v3, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    invoke-virtual {v3}, Landroid/webkit/LoadListener;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "BRW_SETTINGDB_SUPPORT_X_WAP_PROFILE_I"

    invoke-static {v3, v4}, Landroid/provider/Settings$FlexInfo;->getFlexCode(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 348
    .local v2, tempStr:Ljava/lang/String;
    if-eqz v2, :cond_d8

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_d8

    .line 349
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 350
    if-eqz v2, :cond_d0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_d0

    .line 351
    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7f

    .line 352
    sput v7, Landroid/webkit/FrameLoader;->mUseUaProfile:I

    .line 362
    .end local v2           #tempStr:Ljava/lang/String;
    :cond_7f
    :goto_7f
    sget v3, Landroid/webkit/FrameLoader;->mUseUaProfile:I

    if-ne v3, v7, :cond_e8

    .line 363
    sget-object v3, Landroid/webkit/FrameLoader;->mUaProfile:Ljava/lang/String;

    if-nez v3, :cond_a0

    .line 364
    iget-object v3, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    invoke-virtual {v3}, Landroid/webkit/LoadListener;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "BRW_SETTINGDB_UA_PROFILE_I"

    invoke-static {v3, v4}, Landroid/provider/Settings$FlexInfo;->getFlexCode(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Landroid/webkit/FrameLoader;->mUaProfile:Ljava/lang/String;

    .line 365
    const-string v3, "webkit"

    const-string v3, "[kylee] x-wap-profile info is read from flex."

    invoke-static {v6, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :cond_a0
    sget-object v3, Landroid/webkit/FrameLoader;->mUaProfile:Ljava/lang/String;

    if-eqz v3, :cond_e0

    sget-object v3, Landroid/webkit/FrameLoader;->mUaProfile:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_e0

    .line 368
    iget-object v3, p0, Landroid/webkit/FrameLoader;->mHeaders:Ljava/util/Map;

    const-string v4, "x-wap-profile"

    sget-object v5, Landroid/webkit/FrameLoader;->mUaProfile:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    const-string v3, "webkit"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[kylee] x-wap-profile added = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/webkit/FrameLoader;->mUaProfile:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    :goto_cf
    return-void

    .line 355
    .restart local v2       #tempStr:Ljava/lang/String;
    :cond_d0
    const-string v3, "webkit"

    const-string v3, "[kylee] flex reading failed 1."

    invoke-static {v6, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7f

    .line 359
    :cond_d8
    const-string v3, "webkit"

    const-string v3, "[kylee] flex reading failed 2."

    invoke-static {v6, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7f

    .line 372
    .end local v2           #tempStr:Ljava/lang/String;
    :cond_e0
    const-string v3, "webkit"

    const-string v3, "[kylee] flex reading for x-wap-profile failed."

    invoke-static {v6, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_cf

    .line 376
    :cond_e8
    const-string v3, "webkit"

    const-string v3, "[kylee] browser doesn\'t support x-wap-profile."

    invoke-static {v6, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_cf
.end method

.method private startCacheLoad(Landroid/webkit/CacheManager$CacheResult;)V
    .registers 4
    .parameter "result"

    .prologue
    .line 228
    new-instance v0, Landroid/webkit/CacheLoader;

    iget-object v1, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    invoke-direct {v0, v1, p1}, Landroid/webkit/CacheLoader;-><init>(Landroid/webkit/LoadListener;Landroid/webkit/CacheManager$CacheResult;)V

    .line 230
    .local v0, cacheLoader:Landroid/webkit/CacheLoader;
    iget-object v1, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    invoke-virtual {v1, v0}, Landroid/webkit/LoadListener;->setCacheLoader(Landroid/webkit/CacheLoader;)V

    .line 231
    invoke-virtual {v0}, Landroid/webkit/CacheLoader;->load()V

    .line 232
    return-void
.end method


# virtual methods
.method public executeLoad()Z
    .registers 9

    .prologue
    const v6, 0x1040007

    const/16 v5, -0xc

    const/4 v7, 0x0

    .line 107
    iget-object v3, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    invoke-virtual {v3}, Landroid/webkit/LoadListener;->url()Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, url:Ljava/lang/String;
    :try_start_c
    new-instance v2, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3}, Landroid/webkit/URLUtil;->decode([B)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V
    :try_end_19
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_19} :catch_39

    .line 120
    .end local v1           #url:Ljava/lang/String;
    .local v2, url:Ljava/lang/String;
    invoke-static {v2}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5e

    .line 121
    iget-object v3, p0, Landroid/webkit/FrameLoader;->mSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getBlockNetworkLoads()Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 122
    iget-object v3, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    iget-object v4, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    invoke-virtual {v4}, Landroid/webkit/LoadListener;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Landroid/webkit/LoadListener;->error(ILjava/lang/String;)V

    move-object v1, v2

    .end local v2           #url:Ljava/lang/String;
    .restart local v1       #url:Ljava/lang/String;
    move v3, v7

    .line 139
    :goto_38
    return v3

    .line 112
    :catch_39
    move-exception v3

    move-object v0, v3

    .line 114
    .local v0, e:Ljava/lang/IllegalArgumentException;
    iget-object v3, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    iget-object v4, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    invoke-virtual {v4}, Landroid/webkit/LoadListener;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Landroid/webkit/LoadListener;->error(ILjava/lang/String;)V

    move v3, v7

    .line 117
    goto :goto_38

    .line 127
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    .end local v1           #url:Ljava/lang/String;
    .restart local v2       #url:Ljava/lang/String;
    :cond_4c
    iget-object v3, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    invoke-virtual {v3}, Landroid/webkit/LoadListener;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/webkit/Network;->getInstance(Landroid/content/Context;)Landroid/webkit/Network;

    move-result-object v3

    iput-object v3, p0, Landroid/webkit/FrameLoader;->mNetwork:Landroid/webkit/Network;

    .line 128
    invoke-direct {p0}, Landroid/webkit/FrameLoader;->handleHTTPLoad()Z

    move-result v3

    move-object v1, v2

    .end local v2           #url:Ljava/lang/String;
    .restart local v1       #url:Ljava/lang/String;
    goto :goto_38

    .line 129
    .end local v1           #url:Ljava/lang/String;
    .restart local v2       #url:Ljava/lang/String;
    :cond_5e
    iget-object v3, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    iget-object v4, p0, Landroid/webkit/FrameLoader;->mSettings:Landroid/webkit/WebSettings;

    invoke-static {v2, v3, v4}, Landroid/webkit/FrameLoader;->handleLocalFile(Ljava/lang/String;Landroid/webkit/LoadListener;Landroid/webkit/WebSettings;)Z

    move-result v3

    if-eqz v3, :cond_6b

    .line 130
    const/4 v3, 0x1

    move-object v1, v2

    .end local v2           #url:Ljava/lang/String;
    .restart local v1       #url:Ljava/lang/String;
    goto :goto_38

    .line 136
    .end local v1           #url:Ljava/lang/String;
    .restart local v2       #url:Ljava/lang/String;
    :cond_6b
    iget-object v3, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    const/16 v4, -0xa

    iget-object v5, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    invoke-virtual {v5}, Landroid/webkit/LoadListener;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x1040008

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/webkit/LoadListener;->error(ILjava/lang/String;)V

    move-object v1, v2

    .end local v2           #url:Ljava/lang/String;
    .restart local v1       #url:Ljava/lang/String;
    move v3, v7

    .line 139
    goto :goto_38
.end method

.method public getLoadListener()Landroid/webkit/LoadListener;
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    return-object v0
.end method

.method public setCacheMode(I)V
    .registers 2
    .parameter "cacheMode"

    .prologue
    .line 87
    iput p1, p0, Landroid/webkit/FrameLoader;->mCacheMode:I

    .line 88
    return-void
.end method

.method public setContentTypeForPost(Ljava/lang/String;)V
    .registers 2
    .parameter "postContentType"

    .prologue
    .line 83
    iput-object p1, p0, Landroid/webkit/FrameLoader;->mContentType:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setHeaders(Ljava/util/HashMap;)V
    .registers 2
    .parameter "headers"

    .prologue
    .line 91
    iput-object p1, p0, Landroid/webkit/FrameLoader;->mHeaders:Ljava/util/Map;

    .line 92
    return-void
.end method

.method public setPostData([B)V
    .registers 2
    .parameter "postData"

    .prologue
    .line 79
    iput-object p1, p0, Landroid/webkit/FrameLoader;->mPostData:[B

    .line 80
    return-void
.end method

.method public setReferrer(Ljava/lang/String;)V
    .registers 3
    .parameter "ref"

    .prologue
    .line 75
    invoke-static {p1}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iput-object p1, p0, Landroid/webkit/FrameLoader;->mReferrer:Ljava/lang/String;

    .line 76
    :cond_8
    return-void
.end method
