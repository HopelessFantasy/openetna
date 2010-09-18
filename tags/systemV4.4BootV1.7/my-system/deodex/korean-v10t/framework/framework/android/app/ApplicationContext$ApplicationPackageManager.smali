.class final Landroid/app/ApplicationContext$ApplicationPackageManager;
.super Landroid/content/pm/PackageManager;
.source "ApplicationContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ApplicationContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ApplicationPackageManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ApplicationContext$ApplicationPackageManager$ResourceName;,
        Landroid/app/ApplicationContext$ApplicationPackageManager$PackageRemovedReceiver;
    }
.end annotation


# static fields
.field private static sIconCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/app/ApplicationContext$ApplicationPackageManager$ResourceName;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sPackageRemovedReceiver:Landroid/content/BroadcastReceiver;

.field private static final sPackageRemovedSync:Ljava/lang/Object;

.field private static sStringCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/app/ApplicationContext$ApplicationPackageManager$ResourceName;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/CharSequence;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sSync:Ljava/lang/Object;


# instance fields
.field mCachedSafeMode:I

.field private final mContext:Landroid/app/ApplicationContext;

.field private final mPM:Landroid/content/pm/IPackageManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 2782
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/app/ApplicationContext$ApplicationPackageManager;->sSync:Ljava/lang/Object;

    .line 2783
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/app/ApplicationContext$ApplicationPackageManager;->sPackageRemovedSync:Ljava/lang/Object;

    .line 2785
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/app/ApplicationContext$ApplicationPackageManager;->sIconCache:Ljava/util/HashMap;

    .line 2787
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/app/ApplicationContext$ApplicationPackageManager;->sStringCache:Ljava/util/HashMap;

    return-void
.end method

.method constructor <init>(Landroid/app/ApplicationContext;Landroid/content/pm/IPackageManager;)V
    .registers 4
    .parameter "context"
    .parameter "pm"

    .prologue
    .line 2347
    invoke-direct {p0}, Landroid/content/pm/PackageManager;-><init>()V

    .line 2327
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/ApplicationContext$ApplicationPackageManager;->mCachedSafeMode:I

    .line 2348
    iput-object p1, p0, Landroid/app/ApplicationContext$ApplicationPackageManager;->mContext:Landroid/app/ApplicationContext;

    .line 2349
    iput-object p2, p0, Landroid/app/ApplicationContext$ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    .line 2350
    return-void
.end method

.method static synthetic access$200()Ljava/lang/Object;
    .registers 1

    .prologue
    .line 1792
    sget-object v0, Landroid/app/ApplicationContext$ApplicationPackageManager;->sSync:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300()Ljava/util/HashMap;
    .registers 1

    .prologue
    .line 1792
    sget-object v0, Landroid/app/ApplicationContext$ApplicationPackageManager;->sIconCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$400()Ljava/util/HashMap;
    .registers 1

    .prologue
    .line 1792
    sget-object v0, Landroid/app/ApplicationContext$ApplicationPackageManager;->sStringCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static configurationChanged()V
    .registers 2

    .prologue
    .line 2340
    sget-object v0, Landroid/app/ApplicationContext$ApplicationPackageManager;->sSync:Ljava/lang/Object;

    monitor-enter v0

    .line 2341
    :try_start_3
    sget-object v1, Landroid/app/ApplicationContext$ApplicationPackageManager;->sIconCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 2342
    sget-object v1, Landroid/app/ApplicationContext$ApplicationPackageManager;->sStringCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 2343
    monitor-exit v0

    .line 2344
    return-void

    .line 2343
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method private establishPackageRemovedReceiver()V
    .registers 8

    .prologue
    .line 2378
    sget-object v6, Landroid/app/ApplicationContext$ApplicationPackageManager;->sPackageRemovedSync:Ljava/lang/Object;

    monitor-enter v6

    .line 2379
    :try_start_3
    sget-object v0, Landroid/app/ApplicationContext$ApplicationPackageManager;->sPackageRemovedReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_25

    .line 2380
    new-instance v0, Landroid/app/ApplicationContext$ApplicationPackageManager$PackageRemovedReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/app/ApplicationContext$ApplicationPackageManager$PackageRemovedReceiver;-><init>(Landroid/app/ApplicationContext$1;)V

    sput-object v0, Landroid/app/ApplicationContext$ApplicationPackageManager;->sPackageRemovedReceiver:Landroid/content/BroadcastReceiver;

    .line 2381
    new-instance v2, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-direct {v2, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2383
    .local v2, filter:Landroid/content/IntentFilter;
    const-string v0, "package"

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2384
    iget-object v0, p0, Landroid/app/ApplicationContext$ApplicationPackageManager;->mContext:Landroid/app/ApplicationContext;

    sget-object v1, Landroid/app/ApplicationContext$ApplicationPackageManager;->sPackageRemovedReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/app/ApplicationContext;->access$100(Landroid/app/ApplicationContext;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;Landroid/content/Context;)Landroid/content/Intent;

    .line 2387
    .end local v2           #filter:Landroid/content/IntentFilter;
    :cond_25
    monitor-exit v6

    .line 2388
    return-void

    .line 2387
    :catchall_27
    move-exception v0

    monitor-exit v6
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw v0
.end method

.method private getCachedIcon(Landroid/app/ApplicationContext$ApplicationPackageManager$ResourceName;)Landroid/graphics/drawable/Drawable;
    .registers 6
    .parameter "name"

    .prologue
    .line 2353
    sget-object v2, Landroid/app/ApplicationContext$ApplicationPackageManager;->sSync:Ljava/lang/Object;

    monitor-enter v2

    .line 2354
    :try_start_3
    sget-object v3, Landroid/app/ApplicationContext$ApplicationPackageManager;->sIconCache:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 2357
    .local v1, wr:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable;>;"
    if-eqz v1, :cond_1d

    .line 2358
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 2359
    .local v0, dr:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_18

    .line 2362
    monitor-exit v2

    move-object v2, v0

    .line 2368
    .end local v0           #dr:Landroid/graphics/drawable/Drawable;
    :goto_17
    return-object v2

    .line 2365
    .restart local v0       #dr:Landroid/graphics/drawable/Drawable;
    :cond_18
    sget-object v3, Landroid/app/ApplicationContext$ApplicationPackageManager;->sIconCache:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2367
    .end local v0           #dr:Landroid/graphics/drawable/Drawable;
    :cond_1d
    monitor-exit v2

    .line 2368
    const/4 v2, 0x0

    goto :goto_17

    .line 2367
    .end local v1           #wr:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable;>;"
    :catchall_20
    move-exception v3

    monitor-exit v2
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v3
.end method

.method private getCachedString(Landroid/app/ApplicationContext$ApplicationPackageManager$ResourceName;)Ljava/lang/CharSequence;
    .registers 6
    .parameter "name"

    .prologue
    .line 2483
    sget-object v2, Landroid/app/ApplicationContext$ApplicationPackageManager;->sSync:Ljava/lang/Object;

    monitor-enter v2

    .line 2484
    :try_start_3
    sget-object v3, Landroid/app/ApplicationContext$ApplicationPackageManager;->sStringCache:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 2485
    .local v1, wr:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Ljava/lang/CharSequence;>;"
    if-eqz v1, :cond_1d

    .line 2486
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 2487
    .local v0, cs:Ljava/lang/CharSequence;
    if-eqz v0, :cond_18

    .line 2488
    monitor-exit v2

    move-object v2, v0

    .line 2494
    .end local v0           #cs:Ljava/lang/CharSequence;
    :goto_17
    return-object v2

    .line 2491
    .restart local v0       #cs:Ljava/lang/CharSequence;
    :cond_18
    sget-object v3, Landroid/app/ApplicationContext$ApplicationPackageManager;->sStringCache:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2493
    .end local v0           #cs:Ljava/lang/CharSequence;
    :cond_1d
    monitor-exit v2

    .line 2494
    const/4 v2, 0x0

    goto :goto_17

    .line 2493
    .end local v1           #wr:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Ljava/lang/CharSequence;>;"
    :catchall_20
    move-exception v3

    monitor-exit v2
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v3
.end method

.method private getLabel(Landroid/app/ApplicationContext$ApplicationPackageManager$ResourceName;Landroid/content/pm/ApplicationInfo;I)Ljava/lang/CharSequence;
    .registers 11
    .parameter "name"
    .parameter "app"
    .parameter "id"

    .prologue
    .line 2506
    invoke-direct {p0, p1}, Landroid/app/ApplicationContext$ApplicationPackageManager;->getCachedString(Landroid/app/ApplicationContext$ApplicationPackageManager$ResourceName;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2507
    .local v0, cs:Ljava/lang/CharSequence;
    if-eqz v0, :cond_8

    move-object v1, v0

    .line 2521
    .end local v0           #cs:Ljava/lang/CharSequence;
    .local v1, cs:Ljava/lang/CharSequence;
    :goto_7
    return-object v1

    .line 2511
    .end local v1           #cs:Ljava/lang/CharSequence;
    .restart local v0       #cs:Ljava/lang/CharSequence;
    :cond_8
    :try_start_8
    invoke-virtual {p0, p2}, Landroid/app/ApplicationContext$ApplicationPackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v3

    .line 2512
    .local v3, r:Landroid/content/res/Resources;
    invoke-virtual {v3, p3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2513
    invoke-direct {p0, p1, v0}, Landroid/app/ApplicationContext$ApplicationPackageManager;->putCachedString(Landroid/app/ApplicationContext$ApplicationPackageManager$ResourceName;Ljava/lang/CharSequence;)V
    :try_end_13
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_13} :catch_15
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_13} :catch_32

    .end local v3           #r:Landroid/content/res/Resources;
    :goto_13
    move-object v1, v0

    .line 2521
    .end local v0           #cs:Ljava/lang/CharSequence;
    .restart local v1       #cs:Ljava/lang/CharSequence;
    goto :goto_7

    .line 2514
    .end local v1           #cs:Ljava/lang/CharSequence;
    .restart local v0       #cs:Ljava/lang/CharSequence;
    :catch_15
    move-exception v4

    move-object v2, v4

    .line 2515
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failure retrieving resources for"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .line 2517
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_32
    move-exception v4

    move-object v2, v4

    .line 2519
    .local v2, e:Ljava/lang/RuntimeException;
    const-string v4, "ApplicationInfo"

    const-string v5, "Failure retrieving activity name"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_13
.end method

.method private putCachedIcon(Landroid/app/ApplicationContext$ApplicationPackageManager$ResourceName;Landroid/graphics/drawable/Drawable;)V
    .registers 6
    .parameter "name"
    .parameter "dr"

    .prologue
    .line 2391
    invoke-direct {p0}, Landroid/app/ApplicationContext$ApplicationPackageManager;->establishPackageRemovedReceiver()V

    .line 2393
    sget-object v0, Landroid/app/ApplicationContext$ApplicationPackageManager;->sSync:Ljava/lang/Object;

    monitor-enter v0

    .line 2394
    :try_start_6
    sget-object v1, Landroid/app/ApplicationContext$ApplicationPackageManager;->sIconCache:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2397
    monitor-exit v0

    .line 2398
    return-void

    .line 2397
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_12

    throw v1
.end method

.method private putCachedString(Landroid/app/ApplicationContext$ApplicationPackageManager$ResourceName;Ljava/lang/CharSequence;)V
    .registers 6
    .parameter "name"
    .parameter "cs"

    .prologue
    .line 2498
    invoke-direct {p0}, Landroid/app/ApplicationContext$ApplicationPackageManager;->establishPackageRemovedReceiver()V

    .line 2500
    sget-object v0, Landroid/app/ApplicationContext$ApplicationPackageManager;->sSync:Ljava/lang/Object;

    monitor-enter v0

    .line 2501
    :try_start_6
    sget-object v1, Landroid/app/ApplicationContext$ApplicationPackageManager;->sStringCache:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2502
    monitor-exit v0

    .line 2503
    return-void

    .line 2502
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_12

    throw v1
.end method


# virtual methods
.method public addPackageToPreferred(Ljava/lang/String;)V
    .registers 3
    .parameter "packageName"

    .prologue
    .line 2674
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationContext$ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageManager;->addPackageToPreferred(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 2678
    :goto_5
    return-void

    .line 2675
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public addPermission(Landroid/content/pm/PermissionInfo;)Z
    .registers 5
    .parameter "info"

    .prologue
    .line 1985
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationContext$ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->addPermission(Landroid/content/pm/PermissionInfo;)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    return v1

    .line 1986
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 1987
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .registers 6
    .parameter "filter"
    .parameter "match"
    .parameter "set"
    .parameter "activity"

    .prologue
    .line 2703
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationContext$ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/content/pm/IPackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 2707
    :goto_5
    return-void

    .line 2704
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public checkPermission(Ljava/lang/String;Ljava/lang/String;)I
    .registers 6
    .parameter "permName"
    .parameter "pkgName"

    .prologue
    .line 1976
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationContext$ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    return v1

    .line 1977
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 1978
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public checkSignatures(Ljava/lang/String;Ljava/lang/String;)I
    .registers 6
    .parameter "pkg1"
    .parameter "pkg2"

    .prologue
    .line 2003
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationContext$ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    return v1

    .line 2004
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 2005
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V
    .registers 4
    .parameter "packageName"
    .parameter "observer"

    .prologue
    .line 2630
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationContext$ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1, p2}, Landroid/content/pm/IPackageManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 2634
    :goto_5
    return-void

    .line 2631
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public clearPackagePreferredActivities(Ljava/lang/String;)V
    .registers 3
    .parameter "packageName"

    .prologue
    .line 2722
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationContext$ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 2726
    :goto_5
    return-void

    .line 2723
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V
    .registers 4
    .parameter "packageName"
    .parameter "observer"

    .prologue
    .line 2639
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationContext$ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1, p2}, Landroid/content/pm/IPackageManager;->deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 2643
    :goto_5
    return-void

    .line 2640
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V
    .registers 5
    .parameter "packageName"
    .parameter "observer"
    .parameter "flags"

    .prologue
    .line 2621
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationContext$ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/pm/IPackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 2625
    :goto_5
    return-void

    .line 2622
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public freeStorage(JLandroid/content/IntentSender;)V
    .registers 5
    .parameter "freeStorageSize"
    .parameter "pi"

    .prologue
    .line 2656
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationContext$ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/pm/IPackageManager;->freeStorage(JLandroid/content/IntentSender;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 2660
    :goto_5
    return-void

    .line 2657
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public freeStorageAndNotify(JLandroid/content/pm/IPackageDataObserver;)V
    .registers 5
    .parameter "idealStorageSize"
    .parameter "observer"

    .prologue
    .line 2647
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationContext$ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/pm/IPackageManager;->freeStorageAndNotify(JLandroid/content/pm/IPackageDataObserver;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 2651
    :goto_5
    return-void

    .line 2648
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .registers 3
    .parameter "activityName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 2245
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/ApplicationContext$ApplicationPackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getActivityIcon(Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;
    .registers 5
    .parameter "intent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 2250
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 2251
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/app/ApplicationContext$ApplicationPackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2257
    :goto_e
    return-object v1

    .line 2254
    :cond_f
    const/high16 v1, 0x1

    invoke-virtual {p0, p1, v1}, Landroid/app/ApplicationContext$ApplicationPackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 2256
    .local v0, info:Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_1e

    .line 2257
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v1, p0}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_e

    .line 2260
    :cond_1e
    new-instance v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-virtual {p1}, Landroid/content/Intent;->toURI()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    .registers 7
    .parameter "className"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 1923
    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationContext$ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, p1, p2}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_9

    move-result-object v0

    .line 1924
    .local v0, ai:Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_13

    .line 1925
    return-object v0

    .line 1927
    .end local v0           #ai:Landroid/content/pm/ActivityInfo;
    :catch_9
    move-exception v2

    move-object v1, v2

    .line 1928
    .local v1, e:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Package manager has died"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1931
    .end local v1           #e:Landroid/os/RemoteException;
    .restart local v0       #ai:Landroid/content/pm/ActivityInfo;
    :cond_13
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-virtual {p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getAllPermissionGroups(I)Ljava/util/List;
    .registers 5
    .parameter "flags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PermissionGroupInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1898
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationContext$ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->getAllPermissionGroups(I)Ljava/util/List;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    return-object v1

    .line 1899
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 1900
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getApplicationEnabledSetting(Ljava/lang/String;)I
    .registers 3
    .parameter "packageName"

    .prologue
    .line 2772
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationContext$ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v0

    .line 2776
    :goto_6
    return v0

    .line 2773
    :catch_7
    move-exception v0

    .line 2776
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .registers 10
    .parameter "info"

    .prologue
    const-string v7, "PackageManager"

    .line 2269
    iget v2, p1, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 2270
    .local v2, icon:I
    if-eqz v2, :cond_3c

    .line 2271
    new-instance v3, Landroid/app/ApplicationContext$ApplicationPackageManager$ResourceName;

    invoke-direct {v3, p1, v2}, Landroid/app/ApplicationContext$ApplicationPackageManager$ResourceName;-><init>(Landroid/content/pm/ApplicationInfo;I)V

    .line 2272
    .local v3, name:Landroid/app/ApplicationContext$ApplicationPackageManager$ResourceName;
    invoke-direct {p0, v3}, Landroid/app/ApplicationContext$ApplicationPackageManager;->getCachedIcon(Landroid/app/ApplicationContext$ApplicationPackageManager$ResourceName;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2273
    .local v0, dr:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_13

    move-object v5, v0

    .line 2293
    .end local v0           #dr:Landroid/graphics/drawable/Drawable;
    .end local v3           #name:Landroid/app/ApplicationContext$ApplicationPackageManager$ResourceName;
    :goto_12
    return-object v5

    .line 2277
    .restart local v0       #dr:Landroid/graphics/drawable/Drawable;
    .restart local v3       #name:Landroid/app/ApplicationContext$ApplicationPackageManager$ResourceName;
    :cond_13
    :try_start_13
    invoke-virtual {p0, p1}, Landroid/app/ApplicationContext$ApplicationPackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v4

    .line 2278
    .local v4, r:Landroid/content/res/Resources;
    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2282
    invoke-direct {p0, v3, v0}, Landroid/app/ApplicationContext$ApplicationPackageManager;->putCachedIcon(Landroid/app/ApplicationContext$ApplicationPackageManager$ResourceName;Landroid/graphics/drawable/Drawable;)V
    :try_end_1e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_13 .. :try_end_1e} :catch_20
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_1e} :catch_41

    move-object v5, v0

    .line 2283
    goto :goto_12

    .line 2284
    .end local v4           #r:Landroid/content/res/Resources;
    :catch_20
    move-exception v5

    move-object v1, v5

    .line 2285
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failure retrieving resources for"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2293
    .end local v0           #dr:Landroid/graphics/drawable/Drawable;
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v3           #name:Landroid/app/ApplicationContext$ApplicationPackageManager$ResourceName;
    :cond_3c
    :goto_3c
    invoke-virtual {p0}, Landroid/app/ApplicationContext$ApplicationPackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto :goto_12

    .line 2287
    .restart local v0       #dr:Landroid/graphics/drawable/Drawable;
    .restart local v3       #name:Landroid/app/ApplicationContext$ApplicationPackageManager$ResourceName;
    :catch_41
    move-exception v5

    move-object v1, v5

    .line 2290
    .local v1, e:Ljava/lang/RuntimeException;
    const-string v5, "PackageManager"

    const-string v5, "Failure retrieving app icon"

    invoke-static {v7, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3c
.end method

.method public getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 3
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 2298
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/ApplicationContext$ApplicationPackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/ApplicationContext$ApplicationPackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    .registers 7
    .parameter "packageName"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 1908
    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationContext$ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, p1, p2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_9

    move-result-object v0

    .line 1909
    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_13

    .line 1910
    return-object v0

    .line 1912
    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    :catch_9
    move-exception v2

    move-object v1, v2

    .line 1913
    .local v1, e:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Package manager has died"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1916
    .end local v1           #e:Landroid/os/RemoteException;
    .restart local v0       #ai:Landroid/content/pm/ApplicationInfo;
    :cond_13
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v2, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    .registers 5
    .parameter "info"

    .prologue
    .line 2585
    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v2, :cond_7

    .line 2586
    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 2595
    :goto_6
    return-object v2

    .line 2588
    :cond_7
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->labelRes:I

    .line 2589
    .local v1, id:I
    if-eqz v1, :cond_18

    .line 2590
    new-instance v2, Landroid/app/ApplicationContext$ApplicationPackageManager$ResourceName;

    invoke-direct {v2, p1, v1}, Landroid/app/ApplicationContext$ApplicationPackageManager$ResourceName;-><init>(Landroid/content/pm/ApplicationInfo;I)V

    invoke-direct {p0, v2, p1, v1}, Landroid/app/ApplicationContext$ApplicationPackageManager;->getLabel(Landroid/app/ApplicationContext$ApplicationPackageManager$ResourceName;Landroid/content/pm/ApplicationInfo;I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2591
    .local v0, cs:Ljava/lang/CharSequence;
    if-eqz v0, :cond_18

    move-object v2, v0

    .line 2592
    goto :goto_6

    .line 2595
    .end local v0           #cs:Ljava/lang/CharSequence;
    :cond_18
    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    goto :goto_6
.end method

.method public getComponentEnabledSetting(Landroid/content/ComponentName;)I
    .registers 3
    .parameter "componentName"

    .prologue
    .line 2752
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationContext$ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v0

    .line 2756
    :goto_6
    return v0

    .line 2753
    :catch_7
    move-exception v0

    .line 2756
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;
    .registers 3

    .prologue
    .line 2264
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080093

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .registers 12
    .parameter "packageName"
    .parameter "resid"
    .parameter "appInfo"

    .prologue
    const/4 v6, 0x0

    const-string v7, "PackageManager"

    .line 2201
    new-instance v2, Landroid/app/ApplicationContext$ApplicationPackageManager$ResourceName;

    invoke-direct {v2, p1, p2}, Landroid/app/ApplicationContext$ApplicationPackageManager$ResourceName;-><init>(Ljava/lang/String;I)V

    .line 2202
    .local v2, name:Landroid/app/ApplicationContext$ApplicationPackageManager$ResourceName;
    invoke-direct {p0, v2}, Landroid/app/ApplicationContext$ApplicationPackageManager;->getCachedIcon(Landroid/app/ApplicationContext$ApplicationPackageManager$ResourceName;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2203
    .local v0, dr:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_10

    move-object v4, v0

    .line 2240
    :goto_f
    return-object v4

    .line 2206
    :cond_10
    if-nez p3, :cond_17

    .line 2208
    const/4 v4, 0x0

    :try_start_13
    invoke-virtual {p0, p1, v4}, Landroid/app/ApplicationContext$ApplicationPackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_16
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_13 .. :try_end_16} :catch_24

    move-result-object p3

    .line 2214
    :cond_17
    :try_start_17
    invoke-virtual {p0, p3}, Landroid/app/ApplicationContext$ApplicationPackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v3

    .line 2215
    .local v3, r:Landroid/content/res/Resources;
    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2228
    invoke-direct {p0, v2, v0}, Landroid/app/ApplicationContext$ApplicationPackageManager;->putCachedIcon(Landroid/app/ApplicationContext$ApplicationPackageManager$ResourceName;Landroid/graphics/drawable/Drawable;)V
    :try_end_22
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_17 .. :try_end_22} :catch_27
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_22} :catch_45

    move-object v4, v0

    .line 2229
    goto :goto_f

    .line 2209
    .end local v3           #r:Landroid/content/res/Resources;
    :catch_24
    move-exception v1

    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object v4, v6

    .line 2210
    goto :goto_f

    .line 2230
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_27
    move-exception v4

    move-object v1, v4

    .line 2231
    .restart local v1       #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failure retrieving resources for"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_43
    move-object v4, v6

    .line 2240
    goto :goto_f

    .line 2233
    :catch_45
    move-exception v4

    move-object v1, v4

    .line 2236
    .local v1, e:Ljava/lang/RuntimeException;
    const-string v4, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failure retrieving icon 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_43
.end method

.method public getInstalledApplications(I)Ljava/util/List;
    .registers 5
    .parameter "flags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2053
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationContext$ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->getInstalledApplications(I)Ljava/util/List;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    return-object v1

    .line 2054
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 2055
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getInstalledPackages(I)Ljava/util/List;
    .registers 5
    .parameter "flags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2044
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationContext$ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->getInstalledPackages(I)Ljava/util/List;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    return-object v1

    .line 2045
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 2046
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "packageName"

    .prologue
    .line 2611
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationContext$ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    .line 2615
    :goto_6
    return-object v0

    .line 2612
    :catch_7
    move-exception v0

    .line 2615
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public getInstrumentationInfo(Landroid/content/ComponentName;I)Landroid/content/pm/InstrumentationInfo;
    .registers 7
    .parameter "className"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 2177
    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationContext$ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, p1, p2}, Landroid/content/pm/IPackageManager;->getInstrumentationInfo(Landroid/content/ComponentName;I)Landroid/content/pm/InstrumentationInfo;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_9

    move-result-object v1

    .line 2179
    .local v1, ii:Landroid/content/pm/InstrumentationInfo;
    if-eqz v1, :cond_13

    .line 2180
    return-object v1

    .line 2182
    .end local v1           #ii:Landroid/content/pm/InstrumentationInfo;
    :catch_9
    move-exception v2

    move-object v0, v2

    .line 2183
    .local v0, e:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Package manager has died"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 2186
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v1       #ii:Landroid/content/pm/InstrumentationInfo;
    :cond_13
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-virtual {p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;
    .registers 9
    .parameter "packageName"

    .prologue
    const/4 v4, 0x0

    const-string v6, "android.intent.category.INFO"

    const-string v5, "android.intent.action.MAIN"

    .line 1813
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1814
    .local v1, intentToResolve:Landroid/content/Intent;
    const-string v3, "android.intent.category.INFO"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1815
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1816
    invoke-virtual {p0, v1, v4}, Landroid/app/ApplicationContext$ApplicationPackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 1819
    .local v2, resolveInfo:Landroid/content/pm/ResolveInfo;
    if-nez v2, :cond_2b

    .line 1821
    const-string v3, "android.intent.category.INFO"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->removeCategory(Ljava/lang/String;)V

    .line 1822
    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1823
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1824
    invoke-virtual {p0, v1, v4}, Landroid/app/ApplicationContext$ApplicationPackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 1826
    :cond_2b
    if-nez v2, :cond_2f

    .line 1827
    const/4 v3, 0x0

    .line 1832
    :goto_2e
    return-object v3

    .line 1829
    :cond_2f
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1830
    .local v0, intent:Landroid/content/Intent;
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, p1, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1831
    const/high16 v3, 0x1000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-object v3, v0

    .line 1832
    goto :goto_2e
.end method

.method public getNameForUid(I)Ljava/lang/String;
    .registers 5
    .parameter "uid"

    .prologue
    .line 2021
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationContext$ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->getNameForUid(I)Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    return-object v1

    .line 2022
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 2023
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getPackageGids(Ljava/lang/String;)[I
    .registers 6
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 1839
    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationContext$ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, p1}, Landroid/content/pm/IPackageManager;->getPackageGids(Ljava/lang/String;)[I

    move-result-object v1

    .line 1840
    .local v1, gids:[I
    if-eqz v1, :cond_b

    array-length v2, v1
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_c

    if-lez v2, :cond_16

    .line 1841
    :cond_b
    return-object v1

    .line 1843
    .end local v1           #gids:[I
    :catch_c
    move-exception v2

    move-object v0, v2

    .line 1844
    .local v0, e:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Package manager has died"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1847
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v1       #gids:[I
    :cond_16
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v2, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .registers 7
    .parameter "packageName"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 1797
    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationContext$ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, p1, p2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_9

    move-result-object v1

    .line 1798
    .local v1, pi:Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_13

    .line 1799
    return-object v1

    .line 1801
    .end local v1           #pi:Landroid/content/pm/PackageInfo;
    :catch_9
    move-exception v2

    move-object v0, v2

    .line 1802
    .local v0, e:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Package manager has died"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1805
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v1       #pi:Landroid/content/pm/PackageInfo;
    :cond_13
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v2, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getPackageSizeInfo(Ljava/lang/String;Landroid/content/pm/IPackageStatsObserver;)V
    .registers 4
    .parameter "packageName"
    .parameter "observer"

    .prologue
    .line 2666
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationContext$ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1, p2}, Landroid/content/pm/IPackageManager;->getPackageSizeInfo(Ljava/lang/String;Landroid/content/pm/IPackageStatsObserver;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 2670
    :goto_5
    return-void

    .line 2667
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public getPackagesForUid(I)[Ljava/lang/String;
    .registers 5
    .parameter "uid"

    .prologue
    .line 2012
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationContext$ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    return-object v1

    .line 2013
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 2014
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;
    .registers 7
    .parameter "name"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 1884
    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationContext$ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, p1, p2}, Landroid/content/pm/IPackageManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_9

    move-result-object v1

    .line 1885
    .local v1, pgi:Landroid/content/pm/PermissionGroupInfo;
    if-eqz v1, :cond_13

    .line 1886
    return-object v1

    .line 1888
    .end local v1           #pgi:Landroid/content/pm/PermissionGroupInfo;
    :catch_9
    move-exception v2

    move-object v0, v2

    .line 1889
    .local v0, e:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Package manager has died"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1892
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v1       #pgi:Landroid/content/pm/PermissionGroupInfo;
    :cond_13
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v2, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;
    .registers 7
    .parameter "name"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 1854
    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationContext$ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, p1, p2}, Landroid/content/pm/IPackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_9

    move-result-object v1

    .line 1855
    .local v1, pi:Landroid/content/pm/PermissionInfo;
    if-eqz v1, :cond_13

    .line 1856
    return-object v1

    .line 1858
    .end local v1           #pi:Landroid/content/pm/PermissionInfo;
    :catch_9
    move-exception v2

    move-object v0, v2

    .line 1859
    .local v0, e:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Package manager has died"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1862
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v1       #pi:Landroid/content/pm/PermissionInfo;
    :cond_13
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v2, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I
    .registers 5
    .parameter
    .parameter
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/IntentFilter;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 2732
    .local p1, outFilters:Ljava/util/List;,"Ljava/util/List<Landroid/content/IntentFilter;>;"
    .local p2, outActivities:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationContext$ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/pm/IPackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v0

    .line 2736
    :goto_6
    return v0

    .line 2733
    :catch_7
    move-exception v0

    .line 2736
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public getPreferredPackages(I)Ljava/util/List;
    .registers 3
    .parameter "flags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2692
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationContext$ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageManager;->getPreferredPackages(I)Ljava/util/List;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    .line 2696
    :goto_6
    return-object v0

    .line 2693
    :catch_7
    move-exception v0

    .line 2696
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_6
.end method

.method public getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    .registers 7
    .parameter "className"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 1938
    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationContext$ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, p1, p2}, Landroid/content/pm/IPackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_9

    move-result-object v0

    .line 1939
    .local v0, ai:Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_13

    .line 1940
    return-object v0

    .line 1942
    .end local v0           #ai:Landroid/content/pm/ActivityInfo;
    :catch_9
    move-exception v2

    move-object v1, v2

    .line 1943
    .local v1, e:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Package manager has died"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1946
    .end local v1           #e:Landroid/os/RemoteException;
    .restart local v0       #ai:Landroid/content/pm/ActivityInfo;
    :cond_13
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-virtual {p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getResourcesForActivity(Landroid/content/ComponentName;)Landroid/content/res/Resources;
    .registers 3
    .parameter "activityName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 2303
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/ApplicationContext$ApplicationPackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, v0}, Landroid/app/ApplicationContext$ApplicationPackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;
    .registers 6
    .parameter "app"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 2309
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v2, "system"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 2310
    iget-object v1, p0, Landroid/app/ApplicationContext$ApplicationPackageManager;->mContext:Landroid/app/ApplicationContext;

    iget-object v1, v1, Landroid/app/ApplicationContext;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ApplicationContext;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ApplicationContext;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 2316
    :goto_16
    return-object v1

    .line 2312
    :cond_17
    iget-object v1, p0, Landroid/app/ApplicationContext$ApplicationPackageManager;->mContext:Landroid/app/ApplicationContext;

    iget-object v1, v1, Landroid/app/ApplicationContext;->mMainThread:Landroid/app/ActivityThread;

    iget v2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    if-ne v2, v3, :cond_31

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    :goto_25
    iget-object v3, p0, Landroid/app/ApplicationContext$ApplicationPackageManager;->mContext:Landroid/app/ApplicationContext;

    iget-object v3, v3, Landroid/app/ApplicationContext;->mPackageInfo:Landroid/app/ActivityThread$PackageInfo;

    invoke-virtual {v1, v2, v3}, Landroid/app/ActivityThread;->getTopLevelResources(Ljava/lang/String;Landroid/app/ActivityThread$PackageInfo;)Landroid/content/res/Resources;

    move-result-object v0

    .line 2315
    .local v0, r:Landroid/content/res/Resources;
    if-eqz v0, :cond_34

    move-object v1, v0

    .line 2316
    goto :goto_16

    .line 2312
    .end local v0           #r:Landroid/content/res/Resources;
    :cond_31
    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    goto :goto_25

    .line 2318
    .restart local v0       #r:Landroid/content/res/Resources;
    :cond_34
    new-instance v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to open "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    .registers 3
    .parameter "appPackageName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 2323
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/ApplicationContext$ApplicationPackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/ApplicationContext$ApplicationPackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    .registers 7
    .parameter "className"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 1953
    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationContext$ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, p1, p2}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_9

    move-result-object v1

    .line 1954
    .local v1, si:Landroid/content/pm/ServiceInfo;
    if-eqz v1, :cond_13

    .line 1955
    return-object v1

    .line 1957
    .end local v1           #si:Landroid/content/pm/ServiceInfo;
    :catch_9
    move-exception v2

    move-object v0, v2

    .line 1958
    .local v0, e:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Package manager has died"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1961
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v1       #si:Landroid/content/pm/ServiceInfo;
    :cond_13
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-virtual {p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getSystemSharedLibraryNames()[Ljava/lang/String;
    .registers 4

    .prologue
    .line 1967
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationContext$ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1}, Landroid/content/pm/IPackageManager;->getSystemSharedLibraryNames()[Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    return-object v1

    .line 1968
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 1969
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    .registers 12
    .parameter "packageName"
    .parameter "resid"
    .parameter "appInfo"

    .prologue
    const/4 v6, 0x0

    const-string v7, "PackageManager"

    .line 2527
    new-instance v1, Landroid/app/ApplicationContext$ApplicationPackageManager$ResourceName;

    invoke-direct {v1, p1, p2}, Landroid/app/ApplicationContext$ApplicationPackageManager$ResourceName;-><init>(Ljava/lang/String;I)V

    .line 2528
    .local v1, name:Landroid/app/ApplicationContext$ApplicationPackageManager$ResourceName;
    invoke-direct {p0, v1}, Landroid/app/ApplicationContext$ApplicationPackageManager;->getCachedString(Landroid/app/ApplicationContext$ApplicationPackageManager$ResourceName;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 2529
    .local v3, text:Ljava/lang/CharSequence;
    if-eqz v3, :cond_10

    move-object v4, v3

    .line 2554
    :goto_f
    return-object v4

    .line 2532
    :cond_10
    if-nez p3, :cond_17

    .line 2534
    const/4 v4, 0x0

    :try_start_13
    invoke-virtual {p0, p1, v4}, Landroid/app/ApplicationContext$ApplicationPackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_16
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_13 .. :try_end_16} :catch_24

    move-result-object p3

    .line 2540
    :cond_17
    :try_start_17
    invoke-virtual {p0, p3}, Landroid/app/ApplicationContext$ApplicationPackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v2

    .line 2541
    .local v2, r:Landroid/content/res/Resources;
    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 2542
    invoke-direct {p0, v1, v3}, Landroid/app/ApplicationContext$ApplicationPackageManager;->putCachedString(Landroid/app/ApplicationContext$ApplicationPackageManager$ResourceName;Ljava/lang/CharSequence;)V
    :try_end_22
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_17 .. :try_end_22} :catch_27
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_22} :catch_45

    move-object v4, v3

    .line 2543
    goto :goto_f

    .line 2535
    .end local v2           #r:Landroid/content/res/Resources;
    :catch_24
    move-exception v0

    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object v4, v6

    .line 2536
    goto :goto_f

    .line 2544
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_27
    move-exception v4

    move-object v0, v4

    .line 2545
    .restart local v0       #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failure retrieving resources for"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_43
    move-object v4, v6

    .line 2554
    goto :goto_f

    .line 2547
    :catch_45
    move-exception v4

    move-object v0, v4

    .line 2550
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v4, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failure retrieving text 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_43
.end method

.method public getUidForSharedUser(Ljava/lang/String;)I
    .registers 7
    .parameter "sharedUserName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 2031
    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationContext$ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, p1}, Landroid/content/pm/IPackageManager;->getUidForSharedUser(Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_a

    move-result v1

    .line 2032
    .local v1, uid:I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_14

    .line 2033
    return v1

    .line 2035
    .end local v1           #uid:I
    :catch_a
    move-exception v2

    move-object v0, v2

    .line 2036
    .local v0, e:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Package manager has died"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 2038
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v1       #uid:I
    :cond_14
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No shared userid for user:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getXml(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/content/res/XmlResourceParser;
    .registers 10
    .parameter "packageName"
    .parameter "resid"
    .parameter "appInfo"

    .prologue
    const/4 v4, 0x0

    const-string v5, "PackageManager"

    .line 2560
    if-nez p3, :cond_a

    .line 2562
    const/4 v2, 0x0

    :try_start_6
    invoke-virtual {p0, p1, v2}, Landroid/app/ApplicationContext$ApplicationPackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_9} :catch_13

    move-result-object p3

    .line 2568
    :cond_a
    :try_start_a
    invoke-virtual {p0, p3}, Landroid/app/ApplicationContext$ApplicationPackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v1

    .line 2569
    .local v1, r:Landroid/content/res/Resources;
    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_11} :catch_16
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_11} :catch_40

    move-result-object v2

    .line 2580
    .end local v1           #r:Landroid/content/res/Resources;
    :goto_12
    return-object v2

    .line 2563
    :catch_13
    move-exception v0

    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object v2, v4

    .line 2564
    goto :goto_12

    .line 2570
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_16
    move-exception v2

    move-object v0, v2

    .line 2573
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v2, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failure retrieving xml 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0           #e:Ljava/lang/RuntimeException;
    :goto_3e
    move-object v2, v4

    .line 2580
    goto :goto_12

    .line 2576
    :catch_40
    move-exception v2

    move-object v0, v2

    .line 2577
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failure retrieving resources for"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3e
.end method

.method public installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V
    .registers 6
    .parameter "packageURI"
    .parameter "observer"
    .parameter "flags"
    .parameter "installerPackageName"

    .prologue
    .line 2602
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationContext$ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/content/pm/IPackageManager;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 2606
    :goto_5
    return-void

    .line 2603
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public isSafeMode()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2330
    :try_start_2
    iget v1, p0, Landroid/app/ApplicationContext$ApplicationPackageManager;->mCachedSafeMode:I

    if-gez v1, :cond_11

    .line 2331
    iget-object v1, p0, Landroid/app/ApplicationContext$ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1}, Landroid/content/pm/IPackageManager;->isSafeMode()Z

    move-result v1

    if-eqz v1, :cond_17

    move v1, v3

    :goto_f
    iput v1, p0, Landroid/app/ApplicationContext$ApplicationPackageManager;->mCachedSafeMode:I

    .line 2333
    :cond_11
    iget v1, p0, Landroid/app/ApplicationContext$ApplicationPackageManager;->mCachedSafeMode:I
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_13} :catch_1b

    if-eqz v1, :cond_19

    move v1, v3

    :goto_16
    return v1

    :cond_17
    move v1, v2

    .line 2331
    goto :goto_f

    :cond_19
    move v1, v2

    .line 2333
    goto :goto_16

    .line 2334
    :catch_1b
    move-exception v1

    move-object v0, v1

    .line 2335
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;
    .registers 6
    .parameter "intent"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2119
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationContext$ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v2, p0, Landroid/app/ApplicationContext$ApplicationPackageManager;->mContext:Landroid/app/ApplicationContext;

    invoke-virtual {v2}, Landroid/app/ApplicationContext;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2, p2}, Landroid/content/pm/IPackageManager;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_11

    move-result-object v1

    return-object v1

    .line 2123
    :catch_11
    move-exception v1

    move-object v0, v1

    .line 2124
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public queryContentProviders(Ljava/lang/String;II)Ljava/util/List;
    .registers 7
    .parameter "processName"
    .parameter "uid"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ProviderInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2166
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationContext$ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/content/pm/IPackageManager;->queryContentProviders(Ljava/lang/String;II)Ljava/util/List;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    return-object v1

    .line 2167
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 2168
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public queryInstrumentation(Ljava/lang/String;I)Ljava/util/List;
    .registers 6
    .parameter "targetPackage"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/InstrumentationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2193
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationContext$ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPackageManager;->queryInstrumentation(Ljava/lang/String;I)Ljava/util/List;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    return-object v1

    .line 2194
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 2195
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;
    .registers 6
    .parameter "intent"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2075
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationContext$ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v2, p0, Landroid/app/ApplicationContext$ApplicationPackageManager;->mContext:Landroid/app/ApplicationContext;

    invoke-virtual {v2}, Landroid/app/ApplicationContext;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2, p2}, Landroid/content/pm/IPackageManager;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_11

    move-result-object v1

    return-object v1

    .line 2079
    :catch_11
    move-exception v1

    move-object v0, v1

    .line 2080
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I)Ljava/util/List;
    .registers 20
    .parameter "caller"
    .parameter "specifics"
    .parameter "intent"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "[",
            "Landroid/content/Intent;",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2088
    iget-object v2, p0, Landroid/app/ApplicationContext$ApplicationPackageManager;->mContext:Landroid/app/ApplicationContext;

    invoke-virtual {v2}, Landroid/app/ApplicationContext;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    .line 2090
    .local v12, resolver:Landroid/content/ContentResolver;
    const/4 v5, 0x0

    .line 2091
    .local v5, specificTypes:[Ljava/lang/String;
    if-eqz p2, :cond_23

    .line 2092
    move-object/from16 v0, p2

    array-length v0, v0

    move v9, v0

    .line 2093
    .local v9, N:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_e
    if-ge v11, v9, :cond_23

    .line 2094
    aget-object v13, p2, v11

    .line 2095
    .local v13, sp:Landroid/content/Intent;
    if-eqz v13, :cond_20

    .line 2096
    invoke-virtual {v13, v12}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v14

    .line 2097
    .local v14, t:Ljava/lang/String;
    if-eqz v14, :cond_20

    .line 2098
    if-nez v5, :cond_1e

    .line 2099
    new-array v5, v9, [Ljava/lang/String;

    .line 2101
    :cond_1e
    aput-object v14, v5, v11

    .line 2093
    .end local v14           #t:Ljava/lang/String;
    :cond_20
    add-int/lit8 v11, v11, 0x1

    goto :goto_e

    .line 2108
    .end local v9           #N:I
    .end local v11           #i:I
    .end local v13           #sp:Landroid/content/Intent;
    :cond_23
    :try_start_23
    iget-object v2, p0, Landroid/app/ApplicationContext$ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    move-object/from16 v0, p3

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v6, p3

    move/from16 v8, p4

    invoke-interface/range {v2 .. v8}, Landroid/content/pm/IPackageManager;->queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;[Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_37} :catch_39

    move-result-object v2

    return-object v2

    .line 2111
    :catch_39
    move-exception v2

    move-object v10, v2

    .line 2112
    .local v10, e:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Package manager has died"

    invoke-direct {v2, v3, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;
    .registers 6
    .parameter "intent"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2143
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationContext$ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v2, p0, Landroid/app/ApplicationContext$ApplicationPackageManager;->mContext:Landroid/app/ApplicationContext;

    invoke-virtual {v2}, Landroid/app/ApplicationContext;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2, p2}, Landroid/content/pm/IPackageManager;->queryIntentServices(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_11

    move-result-object v1

    return-object v1

    .line 2147
    :catch_11
    move-exception v1

    move-object v0, v1

    .line 2148
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public queryPermissionsByGroup(Ljava/lang/String;I)Ljava/util/List;
    .registers 7
    .parameter "group"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PermissionInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 1869
    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationContext$ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, p1, p2}, Landroid/content/pm/IPackageManager;->queryPermissionsByGroup(Ljava/lang/String;I)Ljava/util/List;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_9

    move-result-object v1

    .line 1870
    .local v1, pi:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    if-eqz v1, :cond_13

    .line 1871
    return-object v1

    .line 1873
    .end local v1           #pi:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    :catch_9
    move-exception v2

    move-object v0, v2

    .line 1874
    .local v0, e:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Package manager has died"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1877
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v1       #pi:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    :cond_13
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v2, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public removePackageFromPreferred(Ljava/lang/String;)V
    .registers 3
    .parameter "packageName"

    .prologue
    .line 2683
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationContext$ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageManager;->removePackageFromPreferred(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 2687
    :goto_5
    return-void

    .line 2684
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public removePermission(Ljava/lang/String;)V
    .registers 5
    .parameter "name"

    .prologue
    .line 1994
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationContext$ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->removePermission(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1998
    return-void

    .line 1995
    :catch_6
    move-exception v1

    move-object v0, v1

    .line 1996
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .registers 6
    .parameter "filter"
    .parameter "match"
    .parameter "set"
    .parameter "activity"

    .prologue
    .line 2713
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationContext$ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/content/pm/IPackageManager;->replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 2717
    :goto_5
    return-void

    .line 2714
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
    .registers 6
    .parameter "intent"
    .parameter "flags"

    .prologue
    .line 2062
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationContext$ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v2, p0, Landroid/app/ApplicationContext$ApplicationPackageManager;->mContext:Landroid/app/ApplicationContext;

    invoke-virtual {v2}, Landroid/app/ApplicationContext;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2, p2}, Landroid/content/pm/IPackageManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_11

    move-result-object v1

    return-object v1

    .line 2066
    :catch_11
    move-exception v1

    move-object v0, v1

    .line 2067
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;
    .registers 6
    .parameter "name"
    .parameter "flags"

    .prologue
    .line 2156
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationContext$ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    return-object v1

    .line 2157
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 2158
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
    .registers 6
    .parameter "intent"
    .parameter "flags"

    .prologue
    .line 2131
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationContext$ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v2, p0, Landroid/app/ApplicationContext$ApplicationPackageManager;->mContext:Landroid/app/ApplicationContext;

    invoke-virtual {v2}, Landroid/app/ApplicationContext;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2, p2}, Landroid/content/pm/IPackageManager;->resolveService(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_11

    move-result-object v1

    return-object v1

    .line 2135
    :catch_11
    move-exception v1

    move-object v0, v1

    .line 2136
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setApplicationEnabledSetting(Ljava/lang/String;II)V
    .registers 5
    .parameter "packageName"
    .parameter "newState"
    .parameter "flags"

    .prologue
    .line 2763
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationContext$ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 2767
    :goto_5
    return-void

    .line 2764
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    .registers 5
    .parameter "componentName"
    .parameter "newState"
    .parameter "flags"

    .prologue
    .line 2743
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationContext$ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/pm/IPackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 2747
    :goto_5
    return-void

    .line 2744
    :catch_6
    move-exception v0

    goto :goto_5
.end method
