.class public Lcom/android/launcher/LauncherModel;
.super Ljava/lang/Object;
.source "LauncherModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/LauncherModel$DesktopItemsLoader;,
        Lcom/android/launcher/LauncherModel$ApplicationInfoComparator;,
        Lcom/android/launcher/LauncherModel$ChangeNotifier;,
        Lcom/android/launcher/LauncherModel$ApplicationsLoader;
    }
.end annotation


# static fields
.field private static final APPLICATION_NOT_RESPONDING_TIMEOUT:J = 0x1388L

.field static final DEBUG_LOADERS:Z = true

.field private static final DEFAULT_APPLICATIONS_NUMBER:I = 0x2a

.field private static final INITIAL_ICON_CACHE_CAPACITY:I = 0x32

.field static final LOG_TAG:Ljava/lang/String; = "HomeLoaders"

.field private static final UI_NOTIFICATION_RATE:I = 0x4

.field private static final sAppsLoaderCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final sCollator:Ljava/text/Collator;

.field private static final sWorkspaceLoaderCount:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final mAppInfoCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/android/launcher/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mApplications:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mApplicationsAdapter:Lcom/android/launcher/ApplicationsAdapter;

.field private mApplicationsLoaded:Z

.field private mApplicationsLoader:Lcom/android/launcher/LauncherModel$ApplicationsLoader;

.field private mApplicationsLoaderThread:Ljava/lang/Thread;

.field private mDesktopAppWidgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher/LauncherAppWidgetInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDesktopItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDesktopItemsLoaded:Z

.field private mDesktopItemsLoader:Lcom/android/launcher/LauncherModel$DesktopItemsLoader;

.field private mDesktopLoaderThread:Ljava/lang/Thread;

.field private mFolders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher/FolderInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x1

    .line 59
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    sput-object v0, Lcom/android/launcher/LauncherModel;->sCollator:Ljava/text/Collator;

    .line 480
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/android/launcher/LauncherModel;->sAppsLoaderCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 481
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/android/launcher/LauncherModel;->sWorkspaceLoaderCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher/LauncherModel;->mAppInfoCache:Ljava/util/HashMap;

    .line 720
    return-void
.end method

.method static synthetic access$100()Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 1

    .prologue
    .line 50
    sget-object v0, Lcom/android/launcher/LauncherModel;->sAppsLoaderCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/launcher/LauncherModel;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/launcher/LauncherModel;->mDesktopItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/launcher/LauncherModel;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/launcher/LauncherModel;->mDesktopItems:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/launcher/LauncherModel;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/launcher/LauncherModel;->mDesktopAppWidgets:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/launcher/LauncherModel;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/launcher/LauncherModel;->mDesktopAppWidgets:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/launcher/LauncherModel;)Ljava/util/HashMap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/launcher/LauncherModel;->mFolders:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/launcher/LauncherModel;Ljava/util/HashMap;)Ljava/util/HashMap;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/launcher/LauncherModel;->mFolders:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic access$1300(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;)Lcom/android/launcher/ApplicationInfo;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 50
    invoke-static {p0, p1, p2}, Lcom/android/launcher/LauncherModel;->getApplicationInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;)Lcom/android/launcher/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/launcher/LauncherModel;Landroid/database/Cursor;Landroid/content/Context;IIII)Lcom/android/launcher/ApplicationInfo;
    .registers 8
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 50
    invoke-direct/range {p0 .. p6}, Lcom/android/launcher/LauncherModel;->getApplicationInfoShortcut(Landroid/database/Cursor;Landroid/content/Context;IIII)Lcom/android/launcher/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/launcher/LauncherModel;Ljava/util/HashMap;J)Lcom/android/launcher/UserFolderInfo;
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher/LauncherModel;->findOrMakeUserFolder(Ljava/util/HashMap;J)Lcom/android/launcher/UserFolderInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/launcher/LauncherModel;Ljava/util/HashMap;J)Lcom/android/launcher/LiveFolderInfo;
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher/LauncherModel;->findOrMakeLiveFolder(Ljava/util/HashMap;J)Lcom/android/launcher/LiveFolderInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/launcher/Launcher;Landroid/database/Cursor;IIILcom/android/launcher/LiveFolderInfo;)V
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 50
    invoke-static/range {p0 .. p5}, Lcom/android/launcher/LauncherModel;->loadLiveFolderIcon(Lcom/android/launcher/Launcher;Landroid/database/Cursor;IIILcom/android/launcher/LiveFolderInfo;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/launcher/LauncherModel;Lcom/android/launcher/Launcher;Z)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/android/launcher/LauncherModel;->startApplicationsLoader(Lcom/android/launcher/Launcher;Z)V

    return-void
.end method

.method static synthetic access$1902(Lcom/android/launcher/LauncherModel;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/android/launcher/LauncherModel;->mDesktopItemsLoaded:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/launcher/LauncherModel;)Lcom/android/launcher/ApplicationsAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/launcher/LauncherModel;->mApplicationsAdapter:Lcom/android/launcher/ApplicationsAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/launcher/LauncherModel;)Ljava/util/HashMap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/launcher/LauncherModel;->mAppInfoCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$400(Landroid/content/pm/PackageManager;Ljava/util/HashMap;Landroid/content/pm/ResolveInfo;Landroid/content/Context;)Lcom/android/launcher/ApplicationInfo;
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 50
    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher/LauncherModel;->makeAndCacheApplicationInfo(Landroid/content/pm/PackageManager;Ljava/util/HashMap;Landroid/content/pm/ResolveInfo;Landroid/content/Context;)Lcom/android/launcher/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/launcher/LauncherModel;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/android/launcher/LauncherModel;->mApplicationsLoaded:Z

    return p1
.end method

.method static synthetic access$600()Ljava/text/Collator;
    .registers 1

    .prologue
    .line 50
    sget-object v0, Lcom/android/launcher/LauncherModel;->sCollator:Ljava/text/Collator;

    return-object v0
.end method

.method static synthetic access$800()Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 1

    .prologue
    .line 50
    sget-object v0, Lcom/android/launcher/LauncherModel;->sWorkspaceLoaderCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$900(Landroid/content/ContentResolver;Landroid/content/pm/PackageManager;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-static {p0, p1}, Lcom/android/launcher/LauncherModel;->updateShortcutLabels(Landroid/content/ContentResolver;Landroid/content/pm/PackageManager;)V

    return-void
.end method

.method private addEnabledAndUpdateActivities(Ljava/util/List;Lcom/android/launcher/ApplicationsAdapter;Lcom/android/launcher/Launcher;)Z
    .registers 13
    .parameter
    .parameter "adapter"
    .parameter "launcher"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Lcom/android/launcher/ApplicationsAdapter;",
            "Lcom/android/launcher/Launcher;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 339
    .local p1, matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 340
    .local v6, toAdd:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher/ApplicationInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 342
    .local v2, count:I
    const/4 v1, 0x0

    .line 344
    .local v1, changed:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_b
    if-ge v3, v2, :cond_3d

    .line 345
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 346
    .local v5, info:Landroid/content/pm/ResolveInfo;
    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v8, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {p2, v7, v8}, Lcom/android/launcher/LauncherModel;->findIntent(Lcom/android/launcher/ApplicationsAdapter;Ljava/lang/String;Ljava/lang/String;)Lcom/android/launcher/ApplicationInfo;

    move-result-object v0

    .line 348
    .local v0, applicationInfo:Lcom/android/launcher/ApplicationInfo;
    if-nez v0, :cond_34

    .line 349
    invoke-virtual {p3}, Lcom/android/launcher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    iget-object v8, p0, Lcom/android/launcher/LauncherModel;->mAppInfoCache:Ljava/util/HashMap;

    invoke-static {v7, v8, v5, p3}, Lcom/android/launcher/LauncherModel;->makeAndCacheApplicationInfo(Landroid/content/pm/PackageManager;Ljava/util/HashMap;Landroid/content/pm/ResolveInfo;Landroid/content/Context;)Lcom/android/launcher/ApplicationInfo;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 351
    const/4 v1, 0x1

    .line 344
    :goto_31
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 353
    :cond_34
    invoke-virtual {p3}, Lcom/android/launcher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-direct {p0, v7, v5, v0, p3}, Lcom/android/launcher/LauncherModel;->updateAndCacheApplicationInfo(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Lcom/android/launcher/ApplicationInfo;Landroid/content/Context;)V

    .line 355
    const/4 v1, 0x1

    goto :goto_31

    .line 359
    .end local v0           #applicationInfo:Lcom/android/launcher/ApplicationInfo;
    .end local v5           #info:Landroid/content/pm/ResolveInfo;
    :cond_3d
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_41
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_55

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher/ApplicationInfo;

    .line 360
    .local v5, info:Lcom/android/launcher/ApplicationInfo;
    const/4 v7, 0x0

    invoke-virtual {p2, v7}, Lcom/android/launcher/ApplicationsAdapter;->setNotifyOnChange(Z)V

    .line 361
    invoke-virtual {p2, v5}, Lcom/android/launcher/ApplicationsAdapter;->add(Ljava/lang/Object;)V

    goto :goto_41

    .line 364
    .end local v5           #info:Lcom/android/launcher/ApplicationInfo;
    :cond_55
    return v1
.end method

.method static addGestureToDatabase(Landroid/content/Context;Lcom/android/launcher/ItemInfo;Z)Z
    .registers 9
    .parameter "context"
    .parameter "item"
    .parameter "notify"

    .prologue
    const/4 v5, 0x1

    .line 1401
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1402
    .local v2, values:Landroid/content/ContentValues;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1404
    .local v0, cr:Landroid/content/ContentResolver;
    invoke-virtual {p1, v2}, Lcom/android/launcher/ItemInfo;->onAddToDatabase(Landroid/content/ContentValues;)V

    .line 1406
    if-eqz p2, :cond_2c

    sget-object v3, Lcom/android/launcher/LauncherSettings$Gestures;->CONTENT_URI:Landroid/net/Uri;

    :goto_11
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 1409
    .local v1, result:Landroid/net/Uri;
    if-eqz v1, :cond_28

    .line 1410
    invoke-virtual {v1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v3, v3

    iput-wide v3, p1, Lcom/android/launcher/ItemInfo;->id:J

    .line 1413
    :cond_28
    if-eqz v1, :cond_2f

    move v3, v5

    :goto_2b
    return v3

    .line 1406
    .end local v1           #result:Landroid/net/Uri;
    .restart local p0
    :cond_2c
    sget-object v3, Lcom/android/launcher/LauncherSettings$Gestures;->CONTENT_URI_NO_NOTIFICATION:Landroid/net/Uri;

    goto :goto_11

    .line 1413
    .end local p0
    .restart local v1       #result:Landroid/net/Uri;
    :cond_2f
    const/4 v3, 0x0

    goto :goto_2b
.end method

.method static addItemToDatabase(Landroid/content/Context;Lcom/android/launcher/ItemInfo;JIIIZ)V
    .registers 13
    .parameter "context"
    .parameter "item"
    .parameter "container"
    .parameter "screen"
    .parameter "cellX"
    .parameter "cellY"
    .parameter "notify"

    .prologue
    .line 1378
    iput-wide p2, p1, Lcom/android/launcher/ItemInfo;->container:J

    .line 1379
    iput p4, p1, Lcom/android/launcher/ItemInfo;->screen:I

    .line 1380
    iput p5, p1, Lcom/android/launcher/ItemInfo;->cellX:I

    .line 1381
    iput p6, p1, Lcom/android/launcher/ItemInfo;->cellY:I

    .line 1383
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1384
    .local v2, values:Landroid/content/ContentValues;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1386
    .local v0, cr:Landroid/content/ContentResolver;
    invoke-virtual {p1, v2}, Lcom/android/launcher/ItemInfo;->onAddToDatabase(Landroid/content/ContentValues;)V

    .line 1388
    if-eqz p7, :cond_31

    sget-object v3, Lcom/android/launcher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    :goto_18
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 1391
    .local v1, result:Landroid/net/Uri;
    if-eqz v1, :cond_30

    .line 1392
    invoke-virtual {v1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v3, v3

    iput-wide v3, p1, Lcom/android/launcher/ItemInfo;->id:J

    .line 1394
    :cond_30
    return-void

    .line 1388
    .end local v1           #result:Landroid/net/Uri;
    .restart local p0
    :cond_31
    sget-object v3, Lcom/android/launcher/LauncherSettings$Favorites;->CONTENT_URI_NO_NOTIFICATION:Landroid/net/Uri;

    goto :goto_18
.end method

.method static addOrMoveItemInDatabase(Landroid/content/Context;Lcom/android/launcher/ItemInfo;JIII)V
    .registers 15
    .parameter "context"
    .parameter "item"
    .parameter "container"
    .parameter "screen"
    .parameter "cellX"
    .parameter "cellY"

    .prologue
    .line 1281
    iget-wide v0, p1, Lcom/android/launcher/ItemInfo;->container:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_13

    .line 1283
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v7}, Lcom/android/launcher/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher/ItemInfo;JIIIZ)V

    .line 1288
    :goto_12
    return-void

    .line 1286
    :cond_13
    invoke-static/range {p0 .. p6}, Lcom/android/launcher/LauncherModel;->moveItemInDatabase(Landroid/content/Context;Lcom/android/launcher/ItemInfo;JIII)V

    goto :goto_12
.end method

.method static deleteGestureFromDatabase(Landroid/content/Context;Lcom/android/launcher/ItemInfo;)V
    .registers 7
    .parameter "context"
    .parameter "item"

    .prologue
    const/4 v4, 0x0

    .line 1452
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1454
    .local v0, cr:Landroid/content/ContentResolver;
    iget-wide v1, p1, Lcom/android/launcher/ItemInfo;->id:J

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/launcher/LauncherSettings$Gestures;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1455
    return-void
.end method

.method static deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher/ItemInfo;)V
    .registers 7
    .parameter "context"
    .parameter "item"

    .prologue
    const/4 v4, 0x0

    .line 1434
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1436
    .local v0, cr:Landroid/content/ContentResolver;
    iget-wide v1, p1, Lcom/android/launcher/ItemInfo;->id:J

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/launcher/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1437
    return-void
.end method

.method static deleteUserFolderContentsFromDatabase(Landroid/content/Context;Lcom/android/launcher/UserFolderInfo;)V
    .registers 8
    .parameter "context"
    .parameter "info"

    .prologue
    const/4 v5, 0x0

    .line 1444
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1446
    .local v0, cr:Landroid/content/ContentResolver;
    iget-wide v1, p1, Lcom/android/launcher/UserFolderInfo;->id:J

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/launcher/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v5, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1447
    sget-object v1, Lcom/android/launcher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "container="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p1, Lcom/android/launcher/UserFolderInfo;->id:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1449
    return-void
.end method

.method private static findActivitiesForPackage(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/util/List;
    .registers 11
    .parameter "packageManager"
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 315
    new-instance v5, Landroid/content/Intent;

    const-string v7, "android.intent.action.MAIN"

    const/4 v8, 0x0

    invoke-direct {v5, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 316
    .local v5, mainIntent:Landroid/content/Intent;
    const-string v7, "android.intent.category.LAUNCHER"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 318
    const/4 v7, 0x0

    invoke-virtual {p0, v5, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 319
    .local v1, apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 321
    .local v6, matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_36

    .line 323
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 324
    .local v2, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1e
    if-ge v3, v2, :cond_36

    .line 325
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 326
    .local v4, info:Landroid/content/pm/ResolveInfo;
    iget-object v0, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 327
    .local v0, activityInfo:Landroid/content/pm/ActivityInfo;
    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_33

    .line 328
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 324
    :cond_33
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 333
    .end local v0           #activityInfo:Landroid/content/pm/ActivityInfo;
    .end local v2           #count:I
    .end local v3           #i:I
    .end local v4           #info:Landroid/content/pm/ResolveInfo;
    :cond_36
    return-object v6
.end method

.method private static findIntent(Lcom/android/launcher/ApplicationsAdapter;Ljava/lang/String;Ljava/lang/String;)Lcom/android/launcher/ApplicationInfo;
    .registers 9
    .parameter "adapter"
    .parameter "packageName"
    .parameter "name"

    .prologue
    .line 400
    invoke-virtual {p0}, Lcom/android/launcher/ApplicationsAdapter;->getCount()I

    move-result v2

    .line 401
    .local v2, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_5
    if-ge v3, v2, :cond_2c

    .line 402
    invoke-virtual {p0, v3}, Lcom/android/launcher/ApplicationsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/ApplicationInfo;

    .line 403
    .local v0, applicationInfo:Lcom/android/launcher/ApplicationInfo;
    iget-object v4, v0, Lcom/android/launcher/ApplicationInfo;->intent:Landroid/content/Intent;

    .line 404
    .local v4, intent:Landroid/content/Intent;
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 405
    .local v1, component:Landroid/content/ComponentName;
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_29

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_29

    move-object v5, v0

    .line 411
    .end local v0           #applicationInfo:Lcom/android/launcher/ApplicationInfo;
    .end local v1           #component:Landroid/content/ComponentName;
    .end local v4           #intent:Landroid/content/Intent;
    :goto_28
    return-object v5

    .line 401
    .restart local v0       #applicationInfo:Lcom/android/launcher/ApplicationInfo;
    .restart local v1       #component:Landroid/content/ComponentName;
    .restart local v4       #intent:Landroid/content/Intent;
    :cond_29
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 411
    .end local v0           #applicationInfo:Lcom/android/launcher/ApplicationInfo;
    .end local v1           #component:Landroid/content/ComponentName;
    .end local v4           #intent:Landroid/content/Intent;
    :cond_2c
    const/4 v5, 0x0

    goto :goto_28
.end method

.method private static findIntent(Ljava/util/List;Landroid/content/ComponentName;)Z
    .registers 7
    .parameter
    .parameter "component"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Landroid/content/ComponentName;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 415
    .local p0, apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 416
    .local v1, className:Ljava/lang/String;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_20

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 417
    .local v3, info:Landroid/content/pm/ResolveInfo;
    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 418
    .local v0, activityInfo:Landroid/content/pm/ActivityInfo;
    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 419
    const/4 v4, 0x1

    .line 422
    .end local v0           #activityInfo:Landroid/content/pm/ActivityInfo;
    .end local v3           #info:Landroid/content/pm/ResolveInfo;
    :goto_1f
    return v4

    :cond_20
    const/4 v4, 0x0

    goto :goto_1f
.end method

.method private findOrMakeLiveFolder(Ljava/util/HashMap;J)Lcom/android/launcher/LiveFolderInfo;
    .registers 6
    .parameter
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher/FolderInfo;",
            ">;J)",
            "Lcom/android/launcher/LiveFolderInfo;"
        }
    .end annotation

    .prologue
    .line 1056
    .local p1, folders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/launcher/FolderInfo;>;"
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/FolderInfo;

    .line 1057
    .local v0, folderInfo:Lcom/android/launcher/FolderInfo;
    if-eqz v0, :cond_10

    instance-of v1, v0, Lcom/android/launcher/LiveFolderInfo;

    if-nez v1, :cond_1c

    .line 1059
    :cond_10
    new-instance v0, Lcom/android/launcher/LiveFolderInfo;

    .end local v0           #folderInfo:Lcom/android/launcher/FolderInfo;
    invoke-direct {v0}, Lcom/android/launcher/LiveFolderInfo;-><init>()V

    .line 1060
    .restart local v0       #folderInfo:Lcom/android/launcher/FolderInfo;
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1062
    :cond_1c
    check-cast v0, Lcom/android/launcher/LiveFolderInfo;

    .end local v0           #folderInfo:Lcom/android/launcher/FolderInfo;
    return-object v0
.end method

.method private findOrMakeUserFolder(Ljava/util/HashMap;J)Lcom/android/launcher/UserFolderInfo;
    .registers 6
    .parameter
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher/FolderInfo;",
            ">;J)",
            "Lcom/android/launcher/UserFolderInfo;"
        }
    .end annotation

    .prologue
    .line 1041
    .local p1, folders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/launcher/FolderInfo;>;"
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/FolderInfo;

    .line 1042
    .local v0, folderInfo:Lcom/android/launcher/FolderInfo;
    if-eqz v0, :cond_10

    instance-of v1, v0, Lcom/android/launcher/UserFolderInfo;

    if-nez v1, :cond_1c

    .line 1044
    :cond_10
    new-instance v0, Lcom/android/launcher/UserFolderInfo;

    .end local v0           #folderInfo:Lcom/android/launcher/FolderInfo;
    invoke-direct {v0}, Lcom/android/launcher/UserFolderInfo;-><init>()V

    .line 1045
    .restart local v0       #folderInfo:Lcom/android/launcher/FolderInfo;
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1047
    :cond_1c
    check-cast v0, Lcom/android/launcher/UserFolderInfo;

    .end local v0           #folderInfo:Lcom/android/launcher/FolderInfo;
    return-object v0
.end method

.method private static getApplicationInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;)Lcom/android/launcher/ApplicationInfo;
    .registers 8
    .parameter "manager"
    .parameter "intent"
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 1192
    invoke-virtual {p0, p1, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 1194
    .local v2, resolveInfo:Landroid/content/pm/ResolveInfo;
    if-nez v2, :cond_9

    .line 1195
    const/4 v3, 0x0

    .line 1208
    :goto_8
    return-object v3

    .line 1198
    :cond_9
    new-instance v1, Lcom/android/launcher/ApplicationInfo;

    invoke-direct {v1}, Lcom/android/launcher/ApplicationInfo;-><init>()V

    .line 1199
    .local v1, info:Lcom/android/launcher/ApplicationInfo;
    iget-object v0, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1200
    .local v0, activityInfo:Landroid/content/pm/ActivityInfo;
    invoke-virtual {v0, p0}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v3, p2}, Lcom/android/launcher/Utilities;->createIconThumbnail(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v1, Lcom/android/launcher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 1201
    iget-object v3, v1, Lcom/android/launcher/ApplicationInfo;->title:Ljava/lang/CharSequence;

    if-eqz v3, :cond_26

    iget-object v3, v1, Lcom/android/launcher/ApplicationInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_2c

    .line 1202
    :cond_26
    invoke-virtual {v0, p0}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v1, Lcom/android/launcher/ApplicationInfo;->title:Ljava/lang/CharSequence;

    .line 1204
    :cond_2c
    iget-object v3, v1, Lcom/android/launcher/ApplicationInfo;->title:Ljava/lang/CharSequence;

    if-nez v3, :cond_34

    .line 1205
    const-string v3, ""

    iput-object v3, v1, Lcom/android/launcher/ApplicationInfo;->title:Ljava/lang/CharSequence;

    .line 1207
    :cond_34
    iput v4, v1, Lcom/android/launcher/ApplicationInfo;->itemType:I

    move-object v3, v1

    .line 1208
    goto :goto_8
.end method

.method private getApplicationInfoShortcut(Landroid/database/Cursor;Landroid/content/Context;IIII)Lcom/android/launcher/ApplicationInfo;
    .registers 21
    .parameter "c"
    .parameter "context"
    .parameter "iconTypeIndex"
    .parameter "iconPackageIndex"
    .parameter "iconResourceIndex"
    .parameter "iconIndex"

    .prologue
    .line 1217
    new-instance v7, Lcom/android/launcher/ApplicationInfo;

    invoke-direct {v7}, Lcom/android/launcher/ApplicationInfo;-><init>()V

    .line 1218
    .local v7, info:Lcom/android/launcher/ApplicationInfo;
    const/4 v12, 0x1

    iput v12, v7, Lcom/android/launcher/ApplicationInfo;->itemType:I

    .line 1220
    move-object v0, p1

    move/from16 v1, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 1221
    .local v5, iconType:I
    packed-switch v5, :pswitch_data_94

    .line 1252
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    iput-object v12, v7, Lcom/android/launcher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 1253
    const/4 v12, 0x0

    iput-boolean v12, v7, Lcom/android/launcher/ApplicationInfo;->customIcon:Z

    .line 1256
    :goto_1f
    return-object v7

    .line 1223
    :pswitch_20
    move-object v0, p1

    move/from16 v1, p4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1224
    .local v9, packageName:Ljava/lang/String;
    move-object v0, p1

    move/from16 v1, p5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1225
    .local v10, resourceName:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 1227
    .local v8, packageManager:Landroid/content/pm/PackageManager;
    :try_start_32
    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v11

    .line 1228
    .local v11, resources:Landroid/content/res/Resources;
    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v11, v10, v12, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 1229
    .local v6, id:I
    invoke-virtual {v11, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    move-object v0, v12

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/android/launcher/Utilities;->createIconThumbnail(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    iput-object v12, v7, Lcom/android/launcher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_49} :catch_5c

    .line 1233
    .end local v6           #id:I
    .end local v11           #resources:Landroid/content/res/Resources;
    :goto_49
    new-instance v12, Landroid/content/Intent$ShortcutIconResource;

    invoke-direct {v12}, Landroid/content/Intent$ShortcutIconResource;-><init>()V

    iput-object v12, v7, Lcom/android/launcher/ApplicationInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    .line 1234
    iget-object v12, v7, Lcom/android/launcher/ApplicationInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iput-object v9, v12, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    .line 1235
    iget-object v12, v7, Lcom/android/launcher/ApplicationInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iput-object v10, v12, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    .line 1236
    const/4 v12, 0x0

    iput-boolean v12, v7, Lcom/android/launcher/ApplicationInfo;->customIcon:Z

    goto :goto_1f

    .line 1230
    :catch_5c
    move-exception v12

    move-object v4, v12

    .line 1231
    .local v4, e:Ljava/lang/Exception;
    invoke-virtual {v8}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    iput-object v12, v7, Lcom/android/launcher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_49

    .line 1239
    .end local v4           #e:Ljava/lang/Exception;
    .end local v8           #packageManager:Landroid/content/pm/PackageManager;
    .end local v9           #packageName:Ljava/lang/String;
    .end local v10           #resourceName:Ljava/lang/String;
    :pswitch_65
    move-object v0, p1

    move/from16 v1, p6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    .line 1241
    .local v3, data:[B
    const/4 v12, 0x0

    :try_start_6d
    array-length v13, v3

    invoke-static {v3, v12, v13}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1242
    .local v2, bitmap:Landroid/graphics/Bitmap;
    new-instance v12, Lcom/android/launcher/FastBitmapDrawable;

    move-object v0, v2

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/android/launcher/Utilities;->createBitmapThumbnail(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/android/launcher/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v12, v7, Lcom/android/launcher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_80} :catch_87

    .line 1248
    .end local v2           #bitmap:Landroid/graphics/Bitmap;
    :goto_80
    const/4 v12, 0x1

    iput-boolean v12, v7, Lcom/android/launcher/ApplicationInfo;->filtered:Z

    .line 1249
    const/4 v12, 0x1

    iput-boolean v12, v7, Lcom/android/launcher/ApplicationInfo;->customIcon:Z

    goto :goto_1f

    .line 1244
    :catch_87
    move-exception v12

    move-object v4, v12

    .line 1245
    .restart local v4       #e:Ljava/lang/Exception;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 1246
    .restart local v8       #packageManager:Landroid/content/pm/PackageManager;
    invoke-virtual {v8}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    iput-object v12, v7, Lcom/android/launcher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_80

    .line 1221
    :pswitch_data_94
    .packed-switch 0x0
        :pswitch_20
        :pswitch_65
    .end packed-switch
.end method

.method private static getLabel(Landroid/content/pm/PackageManager;Landroid/content/pm/ActivityInfo;)Ljava/lang/String;
    .registers 4
    .parameter "manager"
    .parameter "activityInfo"

    .prologue
    .line 710
    invoke-virtual {p1, p0}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 711
    .local v0, label:Ljava/lang/String;
    if-nez v0, :cond_18

    .line 712
    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 713
    if-nez v0, :cond_18

    .line 714
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 717
    :cond_18
    return-object v0
.end method

.method private static loadLiveFolderIcon(Lcom/android/launcher/Launcher;Landroid/database/Cursor;IIILcom/android/launcher/LiveFolderInfo;)V
    .registers 16
    .parameter "launcher"
    .parameter "c"
    .parameter "iconTypeIndex"
    .parameter "iconPackageIndex"
    .parameter "iconResourceIndex"
    .parameter "liveFolderInfo"

    .prologue
    const v9, 0x7f020013

    .line 996
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 997
    .local v1, iconType:I
    packed-switch v1, :pswitch_data_4e

    .line 1015
    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p5, Lcom/android/launcher/LiveFolderInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 1018
    :goto_14
    return-void

    .line 999
    :pswitch_15
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1000
    .local v4, packageName:Ljava/lang/String;
    invoke-interface {p1, p4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1001
    .local v5, resourceName:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1003
    .local v3, packageManager:Landroid/content/pm/PackageManager;
    :try_start_21
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v6

    .line 1004
    .local v6, resources:Landroid/content/res/Resources;
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v5, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1005
    .local v2, id:I
    invoke-virtual {v6, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p5, Lcom/android/launcher/LiveFolderInfo;->icon:Landroid/graphics/drawable/Drawable;
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_31} :catch_41

    .line 1010
    .end local v2           #id:I
    .end local v6           #resources:Landroid/content/res/Resources;
    :goto_31
    new-instance v7, Landroid/content/Intent$ShortcutIconResource;

    invoke-direct {v7}, Landroid/content/Intent$ShortcutIconResource;-><init>()V

    iput-object v7, p5, Lcom/android/launcher/LiveFolderInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    .line 1011
    iget-object v7, p5, Lcom/android/launcher/LiveFolderInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iput-object v4, v7, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    .line 1012
    iget-object v7, p5, Lcom/android/launcher/LiveFolderInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iput-object v5, v7, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    goto :goto_14

    .line 1006
    :catch_41
    move-exception v7

    move-object v0, v7

    .line 1007
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p5, Lcom/android/launcher/LiveFolderInfo;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_31

    .line 997
    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_15
    .end packed-switch
.end method

.method private static makeAndCacheApplicationInfo(Landroid/content/pm/PackageManager;Ljava/util/HashMap;Landroid/content/pm/ResolveInfo;Landroid/content/Context;)Lcom/android/launcher/ApplicationInfo;
    .registers 8
    .parameter "manager"
    .parameter
    .parameter "info"
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/android/launcher/ApplicationInfo;",
            ">;",
            "Landroid/content/pm/ResolveInfo;",
            "Landroid/content/Context;",
            ")",
            "Lcom/android/launcher/ApplicationInfo;"
        }
    .end annotation

    .prologue
    .line 447
    .local p1, appInfoCache:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ComponentName;Lcom/android/launcher/ApplicationInfo;>;"
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    .local v1, componentName:Landroid/content/ComponentName;
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/ApplicationInfo;

    .line 452
    .local v0, application:Lcom/android/launcher/ApplicationInfo;
    if-nez v0, :cond_2b

    .line 453
    new-instance v0, Lcom/android/launcher/ApplicationInfo;

    .end local v0           #application:Lcom/android/launcher/ApplicationInfo;
    invoke-direct {v0}, Lcom/android/launcher/ApplicationInfo;-><init>()V

    .line 454
    .restart local v0       #application:Lcom/android/launcher/ApplicationInfo;
    const-wide/16 v2, -0x1

    iput-wide v2, v0, Lcom/android/launcher/ApplicationInfo;->container:J

    .line 456
    invoke-static {p0, p2, v0, p3}, Lcom/android/launcher/LauncherModel;->updateApplicationInfoTitleAndIcon(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Lcom/android/launcher/ApplicationInfo;Landroid/content/Context;)V

    .line 458
    const/high16 v2, 0x1020

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher/ApplicationInfo;->setActivity(Landroid/content/ComponentName;I)V

    .line 461
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    :cond_2b
    return-object v0
.end method

.method static moveItemInDatabase(Landroid/content/Context;Lcom/android/launcher/ItemInfo;JIII)V
    .registers 13
    .parameter "context"
    .parameter "item"
    .parameter "container"
    .parameter "screen"
    .parameter "cellX"
    .parameter "cellY"

    .prologue
    const/4 v5, 0x0

    .line 1295
    iput-wide p2, p1, Lcom/android/launcher/ItemInfo;->container:J

    .line 1296
    iput p4, p1, Lcom/android/launcher/ItemInfo;->screen:I

    .line 1297
    iput p5, p1, Lcom/android/launcher/ItemInfo;->cellX:I

    .line 1298
    iput p6, p1, Lcom/android/launcher/ItemInfo;->cellY:I

    .line 1300
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1301
    .local v1, values:Landroid/content/ContentValues;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1303
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v2, "container"

    iget-wide v3, p1, Lcom/android/launcher/ItemInfo;->container:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1304
    const-string v2, "cellX"

    iget v3, p1, Lcom/android/launcher/ItemInfo;->cellX:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1305
    const-string v2, "cellY"

    iget v3, p1, Lcom/android/launcher/ItemInfo;->cellY:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1306
    const-string v2, "screen"

    iget v3, p1, Lcom/android/launcher/ItemInfo;->screen:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1308
    iget-wide v2, p1, Lcom/android/launcher/ItemInfo;->id:J

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/launcher/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v1, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1309
    return-void
.end method

.method private removeDisabledActivities(Ljava/lang/String;Ljava/util/List;Lcom/android/launcher/ApplicationsAdapter;)Z
    .registers 15
    .parameter "packageName"
    .parameter
    .parameter "adapter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Lcom/android/launcher/ApplicationsAdapter;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 370
    .local p2, matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 371
    .local v9, toRemove:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher/ApplicationInfo;>;"
    invoke-virtual {p3}, Lcom/android/launcher/ApplicationsAdapter;->getCount()I

    move-result v4

    .line 373
    .local v4, count:I
    const/4 v2, 0x0

    .line 375
    .local v2, changed:Z
    const/4 v5, 0x0

    .local v5, i:I
    :goto_b
    if-ge v5, v4, :cond_30

    .line 376
    invoke-virtual {p3, v5}, Lcom/android/launcher/ApplicationsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/ApplicationInfo;

    .line 377
    .local v0, applicationInfo:Lcom/android/launcher/ApplicationInfo;
    iget-object v8, v0, Lcom/android/launcher/ApplicationInfo;->intent:Landroid/content/Intent;

    .line 378
    .local v8, intent:Landroid/content/Intent;
    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    .line 379
    .local v3, component:Landroid/content/ComponentName;
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2d

    .line 380
    invoke-static {p2, v3}, Lcom/android/launcher/LauncherModel;->findIntent(Ljava/util/List;Landroid/content/ComponentName;)Z

    move-result v10

    if-nez v10, :cond_2d

    .line 381
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 382
    const/4 v2, 0x1

    .line 375
    :cond_2d
    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    .line 387
    .end local v0           #applicationInfo:Lcom/android/launcher/ApplicationInfo;
    .end local v3           #component:Landroid/content/ComponentName;
    .end local v8           #intent:Landroid/content/Intent;
    :cond_30
    iget-object v1, p0, Lcom/android/launcher/LauncherModel;->mAppInfoCache:Ljava/util/HashMap;

    .line 388
    .local v1, cache:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ComponentName;Lcom/android/launcher/ApplicationInfo;>;"
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_36
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_53

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher/ApplicationInfo;

    .line 389
    .local v7, info:Lcom/android/launcher/ApplicationInfo;
    const/4 v10, 0x0

    invoke-virtual {p3, v10}, Lcom/android/launcher/ApplicationsAdapter;->setNotifyOnChange(Z)V

    .line 390
    invoke-virtual {p3, v7}, Lcom/android/launcher/ApplicationsAdapter;->remove(Ljava/lang/Object;)V

    .line 391
    iget-object v10, v7, Lcom/android/launcher/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_36

    .line 394
    .end local v7           #info:Lcom/android/launcher/ApplicationInfo;
    :cond_53
    return v2
.end method

.method static shortcutExists(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)Z
    .registers 12
    .parameter "context"
    .parameter "title"
    .parameter "intent"

    .prologue
    const/4 v4, 0x2

    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 1316
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1317
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/launcher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "title"

    aput-object v3, v2, v5

    const-string v3, "intent"

    aput-object v3, v2, v8

    const-string v3, "title=? and intent=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v5

    invoke-virtual {p2, v5}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1320
    .local v6, c:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 1322
    .local v7, result:Z
    :try_start_25
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_2d

    move-result v7

    .line 1324
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1326
    return v7

    .line 1324
    :catchall_2d
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private declared-synchronized startApplicationsLoader(Lcom/android/launcher/Launcher;Z)V
    .registers 5
    .parameter "launcher"
    .parameter "isLaunching"

    .prologue
    .line 159
    monitor-enter p0

    :try_start_1
    const-string v0, "HomeLoaders"

    const-string v1, "  --> starting applications loader unlocked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-direct {p0, p1, p2}, Lcom/android/launcher/LauncherModel;->startApplicationsLoaderLocked(Lcom/android/launcher/Launcher;Z)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 161
    monitor-exit p0

    return-void

    .line 159
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private startApplicationsLoaderLocked(Lcom/android/launcher/Launcher;Z)V
    .registers 6
    .parameter "launcher"
    .parameter "isLaunching"

    .prologue
    .line 164
    const-string v0, "HomeLoaders"

    const-string v1, "  --> starting applications loader"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-direct {p0}, Lcom/android/launcher/LauncherModel;->stopAndWaitForApplicationsLoader()V

    .line 168
    new-instance v0, Lcom/android/launcher/LauncherModel$ApplicationsLoader;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/launcher/LauncherModel$ApplicationsLoader;-><init>(Lcom/android/launcher/LauncherModel;Lcom/android/launcher/Launcher;Z)V

    iput-object v0, p0, Lcom/android/launcher/LauncherModel;->mApplicationsLoader:Lcom/android/launcher/LauncherModel$ApplicationsLoader;

    .line 169
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/launcher/LauncherModel;->mApplicationsLoader:Lcom/android/launcher/LauncherModel$ApplicationsLoader;

    const-string v2, "Applications Loader"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/launcher/LauncherModel;->mApplicationsLoaderThread:Ljava/lang/Thread;

    .line 170
    iget-object v0, p0, Lcom/android/launcher/LauncherModel;->mApplicationsLoaderThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 171
    return-void
.end method

.method private declared-synchronized stopAndWaitForApplicationsLoader()V
    .registers 4

    .prologue
    .line 142
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/launcher/LauncherModel;->mApplicationsLoader:Lcom/android/launcher/LauncherModel$ApplicationsLoader;

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/android/launcher/LauncherModel;->mApplicationsLoader:Lcom/android/launcher/LauncherModel$ApplicationsLoader;

    invoke-virtual {v0}, Lcom/android/launcher/LauncherModel$ApplicationsLoader;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 144
    const-string v0, "HomeLoaders"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  --> wait for applications loader ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher/LauncherModel;->mApplicationsLoader:Lcom/android/launcher/LauncherModel$ApplicationsLoader;

    invoke-static {v2}, Lcom/android/launcher/LauncherModel$ApplicationsLoader;->access$000(Lcom/android/launcher/LauncherModel$ApplicationsLoader;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v0, p0, Lcom/android/launcher/LauncherModel;->mApplicationsLoader:Lcom/android/launcher/LauncherModel$ApplicationsLoader;

    invoke-virtual {v0}, Lcom/android/launcher/LauncherModel$ApplicationsLoader;->stop()V
    :try_end_36
    .catchall {:try_start_1 .. :try_end_36} :catchall_3f

    .line 151
    :try_start_36
    iget-object v0, p0, Lcom/android/launcher/LauncherModel;->mApplicationsLoaderThread:Ljava/lang/Thread;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Ljava/lang/Thread;->join(J)V
    :try_end_3d
    .catchall {:try_start_36 .. :try_end_3d} :catchall_3f
    .catch Ljava/lang/InterruptedException; {:try_start_36 .. :try_end_3d} :catch_42

    .line 156
    :cond_3d
    :goto_3d
    monitor-exit p0

    return-void

    .line 142
    :catchall_3f
    move-exception v0

    monitor-exit p0

    throw v0

    .line 152
    :catch_42
    move-exception v0

    goto :goto_3d
.end method

.method private syncLocked(Lcom/android/launcher/Launcher;Ljava/lang/String;)Z
    .registers 10
    .parameter "launcher"
    .parameter "packageName"

    .prologue
    const/4 v6, 0x0

    .line 294
    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 295
    .local v3, packageManager:Landroid/content/pm/PackageManager;
    invoke-static {v3, p2}, Lcom/android/launcher/LauncherModel;->findActivitiesForPackage(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 297
    .local v2, matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_21

    .line 298
    iget-object v0, p0, Lcom/android/launcher/LauncherModel;->mApplicationsAdapter:Lcom/android/launcher/ApplicationsAdapter;

    .line 301
    .local v0, adapter:Lcom/android/launcher/ApplicationsAdapter;
    invoke-direct {p0, p2, v2, v0}, Lcom/android/launcher/LauncherModel;->removeDisabledActivities(Ljava/lang/String;Ljava/util/List;Lcom/android/launcher/ApplicationsAdapter;)Z

    move-result v4

    .line 304
    .local v4, removed:Z
    invoke-direct {p0, v2, v0, p1}, Lcom/android/launcher/LauncherModel;->addEnabledAndUpdateActivities(Ljava/util/List;Lcom/android/launcher/ApplicationsAdapter;Lcom/android/launcher/Launcher;)Z

    move-result v1

    .line 306
    .local v1, added:Z
    if-nez v1, :cond_1d

    if-eqz v4, :cond_1f

    :cond_1d
    const/4 v5, 0x1

    .line 309
    .end local v0           #adapter:Lcom/android/launcher/ApplicationsAdapter;
    .end local v1           #added:Z
    .end local v4           #removed:Z
    :goto_1e
    return v5

    .restart local v0       #adapter:Lcom/android/launcher/ApplicationsAdapter;
    .restart local v1       #added:Z
    .restart local v4       #removed:Z
    :cond_1f
    move v5, v6

    .line 306
    goto :goto_1e

    .end local v0           #adapter:Lcom/android/launcher/ApplicationsAdapter;
    .end local v1           #added:Z
    .end local v4           #removed:Z
    :cond_21
    move v5, v6

    .line 309
    goto :goto_1e
.end method

.method private unbindAppDrawables(Ljava/util/ArrayList;)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1103
    .local p1, applications:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher/ApplicationInfo;>;"
    if-eqz p1, :cond_18

    .line 1104
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1105
    .local v0, count:I
    const/4 v1, 0x0

    .end local p0
    .local v1, i:I
    :goto_7
    if-ge v1, v0, :cond_18

    .line 1106
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/ApplicationInfo;

    iget-object v2, p0, Lcom/android/launcher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1105
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1109
    .end local v0           #count:I
    .end local v1           #i:I
    :cond_18
    return-void
.end method

.method private unbindAppWidgetHostViews(Ljava/util/ArrayList;)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher/LauncherAppWidgetInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1115
    .local p1, appWidgets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher/LauncherAppWidgetInfo;>;"
    if-eqz p1, :cond_15

    .line 1116
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1117
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    if-ge v1, v0, :cond_15

    .line 1118
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher/LauncherAppWidgetInfo;

    .line 1119
    .local v2, launcherInfo:Lcom/android/launcher/LauncherAppWidgetInfo;
    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 1117
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1122
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v2           #launcherInfo:Lcom/android/launcher/LauncherAppWidgetInfo;
    :cond_15
    return-void
.end method

.method private unbindCachedIconDrawables()V
    .registers 5

    .prologue
    .line 1129
    iget-object v2, p0, Lcom/android/launcher/LauncherModel;->mAppInfoCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/ApplicationInfo;

    .line 1130
    .local v0, appInfo:Lcom/android/launcher/ApplicationInfo;
    iget-object v2, v0, Lcom/android/launcher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    goto :goto_a

    .line 1132
    .end local v0           #appInfo:Lcom/android/launcher/ApplicationInfo;
    :cond_1d
    return-void
.end method

.method private unbindDrawables(Ljava/util/ArrayList;)V
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1084
    .local p1, desktopItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher/ItemInfo;>;"
    if-eqz p1, :cond_20

    .line 1085
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1086
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    if-ge v1, v0, :cond_20

    .line 1087
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher/ItemInfo;

    .line 1088
    .local v2, item:Lcom/android/launcher/ItemInfo;
    iget v3, v2, Lcom/android/launcher/ItemInfo;->itemType:I

    packed-switch v3, :pswitch_data_22

    .line 1086
    .end local v2           #item:Lcom/android/launcher/ItemInfo;
    :goto_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1091
    .restart local v2       #item:Lcom/android/launcher/ItemInfo;
    :pswitch_17
    check-cast v2, Lcom/android/launcher/ApplicationInfo;

    .end local v2           #item:Lcom/android/launcher/ItemInfo;
    iget-object v3, v2, Lcom/android/launcher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    goto :goto_14

    .line 1096
    .end local v0           #count:I
    .end local v1           #i:I
    :cond_20
    return-void

    .line 1088
    nop

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_17
        :pswitch_17
    .end packed-switch
.end method

.method private updateAndCacheApplicationInfo(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Lcom/android/launcher/ApplicationInfo;Landroid/content/Context;)V
    .registers 8
    .parameter "packageManager"
    .parameter "info"
    .parameter "applicationInfo"
    .parameter "context"

    .prologue
    .line 271
    invoke-static {p1, p2, p3, p4}, Lcom/android/launcher/LauncherModel;->updateApplicationInfoTitleAndIcon(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Lcom/android/launcher/ApplicationInfo;Landroid/content/Context;)V

    .line 273
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    .local v0, componentName:Landroid/content/ComponentName;
    iget-object v1, p0, Lcom/android/launcher/LauncherModel;->mAppInfoCache:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    return-void
.end method

.method private static updateApplicationInfoTitleAndIcon(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Lcom/android/launcher/ApplicationInfo;Landroid/content/Context;)V
    .registers 5
    .parameter "manager"
    .parameter "info"
    .parameter "application"
    .parameter "context"

    .prologue
    .line 470
    invoke-virtual {p1, p0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p2, Lcom/android/launcher/ApplicationInfo;->title:Ljava/lang/CharSequence;

    .line 471
    iget-object v0, p2, Lcom/android/launcher/ApplicationInfo;->title:Ljava/lang/CharSequence;

    if-nez v0, :cond_10

    .line 472
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object v0, p2, Lcom/android/launcher/ApplicationInfo;->title:Ljava/lang/CharSequence;

    .line 475
    :cond_10
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0, p0}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/android/launcher/Utilities;->createIconThumbnail(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p2, Lcom/android/launcher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 477
    const/4 v0, 0x0

    iput-boolean v0, p2, Lcom/android/launcher/ApplicationInfo;->filtered:Z

    .line 478
    return-void
.end method

.method static updateGestureInDatabase(Landroid/content/Context;Lcom/android/launcher/ItemInfo;)V
    .registers 8
    .parameter "context"
    .parameter "item"

    .prologue
    const/4 v5, 0x0

    .line 1458
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1459
    .local v1, values:Landroid/content/ContentValues;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1461
    .local v0, cr:Landroid/content/ContentResolver;
    invoke-virtual {p1, v1}, Lcom/android/launcher/ItemInfo;->onAddToDatabase(Landroid/content/ContentValues;)V

    .line 1463
    iget-wide v2, p1, Lcom/android/launcher/ItemInfo;->id:J

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/launcher/LauncherSettings$Gestures;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v1, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1464
    return-void
.end method

.method static updateItemInDatabase(Landroid/content/Context;Lcom/android/launcher/ItemInfo;)V
    .registers 8
    .parameter "context"
    .parameter "item"

    .prologue
    const/4 v5, 0x0

    .line 1420
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1421
    .local v1, values:Landroid/content/ContentValues;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1423
    .local v0, cr:Landroid/content/ContentResolver;
    invoke-virtual {p1, v1}, Lcom/android/launcher/ItemInfo;->onAddToDatabase(Landroid/content/ContentValues;)V

    .line 1425
    iget-wide v2, p1, Lcom/android/launcher/ItemInfo;->id:J

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/launcher/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v1, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1426
    return-void
.end method

.method private static updateShortcutLabels(Landroid/content/ContentResolver;Landroid/content/pm/PackageManager;)V
    .registers 14
    .parameter "resolver"
    .parameter "manager"

    .prologue
    .line 652
    sget-object v1, Lcom/android/launcher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "title"

    aput-object v3, v2, v0

    const/4 v0, 0x2

    const-string v3, "intent"

    aput-object v3, v2, v0

    const/4 v0, 0x3

    const-string v3, "itemType"

    aput-object v3, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 657
    .local v1, c:Landroid/database/Cursor;
    const-string v0, "_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 658
    .local v2, idIndex:I
    const-string v0, "intent"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 659
    .local v3, intentIndex:I
    const-string v0, "itemType"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 660
    .local v4, itemTypeIndex:I
    const-string v0, "title"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 665
    .local v6, titleIndex:I
    :cond_39
    :goto_39
    :try_start_39
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_9d

    move-result v0

    if-eqz v0, :cond_99

    .line 667
    :try_start_3f
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_39

    .line 672
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 673
    .local v0, intentUri:Ljava/lang/String;
    if-eqz v0, :cond_39

    .line 674
    const/4 v5, 0x0

    invoke-static {v0, v5}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 675
    .local v0, shortcut:Landroid/content/Intent;
    const-string v5, "android.intent.action.MAIN"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_39

    .line 676
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 677
    .local v0, name:Landroid/content/ComponentName;
    if-eqz v0, :cond_39

    .line 678
    const/4 v5, 0x0

    invoke-virtual {p1, v0, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 679
    .local v0, activityInfo:Landroid/content/pm/ActivityInfo;
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 680
    .local v5, title:Ljava/lang/String;
    invoke-static {p1, v0}, Lcom/android/launcher/LauncherModel;->getLabel(Landroid/content/pm/PackageManager;Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v0

    .line 682
    .local v0, label:Ljava/lang/String;
    if-eqz v5, :cond_77

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .end local v5           #title:Ljava/lang/String;
    if-nez v5, :cond_39

    .line 683
    :cond_77
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 684
    .local v5, values:Landroid/content/ContentValues;
    const-string v7, "title"

    invoke-virtual {v5, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    sget-object v0, Lcom/android/launcher/LauncherSettings$Favorites;->CONTENT_URI_NO_NOTIFICATION:Landroid/net/Uri;

    .end local v0           #label:Ljava/lang/String;
    const-string v7, "_id=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {p0, v0, v5, v7, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_96
    .catchall {:try_start_3f .. :try_end_96} :catchall_9d
    .catch Ljava/net/URISyntaxException; {:try_start_3f .. :try_end_96} :catch_97
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3f .. :try_end_96} :catch_a2

    goto :goto_39

    .line 696
    .end local v5           #values:Landroid/content/ContentValues;
    :catch_97
    move-exception v0

    goto :goto_39

    .line 703
    :cond_99
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 707
    return-void

    .line 703
    :catchall_9d
    move-exception p0

    .end local p0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw p0

    .line 698
    .restart local p0
    :catch_a2
    move-exception v0

    goto :goto_39
.end method


# virtual methods
.method declared-synchronized abortLoaders()V
    .registers 3

    .prologue
    const-string v0, "HomeLoaders"

    .line 79
    monitor-enter p0

    :try_start_3
    const-string v0, "HomeLoaders"

    const-string v1, "aborting loaders"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v0, p0, Lcom/android/launcher/LauncherModel;->mApplicationsLoader:Lcom/android/launcher/LauncherModel$ApplicationsLoader;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/android/launcher/LauncherModel;->mApplicationsLoader:Lcom/android/launcher/LauncherModel$ApplicationsLoader;

    invoke-virtual {v0}, Lcom/android/launcher/LauncherModel$ApplicationsLoader;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 82
    const-string v0, "HomeLoaders"

    const-string v1, "  --> aborting applications loader"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v0, p0, Lcom/android/launcher/LauncherModel;->mApplicationsLoader:Lcom/android/launcher/LauncherModel$ApplicationsLoader;

    invoke-virtual {v0}, Lcom/android/launcher/LauncherModel$ApplicationsLoader;->stop()V

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher/LauncherModel;->mApplicationsLoaded:Z

    .line 87
    :cond_25
    iget-object v0, p0, Lcom/android/launcher/LauncherModel;->mDesktopItemsLoader:Lcom/android/launcher/LauncherModel$DesktopItemsLoader;

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/android/launcher/LauncherModel;->mDesktopItemsLoader:Lcom/android/launcher/LauncherModel$DesktopItemsLoader;

    invoke-virtual {v0}, Lcom/android/launcher/LauncherModel$DesktopItemsLoader;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 88
    const-string v0, "HomeLoaders"

    const-string v1, "  --> aborting workspace loader"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v0, p0, Lcom/android/launcher/LauncherModel;->mDesktopItemsLoader:Lcom/android/launcher/LauncherModel$DesktopItemsLoader;

    invoke-virtual {v0}, Lcom/android/launcher/LauncherModel$DesktopItemsLoader;->stop()V

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher/LauncherModel;->mDesktopItemsLoaded:Z
    :try_end_40
    .catchall {:try_start_3 .. :try_end_40} :catchall_42

    .line 92
    :cond_40
    monitor-exit p0

    return-void

    .line 79
    :catchall_42
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method addDesktopAppWidget(Lcom/android/launcher/LauncherAppWidgetInfo;)V
    .registers 3
    .parameter "info"

    .prologue
    .line 1177
    iget-object v0, p0, Lcom/android/launcher/LauncherModel;->mDesktopAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1178
    return-void
.end method

.method addDesktopItem(Lcom/android/launcher/ItemInfo;)V
    .registers 3
    .parameter "info"

    .prologue
    .line 1161
    iget-object v0, p0, Lcom/android/launcher/LauncherModel;->mDesktopItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1162
    return-void
.end method

.method addFolder(Lcom/android/launcher/FolderInfo;)V
    .registers 5
    .parameter "info"

    .prologue
    .line 1032
    iget-object v0, p0, Lcom/android/launcher/LauncherModel;->mFolders:Ljava/util/HashMap;

    iget-wide v1, p1, Lcom/android/launcher/FolderInfo;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1033
    return-void
.end method

.method declared-synchronized addPackage(Lcom/android/launcher/Launcher;Ljava/lang/String;)V
    .registers 10
    .parameter "launcher"
    .parameter "packageName"

    .prologue
    .line 174
    monitor-enter p0

    :try_start_1
    iget-object v6, p0, Lcom/android/launcher/LauncherModel;->mApplicationsLoader:Lcom/android/launcher/LauncherModel$ApplicationsLoader;

    if-eqz v6, :cond_13

    iget-object v6, p0, Lcom/android/launcher/LauncherModel;->mApplicationsLoader:Lcom/android/launcher/LauncherModel$ApplicationsLoader;

    invoke-virtual {v6}, Lcom/android/launcher/LauncherModel$ApplicationsLoader;->isRunning()Z

    move-result v6

    if-eqz v6, :cond_13

    .line 175
    const/4 v6, 0x0

    invoke-direct {p0, p1, v6}, Lcom/android/launcher/LauncherModel;->startApplicationsLoaderLocked(Lcom/android/launcher/Launcher;Z)V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_49

    .line 196
    :cond_11
    :goto_11
    monitor-exit p0

    return-void

    .line 179
    :cond_13
    if-eqz p2, :cond_11

    :try_start_15
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_11

    .line 180
    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 181
    .local v5, packageManager:Landroid/content/pm/PackageManager;
    invoke-static {v5, p2}, Lcom/android/launcher/LauncherModel;->findActivitiesForPackage(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 183
    .local v4, matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_11

    .line 184
    iget-object v0, p0, Lcom/android/launcher/LauncherModel;->mApplicationsAdapter:Lcom/android/launcher/ApplicationsAdapter;

    .line 185
    .local v0, adapter:Lcom/android/launcher/ApplicationsAdapter;
    iget-object v1, p0, Lcom/android/launcher/LauncherModel;->mAppInfoCache:Ljava/util/HashMap;

    .line 187
    .local v1, cache:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ComponentName;Lcom/android/launcher/ApplicationInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_31
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 188
    .local v3, info:Landroid/content/pm/ResolveInfo;
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lcom/android/launcher/ApplicationsAdapter;->setNotifyOnChange(Z)V

    .line 189
    invoke-static {v5, v1, v3, p1}, Lcom/android/launcher/LauncherModel;->makeAndCacheApplicationInfo(Landroid/content/pm/PackageManager;Ljava/util/HashMap;Landroid/content/pm/ResolveInfo;Landroid/content/Context;)Lcom/android/launcher/ApplicationInfo;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/launcher/ApplicationsAdapter;->add(Ljava/lang/Object;)V
    :try_end_48
    .catchall {:try_start_15 .. :try_end_48} :catchall_49

    goto :goto_31

    .line 174
    .end local v0           #adapter:Lcom/android/launcher/ApplicationsAdapter;
    .end local v1           #cache:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ComponentName;Lcom/android/launcher/ApplicationInfo;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #info:Landroid/content/pm/ResolveInfo;
    .end local v4           #matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v5           #packageManager:Landroid/content/pm/PackageManager;
    :catchall_49
    move-exception v6

    monitor-exit p0

    throw v6

    .line 192
    .restart local v0       #adapter:Lcom/android/launcher/ApplicationsAdapter;
    .restart local v1       #cache:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ComponentName;Lcom/android/launcher/ApplicationInfo;>;"
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v4       #matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v5       #packageManager:Landroid/content/pm/PackageManager;
    :cond_4c
    :try_start_4c
    new-instance v6, Lcom/android/launcher/LauncherModel$ApplicationInfoComparator;

    invoke-direct {v6}, Lcom/android/launcher/LauncherModel$ApplicationInfoComparator;-><init>()V

    invoke-virtual {v0, v6}, Lcom/android/launcher/ApplicationsAdapter;->sort(Ljava/util/Comparator;)V

    .line 193
    invoke-virtual {v0}, Lcom/android/launcher/ApplicationsAdapter;->notifyDataSetChanged()V
    :try_end_57
    .catchall {:try_start_4c .. :try_end_57} :catchall_49

    goto :goto_11
.end method

.method declared-synchronized dropApplicationCache()V
    .registers 2

    .prologue
    .line 100
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/launcher/LauncherModel;->mAppInfoCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 101
    monitor-exit p0

    return-void

    .line 100
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method findFolderById(J)Lcom/android/launcher/FolderInfo;
    .registers 5
    .parameter "id"

    .prologue
    .line 1028
    iget-object v0, p0, Lcom/android/launcher/LauncherModel;->mFolders:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/launcher/FolderInfo;

    return-object p0
.end method

.method getApplicationInfoIcon(Landroid/content/pm/PackageManager;Lcom/android/launcher/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .registers 8
    .parameter "manager"
    .parameter "info"

    .prologue
    .line 426
    iget-object v3, p2, Lcom/android/launcher/ApplicationInfo;->intent:Landroid/content/Intent;

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 427
    .local v2, resolveInfo:Landroid/content/pm/ResolveInfo;
    if-nez v2, :cond_b

    .line 428
    const/4 v3, 0x0

    .line 440
    :goto_a
    return-object v3

    .line 431
    :cond_b
    new-instance v1, Landroid/content/ComponentName;

    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    .local v1, componentName:Landroid/content/ComponentName;
    iget-object v3, p0, Lcom/android/launcher/LauncherModel;->mAppInfoCache:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/ApplicationInfo;

    .line 436
    .local v0, application:Lcom/android/launcher/ApplicationInfo;
    if-nez v0, :cond_2b

    .line 437
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v3, p1}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_a

    .line 440
    :cond_2b
    iget-object v3, v0, Lcom/android/launcher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_a
.end method

.method getApplicationsAdapter()Lcom/android/launcher/ApplicationsAdapter;
    .registers 2

    .prologue
    .line 1138
    iget-object v0, p0, Lcom/android/launcher/LauncherModel;->mApplicationsAdapter:Lcom/android/launcher/ApplicationsAdapter;

    return-object v0
.end method

.method getDesktopAppWidgets()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher/LauncherAppWidgetInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1152
    iget-object v0, p0, Lcom/android/launcher/LauncherModel;->mDesktopAppWidgets:Ljava/util/ArrayList;

    return-object v0
.end method

.method getDesktopItems()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher/ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1145
    iget-object v0, p0, Lcom/android/launcher/LauncherModel;->mDesktopItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method getFolderById(Landroid/content/Context;J)Lcom/android/launcher/FolderInfo;
    .registers 22
    .parameter "context"
    .parameter "id"

    .prologue
    .line 1330
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 1331
    .local v4, cr:Landroid/content/ContentResolver;
    sget-object v5, Lcom/android/launcher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const-string v7, "_id=? and (itemType=? or itemType=?)"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const/4 v10, 0x2

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const/4 v10, 0x3

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1338
    .local v10, c:Landroid/database/Cursor;
    :try_start_28
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_a7

    .line 1339
    const-string v5, "itemType"

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 1340
    .local v15, itemTypeIndex:I
    const-string v5, "title"

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 1341
    .local v17, titleIndex:I
    const-string v5, "container"

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 1342
    .local v13, containerIndex:I
    const-string v5, "screen"

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 1343
    .local v16, screenIndex:I
    const-string v5, "cellX"

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 1344
    .local v11, cellXIndex:I
    const-string v5, "cellY"

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 1346
    .local v12, cellYIndex:I
    const/4 v14, 0x0

    .line 1347
    .local v14, folderInfo:Lcom/android/launcher/FolderInfo;
    invoke-interface {v10, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    packed-switch v5, :pswitch_data_b2

    .line 1356
    :goto_5a
    move-object v0, v10

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v14, Lcom/android/launcher/FolderInfo;->title:Ljava/lang/CharSequence;

    .line 1357
    move-wide/from16 v0, p2

    move-object v2, v14

    iput-wide v0, v2, Lcom/android/launcher/FolderInfo;->id:J

    .line 1358
    invoke-interface {v10, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    int-to-long v5, v5

    iput-wide v5, v14, Lcom/android/launcher/FolderInfo;->container:J

    .line 1359
    move-object v0, v10

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v14, Lcom/android/launcher/FolderInfo;->screen:I

    .line 1360
    invoke-interface {v10, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v14, Lcom/android/launcher/FolderInfo;->cellX:I

    .line 1361
    invoke-interface {v10, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v14, Lcom/android/launcher/FolderInfo;->cellY:I
    :try_end_84
    .catchall {:try_start_28 .. :try_end_84} :catchall_ac

    .line 1366
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    move-object v5, v14

    .line 1369
    .end local v11           #cellXIndex:I
    .end local v12           #cellYIndex:I
    .end local v13           #containerIndex:I
    .end local v14           #folderInfo:Lcom/android/launcher/FolderInfo;
    .end local v15           #itemTypeIndex:I
    .end local v16           #screenIndex:I
    .end local v17           #titleIndex:I
    :goto_88
    return-object v5

    .line 1349
    .restart local v11       #cellXIndex:I
    .restart local v12       #cellYIndex:I
    .restart local v13       #containerIndex:I
    .restart local v14       #folderInfo:Lcom/android/launcher/FolderInfo;
    .restart local v15       #itemTypeIndex:I
    .restart local v16       #screenIndex:I
    .restart local v17       #titleIndex:I
    :pswitch_89
    :try_start_89
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher/LauncherModel;->mFolders:Ljava/util/HashMap;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    move-wide/from16 v2, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher/LauncherModel;->findOrMakeUserFolder(Ljava/util/HashMap;J)Lcom/android/launcher/UserFolderInfo;

    move-result-object v14

    .line 1350
    goto :goto_5a

    .line 1352
    :pswitch_98
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher/LauncherModel;->mFolders:Ljava/util/HashMap;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    move-wide/from16 v2, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher/LauncherModel;->findOrMakeLiveFolder(Ljava/util/HashMap;J)Lcom/android/launcher/LiveFolderInfo;
    :try_end_a5
    .catchall {:try_start_89 .. :try_end_a5} :catchall_ac

    move-result-object v14

    goto :goto_5a

    .line 1366
    .end local v11           #cellXIndex:I
    .end local v12           #cellYIndex:I
    .end local v13           #containerIndex:I
    .end local v14           #folderInfo:Lcom/android/launcher/FolderInfo;
    .end local v15           #itemTypeIndex:I
    .end local v16           #screenIndex:I
    .end local v17           #titleIndex:I
    :cond_a7
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1369
    const/4 v5, 0x0

    goto :goto_88

    .line 1366
    :catchall_ac
    move-exception v5

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v5

    .line 1347
    nop

    :pswitch_data_b2
    .packed-switch 0x2
        :pswitch_89
        :pswitch_98
    .end packed-switch
.end method

.method isDesktopLoaded()Z
    .registers 2

    .prologue
    .line 605
    iget-object v0, p0, Lcom/android/launcher/LauncherModel;->mDesktopItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/launcher/LauncherModel;->mDesktopAppWidgets:Ljava/util/ArrayList;

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/android/launcher/LauncherModel;->mDesktopItemsLoaded:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method declared-synchronized loadApplications(ZLcom/android/launcher/Launcher;Z)Z
    .registers 7
    .parameter "isLaunching"
    .parameter "launcher"
    .parameter "localeChanged"

    .prologue
    const/4 v2, 0x0

    const-string v0, "HomeLoaders"

    .line 112
    monitor-enter p0

    :try_start_4
    const-string v0, "HomeLoaders"

    const-string v1, "load applications"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    if-eqz p1, :cond_26

    iget-boolean v0, p0, Lcom/android/launcher/LauncherModel;->mApplicationsLoaded:Z

    if-eqz v0, :cond_26

    if-nez p3, :cond_26

    .line 115
    new-instance v0, Lcom/android/launcher/ApplicationsAdapter;

    iget-object v1, p0, Lcom/android/launcher/LauncherModel;->mApplications:Ljava/util/ArrayList;

    invoke-direct {v0, p2, v1}, Lcom/android/launcher/ApplicationsAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/launcher/LauncherModel;->mApplicationsAdapter:Lcom/android/launcher/ApplicationsAdapter;

    .line 116
    const-string v0, "HomeLoaders"

    const-string v1, "  --> applications loaded, return"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catchall {:try_start_4 .. :try_end_23} :catchall_55

    move v0, v2

    .line 138
    :goto_24
    monitor-exit p0

    return v0

    .line 120
    :cond_26
    :try_start_26
    invoke-direct {p0}, Lcom/android/launcher/LauncherModel;->stopAndWaitForApplicationsLoader()V

    .line 122
    if-eqz p3, :cond_2e

    .line 123
    invoke-virtual {p0}, Lcom/android/launcher/LauncherModel;->dropApplicationCache()V

    .line 126
    :cond_2e
    iget-object v0, p0, Lcom/android/launcher/LauncherModel;->mApplicationsAdapter:Lcom/android/launcher/ApplicationsAdapter;

    if-eqz v0, :cond_36

    if-nez p1, :cond_36

    if-eqz p3, :cond_48

    .line 127
    :cond_36
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x2a

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher/LauncherModel;->mApplications:Ljava/util/ArrayList;

    .line 128
    new-instance v0, Lcom/android/launcher/ApplicationsAdapter;

    iget-object v1, p0, Lcom/android/launcher/LauncherModel;->mApplications:Ljava/util/ArrayList;

    invoke-direct {v0, p2, v1}, Lcom/android/launcher/ApplicationsAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/launcher/LauncherModel;->mApplicationsAdapter:Lcom/android/launcher/ApplicationsAdapter;

    .line 131
    :cond_48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher/LauncherModel;->mApplicationsLoaded:Z

    .line 133
    if-nez p1, :cond_53

    .line 134
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/android/launcher/LauncherModel;->startApplicationsLoaderLocked(Lcom/android/launcher/Launcher;Z)V
    :try_end_51
    .catchall {:try_start_26 .. :try_end_51} :catchall_55

    move v0, v2

    .line 135
    goto :goto_24

    .line 138
    :cond_53
    const/4 v0, 0x1

    goto :goto_24

    .line 112
    :catchall_55
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method loadUserItems(ZLcom/android/launcher/Launcher;ZZ)V
    .registers 11
    .parameter "isLaunching"
    .parameter "launcher"
    .parameter "localeChanged"
    .parameter "loadApplications"

    .prologue
    const-string v3, "HomeLoaders"

    .line 614
    const-string v0, "HomeLoaders"

    const-string v0, "loading user items"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    if-eqz p1, :cond_26

    invoke-virtual {p0}, Lcom/android/launcher/LauncherModel;->isDesktopLoaded()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 617
    const-string v0, "HomeLoaders"

    const-string v0, "  --> items loaded, return"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    if-eqz p4, :cond_1e

    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lcom/android/launcher/LauncherModel;->startApplicationsLoader(Lcom/android/launcher/Launcher;Z)V

    .line 620
    :cond_1e
    iget-object v0, p0, Lcom/android/launcher/LauncherModel;->mDesktopItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/launcher/LauncherModel;->mDesktopAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {p2, v0, v1}, Lcom/android/launcher/Launcher;->onDesktopItemsLoaded(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 649
    :goto_25
    return-void

    .line 624
    :cond_26
    iget-object v0, p0, Lcom/android/launcher/LauncherModel;->mDesktopItemsLoader:Lcom/android/launcher/LauncherModel$DesktopItemsLoader;

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/android/launcher/LauncherModel;->mDesktopItemsLoader:Lcom/android/launcher/LauncherModel$DesktopItemsLoader;

    invoke-virtual {v0}, Lcom/android/launcher/LauncherModel$DesktopItemsLoader;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 625
    const-string v0, "HomeLoaders"

    const-string v0, "  --> stopping workspace loader"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    iget-object v0, p0, Lcom/android/launcher/LauncherModel;->mDesktopItemsLoader:Lcom/android/launcher/LauncherModel$DesktopItemsLoader;

    invoke-virtual {v0}, Lcom/android/launcher/LauncherModel$DesktopItemsLoader;->stop()V

    .line 630
    :try_start_3e
    iget-object v0, p0, Lcom/android/launcher/LauncherModel;->mDesktopLoaderThread:Ljava/lang/Thread;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Ljava/lang/Thread;->join(J)V
    :try_end_45
    .catch Ljava/lang/InterruptedException; {:try_start_3e .. :try_end_45} :catch_72

    .line 640
    :goto_45
    iget-object v0, p0, Lcom/android/launcher/LauncherModel;->mDesktopItemsLoader:Lcom/android/launcher/LauncherModel$DesktopItemsLoader;

    invoke-static {v0}, Lcom/android/launcher/LauncherModel$DesktopItemsLoader;->access$700(Lcom/android/launcher/LauncherModel$DesktopItemsLoader;)Z

    move-result p4

    .line 643
    :cond_4b
    const-string v0, "HomeLoaders"

    const-string v0, "  --> starting workspace loader"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher/LauncherModel;->mDesktopItemsLoaded:Z

    .line 645
    new-instance v0, Lcom/android/launcher/LauncherModel$DesktopItemsLoader;

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher/LauncherModel$DesktopItemsLoader;-><init>(Lcom/android/launcher/LauncherModel;Lcom/android/launcher/Launcher;ZZZ)V

    iput-object v0, p0, Lcom/android/launcher/LauncherModel;->mDesktopItemsLoader:Lcom/android/launcher/LauncherModel$DesktopItemsLoader;

    .line 647
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/launcher/LauncherModel;->mDesktopItemsLoader:Lcom/android/launcher/LauncherModel$DesktopItemsLoader;

    const-string v2, "Desktop Items Loader"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/launcher/LauncherModel;->mDesktopLoaderThread:Ljava/lang/Thread;

    .line 648
    iget-object v0, p0, Lcom/android/launcher/LauncherModel;->mDesktopLoaderThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_25

    .line 631
    :catch_72
    move-exception v0

    goto :goto_45
.end method

.method queryGesture(Landroid/content/Context;Ljava/lang/String;)Lcom/android/launcher/ApplicationInfo;
    .registers 27
    .parameter "context"
    .parameter "id"

    .prologue
    .line 1468
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1469
    .local v3, contentResolver:Landroid/content/ContentResolver;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    .line 1470
    .local v20, manager:Landroid/content/pm/PackageManager;
    sget-object v4, Lcom/android/launcher/LauncherSettings$Gestures;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const-string v6, "_id=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p2, v7, v8

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 1474
    .local v5, c:Landroid/database/Cursor;
    const/4 v13, 0x0

    .line 1477
    .local v13, info:Lcom/android/launcher/ApplicationInfo;
    :try_start_19
    const-string v4, "_id"

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 1478
    .local v12, idIndex:I
    const-string v4, "intent"

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 1479
    .local v17, intentIndex:I
    const-string v4, "title"

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    .line 1480
    .local v21, titleIndex:I
    const-string v4, "iconType"

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 1481
    .local v7, iconTypeIndex:I
    const-string v4, "icon"

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 1482
    .local v10, iconIndex:I
    const-string v4, "iconPackage"

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 1483
    .local v8, iconPackageIndex:I
    const-string v4, "iconResource"

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 1484
    .local v9, iconResourceIndex:I
    const-string v4, "itemType"

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    .line 1489
    .local v19, itemTypeIndex:I
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_59

    .line 1490
    move-object v0, v5

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_55
    .catchall {:try_start_19 .. :try_end_55} :catchall_cf
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_55} :catch_9e

    move-result v18

    .line 1492
    .local v18, itemType:I
    packed-switch v18, :pswitch_data_de

    .line 1525
    .end local v18           #itemType:I
    :cond_59
    :goto_59
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .end local v7           #iconTypeIndex:I
    .end local v8           #iconPackageIndex:I
    .end local v9           #iconResourceIndex:I
    .end local v10           #iconIndex:I
    .end local v12           #idIndex:I
    .end local v17           #intentIndex:I
    .end local v19           #itemTypeIndex:I
    .end local v21           #titleIndex:I
    :goto_5c
    move-object v4, v13

    .line 1528
    :goto_5d
    return-object v4

    .line 1495
    .restart local v7       #iconTypeIndex:I
    .restart local v8       #iconPackageIndex:I
    .restart local v9       #iconResourceIndex:I
    .restart local v10       #iconIndex:I
    .restart local v12       #idIndex:I
    .restart local v17       #intentIndex:I
    .restart local v18       #itemType:I
    .restart local v19       #itemTypeIndex:I
    .restart local v21       #titleIndex:I
    :pswitch_5e
    :try_start_5e
    move-object v0, v5

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_64
    .catchall {:try_start_5e .. :try_end_64} :catchall_cf
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_64} :catch_9e

    move-result-object v16

    .line 1497
    .local v16, intentDescription:Ljava/lang/String;
    const/4 v4, 0x0

    :try_start_66
    move-object/from16 v0, v16

    move v1, v4

    invoke-static {v0, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_6c
    .catchall {:try_start_66 .. :try_end_6c} :catchall_cf
    .catch Ljava/net/URISyntaxException; {:try_start_66 .. :try_end_6c} :catch_bf
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_6c} :catch_9e

    move-result-object v15

    .line 1502
    .local v15, intent:Landroid/content/Intent;
    if-nez v18, :cond_c5

    .line 1503
    :try_start_6f
    move-object/from16 v0, v20

    move-object v1, v15

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Lcom/android/launcher/LauncherModel;->getApplicationInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;)Lcom/android/launcher/ApplicationInfo;
    :try_end_77
    .catchall {:try_start_6f .. :try_end_77} :catchall_cf
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_77} :catch_9e

    move-result-object v13

    move-object v14, v13

    .line 1509
    .end local v13           #info:Lcom/android/launcher/ApplicationInfo;
    .local v14, info:Lcom/android/launcher/ApplicationInfo;
    :goto_79
    if-nez v14, :cond_db

    .line 1510
    :try_start_7b
    new-instance v13, Lcom/android/launcher/ApplicationInfo;

    invoke-direct {v13}, Lcom/android/launcher/ApplicationInfo;-><init>()V
    :try_end_80
    .catchall {:try_start_7b .. :try_end_80} :catchall_d4
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_80} :catch_d7

    .line 1511
    .end local v14           #info:Lcom/android/launcher/ApplicationInfo;
    .restart local v13       #info:Lcom/android/launcher/ApplicationInfo;
    :try_start_80
    invoke-virtual/range {v20 .. v20}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v13, Lcom/android/launcher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 1514
    :goto_86
    const/4 v4, 0x1

    iput-boolean v4, v13, Lcom/android/launcher/ApplicationInfo;->isGesture:Z

    .line 1515
    move-object v0, v5

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v13, Lcom/android/launcher/ApplicationInfo;->title:Ljava/lang/CharSequence;

    .line 1516
    iput-object v15, v13, Lcom/android/launcher/ApplicationInfo;->intent:Landroid/content/Intent;

    .line 1517
    invoke-interface {v5, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object v2, v13

    iput-wide v0, v2, Lcom/android/launcher/ApplicationInfo;->id:J
    :try_end_9d
    .catchall {:try_start_80 .. :try_end_9d} :catchall_cf
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_9d} :catch_9e

    goto :goto_59

    .line 1522
    .end local v7           #iconTypeIndex:I
    .end local v8           #iconPackageIndex:I
    .end local v9           #iconResourceIndex:I
    .end local v10           #iconIndex:I
    .end local v12           #idIndex:I
    .end local v15           #intent:Landroid/content/Intent;
    .end local v16           #intentDescription:Ljava/lang/String;
    .end local v17           #intentIndex:I
    .end local v18           #itemType:I
    .end local v19           #itemTypeIndex:I
    .end local v21           #titleIndex:I
    :catch_9e
    move-exception v4

    move-object v11, v4

    .line 1523
    .local v11, e:Ljava/lang/Exception;
    :goto_a0
    :try_start_a0
    const-string v4, "HomeLoaders"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not load gesture with name "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bb
    .catchall {:try_start_a0 .. :try_end_bb} :catchall_cf

    .line 1525
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    goto :goto_5c

    .line 1498
    .end local v11           #e:Ljava/lang/Exception;
    .restart local v7       #iconTypeIndex:I
    .restart local v8       #iconPackageIndex:I
    .restart local v9       #iconResourceIndex:I
    .restart local v10       #iconIndex:I
    .restart local v12       #idIndex:I
    .restart local v16       #intentDescription:Ljava/lang/String;
    .restart local v17       #intentIndex:I
    .restart local v18       #itemType:I
    .restart local v19       #itemTypeIndex:I
    .restart local v21       #titleIndex:I
    :catch_bf
    move-exception v11

    .line 1499
    .local v11, e:Ljava/net/URISyntaxException;
    const/4 v4, 0x0

    .line 1525
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    goto :goto_5d

    .end local v11           #e:Ljava/net/URISyntaxException;
    .restart local v15       #intent:Landroid/content/Intent;
    :cond_c5
    move-object/from16 v4, p0

    move-object/from16 v6, p1

    .line 1505
    :try_start_c9
    invoke-direct/range {v4 .. v10}, Lcom/android/launcher/LauncherModel;->getApplicationInfoShortcut(Landroid/database/Cursor;Landroid/content/Context;IIII)Lcom/android/launcher/ApplicationInfo;
    :try_end_cc
    .catchall {:try_start_c9 .. :try_end_cc} :catchall_cf
    .catch Ljava/lang/Exception; {:try_start_c9 .. :try_end_cc} :catch_9e

    move-result-object v13

    move-object v14, v13

    .end local v13           #info:Lcom/android/launcher/ApplicationInfo;
    .restart local v14       #info:Lcom/android/launcher/ApplicationInfo;
    goto :goto_79

    .line 1525
    .end local v7           #iconTypeIndex:I
    .end local v8           #iconPackageIndex:I
    .end local v9           #iconResourceIndex:I
    .end local v10           #iconIndex:I
    .end local v12           #idIndex:I
    .end local v14           #info:Lcom/android/launcher/ApplicationInfo;
    .end local v15           #intent:Landroid/content/Intent;
    .end local v16           #intentDescription:Ljava/lang/String;
    .end local v17           #intentIndex:I
    .end local v18           #itemType:I
    .end local v19           #itemTypeIndex:I
    .end local v21           #titleIndex:I
    .restart local v13       #info:Lcom/android/launcher/ApplicationInfo;
    :catchall_cf
    move-exception v4

    :goto_d0
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    throw v4

    .end local v13           #info:Lcom/android/launcher/ApplicationInfo;
    .restart local v7       #iconTypeIndex:I
    .restart local v8       #iconPackageIndex:I
    .restart local v9       #iconResourceIndex:I
    .restart local v10       #iconIndex:I
    .restart local v12       #idIndex:I
    .restart local v14       #info:Lcom/android/launcher/ApplicationInfo;
    .restart local v15       #intent:Landroid/content/Intent;
    .restart local v16       #intentDescription:Ljava/lang/String;
    .restart local v17       #intentIndex:I
    .restart local v18       #itemType:I
    .restart local v19       #itemTypeIndex:I
    .restart local v21       #titleIndex:I
    :catchall_d4
    move-exception v4

    move-object v13, v14

    .end local v14           #info:Lcom/android/launcher/ApplicationInfo;
    .restart local v13       #info:Lcom/android/launcher/ApplicationInfo;
    goto :goto_d0

    .line 1522
    .end local v13           #info:Lcom/android/launcher/ApplicationInfo;
    .restart local v14       #info:Lcom/android/launcher/ApplicationInfo;
    :catch_d7
    move-exception v4

    move-object v11, v4

    move-object v13, v14

    .end local v14           #info:Lcom/android/launcher/ApplicationInfo;
    .restart local v13       #info:Lcom/android/launcher/ApplicationInfo;
    goto :goto_a0

    .end local v13           #info:Lcom/android/launcher/ApplicationInfo;
    .restart local v14       #info:Lcom/android/launcher/ApplicationInfo;
    :cond_db
    move-object v13, v14

    .end local v14           #info:Lcom/android/launcher/ApplicationInfo;
    .restart local v13       #info:Lcom/android/launcher/ApplicationInfo;
    goto :goto_86

    .line 1492
    nop

    :pswitch_data_de
    .packed-switch 0x0
        :pswitch_5e
        :pswitch_5e
    .end packed-switch
.end method

.method removeDesktopAppWidget(Lcom/android/launcher/LauncherAppWidgetInfo;)V
    .registers 3
    .parameter "info"

    .prologue
    .line 1184
    iget-object v0, p0, Lcom/android/launcher/LauncherModel;->mDesktopAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1185
    return-void
.end method

.method removeDesktopItem(Lcom/android/launcher/ItemInfo;)V
    .registers 3
    .parameter "info"

    .prologue
    .line 1170
    iget-object v0, p0, Lcom/android/launcher/LauncherModel;->mDesktopItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1171
    return-void
.end method

.method declared-synchronized removePackage(Lcom/android/launcher/Launcher;Ljava/lang/String;)V
    .registers 14
    .parameter "launcher"
    .parameter "packageName"

    .prologue
    .line 199
    monitor-enter p0

    :try_start_1
    iget-object v10, p0, Lcom/android/launcher/LauncherModel;->mApplicationsLoader:Lcom/android/launcher/LauncherModel$ApplicationsLoader;

    if-eqz v10, :cond_16

    iget-object v10, p0, Lcom/android/launcher/LauncherModel;->mApplicationsLoader:Lcom/android/launcher/LauncherModel$ApplicationsLoader;

    invoke-virtual {v10}, Lcom/android/launcher/LauncherModel$ApplicationsLoader;->isRunning()Z

    move-result v10

    if-eqz v10, :cond_16

    .line 200
    invoke-virtual {p0}, Lcom/android/launcher/LauncherModel;->dropApplicationCache()V

    .line 201
    const/4 v10, 0x0

    invoke-direct {p0, p1, v10}, Lcom/android/launcher/LauncherModel;->startApplicationsLoaderLocked(Lcom/android/launcher/Launcher;Z)V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_6b

    .line 232
    :cond_14
    :goto_14
    monitor-exit p0

    return-void

    .line 205
    :cond_16
    if-eqz p2, :cond_14

    :try_start_18
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_14

    .line 206
    iget-object v0, p0, Lcom/android/launcher/LauncherModel;->mApplicationsAdapter:Lcom/android/launcher/ApplicationsAdapter;

    .line 208
    .local v0, adapter:Lcom/android/launcher/ApplicationsAdapter;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 209
    .local v9, toRemove:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher/ApplicationInfo;>;"
    invoke-virtual {v0}, Lcom/android/launcher/ApplicationsAdapter;->getCount()I

    move-result v4

    .line 211
    .local v4, count:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_2a
    if-ge v5, v4, :cond_48

    .line 212
    invoke-virtual {v0, v5}, Lcom/android/launcher/ApplicationsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher/ApplicationInfo;

    .line 213
    .local v1, applicationInfo:Lcom/android/launcher/ApplicationInfo;
    iget-object v8, v1, Lcom/android/launcher/ApplicationInfo;->intent:Landroid/content/Intent;

    .line 214
    .local v8, intent:Landroid/content/Intent;
    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    .line 215
    .local v3, component:Landroid/content/ComponentName;
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_45

    .line 216
    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    :cond_45
    add-int/lit8 v5, v5, 0x1

    goto :goto_2a

    .line 220
    .end local v1           #applicationInfo:Lcom/android/launcher/ApplicationInfo;
    .end local v3           #component:Landroid/content/ComponentName;
    .end local v8           #intent:Landroid/content/Intent;
    :cond_48
    iget-object v2, p0, Lcom/android/launcher/LauncherModel;->mAppInfoCache:Ljava/util/HashMap;

    .line 221
    .local v2, cache:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ComponentName;Lcom/android/launcher/ApplicationInfo;>;"
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_4e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher/ApplicationInfo;

    .line 222
    .local v7, info:Lcom/android/launcher/ApplicationInfo;
    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Lcom/android/launcher/ApplicationsAdapter;->setNotifyOnChange(Z)V

    .line 223
    invoke-virtual {v0, v7}, Lcom/android/launcher/ApplicationsAdapter;->remove(Ljava/lang/Object;)V

    .line 224
    iget-object v10, v7, Lcom/android/launcher/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6a
    .catchall {:try_start_18 .. :try_end_6a} :catchall_6b

    goto :goto_4e

    .line 199
    .end local v0           #adapter:Lcom/android/launcher/ApplicationsAdapter;
    .end local v2           #cache:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ComponentName;Lcom/android/launcher/ApplicationInfo;>;"
    .end local v4           #count:I
    .end local v5           #i:I
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v7           #info:Lcom/android/launcher/ApplicationInfo;
    .end local v9           #toRemove:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher/ApplicationInfo;>;"
    :catchall_6b
    move-exception v10

    monitor-exit p0

    throw v10

    .line 227
    .restart local v0       #adapter:Lcom/android/launcher/ApplicationsAdapter;
    .restart local v2       #cache:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ComponentName;Lcom/android/launcher/ApplicationInfo;>;"
    .restart local v4       #count:I
    .restart local v5       #i:I
    .restart local v6       #i$:Ljava/util/Iterator;
    .restart local v9       #toRemove:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher/ApplicationInfo;>;"
    :cond_6e
    :try_start_6e
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_14

    .line 228
    new-instance v10, Lcom/android/launcher/LauncherModel$ApplicationInfoComparator;

    invoke-direct {v10}, Lcom/android/launcher/LauncherModel$ApplicationInfoComparator;-><init>()V

    invoke-virtual {v0, v10}, Lcom/android/launcher/ApplicationsAdapter;->sort(Ljava/util/Comparator;)V

    .line 229
    invoke-virtual {v0}, Lcom/android/launcher/ApplicationsAdapter;->notifyDataSetChanged()V
    :try_end_7f
    .catchall {:try_start_6e .. :try_end_7f} :catchall_6b

    goto :goto_14
.end method

.method removeUserFolder(Lcom/android/launcher/UserFolderInfo;)V
    .registers 5
    .parameter "userFolderInfo"

    .prologue
    .line 1272
    iget-object v0, p0, Lcom/android/launcher/LauncherModel;->mFolders:Ljava/util/HashMap;

    iget-wide v1, p1, Lcom/android/launcher/UserFolderInfo;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1273
    return-void
.end method

.method removeUserFolderItem(Lcom/android/launcher/UserFolderInfo;Lcom/android/launcher/ItemInfo;)V
    .registers 4
    .parameter "folder"
    .parameter "info"

    .prologue
    .line 1264
    iget-object v0, p1, Lcom/android/launcher/UserFolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1265
    return-void
.end method

.method declared-synchronized syncPackage(Lcom/android/launcher/Launcher;Ljava/lang/String;)V
    .registers 5
    .parameter "launcher"
    .parameter "packageName"

    .prologue
    .line 279
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/android/launcher/LauncherModel;->mApplicationsLoader:Lcom/android/launcher/LauncherModel$ApplicationsLoader;

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/android/launcher/LauncherModel;->mApplicationsLoader:Lcom/android/launcher/LauncherModel$ApplicationsLoader;

    invoke-virtual {v1}, Lcom/android/launcher/LauncherModel$ApplicationsLoader;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 280
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/launcher/LauncherModel;->startApplicationsLoaderLocked(Lcom/android/launcher/Launcher;Z)V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_2f

    .line 291
    :cond_11
    :goto_11
    monitor-exit p0

    return-void

    .line 284
    :cond_13
    if-eqz p2, :cond_11

    :try_start_15
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_11

    .line 285
    invoke-direct {p0, p1, p2}, Lcom/android/launcher/LauncherModel;->syncLocked(Lcom/android/launcher/Launcher;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 286
    iget-object v0, p0, Lcom/android/launcher/LauncherModel;->mApplicationsAdapter:Lcom/android/launcher/ApplicationsAdapter;

    .line 287
    .local v0, adapter:Lcom/android/launcher/ApplicationsAdapter;
    new-instance v1, Lcom/android/launcher/LauncherModel$ApplicationInfoComparator;

    invoke-direct {v1}, Lcom/android/launcher/LauncherModel$ApplicationInfoComparator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/launcher/ApplicationsAdapter;->sort(Ljava/util/Comparator;)V

    .line 288
    invoke-virtual {v0}, Lcom/android/launcher/ApplicationsAdapter;->notifyDataSetChanged()V
    :try_end_2e
    .catchall {:try_start_15 .. :try_end_2e} :catchall_2f

    goto :goto_11

    .line 279
    .end local v0           #adapter:Lcom/android/launcher/ApplicationsAdapter;
    :catchall_2f
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method unbind()V
    .registers 2

    .prologue
    .line 1071
    invoke-direct {p0}, Lcom/android/launcher/LauncherModel;->stopAndWaitForApplicationsLoader()V

    .line 1072
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher/LauncherModel;->mApplicationsAdapter:Lcom/android/launcher/ApplicationsAdapter;

    .line 1073
    iget-object v0, p0, Lcom/android/launcher/LauncherModel;->mApplications:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/launcher/LauncherModel;->unbindAppDrawables(Ljava/util/ArrayList;)V

    .line 1074
    iget-object v0, p0, Lcom/android/launcher/LauncherModel;->mDesktopItems:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/launcher/LauncherModel;->unbindDrawables(Ljava/util/ArrayList;)V

    .line 1075
    iget-object v0, p0, Lcom/android/launcher/LauncherModel;->mDesktopAppWidgets:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/launcher/LauncherModel;->unbindAppWidgetHostViews(Ljava/util/ArrayList;)V

    .line 1076
    invoke-direct {p0}, Lcom/android/launcher/LauncherModel;->unbindCachedIconDrawables()V

    .line 1077
    return-void
.end method

.method declared-synchronized updatePackage(Lcom/android/launcher/Launcher;Ljava/lang/String;)V
    .registers 13
    .parameter "launcher"
    .parameter "packageName"

    .prologue
    .line 235
    monitor-enter p0

    :try_start_1
    iget-object v8, p0, Lcom/android/launcher/LauncherModel;->mApplicationsLoader:Lcom/android/launcher/LauncherModel$ApplicationsLoader;

    if-eqz v8, :cond_13

    iget-object v8, p0, Lcom/android/launcher/LauncherModel;->mApplicationsLoader:Lcom/android/launcher/LauncherModel$ApplicationsLoader;

    invoke-virtual {v8}, Lcom/android/launcher/LauncherModel$ApplicationsLoader;->isRunning()Z

    move-result v8

    if-eqz v8, :cond_13

    .line 236
    const/4 v8, 0x0

    invoke-direct {p0, p1, v8}, Lcom/android/launcher/LauncherModel;->startApplicationsLoaderLocked(Lcom/android/launcher/Launcher;Z)V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_5f

    .line 266
    :cond_11
    :goto_11
    monitor-exit p0

    return-void

    .line 240
    :cond_13
    if-eqz p2, :cond_11

    :try_start_15
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_11

    .line 241
    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 242
    .local v7, packageManager:Landroid/content/pm/PackageManager;
    iget-object v0, p0, Lcom/android/launcher/LauncherModel;->mApplicationsAdapter:Lcom/android/launcher/ApplicationsAdapter;

    .line 244
    .local v0, adapter:Lcom/android/launcher/ApplicationsAdapter;
    invoke-static {v7, p2}, Lcom/android/launcher/LauncherModel;->findActivitiesForPackage(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 245
    .local v6, matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    .line 247
    .local v3, count:I
    const/4 v2, 0x0

    .line 249
    .local v2, changed:Z
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2b
    if-ge v4, v3, :cond_4a

    .line 250
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 251
    .local v5, info:Landroid/content/pm/ResolveInfo;
    iget-object v8, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v9, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v0, v8, v9}, Lcom/android/launcher/LauncherModel;->findIntent(Lcom/android/launcher/ApplicationsAdapter;Ljava/lang/String;Ljava/lang/String;)Lcom/android/launcher/ApplicationInfo;

    move-result-object v1

    .line 253
    .local v1, applicationInfo:Lcom/android/launcher/ApplicationInfo;
    if-eqz v1, :cond_47

    .line 254
    invoke-direct {p0, v7, v5, v1, p1}, Lcom/android/launcher/LauncherModel;->updateAndCacheApplicationInfo(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Lcom/android/launcher/ApplicationInfo;Landroid/content/Context;)V

    .line 255
    const/4 v2, 0x1

    .line 249
    :cond_47
    add-int/lit8 v4, v4, 0x1

    goto :goto_2b

    .line 259
    .end local v1           #applicationInfo:Lcom/android/launcher/ApplicationInfo;
    .end local v5           #info:Landroid/content/pm/ResolveInfo;
    :cond_4a
    invoke-direct {p0, p1, p2}, Lcom/android/launcher/LauncherModel;->syncLocked(Lcom/android/launcher/Launcher;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_51

    const/4 v2, 0x1

    .line 261
    :cond_51
    if-eqz v2, :cond_11

    .line 262
    new-instance v8, Lcom/android/launcher/LauncherModel$ApplicationInfoComparator;

    invoke-direct {v8}, Lcom/android/launcher/LauncherModel$ApplicationInfoComparator;-><init>()V

    invoke-virtual {v0, v8}, Lcom/android/launcher/ApplicationsAdapter;->sort(Ljava/util/Comparator;)V

    .line 263
    invoke-virtual {v0}, Lcom/android/launcher/ApplicationsAdapter;->notifyDataSetChanged()V
    :try_end_5e
    .catchall {:try_start_15 .. :try_end_5e} :catchall_5f

    goto :goto_11

    .line 235
    .end local v0           #adapter:Lcom/android/launcher/ApplicationsAdapter;
    .end local v2           #changed:Z
    .end local v3           #count:I
    .end local v4           #i:I
    .end local v6           #matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v7           #packageManager:Landroid/content/pm/PackageManager;
    :catchall_5f
    move-exception v8

    monitor-exit p0

    throw v8
.end method
