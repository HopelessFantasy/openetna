.class public final Lcom/android/launcher/Launcher;
.super Landroid/app/Activity;
.source "Launcher.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/Launcher$DesktopBinder;,
        Lcom/android/launcher/Launcher$DrawerManager;,
        Lcom/android/launcher/Launcher$WallpaperIntentReceiver;,
        Lcom/android/launcher/Launcher$FavoritesChangeObserver;,
        Lcom/android/launcher/Launcher$ApplicationsIntentReceiver;,
        Lcom/android/launcher/Launcher$CreateShortcut;,
        Lcom/android/launcher/Launcher$RenameFolder;,
        Lcom/android/launcher/Launcher$LocaleConfiguration;,
        Lcom/android/launcher/Launcher$AppWidgetResetObserver;
    }
.end annotation


# static fields
.field static final APPWIDGET_HOST_ID:I = 0x400

.field private static final DEBUG_USER_INTERFACE:Z = false

.field static final DEFAULT_SCREN:I = 0x1

.field private static final DIALOG_CREATE_SHORTCUT:I = 0x1

.field static final DIALOG_RENAME_FOLDER:I = 0x2

.field static final EXTRA_CUSTOM_WIDGET:Ljava/lang/String; = "custom_widget"

.field static final EXTRA_SHORTCUT_DUPLICATE:Ljava/lang/String; = "duplicate"

.field static final LOGD:Z = false

.field static final LOG_TAG:Ljava/lang/String; = "Launcher"

.field private static final MENU_ADD:I = 0x2

.field private static final MENU_GROUP_ADD:I = 0x1

.field private static final MENU_NOTIFICATIONS:I = 0x5

.field private static final MENU_SEARCH:I = 0x4

.field private static final MENU_SETTINGS:I = 0x6

.field private static final MENU_WALLPAPER_SETTINGS:I = 0x3

.field static final NUMBER_CELLS_X:I = 0x4

.field static final NUMBER_CELLS_Y:I = 0x4

.field private static final PREFERENCES:Ljava/lang/String; = "launcher.preferences"

.field private static final PROFILE_DRAWER:Z = false

.field private static final PROFILE_ROTATE:Z = false

.field private static final PROFILE_STARTUP:Z = false

.field private static final REQUEST_CREATE_APPWIDGET:I = 0x5

.field private static final REQUEST_CREATE_LIVE_FOLDER:I = 0x4

.field private static final REQUEST_CREATE_SHORTCUT:I = 0x1

.field private static final REQUEST_PICK_APPLICATION:I = 0x6

.field private static final REQUEST_PICK_APPWIDGET:I = 0x9

.field private static final REQUEST_PICK_LIVE_FOLDER:I = 0x8

.field private static final REQUEST_PICK_SHORTCUT:I = 0x7

.field private static final RUNTIME_STATE_ALL_APPS_FOLDER:Ljava/lang/String; = "launcher.all_apps_folder"

.field private static final RUNTIME_STATE_CURRENT_SCREEN:Ljava/lang/String; = "launcher.current_screen"

.field private static final RUNTIME_STATE_PENDING_ADD_CELL_X:Ljava/lang/String; = "launcher.add_cellX"

.field private static final RUNTIME_STATE_PENDING_ADD_CELL_Y:Ljava/lang/String; = "launcher.add_cellY"

.field private static final RUNTIME_STATE_PENDING_ADD_COUNT_X:Ljava/lang/String; = "launcher.add_countX"

.field private static final RUNTIME_STATE_PENDING_ADD_COUNT_Y:Ljava/lang/String; = "launcher.add_countY"

.field private static final RUNTIME_STATE_PENDING_ADD_OCCUPIED_CELLS:Ljava/lang/String; = "launcher.add_occupied_cells"

.field private static final RUNTIME_STATE_PENDING_ADD_SCREEN:Ljava/lang/String; = "launcher.add_screen"

.field private static final RUNTIME_STATE_PENDING_ADD_SPAN_X:Ljava/lang/String; = "launcher.add_spanX"

.field private static final RUNTIME_STATE_PENDING_ADD_SPAN_Y:Ljava/lang/String; = "launcher.add_spanY"

.field private static final RUNTIME_STATE_PENDING_FOLDER_RENAME:Ljava/lang/String; = "launcher.rename_folder"

.field private static final RUNTIME_STATE_PENDING_FOLDER_RENAME_ID:Ljava/lang/String; = "launcher.rename_folder_id"

.field private static final RUNTIME_STATE_USER_FOLDERS:Ljava/lang/String; = "launcher.user_folder"

.field static final SCREEN_COUNT:I = 0x3

.field static final SEARCH_WIDGET:Ljava/lang/String; = "search_widget"

.field private static final WALLPAPER_SCREENS_SPAN:I = 0x2

.field private static final sLock:Ljava/lang/Object;

.field private static final sModel:Lcom/android/launcher/LauncherModel;

.field private static sScreen:I

.field private static sWallpaper:Landroid/graphics/Bitmap;

.field private static sWallpaperReceiver:Lcom/android/launcher/Launcher$WallpaperIntentReceiver;


# instance fields
.field private mAddItemCellInfo:Lcom/android/launcher/CellLayout$CellInfo;

.field private mAllAppsGrid:Lcom/android/launcher/AllAppsGridView;

.field private mAppWidgetHost:Lcom/android/launcher/LauncherAppWidgetHost;

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private final mAppWidgetResetObserver:Landroid/database/ContentObserver;

.field private final mApplicationsReceiver:Landroid/content/BroadcastReceiver;

.field private mBinder:Lcom/android/launcher/Launcher$DesktopBinder;

.field private final mCellCoordinates:[I

.field private mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

.field private mDesktopLocked:Z

.field private mDestroyed:Z

.field private mDragLayer:Lcom/android/launcher/DragLayer;

.field private mDrawer:Landroid/widget/SlidingDrawer;

.field private mFolderInfo:Lcom/android/launcher/FolderInfo;

.field private mHandleIcon:Landroid/graphics/drawable/TransitionDrawable;

.field private mHandleView:Lcom/android/launcher/HandleView;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsNewIntent:Z

.field private mLocaleChanged:Z

.field private mMenuAddInfo:Lcom/android/launcher/CellLayout$CellInfo;

.field private final mObserver:Landroid/database/ContentObserver;

.field private mRestoring:Z

.field private mSavedInstanceState:Landroid/os/Bundle;

.field private mSavedState:Landroid/os/Bundle;

.field private mWaitingForResult:Z

.field private mWorkspace:Lcom/android/launcher/Workspace;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 162
    new-instance v0, Lcom/android/launcher/LauncherModel;

    invoke-direct {v0}, Lcom/android/launcher/LauncherModel;-><init>()V

    sput-object v0, Lcom/android/launcher/Launcher;->sModel:Lcom/android/launcher/LauncherModel;

    .line 166
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/launcher/Launcher;->sLock:Ljava/lang/Object;

    .line 167
    const/4 v0, 0x1

    sput v0, Lcom/android/launcher/Launcher;->sScreen:I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 94
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 171
    new-instance v0, Lcom/android/launcher/Launcher$ApplicationsIntentReceiver;

    invoke-direct {v0, p0, v1}, Lcom/android/launcher/Launcher$ApplicationsIntentReceiver;-><init>(Lcom/android/launcher/Launcher;Lcom/android/launcher/Launcher$1;)V

    iput-object v0, p0, Lcom/android/launcher/Launcher;->mApplicationsReceiver:Landroid/content/BroadcastReceiver;

    .line 172
    new-instance v0, Lcom/android/launcher/Launcher$FavoritesChangeObserver;

    invoke-direct {v0, p0}, Lcom/android/launcher/Launcher$FavoritesChangeObserver;-><init>(Lcom/android/launcher/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher/Launcher;->mObserver:Landroid/database/ContentObserver;

    .line 174
    new-instance v0, Lcom/android/launcher/Launcher$AppWidgetResetObserver;

    invoke-direct {v0, p0}, Lcom/android/launcher/Launcher$AppWidgetResetObserver;-><init>(Lcom/android/launcher/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher/Launcher;->mAppWidgetResetObserver:Landroid/database/ContentObserver;

    .line 188
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher/Launcher;->mCellCoordinates:[I

    .line 196
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher/Launcher;->mDesktopLocked:Z

    .line 199
    iput-object v1, p0, Lcom/android/launcher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    .line 2183
    return-void
.end method

.method private acceptFilter()Z
    .registers 3

    .prologue
    .line 483
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/launcher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 485
    .local v0, inputManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isFullscreenMode()Z

    move-result v1

    if-nez v1, :cond_10

    const/4 v1, 0x1

    :goto_f
    return v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method

.method static synthetic access$100(Lcom/android/launcher/Launcher;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/launcher/Launcher;->onAppWidgetReset()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/launcher/Launcher;)Lcom/android/launcher/FolderInfo;
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/launcher/Launcher;->mFolderInfo:Lcom/android/launcher/FolderInfo;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/launcher/Launcher;Lcom/android/launcher/FolderInfo;)Lcom/android/launcher/FolderInfo;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/launcher/Launcher;->mFolderInfo:Lcom/android/launcher/FolderInfo;

    return-object p1
.end method

.method static synthetic access$1100()Lcom/android/launcher/LauncherModel;
    .registers 1

    .prologue
    .line 94
    sget-object v0, Lcom/android/launcher/Launcher;->sModel:Lcom/android/launcher/LauncherModel;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/launcher/Launcher;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/android/launcher/Launcher;->mDesktopLocked:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/launcher/Launcher;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/android/launcher/Launcher;->mDesktopLocked:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/launcher/Launcher;)Landroid/widget/SlidingDrawer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/launcher/Launcher;->mDrawer:Landroid/widget/SlidingDrawer;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/launcher/Launcher;II)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 94
    invoke-direct {p0, p1, p2}, Lcom/android/launcher/Launcher;->pickShortcut(II)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/launcher/Launcher;)Lcom/android/launcher/LauncherAppWidgetHost;
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/launcher/Launcher;->mAppWidgetHost:Lcom/android/launcher/LauncherAppWidgetHost;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/launcher/Launcher;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/launcher/Launcher;->startWallpaper()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/launcher/Launcher;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/android/launcher/Launcher;->removeShortcutsForPackage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/launcher/Launcher;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/android/launcher/Launcher;->updateShortcutsForPackage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/launcher/Launcher;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/launcher/Launcher;->onFavoritesChanged()V

    return-void
.end method

.method static synthetic access$2002(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 1
    .parameter "x0"

    .prologue
    .line 94
    sput-object p0, Lcom/android/launcher/Launcher;->sWallpaper:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/android/launcher/Launcher;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/launcher/Launcher;->loadWallpaper()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/launcher/Launcher;)Landroid/graphics/drawable/TransitionDrawable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/launcher/Launcher;->mHandleIcon:Landroid/graphics/drawable/TransitionDrawable;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/launcher/Launcher;)Lcom/android/launcher/AllAppsGridView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/launcher/Launcher;->mAllAppsGrid:Lcom/android/launcher/AllAppsGridView;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/launcher/Launcher;)Lcom/android/launcher/DragLayer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/launcher/Launcher;->mDragLayer:Lcom/android/launcher/DragLayer;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/launcher/Launcher;Lcom/android/launcher/Launcher$DesktopBinder;Ljava/util/ArrayList;II)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 94
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher/Launcher;->bindItems(Lcom/android/launcher/Launcher$DesktopBinder;Ljava/util/ArrayList;II)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/launcher/Launcher;Lcom/android/launcher/Launcher$DesktopBinder;Lcom/android/launcher/ApplicationsAdapter;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 94
    invoke-direct {p0, p1, p2}, Lcom/android/launcher/Launcher;->bindDrawer(Lcom/android/launcher/Launcher$DesktopBinder;Lcom/android/launcher/ApplicationsAdapter;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/launcher/Launcher;Lcom/android/launcher/Launcher$DesktopBinder;Ljava/util/LinkedList;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 94
    invoke-direct {p0, p1, p2}, Lcom/android/launcher/Launcher;->bindAppWidgets(Lcom/android/launcher/Launcher$DesktopBinder;Ljava/util/LinkedList;)V

    return-void
.end method

.method static synthetic access$602(Lcom/android/launcher/Launcher;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/android/launcher/Launcher;->mWaitingForResult:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/launcher/Launcher;)Lcom/android/launcher/Workspace;
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/launcher/Launcher;->mWorkspace:Lcom/android/launcher/Workspace;

    return-object v0
.end method

.method private addItems()V
    .registers 2

    .prologue
    .line 1092
    iget-object v0, p0, Lcom/android/launcher/Launcher;->mMenuAddInfo:Lcom/android/launcher/CellLayout$CellInfo;

    invoke-direct {p0, v0}, Lcom/android/launcher/Launcher;->showAddDialog(Lcom/android/launcher/CellLayout$CellInfo;)V

    .line 1093
    return-void
.end method

.method static addLiveFolder(Landroid/content/Context;Landroid/content/Intent;Lcom/android/launcher/CellLayout$CellInfo;Z)Lcom/android/launcher/LiveFolderInfo;
    .registers 16
    .parameter "context"
    .parameter "data"
    .parameter "cellInfo"
    .parameter "notify"

    .prologue
    .line 1227
    const-string v1, "android.intent.extra.livefolder.BASE_INTENT"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 1228
    .local v1, baseIntent:Landroid/content/Intent;
    const-string v2, "android.intent.extra.livefolder.NAME"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1230
    .local v7, name:Ljava/lang/String;
    const/4 v5, 0x0

    .line 1231
    .local v5, icon:Landroid/graphics/drawable/Drawable;
    const/4 v4, 0x0

    .line 1232
    .local v4, filtered:Z
    const/4 v2, 0x0

    .line 1234
    .local v2, iconResource:Landroid/content/Intent$ShortcutIconResource;
    const-string v3, "android.intent.extra.livefolder.ICON"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    .line 1235
    .local v3, extra:Landroid/os/Parcelable;
    if-eqz v3, :cond_9a

    instance-of v6, v3, Landroid/content/Intent$ShortcutIconResource;

    if-eqz v6, :cond_9a

    .line 1237
    :try_start_1d
    move-object v0, v3

    check-cast v0, Landroid/content/Intent$ShortcutIconResource;

    move-object v6, v0
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_21} :catch_77

    .line 1238
    .end local v2           #iconResource:Landroid/content/Intent$ShortcutIconResource;
    .local v6, iconResource:Landroid/content/Intent$ShortcutIconResource;
    :try_start_21
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1239
    .local v2, packageManager:Landroid/content/pm/PackageManager;
    iget-object v8, v6, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v8}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v8

    .line 1241
    .local v8, resources:Landroid/content/res/Resources;
    iget-object v2, v6, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    .end local v2           #packageManager:Landroid/content/pm/PackageManager;
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v2, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1242
    .local v2, id:I
    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_36} :catch_96

    move-result-object v2

    .end local v5           #icon:Landroid/graphics/drawable/Drawable;
    .local v2, icon:Landroid/graphics/drawable/Drawable;
    move-object v5, v6

    .line 1248
    .end local v3           #extra:Landroid/os/Parcelable;
    .end local v6           #iconResource:Landroid/content/Intent$ShortcutIconResource;
    .end local v8           #resources:Landroid/content/res/Resources;
    .local v5, iconResource:Landroid/content/Intent$ShortcutIconResource;
    :goto_38
    if-nez v2, :cond_98

    .line 1249
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .end local v2           #icon:Landroid/graphics/drawable/Drawable;
    const v3, 0x7f020013

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .restart local v2       #icon:Landroid/graphics/drawable/Drawable;
    move-object v3, v2

    .line 1252
    .end local v2           #icon:Landroid/graphics/drawable/Drawable;
    .local v3, icon:Landroid/graphics/drawable/Drawable;
    :goto_46
    new-instance v2, Lcom/android/launcher/LiveFolderInfo;

    invoke-direct {v2}, Lcom/android/launcher/LiveFolderInfo;-><init>()V

    .line 1253
    .local v2, info:Lcom/android/launcher/LiveFolderInfo;
    iput-object v3, v2, Lcom/android/launcher/LiveFolderInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 1254
    iput-boolean v4, v2, Lcom/android/launcher/LiveFolderInfo;->filtered:Z

    .line 1255
    iput-object v7, v2, Lcom/android/launcher/LiveFolderInfo;->title:Ljava/lang/CharSequence;

    .line 1256
    iput-object v5, v2, Lcom/android/launcher/LiveFolderInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    .line 1257
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .end local v3           #icon:Landroid/graphics/drawable/Drawable;
    iput-object v3, v2, Lcom/android/launcher/LiveFolderInfo;->uri:Landroid/net/Uri;

    .line 1258
    iput-object v1, v2, Lcom/android/launcher/LiveFolderInfo;->baseIntent:Landroid/content/Intent;

    .line 1259
    const-string v1, "android.intent.extra.livefolder.DISPLAY_MODE"

    .end local v1           #baseIntent:Landroid/content/Intent;
    const/4 v3, 0x1

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .end local p1
    iput p1, v2, Lcom/android/launcher/LiveFolderInfo;->displayMode:I

    .line 1262
    const-wide/16 v3, -0x64

    iget v5, p2, Lcom/android/launcher/CellLayout$CellInfo;->screen:I

    .end local v5           #iconResource:Landroid/content/Intent$ShortcutIconResource;
    iget v6, p2, Lcom/android/launcher/CellLayout$CellInfo;->cellX:I

    iget v7, p2, Lcom/android/launcher/CellLayout$CellInfo;->cellY:I

    .end local v7           #name:Ljava/lang/String;
    move-object v1, p0

    move v8, p3

    invoke-static/range {v1 .. v8}, Lcom/android/launcher/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher/ItemInfo;JIIIZ)V

    .line 1264
    sget-object p0, Lcom/android/launcher/Launcher;->sModel:Lcom/android/launcher/LauncherModel;

    .end local p0
    invoke-virtual {p0, v2}, Lcom/android/launcher/LauncherModel;->addFolder(Lcom/android/launcher/FolderInfo;)V

    .line 1266
    return-object v2

    .line 1243
    .restart local v1       #baseIntent:Landroid/content/Intent;
    .local v2, iconResource:Landroid/content/Intent$ShortcutIconResource;
    .local v3, extra:Landroid/os/Parcelable;
    .local v5, icon:Landroid/graphics/drawable/Drawable;
    .restart local v7       #name:Ljava/lang/String;
    .restart local p0
    .restart local p1
    :catch_77
    move-exception v6

    move-object v11, v6

    move-object v6, v2

    .end local v2           #iconResource:Landroid/content/Intent$ShortcutIconResource;
    .restart local v6       #iconResource:Landroid/content/Intent$ShortcutIconResource;
    move-object v2, v11

    .line 1244
    .local v2, e:Ljava/lang/Exception;
    :goto_7b
    const-string v2, "Launcher"

    .end local v2           #e:Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not load live folder icon: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .end local v3           #extra:Landroid/os/Parcelable;
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v5

    .end local v5           #icon:Landroid/graphics/drawable/Drawable;
    .local v2, icon:Landroid/graphics/drawable/Drawable;
    move-object v5, v6

    .end local v6           #iconResource:Landroid/content/Intent$ShortcutIconResource;
    .local v5, iconResource:Landroid/content/Intent$ShortcutIconResource;
    goto :goto_38

    .line 1243
    .end local v2           #icon:Landroid/graphics/drawable/Drawable;
    .restart local v3       #extra:Landroid/os/Parcelable;
    .local v5, icon:Landroid/graphics/drawable/Drawable;
    .restart local v6       #iconResource:Landroid/content/Intent$ShortcutIconResource;
    :catch_96
    move-exception v2

    goto :goto_7b

    .end local v3           #extra:Landroid/os/Parcelable;
    .end local v6           #iconResource:Landroid/content/Intent$ShortcutIconResource;
    .restart local v2       #icon:Landroid/graphics/drawable/Drawable;
    .local v5, iconResource:Landroid/content/Intent$ShortcutIconResource;
    :cond_98
    move-object v3, v2

    .end local v2           #icon:Landroid/graphics/drawable/Drawable;
    .local v3, icon:Landroid/graphics/drawable/Drawable;
    goto :goto_46

    .local v2, iconResource:Landroid/content/Intent$ShortcutIconResource;
    .local v3, extra:Landroid/os/Parcelable;
    .local v5, icon:Landroid/graphics/drawable/Drawable;
    :cond_9a
    move-object v11, v2

    .end local v2           #iconResource:Landroid/content/Intent$ShortcutIconResource;
    .local v11, iconResource:Landroid/content/Intent$ShortcutIconResource;
    move-object v2, v5

    .end local v5           #icon:Landroid/graphics/drawable/Drawable;
    .local v2, icon:Landroid/graphics/drawable/Drawable;
    move-object v5, v11

    .end local v11           #iconResource:Landroid/content/Intent$ShortcutIconResource;
    .local v5, iconResource:Landroid/content/Intent$ShortcutIconResource;
    goto :goto_38
.end method

.method static addShortcut(Landroid/content/Context;Landroid/content/Intent;Lcom/android/launcher/CellLayout$CellInfo;Z)Lcom/android/launcher/ApplicationInfo;
    .registers 12
    .parameter "context"
    .parameter "data"
    .parameter "cellInfo"
    .parameter "notify"

    .prologue
    .line 769
    invoke-static {p0, p1}, Lcom/android/launcher/Launcher;->infoFromShortcutIntent(Landroid/content/Context;Landroid/content/Intent;)Lcom/android/launcher/ApplicationInfo;

    move-result-object v1

    .line 770
    .local v1, info:Lcom/android/launcher/ApplicationInfo;
    const-wide/16 v2, -0x64

    iget v4, p2, Lcom/android/launcher/CellLayout$CellInfo;->screen:I

    iget v5, p2, Lcom/android/launcher/CellLayout$CellInfo;->cellX:I

    iget v6, p2, Lcom/android/launcher/CellLayout$CellInfo;->cellY:I

    move-object v0, p0

    move v7, p3

    invoke-static/range {v0 .. v7}, Lcom/android/launcher/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher/ItemInfo;JIIIZ)V

    .line 773
    return-object v1
.end method

.method private bindAppWidgets(Lcom/android/launcher/Launcher$DesktopBinder;Ljava/util/LinkedList;)V
    .registers 15
    .parameter "binder"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher/Launcher$DesktopBinder;",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/launcher/LauncherAppWidgetInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1564
    .local p2, appWidgets:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/launcher/LauncherAppWidgetInfo;>;"
    iget-object v0, p0, Lcom/android/launcher/Launcher;->mWorkspace:Lcom/android/launcher/Workspace;

    .line 1565
    .local v0, workspace:Lcom/android/launcher/Workspace;
    iget-boolean v10, p0, Lcom/android/launcher/Launcher;->mDesktopLocked:Z

    .line 1567
    .local v10, desktopLocked:Z
    invoke-virtual {p2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3f

    .line 1568
    invoke-virtual {p2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher/LauncherAppWidgetInfo;

    .line 1570
    .local v11, item:Lcom/android/launcher/LauncherAppWidgetInfo;
    iget v8, v11, Lcom/android/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    .line 1571
    .local v8, appWidgetId:I
    iget-object v1, p0, Lcom/android/launcher/Launcher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v1, v8}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v9

    .line 1572
    .local v9, appWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;
    iget-object v1, p0, Lcom/android/launcher/Launcher;->mAppWidgetHost:Lcom/android/launcher/LauncherAppWidgetHost;

    invoke-virtual {v1, p0, v8, v9}, Lcom/android/launcher/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v1

    iput-object v1, v11, Lcom/android/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 1579
    iget-object v1, v11, Lcom/android/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v1, v8, v9}, Landroid/appwidget/AppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 1580
    iget-object v1, v11, Lcom/android/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v1, v11}, Landroid/appwidget/AppWidgetHostView;->setTag(Ljava/lang/Object;)V

    .line 1582
    iget-object v1, v11, Lcom/android/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    iget v2, v11, Lcom/android/launcher/LauncherAppWidgetInfo;->screen:I

    iget v3, v11, Lcom/android/launcher/LauncherAppWidgetInfo;->cellX:I

    iget v4, v11, Lcom/android/launcher/LauncherAppWidgetInfo;->cellY:I

    iget v5, v11, Lcom/android/launcher/LauncherAppWidgetInfo;->spanX:I

    iget v6, v11, Lcom/android/launcher/LauncherAppWidgetInfo;->spanY:I

    if-nez v10, :cond_46

    const/4 v7, 0x1

    :goto_39
    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher/Workspace;->addInScreen(Landroid/view/View;IIIIIZ)V

    .line 1585
    invoke-virtual {v0}, Lcom/android/launcher/Workspace;->requestLayout()V

    .line 1588
    .end local v8           #appWidgetId:I
    .end local v9           #appWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;
    .end local v11           #item:Lcom/android/launcher/LauncherAppWidgetInfo;
    :cond_3f
    invoke-virtual {p2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_48

    .line 1595
    :goto_45
    return-void

    .line 1582
    .restart local v8       #appWidgetId:I
    .restart local v9       #appWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;
    .restart local v11       #item:Lcom/android/launcher/LauncherAppWidgetInfo;
    :cond_46
    const/4 v7, 0x0

    goto :goto_39

    .line 1593
    .end local v8           #appWidgetId:I
    .end local v9           #appWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;
    .end local v11           #item:Lcom/android/launcher/LauncherAppWidgetInfo;
    :cond_48
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcom/android/launcher/Launcher$DesktopBinder;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_45
.end method

.method private bindDesktopItems(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher/ItemInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher/LauncherAppWidgetInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1422
    .local p1, shortcuts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher/ItemInfo;>;"
    .local p2, appWidgets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher/LauncherAppWidgetInfo;>;"
    sget-object v4, Lcom/android/launcher/Launcher;->sModel:Lcom/android/launcher/LauncherModel;

    invoke-virtual {v4}, Lcom/android/launcher/LauncherModel;->getApplicationsAdapter()Lcom/android/launcher/ApplicationsAdapter;

    move-result-object v1

    .line 1423
    .local v1, drawerAdapter:Lcom/android/launcher/ApplicationsAdapter;
    if-eqz p1, :cond_c

    if-eqz p2, :cond_c

    if-nez v1, :cond_14

    .line 1424
    :cond_c
    const-string v4, "HomeLoaders"

    const-string v5, "  ------> a source is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1453
    :goto_13
    return-void

    .line 1428
    :cond_14
    iget-object v3, p0, Lcom/android/launcher/Launcher;->mWorkspace:Lcom/android/launcher/Workspace;

    .line 1429
    .local v3, workspace:Lcom/android/launcher/Workspace;
    invoke-virtual {v3}, Lcom/android/launcher/Workspace;->getChildCount()I

    move-result v0

    .line 1430
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1b
    if-ge v2, v0, :cond_29

    .line 1431
    invoke-virtual {v3, v2}, Lcom/android/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 1430
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 1447
    :cond_29
    iget-object v4, p0, Lcom/android/launcher/Launcher;->mBinder:Lcom/android/launcher/Launcher$DesktopBinder;

    if-eqz v4, :cond_32

    .line 1448
    iget-object v4, p0, Lcom/android/launcher/Launcher;->mBinder:Lcom/android/launcher/Launcher$DesktopBinder;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/launcher/Launcher$DesktopBinder;->mTerminate:Z

    .line 1451
    :cond_32
    new-instance v4, Lcom/android/launcher/Launcher$DesktopBinder;

    invoke-direct {v4, p0, p1, p2, v1}, Lcom/android/launcher/Launcher$DesktopBinder;-><init>(Lcom/android/launcher/Launcher;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/launcher/ApplicationsAdapter;)V

    iput-object v4, p0, Lcom/android/launcher/Launcher;->mBinder:Lcom/android/launcher/Launcher$DesktopBinder;

    .line 1452
    iget-object v4, p0, Lcom/android/launcher/Launcher;->mBinder:Lcom/android/launcher/Launcher$DesktopBinder;

    invoke-virtual {v4}, Lcom/android/launcher/Launcher$DesktopBinder;->startBindingItems()V

    goto :goto_13
.end method

.method private bindDrawer(Lcom/android/launcher/Launcher$DesktopBinder;Lcom/android/launcher/ApplicationsAdapter;)V
    .registers 4
    .parameter "binder"
    .parameter "drawerAdapter"

    .prologue
    .line 1557
    iget-object v0, p0, Lcom/android/launcher/Launcher;->mAllAppsGrid:Lcom/android/launcher/AllAppsGridView;

    invoke-virtual {v0, p2}, Lcom/android/launcher/AllAppsGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1558
    invoke-virtual {p1}, Lcom/android/launcher/Launcher$DesktopBinder;->startBindingAppWidgetsWhenIdle()V

    .line 1559
    return-void
.end method

.method private bindItems(Lcom/android/launcher/Launcher$DesktopBinder;Ljava/util/ArrayList;II)V
    .registers 29
    .parameter "binder"
    .parameter
    .parameter "start"
    .parameter "count"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher/Launcher$DesktopBinder;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher/ItemInfo;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 1458
    .local p2, shortcuts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher/ItemInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher/Launcher;->mWorkspace:Lcom/android/launcher/Workspace;

    move-object v4, v0

    .line 1459
    .local v4, workspace:Lcom/android/launcher/Workspace;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher/Launcher;->mDesktopLocked:Z

    move/from16 v16, v0

    .line 1461
    .local v16, desktopLocked:Z
    add-int/lit8 v6, p3, 0x6

    move v0, v6

    move/from16 v1, p4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v17

    .line 1462
    .local v17, end:I
    move/from16 v18, p3

    .line 1464
    .end local p3
    .local v18, i:I
    :goto_16
    move/from16 v0, v18

    move/from16 v1, v17

    if-ge v0, v1, :cond_11b

    .line 1465
    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/launcher/ItemInfo;

    .line 1466
    .local v19, item:Lcom/android/launcher/ItemInfo;
    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/launcher/ItemInfo;->itemType:I

    move v6, v0

    sparse-switch v6, :sswitch_data_13c

    .line 1464
    :goto_2e
    add-int/lit8 v18, v18, 0x1

    goto :goto_16

    .line 1469
    :sswitch_31
    move-object/from16 v0, v19

    check-cast v0, Lcom/android/launcher/ApplicationInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/launcher/Launcher;->createShortcut(Lcom/android/launcher/ApplicationInfo;)Landroid/view/View;

    move-result-object v5

    .line 1470
    .local v5, shortcut:Landroid/view/View;
    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/launcher/ItemInfo;->screen:I

    move v6, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/launcher/ItemInfo;->cellX:I

    move v7, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/launcher/ItemInfo;->cellY:I

    move v8, v0

    const/4 v9, 0x1

    const/4 v10, 0x1

    if-nez v16, :cond_57

    const/4 v11, 0x1

    :goto_53
    invoke-virtual/range {v4 .. v11}, Lcom/android/launcher/Workspace;->addInScreen(Landroid/view/View;IIIIIZ)V

    goto :goto_2e

    :cond_57
    const/4 v11, 0x0

    goto :goto_53

    .line 1474
    .end local v5           #shortcut:Landroid/view/View;
    :sswitch_59
    const v6, 0x7f030005

    invoke-virtual {v4}, Lcom/android/launcher/Workspace;->getCurrentScreen()I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/android/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    move-object/from16 v0, v19

    check-cast v0, Lcom/android/launcher/UserFolderInfo;

    move-object/from16 v20, v0

    move v0, v6

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Lcom/android/launcher/FolderIcon;->fromXml(ILcom/android/launcher/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher/UserFolderInfo;)Lcom/android/launcher/FolderIcon;

    move-result-object v7

    .line 1477
    .local v7, newFolder:Lcom/android/launcher/FolderIcon;
    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/launcher/ItemInfo;->screen:I

    move v8, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/launcher/ItemInfo;->cellX:I

    move v9, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/launcher/ItemInfo;->cellY:I

    move v10, v0

    const/4 v11, 0x1

    const/4 v12, 0x1

    if-nez v16, :cond_91

    const/4 v6, 0x1

    move v13, v6

    :goto_8c
    move-object v6, v4

    invoke-virtual/range {v6 .. v13}, Lcom/android/launcher/Workspace;->addInScreen(Landroid/view/View;IIIIIZ)V

    goto :goto_2e

    :cond_91
    const/4 v6, 0x0

    move v13, v6

    goto :goto_8c

    .line 1481
    .end local v7           #newFolder:Lcom/android/launcher/FolderIcon;
    :sswitch_94
    const v6, 0x7f03000a

    invoke-virtual {v4}, Lcom/android/launcher/Workspace;->getCurrentScreen()I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/android/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    move-object/from16 v0, v19

    check-cast v0, Lcom/android/launcher/LiveFolderInfo;

    move-object/from16 v20, v0

    move v0, v6

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Lcom/android/launcher/LiveFolderIcon;->fromXml(ILcom/android/launcher/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher/LiveFolderInfo;)Lcom/android/launcher/LiveFolderIcon;

    move-result-object v9

    .line 1485
    .local v9, newLiveFolder:Lcom/android/launcher/FolderIcon;
    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/launcher/ItemInfo;->screen:I

    move v10, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/launcher/ItemInfo;->cellX:I

    move v11, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/launcher/ItemInfo;->cellY:I

    move v12, v0

    const/4 v13, 0x1

    const/4 v14, 0x1

    if-nez v16, :cond_cd

    const/4 v6, 0x1

    move v15, v6

    :goto_c7
    move-object v8, v4

    invoke-virtual/range {v8 .. v15}, Lcom/android/launcher/Workspace;->addInScreen(Landroid/view/View;IIIIIZ)V

    goto/16 :goto_2e

    :cond_cd
    const/4 v6, 0x0

    move v15, v6

    goto :goto_c7

    .line 1489
    .end local v9           #newLiveFolder:Lcom/android/launcher/FolderIcon;
    :sswitch_d0
    invoke-virtual {v4}, Lcom/android/launcher/Workspace;->getCurrentScreen()I

    move-result v20

    .line 1490
    .local v20, screen:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher/Launcher;->mInflater:Landroid/view/LayoutInflater;

    move-object v6, v0

    const v7, 0x7f030010

    move-object v0, v4

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    const/4 v8, 0x0

    move-object v0, v6

    move v1, v7

    move-object/from16 v2, p3

    move v3, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v22

    .line 1493
    .local v22, view:Landroid/view/View;
    const v6, 0x7f060017

    move-object/from16 v0, v22

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Lcom/android/launcher/Search;

    .line 1494
    .local v21, search:Lcom/android/launcher/Search;
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/launcher/Search;->setLauncher(Lcom/android/launcher/Launcher;)V

    .line 1496
    move-object/from16 v0, v19

    check-cast v0, Lcom/android/launcher/Widget;

    move-object/from16 v23, v0

    .line 1497
    .local v23, widget:Lcom/android/launcher/Widget;
    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1499
    if-nez v16, :cond_119

    const/4 v6, 0x1

    :goto_10e
    move-object v0, v4

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher/Workspace;->addWidget(Landroid/view/View;Lcom/android/launcher/Widget;Z)V

    goto/16 :goto_2e

    :cond_119
    const/4 v6, 0x0

    goto :goto_10e

    .line 1504
    .end local v19           #item:Lcom/android/launcher/ItemInfo;
    .end local v20           #screen:I
    .end local v21           #search:Lcom/android/launcher/Search;
    .end local v22           #view:Landroid/view/View;
    .end local v23           #widget:Lcom/android/launcher/Widget;
    :cond_11b
    invoke-virtual {v4}, Lcom/android/launcher/Workspace;->requestLayout()V

    .line 1506
    move/from16 v0, v17

    move/from16 v1, p4

    if-lt v0, v1, :cond_12b

    .line 1507
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher/Launcher;->finishBindDesktopItems()V

    .line 1508
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher/Launcher$DesktopBinder;->startBindingDrawer()V

    .line 1512
    :goto_12a
    return-void

    .line 1510
    :cond_12b
    const/4 v6, 0x1

    move-object/from16 v0, p1

    move v1, v6

    move/from16 v2, v18

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher/Launcher$DesktopBinder;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    goto :goto_12a

    .line 1466
    nop

    :sswitch_data_13c
    .sparse-switch
        0x0 -> :sswitch_31
        0x1 -> :sswitch_31
        0x2 -> :sswitch_59
        0x3 -> :sswitch_94
        0x3e9 -> :sswitch_d0
    .end sparse-switch
.end method

.method private checkForLocaleChange()V
    .registers 10

    .prologue
    .line 277
    new-instance v2, Lcom/android/launcher/Launcher$LocaleConfiguration;

    const/4 v8, 0x0

    invoke-direct {v2, v8}, Lcom/android/launcher/Launcher$LocaleConfiguration;-><init>(Lcom/android/launcher/Launcher$1;)V

    .line 278
    .local v2, localeConfiguration:Lcom/android/launcher/Launcher$LocaleConfiguration;
    invoke-static {p0, v2}, Lcom/android/launcher/Launcher;->readConfiguration(Landroid/content/Context;Lcom/android/launcher/Launcher$LocaleConfiguration;)V

    .line 280
    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 282
    .local v0, configuration:Landroid/content/res/Configuration;
    iget-object v5, v2, Lcom/android/launcher/Launcher$LocaleConfiguration;->locale:Ljava/lang/String;

    .line 283
    .local v5, previousLocale:Ljava/lang/String;
    iget-object v8, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v8}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    .line 285
    .local v1, locale:Ljava/lang/String;
    iget v6, v2, Lcom/android/launcher/Launcher$LocaleConfiguration;->mcc:I

    .line 286
    .local v6, previousMcc:I
    iget v3, v0, Landroid/content/res/Configuration;->mcc:I

    .line 288
    .local v3, mcc:I
    iget v7, v2, Lcom/android/launcher/Launcher$LocaleConfiguration;->mnc:I

    .line 289
    .local v7, previousMnc:I
    iget v4, v0, Landroid/content/res/Configuration;->mnc:I

    .line 291
    .local v4, mnc:I
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2b

    if-ne v3, v6, :cond_2b

    if-eq v4, v7, :cond_3c

    :cond_2b
    const/4 v8, 0x1

    :goto_2c
    iput-boolean v8, p0, Lcom/android/launcher/Launcher;->mLocaleChanged:Z

    .line 293
    iget-boolean v8, p0, Lcom/android/launcher/Launcher;->mLocaleChanged:Z

    if-eqz v8, :cond_3b

    .line 294
    iput-object v1, v2, Lcom/android/launcher/Launcher$LocaleConfiguration;->locale:Ljava/lang/String;

    .line 295
    iput v3, v2, Lcom/android/launcher/Launcher$LocaleConfiguration;->mcc:I

    .line 296
    iput v4, v2, Lcom/android/launcher/Launcher$LocaleConfiguration;->mnc:I

    .line 298
    invoke-static {p0, v2}, Lcom/android/launcher/Launcher;->writeConfiguration(Landroid/content/Context;Lcom/android/launcher/Launcher$LocaleConfiguration;)V

    .line 300
    :cond_3b
    return-void

    .line 291
    :cond_3c
    const/4 v8, 0x0

    goto :goto_2c
.end method

.method private clearTypedText()V
    .registers 3

    .prologue
    .line 513
    iget-object v0, p0, Lcom/android/launcher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 514
    iget-object v0, p0, Lcom/android/launcher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 515
    iget-object v0, p0, Lcom/android/launcher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 516
    return-void
.end method

.method private closeDrawer()V
    .registers 2

    .prologue
    .line 1363
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher/Launcher;->closeDrawer(Z)V

    .line 1364
    return-void
.end method

.method private closeDrawer(Z)V
    .registers 4
    .parameter "animated"

    .prologue
    .line 1367
    iget-object v0, p0, Lcom/android/launcher/Launcher;->mDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1368
    if-eqz p1, :cond_27

    .line 1369
    iget-object v0, p0, Lcom/android/launcher/Launcher;->mDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->animateClose()V

    .line 1373
    :goto_f
    iget-object v0, p0, Lcom/android/launcher/Launcher;->mDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1374
    iget-object v0, p0, Lcom/android/launcher/Launcher;->mWorkspace:Lcom/android/launcher/Workspace;

    iget-object v1, p0, Lcom/android/launcher/Launcher;->mWorkspace:Lcom/android/launcher/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher/Workspace;->getCurrentScreen()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1377
    :cond_26
    return-void

    .line 1371
    :cond_27
    iget-object v0, p0, Lcom/android/launcher/Launcher;->mDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->close()V

    goto :goto_f
.end method

.method private closeFolder()V
    .registers 3

    .prologue
    .line 1380
    iget-object v1, p0, Lcom/android/launcher/Launcher;->mWorkspace:Lcom/android/launcher/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher/Workspace;->getOpenFolder()Lcom/android/launcher/Folder;

    move-result-object v0

    .line 1381
    .local v0, folder:Lcom/android/launcher/Folder;
    if-eqz v0, :cond_b

    .line 1382
    invoke-virtual {p0, v0}, Lcom/android/launcher/Launcher;->closeFolder(Lcom/android/launcher/Folder;)V

    .line 1384
    :cond_b
    return-void
.end method

.method private completeAddAppWidget(Landroid/content/Intent;Lcom/android/launcher/CellLayout$CellInfo;Z)V
    .registers 24
    .parameter "data"
    .parameter "cellInfo"
    .parameter "insertAtFirst"

    .prologue
    .line 722
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v16

    .line 723
    .local v16, extras:Landroid/os/Bundle;
    const-string v5, "appWidgetId"

    const/4 v6, -0x1

    move-object/from16 v0, v16

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v14

    .line 725
    .local v14, appWidgetId:I
    const-string v5, "Launcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dumping extras content="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v16 .. v16}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher/Launcher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    move-object v5, v0

    invoke-virtual {v5, v14}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v15

    .line 730
    .local v15, appWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher/Launcher;->mWorkspace:Lcom/android/launcher/Workspace;

    move-object v5, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/launcher/CellLayout$CellInfo;->screen:I

    move v6, v0

    invoke-virtual {v5, v6}, Lcom/android/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Lcom/android/launcher/CellLayout;

    .line 731
    .local v17, layout:Lcom/android/launcher/CellLayout;
    iget v5, v15, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    iget v6, v15, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    move-object/from16 v0, v17

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher/CellLayout;->rectToCell(II)[I

    move-result-object v18

    .line 734
    .local v18, spans:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher/Launcher;->mCellCoordinates:[I

    move-object/from16 v19, v0

    .line 735
    .local v19, xy:[I
    const/4 v5, 0x0

    aget v5, v18, v5

    const/4 v6, 0x1

    aget v6, v18, v6

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v19

    move v3, v5

    move v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/launcher/Launcher;->findSlot(Lcom/android/launcher/CellLayout$CellInfo;[III)Z

    move-result v5

    if-nez v5, :cond_6b

    .line 760
    :cond_6a
    :goto_6a
    return-void

    .line 738
    :cond_6b
    new-instance v6, Lcom/android/launcher/LauncherAppWidgetInfo;

    invoke-direct {v6, v14}, Lcom/android/launcher/LauncherAppWidgetInfo;-><init>(I)V

    .line 739
    .local v6, launcherInfo:Lcom/android/launcher/LauncherAppWidgetInfo;
    const/4 v5, 0x0

    aget v5, v18, v5

    iput v5, v6, Lcom/android/launcher/LauncherAppWidgetInfo;->spanX:I

    .line 740
    const/4 v5, 0x1

    aget v5, v18, v5

    iput v5, v6, Lcom/android/launcher/LauncherAppWidgetInfo;->spanY:I

    .line 742
    const-wide/16 v7, -0x64

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher/Launcher;->mWorkspace:Lcom/android/launcher/Workspace;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/launcher/Workspace;->getCurrentScreen()I

    move-result v9

    const/4 v5, 0x0

    aget v10, v19, v5

    const/4 v5, 0x1

    aget v11, v19, v5

    const/4 v12, 0x0

    move-object/from16 v5, p0

    invoke-static/range {v5 .. v12}, Lcom/android/launcher/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher/ItemInfo;JIIIZ)V

    .line 746
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher/Launcher;->mRestoring:Z

    move v5, v0

    if-nez v5, :cond_ce

    .line 747
    sget-object v5, Lcom/android/launcher/Launcher;->sModel:Lcom/android/launcher/LauncherModel;

    invoke-virtual {v5, v6}, Lcom/android/launcher/LauncherModel;->addDesktopAppWidget(Lcom/android/launcher/LauncherAppWidgetInfo;)V

    .line 750
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher/Launcher;->mAppWidgetHost:Lcom/android/launcher/LauncherAppWidgetHost;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p0

    move v2, v14

    move-object v3, v15

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v5

    iput-object v5, v6, Lcom/android/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 752
    iget-object v5, v6, Lcom/android/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v5, v14, v15}, Landroid/appwidget/AppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 753
    iget-object v5, v6, Lcom/android/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v5, v6}, Landroid/appwidget/AppWidgetHostView;->setTag(Ljava/lang/Object;)V

    .line 755
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher/Launcher;->mWorkspace:Lcom/android/launcher/Workspace;

    move-object v7, v0

    iget-object v8, v6, Lcom/android/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    const/4 v5, 0x0

    aget v9, v19, v5

    const/4 v5, 0x1

    aget v10, v19, v5

    iget v11, v6, Lcom/android/launcher/LauncherAppWidgetInfo;->spanX:I

    iget v12, v6, Lcom/android/launcher/LauncherAppWidgetInfo;->spanY:I

    move/from16 v13, p3

    invoke-virtual/range {v7 .. v13}, Lcom/android/launcher/Workspace;->addInCurrentScreen(Landroid/view/View;IIIIZ)V

    goto :goto_6a

    .line 757
    :cond_ce
    sget-object v5, Lcom/android/launcher/Launcher;->sModel:Lcom/android/launcher/LauncherModel;

    invoke-virtual {v5}, Lcom/android/launcher/LauncherModel;->isDesktopLoaded()Z

    move-result v5

    if-eqz v5, :cond_6a

    .line 758
    sget-object v5, Lcom/android/launcher/Launcher;->sModel:Lcom/android/launcher/LauncherModel;

    invoke-virtual {v5, v6}, Lcom/android/launcher/LauncherModel;->addDesktopAppWidget(Lcom/android/launcher/LauncherAppWidgetInfo;)V

    goto :goto_6a
.end method

.method private completeAddLiveFolder(Landroid/content/Intent;Lcom/android/launcher/CellLayout$CellInfo;Z)V
    .registers 12
    .parameter "data"
    .parameter "cellInfo"
    .parameter "insertAtFirst"

    .prologue
    const/4 v4, 0x1

    .line 1208
    iget-object v0, p0, Lcom/android/launcher/Launcher;->mWorkspace:Lcom/android/launcher/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher/Workspace;->getCurrentScreen()I

    move-result v0

    iput v0, p2, Lcom/android/launcher/CellLayout$CellInfo;->screen:I

    .line 1209
    invoke-direct {p0, p2}, Lcom/android/launcher/Launcher;->findSingleSlot(Lcom/android/launcher/CellLayout$CellInfo;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 1222
    :cond_f
    :goto_f
    return-void

    .line 1211
    :cond_10
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/launcher/Launcher;->addLiveFolder(Landroid/content/Context;Landroid/content/Intent;Lcom/android/launcher/CellLayout$CellInfo;Z)Lcom/android/launcher/LiveFolderInfo;

    move-result-object v7

    .line 1213
    .local v7, info:Lcom/android/launcher/LiveFolderInfo;
    iget-boolean v0, p0, Lcom/android/launcher/Launcher;->mRestoring:Z

    if-nez v0, :cond_3f

    .line 1214
    sget-object v0, Lcom/android/launcher/Launcher;->sModel:Lcom/android/launcher/LauncherModel;

    invoke-virtual {v0, v7}, Lcom/android/launcher/LauncherModel;->addDesktopItem(Lcom/android/launcher/ItemInfo;)V

    .line 1216
    const v2, 0x7f03000a

    iget-object v0, p0, Lcom/android/launcher/Launcher;->mWorkspace:Lcom/android/launcher/Workspace;

    iget-object v3, p0, Lcom/android/launcher/Launcher;->mWorkspace:Lcom/android/launcher/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher/Workspace;->getCurrentScreen()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v2, p0, v0, v7}, Lcom/android/launcher/LiveFolderIcon;->fromXml(ILcom/android/launcher/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher/LiveFolderInfo;)Lcom/android/launcher/LiveFolderIcon;

    move-result-object v1

    .line 1218
    .local v1, view:Landroid/view/View;
    iget-object v0, p0, Lcom/android/launcher/Launcher;->mWorkspace:Lcom/android/launcher/Workspace;

    iget v2, p2, Lcom/android/launcher/CellLayout$CellInfo;->cellX:I

    iget v3, p2, Lcom/android/launcher/CellLayout$CellInfo;->cellY:I

    move v5, v4

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher/Workspace;->addInCurrentScreen(Landroid/view/View;IIIIZ)V

    goto :goto_f

    .line 1219
    .end local v1           #view:Landroid/view/View;
    :cond_3f
    sget-object v0, Lcom/android/launcher/Launcher;->sModel:Lcom/android/launcher/LauncherModel;

    invoke-virtual {v0}, Lcom/android/launcher/LauncherModel;->isDesktopLoaded()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1220
    sget-object v0, Lcom/android/launcher/Launcher;->sModel:Lcom/android/launcher/LauncherModel;

    invoke-virtual {v0, v7}, Lcom/android/launcher/LauncherModel;->addDesktopItem(Lcom/android/launcher/ItemInfo;)V

    goto :goto_f
.end method

.method private completeAddShortcut(Landroid/content/Intent;Lcom/android/launcher/CellLayout$CellInfo;Z)V
    .registers 12
    .parameter "data"
    .parameter "cellInfo"
    .parameter "insertAtFirst"

    .prologue
    const/4 v4, 0x1

    .line 697
    iget-object v0, p0, Lcom/android/launcher/Launcher;->mWorkspace:Lcom/android/launcher/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher/Workspace;->getCurrentScreen()I

    move-result v0

    iput v0, p2, Lcom/android/launcher/CellLayout$CellInfo;->screen:I

    .line 698
    invoke-direct {p0, p2}, Lcom/android/launcher/Launcher;->findSingleSlot(Lcom/android/launcher/CellLayout$CellInfo;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 710
    :cond_f
    :goto_f
    return-void

    .line 700
    :cond_10
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/launcher/Launcher;->addShortcut(Landroid/content/Context;Landroid/content/Intent;Lcom/android/launcher/CellLayout$CellInfo;Z)Lcom/android/launcher/ApplicationInfo;

    move-result-object v7

    .line 702
    .local v7, info:Lcom/android/launcher/ApplicationInfo;
    iget-boolean v0, p0, Lcom/android/launcher/Launcher;->mRestoring:Z

    if-nez v0, :cond_2e

    .line 703
    sget-object v0, Lcom/android/launcher/Launcher;->sModel:Lcom/android/launcher/LauncherModel;

    invoke-virtual {v0, v7}, Lcom/android/launcher/LauncherModel;->addDesktopItem(Lcom/android/launcher/ItemInfo;)V

    .line 705
    invoke-virtual {p0, v7}, Lcom/android/launcher/Launcher;->createShortcut(Lcom/android/launcher/ApplicationInfo;)Landroid/view/View;

    move-result-object v1

    .line 706
    .local v1, view:Landroid/view/View;
    iget-object v0, p0, Lcom/android/launcher/Launcher;->mWorkspace:Lcom/android/launcher/Workspace;

    iget v2, p2, Lcom/android/launcher/CellLayout$CellInfo;->cellX:I

    iget v3, p2, Lcom/android/launcher/CellLayout$CellInfo;->cellY:I

    move v5, v4

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher/Workspace;->addInCurrentScreen(Landroid/view/View;IIIIZ)V

    goto :goto_f

    .line 707
    .end local v1           #view:Landroid/view/View;
    :cond_2e
    sget-object v0, Lcom/android/launcher/Launcher;->sModel:Lcom/android/launcher/LauncherModel;

    invoke-virtual {v0}, Lcom/android/launcher/LauncherModel;->isDesktopLoaded()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 708
    sget-object v0, Lcom/android/launcher/Launcher;->sModel:Lcom/android/launcher/LauncherModel;

    invoke-virtual {v0, v7}, Lcom/android/launcher/LauncherModel;->addDesktopItem(Lcom/android/launcher/ItemInfo;)V

    goto :goto_f
.end method

.method private findSingleSlot(Lcom/android/launcher/CellLayout$CellInfo;)Z
    .registers 6
    .parameter "cellInfo"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1270
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 1271
    .local v0, xy:[I
    invoke-direct {p0, p1, v0, v2, v2}, Lcom/android/launcher/Launcher;->findSlot(Lcom/android/launcher/CellLayout$CellInfo;[III)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1272
    aget v1, v0, v3

    iput v1, p1, Lcom/android/launcher/CellLayout$CellInfo;->cellX:I

    .line 1273
    aget v1, v0, v2

    iput v1, p1, Lcom/android/launcher/CellLayout$CellInfo;->cellY:I

    move v1, v2

    .line 1276
    :goto_14
    return v1

    :cond_15
    move v1, v3

    goto :goto_14
.end method

.method private findSlot(Lcom/android/launcher/CellLayout$CellInfo;[III)Z
    .registers 9
    .parameter "cellInfo"
    .parameter "xy"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    const/4 v3, 0x0

    .line 1280
    invoke-virtual {p1, p2, p3, p4}, Lcom/android/launcher/CellLayout$CellInfo;->findCellForSpan([III)Z

    move-result v1

    if-nez v1, :cond_33

    .line 1281
    iget-object v1, p0, Lcom/android/launcher/Launcher;->mSavedState:Landroid/os/Bundle;

    if-eqz v1, :cond_30

    iget-object v1, p0, Lcom/android/launcher/Launcher;->mSavedState:Landroid/os/Bundle;

    const-string v2, "launcher.add_occupied_cells"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v1

    move-object v0, v1

    .line 1283
    .local v0, occupied:[Z
    :goto_14
    iget-object v1, p0, Lcom/android/launcher/Launcher;->mWorkspace:Lcom/android/launcher/Workspace;

    invoke-virtual {v1, v0}, Lcom/android/launcher/Workspace;->findAllVacantCells([Z)Lcom/android/launcher/CellLayout$CellInfo;

    move-result-object p1

    .line 1284
    invoke-virtual {p1, p2, p3, p4}, Lcom/android/launcher/CellLayout$CellInfo;->findCellForSpan([III)Z

    move-result v1

    if-nez v1, :cond_33

    .line 1285
    const v1, 0x7f0a0017

    invoke-virtual {p0, v1}, Lcom/android/launcher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    move v1, v3

    .line 1289
    .end local v0           #occupied:[Z
    :goto_2f
    return v1

    .line 1281
    :cond_30
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_14

    .line 1289
    :cond_33
    const/4 v1, 0x1

    goto :goto_2f
.end method

.method private finishBindDesktopItems()V
    .registers 14

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    .line 1515
    iget-object v9, p0, Lcom/android/launcher/Launcher;->mSavedState:Landroid/os/Bundle;

    if-eqz v9, :cond_58

    .line 1516
    iget-object v9, p0, Lcom/android/launcher/Launcher;->mWorkspace:Lcom/android/launcher/Workspace;

    invoke-virtual {v9}, Lcom/android/launcher/Workspace;->hasFocus()Z

    move-result v9

    if-nez v9, :cond_1d

    .line 1517
    iget-object v9, p0, Lcom/android/launcher/Launcher;->mWorkspace:Lcom/android/launcher/Workspace;

    iget-object v10, p0, Lcom/android/launcher/Launcher;->mWorkspace:Lcom/android/launcher/Workspace;

    invoke-virtual {v10}, Lcom/android/launcher/Workspace;->getCurrentScreen()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->requestFocus()Z

    .line 1520
    :cond_1d
    iget-object v9, p0, Lcom/android/launcher/Launcher;->mSavedState:Landroid/os/Bundle;

    const-string v10, "launcher.user_folder"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v8

    .line 1521
    .local v8, userFolders:[J
    if-eqz v8, :cond_47

    .line 1522
    move-object v1, v8

    .local v1, arr$:[J
    array-length v6, v1

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_2a
    if-ge v4, v6, :cond_3c

    aget-wide v2, v1, v4

    .line 1523
    .local v2, folderId:J
    sget-object v9, Lcom/android/launcher/Launcher;->sModel:Lcom/android/launcher/LauncherModel;

    invoke-virtual {v9, v2, v3}, Lcom/android/launcher/LauncherModel;->findFolderById(J)Lcom/android/launcher/FolderInfo;

    move-result-object v5

    .line 1524
    .local v5, info:Lcom/android/launcher/FolderInfo;
    if-eqz v5, :cond_39

    .line 1525
    invoke-direct {p0, v5}, Lcom/android/launcher/Launcher;->openFolder(Lcom/android/launcher/FolderInfo;)V

    .line 1522
    :cond_39
    add-int/lit8 v4, v4, 0x1

    goto :goto_2a

    .line 1528
    .end local v2           #folderId:J
    .end local v5           #info:Lcom/android/launcher/FolderInfo;
    :cond_3c
    iget-object v9, p0, Lcom/android/launcher/Launcher;->mWorkspace:Lcom/android/launcher/Workspace;

    invoke-virtual {v9}, Lcom/android/launcher/Workspace;->getOpenFolder()Lcom/android/launcher/Folder;

    move-result-object v7

    .line 1529
    .local v7, openFolder:Lcom/android/launcher/Folder;
    if-eqz v7, :cond_47

    .line 1530
    invoke-virtual {v7}, Lcom/android/launcher/Folder;->requestFocus()Z

    .line 1534
    .end local v1           #arr$:[J
    .end local v4           #i$:I
    .end local v6           #len$:I
    .end local v7           #openFolder:Lcom/android/launcher/Folder;
    :cond_47
    iget-object v9, p0, Lcom/android/launcher/Launcher;->mSavedState:Landroid/os/Bundle;

    const-string v10, "launcher.all_apps_folder"

    invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1535
    .local v0, allApps:Z
    if-eqz v0, :cond_56

    .line 1536
    iget-object v9, p0, Lcom/android/launcher/Launcher;->mDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v9}, Landroid/widget/SlidingDrawer;->open()V

    .line 1539
    :cond_56
    iput-object v12, p0, Lcom/android/launcher/Launcher;->mSavedState:Landroid/os/Bundle;

    .line 1542
    .end local v0           #allApps:Z
    .end local v8           #userFolders:[J
    :cond_58
    iget-object v9, p0, Lcom/android/launcher/Launcher;->mSavedInstanceState:Landroid/os/Bundle;

    if-eqz v9, :cond_63

    .line 1543
    iget-object v9, p0, Lcom/android/launcher/Launcher;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-super {p0, v9}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1544
    iput-object v12, p0, Lcom/android/launcher/Launcher;->mSavedInstanceState:Landroid/os/Bundle;

    .line 1547
    :cond_63
    iget-object v9, p0, Lcom/android/launcher/Launcher;->mDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v9}, Landroid/widget/SlidingDrawer;->isOpened()Z

    move-result v9

    if-eqz v9, :cond_78

    iget-object v9, p0, Lcom/android/launcher/Launcher;->mDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v9}, Landroid/widget/SlidingDrawer;->hasFocus()Z

    move-result v9

    if-nez v9, :cond_78

    .line 1548
    iget-object v9, p0, Lcom/android/launcher/Launcher;->mDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v9}, Landroid/widget/SlidingDrawer;->requestFocus()Z

    .line 1551
    :cond_78
    iput-boolean v11, p0, Lcom/android/launcher/Launcher;->mDesktopLocked:Z

    .line 1552
    iget-object v9, p0, Lcom/android/launcher/Launcher;->mDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v9}, Landroid/widget/SlidingDrawer;->unlock()V

    .line 1553
    return-void
.end method

.method static getModel()Lcom/android/launcher/LauncherModel;
    .registers 1

    .prologue
    .line 1741
    sget-object v0, Lcom/android/launcher/Launcher;->sModel:Lcom/android/launcher/LauncherModel;

    return-object v0
.end method

.method static getScreen()I
    .registers 2

    .prologue
    .line 355
    sget-object v0, Lcom/android/launcher/Launcher;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 356
    :try_start_3
    sget v1, Lcom/android/launcher/Launcher;->sScreen:I

    monitor-exit v0

    return v1

    .line 357
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method private getTypedText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 509
    iget-object v0, p0, Lcom/android/launcher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleFolderClick(Lcom/android/launcher/FolderInfo;)V
    .registers 5
    .parameter "folderInfo"

    .prologue
    .line 1632
    iget-boolean v2, p1, Lcom/android/launcher/FolderInfo;->opened:Z

    if-nez v2, :cond_b

    .line 1634
    invoke-direct {p0}, Lcom/android/launcher/Launcher;->closeFolder()V

    .line 1636
    invoke-direct {p0, p1}, Lcom/android/launcher/Launcher;->openFolder(Lcom/android/launcher/FolderInfo;)V

    .line 1653
    :cond_a
    :goto_a
    return-void

    .line 1639
    :cond_b
    iget-object v2, p0, Lcom/android/launcher/Launcher;->mWorkspace:Lcom/android/launcher/Workspace;

    invoke-virtual {v2, p1}, Lcom/android/launcher/Workspace;->getFolderForTag(Ljava/lang/Object;)Lcom/android/launcher/Folder;

    move-result-object v1

    .line 1641
    .local v1, openFolder:Lcom/android/launcher/Folder;
    if-eqz v1, :cond_a

    .line 1642
    iget-object v2, p0, Lcom/android/launcher/Launcher;->mWorkspace:Lcom/android/launcher/Workspace;

    invoke-virtual {v2, v1}, Lcom/android/launcher/Workspace;->getScreenForView(Landroid/view/View;)I

    move-result v0

    .line 1644
    .local v0, folderScreen:I
    invoke-virtual {p0, v1}, Lcom/android/launcher/Launcher;->closeFolder(Lcom/android/launcher/Folder;)V

    .line 1645
    iget-object v2, p0, Lcom/android/launcher/Launcher;->mWorkspace:Lcom/android/launcher/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher/Workspace;->getCurrentScreen()I

    move-result v2

    if-eq v0, v2, :cond_a

    .line 1647
    invoke-direct {p0}, Lcom/android/launcher/Launcher;->closeFolder()V

    .line 1649
    invoke-direct {p0, p1}, Lcom/android/launcher/Launcher;->openFolder(Lcom/android/launcher/FolderInfo;)V

    goto :goto_a
.end method

.method private static infoFromApplicationIntent(Landroid/content/Context;Landroid/content/Intent;)Lcom/android/launcher/ApplicationInfo;
    .registers 9
    .parameter "context"
    .parameter "data"

    .prologue
    .line 660
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 661
    .local v1, component:Landroid/content/ComponentName;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 662
    .local v4, packageManager:Landroid/content/pm/PackageManager;
    const/4 v0, 0x0

    .line 664
    .local v0, activityInfo:Landroid/content/pm/ActivityInfo;
    const/4 v5, 0x0

    :try_start_a
    invoke-virtual {v4, v1, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_d} :catch_34

    move-result-object v0

    .line 669
    :goto_e
    if-eqz v0, :cond_3d

    .line 670
    new-instance v3, Lcom/android/launcher/ApplicationInfo;

    invoke-direct {v3}, Lcom/android/launcher/ApplicationInfo;-><init>()V

    .line 672
    .local v3, itemInfo:Lcom/android/launcher/ApplicationInfo;
    invoke-virtual {v0, v4}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, v3, Lcom/android/launcher/ApplicationInfo;->title:Ljava/lang/CharSequence;

    .line 673
    iget-object v5, v3, Lcom/android/launcher/ApplicationInfo;->title:Ljava/lang/CharSequence;

    if-nez v5, :cond_23

    .line 674
    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object v5, v3, Lcom/android/launcher/ApplicationInfo;->title:Ljava/lang/CharSequence;

    .line 677
    :cond_23
    const/high16 v5, 0x1020

    invoke-virtual {v3, v1, v5}, Lcom/android/launcher/ApplicationInfo;->setActivity(Landroid/content/ComponentName;I)V

    .line 679
    invoke-virtual {v0, v4}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, v3, Lcom/android/launcher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 680
    const-wide/16 v5, -0x1

    iput-wide v5, v3, Lcom/android/launcher/ApplicationInfo;->container:J

    move-object v5, v3

    .line 685
    .end local v3           #itemInfo:Lcom/android/launcher/ApplicationInfo;
    :goto_33
    return-object v5

    .line 665
    :catch_34
    move-exception v2

    .line 666
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "Launcher"

    const-string v6, "Couldn\'t find ActivityInfo for selected application"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e

    .line 685
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_3d
    const/4 v5, 0x0

    goto :goto_33
.end method

.method private static infoFromShortcutIntent(Landroid/content/Context;Landroid/content/Intent;)Lcom/android/launcher/ApplicationInfo;
    .registers 14
    .parameter "context"
    .parameter "data"

    .prologue
    .line 777
    const-string v1, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    .line 778
    .local v6, intent:Landroid/content/Intent;
    const-string v1, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 779
    .local v7, name:Ljava/lang/String;
    const-string v1, "android.intent.extra.shortcut.ICON"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 781
    .local v1, bitmap:Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    .line 782
    .local v4, icon:Landroid/graphics/drawable/Drawable;
    const/4 v3, 0x0

    .line 783
    .local v3, filtered:Z
    const/4 v2, 0x0

    .line 784
    .local v2, customIcon:Z
    const/4 v5, 0x0

    .line 786
    .local v5, iconResource:Landroid/content/Intent$ShortcutIconResource;
    if-eqz v1, :cond_44

    .line 787
    new-instance v2, Lcom/android/launcher/FastBitmapDrawable;

    .end local v2           #customIcon:Z
    invoke-static {v1, p0}, Lcom/android/launcher/Utilities;->createBitmapThumbnail(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p1

    .end local p1
    invoke-direct {v2, p1}, Lcom/android/launcher/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 788
    .end local v4           #icon:Landroid/graphics/drawable/Drawable;
    .local v2, icon:Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x1

    .line 789
    .end local v3           #filtered:Z
    .local v1, filtered:Z
    const/4 p1, 0x1

    .local p1, customIcon:Z
    move-object v3, v5

    .line 806
    .end local v5           #iconResource:Landroid/content/Intent$ShortcutIconResource;
    .local v3, iconResource:Landroid/content/Intent$ShortcutIconResource;
    :goto_28
    if-nez v2, :cond_8e

    .line 807
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .end local p0
    invoke-virtual {p0}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 810
    .end local v2           #icon:Landroid/graphics/drawable/Drawable;
    .local p0, icon:Landroid/graphics/drawable/Drawable;
    :goto_32
    new-instance v2, Lcom/android/launcher/ApplicationInfo;

    invoke-direct {v2}, Lcom/android/launcher/ApplicationInfo;-><init>()V

    .line 811
    .local v2, info:Lcom/android/launcher/ApplicationInfo;
    iput-object p0, v2, Lcom/android/launcher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 812
    iput-boolean v1, v2, Lcom/android/launcher/ApplicationInfo;->filtered:Z

    .line 813
    iput-object v7, v2, Lcom/android/launcher/ApplicationInfo;->title:Ljava/lang/CharSequence;

    .line 814
    iput-object v6, v2, Lcom/android/launcher/ApplicationInfo;->intent:Landroid/content/Intent;

    .line 815
    iput-boolean p1, v2, Lcom/android/launcher/ApplicationInfo;->customIcon:Z

    .line 816
    iput-object v3, v2, Lcom/android/launcher/ApplicationInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    .line 818
    return-object v2

    .line 791
    .local v1, bitmap:Landroid/graphics/Bitmap;
    .local v2, customIcon:Z
    .local v3, filtered:Z
    .restart local v4       #icon:Landroid/graphics/drawable/Drawable;
    .restart local v5       #iconResource:Landroid/content/Intent$ShortcutIconResource;
    .local p0, context:Landroid/content/Context;
    .local p1, data:Landroid/content/Intent;
    :cond_44
    const-string v1, "android.intent.extra.shortcut.ICON_RESOURCE"

    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .line 792
    .local v1, extra:Landroid/os/Parcelable;
    if-eqz v1, :cond_89

    instance-of p1, v1, Landroid/content/Intent$ShortcutIconResource;

    .end local p1           #data:Landroid/content/Intent;
    if-eqz p1, :cond_89

    .line 794
    :try_start_50
    move-object v0, v1

    check-cast v0, Landroid/content/Intent$ShortcutIconResource;

    move-object v5, v0

    .line 795
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 796
    .local p1, packageManager:Landroid/content/pm/PackageManager;
    iget-object v8, v5, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v8}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v8

    .line 798
    .local v8, resources:Landroid/content/res/Resources;
    iget-object p1, v5, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    .end local p1           #packageManager:Landroid/content/pm/PackageManager;
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, p1, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 799
    .local p1, id:I
    invoke-virtual {v8, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_69} :catch_70

    move-result-object p1

    .end local v4           #icon:Landroid/graphics/drawable/Drawable;
    .local p1, icon:Landroid/graphics/drawable/Drawable;
    move v1, v3

    .end local v3           #filtered:Z
    .local v1, filtered:Z
    move-object v3, v5

    .end local v5           #iconResource:Landroid/content/Intent$ShortcutIconResource;
    .local v3, iconResource:Landroid/content/Intent$ShortcutIconResource;
    move v11, v2

    .end local v2           #customIcon:Z
    .local v11, customIcon:Z
    move-object v2, p1

    .end local p1           #icon:Landroid/graphics/drawable/Drawable;
    .local v2, icon:Landroid/graphics/drawable/Drawable;
    move p1, v11

    .line 802
    .end local v11           #customIcon:Z
    .local p1, customIcon:Z
    goto :goto_28

    .line 800
    .end local v8           #resources:Landroid/content/res/Resources;
    .end local p1           #customIcon:Z
    .local v1, extra:Landroid/os/Parcelable;
    .local v2, customIcon:Z
    .local v3, filtered:Z
    .restart local v4       #icon:Landroid/graphics/drawable/Drawable;
    .restart local v5       #iconResource:Landroid/content/Intent$ShortcutIconResource;
    :catch_70
    move-exception p1

    .line 801
    .local p1, e:Ljava/lang/Exception;
    const-string p1, "Launcher"

    .end local p1           #e:Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not load shortcut icon: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .end local v1           #extra:Landroid/os/Parcelable;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_89
    move p1, v2

    .end local v2           #customIcon:Z
    .local p1, customIcon:Z
    move v1, v3

    .end local v3           #filtered:Z
    .local v1, filtered:Z
    move-object v3, v5

    .end local v5           #iconResource:Landroid/content/Intent$ShortcutIconResource;
    .local v3, iconResource:Landroid/content/Intent$ShortcutIconResource;
    move-object v2, v4

    .end local v4           #icon:Landroid/graphics/drawable/Drawable;
    .local v2, icon:Landroid/graphics/drawable/Drawable;
    goto :goto_28

    :cond_8e
    move-object p0, v2

    .end local v2           #icon:Landroid/graphics/drawable/Drawable;
    .local p0, icon:Landroid/graphics/drawable/Drawable;
    goto :goto_32
.end method

.method private loadWallpaper()V
    .registers 4

    .prologue
    .line 1658
    sget-object v1, Lcom/android/launcher/Launcher;->sWallpaper:Landroid/graphics/Bitmap;

    if-nez v1, :cond_14

    .line 1659
    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getWallpaper()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1660
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_1c

    .line 1661
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/launcher/Launcher;->sWallpaper:Landroid/graphics/Bitmap;

    .line 1666
    :cond_14
    iget-object v1, p0, Lcom/android/launcher/Launcher;->mWorkspace:Lcom/android/launcher/Workspace;

    sget-object v2, Lcom/android/launcher/Launcher;->sWallpaper:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Lcom/android/launcher/Workspace;->loadWallpaper(Landroid/graphics/Bitmap;)V

    .line 1667
    return-void

    .line 1663
    .restart local v0       #drawable:Landroid/graphics/drawable/Drawable;
    :cond_1c
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "The wallpaper must be a BitmapDrawable."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private onAppWidgetReset()V
    .registers 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/launcher/Launcher;->mAppWidgetHost:Lcom/android/launcher/LauncherAppWidgetHost;

    if-eqz v0, :cond_9

    .line 233
    iget-object v0, p0, Lcom/android/launcher/Launcher;->mAppWidgetHost:Lcom/android/launcher/LauncherAppWidgetHost;

    invoke-virtual {v0}, Lcom/android/launcher/LauncherAppWidgetHost;->startListening()V

    .line 235
    :cond_9
    return-void
.end method

.method private onFavoritesChanged()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1400
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher/Launcher;->mDesktopLocked:Z

    .line 1401
    iget-object v0, p0, Lcom/android/launcher/Launcher;->mDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->lock()V

    .line 1402
    sget-object v0, Lcom/android/launcher/Launcher;->sModel:Lcom/android/launcher/LauncherModel;

    invoke-virtual {v0, v1, p0, v1, v1}, Lcom/android/launcher/LauncherModel;->loadUserItems(ZLcom/android/launcher/Launcher;ZZ)V

    .line 1403
    return-void
.end method

.method private openFolder(Lcom/android/launcher/FolderInfo;)V
    .registers 9
    .parameter "folderInfo"

    .prologue
    const/4 v5, 0x4

    const/4 v3, 0x0

    .line 1679
    instance-of v0, p1, Lcom/android/launcher/UserFolderInfo;

    if-eqz v0, :cond_25

    .line 1680
    invoke-static {p0}, Lcom/android/launcher/UserFolder;->fromXml(Landroid/content/Context;)Lcom/android/launcher/UserFolder;

    move-result-object v1

    .line 1687
    .local v1, openFolder:Lcom/android/launcher/Folder;
    :goto_a
    iget-object v0, p0, Lcom/android/launcher/Launcher;->mDragLayer:Lcom/android/launcher/DragLayer;

    invoke-virtual {v1, v0}, Lcom/android/launcher/Folder;->setDragger(Lcom/android/launcher/DragController;)V

    .line 1688
    invoke-virtual {v1, p0}, Lcom/android/launcher/Folder;->setLauncher(Lcom/android/launcher/Launcher;)V

    .line 1690
    invoke-virtual {v1, p1}, Lcom/android/launcher/Folder;->bind(Lcom/android/launcher/FolderInfo;)V

    .line 1691
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/launcher/FolderInfo;->opened:Z

    .line 1693
    iget-object v0, p0, Lcom/android/launcher/Launcher;->mWorkspace:Lcom/android/launcher/Workspace;

    iget v2, p1, Lcom/android/launcher/FolderInfo;->screen:I

    move v4, v3

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher/Workspace;->addInScreen(Landroid/view/View;IIIII)V

    .line 1694
    invoke-virtual {v1}, Lcom/android/launcher/Folder;->onOpen()V

    .line 1695
    .end local v1           #openFolder:Lcom/android/launcher/Folder;
    :cond_24
    return-void

    .line 1681
    :cond_25
    instance-of v0, p1, Lcom/android/launcher/LiveFolderInfo;

    if-eqz v0, :cond_24

    .line 1682
    invoke-static {p0, p1}, Lcom/android/launcher/LiveFolder;->fromXml(Landroid/content/Context;Lcom/android/launcher/FolderInfo;)Lcom/android/launcher/LiveFolder;

    move-result-object v1

    .restart local v1       #openFolder:Lcom/android/launcher/Folder;
    goto :goto_a
.end method

.method private pickShortcut(II)V
    .registers 10
    .parameter "requestCode"
    .parameter "title"

    .prologue
    .line 1813
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1815
    .local v0, bundle:Landroid/os/Bundle;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1816
    .local v3, shortcutNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const v4, 0x7f0a000c

    invoke-virtual {p0, v4}, Lcom/android/launcher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1817
    const-string v4, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1819
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1820
    .local v2, shortcutIcons:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Intent$ShortcutIconResource;>;"
    const v4, 0x7f020011

    invoke-static {p0, v4}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1822
    const-string v4, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1824
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.PICK_ACTIVITY"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1825
    .local v1, pickIntent:Landroid/content/Intent;
    const-string v4, "android.intent.extra.INTENT"

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1826
    const-string v4, "android.intent.extra.TITLE"

    invoke-virtual {p0, p2}, Lcom/android/launcher/Launcher;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 1827
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1829
    invoke-virtual {p0, v1, p1}, Lcom/android/launcher/Launcher;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1830
    return-void
.end method

.method private static readConfiguration(Landroid/content/Context;Lcom/android/launcher/Launcher$LocaleConfiguration;)V
    .registers 6
    .parameter "context"
    .parameter "configuration"

    .prologue
    .line 309
    const/4 v0, 0x0

    .line 311
    .local v0, in:Ljava/io/DataInputStream;
    :try_start_1
    new-instance v1, Ljava/io/DataInputStream;

    const-string v2, "launcher.preferences"

    invoke-virtual {p0, v2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_3a
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_c} :catch_28
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_c} :catch_31

    .line 312
    .end local v0           #in:Ljava/io/DataInputStream;
    .local v1, in:Ljava/io/DataInputStream;
    :try_start_c
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/launcher/Launcher$LocaleConfiguration;->locale:Ljava/lang/String;

    .line 313
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    iput v2, p1, Lcom/android/launcher/Launcher$LocaleConfiguration;->mcc:I

    .line 314
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    iput v2, p1, Lcom/android/launcher/Launcher$LocaleConfiguration;->mnc:I
    :try_end_1e
    .catchall {:try_start_c .. :try_end_1e} :catchall_43
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_1e} :catch_49
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_1e} :catch_46

    .line 320
    if-eqz v1, :cond_4c

    .line 322
    :try_start_20
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_23} :catch_25

    move-object v0, v1

    .line 328
    .end local v1           #in:Ljava/io/DataInputStream;
    .restart local v0       #in:Ljava/io/DataInputStream;
    :cond_24
    :goto_24
    return-void

    .line 323
    .end local v0           #in:Ljava/io/DataInputStream;
    .restart local v1       #in:Ljava/io/DataInputStream;
    :catch_25
    move-exception v2

    move-object v0, v1

    .line 325
    .end local v1           #in:Ljava/io/DataInputStream;
    .restart local v0       #in:Ljava/io/DataInputStream;
    goto :goto_24

    .line 315
    :catch_28
    move-exception v2

    .line 320
    :goto_29
    if-eqz v0, :cond_24

    .line 322
    :try_start_2b
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2e} :catch_2f

    goto :goto_24

    .line 323
    :catch_2f
    move-exception v2

    goto :goto_24

    .line 317
    :catch_31
    move-exception v2

    .line 320
    :goto_32
    if-eqz v0, :cond_24

    .line 322
    :try_start_34
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_38

    goto :goto_24

    .line 323
    :catch_38
    move-exception v2

    goto :goto_24

    .line 320
    :catchall_3a
    move-exception v2

    :goto_3b
    if-eqz v0, :cond_40

    .line 322
    :try_start_3d
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_40} :catch_41

    .line 325
    :cond_40
    :goto_40
    throw v2

    .line 323
    :catch_41
    move-exception v3

    goto :goto_40

    .line 320
    .end local v0           #in:Ljava/io/DataInputStream;
    .restart local v1       #in:Ljava/io/DataInputStream;
    :catchall_43
    move-exception v2

    move-object v0, v1

    .end local v1           #in:Ljava/io/DataInputStream;
    .restart local v0       #in:Ljava/io/DataInputStream;
    goto :goto_3b

    .line 317
    .end local v0           #in:Ljava/io/DataInputStream;
    .restart local v1       #in:Ljava/io/DataInputStream;
    :catch_46
    move-exception v2

    move-object v0, v1

    .end local v1           #in:Ljava/io/DataInputStream;
    .restart local v0       #in:Ljava/io/DataInputStream;
    goto :goto_32

    .line 315
    .end local v0           #in:Ljava/io/DataInputStream;
    .restart local v1       #in:Ljava/io/DataInputStream;
    :catch_49
    move-exception v2

    move-object v0, v1

    .end local v1           #in:Ljava/io/DataInputStream;
    .restart local v0       #in:Ljava/io/DataInputStream;
    goto :goto_29

    .end local v0           #in:Ljava/io/DataInputStream;
    .restart local v1       #in:Ljava/io/DataInputStream;
    :cond_4c
    move-object v0, v1

    .end local v1           #in:Ljava/io/DataInputStream;
    .restart local v0       #in:Ljava/io/DataInputStream;
    goto :goto_24
.end method

.method private registerContentObservers()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 1333
    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1334
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/launcher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/launcher/Launcher;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1336
    sget-object v1, Lcom/android/launcher/LauncherProvider;->CONTENT_APPWIDGET_RESET_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/launcher/Launcher;->mAppWidgetResetObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1340
    return-void
.end method

.method private registerIntentReceivers()V
    .registers 4

    .prologue
    .line 1310
    sget-object v2, Lcom/android/launcher/Launcher;->sWallpaperReceiver:Lcom/android/launcher/Launcher$WallpaperIntentReceiver;

    if-nez v2, :cond_37

    .line 1311
    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 1313
    .local v0, application:Landroid/app/Application;
    new-instance v2, Lcom/android/launcher/Launcher$WallpaperIntentReceiver;

    invoke-direct {v2, v0, p0}, Lcom/android/launcher/Launcher$WallpaperIntentReceiver;-><init>(Landroid/app/Application;Lcom/android/launcher/Launcher;)V

    sput-object v2, Lcom/android/launcher/Launcher;->sWallpaperReceiver:Lcom/android/launcher/Launcher$WallpaperIntentReceiver;

    .line 1315
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.WALLPAPER_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1316
    .local v1, filter:Landroid/content/IntentFilter;
    sget-object v2, Lcom/android/launcher/Launcher;->sWallpaperReceiver:Lcom/android/launcher/Launcher$WallpaperIntentReceiver;

    invoke-virtual {v0, v2, v1}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1321
    .end local v0           #application:Landroid/app/Application;
    .end local v1           #filter:Landroid/content/IntentFilter;
    :goto_1b
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1322
    .restart local v1       #filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1323
    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1324
    const-string v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1325
    iget-object v2, p0, Lcom/android/launcher/Launcher;->mApplicationsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/android/launcher/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1326
    return-void

    .line 1318
    .end local v1           #filter:Landroid/content/IntentFilter;
    :cond_37
    sget-object v2, Lcom/android/launcher/Launcher;->sWallpaperReceiver:Lcom/android/launcher/Launcher$WallpaperIntentReceiver;

    invoke-virtual {v2, p0}, Lcom/android/launcher/Launcher$WallpaperIntentReceiver;->setLauncher(Lcom/android/launcher/Launcher;)V

    goto :goto_1b
.end method

.method private removeShortcutsForPackage(Ljava/lang/String;)V
    .registers 3
    .parameter "packageName"

    .prologue
    .line 1096
    if-eqz p1, :cond_d

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_d

    .line 1097
    iget-object v0, p0, Lcom/android/launcher/Launcher;->mWorkspace:Lcom/android/launcher/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher/Workspace;->removeShortcutsForPackage(Ljava/lang/String;)V

    .line 1099
    :cond_d
    return-void
.end method

.method private restoreState(Landroid/os/Bundle;)V
    .registers 12
    .parameter "savedState"

    .prologue
    const/4 v9, 0x1

    const/4 v7, -0x1

    .line 524
    if-nez p1, :cond_5

    .line 556
    :cond_4
    :goto_4
    return-void

    .line 528
    :cond_5
    const-string v6, "launcher.current_screen"

    invoke-virtual {p1, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 529
    .local v2, currentScreen:I
    if-le v2, v7, :cond_12

    .line 530
    iget-object v6, p0, Lcom/android/launcher/Launcher;->mWorkspace:Lcom/android/launcher/Workspace;

    invoke-virtual {v6, v2}, Lcom/android/launcher/Workspace;->setCurrentScreen(I)V

    .line 533
    :cond_12
    const-string v6, "launcher.add_screen"

    invoke-virtual {p1, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 534
    .local v1, addScreen:I
    if-le v1, v7, :cond_5e

    .line 535
    new-instance v6, Lcom/android/launcher/CellLayout$CellInfo;

    invoke-direct {v6}, Lcom/android/launcher/CellLayout$CellInfo;-><init>()V

    iput-object v6, p0, Lcom/android/launcher/Launcher;->mAddItemCellInfo:Lcom/android/launcher/CellLayout$CellInfo;

    .line 536
    iget-object v0, p0, Lcom/android/launcher/Launcher;->mAddItemCellInfo:Lcom/android/launcher/CellLayout$CellInfo;

    .line 537
    .local v0, addItemCellInfo:Lcom/android/launcher/CellLayout$CellInfo;
    iput-boolean v9, v0, Lcom/android/launcher/CellLayout$CellInfo;->valid:Z

    .line 538
    iput v1, v0, Lcom/android/launcher/CellLayout$CellInfo;->screen:I

    .line 539
    const-string v6, "launcher.add_cellX"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v0, Lcom/android/launcher/CellLayout$CellInfo;->cellX:I

    .line 540
    const-string v6, "launcher.add_cellY"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v0, Lcom/android/launcher/CellLayout$CellInfo;->cellY:I

    .line 541
    const-string v6, "launcher.add_spanX"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v0, Lcom/android/launcher/CellLayout$CellInfo;->spanX:I

    .line 542
    const-string v6, "launcher.add_spanY"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v0, Lcom/android/launcher/CellLayout$CellInfo;->spanY:I

    .line 543
    const-string v6, "launcher.add_occupied_cells"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v6

    const-string v7, "launcher.add_countX"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    const-string v8, "launcher.add_countY"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v0, v6, v7, v8}, Lcom/android/launcher/CellLayout$CellInfo;->findVacantCellsFromOccupied([ZII)V

    .line 547
    iput-boolean v9, p0, Lcom/android/launcher/Launcher;->mRestoring:Z

    .line 550
    .end local v0           #addItemCellInfo:Lcom/android/launcher/CellLayout$CellInfo;
    :cond_5e
    const-string v6, "launcher.rename_folder"

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 551
    .local v5, renameFolder:Z
    if-eqz v5, :cond_4

    .line 552
    const-string v6, "launcher.rename_folder_id"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 553
    .local v3, id:J
    sget-object v6, Lcom/android/launcher/Launcher;->sModel:Lcom/android/launcher/LauncherModel;

    invoke-virtual {v6, p0, v3, v4}, Lcom/android/launcher/LauncherModel;->getFolderById(Landroid/content/Context;J)Lcom/android/launcher/FolderInfo;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher/Launcher;->mFolderInfo:Lcom/android/launcher/FolderInfo;

    .line 554
    iput-boolean v9, p0, Lcom/android/launcher/Launcher;->mRestoring:Z

    goto :goto_4
.end method

.method static setScreen(I)V
    .registers 3
    .parameter "screen"

    .prologue
    .line 361
    sget-object v0, Lcom/android/launcher/Launcher;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 362
    :try_start_3
    sput p0, Lcom/android/launcher/Launcher;->sScreen:I

    .line 363
    monitor-exit v0

    .line 364
    return-void

    .line 363
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method private setWallpaperDimension()V
    .registers 9

    .prologue
    .line 374
    const-string v6, "wallpaper"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 375
    .local v0, binder:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/app/IWallpaperService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperService;

    move-result-object v4

    .line 377
    .local v4, wallpaperService:Landroid/app/IWallpaperService;
    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 378
    .local v1, display:Landroid/view/Display;
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v6

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v7

    if-ge v6, v7, :cond_32

    const/4 v6, 0x1

    move v3, v6

    .line 380
    .local v3, isPortrait:Z
    :goto_1e
    if-eqz v3, :cond_35

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v6

    move v5, v6

    .line 381
    .local v5, width:I
    :goto_25
    if-eqz v3, :cond_3b

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v6

    move v2, v6

    .line 383
    .local v2, height:I
    :goto_2c
    mul-int/lit8 v6, v5, 0x2

    :try_start_2e
    invoke-interface {v4, v6, v2}, Landroid/app/IWallpaperService;->setDimensionHints(II)V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_31} :catch_41

    .line 387
    :goto_31
    return-void

    .line 378
    .end local v2           #height:I
    .end local v3           #isPortrait:Z
    .end local v5           #width:I
    :cond_32
    const/4 v6, 0x0

    move v3, v6

    goto :goto_1e

    .line 380
    .restart local v3       #isPortrait:Z
    :cond_35
    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v6

    move v5, v6

    goto :goto_25

    .line 381
    .restart local v5       #width:I
    :cond_3b
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v6

    move v2, v6

    goto :goto_2c

    .line 384
    .restart local v2       #height:I
    :catch_41
    move-exception v6

    goto :goto_31
.end method

.method private setupViews()V
    .registers 9

    .prologue
    .line 562
    const v6, 0x7f060005

    invoke-virtual {p0, v6}, Lcom/android/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher/DragLayer;

    iput-object v6, p0, Lcom/android/launcher/Launcher;->mDragLayer:Lcom/android/launcher/DragLayer;

    .line 563
    iget-object v1, p0, Lcom/android/launcher/Launcher;->mDragLayer:Lcom/android/launcher/DragLayer;

    .line 565
    .local v1, dragLayer:Lcom/android/launcher/DragLayer;
    const v6, 0x7f060006

    invoke-virtual {v1, v6}, Lcom/android/launcher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher/Workspace;

    iput-object v6, p0, Lcom/android/launcher/Launcher;->mWorkspace:Lcom/android/launcher/Workspace;

    .line 566
    iget-object v5, p0, Lcom/android/launcher/Launcher;->mWorkspace:Lcom/android/launcher/Workspace;

    .line 568
    .local v5, workspace:Lcom/android/launcher/Workspace;
    const v6, 0x7f06000a

    invoke-virtual {v1, v6}, Lcom/android/launcher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/SlidingDrawer;

    iput-object v6, p0, Lcom/android/launcher/Launcher;->mDrawer:Landroid/widget/SlidingDrawer;

    .line 569
    iget-object v2, p0, Lcom/android/launcher/Launcher;->mDrawer:Landroid/widget/SlidingDrawer;

    .line 571
    .local v2, drawer:Landroid/widget/SlidingDrawer;
    invoke-virtual {v2}, Landroid/widget/SlidingDrawer;->getContent()Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher/AllAppsGridView;

    iput-object v6, p0, Lcom/android/launcher/Launcher;->mAllAppsGrid:Lcom/android/launcher/AllAppsGridView;

    .line 572
    iget-object v4, p0, Lcom/android/launcher/Launcher;->mAllAppsGrid:Lcom/android/launcher/AllAppsGridView;

    .line 574
    .local v4, grid:Lcom/android/launcher/AllAppsGridView;
    const v6, 0x7f06000d

    invoke-virtual {v1, v6}, Lcom/android/launcher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/DeleteZone;

    .line 576
    .local v0, deleteZone:Lcom/android/launcher/DeleteZone;
    const v6, 0x7f06000b

    invoke-virtual {v2, v6}, Landroid/widget/SlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher/HandleView;

    iput-object v6, p0, Lcom/android/launcher/Launcher;->mHandleView:Lcom/android/launcher/HandleView;

    .line 577
    iget-object v6, p0, Lcom/android/launcher/Launcher;->mHandleView:Lcom/android/launcher/HandleView;

    invoke-virtual {v6, p0}, Lcom/android/launcher/HandleView;->setLauncher(Lcom/android/launcher/Launcher;)V

    .line 578
    iget-object v6, p0, Lcom/android/launcher/Launcher;->mHandleView:Lcom/android/launcher/HandleView;

    invoke-virtual {v6}, Lcom/android/launcher/HandleView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/TransitionDrawable;

    iput-object v6, p0, Lcom/android/launcher/Launcher;->mHandleIcon:Landroid/graphics/drawable/TransitionDrawable;

    .line 579
    iget-object v6, p0, Lcom/android/launcher/Launcher;->mHandleIcon:Landroid/graphics/drawable/TransitionDrawable;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    .line 581
    invoke-virtual {v2}, Landroid/widget/SlidingDrawer;->lock()V

    .line 582
    new-instance v3, Lcom/android/launcher/Launcher$DrawerManager;

    const/4 v6, 0x0

    invoke-direct {v3, p0, v6}, Lcom/android/launcher/Launcher$DrawerManager;-><init>(Lcom/android/launcher/Launcher;Lcom/android/launcher/Launcher$1;)V

    .line 583
    .local v3, drawerManager:Lcom/android/launcher/Launcher$DrawerManager;
    invoke-virtual {v2, v3}, Landroid/widget/SlidingDrawer;->setOnDrawerOpenListener(Landroid/widget/SlidingDrawer$OnDrawerOpenListener;)V

    .line 584
    invoke-virtual {v2, v3}, Landroid/widget/SlidingDrawer;->setOnDrawerCloseListener(Landroid/widget/SlidingDrawer$OnDrawerCloseListener;)V

    .line 585
    invoke-virtual {v2, v3}, Landroid/widget/SlidingDrawer;->setOnDrawerScrollListener(Landroid/widget/SlidingDrawer$OnDrawerScrollListener;)V

    .line 587
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/android/launcher/AllAppsGridView;->setTextFilterEnabled(Z)V

    .line 588
    invoke-virtual {v4, v1}, Lcom/android/launcher/AllAppsGridView;->setDragger(Lcom/android/launcher/DragController;)V

    .line 589
    invoke-virtual {v4, p0}, Lcom/android/launcher/AllAppsGridView;->setLauncher(Lcom/android/launcher/Launcher;)V

    .line 591
    invoke-virtual {v5, p0}, Lcom/android/launcher/Workspace;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 592
    invoke-virtual {v5, v1}, Lcom/android/launcher/Workspace;->setDragger(Lcom/android/launcher/DragController;)V

    .line 593
    invoke-virtual {v5, p0}, Lcom/android/launcher/Workspace;->setLauncher(Lcom/android/launcher/Launcher;)V

    .line 594
    invoke-direct {p0}, Lcom/android/launcher/Launcher;->loadWallpaper()V

    .line 596
    invoke-virtual {v0, p0}, Lcom/android/launcher/DeleteZone;->setLauncher(Lcom/android/launcher/Launcher;)V

    .line 597
    invoke-virtual {v0, v1}, Lcom/android/launcher/DeleteZone;->setDragController(Lcom/android/launcher/DragLayer;)V

    .line 598
    iget-object v6, p0, Lcom/android/launcher/Launcher;->mHandleView:Lcom/android/launcher/HandleView;

    invoke-virtual {v0, v6}, Lcom/android/launcher/DeleteZone;->setHandle(Landroid/view/View;)V

    .line 600
    invoke-virtual {v1, v4}, Lcom/android/launcher/DragLayer;->setIgnoredDropTarget(Landroid/view/View;)V

    .line 601
    invoke-virtual {v1, v5}, Lcom/android/launcher/DragLayer;->setDragScoller(Lcom/android/launcher/DragScroller;)V

    .line 602
    invoke-virtual {v1, v0}, Lcom/android/launcher/DragLayer;->setDragListener(Lcom/android/launcher/DragController$DragListener;)V

    .line 603
    return-void
.end method

.method private showAddDialog(Lcom/android/launcher/CellLayout$CellInfo;)V
    .registers 3
    .parameter "cellInfo"

    .prologue
    const/4 v0, 0x1

    .line 1807
    iput-object p1, p0, Lcom/android/launcher/Launcher;->mAddItemCellInfo:Lcom/android/launcher/CellLayout$CellInfo;

    .line 1808
    iput-boolean v0, p0, Lcom/android/launcher/Launcher;->mWaitingForResult:Z

    .line 1809
    invoke-virtual {p0, v0}, Lcom/android/launcher/Launcher;->showDialog(I)V

    .line 1810
    return-void
.end method

.method private showNotifications()V
    .registers 3

    .prologue
    .line 1293
    const-string v1, "statusbar"

    invoke-virtual {p0, v1}, Lcom/android/launcher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 1294
    .local v0, statusBar:Landroid/app/StatusBarManager;
    if-eqz v0, :cond_d

    .line 1295
    invoke-virtual {v0}, Landroid/app/StatusBarManager;->expand()V

    .line 1297
    :cond_d
    return-void
.end method

.method private startLoaders()V
    .registers 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 367
    sget-object v1, Lcom/android/launcher/Launcher;->sModel:Lcom/android/launcher/LauncherModel;

    iget-boolean v2, p0, Lcom/android/launcher/Launcher;->mLocaleChanged:Z

    invoke-virtual {v1, v3, p0, v2}, Lcom/android/launcher/LauncherModel;->loadApplications(ZLcom/android/launcher/Launcher;Z)Z

    move-result v0

    .line 368
    .local v0, loadApplications:Z
    sget-object v1, Lcom/android/launcher/Launcher;->sModel:Lcom/android/launcher/LauncherModel;

    iget-boolean v2, p0, Lcom/android/launcher/Launcher;->mLocaleChanged:Z

    if-nez v2, :cond_19

    move v2, v3

    :goto_11
    iget-boolean v3, p0, Lcom/android/launcher/Launcher;->mLocaleChanged:Z

    invoke-virtual {v1, v2, p0, v3, v0}, Lcom/android/launcher/LauncherModel;->loadUserItems(ZLcom/android/launcher/Launcher;ZZ)V

    .line 370
    iput-boolean v4, p0, Lcom/android/launcher/Launcher;->mRestoring:Z

    .line 371
    return-void

    :cond_19
    move v2, v4

    .line 368
    goto :goto_11
.end method

.method private startWallpaper()V
    .registers 3

    .prologue
    .line 1300
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1301
    .local v0, pickWallpaper:Landroid/content/Intent;
    const v1, 0x7f0a0003

    invoke-virtual {p0, v1}, Lcom/android/launcher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/launcher/Launcher;->startActivity(Landroid/content/Intent;)V

    .line 1302
    return-void
.end method

.method private updateShortcutsForPackage(Ljava/lang/String;)V
    .registers 3
    .parameter "packageName"

    .prologue
    .line 1102
    if-eqz p1, :cond_d

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_d

    .line 1103
    iget-object v0, p0, Lcom/android/launcher/Launcher;->mWorkspace:Lcom/android/launcher/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher/Workspace;->updateShortcutsForPackage(Ljava/lang/String;)V

    .line 1105
    :cond_d
    return-void
.end method

.method private static writeConfiguration(Landroid/content/Context;Lcom/android/launcher/Launcher$LocaleConfiguration;)V
    .registers 7
    .parameter "context"
    .parameter "configuration"

    .prologue
    const-string v3, "launcher.preferences"

    .line 331
    const/4 v1, 0x0

    .line 333
    .local v1, out:Ljava/io/DataOutputStream;
    :try_start_3
    new-instance v2, Ljava/io/DataOutputStream;

    const-string v3, "launcher.preferences"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_47
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_f} :catch_2b
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_f} :catch_34

    .line 334
    .end local v1           #out:Ljava/io/DataOutputStream;
    .local v2, out:Ljava/io/DataOutputStream;
    :try_start_f
    iget-object v3, p1, Lcom/android/launcher/Launcher$LocaleConfiguration;->locale:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 335
    iget v3, p1, Lcom/android/launcher/Launcher$LocaleConfiguration;->mcc:I

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 336
    iget v3, p1, Lcom/android/launcher/Launcher$LocaleConfiguration;->mnc:I

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 337
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V
    :try_end_21
    .catchall {:try_start_f .. :try_end_21} :catchall_50
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_21} :catch_57
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_21} :catch_53

    .line 344
    if-eqz v2, :cond_5a

    .line 346
    :try_start_23
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_26} :catch_28

    move-object v1, v2

    .line 352
    .end local v2           #out:Ljava/io/DataOutputStream;
    .restart local v1       #out:Ljava/io/DataOutputStream;
    :cond_27
    :goto_27
    return-void

    .line 347
    .end local v1           #out:Ljava/io/DataOutputStream;
    .restart local v2       #out:Ljava/io/DataOutputStream;
    :catch_28
    move-exception v3

    move-object v1, v2

    .line 349
    .end local v2           #out:Ljava/io/DataOutputStream;
    .restart local v1       #out:Ljava/io/DataOutputStream;
    goto :goto_27

    .line 338
    :catch_2b
    move-exception v3

    .line 344
    :goto_2c
    if-eqz v1, :cond_27

    .line 346
    :try_start_2e
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_31} :catch_32

    goto :goto_27

    .line 347
    :catch_32
    move-exception v3

    goto :goto_27

    .line 340
    :catch_34
    move-exception v3

    move-object v0, v3

    .line 342
    .local v0, e:Ljava/io/IOException;
    :goto_36
    :try_start_36
    const-string v3, "launcher.preferences"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_3f
    .catchall {:try_start_36 .. :try_end_3f} :catchall_47

    .line 344
    if-eqz v1, :cond_27

    .line 346
    :try_start_41
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_44} :catch_45

    goto :goto_27

    .line 347
    :catch_45
    move-exception v3

    goto :goto_27

    .line 344
    .end local v0           #e:Ljava/io/IOException;
    :catchall_47
    move-exception v3

    :goto_48
    if-eqz v1, :cond_4d

    .line 346
    :try_start_4a
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4d} :catch_4e

    .line 349
    :cond_4d
    :goto_4d
    throw v3

    .line 347
    :catch_4e
    move-exception v4

    goto :goto_4d

    .line 344
    .end local v1           #out:Ljava/io/DataOutputStream;
    .restart local v2       #out:Ljava/io/DataOutputStream;
    :catchall_50
    move-exception v3

    move-object v1, v2

    .end local v2           #out:Ljava/io/DataOutputStream;
    .restart local v1       #out:Ljava/io/DataOutputStream;
    goto :goto_48

    .line 340
    .end local v1           #out:Ljava/io/DataOutputStream;
    .restart local v2       #out:Ljava/io/DataOutputStream;
    :catch_53
    move-exception v3

    move-object v0, v3

    move-object v1, v2

    .end local v2           #out:Ljava/io/DataOutputStream;
    .restart local v1       #out:Ljava/io/DataOutputStream;
    goto :goto_36

    .line 338
    .end local v1           #out:Ljava/io/DataOutputStream;
    .restart local v2       #out:Ljava/io/DataOutputStream;
    :catch_57
    move-exception v3

    move-object v1, v2

    .end local v2           #out:Ljava/io/DataOutputStream;
    .restart local v1       #out:Ljava/io/DataOutputStream;
    goto :goto_2c

    .end local v1           #out:Ljava/io/DataOutputStream;
    .restart local v2       #out:Ljava/io/DataOutputStream;
    :cond_5a
    move-object v1, v2

    .end local v2           #out:Ljava/io/DataOutputStream;
    .restart local v1       #out:Ljava/io/DataOutputStream;
    goto :goto_27
.end method


# virtual methods
.method addAppWidget(Landroid/content/Intent;)V
    .registers 10
    .parameter "data"

    .prologue
    const/4 v6, 0x5

    const/4 v5, -0x1

    const-string v7, "appWidgetId"

    .line 1109
    const-string v4, "appWidgetId"

    invoke-virtual {p1, v7, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1111
    .local v1, appWidgetId:I
    const-string v4, "custom_widget"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1112
    .local v2, customWidget:Ljava/lang/String;
    const-string v4, "search_widget"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 1114
    iget-object v4, p0, Lcom/android/launcher/Launcher;->mAppWidgetHost:Lcom/android/launcher/LauncherAppWidgetHost;

    invoke-virtual {v4, v1}, Lcom/android/launcher/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    .line 1116
    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->addSearch()V

    .line 1132
    :goto_20
    return-void

    .line 1118
    :cond_21
    iget-object v4, p0, Lcom/android/launcher/Launcher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v4, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    .line 1120
    .local v0, appWidget:Landroid/appwidget/AppWidgetProviderInfo;
    iget-object v4, v0, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz v4, :cond_40

    .line 1122
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.appwidget.action.APPWIDGET_CONFIGURE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1123
    .local v3, intent:Landroid/content/Intent;
    iget-object v4, v0, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1124
    const-string v4, "appWidgetId"

    invoke-virtual {v3, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1126
    invoke-virtual {p0, v3, v6}, Lcom/android/launcher/Launcher;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_20

    .line 1129
    .end local v3           #intent:Landroid/content/Intent;
    :cond_40
    invoke-virtual {p0, v6, v5, p1}, Lcom/android/launcher/Launcher;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_20
.end method

.method addFolder(Z)V
    .registers 12
    .parameter "insertAtFirst"

    .prologue
    const/4 v8, 0x1

    .line 1186
    new-instance v1, Lcom/android/launcher/UserFolderInfo;

    invoke-direct {v1}, Lcom/android/launcher/UserFolderInfo;-><init>()V

    .line 1187
    .local v1, folderInfo:Lcom/android/launcher/UserFolderInfo;
    const v0, 0x7f0a0002

    invoke-virtual {p0, v0}, Lcom/android/launcher/Launcher;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v1, Lcom/android/launcher/UserFolderInfo;->title:Ljava/lang/CharSequence;

    .line 1189
    iget-object v9, p0, Lcom/android/launcher/Launcher;->mAddItemCellInfo:Lcom/android/launcher/CellLayout$CellInfo;

    .line 1190
    .local v9, cellInfo:Lcom/android/launcher/CellLayout$CellInfo;
    iget-object v0, p0, Lcom/android/launcher/Launcher;->mWorkspace:Lcom/android/launcher/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher/Workspace;->getCurrentScreen()I

    move-result v0

    iput v0, v9, Lcom/android/launcher/CellLayout$CellInfo;->screen:I

    .line 1191
    invoke-direct {p0, v9}, Lcom/android/launcher/Launcher;->findSingleSlot(Lcom/android/launcher/CellLayout$CellInfo;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 1204
    :goto_1f
    return-void

    .line 1194
    :cond_20
    const-wide/16 v2, -0x64

    iget-object v0, p0, Lcom/android/launcher/Launcher;->mWorkspace:Lcom/android/launcher/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher/Workspace;->getCurrentScreen()I

    move-result v4

    iget v5, v9, Lcom/android/launcher/CellLayout$CellInfo;->cellX:I

    iget v6, v9, Lcom/android/launcher/CellLayout$CellInfo;->cellY:I

    const/4 v7, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/android/launcher/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher/ItemInfo;JIIIZ)V

    .line 1196
    sget-object v0, Lcom/android/launcher/Launcher;->sModel:Lcom/android/launcher/LauncherModel;

    invoke-virtual {v0, v1}, Lcom/android/launcher/LauncherModel;->addDesktopItem(Lcom/android/launcher/ItemInfo;)V

    .line 1197
    sget-object v0, Lcom/android/launcher/Launcher;->sModel:Lcom/android/launcher/LauncherModel;

    invoke-virtual {v0, v1}, Lcom/android/launcher/LauncherModel;->addFolder(Lcom/android/launcher/FolderInfo;)V

    .line 1200
    const v2, 0x7f030005

    iget-object v0, p0, Lcom/android/launcher/Launcher;->mWorkspace:Lcom/android/launcher/Workspace;

    iget-object v4, p0, Lcom/android/launcher/Launcher;->mWorkspace:Lcom/android/launcher/Workspace;

    invoke-virtual {v4}, Lcom/android/launcher/Workspace;->getCurrentScreen()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v2, p0, v0, v1}, Lcom/android/launcher/FolderIcon;->fromXml(ILcom/android/launcher/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher/UserFolderInfo;)Lcom/android/launcher/FolderIcon;

    move-result-object v3

    .line 1202
    .local v3, newFolder:Lcom/android/launcher/FolderIcon;
    iget-object v2, p0, Lcom/android/launcher/Launcher;->mWorkspace:Lcom/android/launcher/Workspace;

    iget v4, v9, Lcom/android/launcher/CellLayout$CellInfo;->cellX:I

    iget v5, v9, Lcom/android/launcher/CellLayout$CellInfo;->cellY:I

    move v6, v8

    move v7, v8

    move v8, p1

    invoke-virtual/range {v2 .. v8}, Lcom/android/launcher/Workspace;->addInCurrentScreen(Landroid/view/View;IIIIZ)V

    goto :goto_1f
.end method

.method addLiveFolder(Landroid/content/Intent;)V
    .registers 6
    .parameter "intent"

    .prologue
    .line 1175
    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a000f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1176
    .local v0, folderName:Ljava/lang/String;
    const-string v2, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1178
    .local v1, shortcutName:Ljava/lang/String;
    if-eqz v0, :cond_24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 1179
    iget-boolean v2, p0, Lcom/android/launcher/Launcher;->mDesktopLocked:Z

    if-nez v2, :cond_22

    const/4 v2, 0x1

    :goto_1e
    invoke-virtual {p0, v2}, Lcom/android/launcher/Launcher;->addFolder(Z)V

    .line 1183
    :goto_21
    return-void

    .line 1179
    :cond_22
    const/4 v2, 0x0

    goto :goto_1e

    .line 1181
    :cond_24
    const/4 v2, 0x4

    invoke-virtual {p0, p1, v2}, Lcom/android/launcher/Launcher;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_21
.end method

.method addSearch()V
    .registers 15

    .prologue
    const/4 v13, 0x1

    const/4 v7, 0x0

    .line 1135
    invoke-static {}, Lcom/android/launcher/Widget;->makeSearch()Lcom/android/launcher/Widget;

    move-result-object v1

    .line 1136
    .local v1, info:Lcom/android/launcher/Widget;
    iget-object v8, p0, Lcom/android/launcher/Launcher;->mAddItemCellInfo:Lcom/android/launcher/CellLayout$CellInfo;

    .line 1138
    .local v8, cellInfo:Lcom/android/launcher/CellLayout$CellInfo;
    iget-object v12, p0, Lcom/android/launcher/Launcher;->mCellCoordinates:[I

    .line 1139
    .local v12, xy:[I
    iget v10, v1, Lcom/android/launcher/Widget;->spanX:I

    .line 1140
    .local v10, spanX:I
    iget v11, v1, Lcom/android/launcher/Widget;->spanY:I

    .line 1142
    .local v11, spanY:I
    invoke-direct {p0, v8, v12, v10, v11}, Lcom/android/launcher/Launcher;->findSlot(Lcom/android/launcher/CellLayout$CellInfo;[III)Z

    move-result v0

    if-nez v0, :cond_15

    .line 1154
    :goto_14
    return-void

    .line 1144
    :cond_15
    sget-object v0, Lcom/android/launcher/Launcher;->sModel:Lcom/android/launcher/LauncherModel;

    invoke-virtual {v0, v1}, Lcom/android/launcher/LauncherModel;->addDesktopItem(Lcom/android/launcher/ItemInfo;)V

    .line 1145
    const-wide/16 v2, -0x64

    iget-object v0, p0, Lcom/android/launcher/Launcher;->mWorkspace:Lcom/android/launcher/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher/Workspace;->getCurrentScreen()I

    move-result v4

    aget v5, v12, v7

    aget v6, v12, v13

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/android/launcher/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher/ItemInfo;JIIIZ)V

    .line 1148
    iget-object v0, p0, Lcom/android/launcher/Launcher;->mInflater:Landroid/view/LayoutInflater;

    iget v2, v1, Lcom/android/launcher/Widget;->layoutResource:I

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 1149
    .local v3, view:Landroid/view/View;
    invoke-virtual {v3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1150
    const v0, 0x7f060017

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/launcher/Search;

    .line 1151
    .local v9, search:Lcom/android/launcher/Search;
    invoke-virtual {v9, p0}, Lcom/android/launcher/Search;->setLauncher(Lcom/android/launcher/Launcher;)V

    .line 1153
    iget-object v2, p0, Lcom/android/launcher/Launcher;->mWorkspace:Lcom/android/launcher/Workspace;

    aget v4, v12, v7

    aget v5, v12, v13

    iget v6, v1, Lcom/android/launcher/Widget;->spanX:I

    move v7, v11

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher/Workspace;->addInCurrentScreen(Landroid/view/View;IIII)V

    goto :goto_14
.end method

.method closeAllApplications()V
    .registers 2

    .prologue
    .line 1745
    iget-object v0, p0, Lcom/android/launcher/Launcher;->mDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->close()V

    .line 1746
    return-void
.end method

.method closeFolder(Lcom/android/launcher/Folder;)V
    .registers 5
    .parameter "folder"

    .prologue
    .line 1387
    invoke-virtual {p1}, Lcom/android/launcher/Folder;->getInfo()Lcom/android/launcher/FolderInfo;

    move-result-object v1

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/launcher/FolderInfo;->opened:Z

    .line 1388
    invoke-virtual {p1}, Lcom/android/launcher/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1389
    .local v0, parent:Landroid/view/ViewGroup;
    if-eqz v0, :cond_12

    .line 1390
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1392
    :cond_12
    invoke-virtual {p1}, Lcom/android/launcher/Folder;->onClose()V

    .line 1393
    return-void
.end method

.method completeAddApplication(Landroid/content/Context;Landroid/content/Intent;Lcom/android/launcher/CellLayout$CellInfo;Z)V
    .registers 7
    .parameter "context"
    .parameter "data"
    .parameter "cellInfo"
    .parameter "insertAtFirst"

    .prologue
    .line 650
    iget-object v1, p0, Lcom/android/launcher/Launcher;->mWorkspace:Lcom/android/launcher/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher/Workspace;->getCurrentScreen()I

    move-result v1

    iput v1, p3, Lcom/android/launcher/CellLayout$CellInfo;->screen:I

    .line 651
    invoke-direct {p0, p3}, Lcom/android/launcher/Launcher;->findSingleSlot(Lcom/android/launcher/CellLayout$CellInfo;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 657
    :cond_e
    :goto_e
    return-void

    .line 653
    :cond_f
    invoke-static {p1, p2}, Lcom/android/launcher/Launcher;->infoFromApplicationIntent(Landroid/content/Context;Landroid/content/Intent;)Lcom/android/launcher/ApplicationInfo;

    move-result-object v0

    .line 654
    .local v0, info:Lcom/android/launcher/ApplicationInfo;
    if-eqz v0, :cond_e

    .line 655
    iget-object v1, p0, Lcom/android/launcher/Launcher;->mWorkspace:Lcom/android/launcher/Workspace;

    invoke-virtual {v1, v0, p3, p4}, Lcom/android/launcher/Workspace;->addApplicationShortcut(Lcom/android/launcher/ApplicationInfo;Lcom/android/launcher/CellLayout$CellInfo;Z)V

    goto :goto_e
.end method

.method createShortcut(ILandroid/view/ViewGroup;Lcom/android/launcher/ApplicationInfo;)Landroid/view/View;
    .registers 8
    .parameter "layoutResId"
    .parameter "parent"
    .parameter "info"

    .prologue
    const/4 v3, 0x0

    .line 627
    iget-object v1, p0, Lcom/android/launcher/Launcher;->mInflater:Landroid/view/LayoutInflater;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 629
    .local v0, favorite:Landroid/widget/TextView;
    iget-boolean v1, p3, Lcom/android/launcher/ApplicationInfo;->filtered:Z

    if-nez v1, :cond_19

    .line 630
    iget-object v1, p3, Lcom/android/launcher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, p0}, Lcom/android/launcher/Utilities;->createIconThumbnail(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p3, Lcom/android/launcher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 631
    const/4 v1, 0x1

    iput-boolean v1, p3, Lcom/android/launcher/ApplicationInfo;->filtered:Z

    .line 634
    :cond_19
    iget-object v1, p3, Lcom/android/launcher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 635
    iget-object v1, p3, Lcom/android/launcher/ApplicationInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 636
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 637
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 639
    return-object v0
.end method

.method createShortcut(Lcom/android/launcher/ApplicationInfo;)Landroid/view/View;
    .registers 5
    .parameter "info"

    .prologue
    .line 613
    const v1, 0x7f030001

    iget-object v0, p0, Lcom/android/launcher/Launcher;->mWorkspace:Lcom/android/launcher/Workspace;

    iget-object v2, p0, Lcom/android/launcher/Launcher;->mWorkspace:Lcom/android/launcher/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher/Workspace;->getCurrentScreen()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v1, v0, p1}, Lcom/android/launcher/Launcher;->createShortcut(ILandroid/view/ViewGroup;Lcom/android/launcher/ApplicationInfo;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 4
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 1344
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_e

    .line 1345
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    packed-switch v0, :pswitch_data_2c

    .line 1359
    :cond_e
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_12
    return v0

    .line 1347
    :pswitch_13
    iget-object v0, p0, Lcom/android/launcher/Launcher;->mWorkspace:Lcom/android/launcher/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher/Workspace;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 1348
    iget-object v0, p0, Lcom/android/launcher/Launcher;->mDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 1349
    invoke-direct {p0}, Lcom/android/launcher/Launcher;->closeDrawer()V

    :goto_23
    move v0, v1

    .line 1353
    goto :goto_12

    .line 1351
    :cond_25
    invoke-direct {p0}, Lcom/android/launcher/Launcher;->closeFolder()V

    goto :goto_23

    :pswitch_29
    move v0, v1

    .line 1355
    goto :goto_12

    .line 1345
    nop

    :pswitch_data_2c
    .packed-switch 0x3
        :pswitch_29
        :pswitch_13
    .end packed-switch
.end method

.method public getAppWidgetHost()Lcom/android/launcher/LauncherAppWidgetHost;
    .registers 2

    .prologue
    .line 763
    iget-object v0, p0, Lcom/android/launcher/Launcher;->mAppWidgetHost:Lcom/android/launcher/LauncherAppWidgetHost;

    return-object v0
.end method

.method getApplicationsGrid()Landroid/widget/GridView;
    .registers 2

    .prologue
    .line 1769
    iget-object v0, p0, Lcom/android/launcher/Launcher;->mAllAppsGrid:Lcom/android/launcher/AllAppsGridView;

    return-object v0
.end method

.method getDragController()Lcom/android/launcher/DragController;
    .registers 2

    .prologue
    .line 1598
    iget-object v0, p0, Lcom/android/launcher/Launcher;->mDragLayer:Lcom/android/launcher/DragLayer;

    return-object v0
.end method

.method getDrawerHandle()Landroid/view/View;
    .registers 2

    .prologue
    .line 1749
    iget-object v0, p0, Lcom/android/launcher/Launcher;->mHandleView:Lcom/android/launcher/HandleView;

    return-object v0
.end method

.method getWorkspace()Lcom/android/launcher/Workspace;
    .registers 2

    .prologue
    .line 1765
    iget-object v0, p0, Lcom/android/launcher/Launcher;->mWorkspace:Lcom/android/launcher/Workspace;

    return-object v0
.end method

.method isDrawerDown()Z
    .registers 2

    .prologue
    .line 1753
    iget-object v0, p0, Lcom/android/launcher/Launcher;->mDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->isMoving()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/android/launcher/Launcher;->mDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->isOpened()Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method isDrawerMoving()Z
    .registers 2

    .prologue
    .line 1761
    iget-object v0, p0, Lcom/android/launcher/Launcher;->mDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->isMoving()Z

    move-result v0

    return v0
.end method

.method isDrawerUp()Z
    .registers 2

    .prologue
    .line 1757
    iget-object v0, p0, Lcom/android/launcher/Launcher;->mDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/launcher/Launcher;->mDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->isMoving()Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method isWorkspaceLocked()Z
    .registers 2

    .prologue
    .line 1704
    iget-boolean v0, p0, Lcom/android/launcher/Launcher;->mDesktopLocked:Z

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 9
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v2, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 391
    iput-boolean v3, p0, Lcom/android/launcher/Launcher;->mWaitingForResult:Z

    .line 399
    if-ne p2, v2, :cond_50

    iget-object v1, p0, Lcom/android/launcher/Launcher;->mAddItemCellInfo:Lcom/android/launcher/CellLayout$CellInfo;

    if-eqz v1, :cond_50

    .line 400
    packed-switch p1, :pswitch_data_66

    .line 431
    :cond_e
    :goto_e
    :pswitch_e
    return-void

    .line 402
    :pswitch_f
    iget-object v1, p0, Lcom/android/launcher/Launcher;->mAddItemCellInfo:Lcom/android/launcher/CellLayout$CellInfo;

    iget-boolean v2, p0, Lcom/android/launcher/Launcher;->mDesktopLocked:Z

    if-nez v2, :cond_1a

    move v2, v4

    :goto_16
    invoke-virtual {p0, p0, p3, v1, v2}, Lcom/android/launcher/Launcher;->completeAddApplication(Landroid/content/Context;Landroid/content/Intent;Lcom/android/launcher/CellLayout$CellInfo;Z)V

    goto :goto_e

    :cond_1a
    move v2, v3

    goto :goto_16

    .line 405
    :pswitch_1c
    const/4 v1, 0x6

    invoke-virtual {p0, p3, v1, v4}, Lcom/android/launcher/Launcher;->processShortcut(Landroid/content/Intent;II)V

    goto :goto_e

    .line 408
    :pswitch_21
    iget-object v1, p0, Lcom/android/launcher/Launcher;->mAddItemCellInfo:Lcom/android/launcher/CellLayout$CellInfo;

    iget-boolean v2, p0, Lcom/android/launcher/Launcher;->mDesktopLocked:Z

    if-nez v2, :cond_2c

    move v2, v4

    :goto_28
    invoke-direct {p0, p3, v1, v2}, Lcom/android/launcher/Launcher;->completeAddShortcut(Landroid/content/Intent;Lcom/android/launcher/CellLayout$CellInfo;Z)V

    goto :goto_e

    :cond_2c
    move v2, v3

    goto :goto_28

    .line 411
    :pswitch_2e
    invoke-virtual {p0, p3}, Lcom/android/launcher/Launcher;->addLiveFolder(Landroid/content/Intent;)V

    goto :goto_e

    .line 414
    :pswitch_32
    iget-object v1, p0, Lcom/android/launcher/Launcher;->mAddItemCellInfo:Lcom/android/launcher/CellLayout$CellInfo;

    iget-boolean v2, p0, Lcom/android/launcher/Launcher;->mDesktopLocked:Z

    if-nez v2, :cond_3d

    move v2, v4

    :goto_39
    invoke-direct {p0, p3, v1, v2}, Lcom/android/launcher/Launcher;->completeAddLiveFolder(Landroid/content/Intent;Lcom/android/launcher/CellLayout$CellInfo;Z)V

    goto :goto_e

    :cond_3d
    move v2, v3

    goto :goto_39

    .line 417
    :pswitch_3f
    invoke-virtual {p0, p3}, Lcom/android/launcher/Launcher;->addAppWidget(Landroid/content/Intent;)V

    goto :goto_e

    .line 420
    :pswitch_43
    iget-object v1, p0, Lcom/android/launcher/Launcher;->mAddItemCellInfo:Lcom/android/launcher/CellLayout$CellInfo;

    iget-boolean v2, p0, Lcom/android/launcher/Launcher;->mDesktopLocked:Z

    if-nez v2, :cond_4e

    move v2, v4

    :goto_4a
    invoke-direct {p0, p3, v1, v2}, Lcom/android/launcher/Launcher;->completeAddAppWidget(Landroid/content/Intent;Lcom/android/launcher/CellLayout$CellInfo;Z)V

    goto :goto_e

    :cond_4e
    move v2, v3

    goto :goto_4a

    .line 423
    :cond_50
    const/16 v1, 0x9

    if-ne p1, v1, :cond_e

    if-nez p2, :cond_e

    if-eqz p3, :cond_e

    .line 426
    const-string v1, "appWidgetId"

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 427
    .local v0, appWidgetId:I
    if-eq v0, v2, :cond_e

    .line 428
    iget-object v1, p0, Lcom/android/launcher/Launcher;->mAppWidgetHost:Lcom/android/launcher/LauncherAppWidgetHost;

    invoke-virtual {v1, v0}, Lcom/android/launcher/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    goto :goto_e

    .line 400
    :pswitch_data_66
    .packed-switch 0x1
        :pswitch_21
        :pswitch_e
        :pswitch_e
        :pswitch_32
        :pswitch_43
        :pswitch_f
        :pswitch_1c
        :pswitch_2e
        :pswitch_3f
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 1607
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 1608
    .local v1, tag:Ljava/lang/Object;
    instance-of v2, v1, Lcom/android/launcher/ApplicationInfo;

    if-eqz v2, :cond_10

    .line 1610
    check-cast v1, Lcom/android/launcher/ApplicationInfo;

    .end local v1           #tag:Ljava/lang/Object;
    iget-object v0, v1, Lcom/android/launcher/ApplicationInfo;->intent:Landroid/content/Intent;

    .line 1611
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/launcher/Launcher;->startActivitySafely(Landroid/content/Intent;)V

    .line 1615
    .end local v0           #intent:Landroid/content/Intent;
    :cond_f
    :goto_f
    return-void

    .line 1612
    .restart local v1       #tag:Ljava/lang/Object;
    :cond_10
    instance-of v2, v1, Lcom/android/launcher/FolderInfo;

    if-eqz v2, :cond_f

    .line 1613
    check-cast v1, Lcom/android/launcher/FolderInfo;

    .end local v1           #tag:Ljava/lang/Object;
    invoke-direct {p0, v1}, Lcom/android/launcher/Launcher;->handleFolderClick(Lcom/android/launcher/FolderInfo;)V

    goto :goto_f
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 239
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 240
    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/Launcher;->mInflater:Landroid/view/LayoutInflater;

    .line 242
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/Launcher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 244
    new-instance v0, Lcom/android/launcher/LauncherAppWidgetHost;

    const/16 v1, 0x400

    invoke-direct {v0, p0, v1}, Lcom/android/launcher/LauncherAppWidgetHost;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/launcher/Launcher;->mAppWidgetHost:Lcom/android/launcher/LauncherAppWidgetHost;

    .line 245
    iget-object v0, p0, Lcom/android/launcher/Launcher;->mAppWidgetHost:Lcom/android/launcher/LauncherAppWidgetHost;

    invoke-virtual {v0}, Lcom/android/launcher/LauncherAppWidgetHost;->startListening()V

    .line 251
    invoke-direct {p0}, Lcom/android/launcher/Launcher;->checkForLocaleChange()V

    .line 252
    invoke-direct {p0}, Lcom/android/launcher/Launcher;->setWallpaperDimension()V

    .line 254
    const v0, 0x7f030006

    invoke-virtual {p0, v0}, Lcom/android/launcher/Launcher;->setContentView(I)V

    .line 255
    invoke-direct {p0}, Lcom/android/launcher/Launcher;->setupViews()V

    .line 257
    invoke-direct {p0}, Lcom/android/launcher/Launcher;->registerIntentReceivers()V

    .line 258
    invoke-direct {p0}, Lcom/android/launcher/Launcher;->registerContentObservers()V

    .line 264
    iget-boolean v0, p0, Lcom/android/launcher/Launcher;->mRestoring:Z

    if-nez v0, :cond_39

    .line 265
    invoke-direct {p0}, Lcom/android/launcher/Launcher;->startLoaders()V

    .line 268
    :cond_39
    iput-object p1, p0, Lcom/android/launcher/Launcher;->mSavedState:Landroid/os/Bundle;

    .line 269
    iget-object v0, p0, Lcom/android/launcher/Launcher;->mSavedState:Landroid/os/Bundle;

    invoke-direct {p0, v0}, Lcom/android/launcher/Launcher;->restoreState(Landroid/os/Bundle;)V

    .line 272
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    .line 273
    iget-object v0, p0, Lcom/android/launcher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 274
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 4
    .parameter "id"

    .prologue
    const/4 v1, 0x0

    .line 1774
    packed-switch p1, :pswitch_data_1e

    .line 1781
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_8
    return-object v0

    .line 1776
    :pswitch_9
    new-instance v0, Lcom/android/launcher/Launcher$CreateShortcut;

    invoke-direct {v0, p0, v1}, Lcom/android/launcher/Launcher$CreateShortcut;-><init>(Lcom/android/launcher/Launcher;Lcom/android/launcher/Launcher$1;)V

    invoke-virtual {v0}, Lcom/android/launcher/Launcher$CreateShortcut;->createDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_8

    .line 1778
    :pswitch_13
    new-instance v0, Lcom/android/launcher/Launcher$RenameFolder;

    invoke-direct {v0, p0, v1}, Lcom/android/launcher/Launcher$RenameFolder;-><init>(Lcom/android/launcher/Launcher;Lcom/android/launcher/Launcher$1;)V

    invoke-virtual {v0}, Lcom/android/launcher/Launcher$RenameFolder;->createDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_8

    .line 1774
    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_9
        :pswitch_13
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 7
    .parameter "menu"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1023
    iget-boolean v1, p0, Lcom/android/launcher/Launcher;->mDesktopLocked:Z

    if-eqz v1, :cond_8

    move v1, v3

    .line 1047
    :goto_7
    return v1

    .line 1025
    :cond_8
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 1026
    const/4 v1, 0x2

    const v2, 0x7f0a001d

    invoke-interface {p1, v4, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x1080033

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    const/16 v2, 0x41

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 1029
    const/4 v1, 0x3

    const v2, 0x7f0a001e

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x108003f

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    const/16 v2, 0x57

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 1032
    const/4 v1, 0x4

    const v2, 0x7f0a001f

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x1080060

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    const/16 v2, 0x73

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 1035
    const/4 v1, 0x5

    const v2, 0x7f0a0020

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x1080191

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    const/16 v2, 0x4e

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 1039
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1040
    .local v0, settings:Landroid/content/Intent;
    const/high16 v1, 0x1020

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1043
    const/4 v1, 0x6

    const v2, 0x7f0a0022

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x1080049

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    const/16 v2, 0x50

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move v1, v4

    .line 1047
    goto :goto_7
.end method

.method onDesktopItemsLoaded(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher/ItemInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher/LauncherAppWidgetInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1407
    .local p1, shortcuts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher/ItemInfo;>;"
    .local p2, appWidgets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher/LauncherAppWidgetInfo;>;"
    iget-boolean v0, p0, Lcom/android/launcher/Launcher;->mDestroyed:Z

    if-eqz v0, :cond_c

    .line 1409
    const-string v0, "HomeLoaders"

    const-string v1, "  ------> destroyed, ignoring desktop items"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1414
    :goto_b
    return-void

    .line 1413
    :cond_c
    invoke-direct {p0, p1, p2}, Lcom/android/launcher/Launcher;->bindDesktopItems(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_b
.end method

.method public onDestroy()V
    .registers 4

    .prologue
    .line 925
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher/Launcher;->mDestroyed:Z

    .line 927
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 930
    :try_start_6
    iget-object v1, p0, Lcom/android/launcher/Launcher;->mAppWidgetHost:Lcom/android/launcher/LauncherAppWidgetHost;

    invoke-virtual {v1}, Lcom/android/launcher/LauncherAppWidgetHost;->stopListening()V
    :try_end_b
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_b} :catch_36

    .line 935
    :goto_b
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/method/TextKeyListener;->release()V

    .line 937
    iget-object v1, p0, Lcom/android/launcher/Launcher;->mAllAppsGrid:Lcom/android/launcher/AllAppsGridView;

    invoke-virtual {v1}, Lcom/android/launcher/AllAppsGridView;->clearTextFilter()V

    .line 938
    iget-object v1, p0, Lcom/android/launcher/Launcher;->mAllAppsGrid:Lcom/android/launcher/AllAppsGridView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/launcher/AllAppsGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 939
    sget-object v1, Lcom/android/launcher/Launcher;->sModel:Lcom/android/launcher/LauncherModel;

    invoke-virtual {v1}, Lcom/android/launcher/LauncherModel;->unbind()V

    .line 940
    sget-object v1, Lcom/android/launcher/Launcher;->sModel:Lcom/android/launcher/LauncherModel;

    invoke-virtual {v1}, Lcom/android/launcher/LauncherModel;->abortLoaders()V

    .line 942
    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher/Launcher;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 943
    iget-object v1, p0, Lcom/android/launcher/Launcher;->mApplicationsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/launcher/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 944
    return-void

    .line 931
    :catch_36
    move-exception v1

    move-object v0, v1

    .line 932
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v1, "Launcher"

    const-string v2, "problem while stopping AppWidgetHost during Launcher destruction"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 8
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 490
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 491
    .local v1, handled:Z
    if-nez v1, :cond_2f

    invoke-direct {p0}, Lcom/android/launcher/Launcher;->acceptFilter()Z

    move-result v2

    if-eqz v2, :cond_2f

    const/16 v2, 0x42

    if-eq p1, v2, :cond_2f

    .line 492
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher/Launcher;->mWorkspace:Lcom/android/launcher/Workspace;

    iget-object v4, p0, Lcom/android/launcher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2, v3, v4, p1, p2}, Landroid/text/method/TextKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 494
    .local v0, gotKey:Z
    if-eqz v0, :cond_2f

    iget-object v2, p0, Lcom/android/launcher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    if-eqz v2, :cond_2f

    iget-object v2, p0, Lcom/android/launcher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_2f

    .line 501
    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->onSearchRequested()Z

    move-result v2

    .line 505
    .end local v0           #gotKey:Z
    :goto_2e
    return v2

    :cond_2f
    move v2, v1

    goto :goto_2e
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 6
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1708
    iget-boolean v1, p0, Lcom/android/launcher/Launcher;->mDesktopLocked:Z

    if-eqz v1, :cond_8

    move v1, v2

    .line 1737
    :goto_7
    return v1

    .line 1712
    :cond_8
    instance-of v1, p1, Lcom/android/launcher/CellLayout;

    if-nez v1, :cond_12

    .line 1713
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/view/View;

    .line 1716
    .restart local p1
    :cond_12
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/CellLayout$CellInfo;

    .line 1719
    .local v0, cellInfo:Lcom/android/launcher/CellLayout$CellInfo;
    if-nez v0, :cond_1c

    move v1, v3

    .line 1720
    goto :goto_7

    .line 1723
    :cond_1c
    iget-object v1, p0, Lcom/android/launcher/Launcher;->mWorkspace:Lcom/android/launcher/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher/Workspace;->allowLongPress()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 1724
    iget-object v1, v0, Lcom/android/launcher/CellLayout$CellInfo;->cell:Landroid/view/View;

    if-nez v1, :cond_36

    .line 1725
    iget-boolean v1, v0, Lcom/android/launcher/CellLayout$CellInfo;->valid:Z

    if-eqz v1, :cond_34

    .line 1727
    iget-object v1, p0, Lcom/android/launcher/Launcher;->mWorkspace:Lcom/android/launcher/Workspace;

    invoke-virtual {v1, v2}, Lcom/android/launcher/Workspace;->setAllowLongPress(Z)V

    .line 1728
    invoke-direct {p0, v0}, Lcom/android/launcher/Launcher;->showAddDialog(Lcom/android/launcher/CellLayout$CellInfo;)V

    :cond_34
    :goto_34
    move v1, v3

    .line 1737
    goto :goto_7

    .line 1731
    :cond_36
    iget-object v1, v0, Lcom/android/launcher/CellLayout$CellInfo;->cell:Landroid/view/View;

    instance-of v1, v1, Lcom/android/launcher/Folder;

    if-nez v1, :cond_34

    .line 1733
    iget-object v1, p0, Lcom/android/launcher/Launcher;->mWorkspace:Lcom/android/launcher/Workspace;

    invoke-virtual {v1, v0}, Lcom/android/launcher/Workspace;->startDrag(Lcom/android/launcher/CellLayout$CellInfo;)V

    goto :goto_34
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 9
    .parameter "intent"

    .prologue
    const/high16 v6, 0x40

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 823
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 826
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_64

    .line 827
    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->closeAllPanels()V

    .line 832
    iput-boolean v5, p0, Lcom/android/launcher/Launcher;->mIsNewIntent:Z

    .line 835
    const/4 v2, 0x1

    :try_start_1d
    invoke-virtual {p0, v2}, Lcom/android/launcher/Launcher;->dismissDialog(I)V

    .line 837
    iget-object v2, p0, Lcom/android/launcher/Launcher;->mWorkspace:Lcom/android/launcher/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher/Workspace;->unlock()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_25} :catch_6b

    .line 843
    :goto_25
    const/4 v2, 0x2

    :try_start_26
    invoke-virtual {p0, v2}, Lcom/android/launcher/Launcher;->dismissDialog(I)V

    .line 845
    iget-object v2, p0, Lcom/android/launcher/Launcher;->mWorkspace:Lcom/android/launcher/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher/Workspace;->unlock()V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2e} :catch_69

    .line 850
    :goto_2e
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v2

    and-int/2addr v2, v6

    if-eq v2, v6, :cond_65

    .line 853
    iget-object v2, p0, Lcom/android/launcher/Launcher;->mWorkspace:Lcom/android/launcher/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher/Workspace;->isDefaultScreenShowing()Z

    move-result v2

    if-nez v2, :cond_42

    .line 854
    iget-object v2, p0, Lcom/android/launcher/Launcher;->mWorkspace:Lcom/android/launcher/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher/Workspace;->moveToDefaultScreen()V

    .line 857
    :cond_42
    invoke-direct {p0}, Lcom/android/launcher/Launcher;->closeDrawer()V

    .line 859
    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v1

    .line 860
    .local v1, v:Landroid/view/View;
    if-eqz v1, :cond_64

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_64

    .line 861
    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Lcom/android/launcher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 863
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 869
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v1           #v:Landroid/view/View;
    :cond_64
    :goto_64
    return-void

    .line 866
    :cond_65
    invoke-direct {p0, v4}, Lcom/android/launcher/Launcher;->closeDrawer(Z)V

    goto :goto_64

    .line 846
    :catch_69
    move-exception v2

    goto :goto_2e

    .line 838
    :catch_6b
    move-exception v2

    goto :goto_25
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 1062
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_22

    .line 1077
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_c
    return v0

    .line 1064
    :pswitch_d
    invoke-direct {p0}, Lcom/android/launcher/Launcher;->addItems()V

    move v0, v1

    .line 1065
    goto :goto_c

    .line 1067
    :pswitch_12
    invoke-direct {p0}, Lcom/android/launcher/Launcher;->startWallpaper()V

    move v0, v1

    .line 1068
    goto :goto_c

    .line 1070
    :pswitch_17
    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->onSearchRequested()Z

    move v0, v1

    .line 1071
    goto :goto_c

    .line 1073
    :pswitch_1c
    invoke-direct {p0}, Lcom/android/launcher/Launcher;->showNotifications()V

    move v0, v1

    .line 1074
    goto :goto_c

    .line 1062
    nop

    :pswitch_data_22
    .packed-switch 0x2
        :pswitch_d
        :pswitch_12
        :pswitch_17
        :pswitch_1c
    .end packed-switch
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 465
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 466
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher/Launcher;->closeDrawer(Z)V

    .line 467
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .registers 7
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 1786
    packed-switch p1, :pswitch_data_22

    .line 1798
    :cond_3
    :goto_3
    :pswitch_3
    return-void

    .line 1790
    :pswitch_4
    iget-object v2, p0, Lcom/android/launcher/Launcher;->mFolderInfo:Lcom/android/launcher/FolderInfo;

    if-eqz v2, :cond_3

    .line 1791
    const v2, 0x7f060013

    invoke-virtual {p2, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 1792
    .local v0, input:Landroid/widget/EditText;
    iget-object v2, p0, Lcom/android/launcher/Launcher;->mFolderInfo:Lcom/android/launcher/FolderInfo;

    iget-object v1, v2, Lcom/android/launcher/FolderInfo;->title:Ljava/lang/CharSequence;

    .line 1793
    .local v1, text:Ljava/lang/CharSequence;
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1794
    const/4 v2, 0x0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/EditText;->setSelection(II)V

    goto :goto_3

    .line 1786
    nop

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 5
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    .line 1052
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 1054
    iget-object v0, p0, Lcom/android/launcher/Launcher;->mWorkspace:Lcom/android/launcher/Workspace;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher/Workspace;->findAllVacantCells([Z)Lcom/android/launcher/CellLayout$CellInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/Launcher;->mMenuAddInfo:Lcom/android/launcher/CellLayout$CellInfo;

    .line 1055
    iget-object v0, p0, Lcom/android/launcher/Launcher;->mMenuAddInfo:Lcom/android/launcher/CellLayout$CellInfo;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/launcher/Launcher;->mMenuAddInfo:Lcom/android/launcher/CellLayout$CellInfo;

    iget-boolean v0, v0, Lcom/android/launcher/CellLayout$CellInfo;->valid:Z

    if-eqz v0, :cond_1c

    move v0, v2

    :goto_18
    invoke-interface {p1, v2, v0}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 1057
    return v2

    .line 1055
    :cond_1c
    const/4 v0, 0x0

    goto :goto_18
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 2
    .parameter "savedInstanceState"

    .prologue
    .line 874
    iput-object p1, p0, Lcom/android/launcher/Launcher;->mSavedInstanceState:Landroid/os/Bundle;

    .line 875
    return-void
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 435
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 437
    iget-boolean v0, p0, Lcom/android/launcher/Launcher;->mRestoring:Z

    if-eqz v0, :cond_a

    .line 438
    invoke-direct {p0}, Lcom/android/launcher/Launcher;->startLoaders()V

    .line 444
    :cond_a
    iget-boolean v0, p0, Lcom/android/launcher/Launcher;->mIsNewIntent:Z

    if-eqz v0, :cond_18

    .line 447
    iget-object v0, p0, Lcom/android/launcher/Launcher;->mWorkspace:Lcom/android/launcher/Workspace;

    new-instance v1, Lcom/android/launcher/Launcher$1;

    invoke-direct {v1, p0}, Lcom/android/launcher/Launcher$1;-><init>(Lcom/android/launcher/Launcher;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher/Workspace;->post(Ljava/lang/Runnable;)Z

    .line 460
    :cond_18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher/Launcher;->mIsNewIntent:Z

    .line 461
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 472
    iget-object v0, p0, Lcom/android/launcher/Launcher;->mBinder:Lcom/android/launcher/Launcher$DesktopBinder;

    if-eqz v0, :cond_9

    .line 473
    iget-object v0, p0, Lcom/android/launcher/Launcher;->mBinder:Lcom/android/launcher/Launcher$DesktopBinder;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher/Launcher$DesktopBinder;->mTerminate:Z

    .line 479
    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 13
    .parameter "outState"

    .prologue
    const/4 v10, 0x1

    .line 879
    const-string v8, "launcher.current_screen"

    iget-object v9, p0, Lcom/android/launcher/Launcher;->mWorkspace:Lcom/android/launcher/Workspace;

    invoke-virtual {v9}, Lcom/android/launcher/Workspace;->getCurrentScreen()I

    move-result v9

    invoke-virtual {p1, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 881
    iget-object v8, p0, Lcom/android/launcher/Launcher;->mWorkspace:Lcom/android/launcher/Workspace;

    invoke-virtual {v8}, Lcom/android/launcher/Workspace;->getOpenFolders()Ljava/util/ArrayList;

    move-result-object v2

    .line 882
    .local v2, folders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher/Folder;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_bc

    .line 883
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 884
    .local v1, count:I
    new-array v4, v1, [J

    .line 885
    .local v4, ids:[J
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1f
    if-ge v3, v1, :cond_32

    .line 886
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher/Folder;

    invoke-virtual {v8}, Lcom/android/launcher/Folder;->getInfo()Lcom/android/launcher/FolderInfo;

    move-result-object v5

    .line 887
    .local v5, info:Lcom/android/launcher/FolderInfo;
    iget-wide v8, v5, Lcom/android/launcher/FolderInfo;->id:J

    aput-wide v8, v4, v3

    .line 885
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 889
    .end local v5           #info:Lcom/android/launcher/FolderInfo;
    :cond_32
    const-string v8, "launcher.user_folder"

    invoke-virtual {p1, v8, v4}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 894
    .end local v1           #count:I
    .end local v3           #i:I
    .end local v4           #ids:[J
    :goto_37
    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getChangingConfigurations()I

    move-result v8

    if-eqz v8, :cond_c1

    move v6, v10

    .line 898
    .local v6, isConfigurationChange:Z
    :goto_3e
    iget-object v8, p0, Lcom/android/launcher/Launcher;->mDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v8}, Landroid/widget/SlidingDrawer;->isOpened()Z

    move-result v8

    if-eqz v8, :cond_4d

    if-eqz v6, :cond_4d

    .line 899
    const-string v8, "launcher.all_apps_folder"

    invoke-virtual {p1, v8, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 902
    :cond_4d
    iget-object v8, p0, Lcom/android/launcher/Launcher;->mAddItemCellInfo:Lcom/android/launcher/CellLayout$CellInfo;

    if-eqz v8, :cond_a5

    iget-object v8, p0, Lcom/android/launcher/Launcher;->mAddItemCellInfo:Lcom/android/launcher/CellLayout$CellInfo;

    iget-boolean v8, v8, Lcom/android/launcher/CellLayout$CellInfo;->valid:Z

    if-eqz v8, :cond_a5

    iget-boolean v8, p0, Lcom/android/launcher/Launcher;->mWaitingForResult:Z

    if-eqz v8, :cond_a5

    .line 903
    iget-object v0, p0, Lcom/android/launcher/Launcher;->mAddItemCellInfo:Lcom/android/launcher/CellLayout$CellInfo;

    .line 904
    .local v0, addItemCellInfo:Lcom/android/launcher/CellLayout$CellInfo;
    iget-object v8, p0, Lcom/android/launcher/Launcher;->mWorkspace:Lcom/android/launcher/Workspace;

    iget v9, v0, Lcom/android/launcher/CellLayout$CellInfo;->screen:I

    invoke-virtual {v8, v9}, Lcom/android/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/launcher/CellLayout;

    .line 906
    .local v7, layout:Lcom/android/launcher/CellLayout;
    const-string v8, "launcher.add_screen"

    iget v9, v0, Lcom/android/launcher/CellLayout$CellInfo;->screen:I

    invoke-virtual {p1, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 907
    const-string v8, "launcher.add_cellX"

    iget v9, v0, Lcom/android/launcher/CellLayout$CellInfo;->cellX:I

    invoke-virtual {p1, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 908
    const-string v8, "launcher.add_cellY"

    iget v9, v0, Lcom/android/launcher/CellLayout$CellInfo;->cellY:I

    invoke-virtual {p1, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 909
    const-string v8, "launcher.add_spanX"

    iget v9, v0, Lcom/android/launcher/CellLayout$CellInfo;->spanX:I

    invoke-virtual {p1, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 910
    const-string v8, "launcher.add_spanY"

    iget v9, v0, Lcom/android/launcher/CellLayout$CellInfo;->spanY:I

    invoke-virtual {p1, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 911
    const-string v8, "launcher.add_countX"

    invoke-virtual {v7}, Lcom/android/launcher/CellLayout;->getCountX()I

    move-result v9

    invoke-virtual {p1, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 912
    const-string v8, "launcher.add_countY"

    invoke-virtual {v7}, Lcom/android/launcher/CellLayout;->getCountY()I

    move-result v9

    invoke-virtual {p1, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 913
    const-string v8, "launcher.add_occupied_cells"

    invoke-virtual {v7}, Lcom/android/launcher/CellLayout;->getOccupiedCells()[Z

    move-result-object v9

    invoke-virtual {p1, v8, v9}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 917
    .end local v0           #addItemCellInfo:Lcom/android/launcher/CellLayout$CellInfo;
    .end local v7           #layout:Lcom/android/launcher/CellLayout;
    :cond_a5
    iget-object v8, p0, Lcom/android/launcher/Launcher;->mFolderInfo:Lcom/android/launcher/FolderInfo;

    if-eqz v8, :cond_bb

    iget-boolean v8, p0, Lcom/android/launcher/Launcher;->mWaitingForResult:Z

    if-eqz v8, :cond_bb

    .line 918
    const-string v8, "launcher.rename_folder"

    invoke-virtual {p1, v8, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 919
    const-string v8, "launcher.rename_folder_id"

    iget-object v9, p0, Lcom/android/launcher/Launcher;->mFolderInfo:Lcom/android/launcher/FolderInfo;

    iget-wide v9, v9, Lcom/android/launcher/FolderInfo;->id:J

    invoke-virtual {p1, v8, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 921
    :cond_bb
    return-void

    .line 891
    .end local v6           #isConfigurationChange:Z
    :cond_bc
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    goto/16 :goto_37

    .line 894
    :cond_c1
    const/4 v8, 0x0

    move v6, v8

    goto/16 :goto_3e
.end method

.method public onSearchRequested()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1087
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0, v2, v1}, Lcom/android/launcher/Launcher;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 1088
    return v1
.end method

.method processShortcut(Landroid/content/Intent;II)V
    .registers 10
    .parameter "intent"
    .parameter "requestCodeApplication"
    .parameter "requestCodeShortcut"

    .prologue
    .line 1158
    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a000c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1159
    .local v0, applicationName:Ljava/lang/String;
    const-string v4, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1161
    .local v3, shortcutName:Ljava/lang/String;
    if-eqz v0, :cond_36

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 1162
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    const/4 v5, 0x0

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1163
    .local v1, mainIntent:Landroid/content/Intent;
    const-string v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1165
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.PICK_ACTIVITY"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1166
    .local v2, pickIntent:Landroid/content/Intent;
    const-string v4, "android.intent.extra.INTENT"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1167
    invoke-virtual {p0, v2, p2}, Lcom/android/launcher/Launcher;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1171
    .end local v1           #mainIntent:Landroid/content/Intent;
    .end local v2           #pickIntent:Landroid/content/Intent;
    :goto_35
    return-void

    .line 1169
    :cond_36
    invoke-virtual {p0, p1, p3}, Lcom/android/launcher/Launcher;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_35
.end method

.method showRenameDialog(Lcom/android/launcher/FolderInfo;)V
    .registers 3
    .parameter "info"

    .prologue
    .line 1801
    iput-object p1, p0, Lcom/android/launcher/Launcher;->mFolderInfo:Lcom/android/launcher/FolderInfo;

    .line 1802
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher/Launcher;->mWaitingForResult:Z

    .line 1803
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/launcher/Launcher;->showDialog(I)V

    .line 1804
    return-void
.end method

.method showSearchDialog(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .registers 12
    .parameter "initialQuery"
    .parameter "selectInitialQuery"
    .parameter "appSearchData"
    .parameter "globalSearch"

    .prologue
    .line 978
    if-nez p1, :cond_9

    .line 980
    invoke-direct {p0}, Lcom/android/launcher/Launcher;->getTypedText()Ljava/lang/String;

    move-result-object p1

    .line 981
    invoke-direct {p0}, Lcom/android/launcher/Launcher;->clearTypedText()V

    .line 983
    :cond_9
    if-nez p3, :cond_17

    .line 984
    new-instance p3, Landroid/os/Bundle;

    .end local p3
    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 985
    .restart local p3
    const-string v1, "source"

    const-string v2, "launcher-search"

    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 988
    :cond_17
    const-string v1, "search"

    invoke-virtual {p0, v1}, Lcom/android/launcher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    .line 991
    .local v0, searchManager:Landroid/app/SearchManager;
    iget-object v1, p0, Lcom/android/launcher/Launcher;->mWorkspace:Lcom/android/launcher/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher/Workspace;->findSearchWidgetOnCurrentScreen()Lcom/android/launcher/Search;

    move-result-object v6

    .line 992
    .local v6, searchWidget:Lcom/android/launcher/Search;
    if-eqz v6, :cond_2f

    .line 995
    new-instance v1, Lcom/android/launcher/Launcher$2;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher/Launcher$2;-><init>(Lcom/android/launcher/Launcher;Landroid/app/SearchManager;)V

    invoke-virtual {v0, v1}, Landroid/app/SearchManager;->setOnCancelListener(Landroid/app/SearchManager$OnCancelListener;)V

    .line 1003
    :cond_2f
    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/app/SearchManager;->startSearch(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;Z)V

    .line 1005
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .registers 4
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    .line 948
    if-ltz p2, :cond_5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher/Launcher;->mWaitingForResult:Z

    .line 949
    :cond_5
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 950
    return-void
.end method

.method startActivitySafely(Landroid/content/Intent;)V
    .registers 6
    .parameter "intent"

    .prologue
    const v3, 0x7f0a0006

    const/4 v2, 0x0

    .line 1618
    const/high16 v1, 0x1000

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1620
    :try_start_9
    invoke-virtual {p0, p1}, Lcom/android/launcher/Launcher;->startActivity(Landroid/content/Intent;)V
    :try_end_c
    .catch Landroid/content/ActivityNotFoundException; {:try_start_9 .. :try_end_c} :catch_d
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_c} :catch_16

    .line 1629
    :goto_c
    return-void

    .line 1621
    :catch_d
    move-exception v0

    .line 1622
    .local v0, e:Landroid/content/ActivityNotFoundException;
    invoke-static {p0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_c

    .line 1623
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :catch_16
    move-exception v0

    .line 1624
    .local v0, e:Ljava/lang/SecurityException;
    invoke-static {p0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1625
    const-string v1, "Launcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Launcher does not have the permission to launch "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Make sure to create a MAIN intent-filter for the corresponding activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "or use the exported attribute for this activity."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .registers 7
    .parameter "initialQuery"
    .parameter "selectInitialQuery"
    .parameter "appSearchData"
    .parameter "globalSearch"

    .prologue
    .line 956
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/launcher/Launcher;->closeDrawer(Z)V

    .line 960
    iget-object v1, p0, Lcom/android/launcher/Launcher;->mWorkspace:Lcom/android/launcher/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher/Workspace;->findSearchWidgetOnCurrentScreen()Lcom/android/launcher/Search;

    move-result-object v0

    .line 961
    .local v0, searchWidget:Lcom/android/launcher/Search;
    if-nez v0, :cond_10

    .line 962
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/launcher/Launcher;->showSearchDialog(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 968
    :goto_f
    return-void

    .line 964
    :cond_10
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/launcher/Search;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 966
    invoke-direct {p0}, Lcom/android/launcher/Launcher;->getTypedText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher/Search;->setQuery(Ljava/lang/String;)V

    goto :goto_f
.end method

.method stopSearch()V
    .registers 4

    .prologue
    .line 1012
    const-string v2, "search"

    invoke-virtual {p0, v2}, Lcom/android/launcher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    .line 1013
    .local v0, searchManager:Landroid/app/SearchManager;
    invoke-virtual {v0}, Landroid/app/SearchManager;->stopSearch()V

    .line 1015
    iget-object v2, p0, Lcom/android/launcher/Launcher;->mWorkspace:Lcom/android/launcher/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher/Workspace;->findSearchWidgetOnCurrentScreen()Lcom/android/launcher/Search;

    move-result-object v1

    .line 1016
    .local v1, searchWidget:Lcom/android/launcher/Search;
    if-eqz v1, :cond_17

    .line 1017
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/launcher/Search;->stopSearch(Z)V

    .line 1019
    :cond_17
    return-void
.end method
