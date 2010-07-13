.class final Lorg/apache/harmony/luni/platform/AdapterManager;
.super Ljava/lang/Object;
.source "AdapterManager.java"

# interfaces
.implements Lorg/apache/harmony/luni/platform/IAdapterManager;


# instance fields
.field private final factories:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/luni/platform/IAdapterFactory;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/luni/platform/AdapterManager;->factories:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public getAdapter(Lorg/apache/harmony/luni/platform/IAdaptable;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 8
    .parameter "adaptable"
    .parameter "adapterType"

    .prologue
    .line 38
    iget-object v4, p0, Lorg/apache/harmony/luni/platform/AdapterManager;->factories:Ljava/util/HashMap;

    invoke-virtual {v4, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 39
    .local v3, factoryList:Ljava/util/List;
    if-eqz v3, :cond_22

    .line 40
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 41
    .local v2, factoryItr:Ljava/util/Iterator;
    :cond_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_22

    .line 42
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/harmony/luni/platform/IAdapterFactory;

    .line 43
    .local v1, factory:Lorg/apache/harmony/luni/platform/IAdapterFactory;
    invoke-interface {v1, p1, p2}, Lorg/apache/harmony/luni/platform/IAdapterFactory;->getAdapter(Lorg/apache/harmony/luni/platform/IAdaptable;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 44
    .local v0, adapter:Ljava/lang/Object;
    if-eqz v0, :cond_e

    move-object v4, v0

    .line 49
    .end local v0           #adapter:Ljava/lang/Object;
    .end local v1           #factory:Lorg/apache/harmony/luni/platform/IAdapterFactory;
    .end local v2           #factoryItr:Ljava/util/Iterator;
    :goto_21
    return-object v4

    :cond_22
    const/4 v4, 0x0

    goto :goto_21
.end method

.method public hasAdapter(Lorg/apache/harmony/luni/platform/IAdaptable;Ljava/lang/Class;)Z
    .registers 4
    .parameter "adaptable"
    .parameter "adapterType"

    .prologue
    .line 53
    invoke-virtual {p0, p1, p2}, Lorg/apache/harmony/luni/platform/AdapterManager;->getAdapter(Lorg/apache/harmony/luni/platform/IAdaptable;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public registerAdapters(Lorg/apache/harmony/luni/platform/IAdapterFactory;Ljava/lang/Class;)V
    .registers 5
    .parameter "factory"
    .parameter "adaptable"

    .prologue
    .line 57
    iget-object v1, p0, Lorg/apache/harmony/luni/platform/AdapterManager;->factories:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 58
    .local v0, factoryList:Ljava/util/List;,"Ljava/util/List<Lorg/apache/harmony/luni/platform/IAdapterFactory;>;"
    if-nez v0, :cond_14

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #factoryList:Ljava/util/List;,"Ljava/util/List<Lorg/apache/harmony/luni/platform/IAdapterFactory;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .restart local v0       #factoryList:Ljava/util/List;,"Ljava/util/List<Lorg/apache/harmony/luni/platform/IAdapterFactory;>;"
    iget-object v1, p0, Lorg/apache/harmony/luni/platform/AdapterManager;->factories:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    :cond_14
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    return-void
.end method

.method public unregisterAdapters(Lorg/apache/harmony/luni/platform/IAdapterFactory;)V
    .registers 5
    .parameter "factory"

    .prologue
    .line 73
    iget-object v2, p0, Lorg/apache/harmony/luni/platform/AdapterManager;->factories:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 74
    .local v1, knownAdaptablesItr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Class;>;"
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 75
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 76
    .local v0, adaptable:Ljava/lang/Class;
    invoke-virtual {p0, p1, v0}, Lorg/apache/harmony/luni/platform/AdapterManager;->unregisterAdapters(Lorg/apache/harmony/luni/platform/IAdapterFactory;Ljava/lang/Class;)V

    goto :goto_a

    .line 78
    .end local v0           #adaptable:Ljava/lang/Class;
    :cond_1a
    return-void
.end method

.method public unregisterAdapters(Lorg/apache/harmony/luni/platform/IAdapterFactory;Ljava/lang/Class;)V
    .registers 5
    .parameter "factory"
    .parameter "adaptable"

    .prologue
    .line 66
    iget-object v1, p0, Lorg/apache/harmony/luni/platform/AdapterManager;->factories:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 67
    .local v0, factoryList:Ljava/util/List;
    if-eqz v0, :cond_d

    .line 68
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 70
    :cond_d
    return-void
.end method
