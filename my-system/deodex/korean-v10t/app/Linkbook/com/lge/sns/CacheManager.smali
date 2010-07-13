.class public Lcom/lge/sns/CacheManager;
.super Ljava/lang/Object;
.source "CacheManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/sns/CacheManager$CacheManagable;,
        Lcom/lge/sns/CacheManager$ManagedCache;
    }
.end annotation


# static fields
.field static instance:Lcom/lge/sns/CacheManager;


# instance fields
.field list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/sns/CacheManager$CacheManagable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    new-instance v0, Lcom/lge/sns/CacheManager;

    invoke-direct {v0}, Lcom/lge/sns/CacheManager;-><init>()V

    sput-object v0, Lcom/lge/sns/CacheManager;->instance:Lcom/lge/sns/CacheManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/sns/CacheManager;->list:Ljava/util/ArrayList;

    .line 71
    return-void
.end method

.method public static getInstance()Lcom/lge/sns/CacheManager;
    .registers 1

    .prologue
    .line 46
    sget-object v0, Lcom/lge/sns/CacheManager;->instance:Lcom/lge/sns/CacheManager;

    return-object v0
.end method


# virtual methods
.method public addCacheManagable(Lcom/lge/sns/CacheManager$CacheManagable;)V
    .registers 3
    .parameter "m"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lge/sns/CacheManager;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    return-void
.end method

.method public clearCache()V
    .registers 4

    .prologue
    .line 58
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v2

    invoke-virtual {v2}, Ldalvik/system/VMRuntime;->gcSoftReferences()V

    .line 59
    iget-object v2, p0, Lcom/lge/sns/CacheManager;->list:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/sns/CacheManager$CacheManagable;

    .line 60
    .local v0, cm:Lcom/lge/sns/CacheManager$CacheManagable;
    invoke-interface {v0}, Lcom/lge/sns/CacheManager$CacheManagable;->onLowMemory()V

    goto :goto_d

    .line 62
    .end local v0           #cm:Lcom/lge/sns/CacheManager$CacheManagable;
    :cond_1d
    return-void
.end method

.method public createManagedCache(Ljava/lang/Class;Ljava/lang/Class;I)Lcom/lge/sns/CacheManager$ManagedCache;
    .registers 5
    .parameter
    .parameter
    .parameter "size"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TK;>;",
            "Ljava/lang/Class",
            "<TV;>;I)",
            "Lcom/lge/sns/CacheManager$ManagedCache",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 65
    .local p1, keyClass:Ljava/lang/Class;,"Ljava/lang/Class<TK;>;"
    .local p2, valueClass:Ljava/lang/Class;,"Ljava/lang/Class<TV;>;"
    new-instance v0, Lcom/lge/sns/CacheManager$ManagedCache;

    invoke-direct {v0, p3}, Lcom/lge/sns/CacheManager$ManagedCache;-><init>(I)V

    .line 66
    .local v0, cache:Lcom/lge/sns/CacheManager$ManagedCache;,"Lcom/lge/sns/CacheManager$ManagedCache<TK;TV;>;"
    invoke-virtual {p0, v0}, Lcom/lge/sns/CacheManager;->addCacheManagable(Lcom/lge/sns/CacheManager$CacheManagable;)V

    .line 67
    return-object v0
.end method

.method public removeCacheManagable(Lcom/lge/sns/CacheManager$CacheManagable;)V
    .registers 3
    .parameter "m"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/lge/sns/CacheManager;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    return-void
.end method
