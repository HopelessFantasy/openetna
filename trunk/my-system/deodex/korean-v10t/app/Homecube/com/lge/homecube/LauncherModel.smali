.class public Lcom/lge/homecube/LauncherModel;
.super Ljava/lang/Object;
.source "LauncherModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/homecube/LauncherModel$1;,
        Lcom/lge/homecube/LauncherModel$DesktopItemsLoader;,
        Lcom/lge/homecube/LauncherModel$ApplicationInfoComparator;,
        Lcom/lge/homecube/LauncherModel$ChangeNotifier;,
        Lcom/lge/homecube/LauncherModel$ApplicationsLoader;
    }
.end annotation


# static fields
.field private static final APPLICATION_NOT_RESPONDING_TIMEOUT:J = 0x1388L

.field static final DEBUG_LOADERS:Z = true

.field private static final DEFAULT_APPLICATIONS_NUMBER:I = 0x2a

.field private static final INITIAL_ICON_CACHE_CAPACITY:I = 0x32

.field static final LOG_TAG:Ljava/lang/String; = "HomeLoaders"

.field private static final UI_NOTIFICATION_RATE:I = 0x4

.field private static final sCollator:Ljava/text/Collator;


# instance fields
.field private final mAppInfoCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/lge/homecube/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mApplications:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/homecube/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mApplicationsAdapter:Lcom/lge/homecube/ApplicationsAdapter;

.field private mApplicationsLoaded:Z

.field private mApplicationsLoader:Lcom/lge/homecube/LauncherModel$ApplicationsLoader;

.field private mApplicationsLoaderThread:Ljava/lang/Thread;

.field private mDesktopAppWidgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/homecube/LauncherAppWidgetInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDesktopItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/homecube/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDesktopItemsLoaded:Z

.field private mDesktopItemsLoader:Lcom/lge/homecube/LauncherModel$DesktopItemsLoader;

.field private mDesktopLoaderThread:Ljava/lang/Thread;

.field private mFolders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/lge/homecube/FolderInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 59
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    sput-object v0, Lcom/lge/homecube/LauncherModel;->sCollator:Ljava/text/Collator;

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

    iput-object v0, p0, Lcom/lge/homecube/LauncherModel;->mAppInfoCache:Ljava/util/HashMap;

    .line 683
    return-void
.end method

.method static synthetic access$100(Lcom/lge/homecube/LauncherModel;)Lcom/lge/homecube/ApplicationsAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lge/homecube/LauncherModel;->mApplicationsAdapter:Lcom/lge/homecube/ApplicationsAdapter;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/lge/homecube/LauncherModel;)Ljava/util/HashMap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lge/homecube/LauncherModel;->mFolders:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/lge/homecube/LauncherModel;Ljava/util/HashMap;)Ljava/util/HashMap;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/lge/homecube/LauncherModel;->mFolders:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic access$1100(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Lcom/lge/homecube/ApplicationInfo;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-static {p0, p1}, Lcom/lge/homecube/LauncherModel;->getApplicationInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Lcom/lge/homecube/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/lge/homecube/LauncherModel;Landroid/database/Cursor;Lcom/lge/homecube/Launcher;IIII)Lcom/lge/homecube/ApplicationInfo;
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
    invoke-direct/range {p0 .. p6}, Lcom/lge/homecube/LauncherModel;->getApplicationInfoShortcut(Landroid/database/Cursor;Lcom/lge/homecube/Launcher;IIII)Lcom/lge/homecube/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/lge/homecube/LauncherModel;Ljava/util/HashMap;J)Lcom/lge/homecube/UserFolderInfo;
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/homecube/LauncherModel;->findOrMakeUserFolder(Ljava/util/HashMap;J)Lcom/lge/homecube/UserFolderInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/lge/homecube/LauncherModel;Ljava/util/HashMap;J)Lcom/lge/homecube/LiveFolderInfo;
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/homecube/LauncherModel;->findOrMakeLiveFolder(Ljava/util/HashMap;J)Lcom/lge/homecube/LiveFolderInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/lge/homecube/Launcher;Landroid/database/Cursor;IIILcom/lge/homecube/LiveFolderInfo;)V
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 50
    invoke-static/range {p0 .. p5}, Lcom/lge/homecube/LauncherModel;->loadLiveFolderIcon(Lcom/lge/homecube/Launcher;Landroid/database/Cursor;IIILcom/lge/homecube/LiveFolderInfo;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/lge/homecube/LauncherModel;Lcom/lge/homecube/Launcher;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/lge/homecube/LauncherModel;->startApplicationsLoader(Lcom/lge/homecube/Launcher;)V

    return-void
.end method

.method static synthetic access$1702(Lcom/lge/homecube/LauncherModel;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/lge/homecube/LauncherModel;->mDesktopItemsLoaded:Z

    return p1
.end method

.method static synthetic access$200(Lcom/lge/homecube/LauncherModel;)Ljava/util/HashMap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lge/homecube/LauncherModel;->mAppInfoCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300(Landroid/content/pm/PackageManager;Ljava/util/HashMap;Landroid/content/pm/ResolveInfo;)Lcom/lge/homecube/ApplicationInfo;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 50
    invoke-static {p0, p1, p2}, Lcom/lge/homecube/LauncherModel;->makeAndCacheApplicationInfo(Landroid/content/pm/PackageManager;Ljava/util/HashMap;Landroid/content/pm/ResolveInfo;)Lcom/lge/homecube/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$402(Lcom/lge/homecube/LauncherModel;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/lge/homecube/LauncherModel;->mApplicationsLoaded:Z

    return p1
.end method

.method static synthetic access$500()Ljava/text/Collator;
    .registers 1

    .prologue
    .line 50
    sget-object v0, Lcom/lge/homecube/LauncherModel;->sCollator:Ljava/text/Collator;

    return-object v0
.end method

.method static synthetic access$700(Landroid/content/ContentResolver;Landroid/content/pm/PackageManager;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-static {p0, p1}, Lcom/lge/homecube/LauncherModel;->updateShortcutLabels(Landroid/content/ContentResolver;Landroid/content/pm/PackageManager;)V

    return-void
.end method

.method static synthetic access$800(Lcom/lge/homecube/LauncherModel;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lge/homecube/LauncherModel;->mDesktopItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$802(Lcom/lge/homecube/LauncherModel;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/lge/homecube/LauncherModel;->mDesktopItems:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$900(Lcom/lge/homecube/LauncherModel;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lge/homecube/LauncherModel;->mDesktopAppWidgets:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$902(Lcom/lge/homecube/LauncherModel;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/lge/homecube/LauncherModel;->mDesktopAppWidgets:Ljava/util/ArrayList;

    return-object p1
.end method

.method private addEnabledAndUpdateActivities(Ljava/util/List;Lcom/lge/homecube/ApplicationsAdapter;Lcom/lge/homecube/Launcher;)Z
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
            "Lcom/lge/homecube/ApplicationsAdapter;",
            "Lcom/lge/homecube/Launcher;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 319
    .local p1, matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 320
    .local v6, toAdd:Ljava/util/List;,"Ljava/util/List<Lcom/lge/homecube/ApplicationInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 322
    .local v2, count:I
    const/4 v1, 0x0

    .line 324
    .local v1, changed:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_b
    if-ge v3, v2, :cond_3d

    .line 325
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 326
    .local v5, info:Landroid/content/pm/ResolveInfo;
    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v8, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {p2, v7, v8}, Lcom/lge/homecube/LauncherModel;->findIntent(Lcom/lge/homecube/ApplicationsAdapter;Ljava/lang/String;Ljava/lang/String;)Lcom/lge/homecube/ApplicationInfo;

    move-result-object v0

    .line 328
    .local v0, applicationInfo:Lcom/lge/homecube/ApplicationInfo;
    if-nez v0, :cond_34

    .line 329
    invoke-virtual {p3}, Lcom/lge/homecube/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    iget-object v8, p0, Lcom/lge/homecube/LauncherModel;->mAppInfoCache:Ljava/util/HashMap;

    invoke-static {v7, v8, v5}, Lcom/lge/homecube/LauncherModel;->makeAndCacheApplicationInfo(Landroid/content/pm/PackageManager;Ljava/util/HashMap;Landroid/content/pm/ResolveInfo;)Lcom/lge/homecube/ApplicationInfo;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 331
    const/4 v1, 0x1

    .line 324
    :goto_31
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 333
    :cond_34
    invoke-virtual {p3}, Lcom/lge/homecube/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-direct {p0, v7, v5, v0}, Lcom/lge/homecube/LauncherModel;->updateAndCacheApplicationInfo(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Lcom/lge/homecube/ApplicationInfo;)V

    .line 334
    const/4 v1, 0x1

    goto :goto_31

    .line 338
    .end local v0           #applicationInfo:Lcom/lge/homecube/ApplicationInfo;
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

    check-cast v5, Lcom/lge/homecube/ApplicationInfo;

    .line 339
    .local v5, info:Lcom/lge/homecube/ApplicationInfo;
    const/4 v7, 0x0

    invoke-virtual {p2, v7}, Lcom/lge/homecube/ApplicationsAdapter;->setNotifyOnChange(Z)V

    .line 340
    invoke-virtual {p2, v5}, Lcom/lge/homecube/ApplicationsAdapter;->add(Ljava/lang/Object;)V

    goto :goto_41

    .line 343
    .end local v5           #info:Lcom/lge/homecube/ApplicationInfo;
    :cond_55
    return v1
.end method

.method static addItemToDatabase(Landroid/content/Context;Lcom/lge/homecube/ItemInfo;JIIIZ)V
    .registers 13
    .parameter "context"
    .parameter "item"
    .parameter "container"
    .parameter "screen"
    .parameter "cellX"
    .parameter "cellY"
    .parameter "notify"

    .prologue
    .line 1305
    iput-wide p2, p1, Lcom/lge/homecube/ItemInfo;->container:J

    .line 1306
    iput p4, p1, Lcom/lge/homecube/ItemInfo;->screen:I

    .line 1307
    iput p5, p1, Lcom/lge/homecube/ItemInfo;->cellX:I

    .line 1308
    iput p6, p1, Lcom/lge/homecube/ItemInfo;->cellY:I

    .line 1310
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1311
    .local v2, values:Landroid/content/ContentValues;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1313
    .local v0, cr:Landroid/content/ContentResolver;
    invoke-virtual {p1, v2}, Lcom/lge/homecube/ItemInfo;->onAddToDatabase(Landroid/content/ContentValues;)V

    .line 1315
    if-eqz p7, :cond_31

    sget-object v3, Lcom/lge/homecube/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    :goto_18
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 1318
    .local v1, result:Landroid/net/Uri;
    if-eqz v1, :cond_30

    .line 1319
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

    iput-wide v3, p1, Lcom/lge/homecube/ItemInfo;->id:J

    .line 1321
    :cond_30
    return-void

    .line 1315
    .end local v1           #result:Landroid/net/Uri;
    .restart local p0
    :cond_31
    sget-object v3, Lcom/lge/homecube/LauncherSettings$Favorites;->CONTENT_URI_NO_NOTIFICATION:Landroid/net/Uri;

    goto :goto_18
.end method

.method static addOrMoveItemInDatabase(Landroid/content/Context;Lcom/lge/homecube/ItemInfo;JIII)V
    .registers 15
    .parameter "context"
    .parameter "item"
    .parameter "container"
    .parameter "screen"
    .parameter "cellX"
    .parameter "cellY"

    .prologue
    .line 1206
    iget-wide v0, p1, Lcom/lge/homecube/ItemInfo;->container:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_13

    .line 1208
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v7}, Lcom/lge/homecube/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/lge/homecube/ItemInfo;JIIIZ)V

    .line 1213
    :goto_12
    return-void

    .line 1211
    :cond_13
    invoke-static/range {p0 .. p6}, Lcom/lge/homecube/LauncherModel;->moveItemInDatabase(Landroid/content/Context;Lcom/lge/homecube/ItemInfo;JIII)V

    goto :goto_12
.end method

.method static deleteItemFromDatabase(Landroid/content/Context;Lcom/lge/homecube/ItemInfo;)V
    .registers 7
    .parameter "context"
    .parameter "item"

    .prologue
    const/4 v4, 0x0

    .line 1341
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1343
    .local v0, cr:Landroid/content/ContentResolver;
    iget-wide v1, p1, Lcom/lge/homecube/ItemInfo;->id:J

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/lge/homecube/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1344
    return-void
.end method

.method static deleteUserFolderContentsFromDatabase(Landroid/content/Context;Lcom/lge/homecube/UserFolderInfo;)V
    .registers 8
    .parameter "context"
    .parameter "info"

    .prologue
    const/4 v5, 0x0

    .line 1351
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1353
    .local v0, cr:Landroid/content/ContentResolver;
    iget-wide v1, p1, Lcom/lge/homecube/UserFolderInfo;->id:J

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/lge/homecube/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v5, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1354
    sget-object v1, Lcom/lge/homecube/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "container="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p1, Lcom/lge/homecube/UserFolderInfo;->id:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1356
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
    .line 295
    new-instance v5, Landroid/content/Intent;

    const-string v7, "android.intent.action.MAIN"

    const/4 v8, 0x0

    invoke-direct {v5, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 296
    .local v5, mainIntent:Landroid/content/Intent;
    const-string v7, "android.intent.category.LAUNCHER"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 298
    const/4 v7, 0x0

    invoke-virtual {p0, v5, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 299
    .local v1, apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 301
    .local v6, matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_36

    .line 303
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 304
    .local v2, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1e
    if-ge v3, v2, :cond_36

    .line 305
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 306
    .local v4, info:Landroid/content/pm/ResolveInfo;
    iget-object v0, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 307
    .local v0, activityInfo:Landroid/content/pm/ActivityInfo;
    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_33

    .line 308
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 304
    :cond_33
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 313
    .end local v0           #activityInfo:Landroid/content/pm/ActivityInfo;
    .end local v2           #count:I
    .end local v3           #i:I
    .end local v4           #info:Landroid/content/pm/ResolveInfo;
    :cond_36
    return-object v6
.end method

.method private static findIntent(Lcom/lge/homecube/ApplicationsAdapter;Ljava/lang/String;Ljava/lang/String;)Lcom/lge/homecube/ApplicationInfo;
    .registers 9
    .parameter "adapter"
    .parameter "packageName"
    .parameter "name"

    .prologue
    .line 379
    invoke-virtual {p0}, Lcom/lge/homecube/ApplicationsAdapter;->getCount()I

    move-result v2

    .line 380
    .local v2, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_5
    if-ge v3, v2, :cond_2c

    .line 381
    invoke-virtual {p0, v3}, Lcom/lge/homecube/ApplicationsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/homecube/ApplicationInfo;

    .line 382
    .local v0, applicationInfo:Lcom/lge/homecube/ApplicationInfo;
    iget-object v4, v0, Lcom/lge/homecube/ApplicationInfo;->intent:Landroid/content/Intent;

    .line 383
    .local v4, intent:Landroid/content/Intent;
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 384
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

    .line 390
    .end local v0           #applicationInfo:Lcom/lge/homecube/ApplicationInfo;
    .end local v1           #component:Landroid/content/ComponentName;
    .end local v4           #intent:Landroid/content/Intent;
    :goto_28
    return-object v5

    .line 380
    .restart local v0       #applicationInfo:Lcom/lge/homecube/ApplicationInfo;
    .restart local v1       #component:Landroid/content/ComponentName;
    .restart local v4       #intent:Landroid/content/Intent;
    :cond_29
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 390
    .end local v0           #applicationInfo:Lcom/lge/homecube/ApplicationInfo;
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
    .line 394
    .local p0, apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 395
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

    .line 396
    .local v3, info:Landroid/content/pm/ResolveInfo;
    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 397
    .local v0, activityInfo:Landroid/content/pm/ActivityInfo;
    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 398
    const/4 v4, 0x1

    .line 401
    .end local v0           #activityInfo:Landroid/content/pm/ActivityInfo;
    .end local v3           #info:Landroid/content/pm/ResolveInfo;
    :goto_1f
    return v4

    :cond_20
    const/4 v4, 0x0

    goto :goto_1f
.end method

.method private findOrMakeLiveFolder(Ljava/util/HashMap;J)Lcom/lge/homecube/LiveFolderInfo;
    .registers 6
    .parameter
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/lge/homecube/FolderInfo;",
            ">;J)",
            "Lcom/lge/homecube/LiveFolderInfo;"
        }
    .end annotation

    .prologue
    .line 987
    .local p1, folders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/lge/homecube/FolderInfo;>;"
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/homecube/FolderInfo;

    .line 988
    .local v0, folderInfo:Lcom/lge/homecube/FolderInfo;
    if-eqz v0, :cond_10

    instance-of v1, v0, Lcom/lge/homecube/LiveFolderInfo;

    if-nez v1, :cond_1c

    .line 990
    :cond_10
    new-instance v0, Lcom/lge/homecube/LiveFolderInfo;

    .end local v0           #folderInfo:Lcom/lge/homecube/FolderInfo;
    invoke-direct {v0}, Lcom/lge/homecube/LiveFolderInfo;-><init>()V

    .line 991
    .restart local v0       #folderInfo:Lcom/lge/homecube/FolderInfo;
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 993
    :cond_1c
    check-cast v0, Lcom/lge/homecube/LiveFolderInfo;

    .end local v0           #folderInfo:Lcom/lge/homecube/FolderInfo;
    return-object v0
.end method

.method private findOrMakeUserFolder(Ljava/util/HashMap;J)Lcom/lge/homecube/UserFolderInfo;
    .registers 6
    .parameter
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/lge/homecube/FolderInfo;",
            ">;J)",
            "Lcom/lge/homecube/UserFolderInfo;"
        }
    .end annotation

    .prologue
    .line 972
    .local p1, folders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/lge/homecube/FolderInfo;>;"
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/homecube/FolderInfo;

    .line 973
    .local v0, folderInfo:Lcom/lge/homecube/FolderInfo;
    if-eqz v0, :cond_10

    instance-of v1, v0, Lcom/lge/homecube/UserFolderInfo;

    if-nez v1, :cond_1c

    .line 975
    :cond_10
    new-instance v0, Lcom/lge/homecube/UserFolderInfo;

    .end local v0           #folderInfo:Lcom/lge/homecube/FolderInfo;
    invoke-direct {v0}, Lcom/lge/homecube/UserFolderInfo;-><init>()V

    .line 976
    .restart local v0       #folderInfo:Lcom/lge/homecube/FolderInfo;
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 978
    :cond_1c
    check-cast v0, Lcom/lge/homecube/UserFolderInfo;

    .end local v0           #folderInfo:Lcom/lge/homecube/FolderInfo;
    return-object v0
.end method

.method private static getApplicationInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Lcom/lge/homecube/ApplicationInfo;
    .registers 7
    .parameter "manager"
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    .line 1122
    invoke-virtual {p0, p1, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 1124
    .local v2, resolveInfo:Landroid/content/pm/ResolveInfo;
    if-nez v2, :cond_9

    .line 1125
    const/4 v3, 0x0

    .line 1138
    :goto_8
    return-object v3

    .line 1128
    :cond_9
    new-instance v1, Lcom/lge/homecube/ApplicationInfo;

    invoke-direct {v1}, Lcom/lge/homecube/ApplicationInfo;-><init>()V

    .line 1129
    .local v1, info:Lcom/lge/homecube/ApplicationInfo;
    iget-object v0, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1130
    .local v0, activityInfo:Landroid/content/pm/ActivityInfo;
    invoke-virtual {v0, p0}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v1, Lcom/lge/homecube/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 1131
    iget-object v3, v1, Lcom/lge/homecube/ApplicationInfo;->title:Ljava/lang/CharSequence;

    if-eqz v3, :cond_22

    iget-object v3, v1, Lcom/lge/homecube/ApplicationInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_28

    .line 1132
    :cond_22
    invoke-virtual {v0, p0}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v1, Lcom/lge/homecube/ApplicationInfo;->title:Ljava/lang/CharSequence;

    .line 1134
    :cond_28
    iget-object v3, v1, Lcom/lge/homecube/ApplicationInfo;->title:Ljava/lang/CharSequence;

    if-nez v3, :cond_30

    .line 1135
    const-string v3, ""

    iput-object v3, v1, Lcom/lge/homecube/ApplicationInfo;->title:Ljava/lang/CharSequence;

    .line 1137
    :cond_30
    iput v4, v1, Lcom/lge/homecube/ApplicationInfo;->itemType:I

    move-object v3, v1

    .line 1138
    goto :goto_8
.end method

.method private getApplicationInfoShortcut(Landroid/database/Cursor;Lcom/lge/homecube/Launcher;IIII)Lcom/lge/homecube/ApplicationInfo;
    .registers 21
    .parameter "c"
    .parameter "launcher"
    .parameter "iconTypeIndex"
    .parameter "iconPackageIndex"
    .parameter "iconResourceIndex"
    .parameter "iconIndex"

    .prologue
    .line 1147
    new-instance v7, Lcom/lge/homecube/ApplicationInfo;

    invoke-direct {v7}, Lcom/lge/homecube/ApplicationInfo;-><init>()V

    .line 1148
    .local v7, info:Lcom/lge/homecube/ApplicationInfo;
    const/4 v12, 0x1

    iput v12, v7, Lcom/lge/homecube/ApplicationInfo;->itemType:I

    .line 1150
    move-object v0, p1

    move/from16 v1, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 1151
    .local v5, iconType:I
    packed-switch v5, :pswitch_data_80

    .line 1177
    invoke-virtual/range {p2 .. p2}, Lcom/lge/homecube/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    iput-object v12, v7, Lcom/lge/homecube/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 1178
    const/4 v12, 0x0

    iput-boolean v12, v7, Lcom/lge/homecube/ApplicationInfo;->customIcon:Z

    .line 1181
    :goto_1f
    return-object v7

    .line 1153
    :pswitch_20
    move-object v0, p1

    move/from16 v1, p4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1154
    .local v9, packageName:Ljava/lang/String;
    move-object v0, p1

    move/from16 v1, p5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1155
    .local v10, resourceName:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/lge/homecube/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 1157
    .local v8, packageManager:Landroid/content/pm/PackageManager;
    :try_start_32
    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v11

    .line 1158
    .local v11, resources:Landroid/content/res/Resources;
    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v11, v10, v12, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 1159
    .local v6, id:I
    invoke-virtual {v11, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    iput-object v12, v7, Lcom/lge/homecube/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_42} :catch_55

    .line 1163
    .end local v6           #id:I
    .end local v11           #resources:Landroid/content/res/Resources;
    :goto_42
    new-instance v12, Landroid/content/Intent$ShortcutIconResource;

    invoke-direct {v12}, Landroid/content/Intent$ShortcutIconResource;-><init>()V

    iput-object v12, v7, Lcom/lge/homecube/ApplicationInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    .line 1164
    iget-object v12, v7, Lcom/lge/homecube/ApplicationInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iput-object v9, v12, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    .line 1165
    iget-object v12, v7, Lcom/lge/homecube/ApplicationInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iput-object v10, v12, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    .line 1166
    const/4 v12, 0x0

    iput-boolean v12, v7, Lcom/lge/homecube/ApplicationInfo;->customIcon:Z

    goto :goto_1f

    .line 1160
    :catch_55
    move-exception v12

    move-object v4, v12

    .line 1161
    .local v4, e:Ljava/lang/Exception;
    invoke-virtual {v8}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    iput-object v12, v7, Lcom/lge/homecube/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_42

    .line 1169
    .end local v4           #e:Ljava/lang/Exception;
    .end local v8           #packageManager:Landroid/content/pm/PackageManager;
    .end local v9           #packageName:Ljava/lang/String;
    .end local v10           #resourceName:Ljava/lang/String;
    :pswitch_5e
    move-object v0, p1

    move/from16 v1, p6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    .line 1170
    .local v3, data:[B
    const/4 v12, 0x0

    array-length v13, v3

    invoke-static {v3, v12, v13}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1171
    .local v2, bitmap:Landroid/graphics/Bitmap;
    new-instance v12, Lcom/lge/homecube/FastBitmapDrawable;

    move-object v0, v2

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/lge/homecube/Utilities;->createBitmapThumbnail(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/lge/homecube/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v12, v7, Lcom/lge/homecube/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 1173
    const/4 v12, 0x1

    iput-boolean v12, v7, Lcom/lge/homecube/ApplicationInfo;->filtered:Z

    .line 1174
    const/4 v12, 0x1

    iput-boolean v12, v7, Lcom/lge/homecube/ApplicationInfo;->customIcon:Z

    goto :goto_1f

    .line 1151
    :pswitch_data_80
    .packed-switch 0x0
        :pswitch_20
        :pswitch_5e
    .end packed-switch
.end method

.method private static getLabel(Landroid/content/pm/PackageManager;Landroid/content/pm/ActivityInfo;)Ljava/lang/String;
    .registers 4
    .parameter "manager"
    .parameter "activityInfo"

    .prologue
    .line 673
    invoke-virtual {p1, p0}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 674
    .local v0, label:Ljava/lang/String;
    if-nez v0, :cond_18

    .line 675
    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 676
    if-nez v0, :cond_18

    .line 677
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 680
    :cond_18
    return-object v0
.end method

.method private static loadLiveFolderIcon(Lcom/lge/homecube/Launcher;Landroid/database/Cursor;IIILcom/lge/homecube/LiveFolderInfo;)V
    .registers 16
    .parameter "launcher"
    .parameter "c"
    .parameter "iconTypeIndex"
    .parameter "iconPackageIndex"
    .parameter "iconResourceIndex"
    .parameter "liveFolderInfo"

    .prologue
    const v9, 0x7f02002f

    .line 927
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 928
    .local v1, iconType:I
    packed-switch v1, :pswitch_data_4e

    .line 946
    invoke-virtual {p0}, Lcom/lge/homecube/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p5, Lcom/lge/homecube/LiveFolderInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 949
    :goto_14
    return-void

    .line 930
    :pswitch_15
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 931
    .local v4, packageName:Ljava/lang/String;
    invoke-interface {p1, p4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 932
    .local v5, resourceName:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/lge/homecube/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 934
    .local v3, packageManager:Landroid/content/pm/PackageManager;
    :try_start_21
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v6

    .line 935
    .local v6, resources:Landroid/content/res/Resources;
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v5, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 936
    .local v2, id:I
    invoke-virtual {v6, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p5, Lcom/lge/homecube/LiveFolderInfo;->icon:Landroid/graphics/drawable/Drawable;
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_31} :catch_41

    .line 941
    .end local v2           #id:I
    .end local v6           #resources:Landroid/content/res/Resources;
    :goto_31
    new-instance v7, Landroid/content/Intent$ShortcutIconResource;

    invoke-direct {v7}, Landroid/content/Intent$ShortcutIconResource;-><init>()V

    iput-object v7, p5, Lcom/lge/homecube/LiveFolderInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    .line 942
    iget-object v7, p5, Lcom/lge/homecube/LiveFolderInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iput-object v4, v7, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    .line 943
    iget-object v7, p5, Lcom/lge/homecube/LiveFolderInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iput-object v5, v7, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    goto :goto_14

    .line 937
    :catch_41
    move-exception v7

    move-object v0, v7

    .line 938
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/lge/homecube/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p5, Lcom/lge/homecube/LiveFolderInfo;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_31

    .line 928
    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_15
    .end packed-switch
.end method

.method private static makeAndCacheApplicationInfo(Landroid/content/pm/PackageManager;Ljava/util/HashMap;Landroid/content/pm/ResolveInfo;)Lcom/lge/homecube/ApplicationInfo;
    .registers 7
    .parameter "manager"
    .parameter
    .parameter "info"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/lge/homecube/ApplicationInfo;",
            ">;",
            "Landroid/content/pm/ResolveInfo;",
            ")",
            "Lcom/lge/homecube/ApplicationInfo;"
        }
    .end annotation

    .prologue
    .line 426
    .local p1, appInfoCache:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ComponentName;Lcom/lge/homecube/ApplicationInfo;>;"
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    .local v1, componentName:Landroid/content/ComponentName;
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/homecube/ApplicationInfo;

    .line 431
    .local v0, application:Lcom/lge/homecube/ApplicationInfo;
    if-nez v0, :cond_2b

    .line 432
    new-instance v0, Lcom/lge/homecube/ApplicationInfo;

    .end local v0           #application:Lcom/lge/homecube/ApplicationInfo;
    invoke-direct {v0}, Lcom/lge/homecube/ApplicationInfo;-><init>()V

    .line 433
    .restart local v0       #application:Lcom/lge/homecube/ApplicationInfo;
    const-wide/16 v2, -0x1

    iput-wide v2, v0, Lcom/lge/homecube/ApplicationInfo;->container:J

    .line 435
    invoke-static {p0, p2, v0}, Lcom/lge/homecube/LauncherModel;->updateApplicationInfoTitleAndIcon(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Lcom/lge/homecube/ApplicationInfo;)V

    .line 437
    const/high16 v2, 0x1020

    invoke-virtual {v0, v1, v2}, Lcom/lge/homecube/ApplicationInfo;->setActivity(Landroid/content/ComponentName;I)V

    .line 440
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    :cond_2b
    return-object v0
.end method

.method static moveItemInDatabase(Landroid/content/Context;Lcom/lge/homecube/ItemInfo;JIII)V
    .registers 13
    .parameter "context"
    .parameter "item"
    .parameter "container"
    .parameter "screen"
    .parameter "cellX"
    .parameter "cellY"

    .prologue
    const/4 v5, 0x0

    .line 1220
    iput-wide p2, p1, Lcom/lge/homecube/ItemInfo;->container:J

    .line 1221
    iput p4, p1, Lcom/lge/homecube/ItemInfo;->screen:I

    .line 1222
    iput p5, p1, Lcom/lge/homecube/ItemInfo;->cellX:I

    .line 1223
    iput p6, p1, Lcom/lge/homecube/ItemInfo;->cellY:I

    .line 1225
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1226
    .local v1, values:Landroid/content/ContentValues;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1228
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v2, "container"

    iget-wide v3, p1, Lcom/lge/homecube/ItemInfo;->container:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1229
    const-string v2, "cellX"

    iget v3, p1, Lcom/lge/homecube/ItemInfo;->cellX:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1230
    const-string v2, "cellY"

    iget v3, p1, Lcom/lge/homecube/ItemInfo;->cellY:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1231
    const-string v2, "screen"

    iget v3, p1, Lcom/lge/homecube/ItemInfo;->screen:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1233
    iget-wide v2, p1, Lcom/lge/homecube/ItemInfo;->id:J

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/lge/homecube/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v1, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1234
    return-void
.end method

.method private removeDisabledActivities(Ljava/lang/String;Ljava/util/List;Lcom/lge/homecube/ApplicationsAdapter;)Z
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
            "Lcom/lge/homecube/ApplicationsAdapter;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 349
    .local p2, matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 350
    .local v9, toRemove:Ljava/util/List;,"Ljava/util/List<Lcom/lge/homecube/ApplicationInfo;>;"
    invoke-virtual {p3}, Lcom/lge/homecube/ApplicationsAdapter;->getCount()I

    move-result v4

    .line 352
    .local v4, count:I
    const/4 v2, 0x0

    .line 354
    .local v2, changed:Z
    const/4 v5, 0x0

    .local v5, i:I
    :goto_b
    if-ge v5, v4, :cond_30

    .line 355
    invoke-virtual {p3, v5}, Lcom/lge/homecube/ApplicationsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/homecube/ApplicationInfo;

    .line 356
    .local v0, applicationInfo:Lcom/lge/homecube/ApplicationInfo;
    iget-object v8, v0, Lcom/lge/homecube/ApplicationInfo;->intent:Landroid/content/Intent;

    .line 357
    .local v8, intent:Landroid/content/Intent;
    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    .line 358
    .local v3, component:Landroid/content/ComponentName;
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2d

    .line 359
    invoke-static {p2, v3}, Lcom/lge/homecube/LauncherModel;->findIntent(Ljava/util/List;Landroid/content/ComponentName;)Z

    move-result v10

    if-nez v10, :cond_2d

    .line 360
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 361
    const/4 v2, 0x1

    .line 354
    :cond_2d
    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    .line 366
    .end local v0           #applicationInfo:Lcom/lge/homecube/ApplicationInfo;
    .end local v3           #component:Landroid/content/ComponentName;
    .end local v8           #intent:Landroid/content/Intent;
    :cond_30
    iget-object v1, p0, Lcom/lge/homecube/LauncherModel;->mAppInfoCache:Ljava/util/HashMap;

    .line 367
    .local v1, cache:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ComponentName;Lcom/lge/homecube/ApplicationInfo;>;"
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_36
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_53

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lge/homecube/ApplicationInfo;

    .line 368
    .local v7, info:Lcom/lge/homecube/ApplicationInfo;
    const/4 v10, 0x0

    invoke-virtual {p3, v10}, Lcom/lge/homecube/ApplicationsAdapter;->setNotifyOnChange(Z)V

    .line 369
    invoke-virtual {p3, v7}, Lcom/lge/homecube/ApplicationsAdapter;->remove(Ljava/lang/Object;)V

    .line 370
    iget-object v10, v7, Lcom/lge/homecube/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_36

    .line 373
    .end local v7           #info:Lcom/lge/homecube/ApplicationInfo;
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

    .line 1241
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1242
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/lge/homecube/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "title"

    aput-object v3, v2, v5

    const-string v3, "intent"

    aput-object v3, v2, v8

    const-string v3, "title=? and intent=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v5

    invoke-virtual {p2}, Landroid/content/Intent;->toURI()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1245
    .local v6, c:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 1247
    .local v7, result:Z
    :try_start_25
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_2d

    move-result v7

    .line 1249
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1251
    return v7

    .line 1249
    :catchall_2d
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private declared-synchronized startApplicationsLoader(Lcom/lge/homecube/Launcher;)V
    .registers 5
    .parameter "launcher"

    .prologue
    .line 153
    monitor-enter p0

    :try_start_1
    const-string v0, "HomeLoaders"

    const-string v1, "  --> starting applications loader"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-direct {p0}, Lcom/lge/homecube/LauncherModel;->stopAndWaitForApplicationsLoader()V

    .line 157
    new-instance v0, Lcom/lge/homecube/LauncherModel$ApplicationsLoader;

    invoke-direct {v0, p0, p1}, Lcom/lge/homecube/LauncherModel$ApplicationsLoader;-><init>(Lcom/lge/homecube/LauncherModel;Lcom/lge/homecube/Launcher;)V

    iput-object v0, p0, Lcom/lge/homecube/LauncherModel;->mApplicationsLoader:Lcom/lge/homecube/LauncherModel$ApplicationsLoader;

    .line 158
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/lge/homecube/LauncherModel;->mApplicationsLoader:Lcom/lge/homecube/LauncherModel$ApplicationsLoader;

    const-string v2, "Applications Loader"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lge/homecube/LauncherModel;->mApplicationsLoaderThread:Ljava/lang/Thread;

    .line 159
    iget-object v0, p0, Lcom/lge/homecube/LauncherModel;->mApplicationsLoaderThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_24

    .line 160
    monitor-exit p0

    return-void

    .line 153
    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized stopAndWaitForApplicationsLoader()V
    .registers 4

    .prologue
    .line 138
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/lge/homecube/LauncherModel;->mApplicationsLoader:Lcom/lge/homecube/LauncherModel$ApplicationsLoader;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/lge/homecube/LauncherModel;->mApplicationsLoader:Lcom/lge/homecube/LauncherModel$ApplicationsLoader;

    invoke-virtual {v0}, Lcom/lge/homecube/LauncherModel$ApplicationsLoader;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 139
    const-string v0, "HomeLoaders"

    const-string v1, "  --> wait for applications loader"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v0, p0, Lcom/lge/homecube/LauncherModel;->mApplicationsLoader:Lcom/lge/homecube/LauncherModel$ApplicationsLoader;

    invoke-virtual {v0}, Lcom/lge/homecube/LauncherModel$ApplicationsLoader;->stop()V
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_22

    .line 145
    :try_start_19
    iget-object v0, p0, Lcom/lge/homecube/LauncherModel;->mApplicationsLoaderThread:Ljava/lang/Thread;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Ljava/lang/Thread;->join(J)V
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_22
    .catch Ljava/lang/InterruptedException; {:try_start_19 .. :try_end_20} :catch_25

    .line 150
    :cond_20
    :goto_20
    monitor-exit p0

    return-void

    .line 138
    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0

    .line 146
    :catch_25
    move-exception v0

    goto :goto_20
.end method

.method private unbindAppDrawables(Ljava/util/ArrayList;)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/homecube/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1034
    .local p1, applications:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/homecube/ApplicationInfo;>;"
    if-eqz p1, :cond_18

    .line 1035
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1036
    .local v0, count:I
    const/4 v1, 0x0

    .end local p0
    .local v1, i:I
    :goto_7
    if-ge v1, v0, :cond_18

    .line 1037
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/lge/homecube/ApplicationInfo;

    iget-object v2, p0, Lcom/lge/homecube/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1036
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1040
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
            "Lcom/lge/homecube/LauncherAppWidgetInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1046
    .local p1, appWidgets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/homecube/LauncherAppWidgetInfo;>;"
    if-eqz p1, :cond_15

    .line 1047
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1048
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    if-ge v1, v0, :cond_15

    .line 1049
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/homecube/LauncherAppWidgetInfo;

    .line 1050
    .local v2, launcherInfo:Lcom/lge/homecube/LauncherAppWidgetInfo;
    const/4 v3, 0x0

    iput-object v3, v2, Lcom/lge/homecube/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 1048
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1053
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v2           #launcherInfo:Lcom/lge/homecube/LauncherAppWidgetInfo;
    :cond_15
    return-void
.end method

.method private unbindCachedIconDrawables()V
    .registers 5

    .prologue
    .line 1060
    iget-object v2, p0, Lcom/lge/homecube/LauncherModel;->mAppInfoCache:Ljava/util/HashMap;

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

    check-cast v0, Lcom/lge/homecube/ApplicationInfo;

    .line 1061
    .local v0, appInfo:Lcom/lge/homecube/ApplicationInfo;
    iget-object v2, v0, Lcom/lge/homecube/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    goto :goto_a

    .line 1063
    .end local v0           #appInfo:Lcom/lge/homecube/ApplicationInfo;
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
            "Lcom/lge/homecube/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1015
    .local p1, desktopItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/homecube/ItemInfo;>;"
    if-eqz p1, :cond_20

    .line 1016
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1017
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    if-ge v1, v0, :cond_20

    .line 1018
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/homecube/ItemInfo;

    .line 1019
    .local v2, item:Lcom/lge/homecube/ItemInfo;
    iget v3, v2, Lcom/lge/homecube/ItemInfo;->itemType:I

    packed-switch v3, :pswitch_data_22

    .line 1017
    .end local v2           #item:Lcom/lge/homecube/ItemInfo;
    :goto_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1022
    .restart local v2       #item:Lcom/lge/homecube/ItemInfo;
    :pswitch_17
    check-cast v2, Lcom/lge/homecube/ApplicationInfo;

    .end local v2           #item:Lcom/lge/homecube/ItemInfo;
    iget-object v3, v2, Lcom/lge/homecube/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    goto :goto_14

    .line 1027
    .end local v0           #count:I
    .end local v1           #i:I
    :cond_20
    return-void

    .line 1019
    nop

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_17
        :pswitch_17
    .end packed-switch
.end method

.method private updateAndCacheApplicationInfo(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Lcom/lge/homecube/ApplicationInfo;)V
    .registers 7
    .parameter "packageManager"
    .parameter "info"
    .parameter "applicationInfo"

    .prologue
    .line 258
    invoke-static {p1, p2, p3}, Lcom/lge/homecube/LauncherModel;->updateApplicationInfoTitleAndIcon(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Lcom/lge/homecube/ApplicationInfo;)V

    .line 260
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    .local v0, componentName:Landroid/content/ComponentName;
    iget-object v1, p0, Lcom/lge/homecube/LauncherModel;->mAppInfoCache:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    return-void
.end method

.method private static updateApplicationInfoTitleAndIcon(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Lcom/lge/homecube/ApplicationInfo;)V
    .registers 4
    .parameter "manager"
    .parameter "info"
    .parameter "application"

    .prologue
    .line 449
    invoke-virtual {p1, p0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p2, Lcom/lge/homecube/ApplicationInfo;->title:Ljava/lang/CharSequence;

    .line 450
    iget-object v0, p2, Lcom/lge/homecube/ApplicationInfo;->title:Ljava/lang/CharSequence;

    if-nez v0, :cond_10

    .line 451
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object v0, p2, Lcom/lge/homecube/ApplicationInfo;->title:Ljava/lang/CharSequence;

    .line 454
    :cond_10
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0, p0}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p2, Lcom/lge/homecube/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 455
    const/4 v0, 0x0

    iput-boolean v0, p2, Lcom/lge/homecube/ApplicationInfo;->filtered:Z

    .line 456
    return-void
.end method

.method static updateItemInDatabase(Landroid/content/Context;Lcom/lge/homecube/ItemInfo;)V
    .registers 8
    .parameter "context"
    .parameter "item"

    .prologue
    const/4 v5, 0x0

    .line 1327
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1328
    .local v1, values:Landroid/content/ContentValues;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1330
    .local v0, cr:Landroid/content/ContentResolver;
    invoke-virtual {p1, v1}, Lcom/lge/homecube/ItemInfo;->onAddToDatabase(Landroid/content/ContentValues;)V

    .line 1332
    iget-wide v2, p1, Lcom/lge/homecube/ItemInfo;->id:J

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/lge/homecube/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v1, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1333
    return-void
.end method

.method private static updateShortcutLabels(Landroid/content/ContentResolver;Landroid/content/pm/PackageManager;)V
    .registers 14
    .parameter "resolver"
    .parameter "manager"

    .prologue
    .line 615
    sget-object v1, Lcom/lge/homecube/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

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

    .line 620
    .local v1, c:Landroid/database/Cursor;
    const-string v0, "_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 621
    .local v2, idIndex:I
    const-string v0, "intent"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 622
    .local v3, intentIndex:I
    const-string v0, "itemType"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 623
    .local v4, itemTypeIndex:I
    const-string v0, "title"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 628
    .local v6, titleIndex:I
    :cond_39
    :goto_39
    :try_start_39
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_9c

    move-result v0

    if-eqz v0, :cond_98

    .line 630
    :try_start_3f
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_39

    .line 635
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 636
    .local v0, intentUri:Ljava/lang/String;
    if-eqz v0, :cond_39

    .line 637
    invoke-static {v0}, Landroid/content/Intent;->getIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 638
    .local v0, shortcut:Landroid/content/Intent;
    const-string v5, "android.intent.action.MAIN"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_39

    .line 639
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 640
    .local v0, name:Landroid/content/ComponentName;
    if-eqz v0, :cond_39

    .line 641
    const/4 v5, 0x0

    invoke-virtual {p1, v0, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 642
    .local v0, activityInfo:Landroid/content/pm/ActivityInfo;
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 643
    .local v5, title:Ljava/lang/String;
    invoke-static {p1, v0}, Lcom/lge/homecube/LauncherModel;->getLabel(Landroid/content/pm/PackageManager;Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v0

    .line 645
    .local v0, label:Ljava/lang/String;
    if-eqz v5, :cond_76

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .end local v5           #title:Ljava/lang/String;
    if-nez v5, :cond_39

    .line 646
    :cond_76
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 647
    .local v5, values:Landroid/content/ContentValues;
    const-string v7, "title"

    invoke-virtual {v5, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    sget-object v0, Lcom/lge/homecube/LauncherSettings$Favorites;->CONTENT_URI_NO_NOTIFICATION:Landroid/net/Uri;

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
    :try_end_95
    .catchall {:try_start_3f .. :try_end_95} :catchall_9c
    .catch Ljava/net/URISyntaxException; {:try_start_3f .. :try_end_95} :catch_96
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3f .. :try_end_95} :catch_a1

    goto :goto_39

    .line 659
    .end local v5           #values:Landroid/content/ContentValues;
    :catch_96
    move-exception v0

    goto :goto_39

    .line 666
    :cond_98
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 670
    return-void

    .line 666
    :catchall_9c
    move-exception p0

    .end local p0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw p0

    .line 661
    .restart local p0
    :catch_a1
    move-exception v0

    goto :goto_39
.end method


# virtual methods
.method declared-synchronized abortLoaders()V
    .registers 2

    .prologue
    .line 79
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/lge/homecube/LauncherModel;->mApplicationsLoader:Lcom/lge/homecube/LauncherModel$ApplicationsLoader;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/lge/homecube/LauncherModel;->mApplicationsLoader:Lcom/lge/homecube/LauncherModel$ApplicationsLoader;

    invoke-virtual {v0}, Lcom/lge/homecube/LauncherModel$ApplicationsLoader;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 80
    iget-object v0, p0, Lcom/lge/homecube/LauncherModel;->mApplicationsLoader:Lcom/lge/homecube/LauncherModel$ApplicationsLoader;

    invoke-virtual {v0}, Lcom/lge/homecube/LauncherModel$ApplicationsLoader;->stop()V

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/homecube/LauncherModel;->mApplicationsLoaded:Z

    .line 84
    :cond_15
    iget-object v0, p0, Lcom/lge/homecube/LauncherModel;->mDesktopItemsLoader:Lcom/lge/homecube/LauncherModel$DesktopItemsLoader;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/lge/homecube/LauncherModel;->mDesktopItemsLoader:Lcom/lge/homecube/LauncherModel$DesktopItemsLoader;

    invoke-virtual {v0}, Lcom/lge/homecube/LauncherModel$DesktopItemsLoader;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 85
    iget-object v0, p0, Lcom/lge/homecube/LauncherModel;->mDesktopItemsLoader:Lcom/lge/homecube/LauncherModel$DesktopItemsLoader;

    invoke-virtual {v0}, Lcom/lge/homecube/LauncherModel$DesktopItemsLoader;->stop()V

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/homecube/LauncherModel;->mDesktopItemsLoaded:Z
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_2b

    .line 88
    :cond_29
    monitor-exit p0

    return-void

    .line 79
    :catchall_2b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method addDesktopAppWidget(Lcom/lge/homecube/LauncherAppWidgetInfo;)V
    .registers 3
    .parameter "info"

    .prologue
    .line 1108
    iget-object v0, p0, Lcom/lge/homecube/LauncherModel;->mDesktopAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1109
    return-void
.end method

.method addDesktopItem(Lcom/lge/homecube/ItemInfo;)V
    .registers 3
    .parameter "info"

    .prologue
    .line 1092
    iget-object v0, p0, Lcom/lge/homecube/LauncherModel;->mDesktopItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1093
    return-void
.end method

.method addFolder(Lcom/lge/homecube/FolderInfo;)V
    .registers 5
    .parameter "info"

    .prologue
    .line 963
    iget-object v0, p0, Lcom/lge/homecube/LauncherModel;->mFolders:Ljava/util/HashMap;

    iget-wide v1, p1, Lcom/lge/homecube/FolderInfo;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 964
    return-void
.end method

.method declared-synchronized addPackage(Lcom/lge/homecube/Launcher;Ljava/lang/String;)V
    .registers 11
    .parameter "launcher"
    .parameter "packageName"

    .prologue
    .line 163
    monitor-enter p0

    :try_start_1
    iget-object v6, p0, Lcom/lge/homecube/LauncherModel;->mApplicationsLoader:Lcom/lge/homecube/LauncherModel$ApplicationsLoader;

    if-eqz v6, :cond_12

    iget-object v6, p0, Lcom/lge/homecube/LauncherModel;->mApplicationsLoader:Lcom/lge/homecube/LauncherModel$ApplicationsLoader;

    invoke-virtual {v6}, Lcom/lge/homecube/LauncherModel$ApplicationsLoader;->isRunning()Z

    move-result v6

    if-eqz v6, :cond_12

    .line 164
    invoke-direct {p0, p1}, Lcom/lge/homecube/LauncherModel;->startApplicationsLoader(Lcom/lge/homecube/Launcher;)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_48

    .line 185
    :cond_10
    :goto_10
    monitor-exit p0

    return-void

    .line 168
    :cond_12
    if-eqz p2, :cond_10

    :try_start_14
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_10

    .line 169
    invoke-virtual {p1}, Lcom/lge/homecube/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 170
    .local v5, packageManager:Landroid/content/pm/PackageManager;
    invoke-static {v5, p2}, Lcom/lge/homecube/LauncherModel;->findActivitiesForPackage(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 172
    .local v4, matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_10

    .line 173
    iget-object v0, p0, Lcom/lge/homecube/LauncherModel;->mApplicationsAdapter:Lcom/lge/homecube/ApplicationsAdapter;

    .line 174
    .local v0, adapter:Lcom/lge/homecube/ApplicationsAdapter;
    iget-object v1, p0, Lcom/lge/homecube/LauncherModel;->mAppInfoCache:Ljava/util/HashMap;

    .line 176
    .local v1, cache:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ComponentName;Lcom/lge/homecube/ApplicationInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_30
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 177
    .local v3, info:Landroid/content/pm/ResolveInfo;
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lcom/lge/homecube/ApplicationsAdapter;->setNotifyOnChange(Z)V

    .line 178
    invoke-static {v5, v1, v3}, Lcom/lge/homecube/LauncherModel;->makeAndCacheApplicationInfo(Landroid/content/pm/PackageManager;Ljava/util/HashMap;Landroid/content/pm/ResolveInfo;)Lcom/lge/homecube/ApplicationInfo;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/lge/homecube/ApplicationsAdapter;->add(Ljava/lang/Object;)V
    :try_end_47
    .catchall {:try_start_14 .. :try_end_47} :catchall_48

    goto :goto_30

    .line 163
    .end local v0           #adapter:Lcom/lge/homecube/ApplicationsAdapter;
    .end local v1           #cache:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ComponentName;Lcom/lge/homecube/ApplicationInfo;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #info:Landroid/content/pm/ResolveInfo;
    .end local v4           #matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v5           #packageManager:Landroid/content/pm/PackageManager;
    :catchall_48
    move-exception v6

    monitor-exit p0

    throw v6

    .line 181
    .restart local v0       #adapter:Lcom/lge/homecube/ApplicationsAdapter;
    .restart local v1       #cache:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ComponentName;Lcom/lge/homecube/ApplicationInfo;>;"
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v4       #matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v5       #packageManager:Landroid/content/pm/PackageManager;
    :cond_4b
    :try_start_4b
    new-instance v6, Lcom/lge/homecube/LauncherModel$ApplicationInfoComparator;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lcom/lge/homecube/LauncherModel$ApplicationInfoComparator;-><init>(Lcom/lge/homecube/LauncherModel$1;)V

    invoke-virtual {v0, v6}, Lcom/lge/homecube/ApplicationsAdapter;->sort(Ljava/util/Comparator;)V

    .line 182
    invoke-virtual {v0}, Lcom/lge/homecube/ApplicationsAdapter;->notifyDataSetChanged()V
    :try_end_57
    .catchall {:try_start_4b .. :try_end_57} :catchall_48

    goto :goto_10
.end method

.method declared-synchronized dropApplicationCache()V
    .registers 2

    .prologue
    .line 96
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/lge/homecube/LauncherModel;->mAppInfoCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 97
    monitor-exit p0

    return-void

    .line 96
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method findFolderById(J)Lcom/lge/homecube/FolderInfo;
    .registers 5
    .parameter "id"

    .prologue
    .line 959
    iget-object v0, p0, Lcom/lge/homecube/LauncherModel;->mFolders:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/lge/homecube/FolderInfo;

    return-object p0
.end method

.method getApplicationInfoIcon(Landroid/content/pm/PackageManager;Lcom/lge/homecube/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .registers 8
    .parameter "manager"
    .parameter "info"

    .prologue
    .line 405
    iget-object v3, p2, Lcom/lge/homecube/ApplicationInfo;->intent:Landroid/content/Intent;

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 407
    .local v2, resolveInfo:Landroid/content/pm/ResolveInfo;
    if-nez v2, :cond_b

    .line 408
    const/4 v3, 0x0

    .line 420
    :goto_a
    return-object v3

    .line 411
    :cond_b
    new-instance v1, Landroid/content/ComponentName;

    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    .local v1, componentName:Landroid/content/ComponentName;
    iget-object v3, p0, Lcom/lge/homecube/LauncherModel;->mAppInfoCache:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/homecube/ApplicationInfo;

    .line 416
    .local v0, application:Lcom/lge/homecube/ApplicationInfo;
    if-nez v0, :cond_2b

    .line 417
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v3, p1}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_a

    .line 420
    :cond_2b
    iget-object v3, v0, Lcom/lge/homecube/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_a
.end method

.method getApplicationsAdapter()Lcom/lge/homecube/ApplicationsAdapter;
    .registers 2

    .prologue
    .line 1069
    iget-object v0, p0, Lcom/lge/homecube/LauncherModel;->mApplicationsAdapter:Lcom/lge/homecube/ApplicationsAdapter;

    return-object v0
.end method

.method getDesktopAppWidgets()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/homecube/LauncherAppWidgetInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1083
    iget-object v0, p0, Lcom/lge/homecube/LauncherModel;->mDesktopAppWidgets:Ljava/util/ArrayList;

    return-object v0
.end method

.method getDesktopItems()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/homecube/ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1076
    iget-object v0, p0, Lcom/lge/homecube/LauncherModel;->mDesktopItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method getFolderById(Landroid/content/Context;J)Lcom/lge/homecube/FolderInfo;
    .registers 22
    .parameter "context"
    .parameter "id"

    .prologue
    .line 1255
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 1256
    .local v4, cr:Landroid/content/ContentResolver;
    sget-object v5, Lcom/lge/homecube/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

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

    .line 1263
    .local v10, c:Landroid/database/Cursor;
    :try_start_28
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_a9

    .line 1264
    const-string v5, "itemType"

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 1265
    .local v15, itemTypeIndex:I
    const-string v5, "title"

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 1266
    .local v17, titleIndex:I
    const-string v5, "container"

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 1267
    .local v13, containerIndex:I
    const-string v5, "screen"

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 1268
    .local v16, screenIndex:I
    const-string v5, "cellX"

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 1269
    .local v11, cellXIndex:I
    const-string v5, "cellY"

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 1272
    .local v12, cellYIndex:I
    const/4 v14, 0x0

    .line 1273
    .local v14, folderInfo:Lcom/lge/homecube/FolderInfo;
    invoke-interface {v10, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    packed-switch v5, :pswitch_data_b4

    .line 1281
    :goto_5a
    if-eqz v14, :cond_86

    .line 1283
    move-object v0, v10

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v14, Lcom/lge/homecube/FolderInfo;->title:Ljava/lang/CharSequence;

    .line 1284
    move-wide/from16 v0, p2

    move-object v2, v14

    iput-wide v0, v2, Lcom/lge/homecube/FolderInfo;->id:J

    .line 1285
    invoke-interface {v10, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    int-to-long v5, v5

    iput-wide v5, v14, Lcom/lge/homecube/FolderInfo;->container:J

    .line 1286
    move-object v0, v10

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v14, Lcom/lge/homecube/FolderInfo;->screen:I

    .line 1287
    invoke-interface {v10, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v14, Lcom/lge/homecube/FolderInfo;->cellX:I

    .line 1288
    invoke-interface {v10, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v14, Lcom/lge/homecube/FolderInfo;->cellY:I
    :try_end_86
    .catchall {:try_start_28 .. :try_end_86} :catchall_ae

    .line 1293
    :cond_86
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    move-object v5, v14

    .line 1296
    .end local v11           #cellXIndex:I
    .end local v12           #cellYIndex:I
    .end local v13           #containerIndex:I
    .end local v14           #folderInfo:Lcom/lge/homecube/FolderInfo;
    .end local v15           #itemTypeIndex:I
    .end local v16           #screenIndex:I
    .end local v17           #titleIndex:I
    :goto_8a
    return-object v5

    .line 1275
    .restart local v11       #cellXIndex:I
    .restart local v12       #cellYIndex:I
    .restart local v13       #containerIndex:I
    .restart local v14       #folderInfo:Lcom/lge/homecube/FolderInfo;
    .restart local v15       #itemTypeIndex:I
    .restart local v16       #screenIndex:I
    .restart local v17       #titleIndex:I
    :pswitch_8b
    :try_start_8b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/LauncherModel;->mFolders:Ljava/util/HashMap;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    move-wide/from16 v2, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/homecube/LauncherModel;->findOrMakeUserFolder(Ljava/util/HashMap;J)Lcom/lge/homecube/UserFolderInfo;

    move-result-object v14

    .line 1276
    goto :goto_5a

    .line 1278
    :pswitch_9a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/LauncherModel;->mFolders:Ljava/util/HashMap;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    move-wide/from16 v2, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/homecube/LauncherModel;->findOrMakeLiveFolder(Ljava/util/HashMap;J)Lcom/lge/homecube/LiveFolderInfo;
    :try_end_a7
    .catchall {:try_start_8b .. :try_end_a7} :catchall_ae

    move-result-object v14

    goto :goto_5a

    .line 1293
    .end local v11           #cellXIndex:I
    .end local v12           #cellYIndex:I
    .end local v13           #containerIndex:I
    .end local v14           #folderInfo:Lcom/lge/homecube/FolderInfo;
    .end local v15           #itemTypeIndex:I
    .end local v16           #screenIndex:I
    .end local v17           #titleIndex:I
    :cond_a9
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1296
    const/4 v5, 0x0

    goto :goto_8a

    .line 1293
    :catchall_ae
    move-exception v5

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v5

    .line 1273
    nop

    :pswitch_data_b4
    .packed-switch 0x2
        :pswitch_8b
        :pswitch_9a
    .end packed-switch
.end method

.method isDesktopLoaded()Z
    .registers 2

    .prologue
    .line 569
    iget-object v0, p0, Lcom/lge/homecube/LauncherModel;->mDesktopItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/lge/homecube/LauncherModel;->mDesktopAppWidgets:Ljava/util/ArrayList;

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/lge/homecube/LauncherModel;->mDesktopItemsLoaded:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method declared-synchronized loadApplications(ZLcom/lge/homecube/Launcher;Z)Z
    .registers 7
    .parameter "isLaunching"
    .parameter "launcher"
    .parameter "localeChanged"

    .prologue
    const/4 v2, 0x0

    const-string v0, "HomeLoaders"

    .line 108
    monitor-enter p0

    :try_start_4
    const-string v0, "HomeLoaders"

    const-string v1, "load applications"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    if-eqz p1, :cond_26

    iget-boolean v0, p0, Lcom/lge/homecube/LauncherModel;->mApplicationsLoaded:Z

    if-eqz v0, :cond_26

    if-nez p3, :cond_26

    .line 111
    new-instance v0, Lcom/lge/homecube/ApplicationsAdapter;

    iget-object v1, p0, Lcom/lge/homecube/LauncherModel;->mApplications:Ljava/util/ArrayList;

    invoke-direct {v0, p2, v1}, Lcom/lge/homecube/ApplicationsAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/lge/homecube/LauncherModel;->mApplicationsAdapter:Lcom/lge/homecube/ApplicationsAdapter;

    .line 112
    const-string v0, "HomeLoaders"

    const-string v1, "  --> applications loaded, return"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catchall {:try_start_4 .. :try_end_23} :catchall_54

    move v0, v2

    .line 134
    :goto_24
    monitor-exit p0

    return v0

    .line 116
    :cond_26
    :try_start_26
    invoke-direct {p0}, Lcom/lge/homecube/LauncherModel;->stopAndWaitForApplicationsLoader()V

    .line 118
    if-eqz p3, :cond_2e

    .line 119
    invoke-virtual {p0}, Lcom/lge/homecube/LauncherModel;->dropApplicationCache()V

    .line 122
    :cond_2e
    iget-object v0, p0, Lcom/lge/homecube/LauncherModel;->mApplicationsAdapter:Lcom/lge/homecube/ApplicationsAdapter;

    if-eqz v0, :cond_36

    if-nez p1, :cond_36

    if-eqz p3, :cond_48

    .line 123
    :cond_36
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x2a

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/lge/homecube/LauncherModel;->mApplications:Ljava/util/ArrayList;

    .line 124
    new-instance v0, Lcom/lge/homecube/ApplicationsAdapter;

    iget-object v1, p0, Lcom/lge/homecube/LauncherModel;->mApplications:Ljava/util/ArrayList;

    invoke-direct {v0, p2, v1}, Lcom/lge/homecube/ApplicationsAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/lge/homecube/LauncherModel;->mApplicationsAdapter:Lcom/lge/homecube/ApplicationsAdapter;

    .line 127
    :cond_48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/homecube/LauncherModel;->mApplicationsLoaded:Z

    .line 129
    if-nez p1, :cond_52

    .line 130
    invoke-direct {p0, p2}, Lcom/lge/homecube/LauncherModel;->startApplicationsLoader(Lcom/lge/homecube/Launcher;)V
    :try_end_50
    .catchall {:try_start_26 .. :try_end_50} :catchall_54

    move v0, v2

    .line 131
    goto :goto_24

    .line 134
    :cond_52
    const/4 v0, 0x1

    goto :goto_24

    .line 108
    :catchall_54
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method loadUserItems(ZLcom/lge/homecube/Launcher;ZZ)V
    .registers 9
    .parameter "isLaunching"
    .parameter "launcher"
    .parameter "localeChanged"
    .parameter "loadApplications"

    .prologue
    const-string v3, "HomeLoaders"

    .line 578
    const-string v0, "HomeLoaders"

    const-string v0, "loading user items"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    if-eqz p1, :cond_21

    invoke-virtual {p0}, Lcom/lge/homecube/LauncherModel;->isDesktopLoaded()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 581
    const-string v0, "HomeLoaders"

    const-string v0, "  --> items loaded, return"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    if-eqz p4, :cond_1d

    invoke-direct {p0, p2}, Lcom/lge/homecube/LauncherModel;->startApplicationsLoader(Lcom/lge/homecube/Launcher;)V

    .line 584
    :cond_1d
    invoke-virtual {p2}, Lcom/lge/homecube/Launcher;->onDesktopItemsLoaded()V

    .line 612
    :goto_20
    return-void

    .line 588
    :cond_21
    iget-object v0, p0, Lcom/lge/homecube/LauncherModel;->mDesktopItemsLoader:Lcom/lge/homecube/LauncherModel$DesktopItemsLoader;

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/lge/homecube/LauncherModel;->mDesktopItemsLoader:Lcom/lge/homecube/LauncherModel$DesktopItemsLoader;

    invoke-virtual {v0}, Lcom/lge/homecube/LauncherModel$DesktopItemsLoader;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 589
    const-string v0, "HomeLoaders"

    const-string v0, "  --> stopping workspace loader"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    iget-object v0, p0, Lcom/lge/homecube/LauncherModel;->mDesktopItemsLoader:Lcom/lge/homecube/LauncherModel$DesktopItemsLoader;

    invoke-virtual {v0}, Lcom/lge/homecube/LauncherModel$DesktopItemsLoader;->stop()V

    .line 594
    :try_start_39
    iget-object v0, p0, Lcom/lge/homecube/LauncherModel;->mDesktopLoaderThread:Ljava/lang/Thread;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Ljava/lang/Thread;->join(J)V
    :try_end_40
    .catch Ljava/lang/InterruptedException; {:try_start_39 .. :try_end_40} :catch_68

    .line 604
    :goto_40
    iget-object v0, p0, Lcom/lge/homecube/LauncherModel;->mDesktopItemsLoader:Lcom/lge/homecube/LauncherModel$DesktopItemsLoader;

    invoke-static {v0}, Lcom/lge/homecube/LauncherModel$DesktopItemsLoader;->access$600(Lcom/lge/homecube/LauncherModel$DesktopItemsLoader;)Z

    move-result p4

    .line 607
    :cond_46
    const-string v0, "HomeLoaders"

    const-string v0, "  --> starting workspace loader"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/homecube/LauncherModel;->mDesktopItemsLoaded:Z

    .line 609
    new-instance v0, Lcom/lge/homecube/LauncherModel$DesktopItemsLoader;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/lge/homecube/LauncherModel$DesktopItemsLoader;-><init>(Lcom/lge/homecube/LauncherModel;Lcom/lge/homecube/Launcher;ZZ)V

    iput-object v0, p0, Lcom/lge/homecube/LauncherModel;->mDesktopItemsLoader:Lcom/lge/homecube/LauncherModel$DesktopItemsLoader;

    .line 610
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/lge/homecube/LauncherModel;->mDesktopItemsLoader:Lcom/lge/homecube/LauncherModel$DesktopItemsLoader;

    const-string v2, "Desktop Items Loader"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lge/homecube/LauncherModel;->mDesktopLoaderThread:Ljava/lang/Thread;

    .line 611
    iget-object v0, p0, Lcom/lge/homecube/LauncherModel;->mDesktopLoaderThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_20

    .line 595
    :catch_68
    move-exception v0

    goto :goto_40
.end method

.method removeDesktopAppWidget(Lcom/lge/homecube/LauncherAppWidgetInfo;)V
    .registers 3
    .parameter "info"

    .prologue
    .line 1115
    iget-object v0, p0, Lcom/lge/homecube/LauncherModel;->mDesktopAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1116
    return-void
.end method

.method removeDesktopItem(Lcom/lge/homecube/ItemInfo;)V
    .registers 3
    .parameter "info"

    .prologue
    .line 1101
    iget-object v0, p0, Lcom/lge/homecube/LauncherModel;->mDesktopItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1102
    return-void
.end method

.method declared-synchronized removePackage(Lcom/lge/homecube/Launcher;Ljava/lang/String;)V
    .registers 15
    .parameter "launcher"
    .parameter "packageName"

    .prologue
    .line 188
    monitor-enter p0

    :try_start_1
    iget-object v10, p0, Lcom/lge/homecube/LauncherModel;->mApplicationsLoader:Lcom/lge/homecube/LauncherModel$ApplicationsLoader;

    if-eqz v10, :cond_15

    iget-object v10, p0, Lcom/lge/homecube/LauncherModel;->mApplicationsLoader:Lcom/lge/homecube/LauncherModel$ApplicationsLoader;

    invoke-virtual {v10}, Lcom/lge/homecube/LauncherModel$ApplicationsLoader;->isRunning()Z

    move-result v10

    if-eqz v10, :cond_15

    .line 189
    invoke-virtual {p0}, Lcom/lge/homecube/LauncherModel;->dropApplicationCache()V

    .line 190
    invoke-direct {p0, p1}, Lcom/lge/homecube/LauncherModel;->startApplicationsLoader(Lcom/lge/homecube/Launcher;)V
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_6a

    .line 221
    :cond_13
    :goto_13
    monitor-exit p0

    return-void

    .line 194
    :cond_15
    if-eqz p2, :cond_13

    :try_start_17
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_13

    .line 195
    iget-object v0, p0, Lcom/lge/homecube/LauncherModel;->mApplicationsAdapter:Lcom/lge/homecube/ApplicationsAdapter;

    .line 197
    .local v0, adapter:Lcom/lge/homecube/ApplicationsAdapter;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 198
    .local v9, toRemove:Ljava/util/List;,"Ljava/util/List<Lcom/lge/homecube/ApplicationInfo;>;"
    invoke-virtual {v0}, Lcom/lge/homecube/ApplicationsAdapter;->getCount()I

    move-result v4

    .line 200
    .local v4, count:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_29
    if-ge v5, v4, :cond_47

    .line 201
    invoke-virtual {v0, v5}, Lcom/lge/homecube/ApplicationsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/homecube/ApplicationInfo;

    .line 202
    .local v1, applicationInfo:Lcom/lge/homecube/ApplicationInfo;
    iget-object v8, v1, Lcom/lge/homecube/ApplicationInfo;->intent:Landroid/content/Intent;

    .line 203
    .local v8, intent:Landroid/content/Intent;
    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    .line 204
    .local v3, component:Landroid/content/ComponentName;
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_44

    .line 205
    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    :cond_44
    add-int/lit8 v5, v5, 0x1

    goto :goto_29

    .line 209
    .end local v1           #applicationInfo:Lcom/lge/homecube/ApplicationInfo;
    .end local v3           #component:Landroid/content/ComponentName;
    .end local v8           #intent:Landroid/content/Intent;
    :cond_47
    iget-object v2, p0, Lcom/lge/homecube/LauncherModel;->mAppInfoCache:Ljava/util/HashMap;

    .line 210
    .local v2, cache:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ComponentName;Lcom/lge/homecube/ApplicationInfo;>;"
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_4d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lge/homecube/ApplicationInfo;

    .line 211
    .local v7, info:Lcom/lge/homecube/ApplicationInfo;
    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Lcom/lge/homecube/ApplicationsAdapter;->setNotifyOnChange(Z)V

    .line 212
    invoke-virtual {v0, v7}, Lcom/lge/homecube/ApplicationsAdapter;->remove(Ljava/lang/Object;)V

    .line 213
    iget-object v10, v7, Lcom/lge/homecube/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_69
    .catchall {:try_start_17 .. :try_end_69} :catchall_6a

    goto :goto_4d

    .line 188
    .end local v0           #adapter:Lcom/lge/homecube/ApplicationsAdapter;
    .end local v2           #cache:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ComponentName;Lcom/lge/homecube/ApplicationInfo;>;"
    .end local v4           #count:I
    .end local v5           #i:I
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v7           #info:Lcom/lge/homecube/ApplicationInfo;
    .end local v9           #toRemove:Ljava/util/List;,"Ljava/util/List<Lcom/lge/homecube/ApplicationInfo;>;"
    :catchall_6a
    move-exception v10

    monitor-exit p0

    throw v10

    .line 216
    .restart local v0       #adapter:Lcom/lge/homecube/ApplicationsAdapter;
    .restart local v2       #cache:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ComponentName;Lcom/lge/homecube/ApplicationInfo;>;"
    .restart local v4       #count:I
    .restart local v5       #i:I
    .restart local v6       #i$:Ljava/util/Iterator;
    .restart local v9       #toRemove:Ljava/util/List;,"Ljava/util/List<Lcom/lge/homecube/ApplicationInfo;>;"
    :cond_6d
    :try_start_6d
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_13

    .line 217
    new-instance v10, Lcom/lge/homecube/LauncherModel$ApplicationInfoComparator;

    const/4 v11, 0x0

    invoke-direct {v10, v11}, Lcom/lge/homecube/LauncherModel$ApplicationInfoComparator;-><init>(Lcom/lge/homecube/LauncherModel$1;)V

    invoke-virtual {v0, v10}, Lcom/lge/homecube/ApplicationsAdapter;->sort(Ljava/util/Comparator;)V

    .line 218
    invoke-virtual {v0}, Lcom/lge/homecube/ApplicationsAdapter;->notifyDataSetChanged()V
    :try_end_7f
    .catchall {:try_start_6d .. :try_end_7f} :catchall_6a

    goto :goto_13
.end method

.method removeUserFolder(Lcom/lge/homecube/UserFolderInfo;)V
    .registers 5
    .parameter "userFolderInfo"

    .prologue
    .line 1197
    iget-object v0, p0, Lcom/lge/homecube/LauncherModel;->mFolders:Ljava/util/HashMap;

    iget-wide v1, p1, Lcom/lge/homecube/UserFolderInfo;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1198
    return-void
.end method

.method removeUserFolderItem(Lcom/lge/homecube/UserFolderInfo;Lcom/lge/homecube/ItemInfo;)V
    .registers 4
    .parameter "folder"
    .parameter "info"

    .prologue
    .line 1189
    iget-object v0, p1, Lcom/lge/homecube/UserFolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1190
    return-void
.end method

.method declared-synchronized syncPackage(Lcom/lge/homecube/Launcher;Ljava/lang/String;)V
    .registers 10
    .parameter "launcher"
    .parameter "packageName"

    .prologue
    .line 266
    monitor-enter p0

    :try_start_1
    iget-object v5, p0, Lcom/lge/homecube/LauncherModel;->mApplicationsLoader:Lcom/lge/homecube/LauncherModel$ApplicationsLoader;

    if-eqz v5, :cond_12

    iget-object v5, p0, Lcom/lge/homecube/LauncherModel;->mApplicationsLoader:Lcom/lge/homecube/LauncherModel$ApplicationsLoader;

    invoke-virtual {v5}, Lcom/lge/homecube/LauncherModel$ApplicationsLoader;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_12

    .line 267
    invoke-direct {p0, p1}, Lcom/lge/homecube/LauncherModel;->startApplicationsLoader(Lcom/lge/homecube/Launcher;)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_43

    .line 290
    :cond_10
    :goto_10
    monitor-exit p0

    return-void

    .line 271
    :cond_12
    if-eqz p2, :cond_10

    :try_start_14
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_10

    .line 272
    invoke-virtual {p1}, Lcom/lge/homecube/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 273
    .local v3, packageManager:Landroid/content/pm/PackageManager;
    invoke-static {v3, p2}, Lcom/lge/homecube/LauncherModel;->findActivitiesForPackage(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 275
    .local v2, matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_10

    .line 276
    iget-object v0, p0, Lcom/lge/homecube/LauncherModel;->mApplicationsAdapter:Lcom/lge/homecube/ApplicationsAdapter;

    .line 279
    .local v0, adapter:Lcom/lge/homecube/ApplicationsAdapter;
    invoke-direct {p0, p2, v2, v0}, Lcom/lge/homecube/LauncherModel;->removeDisabledActivities(Ljava/lang/String;Ljava/util/List;Lcom/lge/homecube/ApplicationsAdapter;)Z

    move-result v4

    .line 282
    .local v4, removed:Z
    invoke-direct {p0, v2, v0, p1}, Lcom/lge/homecube/LauncherModel;->addEnabledAndUpdateActivities(Ljava/util/List;Lcom/lge/homecube/ApplicationsAdapter;Lcom/lge/homecube/Launcher;)Z

    move-result v1

    .line 284
    .local v1, added:Z
    if-nez v1, :cond_36

    if-eqz v4, :cond_10

    .line 285
    :cond_36
    new-instance v5, Lcom/lge/homecube/LauncherModel$ApplicationInfoComparator;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/lge/homecube/LauncherModel$ApplicationInfoComparator;-><init>(Lcom/lge/homecube/LauncherModel$1;)V

    invoke-virtual {v0, v5}, Lcom/lge/homecube/ApplicationsAdapter;->sort(Ljava/util/Comparator;)V

    .line 286
    invoke-virtual {v0}, Lcom/lge/homecube/ApplicationsAdapter;->notifyDataSetChanged()V
    :try_end_42
    .catchall {:try_start_14 .. :try_end_42} :catchall_43

    goto :goto_10

    .line 266
    .end local v0           #adapter:Lcom/lge/homecube/ApplicationsAdapter;
    .end local v1           #added:Z
    .end local v2           #matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v3           #packageManager:Landroid/content/pm/PackageManager;
    .end local v4           #removed:Z
    :catchall_43
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method unbind()V
    .registers 2

    .prologue
    .line 1002
    invoke-direct {p0}, Lcom/lge/homecube/LauncherModel;->stopAndWaitForApplicationsLoader()V

    .line 1003
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/homecube/LauncherModel;->mApplicationsAdapter:Lcom/lge/homecube/ApplicationsAdapter;

    .line 1004
    iget-object v0, p0, Lcom/lge/homecube/LauncherModel;->mApplications:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/lge/homecube/LauncherModel;->unbindAppDrawables(Ljava/util/ArrayList;)V

    .line 1005
    iget-object v0, p0, Lcom/lge/homecube/LauncherModel;->mDesktopItems:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/lge/homecube/LauncherModel;->unbindDrawables(Ljava/util/ArrayList;)V

    .line 1006
    iget-object v0, p0, Lcom/lge/homecube/LauncherModel;->mDesktopAppWidgets:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/lge/homecube/LauncherModel;->unbindAppWidgetHostViews(Ljava/util/ArrayList;)V

    .line 1007
    invoke-direct {p0}, Lcom/lge/homecube/LauncherModel;->unbindCachedIconDrawables()V

    .line 1008
    return-void
.end method

.method declared-synchronized updatePackage(Lcom/lge/homecube/Launcher;Ljava/lang/String;)V
    .registers 13
    .parameter "launcher"
    .parameter "packageName"

    .prologue
    .line 224
    monitor-enter p0

    :try_start_1
    iget-object v8, p0, Lcom/lge/homecube/LauncherModel;->mApplicationsLoader:Lcom/lge/homecube/LauncherModel$ApplicationsLoader;

    if-eqz v8, :cond_12

    iget-object v8, p0, Lcom/lge/homecube/LauncherModel;->mApplicationsLoader:Lcom/lge/homecube/LauncherModel$ApplicationsLoader;

    invoke-virtual {v8}, Lcom/lge/homecube/LauncherModel$ApplicationsLoader;->isRunning()Z

    move-result v8

    if-eqz v8, :cond_12

    .line 225
    invoke-direct {p0, p1}, Lcom/lge/homecube/LauncherModel;->startApplicationsLoader(Lcom/lge/homecube/Launcher;)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_58

    .line 253
    :cond_10
    :goto_10
    monitor-exit p0

    return-void

    .line 229
    :cond_12
    if-eqz p2, :cond_10

    :try_start_14
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_10

    .line 230
    invoke-virtual {p1}, Lcom/lge/homecube/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 231
    .local v7, packageManager:Landroid/content/pm/PackageManager;
    iget-object v0, p0, Lcom/lge/homecube/LauncherModel;->mApplicationsAdapter:Lcom/lge/homecube/ApplicationsAdapter;

    .line 233
    .local v0, adapter:Lcom/lge/homecube/ApplicationsAdapter;
    invoke-static {v7, p2}, Lcom/lge/homecube/LauncherModel;->findActivitiesForPackage(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 234
    .local v6, matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    .line 236
    .local v3, count:I
    const/4 v2, 0x0

    .line 238
    .local v2, changed:Z
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2a
    if-ge v4, v3, :cond_49

    .line 239
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 240
    .local v5, info:Landroid/content/pm/ResolveInfo;
    iget-object v8, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v9, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v0, v8, v9}, Lcom/lge/homecube/LauncherModel;->findIntent(Lcom/lge/homecube/ApplicationsAdapter;Ljava/lang/String;Ljava/lang/String;)Lcom/lge/homecube/ApplicationInfo;

    move-result-object v1

    .line 242
    .local v1, applicationInfo:Lcom/lge/homecube/ApplicationInfo;
    if-eqz v1, :cond_46

    .line 243
    invoke-direct {p0, v7, v5, v1}, Lcom/lge/homecube/LauncherModel;->updateAndCacheApplicationInfo(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Lcom/lge/homecube/ApplicationInfo;)V

    .line 244
    const/4 v2, 0x1

    .line 238
    :cond_46
    add-int/lit8 v4, v4, 0x1

    goto :goto_2a

    .line 248
    .end local v1           #applicationInfo:Lcom/lge/homecube/ApplicationInfo;
    .end local v5           #info:Landroid/content/pm/ResolveInfo;
    :cond_49
    if-eqz v2, :cond_10

    .line 249
    new-instance v8, Lcom/lge/homecube/LauncherModel$ApplicationInfoComparator;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Lcom/lge/homecube/LauncherModel$ApplicationInfoComparator;-><init>(Lcom/lge/homecube/LauncherModel$1;)V

    invoke-virtual {v0, v8}, Lcom/lge/homecube/ApplicationsAdapter;->sort(Ljava/util/Comparator;)V

    .line 250
    invoke-virtual {v0}, Lcom/lge/homecube/ApplicationsAdapter;->notifyDataSetChanged()V
    :try_end_57
    .catchall {:try_start_14 .. :try_end_57} :catchall_58

    goto :goto_10

    .line 224
    .end local v0           #adapter:Lcom/lge/homecube/ApplicationsAdapter;
    .end local v2           #changed:Z
    .end local v3           #count:I
    .end local v4           #i:I
    .end local v6           #matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v7           #packageManager:Landroid/content/pm/PackageManager;
    :catchall_58
    move-exception v8

    monitor-exit p0

    throw v8
.end method
