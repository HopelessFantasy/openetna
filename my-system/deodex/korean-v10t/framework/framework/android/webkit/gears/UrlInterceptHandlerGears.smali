.class public Landroid/webkit/gears/UrlInterceptHandlerGears;
.super Ljava/lang/Object;
.source "UrlInterceptHandlerGears.java"

# interfaces
.implements Landroid/webkit/UrlInterceptHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/gears/UrlInterceptHandlerGears$ServiceResponse;,
        Landroid/webkit/gears/UrlInterceptHandlerGears$ServiceRequest;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x1000

.field public static final HEADERS_MAP_INDEX_KEY:I = 0x0

.field public static final HEADERS_MAP_INDEX_VALUE:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "Gears-J"

.field private static instance:Landroid/webkit/gears/UrlInterceptHandlerGears;

.field private static logEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 55
    const/4 v0, 0x0

    sput-boolean v0, Landroid/webkit/gears/UrlInterceptHandlerGears;->logEnabled:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 287
    sget-object v0, Landroid/webkit/gears/UrlInterceptHandlerGears;->instance:Landroid/webkit/gears/UrlInterceptHandlerGears;

    if-eqz v0, :cond_14

    .line 288
    const-string v0, "Gears-J"

    const-string v1, "UrlInterceptHandlerGears singleton already constructed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 291
    :cond_14
    sput-object p0, Landroid/webkit/gears/UrlInterceptHandlerGears;->instance:Landroid/webkit/gears/UrlInterceptHandlerGears;

    .line 292
    return-void
.end method

.method static synthetic access$000(Landroid/webkit/gears/UrlInterceptHandlerGears;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Landroid/webkit/gears/UrlInterceptHandlerGears;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static enableLogging(Z)V
    .registers 1
    .parameter "on"

    .prologue
    .line 299
    sput-boolean p0, Landroid/webkit/gears/UrlInterceptHandlerGears;->logEnabled:Z

    .line 300
    return-void
.end method

.method public static getInstance()Landroid/webkit/gears/UrlInterceptHandlerGears;
    .registers 1

    .prologue
    .line 307
    sget-object v0, Landroid/webkit/gears/UrlInterceptHandlerGears;->instance:Landroid/webkit/gears/UrlInterceptHandlerGears;

    return-object v0
.end method

.method private log(Ljava/lang/String;)V
    .registers 3
    .parameter "str"

    .prologue
    .line 403
    sget-boolean v0, Landroid/webkit/gears/UrlInterceptHandlerGears;->logEnabled:Z

    if-eqz v0, :cond_9

    .line 404
    const-string v0, "Gears-J"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    :cond_9
    return-void
.end method

.method private static native nativeService(Landroid/webkit/gears/UrlInterceptHandlerGears$ServiceRequest;)Landroid/webkit/gears/UrlInterceptHandlerGears$ServiceResponse;
.end method


# virtual methods
.method public getPluginData(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/PluginData;
    .registers 15
    .parameter "url"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/webkit/PluginData;"
        }
    .end annotation

    .prologue
    .line 354
    .local p2, requestHeaders:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 356
    .local v8, lowercaseRequestHeaders:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;[Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 358
    .local v10, requestHeadersIt:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :goto_d
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 359
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 360
    .local v6, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 361
    .local v7, key:Ljava/lang/String;
    const/4 v0, 0x2

    new-array v9, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v7, v9, v0

    const/4 v1, 0x1

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v9, v1

    .line 362
    .local v9, mapValue:[Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    .line 364
    .end local v6           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7           #key:Ljava/lang/String;
    .end local v9           #mapValue:[Ljava/lang/String;
    :cond_36
    invoke-virtual {p0, p1, v8}, Landroid/webkit/gears/UrlInterceptHandlerGears;->getServiceResponse(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/gears/UrlInterceptHandlerGears$ServiceResponse;

    move-result-object v11

    .line 365
    .local v11, response:Landroid/webkit/gears/UrlInterceptHandlerGears$ServiceResponse;
    if-nez v11, :cond_3e

    .line 367
    const/4 v0, 0x0

    .line 369
    :goto_3d
    return-object v0

    :cond_3e
    new-instance v0, Landroid/webkit/PluginData;

    invoke-virtual {v11}, Landroid/webkit/gears/UrlInterceptHandlerGears$ServiceResponse;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v11}, Landroid/webkit/gears/UrlInterceptHandlerGears$ServiceResponse;->getContentLength()J

    move-result-wide v2

    invoke-virtual {v11}, Landroid/webkit/gears/UrlInterceptHandlerGears$ServiceResponse;->getResponseHeaders()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v11}, Landroid/webkit/gears/UrlInterceptHandlerGears$ServiceResponse;->getStatusCode()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Landroid/webkit/PluginData;-><init>(Ljava/io/InputStream;JLjava/util/Map;I)V

    goto :goto_3d
.end method

.method public getServiceResponse(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/gears/UrlInterceptHandlerGears$ServiceResponse;
    .registers 4
    .parameter "url"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/webkit/gears/UrlInterceptHandlerGears$ServiceResponse;"
        }
    .end annotation

    .prologue
    .line 387
    .local p2, requestHeaders:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;[Ljava/lang/String;>;"
    const-string v0, "http://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "https://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 389
    const/4 v0, 0x0

    .line 392
    :goto_11
    return-object v0

    :cond_12
    new-instance v0, Landroid/webkit/gears/UrlInterceptHandlerGears$ServiceRequest;

    invoke-direct {v0, p1, p2}, Landroid/webkit/gears/UrlInterceptHandlerGears$ServiceRequest;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {v0}, Landroid/webkit/gears/UrlInterceptHandlerGears;->nativeService(Landroid/webkit/gears/UrlInterceptHandlerGears$ServiceRequest;)Landroid/webkit/gears/UrlInterceptHandlerGears$ServiceResponse;

    move-result-object v0

    goto :goto_11
.end method

.method public declared-synchronized register()V
    .registers 2

    .prologue
    .line 315
    monitor-enter p0

    :try_start_1
    invoke-static {p0}, Landroid/webkit/UrlInterceptRegistry;->registerHandler(Landroid/webkit/UrlInterceptHandler;)Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 316
    monitor-exit p0

    return-void

    .line 315
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public service(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/CacheManager$CacheResult;
    .registers 5
    .parameter "url"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/webkit/CacheManager$CacheResult;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 339
    .local p2, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unimplemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized unregister()V
    .registers 2

    .prologue
    .line 323
    monitor-enter p0

    :try_start_1
    invoke-static {p0}, Landroid/webkit/UrlInterceptRegistry;->unregisterHandler(Landroid/webkit/UrlInterceptHandler;)Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 324
    monitor-exit p0

    return-void

    .line 323
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method
