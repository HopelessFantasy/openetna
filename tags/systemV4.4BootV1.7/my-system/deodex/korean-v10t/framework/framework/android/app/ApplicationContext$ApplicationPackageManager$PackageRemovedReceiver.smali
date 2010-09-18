.class final Landroid/app/ApplicationContext$ApplicationPackageManager$PackageRemovedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ApplicationContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ApplicationContext$ApplicationPackageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PackageRemovedReceiver"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 2400
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/ApplicationContext$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 2400
    invoke-direct {p0}, Landroid/app/ApplicationContext$ApplicationPackageManager$PackageRemovedReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 2403
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 2405
    .local v0, data:Landroid/net/Uri;
    if-eqz v0, :cond_70

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    .local v4, ssp:Ljava/lang/String;
    if-eqz v4, :cond_70

    .line 2406
    const/4 v2, 0x0

    .line 2407
    .local v2, needCleanup:Z
    invoke-static {}, Landroid/app/ApplicationContext$ApplicationPackageManager;->access$200()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 2408
    :try_start_12
    invoke-static {}, Landroid/app/ApplicationContext$ApplicationPackageManager;->access$300()Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2409
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/app/ApplicationContext$ApplicationPackageManager$ResourceName;>;"
    :cond_1e
    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_37

    .line 2410
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ApplicationContext$ApplicationPackageManager$ResourceName;

    .line 2411
    .local v3, nm:Landroid/app/ApplicationContext$ApplicationPackageManager$ResourceName;
    iget-object v6, v3, Landroid/app/ApplicationContext$ApplicationPackageManager$ResourceName;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 2413
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 2414
    const/4 v2, 0x1

    goto :goto_1e

    .line 2417
    .end local v3           #nm:Landroid/app/ApplicationContext$ApplicationPackageManager$ResourceName;
    :cond_37
    invoke-static {}, Landroid/app/ApplicationContext$ApplicationPackageManager;->access$400()Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2418
    :cond_43
    :goto_43
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5c

    .line 2419
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ApplicationContext$ApplicationPackageManager$ResourceName;

    .line 2420
    .restart local v3       #nm:Landroid/app/ApplicationContext$ApplicationPackageManager$ResourceName;
    iget-object v6, v3, Landroid/app/ApplicationContext$ApplicationPackageManager$ResourceName;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_43

    .line 2422
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 2423
    const/4 v2, 0x1

    goto :goto_43

    .line 2426
    .end local v3           #nm:Landroid/app/ApplicationContext$ApplicationPackageManager$ResourceName;
    :cond_5c
    monitor-exit v5
    :try_end_5d
    .catchall {:try_start_12 .. :try_end_5d} :catchall_71

    .line 2427
    if-nez v2, :cond_69

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/ActivityThread;->hasPackageInfo(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_70

    .line 2428
    :cond_69
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ActivityThread;->scheduleGcIdler()V

    .line 2431
    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/app/ApplicationContext$ApplicationPackageManager$ResourceName;>;"
    .end local v2           #needCleanup:Z
    .end local v4           #ssp:Ljava/lang/String;
    :cond_70
    return-void

    .line 2426
    .restart local v2       #needCleanup:Z
    .restart local v4       #ssp:Ljava/lang/String;
    :catchall_71
    move-exception v6

    :try_start_72
    monitor-exit v5
    :try_end_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_71

    throw v6
.end method
