.class public Lcom/lge/sns/account/AccountInitializeManager;
.super Ljava/lang/Object;
.source "AccountInitializeManager.java"

# interfaces
.implements Lcom/lge/sns/account/AccountInitializer$InitializeListener;


# static fields
.field private static instance:Lcom/lge/sns/account/AccountInitializeManager;


# instance fields
.field private initializerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/lge/sns/account/AccountInitializer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    new-instance v0, Lcom/lge/sns/account/AccountInitializeManager;

    invoke-direct {v0}, Lcom/lge/sns/account/AccountInitializeManager;-><init>()V

    sput-object v0, Lcom/lge/sns/account/AccountInitializeManager;->instance:Lcom/lge/sns/account/AccountInitializeManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lge/sns/account/AccountInitializeManager;->initializerMap:Ljava/util/HashMap;

    .line 125
    return-void
.end method

.method private createAccountInitializer(Landroid/content/Context;Ljava/lang/String;)Lcom/lge/sns/account/AccountInitializer;
    .registers 4
    .parameter "ctx"
    .parameter "snsId"

    .prologue
    .line 117
    const-string v0, "TW"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 118
    new-instance v0, Lcom/lge/sns/account/TwitterAccountInitializer;

    invoke-direct {v0, p1, p2}, Lcom/lge/sns/account/TwitterAccountInitializer;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 120
    :goto_d
    return-object v0

    :cond_e
    new-instance v0, Lcom/lge/sns/account/DefaultAccountInitializer;

    invoke-direct {v0, p1, p2}, Lcom/lge/sns/account/DefaultAccountInitializer;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_d
.end method

.method public static getInstance()Lcom/lge/sns/account/AccountInitializeManager;
    .registers 1

    .prologue
    .line 32
    sget-object v0, Lcom/lge/sns/account/AccountInitializeManager;->instance:Lcom/lge/sns/account/AccountInitializeManager;

    return-object v0
.end method


# virtual methods
.method public addListener(Ljava/lang/String;Lcom/lge/sns/account/AccountInitializer$InitializeListener;)V
    .registers 6
    .parameter "snsId"
    .parameter "listener"

    .prologue
    .line 78
    if-eqz p2, :cond_13

    .line 79
    iget-object v1, p0, Lcom/lge/sns/account/AccountInitializeManager;->initializerMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 80
    :try_start_5
    iget-object v2, p0, Lcom/lge/sns/account/AccountInitializeManager;->initializerMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/sns/account/AccountInitializer;

    .line 81
    .local v0, ai:Lcom/lge/sns/account/AccountInitializer;
    if-eqz v0, :cond_12

    .line 82
    invoke-virtual {v0, p2}, Lcom/lge/sns/account/AccountInitializer;->addInitializeListener(Lcom/lge/sns/account/AccountInitializer$InitializeListener;)V

    .line 84
    :cond_12
    monitor-exit v1

    .line 86
    .end local v0           #ai:Lcom/lge/sns/account/AccountInitializer;
    :cond_13
    return-void

    .line 84
    :catchall_14
    move-exception v2

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_14

    throw v2
.end method

.method public isItializing(Ljava/lang/String;)Z
    .registers 4
    .parameter "snsId"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/lge/sns/account/AccountInitializeManager;->initializerMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 37
    :try_start_3
    iget-object v1, p0, Lcom/lge/sns/account/AccountInitializeManager;->initializerMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 38
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public isItializing(Ljava/lang/String;Lcom/lge/sns/account/AccountInitializer$InitializeListener;)Z
    .registers 5
    .parameter "snsId"
    .parameter "listener"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/lge/sns/account/AccountInitializeManager;->initializerMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 43
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/lge/sns/account/AccountInitializeManager;->isItializing(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 44
    invoke-virtual {p0, p1, p2}, Lcom/lge/sns/account/AccountInitializeManager;->addListener(Ljava/lang/String;Lcom/lge/sns/account/AccountInitializer$InitializeListener;)V

    .line 45
    const/4 v1, 0x1

    monitor-exit v0

    move v0, v1

    .line 47
    :goto_f
    return v0

    :cond_10
    const/4 v1, 0x0

    monitor-exit v0

    move v0, v1

    goto :goto_f

    .line 48
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public itializeAccount(Landroid/content/Context;Ljava/lang/String;Lcom/lge/sns/account/AccountInitializer$InitializeListener;)Z
    .registers 9
    .parameter "ctx"
    .parameter "snsId"
    .parameter "listener"

    .prologue
    const/4 v4, 0x1

    .line 52
    invoke-static {}, Lcom/lge/sns/SnsManager;->getInstance()Lcom/lge/sns/SnsManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/lge/sns/SnsManager;->getAccount(Landroid/content/Context;)Lcom/lge/sns/account/IAccountFacade;

    move-result-object v2

    invoke-interface {v2, p2}, Lcom/lge/sns/account/IAccountFacade;->getAccount(Ljava/lang/String;)Lcom/lge/sns/account/Account;

    move-result-object v0

    .line 53
    .local v0, account:Lcom/lge/sns/account/Account;
    invoke-virtual {v0}, Lcom/lge/sns/account/Account;->isActivated()Z

    move-result v2

    if-eqz v2, :cond_49

    invoke-virtual {v0}, Lcom/lge/sns/account/Account;->isInitilaized()Z

    move-result v2

    if-nez v2, :cond_49

    .line 54
    iget-object v2, p0, Lcom/lge/sns/account/AccountInitializeManager;->initializerMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 55
    :try_start_1c
    iget-object v3, p0, Lcom/lge/sns/account/AccountInitializeManager;->initializerMap:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/sns/account/AccountInitializer;

    .line 56
    .local v1, ai:Lcom/lge/sns/account/AccountInitializer;
    if-nez v1, :cond_40

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/lge/sns/account/AccountInitializeManager;->createAccountInitializer(Landroid/content/Context;Ljava/lang/String;)Lcom/lge/sns/account/AccountInitializer;

    move-result-object v1

    .line 58
    invoke-virtual {v1, p0}, Lcom/lge/sns/account/AccountInitializer;->addInitializeListener(Lcom/lge/sns/account/AccountInitializer$InitializeListener;)V

    .line 59
    if-eqz p3, :cond_32

    .line 60
    invoke-virtual {v1, p3}, Lcom/lge/sns/account/AccountInitializer;->addInitializeListener(Lcom/lge/sns/account/AccountInitializer$InitializeListener;)V

    .line 62
    :cond_32
    invoke-virtual {v1}, Lcom/lge/sns/account/AccountInitializer;->initialize()Z

    move-result v3

    if-eqz v3, :cond_48

    .line 63
    iget-object v3, p0, Lcom/lge/sns/account/AccountInitializeManager;->initializerMap:Ljava/util/HashMap;

    invoke-virtual {v3, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    monitor-exit v2

    move v2, v4

    .line 74
    .end local v1           #ai:Lcom/lge/sns/account/AccountInitializer;
    :goto_3f
    return v2

    .line 67
    .restart local v1       #ai:Lcom/lge/sns/account/AccountInitializer;
    :cond_40
    if-eqz p3, :cond_48

    .line 68
    invoke-virtual {v1, p3}, Lcom/lge/sns/account/AccountInitializer;->addInitializeListener(Lcom/lge/sns/account/AccountInitializer$InitializeListener;)V

    .line 69
    monitor-exit v2

    move v2, v4

    goto :goto_3f

    .line 72
    :cond_48
    monitor-exit v2

    .line 74
    .end local v1           #ai:Lcom/lge/sns/account/AccountInitializer;
    :cond_49
    const/4 v2, 0x0

    goto :goto_3f

    .line 72
    :catchall_4b
    move-exception v3

    monitor-exit v2
    :try_end_4d
    .catchall {:try_start_1c .. :try_end_4d} :catchall_4b

    throw v3
.end method

.method public onFeedAdded(Ljava/lang/String;I)V
    .registers 3
    .parameter "snsId"
    .parameter "count"

    .prologue
    .line 113
    return-void
.end method

.method public onInitializeCompleted(Ljava/lang/String;)V
    .registers 4
    .parameter "snsId"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/lge/sns/account/AccountInitializeManager;->initializerMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 107
    :try_start_3
    iget-object v1, p0, Lcom/lge/sns/account/AccountInitializeManager;->initializerMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    monitor-exit v0

    .line 109
    return-void

    .line 108
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public removeListener(Ljava/lang/String;Lcom/lge/sns/account/AccountInitializer$InitializeListener;)V
    .registers 6
    .parameter "snsId"
    .parameter "listener"

    .prologue
    .line 97
    iget-object v1, p0, Lcom/lge/sns/account/AccountInitializeManager;->initializerMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 98
    :try_start_3
    iget-object v2, p0, Lcom/lge/sns/account/AccountInitializeManager;->initializerMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/sns/account/AccountInitializer;

    .line 99
    .local v0, ai:Lcom/lge/sns/account/AccountInitializer;
    if-eqz v0, :cond_10

    .line 100
    invoke-virtual {v0, p2}, Lcom/lge/sns/account/AccountInitializer;->removeInitializeListener(Lcom/lge/sns/account/AccountInitializer$InitializeListener;)V

    .line 102
    :cond_10
    monitor-exit v1

    .line 103
    return-void

    .line 102
    .end local v0           #ai:Lcom/lge/sns/account/AccountInitializer;
    :catchall_12
    move-exception v2

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v2
.end method

.method public removeListeners(Lcom/lge/sns/account/AccountInitializer$InitializeListener;)V
    .registers 6
    .parameter "listener"

    .prologue
    .line 89
    iget-object v2, p0, Lcom/lge/sns/account/AccountInitializeManager;->initializerMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 90
    :try_start_3
    iget-object v3, p0, Lcom/lge/sns/account/AccountInitializeManager;->initializerMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/sns/account/AccountInitializer;

    .line 91
    .local v0, ai:Lcom/lge/sns/account/AccountInitializer;
    invoke-virtual {v0, p1}, Lcom/lge/sns/account/AccountInitializer;->removeInitializeListener(Lcom/lge/sns/account/AccountInitializer$InitializeListener;)V

    goto :goto_d

    .line 93
    .end local v0           #ai:Lcom/lge/sns/account/AccountInitializer;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_1d
    move-exception v3

    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v3

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_20
    :try_start_20
    monitor-exit v2
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1d

    .line 94
    return-void
.end method
