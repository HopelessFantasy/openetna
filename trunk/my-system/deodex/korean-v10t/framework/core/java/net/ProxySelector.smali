.class public abstract Ljava/net/ProxySelector;
.super Ljava/lang/Object;
.source "ProxySelector.java"


# static fields
.field private static defaultSelector:Ljava/net/ProxySelector;

.field private static final getProxySelectorPermission:Ljava/net/NetPermission;

.field private static final setProxySelectorPermission:Ljava/net/NetPermission;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 32
    new-instance v0, Ljava/net/ProxySelectorImpl;

    invoke-direct {v0}, Ljava/net/ProxySelectorImpl;-><init>()V

    sput-object v0, Ljava/net/ProxySelector;->defaultSelector:Ljava/net/ProxySelector;

    .line 38
    new-instance v0, Ljava/net/NetPermission;

    const-string v1, "getProxySelector"

    invoke-direct {v0, v1}, Ljava/net/NetPermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/net/ProxySelector;->getProxySelectorPermission:Ljava/net/NetPermission;

    .line 45
    new-instance v0, Ljava/net/NetPermission;

    const-string v1, "setProxySelector"

    invoke-direct {v0, v1}, Ljava/net/NetPermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/net/ProxySelector;->setProxySelectorPermission:Ljava/net/NetPermission;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method

.method public static getDefault()Ljava/net/ProxySelector;
    .registers 2

    .prologue
    .line 67
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 68
    .local v0, sm:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_b

    .line 69
    sget-object v1, Ljava/net/ProxySelector;->getProxySelectorPermission:Ljava/net/NetPermission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 71
    :cond_b
    sget-object v1, Ljava/net/ProxySelector;->defaultSelector:Ljava/net/ProxySelector;

    return-object v1
.end method

.method public static setDefault(Ljava/net/ProxySelector;)V
    .registers 3
    .parameter "selector"

    .prologue
    .line 89
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 90
    .local v0, sm:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_b

    .line 91
    sget-object v1, Ljava/net/ProxySelector;->setProxySelectorPermission:Ljava/net/NetPermission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 93
    :cond_b
    sput-object p0, Ljava/net/ProxySelector;->defaultSelector:Ljava/net/ProxySelector;

    .line 94
    return-void
.end method


# virtual methods
.method public abstract connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V
.end method

.method public abstract select(Ljava/net/URI;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/net/Proxy;",
            ">;"
        }
    .end annotation
.end method
