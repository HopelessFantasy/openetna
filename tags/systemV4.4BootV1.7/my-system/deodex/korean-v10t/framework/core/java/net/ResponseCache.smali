.class public abstract Ljava/net/ResponseCache;
.super Ljava/lang/Object;
.source "ResponseCache.java"


# static fields
.field private static _defaultResponseCache:Ljava/net/ResponseCache;

.field private static getResponseCachepermission:Ljava/net/NetPermission;

.field private static setResponseCachepermission:Ljava/net/NetPermission;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 55
    const/4 v0, 0x0

    sput-object v0, Ljava/net/ResponseCache;->_defaultResponseCache:Ljava/net/ResponseCache;

    .line 61
    new-instance v0, Ljava/net/NetPermission;

    const-string v1, "getResponseCache"

    invoke-direct {v0, v1}, Ljava/net/NetPermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/net/ResponseCache;->getResponseCachepermission:Ljava/net/NetPermission;

    .line 68
    new-instance v0, Ljava/net/NetPermission;

    const-string v1, "setResponseCache"

    invoke-direct {v0, v1}, Ljava/net/NetPermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/net/ResponseCache;->setResponseCachepermission:Ljava/net/NetPermission;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    return-void
.end method

.method private static checkGetResponseCachePermission()V
    .registers 2

    .prologue
    .line 76
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 77
    .local v0, sm:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_b

    .line 78
    sget-object v1, Ljava/net/ResponseCache;->getResponseCachepermission:Ljava/net/NetPermission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 80
    :cond_b
    return-void
.end method

.method private static checkSetResponseCachePermission()V
    .registers 2

    .prologue
    .line 87
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 88
    .local v0, sm:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_b

    .line 89
    sget-object v1, Ljava/net/ResponseCache;->setResponseCachepermission:Ljava/net/NetPermission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 91
    :cond_b
    return-void
.end method

.method public static getDefault()Ljava/net/ResponseCache;
    .registers 1

    .prologue
    .line 112
    invoke-static {}, Ljava/net/ResponseCache;->checkGetResponseCachePermission()V

    .line 113
    sget-object v0, Ljava/net/ResponseCache;->_defaultResponseCache:Ljava/net/ResponseCache;

    return-object v0
.end method

.method public static setDefault(Ljava/net/ResponseCache;)V
    .registers 1
    .parameter "responseCache"

    .prologue
    .line 132
    invoke-static {}, Ljava/net/ResponseCache;->checkSetResponseCachePermission()V

    .line 133
    sput-object p0, Ljava/net/ResponseCache;->_defaultResponseCache:Ljava/net/ResponseCache;

    .line 134
    return-void
.end method


# virtual methods
.method public abstract get(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)Ljava/net/CacheResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/net/CacheResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract put(Ljava/net/URI;Ljava/net/URLConnection;)Ljava/net/CacheRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
