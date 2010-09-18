.class public final Lcom/lge/homecube/Launcher;
.super Landroid/app/Activity;
.source "Launcher.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/lge/homecube/DragSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/homecube/Launcher$AppsAdapter;,
        Lcom/lge/homecube/Launcher$CharThemeSelector;,
        Lcom/lge/homecube/Launcher$LgThemeSelector;,
        Lcom/lge/homecube/Launcher$DeleteYesNo;,
        Lcom/lge/homecube/Launcher$RenameDeleteSelector;,
        Lcom/lge/homecube/Launcher$ResetGroup;,
        Lcom/lge/homecube/Launcher$AddGroup;,
        Lcom/lge/homecube/Launcher$AllAppsRenameFolder;,
        Lcom/lge/homecube/Launcher$ItemsLoader;,
        Lcom/lge/homecube/Launcher$DesktopBinder;,
        Lcom/lge/homecube/Launcher$DrawerManager;,
        Lcom/lge/homecube/Launcher$WallpaperIntentReceiver;,
        Lcom/lge/homecube/Launcher$AppWidgetResetObserver;,
        Lcom/lge/homecube/Launcher$FavoritesChangeObserver;,
        Lcom/lge/homecube/Launcher$ApplicationsIntentReceiver;,
        Lcom/lge/homecube/Launcher$CreateShortcut;,
        Lcom/lge/homecube/Launcher$RenameFolder;
    }
.end annotation


# static fields
.field static final APPWIDGET_HOST_ID:I = 0x401

.field private static final AllApps_ADDGROUP_PREFER_NAME:Ljava/lang/String; = "added_group"

.field private static final AllApps_GROUP_NAME:Ljava/lang/String; = "group_name"

.field private static final AllApps_RENAMETITLEID_PREFER_NAME:Ljava/lang/String; = "rename_title_id"

.field private static final AllApps_RENAMETITLE_PREFER_NAME:Ljava/lang/String; = "rename_title"

.field private static final CHARACTER_THEME:Z = true

.field private static final CommunicationGrid:I = 0x1

.field private static final DEBUG_USER_INTERFACE:Z = false

.field static final DEFAULT_SCREN:I = 0x1

.field private static final DEFAULT_THEME:Z = false

.field private static final DIALOG_ADD_GROUP:I = 0xb

.field private static final DIALOG_CHAR_THEME_SELECTOR:I = 0x10

.field private static final DIALOG_CREATE_SHORTCUT:I = 0x1

.field private static final DIALOG_DELETE_YESNO:I = 0xe

.field private static final DIALOG_LG_THEME_SELECTOR:I = 0xf

.field private static final DIALOG_RENAME_DELETE_SELECTOR:I = 0xd

.field static final DIALOG_RENAME_FOLDER:I = 0x2

.field private static final DIALOG_RENAME_FOLDER_ALLAPPS:I = 0xa

.field private static final DIALOG_RESET_GROUP:I = 0xc

.field private static final DIALOG_SET_THEME:I = 0x3

.field private static final DownloadsGrid:I = 0x5

.field static final EXTRA_CUSTOM_WIDGET:Ljava/lang/String; = "custom_widget"

.field static final EXTRA_SHORTCUT_DUPLICATE:Ljava/lang/String; = "duplicate"

.field private static final GoogleGrid:I = 0x4

.field private static final Group1Grid:I = 0x6

.field private static final Group2Grid:I = 0x7

.field private static final Group3Grid:I = 0x8

.field private static final Group4Grid:I = 0x9

.field private static final Group5Grid:I = 0xa

.field private static final Group6Grid:I = 0xb

.field private static final KEY_LOCALE:Ljava/lang/String; = "locale"

.field private static final KEY_MCC:Ljava/lang/String; = "mcc"

.field private static final KEY_MNC:Ljava/lang/String; = "mnc"

.field static final LOGD:Z = false

.field static final LOG_TAG:Ljava/lang/String; = "CubeHome"

.field private static final MAX_GROUP_NAME_LENGTH:I = 0x1e

.field private static final MENU_ADD:I = 0x2

.field private static final MENU_ADD_GROUP:I = 0x8

.field private static final MENU_CHAR_THEME:I = 0xb

.field private static final MENU_GROUP_ADD:I = 0x1

.field private static final MENU_LG_THEME:I = 0xa

.field private static final MENU_NOTIFICATIONS:I = 0x6

.field private static final MENU_RESET_GROUP:I = 0x9

.field private static final MENU_SEARCH:I = 0x5

.field private static final MENU_SETTINGS:I = 0x7

.field private static final MENU_SET_THEME:I = 0x4

.field private static final MENU_WALLPAPER_SETTINGS:I = 0x3

.field private static final MultimediaGrid:I = 0x2

.field static final NUMBER_CELLS_X:I = 0x4

.field static final NUMBER_CELLS_Y:I = 0x4

.field private static final OperatorGrid:I = 0x0

.field private static final PREFERENCES:Ljava/lang/String; = "launcher"

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

.field private static final RESTRICTED_INPUT_INTENT_ACTION:Ljava/lang/String; = "com.android.inputmethod.xim.RESTRICTED_INPUT"

.field private static final RESTRICTED_INPUT_INTENT_EXTRA:Ljava/lang/String; = "OPEN_CHANGED"

.field private static final RESTRICTED_INPUT_INTENT_FLAG:I = 0x2

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

.field private static final THEME_PREFER_NAME:Ljava/lang/String; = "homecube_theme"

.field private static final UtilitiesGrid:I = 0x3

.field private static final WALLPAPER_SCREENS_SPAN:I = 0x2

.field private static mContentViewLandscape:Landroid/view/View;

.field private static mContentViewPortrait:Landroid/view/View;

.field public static final mOpCode:Ljava/lang/String;

.field private static final sLock:Ljava/lang/Object;

.field private static final sModel:Lcom/lge/homecube/LauncherModel;

.field private static sScreen:I

.field private static sWallpaper:Landroid/graphics/Bitmap;

.field private static sWallpaperReceiver:Lcom/lge/homecube/Launcher$WallpaperIntentReceiver;


# instance fields
.field private NumofAddedGroup:I

.field public RenameTitle:Ljava/lang/CharSequence;

.field public RenameTitleId:I

.field private commuication_Grid:Lcom/lge/homecube/AllAppsGridView;

.field private downloads_Grid:Lcom/lge/homecube/AllAppsGridView;

.field private google_Grid:Lcom/lge/homecube/AllAppsGridView;

.field private group1_Grid:Lcom/lge/homecube/AllAppsGridView;

.field private group2_Grid:Lcom/lge/homecube/AllAppsGridView;

.field private group3_Grid:Lcom/lge/homecube/AllAppsGridView;

.field private group4_Grid:Lcom/lge/homecube/AllAppsGridView;

.field private group5_Grid:Lcom/lge/homecube/AllAppsGridView;

.field private group6_Grid:Lcom/lge/homecube/AllAppsGridView;

.field private lastVisitedGroupView:Lcom/lge/homecube/AllAppsGridView;

.field private lastVistedViewViewIndex:I

.field private mAddItemCellInfo:Lcom/lge/homecube/CellLayout$CellInfo;

.field public mAddToHomeScreen:Lcom/lge/homecube/AddToHomeScreen;

.field private mAllAppComponentname:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field public mAllAppsUtilities:Lcom/lge/homecube/AllAppsUtilities;

.field private mAppWidgetHost:Lcom/lge/homecube/LauncherAppWidgetHost;

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private final mAppWidgetResetObserver:Landroid/database/ContentObserver;

.field public mApplicationsAdapter:Lcom/lge/homecube/ApplicationsAdapter;

.field private final mApplicationsReceiver:Landroid/content/BroadcastReceiver;

.field private mBinder:Lcom/lge/homecube/Launcher$DesktopBinder;

.field private mBottomButton1:Landroid/widget/ImageView;

.field private mBottomButton2:Landroid/widget/ImageView;

.field private mBottomButton3:Landroid/widget/ImageView;

.field private mBottomButton4:Landroid/widget/ImageView;

.field public mBubbleTextView:Lcom/lge/homecube/BubbleTextView;

.field private final mCellCoordinates:[I

.field public mColumnNum:I

.field private mCommunicationGridHeight:I

.field private mCommunicationGridTop:I

.field public mCommunicationItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/homecube/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCommunicationList:Lcom/lge/homecube/Launcher$AppsAdapter;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDefaultAppComponentname:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

.field private mDesktopLocked:Z

.field private mDestroyed:Z

.field private mDownloadsGridHeight:I

.field private mDownloadsGridTop:I

.field public mDownloadsItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/homecube/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDownloadsList:Lcom/lge/homecube/Launcher$AppsAdapter;

.field private mDragLayer:Lcom/lge/homecube/DragLayer;

.field public mDraggedItemGrid:I

.field public mDraggedItemIndex:I

.field private mDragger:Lcom/lge/homecube/DragController;

.field public mDrawer:Landroid/widget/SlidingDrawer;

.field public mDropItemGrid:I

.field public mDropItemIndex:I

.field private mFolderInfo:Lcom/lge/homecube/FolderInfo;

.field private mFrameLayout:Landroid/widget/FrameLayout;

.field private mGoogleGridHeight:I

.field private mGoogleGridTop:I

.field public mGoogleItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/homecube/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mGoogleList:Lcom/lge/homecube/Launcher$AppsAdapter;

.field public mGotoIdleIcon:Landroid/widget/ImageView;

.field public mGotoIdleString:Landroid/widget/TextView;

.field private mGroup1GridHeight:I

.field private mGroup1GridTop:I

.field public mGroup1Items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/homecube/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mGroup1List:Lcom/lge/homecube/Launcher$AppsAdapter;

.field private mGroup2GridHeight:I

.field private mGroup2GridTop:I

.field public mGroup2Items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/homecube/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mGroup2List:Lcom/lge/homecube/Launcher$AppsAdapter;

.field private mGroup3GridHeight:I

.field private mGroup3GridTop:I

.field public mGroup3Items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/homecube/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mGroup3List:Lcom/lge/homecube/Launcher$AppsAdapter;

.field private mGroup4GridHeight:I

.field private mGroup4GridTop:I

.field public mGroup4Items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/homecube/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mGroup4List:Lcom/lge/homecube/Launcher$AppsAdapter;

.field private mGroup5GridHeight:I

.field private mGroup5GridTop:I

.field public mGroup5Items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/homecube/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mGroup5List:Lcom/lge/homecube/Launcher$AppsAdapter;

.field private mGroup6GridHeight:I

.field private mGroup6GridTop:I

.field public mGroup6Items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/homecube/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mGroup6List:Lcom/lge/homecube/Launcher$AppsAdapter;

.field private mHandleIcon:Landroid/graphics/drawable/TransitionDrawable;

.field private mHandleView:Lcom/lge/homecube/HandleView;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsMainGridUp:Z

.field private mIsNewIntent:Z

.field public mIsRotate:Z

.field private mItemsLoader:Lcom/lge/homecube/Launcher$ItemsLoader;

.field public mLauncherLayout:Landroid/widget/AbsoluteLayout;

.field private mLocaleChanged:Z

.field private mMenuAddInfo:Lcom/lge/homecube/CellLayout$CellInfo;

.field public mMenuTextView:Lcom/lge/homecube/MenuTextView;

.field private mMultimediaGridHeight:I

.field private mMultimediaGridTop:I

.field public mMultimediaItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/homecube/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mMultimediaList:Lcom/lge/homecube/Launcher$AppsAdapter;

.field private final mObserver:Landroid/database/ContentObserver;

.field private mOperatorGridHeight:I

.field private mOperatorGridTop:I

.field public mOperatorItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/homecube/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mOperatorList:Lcom/lge/homecube/Launcher$AppsAdapter;

.field public mRelativeLayout:Landroid/widget/RelativeLayout;

.field private mRestoring:Z

.field public mReuseData:Ljava/lang/Object;

.field private mSavedInstanceState:Landroid/os/Bundle;

.field private mSavedState:Landroid/os/Bundle;

.field public mScrollView:Landroid/widget/ScrollView;

.field mThemeStateReady:Z

.field mThmemState:Z

.field public mTitleCommunication:Landroid/widget/TextView;

.field public mTitleDownloads:Landroid/widget/TextView;

.field public mTitleGoogle:Landroid/widget/TextView;

.field public mTitleGroup1:Landroid/widget/TextView;

.field public mTitleGroup2:Landroid/widget/TextView;

.field public mTitleGroup3:Landroid/widget/TextView;

.field public mTitleGroup4:Landroid/widget/TextView;

.field public mTitleGroup5:Landroid/widget/TextView;

.field public mTitleGroup6:Landroid/widget/TextView;

.field public mTitleMultimedia:Landroid/widget/TextView;

.field public mTitleOperator:Landroid/widget/TextView;

.field public mTitleUtilities:Landroid/widget/TextView;

.field private mUtilitiesGridHeight:I

.field private mUtilitiesGridTop:I

.field public mUtilitiesItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/homecube/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mUtilitiesList:Lcom/lge/homecube/Launcher$AppsAdapter;

.field private mView:Landroid/view/View;

.field private mWaitingForResult:Z

.field private mWorkspace:Lcom/lge/homecube/Workspace;

.field private multimedia_Grid:Lcom/lge/homecube/AllAppsGridView;

.field private operator_Grid:Lcom/lge/homecube/AllAppsGridView;

.field private utilities_Grid:Lcom/lge/homecube/AllAppsGridView;

.field private visibility:[Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 217
    new-instance v0, Lcom/lge/homecube/LauncherModel;

    invoke-direct {v0}, Lcom/lge/homecube/LauncherModel;-><init>()V

    sput-object v0, Lcom/lge/homecube/Launcher;->sModel:Lcom/lge/homecube/LauncherModel;

    .line 221
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/lge/homecube/Launcher;->sLock:Ljava/lang/Object;

    .line 222
    const/4 v0, 0x1

    sput v0, Lcom/lge/homecube/Launcher;->sScreen:I

    .line 381
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getOperatorCode()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/homecube/Launcher;->mOpCode:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 128
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 226
    new-instance v0, Lcom/lge/homecube/Launcher$ApplicationsIntentReceiver;

    invoke-direct {v0, p0, v2}, Lcom/lge/homecube/Launcher$ApplicationsIntentReceiver;-><init>(Lcom/lge/homecube/Launcher;Lcom/lge/homecube/Launcher$1;)V

    iput-object v0, p0, Lcom/lge/homecube/Launcher;->mApplicationsReceiver:Landroid/content/BroadcastReceiver;

    .line 227
    new-instance v0, Lcom/lge/homecube/Launcher$FavoritesChangeObserver;

    invoke-direct {v0, p0}, Lcom/lge/homecube/Launcher$FavoritesChangeObserver;-><init>(Lcom/lge/homecube/Launcher;)V

    iput-object v0, p0, Lcom/lge/homecube/Launcher;->mObserver:Landroid/database/ContentObserver;

    .line 228
    new-instance v0, Lcom/lge/homecube/Launcher$AppWidgetResetObserver;

    invoke-direct {v0, p0}, Lcom/lge/homecube/Launcher$AppWidgetResetObserver;-><init>(Lcom/lge/homecube/Launcher;)V

    iput-object v0, p0, Lcom/lge/homecube/Launcher;->mAppWidgetResetObserver:Landroid/database/ContentObserver;

    .line 250
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/lge/homecube/Launcher;->mCellCoordinates:[I

    .line 260
    iput-object v2, p0, Lcom/lge/homecube/Launcher;->lastVisitedGroupView:Lcom/lge/homecube/AllAppsGridView;

    .line 261
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/homecube/Launcher;->lastVistedViewViewIndex:I

    .line 269
    iput-boolean v1, p0, Lcom/lge/homecube/Launcher;->mIsMainGridUp:Z

    .line 297
    new-instance v0, Lcom/lge/homecube/AllAppsUtilities;

    invoke-direct {v0}, Lcom/lge/homecube/AllAppsUtilities;-><init>()V

    iput-object v0, p0, Lcom/lge/homecube/Launcher;->mAllAppsUtilities:Lcom/lge/homecube/AllAppsUtilities;

    .line 303
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/homecube/Launcher;->mOperatorItems:Ljava/util/ArrayList;

    .line 304
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/homecube/Launcher;->mCommunicationItems:Ljava/util/ArrayList;

    .line 305
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/homecube/Launcher;->mMultimediaItems:Ljava/util/ArrayList;

    .line 306
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/homecube/Launcher;->mUtilitiesItems:Ljava/util/ArrayList;

    .line 307
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/homecube/Launcher;->mGoogleItems:Ljava/util/ArrayList;

    .line 308
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/homecube/Launcher;->mDownloadsItems:Ljava/util/ArrayList;

    .line 309
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/homecube/Launcher;->mGroup1Items:Ljava/util/ArrayList;

    .line 310
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/homecube/Launcher;->mGroup2Items:Ljava/util/ArrayList;

    .line 311
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/homecube/Launcher;->mGroup3Items:Ljava/util/ArrayList;

    .line 312
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/homecube/Launcher;->mGroup4Items:Ljava/util/ArrayList;

    .line 313
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/homecube/Launcher;->mGroup5Items:Ljava/util/ArrayList;

    .line 314
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/homecube/Launcher;->mGroup6Items:Ljava/util/ArrayList;

    .line 351
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/homecube/Launcher;->mDefaultAppComponentname:Ljava/util/ArrayList;

    .line 352
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/homecube/Launcher;->mAllAppComponentname:Ljava/util/ArrayList;

    .line 361
    const/4 v0, 0x6

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/lge/homecube/Launcher;->visibility:[Z

    .line 364
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/homecube/Launcher;->mDesktopLocked:Z

    .line 367
    iput-object v2, p0, Lcom/lge/homecube/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    .line 382
    iput-boolean v1, p0, Lcom/lge/homecube/Launcher;->mIsRotate:Z

    .line 6544
    iput-boolean v1, p0, Lcom/lge/homecube/Launcher;->mThemeStateReady:Z

    return-void
.end method

.method private acceptFilter()Z
    .registers 3

    .prologue
    .line 742
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/lge/homecube/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 744
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

.method static synthetic access$100(Lcom/lge/homecube/Launcher;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/lge/homecube/Launcher;->mIsMainGridUp:Z

    return v0
.end method

.method static synthetic access$102(Lcom/lge/homecube/Launcher;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    iput-boolean p1, p0, Lcom/lge/homecube/Launcher;->mIsMainGridUp:Z

    return p1
.end method

.method static synthetic access$1302(Lcom/lge/homecube/Launcher;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    iput-boolean p1, p0, Lcom/lge/homecube/Launcher;->mWaitingForResult:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/lge/homecube/Launcher;)Lcom/lge/homecube/FolderInfo;
    .registers 2
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->mFolderInfo:Lcom/lge/homecube/FolderInfo;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/lge/homecube/Launcher;Lcom/lge/homecube/FolderInfo;)Lcom/lge/homecube/FolderInfo;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    iput-object p1, p0, Lcom/lge/homecube/Launcher;->mFolderInfo:Lcom/lge/homecube/FolderInfo;

    return-object p1
.end method

.method static synthetic access$1700()Lcom/lge/homecube/LauncherModel;
    .registers 1

    .prologue
    .line 128
    sget-object v0, Lcom/lge/homecube/Launcher;->sModel:Lcom/lge/homecube/LauncherModel;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/lge/homecube/Launcher;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/lge/homecube/Launcher;->mDesktopLocked:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/lge/homecube/Launcher;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    iput-boolean p1, p0, Lcom/lge/homecube/Launcher;->mDesktopLocked:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/lge/homecube/Launcher;)Lcom/lge/homecube/Workspace;
    .registers 2
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->mWorkspace:Lcom/lge/homecube/Workspace;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/lge/homecube/Launcher;)Lcom/lge/homecube/LauncherAppWidgetHost;
    .registers 2
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->mAppWidgetHost:Lcom/lge/homecube/LauncherAppWidgetHost;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/lge/homecube/Launcher;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/lge/homecube/Launcher;->startWallpaper()V

    return-void
.end method

.method static synthetic access$2200(Lcom/lge/homecube/Launcher;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/lge/homecube/Launcher;->removeShortcutsForPackage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/lge/homecube/Launcher;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/lge/homecube/Launcher;->updateShortcutsForPackage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/lge/homecube/Launcher;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/lge/homecube/Launcher;->onFavoritesChanged()V

    return-void
.end method

.method static synthetic access$2500(Lcom/lge/homecube/Launcher;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/lge/homecube/Launcher;->onAppWidgetReset()V

    return-void
.end method

.method static synthetic access$2602(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 1
    .parameter "x0"

    .prologue
    .line 128
    sput-object p0, Lcom/lge/homecube/Launcher;->sWallpaper:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/lge/homecube/Launcher;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/lge/homecube/Launcher;->sendOpenChangeToIME(Z)V

    return-void
.end method

.method static synthetic access$2800(Lcom/lge/homecube/Launcher;)Landroid/graphics/drawable/TransitionDrawable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->mHandleIcon:Landroid/graphics/drawable/TransitionDrawable;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/lge/homecube/Launcher;)Landroid/widget/FrameLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->mFrameLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/lge/homecube/Launcher;)Lcom/lge/homecube/DragLayer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->mDragLayer:Lcom/lge/homecube/DragLayer;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/lge/homecube/Launcher;)Lcom/lge/homecube/AllAppsGridView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->lastVisitedGroupView:Lcom/lge/homecube/AllAppsGridView;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/lge/homecube/Launcher;Lcom/lge/homecube/AllAppsGridView;)Lcom/lge/homecube/AllAppsGridView;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    iput-object p1, p0, Lcom/lge/homecube/Launcher;->lastVisitedGroupView:Lcom/lge/homecube/AllAppsGridView;

    return-object p1
.end method

.method static synthetic access$3202(Lcom/lge/homecube/Launcher;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    iput p1, p0, Lcom/lge/homecube/Launcher;->lastVistedViewViewIndex:I

    return p1
.end method

.method static synthetic access$3300(Lcom/lge/homecube/Launcher;Lcom/lge/homecube/Launcher$DesktopBinder;Ljava/util/ArrayList;II)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 128
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lge/homecube/Launcher;->bindItems(Lcom/lge/homecube/Launcher$DesktopBinder;Ljava/util/ArrayList;II)V

    return-void
.end method

.method static synthetic access$3400(Lcom/lge/homecube/Launcher;Lcom/lge/homecube/Launcher$DesktopBinder;Ljava/util/LinkedList;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 128
    invoke-direct {p0, p1, p2}, Lcom/lge/homecube/Launcher;->bindAppWidgets(Lcom/lge/homecube/Launcher$DesktopBinder;Ljava/util/LinkedList;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/lge/homecube/Launcher;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->mDefaultAppComponentname:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/lge/homecube/Launcher;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/lge/homecube/Launcher;->mLocaleChanged:Z

    return v0
.end method

.method static synthetic access$3602(Lcom/lge/homecube/Launcher;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    iput-boolean p1, p0, Lcom/lge/homecube/Launcher;->mLocaleChanged:Z

    return p1
.end method

.method static synthetic access$3900(Lcom/lge/homecube/Launcher;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/lge/homecube/Launcher;->loadRenameTitleIdPreferences()I

    move-result v0

    return v0
.end method

.method static synthetic access$4200(Lcom/lge/homecube/Launcher;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 128
    iget v0, p0, Lcom/lge/homecube/Launcher;->NumofAddedGroup:I

    return v0
.end method

.method static synthetic access$4202(Lcom/lge/homecube/Launcher;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    iput p1, p0, Lcom/lge/homecube/Launcher;->NumofAddedGroup:I

    return p1
.end method

.method static synthetic access$4300(Lcom/lge/homecube/Launcher;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/lge/homecube/Launcher;->loadGroupNumPreferences()I

    move-result v0

    return v0
.end method

.method static synthetic access$4500(Lcom/lge/homecube/Launcher;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/lge/homecube/Launcher;->loadRenameTitlePreferences()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4900(Lcom/lge/homecube/Launcher;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/lge/homecube/Launcher;->bindDesktopItems()V

    return-void
.end method

.method static synthetic access$5000(Lcom/lge/homecube/Launcher;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/lge/homecube/Launcher;->startLoaders()V

    return-void
.end method

.method static addItemToAllAppsDatabase(Landroid/content/Context;Lcom/lge/homecube/ApplicationInfo;IIZ)Landroid/graphics/Bitmap;
    .registers 11
    .parameter "context"
    .parameter "item"
    .parameter "position"
    .parameter "group_id"
    .parameter "notify"

    .prologue
    .line 6203
    iput p2, p1, Lcom/lge/homecube/ApplicationInfo;->position:I

    .line 6204
    iput p3, p1, Lcom/lge/homecube/ApplicationInfo;->group_id:I

    .line 6205
    iput p2, p1, Lcom/lge/homecube/ApplicationInfo;->origin_position:I

    .line 6206
    iput p3, p1, Lcom/lge/homecube/ApplicationInfo;->origin_group_id:I

    .line 6208
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 6209
    .local v3, values:Landroid/content/ContentValues;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 6211
    .local v1, cr:Landroid/content/ContentResolver;
    invoke-virtual {p1, v3}, Lcom/lge/homecube/ApplicationInfo;->onAddToAllAppsDatabase(Landroid/content/ContentValues;)V

    .line 6213
    iget-object v4, p1, Lcom/lge/homecube/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-static {v4, p0}, Lcom/lge/homecube/AllAppsUtilities;->createIconThumbnail(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/lge/homecube/FastBitmapDrawable;

    invoke-virtual {p0}, Lcom/lge/homecube/FastBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 6217
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz p4, :cond_3d

    sget-object v4, Lcom/lge/homecube/AllAppsSettings$AllApps;->CONTENT_URI:Landroid/net/Uri;

    :goto_24
    invoke-virtual {v1, v4, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 6220
    .local v2, result:Landroid/net/Uri;
    if-eqz v2, :cond_3c

    .line 6221
    invoke-virtual {v2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    int-to-long v4, v4

    iput-wide v4, p1, Lcom/lge/homecube/ApplicationInfo;->id:J

    .line 6224
    :cond_3c
    return-object v0

    .line 6217
    .end local v2           #result:Landroid/net/Uri;
    :cond_3d
    sget-object v4, Lcom/lge/homecube/AllAppsSettings$AllApps;->CONTENT_URI_NO_NOTIFICATION:Landroid/net/Uri;

    goto :goto_24
.end method

.method private addItems()V
    .registers 3

    .prologue
    .line 2590
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->mWorkspace:Lcom/lge/homecube/Workspace;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/homecube/Workspace;->findAllVacantCells([Z)Lcom/lge/homecube/CellLayout$CellInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/homecube/Launcher;->mMenuAddInfo:Lcom/lge/homecube/CellLayout$CellInfo;

    .line 2591
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->mMenuAddInfo:Lcom/lge/homecube/CellLayout$CellInfo;

    invoke-direct {p0, v0}, Lcom/lge/homecube/Launcher;->showAddDialog(Lcom/lge/homecube/CellLayout$CellInfo;)V

    .line 2592
    return-void
.end method

.method static addLiveFolder(Landroid/content/Context;Landroid/content/Intent;Lcom/lge/homecube/CellLayout$CellInfo;Z)Lcom/lge/homecube/LiveFolderInfo;
    .registers 16
    .parameter "context"
    .parameter "data"
    .parameter "cellInfo"
    .parameter "notify"

    .prologue
    .line 2730
    const-string v1, "android.intent.extra.livefolder.BASE_INTENT"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 2731
    .local v1, baseIntent:Landroid/content/Intent;
    const-string v2, "android.intent.extra.livefolder.NAME"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2733
    .local v7, name:Ljava/lang/String;
    const/4 v5, 0x0

    .line 2734
    .local v5, icon:Landroid/graphics/drawable/Drawable;
    const/4 v4, 0x0

    .line 2735
    .local v4, filtered:Z
    const/4 v2, 0x0

    .line 2737
    .local v2, iconResource:Landroid/content/Intent$ShortcutIconResource;
    const-string v3, "android.intent.extra.livefolder.ICON"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    .line 2738
    .local v3, extra:Landroid/os/Parcelable;
    if-eqz v3, :cond_9a

    instance-of v6, v3, Landroid/content/Intent$ShortcutIconResource;

    if-eqz v6, :cond_9a

    .line 2740
    :try_start_1d
    move-object v0, v3

    check-cast v0, Landroid/content/Intent$ShortcutIconResource;

    move-object v6, v0
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_21} :catch_77

    .line 2741
    .end local v2           #iconResource:Landroid/content/Intent$ShortcutIconResource;
    .local v6, iconResource:Landroid/content/Intent$ShortcutIconResource;
    :try_start_21
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 2742
    .local v2, packageManager:Landroid/content/pm/PackageManager;
    iget-object v8, v6, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v8}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v8

    .line 2744
    .local v8, resources:Landroid/content/res/Resources;
    iget-object v2, v6, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    .end local v2           #packageManager:Landroid/content/pm/PackageManager;
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v2, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 2745
    .local v2, id:I
    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_36} :catch_96

    move-result-object v2

    .end local v5           #icon:Landroid/graphics/drawable/Drawable;
    .local v2, icon:Landroid/graphics/drawable/Drawable;
    move-object v5, v6

    .line 2751
    .end local v3           #extra:Landroid/os/Parcelable;
    .end local v6           #iconResource:Landroid/content/Intent$ShortcutIconResource;
    .end local v8           #resources:Landroid/content/res/Resources;
    .local v5, iconResource:Landroid/content/Intent$ShortcutIconResource;
    :goto_38
    if-nez v2, :cond_98

    .line 2752
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .end local v2           #icon:Landroid/graphics/drawable/Drawable;
    const v3, 0x7f02002f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .restart local v2       #icon:Landroid/graphics/drawable/Drawable;
    move-object v3, v2

    .line 2755
    .end local v2           #icon:Landroid/graphics/drawable/Drawable;
    .local v3, icon:Landroid/graphics/drawable/Drawable;
    :goto_46
    new-instance v2, Lcom/lge/homecube/LiveFolderInfo;

    invoke-direct {v2}, Lcom/lge/homecube/LiveFolderInfo;-><init>()V

    .line 2756
    .local v2, info:Lcom/lge/homecube/LiveFolderInfo;
    iput-object v3, v2, Lcom/lge/homecube/LiveFolderInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 2757
    iput-boolean v4, v2, Lcom/lge/homecube/LiveFolderInfo;->filtered:Z

    .line 2758
    iput-object v7, v2, Lcom/lge/homecube/LiveFolderInfo;->title:Ljava/lang/CharSequence;

    .line 2759
    iput-object v5, v2, Lcom/lge/homecube/LiveFolderInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    .line 2760
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .end local v3           #icon:Landroid/graphics/drawable/Drawable;
    iput-object v3, v2, Lcom/lge/homecube/LiveFolderInfo;->uri:Landroid/net/Uri;

    .line 2761
    iput-object v1, v2, Lcom/lge/homecube/LiveFolderInfo;->baseIntent:Landroid/content/Intent;

    .line 2762
    const-string v1, "android.intent.extra.livefolder.DISPLAY_MODE"

    .end local v1           #baseIntent:Landroid/content/Intent;
    const/4 v3, 0x1

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .end local p1
    iput p1, v2, Lcom/lge/homecube/LiveFolderInfo;->displayMode:I

    .line 2765
    const-wide/16 v3, -0x64

    iget v5, p2, Lcom/lge/homecube/CellLayout$CellInfo;->screen:I

    .end local v5           #iconResource:Landroid/content/Intent$ShortcutIconResource;
    iget v6, p2, Lcom/lge/homecube/CellLayout$CellInfo;->cellX:I

    iget v7, p2, Lcom/lge/homecube/CellLayout$CellInfo;->cellY:I

    .end local v7           #name:Ljava/lang/String;
    move-object v1, p0

    move v8, p3

    invoke-static/range {v1 .. v8}, Lcom/lge/homecube/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/lge/homecube/ItemInfo;JIIIZ)V

    .line 2767
    sget-object p0, Lcom/lge/homecube/Launcher;->sModel:Lcom/lge/homecube/LauncherModel;

    .end local p0
    invoke-virtual {p0, v2}, Lcom/lge/homecube/LauncherModel;->addFolder(Lcom/lge/homecube/FolderInfo;)V

    .line 2769
    return-object v2

    .line 2746
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

    .line 2747
    .local v2, e:Ljava/lang/Exception;
    :goto_7b
    const-string v2, "CubeHome"

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

    .line 2746
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

.method static addShortcut(Landroid/content/Context;Landroid/content/Intent;Lcom/lge/homecube/CellLayout$CellInfo;Z)Lcom/lge/homecube/ApplicationInfo;
    .registers 16
    .parameter "context"
    .parameter "data"
    .parameter "cellInfo"
    .parameter "notify"

    .prologue
    .line 2149
    const-string v1, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    .line 2150
    .local v6, intent:Landroid/content/Intent;
    const-string v1, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2151
    .local v7, name:Ljava/lang/String;
    const-string v1, "android.intent.extra.shortcut.ICON"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 2153
    .local v1, bitmap:Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    .line 2154
    .local v4, icon:Landroid/graphics/drawable/Drawable;
    const/4 v3, 0x0

    .line 2155
    .local v3, filtered:Z
    const/4 v2, 0x0

    .line 2156
    .local v2, customIcon:Z
    const/4 v5, 0x0

    .line 2158
    .local v5, iconResource:Landroid/content/Intent$ShortcutIconResource;
    if-eqz v1, :cond_52

    .line 2159
    new-instance v2, Lcom/lge/homecube/FastBitmapDrawable;

    .end local v2           #customIcon:Z
    invoke-static {v1, p0}, Lcom/lge/homecube/Utilities;->createBitmapThumbnail(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p1

    .end local p1
    invoke-direct {v2, p1}, Lcom/lge/homecube/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 2160
    .end local v4           #icon:Landroid/graphics/drawable/Drawable;
    .local v2, icon:Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x1

    .line 2161
    .end local v3           #filtered:Z
    .local v1, filtered:Z
    const/4 p1, 0x1

    .local p1, customIcon:Z
    move-object v4, v5

    .line 2178
    .end local v5           #iconResource:Landroid/content/Intent$ShortcutIconResource;
    .local v4, iconResource:Landroid/content/Intent$ShortcutIconResource;
    :goto_28
    if-nez v2, :cond_9c

    .line 2179
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .end local v2           #icon:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .restart local v2       #icon:Landroid/graphics/drawable/Drawable;
    move-object v3, v2

    .line 2182
    .end local v2           #icon:Landroid/graphics/drawable/Drawable;
    .local v3, icon:Landroid/graphics/drawable/Drawable;
    :goto_33
    new-instance v2, Lcom/lge/homecube/ApplicationInfo;

    invoke-direct {v2}, Lcom/lge/homecube/ApplicationInfo;-><init>()V

    .line 2183
    .local v2, info:Lcom/lge/homecube/ApplicationInfo;
    iput-object v3, v2, Lcom/lge/homecube/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 2184
    iput-boolean v1, v2, Lcom/lge/homecube/ApplicationInfo;->filtered:Z

    .line 2185
    iput-object v7, v2, Lcom/lge/homecube/ApplicationInfo;->title:Ljava/lang/CharSequence;

    .line 2186
    iput-object v6, v2, Lcom/lge/homecube/ApplicationInfo;->intent:Landroid/content/Intent;

    .line 2187
    iput-boolean p1, v2, Lcom/lge/homecube/ApplicationInfo;->customIcon:Z

    .line 2188
    iput-object v4, v2, Lcom/lge/homecube/ApplicationInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    .line 2190
    const-wide/16 v3, -0x64

    iget v5, p2, Lcom/lge/homecube/CellLayout$CellInfo;->screen:I

    .end local v3           #icon:Landroid/graphics/drawable/Drawable;
    iget v6, p2, Lcom/lge/homecube/CellLayout$CellInfo;->cellX:I

    .end local v6           #intent:Landroid/content/Intent;
    iget v7, p2, Lcom/lge/homecube/CellLayout$CellInfo;->cellY:I

    .end local v7           #name:Ljava/lang/String;
    move-object v1, p0

    move v8, p3

    invoke-static/range {v1 .. v8}, Lcom/lge/homecube/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/lge/homecube/ItemInfo;JIIIZ)V

    .line 2192
    .end local v1           #filtered:Z
    return-object v2

    .line 2163
    .local v1, bitmap:Landroid/graphics/Bitmap;
    .local v2, customIcon:Z
    .local v3, filtered:Z
    .local v4, icon:Landroid/graphics/drawable/Drawable;
    .restart local v5       #iconResource:Landroid/content/Intent$ShortcutIconResource;
    .restart local v6       #intent:Landroid/content/Intent;
    .restart local v7       #name:Ljava/lang/String;
    .local p1, data:Landroid/content/Intent;
    :cond_52
    const-string v1, "android.intent.extra.shortcut.ICON_RESOURCE"

    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .line 2164
    .local v1, extra:Landroid/os/Parcelable;
    if-eqz v1, :cond_97

    instance-of p1, v1, Landroid/content/Intent$ShortcutIconResource;

    .end local p1           #data:Landroid/content/Intent;
    if-eqz p1, :cond_97

    .line 2166
    :try_start_5e
    move-object v0, v1

    check-cast v0, Landroid/content/Intent$ShortcutIconResource;

    move-object v5, v0

    .line 2167
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 2168
    .local p1, packageManager:Landroid/content/pm/PackageManager;
    iget-object v8, v5, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v8}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v8

    .line 2170
    .local v8, resources:Landroid/content/res/Resources;
    iget-object p1, v5, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    .end local p1           #packageManager:Landroid/content/pm/PackageManager;
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, p1, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 2171
    .local p1, id:I
    invoke-virtual {v8, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_77} :catch_7e

    move-result-object p1

    .end local v4           #icon:Landroid/graphics/drawable/Drawable;
    .local p1, icon:Landroid/graphics/drawable/Drawable;
    move-object v4, v5

    .end local v5           #iconResource:Landroid/content/Intent$ShortcutIconResource;
    .local v4, iconResource:Landroid/content/Intent$ShortcutIconResource;
    move v1, v3

    .end local v3           #filtered:Z
    .local v1, filtered:Z
    move v11, v2

    .end local v2           #customIcon:Z
    .local v11, customIcon:Z
    move-object v2, p1

    .end local p1           #icon:Landroid/graphics/drawable/Drawable;
    .local v2, icon:Landroid/graphics/drawable/Drawable;
    move p1, v11

    .line 2174
    .end local v11           #customIcon:Z
    .local p1, customIcon:Z
    goto :goto_28

    .line 2172
    .end local v8           #resources:Landroid/content/res/Resources;
    .end local p1           #customIcon:Z
    .local v1, extra:Landroid/os/Parcelable;
    .local v2, customIcon:Z
    .restart local v3       #filtered:Z
    .local v4, icon:Landroid/graphics/drawable/Drawable;
    .restart local v5       #iconResource:Landroid/content/Intent$ShortcutIconResource;
    :catch_7e
    move-exception p1

    .line 2173
    .local p1, e:Ljava/lang/Exception;
    const-string p1, "CubeHome"

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

    :cond_97
    move p1, v2

    .end local v2           #customIcon:Z
    .local p1, customIcon:Z
    move v1, v3

    .end local v3           #filtered:Z
    .local v1, filtered:Z
    move-object v2, v4

    .end local v4           #icon:Landroid/graphics/drawable/Drawable;
    .local v2, icon:Landroid/graphics/drawable/Drawable;
    move-object v4, v5

    .end local v5           #iconResource:Landroid/content/Intent$ShortcutIconResource;
    .local v4, iconResource:Landroid/content/Intent$ShortcutIconResource;
    goto :goto_28

    :cond_9c
    move-object v3, v2

    .end local v2           #icon:Landroid/graphics/drawable/Drawable;
    .local v3, icon:Landroid/graphics/drawable/Drawable;
    goto :goto_33
.end method

.method private backgroundObjColorChange(Lcom/lge/homecube/AllAppsGridView;Ljava/util/ArrayList;III)V
    .registers 8
    .parameter "gridView"
    .parameter
    .parameter "x"
    .parameter "y"
    .parameter "groupViewIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lge/homecube/AllAppsGridView;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/homecube/ApplicationInfo;",
            ">;III)V"
        }
    .end annotation

    .prologue
    .line 5105
    .local p2, appInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/homecube/ApplicationInfo;>;"
    iget v0, p0, Lcom/lge/homecube/Launcher;->lastVistedViewViewIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_12

    iget v0, p0, Lcom/lge/homecube/Launcher;->lastVistedViewViewIndex:I

    if-eq p5, v0, :cond_12

    .line 5106
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->lastVisitedGroupView:Lcom/lge/homecube/AllAppsGridView;

    if-eqz v0, :cond_12

    .line 5107
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->lastVisitedGroupView:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v0}, Lcom/lge/homecube/AllAppsGridView;->refreshGroupViewItems()V

    .line 5110
    :cond_12
    invoke-virtual {p1, p2, p3, p4}, Lcom/lge/homecube/AllAppsGridView;->updateMoveSelecionView(Ljava/util/ArrayList;II)V

    .line 5111
    iput-object p1, p0, Lcom/lge/homecube/Launcher;->lastVisitedGroupView:Lcom/lge/homecube/AllAppsGridView;

    .line 5112
    iput p5, p0, Lcom/lge/homecube/Launcher;->lastVistedViewViewIndex:I

    .line 5113
    return-void
.end method

.method private bindAppWidgets(Lcom/lge/homecube/Launcher$DesktopBinder;Ljava/util/LinkedList;)V
    .registers 15
    .parameter "binder"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lge/homecube/Launcher$DesktopBinder;",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/lge/homecube/LauncherAppWidgetInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3093
    .local p2, appWidgets:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/lge/homecube/LauncherAppWidgetInfo;>;"
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->mWorkspace:Lcom/lge/homecube/Workspace;

    .line 3094
    .local v0, workspace:Lcom/lge/homecube/Workspace;
    iget-boolean v10, p0, Lcom/lge/homecube/Launcher;->mDesktopLocked:Z

    .line 3096
    .local v10, desktopLocked:Z
    invoke-virtual {p2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3f

    .line 3097
    invoke-virtual {p2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/lge/homecube/LauncherAppWidgetInfo;

    .line 3099
    .local v11, item:Lcom/lge/homecube/LauncherAppWidgetInfo;
    iget v8, v11, Lcom/lge/homecube/LauncherAppWidgetInfo;->appWidgetId:I

    .line 3100
    .local v8, appWidgetId:I
    iget-object v1, p0, Lcom/lge/homecube/Launcher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v1, v8}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v9

    .line 3102
    .local v9, appWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;
    iget-object v1, p0, Lcom/lge/homecube/Launcher;->mAppWidgetHost:Lcom/lge/homecube/LauncherAppWidgetHost;

    invoke-virtual {v1, p0, v8, v9}, Lcom/lge/homecube/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v1

    iput-object v1, v11, Lcom/lge/homecube/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 3109
    iget-object v1, v11, Lcom/lge/homecube/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v1, v8, v9}, Landroid/appwidget/AppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 3110
    iget-object v1, v11, Lcom/lge/homecube/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v1, v11}, Landroid/appwidget/AppWidgetHostView;->setTag(Ljava/lang/Object;)V

    .line 3112
    iget-object v1, v11, Lcom/lge/homecube/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    iget v2, v11, Lcom/lge/homecube/LauncherAppWidgetInfo;->screen:I

    iget v3, v11, Lcom/lge/homecube/LauncherAppWidgetInfo;->cellX:I

    iget v4, v11, Lcom/lge/homecube/LauncherAppWidgetInfo;->cellY:I

    iget v5, v11, Lcom/lge/homecube/LauncherAppWidgetInfo;->spanX:I

    iget v6, v11, Lcom/lge/homecube/LauncherAppWidgetInfo;->spanY:I

    if-nez v10, :cond_46

    const/4 v7, 0x1

    :goto_39
    invoke-virtual/range {v0 .. v7}, Lcom/lge/homecube/Workspace;->addInScreen(Landroid/view/View;IIIIIZ)V

    .line 3115
    invoke-virtual {v0}, Lcom/lge/homecube/Workspace;->requestLayout()V

    .line 3118
    .end local v8           #appWidgetId:I
    .end local v9           #appWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;
    .end local v11           #item:Lcom/lge/homecube/LauncherAppWidgetInfo;
    :cond_3f
    invoke-virtual {p2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_48

    .line 3125
    :goto_45
    return-void

    .line 3112
    .restart local v8       #appWidgetId:I
    .restart local v9       #appWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;
    .restart local v11       #item:Lcom/lge/homecube/LauncherAppWidgetInfo;
    :cond_46
    const/4 v7, 0x0

    goto :goto_39

    .line 3123
    .end local v8           #appWidgetId:I
    .end local v9           #appWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;
    .end local v11           #item:Lcom/lge/homecube/LauncherAppWidgetInfo;
    :cond_48
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcom/lge/homecube/Launcher$DesktopBinder;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_45
.end method

.method private bindDesktopItems()V
    .registers 9

    .prologue
    .line 2943
    sget-object v6, Lcom/lge/homecube/Launcher;->sModel:Lcom/lge/homecube/LauncherModel;

    invoke-virtual {v6}, Lcom/lge/homecube/LauncherModel;->getDesktopItems()Ljava/util/ArrayList;

    move-result-object v4

    .line 2944
    .local v4, shortcuts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/homecube/ItemInfo;>;"
    sget-object v6, Lcom/lge/homecube/Launcher;->sModel:Lcom/lge/homecube/LauncherModel;

    invoke-virtual {v6}, Lcom/lge/homecube/LauncherModel;->getDesktopAppWidgets()Ljava/util/ArrayList;

    move-result-object v0

    .line 2946
    .local v0, appWidgets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/homecube/LauncherAppWidgetInfo;>;"
    new-instance v6, Lcom/lge/homecube/ApplicationsAdapter;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/lge/homecube/ApplicationsAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v6, p0, Lcom/lge/homecube/Launcher;->mApplicationsAdapter:Lcom/lge/homecube/ApplicationsAdapter;

    .line 2947
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->mApplicationsAdapter:Lcom/lge/homecube/ApplicationsAdapter;

    invoke-virtual {v6, p0}, Lcom/lge/homecube/ApplicationsAdapter;->setLauncher(Lcom/lge/homecube/Launcher;)V

    .line 2949
    sget-object v6, Lcom/lge/homecube/Launcher;->sModel:Lcom/lge/homecube/LauncherModel;

    invoke-virtual {v6}, Lcom/lge/homecube/LauncherModel;->getApplicationsAdapter()Lcom/lge/homecube/ApplicationsAdapter;

    move-result-object v2

    .line 2950
    .local v2, drawerAdapter:Lcom/lge/homecube/ApplicationsAdapter;
    if-eqz v4, :cond_25

    if-eqz v0, :cond_25

    if-nez v2, :cond_26

    .line 2981
    :cond_25
    :goto_25
    return-void

    .line 2956
    :cond_26
    iget-object v5, p0, Lcom/lge/homecube/Launcher;->mWorkspace:Lcom/lge/homecube/Workspace;

    .line 2957
    .local v5, workspace:Lcom/lge/homecube/Workspace;
    invoke-virtual {v5}, Lcom/lge/homecube/Workspace;->getChildCount()I

    move-result v1

    .line 2958
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2d
    if-ge v3, v1, :cond_3b

    .line 2959
    invoke-virtual {v5, v3}, Lcom/lge/homecube/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 2958
    add-int/lit8 v3, v3, 0x1

    goto :goto_2d

    .line 2975
    :cond_3b
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->mBinder:Lcom/lge/homecube/Launcher$DesktopBinder;

    if-eqz v6, :cond_44

    .line 2976
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->mBinder:Lcom/lge/homecube/Launcher$DesktopBinder;

    const/4 v7, 0x1

    iput-boolean v7, v6, Lcom/lge/homecube/Launcher$DesktopBinder;->mTerminate:Z

    .line 2979
    :cond_44
    new-instance v6, Lcom/lge/homecube/Launcher$DesktopBinder;

    invoke-direct {v6, p0, v4, v0}, Lcom/lge/homecube/Launcher$DesktopBinder;-><init>(Lcom/lge/homecube/Launcher;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    iput-object v6, p0, Lcom/lge/homecube/Launcher;->mBinder:Lcom/lge/homecube/Launcher$DesktopBinder;

    .line 2980
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->mBinder:Lcom/lge/homecube/Launcher$DesktopBinder;

    invoke-virtual {v6}, Lcom/lge/homecube/Launcher$DesktopBinder;->startBindingItems()V

    goto :goto_25
.end method

.method private bindItems(Lcom/lge/homecube/Launcher$DesktopBinder;Ljava/util/ArrayList;II)V
    .registers 29
    .parameter "binder"
    .parameter
    .parameter "start"
    .parameter "count"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lge/homecube/Launcher$DesktopBinder;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/homecube/ItemInfo;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 2986
    .local p2, shortcuts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/homecube/ItemInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->mWorkspace:Lcom/lge/homecube/Workspace;

    move-object v4, v0

    .line 2987
    .local v4, workspace:Lcom/lge/homecube/Workspace;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/homecube/Launcher;->mDesktopLocked:Z

    move/from16 v16, v0

    .line 2989
    .local v16, desktopLocked:Z
    add-int/lit8 v6, p3, 0x6

    move v0, v6

    move/from16 v1, p4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v17

    .line 2990
    .local v17, end:I
    move/from16 v18, p3

    .line 2992
    .end local p3
    .local v18, i:I
    :goto_16
    move/from16 v0, v18

    move/from16 v1, v17

    if-ge v0, v1, :cond_11b

    .line 2993
    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/lge/homecube/ItemInfo;

    .line 2994
    .local v19, item:Lcom/lge/homecube/ItemInfo;
    move-object/from16 v0, v19

    iget v0, v0, Lcom/lge/homecube/ItemInfo;->itemType:I

    move v6, v0

    sparse-switch v6, :sswitch_data_164

    .line 2992
    :goto_2e
    add-int/lit8 v18, v18, 0x1

    goto :goto_16

    .line 2997
    :sswitch_31
    move-object/from16 v0, v19

    check-cast v0, Lcom/lge/homecube/ApplicationInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/lge/homecube/Launcher;->createShortcut(Lcom/lge/homecube/ApplicationInfo;)Landroid/view/View;

    move-result-object v5

    .line 2998
    .local v5, shortcut:Landroid/view/View;
    move-object/from16 v0, v19

    iget v0, v0, Lcom/lge/homecube/ItemInfo;->screen:I

    move v6, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/lge/homecube/ItemInfo;->cellX:I

    move v7, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/lge/homecube/ItemInfo;->cellY:I

    move v8, v0

    const/4 v9, 0x1

    const/4 v10, 0x1

    if-nez v16, :cond_57

    const/4 v11, 0x1

    :goto_53
    invoke-virtual/range {v4 .. v11}, Lcom/lge/homecube/Workspace;->addInScreen(Landroid/view/View;IIIIIZ)V

    goto :goto_2e

    :cond_57
    const/4 v11, 0x0

    goto :goto_53

    .line 3002
    .end local v5           #shortcut:Landroid/view/View;
    :sswitch_59
    const v6, 0x7f030007

    invoke-virtual {v4}, Lcom/lge/homecube/Workspace;->getCurrentScreen()I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/lge/homecube/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    move-object/from16 v0, v19

    check-cast v0, Lcom/lge/homecube/UserFolderInfo;

    move-object/from16 v20, v0

    move v0, v6

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Lcom/lge/homecube/FolderIcon;->fromXml(ILcom/lge/homecube/Launcher;Landroid/view/ViewGroup;Lcom/lge/homecube/UserFolderInfo;)Lcom/lge/homecube/FolderIcon;

    move-result-object v7

    .line 3005
    .local v7, newFolder:Lcom/lge/homecube/FolderIcon;
    move-object/from16 v0, v19

    iget v0, v0, Lcom/lge/homecube/ItemInfo;->screen:I

    move v8, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/lge/homecube/ItemInfo;->cellX:I

    move v9, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/lge/homecube/ItemInfo;->cellY:I

    move v10, v0

    const/4 v11, 0x1

    const/4 v12, 0x1

    if-nez v16, :cond_91

    const/4 v6, 0x1

    move v13, v6

    :goto_8c
    move-object v6, v4

    invoke-virtual/range {v6 .. v13}, Lcom/lge/homecube/Workspace;->addInScreen(Landroid/view/View;IIIIIZ)V

    goto :goto_2e

    :cond_91
    const/4 v6, 0x0

    move v13, v6

    goto :goto_8c

    .line 3009
    .end local v7           #newFolder:Lcom/lge/homecube/FolderIcon;
    :sswitch_94
    const v6, 0x7f03000a

    invoke-virtual {v4}, Lcom/lge/homecube/Workspace;->getCurrentScreen()I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/lge/homecube/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    move-object/from16 v0, v19

    check-cast v0, Lcom/lge/homecube/LiveFolderInfo;

    move-object/from16 v20, v0

    move v0, v6

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Lcom/lge/homecube/LiveFolderIcon;->fromXml(ILcom/lge/homecube/Launcher;Landroid/view/ViewGroup;Lcom/lge/homecube/LiveFolderInfo;)Lcom/lge/homecube/LiveFolderIcon;

    move-result-object v9

    .line 3013
    .local v9, newLiveFolder:Lcom/lge/homecube/FolderIcon;
    move-object/from16 v0, v19

    iget v0, v0, Lcom/lge/homecube/ItemInfo;->screen:I

    move v10, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/lge/homecube/ItemInfo;->cellX:I

    move v11, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/lge/homecube/ItemInfo;->cellY:I

    move v12, v0

    const/4 v13, 0x1

    const/4 v14, 0x1

    if-nez v16, :cond_cd

    const/4 v6, 0x1

    move v15, v6

    :goto_c7
    move-object v8, v4

    invoke-virtual/range {v8 .. v15}, Lcom/lge/homecube/Workspace;->addInScreen(Landroid/view/View;IIIIIZ)V

    goto/16 :goto_2e

    :cond_cd
    const/4 v6, 0x0

    move v15, v6

    goto :goto_c7

    .line 3017
    .end local v9           #newLiveFolder:Lcom/lge/homecube/FolderIcon;
    :sswitch_d0
    invoke-virtual {v4}, Lcom/lge/homecube/Workspace;->getCurrentScreen()I

    move-result v20

    .line 3018
    .local v20, screen:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->mInflater:Landroid/view/LayoutInflater;

    move-object v6, v0

    const v7, 0x7f030011

    move-object v0, v4

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/lge/homecube/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    const/4 v8, 0x0

    move-object v0, v6

    move v1, v7

    move-object/from16 v2, p3

    move v3, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v22

    .line 3021
    .local v22, view:Landroid/view/View;
    const v6, 0x7f050036

    move-object/from16 v0, v22

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Lcom/lge/homecube/Search;

    .line 3022
    .local v21, search:Lcom/lge/homecube/Search;
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/lge/homecube/Search;->setLauncher(Lcom/lge/homecube/Launcher;)V

    .line 3023
    move-object/from16 v0, v19

    check-cast v0, Lcom/lge/homecube/Widget;

    move-object/from16 v23, v0

    .line 3024
    .local v23, widget:Lcom/lge/homecube/Widget;
    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 3026
    if-nez v16, :cond_119

    const/4 v6, 0x1

    :goto_10e
    move-object v0, v4

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/lge/homecube/Workspace;->addWidget(Landroid/view/View;Lcom/lge/homecube/Widget;Z)V

    goto/16 :goto_2e

    :cond_119
    const/4 v6, 0x0

    goto :goto_10e

    .line 3031
    .end local v19           #item:Lcom/lge/homecube/ItemInfo;
    .end local v20           #screen:I
    .end local v21           #search:Lcom/lge/homecube/Search;
    .end local v22           #view:Landroid/view/View;
    .end local v23           #widget:Lcom/lge/homecube/Widget;
    :cond_11b
    invoke-virtual {v4}, Lcom/lge/homecube/Workspace;->requestLayout()V

    .line 3033
    const-string v6, "Homecube"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "thom21 Home.bindItems 11 end: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  count: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3035
    move/from16 v0, v17

    move/from16 v1, p4

    if-lt v0, v1, :cond_153

    .line 3036
    invoke-direct/range {p0 .. p0}, Lcom/lge/homecube/Launcher;->finishBindDesktopItems()V

    .line 3037
    invoke-virtual/range {p1 .. p1}, Lcom/lge/homecube/Launcher$DesktopBinder;->startBindingAppWidgetsWhenIdle()V

    .line 3041
    :goto_152
    return-void

    .line 3039
    :cond_153
    const/4 v6, 0x1

    move-object/from16 v0, p1

    move v1, v6

    move/from16 v2, v18

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Lcom/lge/homecube/Launcher$DesktopBinder;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    goto :goto_152

    .line 2994
    nop

    :sswitch_data_164
    .sparse-switch
        0x0 -> :sswitch_31
        0x1 -> :sswitch_31
        0x2 -> :sswitch_59
        0x3 -> :sswitch_94
        0x3e9 -> :sswitch_d0
    .end sparse-switch
.end method

.method private checkForLocaleChange()V
    .registers 16

    .prologue
    const/4 v11, 0x0

    const/4 v10, -0x1

    const-string v14, "mnc"

    const-string v13, "mcc"

    const-string v12, "locale"

    .line 495
    const-string v9, "launcher"

    invoke-virtual {p0, v9, v11}, Lcom/lge/homecube/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 496
    .local v5, preferences:Landroid/content/SharedPreferences;
    invoke-virtual {p0}, Lcom/lge/homecube/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 498
    .local v0, configuration:Landroid/content/res/Configuration;
    const-string v9, "locale"

    const/4 v9, 0x0

    invoke-interface {v5, v12, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 499
    .local v6, previousLocale:Ljava/lang/String;
    iget-object v9, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v9}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    .line 501
    .local v2, locale:Ljava/lang/String;
    const-string v9, "mcc"

    invoke-interface {v5, v13, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 502
    .local v7, previousMcc:I
    iget v3, v0, Landroid/content/res/Configuration;->mcc:I

    .line 504
    .local v3, mcc:I
    const-string v9, "mnc"

    invoke-interface {v5, v14, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 505
    .local v8, previousMnc:I
    iget v4, v0, Landroid/content/res/Configuration;->mnc:I

    .line 507
    .local v4, mnc:I
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3d

    if-ne v3, v7, :cond_3d

    if-eq v4, v8, :cond_5b

    :cond_3d
    const/4 v9, 0x1

    :goto_3e
    iput-boolean v9, p0, Lcom/lge/homecube/Launcher;->mLocaleChanged:Z

    .line 509
    iget-boolean v9, p0, Lcom/lge/homecube/Launcher;->mLocaleChanged:Z

    if-eqz v9, :cond_5a

    .line 510
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 511
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v9, "locale"

    invoke-interface {v1, v12, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 512
    const-string v9, "mcc"

    invoke-interface {v1, v13, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 513
    const-string v9, "mnc"

    invoke-interface {v1, v14, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 514
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 516
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_5a
    return-void

    :cond_5b
    move v9, v11

    .line 507
    goto :goto_3e
.end method

.method private clearTypedText()V
    .registers 3

    .prologue
    .line 2430
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 2431
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 2432
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 2433
    return-void
.end method

.method private closeDrawer()V
    .registers 2

    .prologue
    .line 2885
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/lge/homecube/Launcher;->closeDrawer(Z)V

    .line 2886
    return-void
.end method

.method private closeDrawer(Z)V
    .registers 5
    .parameter "animated"

    .prologue
    .line 2889
    const-string v0, "Homecube"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "thom21 mDrawer.isOpened() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/homecube/Launcher;->mDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v2}, Landroid/widget/SlidingDrawer;->isOpened()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mDrawer.hasFocus() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/homecube/Launcher;->mDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v2}, Landroid/widget/SlidingDrawer;->hasFocus()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2890
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->mDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_52

    .line 2891
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->mDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->close()V

    .line 2892
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->mDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_52

    .line 2893
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->mWorkspace:Lcom/lge/homecube/Workspace;

    iget-object v1, p0, Lcom/lge/homecube/Launcher;->mWorkspace:Lcom/lge/homecube/Workspace;

    invoke-virtual {v1}, Lcom/lge/homecube/Workspace;->getCurrentScreen()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lge/homecube/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 2896
    :cond_52
    return-void
.end method

.method private closeFolder()V
    .registers 3

    .prologue
    .line 2899
    iget-object v1, p0, Lcom/lge/homecube/Launcher;->mWorkspace:Lcom/lge/homecube/Workspace;

    invoke-virtual {v1}, Lcom/lge/homecube/Workspace;->getOpenFolder()Lcom/lge/homecube/Folder;

    move-result-object v0

    .line 2900
    .local v0, folder:Lcom/lge/homecube/Folder;
    if-eqz v0, :cond_b

    .line 2901
    invoke-virtual {p0, v0}, Lcom/lge/homecube/Launcher;->closeFolder(Lcom/lge/homecube/Folder;)V

    .line 2903
    :cond_b
    return-void
.end method

.method private completeAddAppWidget(Landroid/content/Intent;Lcom/lge/homecube/CellLayout$CellInfo;Z)V
    .registers 24
    .parameter "data"
    .parameter "cellInfo"
    .parameter "insertAtFirst"

    .prologue
    .line 2102
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v16

    .line 2103
    .local v16, extras:Landroid/os/Bundle;
    const-string v5, "appWidgetId"

    const/4 v6, -0x1

    move-object/from16 v0, v16

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v14

    .line 2105
    .local v14, appWidgetId:I
    const-string v5, "CubeHome"

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

    .line 2107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    move-object v5, v0

    invoke-virtual {v5, v14}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v15

    .line 2110
    .local v15, appWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->mWorkspace:Lcom/lge/homecube/Workspace;

    move-object v5, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/lge/homecube/CellLayout$CellInfo;->screen:I

    move v6, v0

    invoke-virtual {v5, v6}, Lcom/lge/homecube/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Lcom/lge/homecube/CellLayout;

    .line 2111
    .local v17, layout:Lcom/lge/homecube/CellLayout;
    iget v5, v15, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    iget v6, v15, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    move-object/from16 v0, v17

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/lge/homecube/CellLayout;->rectToCell(II)[I

    move-result-object v18

    .line 2114
    .local v18, spans:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->mCellCoordinates:[I

    move-object/from16 v19, v0

    .line 2115
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

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/lge/homecube/Launcher;->findSlot(Lcom/lge/homecube/CellLayout$CellInfo;[III)Z

    move-result v5

    if-nez v5, :cond_6b

    .line 2140
    :cond_6a
    :goto_6a
    return-void

    .line 2118
    :cond_6b
    new-instance v6, Lcom/lge/homecube/LauncherAppWidgetInfo;

    invoke-direct {v6, v14}, Lcom/lge/homecube/LauncherAppWidgetInfo;-><init>(I)V

    .line 2119
    .local v6, launcherInfo:Lcom/lge/homecube/LauncherAppWidgetInfo;
    const/4 v5, 0x0

    aget v5, v18, v5

    iput v5, v6, Lcom/lge/homecube/LauncherAppWidgetInfo;->spanX:I

    .line 2120
    const/4 v5, 0x1

    aget v5, v18, v5

    iput v5, v6, Lcom/lge/homecube/LauncherAppWidgetInfo;->spanY:I

    .line 2122
    const-wide/16 v7, -0x64

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->mWorkspace:Lcom/lge/homecube/Workspace;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/lge/homecube/Workspace;->getCurrentScreen()I

    move-result v9

    const/4 v5, 0x0

    aget v10, v19, v5

    const/4 v5, 0x1

    aget v11, v19, v5

    const/4 v12, 0x0

    move-object/from16 v5, p0

    invoke-static/range {v5 .. v12}, Lcom/lge/homecube/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/lge/homecube/ItemInfo;JIIIZ)V

    .line 2126
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/homecube/Launcher;->mRestoring:Z

    move v5, v0

    if-nez v5, :cond_ce

    .line 2127
    sget-object v5, Lcom/lge/homecube/Launcher;->sModel:Lcom/lge/homecube/LauncherModel;

    invoke-virtual {v5, v6}, Lcom/lge/homecube/LauncherModel;->addDesktopAppWidget(Lcom/lge/homecube/LauncherAppWidgetInfo;)V

    .line 2130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->mAppWidgetHost:Lcom/lge/homecube/LauncherAppWidgetHost;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p0

    move v2, v14

    move-object v3, v15

    invoke-virtual {v0, v1, v2, v3}, Lcom/lge/homecube/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v5

    iput-object v5, v6, Lcom/lge/homecube/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 2132
    iget-object v5, v6, Lcom/lge/homecube/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v5, v14, v15}, Landroid/appwidget/AppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 2133
    iget-object v5, v6, Lcom/lge/homecube/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v5, v6}, Landroid/appwidget/AppWidgetHostView;->setTag(Ljava/lang/Object;)V

    .line 2135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->mWorkspace:Lcom/lge/homecube/Workspace;

    move-object v7, v0

    iget-object v8, v6, Lcom/lge/homecube/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    const/4 v5, 0x0

    aget v9, v19, v5

    const/4 v5, 0x1

    aget v10, v19, v5

    iget v11, v6, Lcom/lge/homecube/LauncherAppWidgetInfo;->spanX:I

    iget v12, v6, Lcom/lge/homecube/LauncherAppWidgetInfo;->spanY:I

    move/from16 v13, p3

    invoke-virtual/range {v7 .. v13}, Lcom/lge/homecube/Workspace;->addInCurrentScreen(Landroid/view/View;IIIIZ)V

    goto :goto_6a

    .line 2137
    :cond_ce
    sget-object v5, Lcom/lge/homecube/Launcher;->sModel:Lcom/lge/homecube/LauncherModel;

    invoke-virtual {v5}, Lcom/lge/homecube/LauncherModel;->isDesktopLoaded()Z

    move-result v5

    if-eqz v5, :cond_6a

    .line 2138
    sget-object v5, Lcom/lge/homecube/Launcher;->sModel:Lcom/lge/homecube/LauncherModel;

    invoke-virtual {v5, v6}, Lcom/lge/homecube/LauncherModel;->addDesktopAppWidget(Lcom/lge/homecube/LauncherAppWidgetInfo;)V

    goto :goto_6a
.end method

.method private completeAddLiveFolder(Landroid/content/Intent;Lcom/lge/homecube/CellLayout$CellInfo;Z)V
    .registers 12
    .parameter "data"
    .parameter "cellInfo"
    .parameter "insertAtFirst"

    .prologue
    const/4 v4, 0x1

    .line 2711
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->mWorkspace:Lcom/lge/homecube/Workspace;

    invoke-virtual {v0}, Lcom/lge/homecube/Workspace;->getCurrentScreen()I

    move-result v0

    iput v0, p2, Lcom/lge/homecube/CellLayout$CellInfo;->screen:I

    .line 2712
    invoke-direct {p0, p2}, Lcom/lge/homecube/Launcher;->findSingleSlot(Lcom/lge/homecube/CellLayout$CellInfo;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 2725
    :cond_f
    :goto_f
    return-void

    .line 2714
    :cond_10
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/lge/homecube/Launcher;->addLiveFolder(Landroid/content/Context;Landroid/content/Intent;Lcom/lge/homecube/CellLayout$CellInfo;Z)Lcom/lge/homecube/LiveFolderInfo;

    move-result-object v7

    .line 2716
    .local v7, info:Lcom/lge/homecube/LiveFolderInfo;
    iget-boolean v0, p0, Lcom/lge/homecube/Launcher;->mRestoring:Z

    if-nez v0, :cond_3f

    .line 2717
    sget-object v0, Lcom/lge/homecube/Launcher;->sModel:Lcom/lge/homecube/LauncherModel;

    invoke-virtual {v0, v7}, Lcom/lge/homecube/LauncherModel;->addDesktopItem(Lcom/lge/homecube/ItemInfo;)V

    .line 2719
    const v2, 0x7f03000a

    iget-object v0, p0, Lcom/lge/homecube/Launcher;->mWorkspace:Lcom/lge/homecube/Workspace;

    iget-object v3, p0, Lcom/lge/homecube/Launcher;->mWorkspace:Lcom/lge/homecube/Workspace;

    invoke-virtual {v3}, Lcom/lge/homecube/Workspace;->getCurrentScreen()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/lge/homecube/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v2, p0, v0, v7}, Lcom/lge/homecube/LiveFolderIcon;->fromXml(ILcom/lge/homecube/Launcher;Landroid/view/ViewGroup;Lcom/lge/homecube/LiveFolderInfo;)Lcom/lge/homecube/LiveFolderIcon;

    move-result-object v1

    .line 2721
    .local v1, view:Landroid/view/View;
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->mWorkspace:Lcom/lge/homecube/Workspace;

    iget v2, p2, Lcom/lge/homecube/CellLayout$CellInfo;->cellX:I

    iget v3, p2, Lcom/lge/homecube/CellLayout$CellInfo;->cellY:I

    move v5, v4

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/lge/homecube/Workspace;->addInCurrentScreen(Landroid/view/View;IIIIZ)V

    goto :goto_f

    .line 2722
    .end local v1           #view:Landroid/view/View;
    :cond_3f
    sget-object v0, Lcom/lge/homecube/Launcher;->sModel:Lcom/lge/homecube/LauncherModel;

    invoke-virtual {v0}, Lcom/lge/homecube/LauncherModel;->isDesktopLoaded()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2723
    sget-object v0, Lcom/lge/homecube/Launcher;->sModel:Lcom/lge/homecube/LauncherModel;

    invoke-virtual {v0, v7}, Lcom/lge/homecube/LauncherModel;->addDesktopItem(Lcom/lge/homecube/ItemInfo;)V

    goto :goto_f
.end method

.method private completeAddShortcut(Landroid/content/Intent;Lcom/lge/homecube/CellLayout$CellInfo;Z)V
    .registers 12
    .parameter "data"
    .parameter "cellInfo"
    .parameter "insertAtFirst"

    .prologue
    const/4 v4, 0x1

    .line 2076
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->mWorkspace:Lcom/lge/homecube/Workspace;

    invoke-virtual {v0}, Lcom/lge/homecube/Workspace;->getCurrentScreen()I

    move-result v0

    iput v0, p2, Lcom/lge/homecube/CellLayout$CellInfo;->screen:I

    .line 2077
    invoke-direct {p0, p2}, Lcom/lge/homecube/Launcher;->findSingleSlot(Lcom/lge/homecube/CellLayout$CellInfo;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 2090
    :cond_f
    :goto_f
    return-void

    .line 2079
    :cond_10
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/lge/homecube/Launcher;->addShortcut(Landroid/content/Context;Landroid/content/Intent;Lcom/lge/homecube/CellLayout$CellInfo;Z)Lcom/lge/homecube/ApplicationInfo;

    move-result-object v7

    .line 2082
    .local v7, info:Lcom/lge/homecube/ApplicationInfo;
    iget-boolean v0, p0, Lcom/lge/homecube/Launcher;->mRestoring:Z

    if-nez v0, :cond_2e

    .line 2083
    sget-object v0, Lcom/lge/homecube/Launcher;->sModel:Lcom/lge/homecube/LauncherModel;

    invoke-virtual {v0, v7}, Lcom/lge/homecube/LauncherModel;->addDesktopItem(Lcom/lge/homecube/ItemInfo;)V

    .line 2085
    invoke-virtual {p0, v7}, Lcom/lge/homecube/Launcher;->createShortcut(Lcom/lge/homecube/ApplicationInfo;)Landroid/view/View;

    move-result-object v1

    .line 2086
    .local v1, view:Landroid/view/View;
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->mWorkspace:Lcom/lge/homecube/Workspace;

    iget v2, p2, Lcom/lge/homecube/CellLayout$CellInfo;->cellX:I

    iget v3, p2, Lcom/lge/homecube/CellLayout$CellInfo;->cellY:I

    move v5, v4

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/lge/homecube/Workspace;->addInCurrentScreen(Landroid/view/View;IIIIZ)V

    goto :goto_f

    .line 2087
    .end local v1           #view:Landroid/view/View;
    :cond_2e
    sget-object v0, Lcom/lge/homecube/Launcher;->sModel:Lcom/lge/homecube/LauncherModel;

    invoke-virtual {v0}, Lcom/lge/homecube/LauncherModel;->isDesktopLoaded()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2088
    sget-object v0, Lcom/lge/homecube/Launcher;->sModel:Lcom/lge/homecube/LauncherModel;

    invoke-virtual {v0, v7}, Lcom/lge/homecube/LauncherModel;->addDesktopItem(Lcom/lge/homecube/ItemInfo;)V

    goto :goto_f
.end method

.method static deleteItemFromAllAppsDatabase(Landroid/content/Context;Lcom/lge/homecube/ApplicationInfo;)V
    .registers 10
    .parameter "context"
    .parameter "item"

    .prologue
    .line 6229
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 6230
    .local v6, values:Landroid/content/ContentValues;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 6232
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 p0, 0x3

    new-array v2, p0, [Ljava/lang/String;

    .end local p0
    const/4 p0, 0x0

    const-string v1, "position"

    aput-object v1, v2, p0

    const/4 p0, 0x1

    const-string v1, "group_id"

    aput-object v1, v2, p0

    const/4 p0, 0x2

    const-string v1, "_id"

    aput-object v1, v2, p0

    .line 6233
    .local v2, QUERY_COLUMNS:[Ljava/lang/String;
    sget-object v1, Lcom/lge/homecube/AllAppsSettings$AllApps;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 6236
    .local v1, c:Landroid/database/Cursor;
    const-string p0, "position"

    invoke-interface {v1, p0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 6237
    .local v3, positionIndex:I
    const-string p0, "group_id"

    invoke-interface {v1, p0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 6238
    .local v2, group_idIndex:I
    const-string p0, "_id"

    invoke-interface {v1, p0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p0

    .line 6240
    .local p0, Id:I
    :cond_36
    :goto_36
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_6b

    .line 6242
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iget v5, p1, Lcom/lge/homecube/ApplicationInfo;->group_id:I

    if-ne v4, v5, :cond_36

    .line 6244
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iget v5, p1, Lcom/lge/homecube/ApplicationInfo;->position:I

    if-le v4, v5, :cond_36

    .line 6245
    const-string v4, "position"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/4 v7, 0x1

    sub-int/2addr v5, v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 6246
    invoke-interface {v1, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v4, v4

    const/4 v7, 0x0

    invoke-static {v4, v5, v7}, Lcom/lge/homecube/AllAppsSettings$AllApps;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-virtual {v0, v4, v6, v5, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_36

    .line 6253
    :cond_6b
    iget-wide p0, p1, Lcom/lge/homecube/ApplicationInfo;->id:J

    .end local p0           #Id:I
    const/4 v1, 0x0

    invoke-static {p0, p1, v1}, Lcom/lge/homecube/AllAppsSettings$AllApps;->getContentUri(JZ)Landroid/net/Uri;

    .end local v1           #c:Landroid/database/Cursor;
    move-result-object p0

    const/4 p1, 0x0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 6254
    .end local p1
    return-void
.end method

.method private findSingleSlot(Lcom/lge/homecube/CellLayout$CellInfo;)Z
    .registers 6
    .parameter "cellInfo"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2773
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 2774
    .local v0, xy:[I
    invoke-direct {p0, p1, v0, v2, v2}, Lcom/lge/homecube/Launcher;->findSlot(Lcom/lge/homecube/CellLayout$CellInfo;[III)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 2775
    aget v1, v0, v3

    iput v1, p1, Lcom/lge/homecube/CellLayout$CellInfo;->cellX:I

    .line 2776
    aget v1, v0, v2

    iput v1, p1, Lcom/lge/homecube/CellLayout$CellInfo;->cellY:I

    move v1, v2

    .line 2779
    :goto_14
    return v1

    :cond_15
    move v1, v3

    goto :goto_14
.end method

.method private findSlot(Lcom/lge/homecube/CellLayout$CellInfo;[III)Z
    .registers 9
    .parameter "cellInfo"
    .parameter "xy"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    const/4 v3, 0x0

    .line 2783
    invoke-virtual {p1, p2, p3, p4}, Lcom/lge/homecube/CellLayout$CellInfo;->findCellForSpan([III)Z

    move-result v1

    if-nez v1, :cond_35

    .line 2784
    iget-object v1, p0, Lcom/lge/homecube/Launcher;->mSavedState:Landroid/os/Bundle;

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/lge/homecube/Launcher;->mSavedState:Landroid/os/Bundle;

    const-string v2, "launcher.add_occupied_cells"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v1

    move-object v0, v1

    .line 2786
    .local v0, occupied:[Z
    :goto_14
    iget-object v1, p0, Lcom/lge/homecube/Launcher;->mWorkspace:Lcom/lge/homecube/Workspace;

    invoke-virtual {v1, v0}, Lcom/lge/homecube/Workspace;->findAllVacantCells([Z)Lcom/lge/homecube/CellLayout$CellInfo;

    move-result-object p1

    .line 2787
    if-eqz p1, :cond_35

    .line 2789
    invoke-virtual {p1, p2, p3, p4}, Lcom/lge/homecube/CellLayout$CellInfo;->findCellForSpan([III)Z

    move-result v1

    if-nez v1, :cond_35

    .line 2790
    const v1, 0x7f090016

    invoke-virtual {p0, v1}, Lcom/lge/homecube/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    move v1, v3

    .line 2795
    .end local v0           #occupied:[Z
    :goto_31
    return v1

    .line 2784
    :cond_32
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_14

    .line 2795
    :cond_35
    const/4 v1, 0x1

    goto :goto_31
.end method

.method private finishBindDesktopItems()V
    .registers 14

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    .line 3044
    iget-object v9, p0, Lcom/lge/homecube/Launcher;->mSavedState:Landroid/os/Bundle;

    if-eqz v9, :cond_58

    .line 3045
    iget-object v9, p0, Lcom/lge/homecube/Launcher;->mWorkspace:Lcom/lge/homecube/Workspace;

    invoke-virtual {v9}, Lcom/lge/homecube/Workspace;->hasFocus()Z

    move-result v9

    if-nez v9, :cond_1d

    .line 3046
    iget-object v9, p0, Lcom/lge/homecube/Launcher;->mWorkspace:Lcom/lge/homecube/Workspace;

    iget-object v10, p0, Lcom/lge/homecube/Launcher;->mWorkspace:Lcom/lge/homecube/Workspace;

    invoke-virtual {v10}, Lcom/lge/homecube/Workspace;->getCurrentScreen()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/lge/homecube/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->requestFocus()Z

    .line 3049
    :cond_1d
    iget-object v9, p0, Lcom/lge/homecube/Launcher;->mSavedState:Landroid/os/Bundle;

    const-string v10, "launcher.user_folder"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v8

    .line 3050
    .local v8, userFolders:[J
    if-eqz v8, :cond_47

    .line 3051
    move-object v1, v8

    .local v1, arr$:[J
    array-length v6, v1

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_2a
    if-ge v4, v6, :cond_3c

    aget-wide v2, v1, v4

    .line 3052
    .local v2, folderId:J
    sget-object v9, Lcom/lge/homecube/Launcher;->sModel:Lcom/lge/homecube/LauncherModel;

    invoke-virtual {v9, v2, v3}, Lcom/lge/homecube/LauncherModel;->findFolderById(J)Lcom/lge/homecube/FolderInfo;

    move-result-object v5

    .line 3053
    .local v5, info:Lcom/lge/homecube/FolderInfo;
    if-eqz v5, :cond_39

    .line 3054
    invoke-direct {p0, v5}, Lcom/lge/homecube/Launcher;->openFolder(Lcom/lge/homecube/FolderInfo;)V

    .line 3051
    :cond_39
    add-int/lit8 v4, v4, 0x1

    goto :goto_2a

    .line 3057
    .end local v2           #folderId:J
    .end local v5           #info:Lcom/lge/homecube/FolderInfo;
    :cond_3c
    iget-object v9, p0, Lcom/lge/homecube/Launcher;->mWorkspace:Lcom/lge/homecube/Workspace;

    invoke-virtual {v9}, Lcom/lge/homecube/Workspace;->getOpenFolder()Lcom/lge/homecube/Folder;

    move-result-object v7

    .line 3058
    .local v7, openFolder:Lcom/lge/homecube/Folder;
    if-eqz v7, :cond_47

    .line 3059
    invoke-virtual {v7}, Lcom/lge/homecube/Folder;->requestFocus()Z

    .line 3063
    .end local v1           #arr$:[J
    .end local v4           #i$:I
    .end local v6           #len$:I
    .end local v7           #openFolder:Lcom/lge/homecube/Folder;
    :cond_47
    iget-object v9, p0, Lcom/lge/homecube/Launcher;->mSavedState:Landroid/os/Bundle;

    const-string v10, "launcher.all_apps_folder"

    invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 3070
    .local v0, allApps:Z
    if-eqz v0, :cond_56

    .line 3071
    iget-object v9, p0, Lcom/lge/homecube/Launcher;->mDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v9}, Landroid/widget/SlidingDrawer;->open()V

    .line 3074
    :cond_56
    iput-object v12, p0, Lcom/lge/homecube/Launcher;->mSavedState:Landroid/os/Bundle;

    .line 3077
    .end local v0           #allApps:Z
    .end local v8           #userFolders:[J
    :cond_58
    iget-object v9, p0, Lcom/lge/homecube/Launcher;->mSavedInstanceState:Landroid/os/Bundle;

    if-eqz v9, :cond_63

    .line 3078
    iget-object v9, p0, Lcom/lge/homecube/Launcher;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-super {p0, v9}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 3079
    iput-object v12, p0, Lcom/lge/homecube/Launcher;->mSavedInstanceState:Landroid/os/Bundle;

    .line 3082
    :cond_63
    iget-object v9, p0, Lcom/lge/homecube/Launcher;->mDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v9}, Landroid/widget/SlidingDrawer;->isOpened()Z

    move-result v9

    if-eqz v9, :cond_78

    iget-object v9, p0, Lcom/lge/homecube/Launcher;->mDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v9}, Landroid/widget/SlidingDrawer;->hasFocus()Z

    move-result v9

    if-nez v9, :cond_78

    .line 3083
    iget-object v9, p0, Lcom/lge/homecube/Launcher;->mDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v9}, Landroid/widget/SlidingDrawer;->requestFocus()Z

    .line 3086
    :cond_78
    iput-boolean v11, p0, Lcom/lge/homecube/Launcher;->mDesktopLocked:Z

    .line 3087
    iget-object v9, p0, Lcom/lge/homecube/Launcher;->mDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v9}, Landroid/widget/SlidingDrawer;->unlock()V

    .line 3088
    return-void
.end method

.method private static getApplicationInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Lcom/lge/homecube/ApplicationInfo;
    .registers 6
    .parameter "manager"
    .parameter "intent"

    .prologue
    .line 5775
    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 5777
    .local v2, resolveInfo:Landroid/content/pm/ResolveInfo;
    if-nez v2, :cond_9

    .line 5778
    const/4 v3, 0x0

    .line 5790
    :goto_8
    return-object v3

    .line 5781
    :cond_9
    new-instance v1, Lcom/lge/homecube/ApplicationInfo;

    invoke-direct {v1}, Lcom/lge/homecube/ApplicationInfo;-><init>()V

    .line 5782
    .local v1, info:Lcom/lge/homecube/ApplicationInfo;
    iget-object v0, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 5783
    .local v0, activityInfo:Landroid/content/pm/ActivityInfo;
    invoke-virtual {v0, p0}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v1, Lcom/lge/homecube/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 5784
    iget-object v3, v1, Lcom/lge/homecube/ApplicationInfo;->title:Ljava/lang/CharSequence;

    if-eqz v3, :cond_22

    iget-object v3, v1, Lcom/lge/homecube/ApplicationInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_28

    .line 5785
    :cond_22
    invoke-virtual {v0, p0}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v1, Lcom/lge/homecube/ApplicationInfo;->title:Ljava/lang/CharSequence;

    .line 5787
    :cond_28
    iget-object v3, v1, Lcom/lge/homecube/ApplicationInfo;->title:Ljava/lang/CharSequence;

    if-nez v3, :cond_30

    .line 5788
    const-string v3, ""

    iput-object v3, v1, Lcom/lge/homecube/ApplicationInfo;->title:Ljava/lang/CharSequence;

    :cond_30
    move-object v3, v1

    .line 5790
    goto :goto_8
.end method

.method private getGroupnames()[Ljava/lang/String;
    .registers 15

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    const/16 v10, 0xc

    const v9, 0x7f090036

    .line 6362
    new-array v1, v10, [Ljava/lang/String;

    .line 6363
    .local v1, groupNames:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/lge/homecube/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f09002c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 6366
    .local v0, Operator_name:Ljava/lang/String;
    sget-object v6, Lcom/lge/homecube/Launcher;->mOpCode:Ljava/lang/String;

    const-string v7, "RGS"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_10d

    .line 6367
    invoke-virtual {p0}, Lcom/lge/homecube/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f09002d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 6380
    :cond_2a
    :goto_2a
    new-array v3, v10, [Ljava/lang/String;

    aput-object v0, v3, v11

    invoke-virtual {p0}, Lcom/lge/homecube/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090028

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v12

    invoke-virtual {p0}, Lcom/lge/homecube/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090029

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v13

    const/4 v6, 0x3

    invoke-virtual {p0}, Lcom/lge/homecube/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f09002a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v6

    const/4 v6, 0x4

    invoke-virtual {p0}, Lcom/lge/homecube/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090031

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v6

    const/4 v6, 0x5

    invoke-virtual {p0}, Lcom/lge/homecube/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f09002b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v6

    const/4 v6, 0x6

    invoke-virtual {p0}, Lcom/lge/homecube/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v6

    const/4 v6, 0x7

    invoke-virtual {p0}, Lcom/lge/homecube/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v6

    const/16 v6, 0x8

    invoke-virtual {p0}, Lcom/lge/homecube/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v6

    const/16 v6, 0x9

    invoke-virtual {p0}, Lcom/lge/homecube/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v6

    const/16 v6, 0xa

    invoke-virtual {p0}, Lcom/lge/homecube/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v6

    const/16 v6, 0xb

    invoke-virtual {p0}, Lcom/lge/homecube/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v6

    .line 6394
    .local v3, groupsDefault:[Ljava/lang/String;
    new-array v2, v10, [Ljava/lang/String;

    const-string v6, "allapps_title1"

    aput-object v6, v2, v11

    const-string v6, "allapps_title2"

    aput-object v6, v2, v12

    const-string v6, "allapps_title3"

    aput-object v6, v2, v13

    const/4 v6, 0x3

    const-string v7, "allapps_title4"

    aput-object v7, v2, v6

    const/4 v6, 0x4

    const-string v7, "allapps_title5"

    aput-object v7, v2, v6

    const/4 v6, 0x5

    const-string v7, "allapps_title6"

    aput-object v7, v2, v6

    const/4 v6, 0x6

    const-string v7, "allapps_title7"

    aput-object v7, v2, v6

    const/4 v6, 0x7

    const-string v7, "allapps_title8"

    aput-object v7, v2, v6

    const/16 v6, 0x8

    const-string v7, "allapps_title9"

    aput-object v7, v2, v6

    const/16 v6, 0x9

    const-string v7, "allapps_title10"

    aput-object v7, v2, v6

    const/16 v6, 0xa

    const-string v7, "allapps_title11"

    aput-object v7, v2, v6

    const/16 v6, 0xb

    const-string v7, "allapps_title12"

    aput-object v7, v2, v6

    .line 6398
    .local v2, groups:[Ljava/lang/String;
    const-string v6, "group_name"

    invoke-virtual {p0, v6, v11}, Lcom/lge/homecube/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 6400
    .local v5, prefs:Landroid/content/SharedPreferences;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_fe
    if-ge v4, v10, :cond_152

    .line 6401
    aget-object v6, v2, v4

    aget-object v7, v3, v4

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v4

    .line 6400
    add-int/lit8 v4, v4, 0x1

    goto :goto_fe

    .line 6369
    .end local v2           #groups:[Ljava/lang/String;
    .end local v3           #groupsDefault:[Ljava/lang/String;
    .end local v4           #i:I
    .end local v5           #prefs:Landroid/content/SharedPreferences;
    :cond_10d
    sget-object v6, Lcom/lge/homecube/Launcher;->mOpCode:Ljava/lang/String;

    const-string v7, "TIM"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_124

    .line 6370
    invoke-virtual {p0}, Lcom/lge/homecube/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f09002e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2a

    .line 6372
    :cond_124
    sget-object v6, Lcom/lge/homecube/Launcher;->mOpCode:Ljava/lang/String;

    const-string v7, "CLARO"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_13b

    .line 6373
    invoke-virtual {p0}, Lcom/lge/homecube/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f09002f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2a

    .line 6375
    :cond_13b
    sget-object v6, Lcom/lge/homecube/Launcher;->mOpCode:Ljava/lang/String;

    const-string v7, "TCL"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2a

    .line 6376
    invoke-virtual {p0}, Lcom/lge/homecube/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090030

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2a

    .line 6404
    .restart local v2       #groups:[Ljava/lang/String;
    .restart local v3       #groupsDefault:[Ljava/lang/String;
    .restart local v4       #i:I
    .restart local v5       #prefs:Landroid/content/SharedPreferences;
    :cond_152
    return-object v1
.end method

.method static getModel()Lcom/lge/homecube/LauncherModel;
    .registers 1

    .prologue
    .line 3307
    sget-object v0, Lcom/lge/homecube/Launcher;->sModel:Lcom/lge/homecube/LauncherModel;

    return-object v0
.end method

.method static getOperatorString()Ljava/lang/String;
    .registers 1

    .prologue
    .line 6662
    sget-object v0, Lcom/lge/homecube/Launcher;->mOpCode:Ljava/lang/String;

    return-object v0
.end method

.method static getScreen()I
    .registers 2

    .prologue
    .line 519
    sget-object v0, Lcom/lge/homecube/Launcher;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 520
    :try_start_3
    sget v1, Lcom/lge/homecube/Launcher;->sScreen:I

    monitor-exit v0

    return v1

    .line 521
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
    .line 2426
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleFolderClick(Lcom/lge/homecube/FolderInfo;)V
    .registers 5
    .parameter "folderInfo"

    .prologue
    .line 3163
    iget-boolean v2, p1, Lcom/lge/homecube/FolderInfo;->opened:Z

    if-nez v2, :cond_b

    .line 3165
    invoke-direct {p0}, Lcom/lge/homecube/Launcher;->closeFolder()V

    .line 3167
    invoke-direct {p0, p1}, Lcom/lge/homecube/Launcher;->openFolder(Lcom/lge/homecube/FolderInfo;)V

    .line 3184
    :cond_a
    :goto_a
    return-void

    .line 3170
    :cond_b
    iget-object v2, p0, Lcom/lge/homecube/Launcher;->mWorkspace:Lcom/lge/homecube/Workspace;

    invoke-virtual {v2, p1}, Lcom/lge/homecube/Workspace;->getFolderForTag(Ljava/lang/Object;)Lcom/lge/homecube/Folder;

    move-result-object v1

    .line 3172
    .local v1, openFolder:Lcom/lge/homecube/Folder;
    if-eqz v1, :cond_a

    .line 3173
    iget-object v2, p0, Lcom/lge/homecube/Launcher;->mWorkspace:Lcom/lge/homecube/Workspace;

    invoke-virtual {v2, v1}, Lcom/lge/homecube/Workspace;->getScreenForView(Landroid/view/View;)I

    move-result v0

    .line 3175
    .local v0, folderScreen:I
    invoke-virtual {p0, v1}, Lcom/lge/homecube/Launcher;->closeFolder(Lcom/lge/homecube/Folder;)V

    .line 3176
    iget-object v2, p0, Lcom/lge/homecube/Launcher;->mWorkspace:Lcom/lge/homecube/Workspace;

    invoke-virtual {v2}, Lcom/lge/homecube/Workspace;->getCurrentScreen()I

    move-result v2

    if-eq v0, v2, :cond_a

    .line 3178
    invoke-direct {p0}, Lcom/lge/homecube/Launcher;->closeFolder()V

    .line 3180
    invoke-direct {p0, p1}, Lcom/lge/homecube/Launcher;->openFolder(Lcom/lge/homecube/FolderInfo;)V

    goto :goto_a
.end method

.method private loadGroupNumPreferences()I
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 6267
    const-string v1, "added_group"

    invoke-virtual {p0, v1, v2}, Lcom/lge/homecube/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 6268
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "Number of Group"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private loadGroupname(I)Ljava/lang/String;
    .registers 7
    .parameter "id"

    .prologue
    const v4, 0x7f090036

    .line 6414
    const-string v2, "group_name"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/lge/homecube/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 6420
    .local v1, prefs:Landroid/content/SharedPreferences;
    packed-switch p1, :pswitch_data_108

    .line 6507
    const/4 v2, 0x0

    :goto_e
    return-object v2

    .line 6424
    :pswitch_f
    invoke-virtual {p0}, Lcom/lge/homecube/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09002c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 6427
    .local v0, defString:Ljava/lang/String;
    sget-object v2, Lcom/lge/homecube/Launcher;->mOpCode:Ljava/lang/String;

    const-string v3, "RGS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 6428
    invoke-virtual {p0}, Lcom/lge/homecube/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09002d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 6434
    :cond_2f
    :goto_2f
    const-string v2, "allapps_title1"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_e

    .line 6430
    :cond_36
    sget-object v2, Lcom/lge/homecube/Launcher;->mOpCode:Ljava/lang/String;

    const-string v3, "TIM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 6431
    invoke-virtual {p0}, Lcom/lge/homecube/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09002e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2f

    .line 6439
    .end local v0           #defString:Ljava/lang/String;
    :pswitch_4c
    invoke-virtual {p0}, Lcom/lge/homecube/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090028

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 6440
    .restart local v0       #defString:Ljava/lang/String;
    const-string v2, "allapps_title2"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_e

    .line 6445
    .end local v0           #defString:Ljava/lang/String;
    :pswitch_5e
    invoke-virtual {p0}, Lcom/lge/homecube/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090029

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 6446
    .restart local v0       #defString:Ljava/lang/String;
    const-string v2, "allapps_title3"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_e

    .line 6451
    .end local v0           #defString:Ljava/lang/String;
    :pswitch_70
    invoke-virtual {p0}, Lcom/lge/homecube/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09002a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 6452
    .restart local v0       #defString:Ljava/lang/String;
    const-string v2, "allapps_title4"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_e

    .line 6457
    .end local v0           #defString:Ljava/lang/String;
    :pswitch_82
    invoke-virtual {p0}, Lcom/lge/homecube/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090031

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 6458
    .restart local v0       #defString:Ljava/lang/String;
    const-string v2, "allapps_title5"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_e

    .line 6464
    .end local v0           #defString:Ljava/lang/String;
    :pswitch_95
    invoke-virtual {p0}, Lcom/lge/homecube/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09002b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 6465
    .restart local v0       #defString:Ljava/lang/String;
    const-string v2, "allapps_title6"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_e

    .line 6471
    .end local v0           #defString:Ljava/lang/String;
    :pswitch_a8
    invoke-virtual {p0}, Lcom/lge/homecube/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 6472
    .restart local v0       #defString:Ljava/lang/String;
    const-string v2, "allapps_title7"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_e

    .line 6477
    .end local v0           #defString:Ljava/lang/String;
    :pswitch_b8
    invoke-virtual {p0}, Lcom/lge/homecube/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 6478
    .restart local v0       #defString:Ljava/lang/String;
    const-string v2, "allapps_title8"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_e

    .line 6483
    .end local v0           #defString:Ljava/lang/String;
    :pswitch_c8
    invoke-virtual {p0}, Lcom/lge/homecube/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 6484
    .restart local v0       #defString:Ljava/lang/String;
    const-string v2, "allapps_title9"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_e

    .line 6489
    .end local v0           #defString:Ljava/lang/String;
    :pswitch_d8
    invoke-virtual {p0}, Lcom/lge/homecube/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 6490
    .restart local v0       #defString:Ljava/lang/String;
    const-string v2, "allapps_title10"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_e

    .line 6495
    .end local v0           #defString:Ljava/lang/String;
    :pswitch_e8
    invoke-virtual {p0}, Lcom/lge/homecube/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 6496
    .restart local v0       #defString:Ljava/lang/String;
    const-string v2, "allapps_title11"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_e

    .line 6501
    .end local v0           #defString:Ljava/lang/String;
    :pswitch_f8
    invoke-virtual {p0}, Lcom/lge/homecube/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 6502
    .restart local v0       #defString:Ljava/lang/String;
    const-string v2, "allapps_title12"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_e

    .line 6420
    :pswitch_data_108
    .packed-switch 0x1
        :pswitch_f
        :pswitch_4c
        :pswitch_5e
        :pswitch_70
        :pswitch_82
        :pswitch_95
        :pswitch_a8
        :pswitch_b8
        :pswitch_c8
        :pswitch_d8
        :pswitch_e8
        :pswitch_f8
    .end packed-switch
.end method

.method private loadRenameTitleIdPreferences()I
    .registers 4

    .prologue
    .line 6297
    const-string v1, "rename_title_id"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/lge/homecube/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 6298
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "RenameTitleId"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private loadRenameTitlePreferences()Ljava/lang/String;
    .registers 4

    .prologue
    .line 6282
    const-string v1, "rename_title"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/lge/homecube/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 6283
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "RenameTitle"

    const-string v2, "Group"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static moveItemInDatabase(Landroid/content/Context;Lcom/lge/homecube/ApplicationInfo;II)V
    .registers 13
    .parameter "context"
    .parameter "item"
    .parameter "position"
    .parameter "group_id"

    .prologue
    .line 6076
    iget v7, p1, Lcom/lge/homecube/ApplicationInfo;->position:I

    .line 6077
    .local v7, originalItemPosition:I
    iget v6, p1, Lcom/lge/homecube/ApplicationInfo;->group_id:I

    .line 6079
    .local v6, originalItemGrouppID:I
    const-string v0, "CubeHome"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/lge/homecube/ApplicationInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  Original (position,group_id):   ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")    : hwang072"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6081
    iput p2, p1, Lcom/lge/homecube/ApplicationInfo;->position:I

    .line 6082
    iput p3, p1, Lcom/lge/homecube/ApplicationInfo;->group_id:I

    .line 6084
    const-string p2, "CubeHome"

    .end local p2
    new-instance p3, Ljava/lang/StringBuilder;

    .end local p3
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ""

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object v0, p1, Lcom/lge/homecube/ApplicationInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, "  Droped (position,group_id):   ("

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget v0, p1, Lcom/lge/homecube/ApplicationInfo;->position:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, ", "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget v0, p1, Lcom/lge/homecube/ApplicationInfo;->group_id:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, ")    : hwang072"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6086
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 6087
    .local v8, values:Landroid/content/ContentValues;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 6089
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 p0, 0x3

    new-array v2, p0, [Ljava/lang/String;

    .end local p0
    const/4 p0, 0x0

    const-string p2, "position"

    aput-object p2, v2, p0

    const/4 p0, 0x1

    const-string p2, "group_id"

    aput-object p2, v2, p0

    const/4 p0, 0x2

    const-string p2, "_id"

    aput-object p2, v2, p0

    .line 6093
    .local v2, QUERY_COLUMNS:[Ljava/lang/String;
    sget-object v1, Lcom/lge/homecube/AllAppsSettings$AllApps;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    .line 6096
    .local p2, c:Landroid/database/Cursor;
    const-string p0, "position"

    invoke-interface {p2, p0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 6097
    .local v1, positionIndex:I
    const-string p0, "group_id"

    invoke-interface {p2, p0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p3

    .line 6098
    .local p3, group_idIndex:I
    const-string p0, "_id"

    invoke-interface {p2, p0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p0

    .line 6103
    .end local v2           #QUERY_COLUMNS:[Ljava/lang/String;
    .local p0, Id:I
    :cond_aa
    :goto_aa
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_225

    .line 6105
    iget v2, p1, Lcom/lge/homecube/ApplicationInfo;->group_id:I

    if-ne v6, v2, :cond_134

    .line 6107
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iget v3, p1, Lcom/lge/homecube/ApplicationInfo;->group_id:I

    if-ne v2, v3, :cond_aa

    .line 6109
    const-string v2, "CubeHome"

    const-string v3, "Move in the Same group!!    : hwang072"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6111
    iget v2, p1, Lcom/lge/homecube/ApplicationInfo;->position:I

    if-ge v7, v2, :cond_fb

    .line 6113
    const-string v2, "CubeHome"

    const-string v3, "Move to backward!!    : hwang072"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6115
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ge v7, v2, :cond_aa

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iget v3, p1, Lcom/lge/homecube/ApplicationInfo;->position:I

    if-ge v2, v3, :cond_aa

    .line 6116
    const-string v2, "position"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 6117
    invoke-interface {p2, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v2, v2

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/lge/homecube/AllAppsSettings$AllApps;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v8, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_aa

    .line 6121
    :cond_fb
    iget v2, p1, Lcom/lge/homecube/ApplicationInfo;->position:I

    if-le v7, v2, :cond_aa

    .line 6123
    const-string v2, "CubeHome"

    const-string v3, "Move to forward!!    : hwang072"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6125
    iget v2, p1, Lcom/lge/homecube/ApplicationInfo;->position:I

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-gt v2, v3, :cond_aa

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ge v2, v7, :cond_aa

    .line 6126
    const-string v2, "position"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 6127
    invoke-interface {p2, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v2, v2

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/lge/homecube/AllAppsSettings$AllApps;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v8, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_aa

    .line 6136
    :cond_134
    const-string v2, "CubeHome"

    const-string v3, "Move to Other group!!    : hwang072"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6138
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v6, v2, :cond_1ae

    .line 6140
    const-string v2, "CubeHome"

    const-string v3, "Change the Original Grid.......   : hwang072"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6142
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ge v7, v2, :cond_aa

    .line 6144
    const-string v2, "position"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 6145
    invoke-interface {p2, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v2, v2

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/lge/homecube/AllAppsSettings$AllApps;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v8, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 6147
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .line 6148
    .local v2, tmp:I
    const-string v3, "CubeHome"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p2, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ::"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .end local v2           #tmp:I
    const-string v4, ":  hwang072"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_aa

    .line 6153
    :cond_1ae
    iget v2, p1, Lcom/lge/homecube/ApplicationInfo;->group_id:I

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-ne v2, v3, :cond_aa

    .line 6155
    const-string v2, "CubeHome"

    const-string v3, "Change the Target Grid.......   : hwang072"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6157
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iget v3, p1, Lcom/lge/homecube/ApplicationInfo;->position:I

    if-lt v2, v3, :cond_aa

    .line 6159
    const-string v2, "position"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 6160
    invoke-interface {p2, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v2, v2

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/lge/homecube/AllAppsSettings$AllApps;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v8, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 6161
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 6162
    .local v2, tmp2:I
    const-string v3, "CubeHome"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p2, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ::"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .end local v2           #tmp2:I
    const-string v4, ":  hwang072"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_aa

    .line 6169
    :cond_225
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 6171
    iget p0, p1, Lcom/lge/homecube/ApplicationInfo;->group_id:I

    .end local p0           #Id:I
    if-ne v6, p0, :cond_2dc

    .line 6173
    iget p0, p1, Lcom/lge/homecube/ApplicationInfo;->position:I

    if-ge v7, p0, :cond_288

    .line 6175
    const-string p0, "position"

    iget p2, p1, Lcom/lge/homecube/ApplicationInfo;->position:I

    .end local p2           #c:Landroid/database/Cursor;
    const/4 p3, 0x1

    sub-int/2addr p2, p3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .end local p3           #group_idIndex:I
    move-result-object p2

    invoke-virtual {v8, p0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 6176
    iget-wide p2, p1, Lcom/lge/homecube/ApplicationInfo;->id:J

    const/4 p0, 0x0

    invoke-static {p2, p3, p0}, Lcom/lge/homecube/AllAppsSettings$AllApps;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object p0

    const/4 p2, 0x0

    const/4 p3, 0x0

    invoke-virtual {v0, p0, v8, p2, p3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 6178
    iget p0, p1, Lcom/lge/homecube/ApplicationInfo;->position:I

    const/4 p2, 0x1

    sub-int/2addr p0, p2

    iput p0, p1, Lcom/lge/homecube/ApplicationInfo;->position:I

    .line 6179
    const-string p0, "CubeHome"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, ""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p1, Lcom/lge/homecube/ApplicationInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "    Saved (position,group_id):   ("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p3, p1, Lcom/lge/homecube/ApplicationInfo;->position:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ", "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p1, p1, Lcom/lge/homecube/ApplicationInfo;->group_id:I

    .end local p1
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ")    : hwang072"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6197
    :cond_287
    :goto_287
    return-void

    .line 6182
    .restart local p1
    .restart local p2       #c:Landroid/database/Cursor;
    .restart local p3       #group_idIndex:I
    :cond_288
    iget p0, p1, Lcom/lge/homecube/ApplicationInfo;->position:I

    if-le v7, p0, :cond_287

    .line 6184
    const-string p0, "position"

    iget p2, p1, Lcom/lge/homecube/ApplicationInfo;->position:I

    .end local p2           #c:Landroid/database/Cursor;
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v8, p0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 6185
    iget-wide p2, p1, Lcom/lge/homecube/ApplicationInfo;->id:J

    const/4 p0, 0x0

    invoke-static {p2, p3, p0}, Lcom/lge/homecube/AllAppsSettings$AllApps;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object p0

    const/4 p2, 0x0

    const/4 p3, 0x0

    invoke-virtual {v0, p0, v8, p2, p3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 6186
    .end local p3           #group_idIndex:I
    const-string p0, "CubeHome"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, ""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p1, Lcom/lge/homecube/ApplicationInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "   Saved(position,group_id):   ("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p3, p1, Lcom/lge/homecube/ApplicationInfo;->position:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ", "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p1, p1, Lcom/lge/homecube/ApplicationInfo;->group_id:I

    .end local p1
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ")    : hwang072"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_287

    .line 6191
    .restart local p1
    .restart local p2       #c:Landroid/database/Cursor;
    .restart local p3       #group_idIndex:I
    :cond_2dc
    const-string p0, "position"

    iget p2, p1, Lcom/lge/homecube/ApplicationInfo;->position:I

    .end local p2           #c:Landroid/database/Cursor;
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v8, p0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 6192
    const-string p0, "group_id"

    iget p2, p1, Lcom/lge/homecube/ApplicationInfo;->group_id:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v8, p0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 6193
    iget-wide p2, p1, Lcom/lge/homecube/ApplicationInfo;->id:J

    const/4 p0, 0x0

    invoke-static {p2, p3, p0}, Lcom/lge/homecube/AllAppsSettings$AllApps;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object p0

    const/4 p2, 0x0

    const/4 p3, 0x0

    invoke-virtual {v0, p0, v8, p2, p3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 6194
    .end local p3           #group_idIndex:I
    const-string p0, "CubeHome"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, ""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p1, Lcom/lge/homecube/ApplicationInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "   Saved (position,group_id):   ("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p3, p1, Lcom/lge/homecube/ApplicationInfo;->position:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ", "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p1, p1, Lcom/lge/homecube/ApplicationInfo;->group_id:I

    .end local p1
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ")    : hwang072"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_287
.end method

.method private onAppWidgetReset()V
    .registers 2

    .prologue
    .line 2929
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->mAppWidgetHost:Lcom/lge/homecube/LauncherAppWidgetHost;

    if-eqz v0, :cond_9

    .line 2930
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->mAppWidgetHost:Lcom/lge/homecube/LauncherAppWidgetHost;

    invoke-virtual {v0}, Lcom/lge/homecube/LauncherAppWidgetHost;->startListening()V

    .line 2932
    :cond_9
    return-void
.end method

.method private onFavoritesChanged()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 2919
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/homecube/Launcher;->mDesktopLocked:Z

    .line 2920
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->mDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->lock()V

    .line 2921
    sget-object v0, Lcom/lge/homecube/Launcher;->sModel:Lcom/lge/homecube/LauncherModel;

    invoke-virtual {v0, v1, p0, v1, v1}, Lcom/lge/homecube/LauncherModel;->loadUserItems(ZLcom/lge/homecube/Launcher;ZZ)V

    .line 2922
    return-void
.end method

.method private openFolder(Lcom/lge/homecube/FolderInfo;)V
    .registers 9
    .parameter "folderInfo"

    .prologue
    const/4 v5, 0x4

    const/4 v3, 0x0

    .line 3210
    instance-of v0, p1, Lcom/lge/homecube/UserFolderInfo;

    if-eqz v0, :cond_25

    .line 3211
    invoke-static {p0}, Lcom/lge/homecube/UserFolder;->fromXml(Landroid/content/Context;)Lcom/lge/homecube/UserFolder;

    move-result-object v1

    .line 3218
    .local v1, openFolder:Lcom/lge/homecube/Folder;
    :goto_a
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->mDragLayer:Lcom/lge/homecube/DragLayer;

    invoke-virtual {v1, v0}, Lcom/lge/homecube/Folder;->setDragger(Lcom/lge/homecube/DragController;)V

    .line 3219
    invoke-virtual {v1, p0}, Lcom/lge/homecube/Folder;->setLauncher(Lcom/lge/homecube/Launcher;)V

    .line 3221
    invoke-virtual {v1, p1}, Lcom/lge/homecube/Folder;->bind(Lcom/lge/homecube/FolderInfo;)V

    .line 3222
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/lge/homecube/FolderInfo;->opened:Z

    .line 3224
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->mWorkspace:Lcom/lge/homecube/Workspace;

    iget v2, p1, Lcom/lge/homecube/FolderInfo;->screen:I

    move v4, v3

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/lge/homecube/Workspace;->addInScreen(Landroid/view/View;IIIII)V

    .line 3225
    invoke-virtual {v1}, Lcom/lge/homecube/Folder;->onOpen()V

    .line 3226
    .end local v1           #openFolder:Lcom/lge/homecube/Folder;
    :cond_24
    return-void

    .line 3212
    :cond_25
    instance-of v0, p1, Lcom/lge/homecube/LiveFolderInfo;

    if-eqz v0, :cond_24

    .line 3213
    invoke-static {p0, p1}, Lcom/lge/homecube/LiveFolder;->fromXml(Landroid/content/Context;Lcom/lge/homecube/FolderInfo;)Lcom/lge/homecube/LiveFolder;

    move-result-object v1

    .restart local v1       #openFolder:Lcom/lge/homecube/Folder;
    goto :goto_a
.end method

.method private phoneIsInUse()Z
    .registers 6

    .prologue
    .line 830
    const/4 v2, 0x0

    .line 832
    .local v2, phoneInUse:Z
    :try_start_1
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 833
    .local v1, phone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_15

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isIdle()Z
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_10} :catch_19

    move-result v3

    if-nez v3, :cond_16

    const/4 v3, 0x1

    move v2, v3

    .line 837
    .end local v1           #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_15
    :goto_15
    return v2

    .line 833
    .restart local v1       #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_16
    const/4 v3, 0x0

    move v2, v3

    goto :goto_15

    .line 834
    .end local v1           #phone:Lcom/android/internal/telephony/ITelephony;
    :catch_19
    move-exception v3

    move-object v0, v3

    .line 835
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "Phone"

    const-string v4, "phone.isIdle() failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15
.end method

.method private registerContentObservers()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 2839
    invoke-virtual {p0}, Lcom/lge/homecube/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2840
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/lge/homecube/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/lge/homecube/Launcher;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2841
    sget-object v1, Lcom/lge/homecube/LauncherProvider;->CONTENT_APPWIDGET_RESET_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/lge/homecube/Launcher;->mAppWidgetResetObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2842
    return-void
.end method

.method private registerIntentReceivers()V
    .registers 4

    .prologue
    .line 2816
    sget-object v2, Lcom/lge/homecube/Launcher;->sWallpaperReceiver:Lcom/lge/homecube/Launcher$WallpaperIntentReceiver;

    if-nez v2, :cond_37

    .line 2817
    invoke-virtual {p0}, Lcom/lge/homecube/Launcher;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 2819
    .local v0, application:Landroid/app/Application;
    new-instance v2, Lcom/lge/homecube/Launcher$WallpaperIntentReceiver;

    invoke-direct {v2, v0, p0}, Lcom/lge/homecube/Launcher$WallpaperIntentReceiver;-><init>(Landroid/app/Application;Lcom/lge/homecube/Launcher;)V

    sput-object v2, Lcom/lge/homecube/Launcher;->sWallpaperReceiver:Lcom/lge/homecube/Launcher$WallpaperIntentReceiver;

    .line 2821
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.WALLPAPER_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2822
    .local v1, filter:Landroid/content/IntentFilter;
    sget-object v2, Lcom/lge/homecube/Launcher;->sWallpaperReceiver:Lcom/lge/homecube/Launcher$WallpaperIntentReceiver;

    invoke-virtual {v0, v2, v1}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2827
    .end local v0           #application:Landroid/app/Application;
    .end local v1           #filter:Landroid/content/IntentFilter;
    :goto_1b
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2828
    .restart local v1       #filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2829
    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2830
    const-string v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2831
    iget-object v2, p0, Lcom/lge/homecube/Launcher;->mApplicationsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/lge/homecube/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2832
    return-void

    .line 2824
    .end local v1           #filter:Landroid/content/IntentFilter;
    :cond_37
    sget-object v2, Lcom/lge/homecube/Launcher;->sWallpaperReceiver:Lcom/lge/homecube/Launcher$WallpaperIntentReceiver;

    invoke-virtual {v2, p0}, Lcom/lge/homecube/Launcher$WallpaperIntentReceiver;->setLauncher(Lcom/lge/homecube/Launcher;)V

    goto :goto_1b
.end method

.method private removeShortcutsForPackage(Ljava/lang/String;)V
    .registers 3
    .parameter "packageName"

    .prologue
    .line 2595
    if-eqz p1, :cond_d

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_d

    .line 2596
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->mWorkspace:Lcom/lge/homecube/Workspace;

    invoke-virtual {v0, p1}, Lcom/lge/homecube/Workspace;->removeShortcutsForPackage(Ljava/lang/String;)V

    .line 2598
    :cond_d
    return-void
.end method

.method private restoreState(Landroid/os/Bundle;)V
    .registers 12
    .parameter "savedState"

    .prologue
    const/4 v9, 0x1

    const/4 v7, -0x1

    .line 846
    if-eqz p1, :cond_76

    .line 848
    const-string v6, "launcher.current_screen"

    invoke-virtual {p1, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 849
    .local v2, currentScreen:I
    if-le v2, v7, :cond_11

    .line 850
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->mWorkspace:Lcom/lge/homecube/Workspace;

    invoke-virtual {v6, v2}, Lcom/lge/homecube/Workspace;->setCurrentScreen(I)V

    .line 853
    :cond_11
    const-string v6, "launcher.add_screen"

    invoke-virtual {p1, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 854
    .local v1, addScreen:I
    if-le v1, v7, :cond_5d

    .line 855
    new-instance v6, Lcom/lge/homecube/CellLayout$CellInfo;

    invoke-direct {v6}, Lcom/lge/homecube/CellLayout$CellInfo;-><init>()V

    iput-object v6, p0, Lcom/lge/homecube/Launcher;->mAddItemCellInfo:Lcom/lge/homecube/CellLayout$CellInfo;

    .line 856
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->mAddItemCellInfo:Lcom/lge/homecube/CellLayout$CellInfo;

    .line 857
    .local v0, addItemCellInfo:Lcom/lge/homecube/CellLayout$CellInfo;
    iput-boolean v9, v0, Lcom/lge/homecube/CellLayout$CellInfo;->valid:Z

    .line 858
    iput v1, v0, Lcom/lge/homecube/CellLayout$CellInfo;->screen:I

    .line 859
    const-string v6, "launcher.add_cellX"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v0, Lcom/lge/homecube/CellLayout$CellInfo;->cellX:I

    .line 860
    const-string v6, "launcher.add_cellY"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v0, Lcom/lge/homecube/CellLayout$CellInfo;->cellY:I

    .line 861
    const-string v6, "launcher.add_spanX"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v0, Lcom/lge/homecube/CellLayout$CellInfo;->spanX:I

    .line 862
    const-string v6, "launcher.add_spanY"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v0, Lcom/lge/homecube/CellLayout$CellInfo;->spanY:I

    .line 863
    const-string v6, "launcher.add_occupied_cells"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v6

    const-string v7, "launcher.add_countX"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    const-string v8, "launcher.add_countY"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v0, v6, v7, v8}, Lcom/lge/homecube/CellLayout$CellInfo;->findVacantCellsFromOccupied([ZII)V

    .line 867
    iput-boolean v9, p0, Lcom/lge/homecube/Launcher;->mRestoring:Z

    .line 870
    .end local v0           #addItemCellInfo:Lcom/lge/homecube/CellLayout$CellInfo;
    :cond_5d
    const-string v6, "launcher.rename_folder"

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 871
    .local v5, renameFolder:Z
    if-eqz v5, :cond_76

    .line 872
    const-string v6, "launcher.rename_folder_id"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 873
    .local v3, id:J
    sget-object v6, Lcom/lge/homecube/Launcher;->sModel:Lcom/lge/homecube/LauncherModel;

    invoke-virtual {v6, p0, v3, v4}, Lcom/lge/homecube/LauncherModel;->getFolderById(Landroid/content/Context;J)Lcom/lge/homecube/FolderInfo;

    move-result-object v6

    iput-object v6, p0, Lcom/lge/homecube/Launcher;->mFolderInfo:Lcom/lge/homecube/FolderInfo;

    .line 874
    iput-boolean v9, p0, Lcom/lge/homecube/Launcher;->mRestoring:Z

    .line 877
    .end local v1           #addScreen:I
    .end local v2           #currentScreen:I
    .end local v3           #id:J
    .end local v5           #renameFolder:Z
    :cond_76
    return-void
.end method

.method private returnToInCallScreen(Z)V
    .registers 6
    .parameter "showDialpad"

    .prologue
    .line 807
    :try_start_0
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 808
    .local v1, phone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_f

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->showCallScreenWithDialpad(Z)Z
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    .line 822
    .end local v1           #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_f
    :goto_f
    return-void

    .line 809
    :catch_10
    move-exception v2

    move-object v0, v2

    .line 810
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "Phone"

    const-string v3, "phone.showCallScreenWithDialpad() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f
.end method

.method private sendOpenChangeToIME(Z)V
    .registers 4
    .parameter "opened"

    .prologue
    .line 3759
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.inputmethod.xim.RESTRICTED_INPUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3760
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "OPEN_CHANGED"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3761
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3762
    iget-object v1, p0, Lcom/lge/homecube/Launcher;->mDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v1}, Landroid/widget/SlidingDrawer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3763
    return-void
.end method

.method static setScreen(I)V
    .registers 3
    .parameter "screen"

    .prologue
    .line 525
    sget-object v0, Lcom/lge/homecube/Launcher;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 526
    :try_start_3
    sput p0, Lcom/lge/homecube/Launcher;->sScreen:I

    .line 527
    monitor-exit v0

    .line 528
    return-void

    .line 527
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method private setToDefaultGroupName()V
    .registers 6

    .prologue
    .line 6351
    const-string v3, "group_name"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/lge/homecube/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 6352
    .local v2, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 6353
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const/4 v1, 0x1

    .local v1, i:I
    :goto_c
    const/16 v3, 0xc

    if-gt v1, v3, :cond_2c

    .line 6354
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "allapps_title"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 6355
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 6353
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 6357
    :cond_2c
    return-void
.end method

.method private setWallpaperDimension()V
    .registers 9

    .prologue
    .line 538
    const-string v6, "wallpaper"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 539
    .local v0, binder:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/app/IWallpaperService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperService;

    move-result-object v4

    .line 541
    .local v4, wallpaperService:Landroid/app/IWallpaperService;
    invoke-virtual {p0}, Lcom/lge/homecube/Launcher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 542
    .local v1, display:Landroid/view/Display;
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v6

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v7

    if-ge v6, v7, :cond_32

    const/4 v6, 0x1

    move v3, v6

    .line 544
    .local v3, isPortrait:Z
    :goto_1e
    if-eqz v3, :cond_35

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v6

    move v5, v6

    .line 545
    .local v5, width:I
    :goto_25
    if-eqz v3, :cond_3b

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v6

    move v2, v6

    .line 547
    .local v2, height:I
    :goto_2c
    mul-int/lit8 v6, v5, 0x2

    :try_start_2e
    invoke-interface {v4, v6, v2}, Landroid/app/IWallpaperService;->setDimensionHints(II)V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_31} :catch_41

    .line 551
    :goto_31
    return-void

    .line 542
    .end local v2           #height:I
    .end local v3           #isPortrait:Z
    .end local v5           #width:I
    :cond_32
    const/4 v6, 0x0

    move v3, v6

    goto :goto_1e

    .line 544
    .restart local v3       #isPortrait:Z
    :cond_35
    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v6

    move v5, v6

    goto :goto_25

    .line 545
    .restart local v5       #width:I
    :cond_3b
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v6

    move v2, v6

    goto :goto_2c

    .line 548
    .restart local v2       #height:I
    :catch_41
    move-exception v6

    goto :goto_31
.end method

.method private setupViews()V
    .registers 14

    .prologue
    const/4 v12, 0x7

    const/4 v11, 0x6

    const v10, 0x7f020063

    const/4 v9, 0x0

    const/16 v8, 0x8

    .line 883
    const v6, 0x7f050006

    invoke-virtual {p0, v6}, Lcom/lge/homecube/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/lge/homecube/DragLayer;

    iput-object v6, p0, Lcom/lge/homecube/Launcher;->mDragLayer:Lcom/lge/homecube/DragLayer;

    .line 884
    iget-object v1, p0, Lcom/lge/homecube/Launcher;->mDragLayer:Lcom/lge/homecube/DragLayer;

    .line 886
    .local v1, dragLayer:Lcom/lge/homecube/DragLayer;
    const v6, 0x7f050007

    invoke-virtual {v1, v6}, Lcom/lge/homecube/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/lge/homecube/Workspace;

    iput-object v6, p0, Lcom/lge/homecube/Launcher;->mWorkspace:Lcom/lge/homecube/Workspace;

    .line 887
    iget-object v5, p0, Lcom/lge/homecube/Launcher;->mWorkspace:Lcom/lge/homecube/Workspace;

    .line 888
    .local v5, workspace:Lcom/lge/homecube/Workspace;
    invoke-virtual {v5}, Lcom/lge/homecube/Workspace;->unlock()V

    .line 891
    const v6, 0x7f05000b

    invoke-virtual {v1, v6}, Lcom/lge/homecube/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/AbsoluteLayout;

    invoke-virtual {v5, v6}, Lcom/lge/homecube/Workspace;->setBottomButtonLayout(Landroid/widget/AbsoluteLayout;)V

    .line 893
    const v6, 0x7f05000b

    invoke-virtual {v1, v6}, Lcom/lge/homecube/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/AbsoluteLayout;

    iput-object v6, p0, Lcom/lge/homecube/Launcher;->mLauncherLayout:Landroid/widget/AbsoluteLayout;

    .line 896
    new-instance v6, Lcom/lge/homecube/BubbleTextView;

    invoke-direct {v6, p0}, Lcom/lge/homecube/BubbleTextView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/lge/homecube/Launcher;->mBubbleTextView:Lcom/lge/homecube/BubbleTextView;

    .line 897
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->mBubbleTextView:Lcom/lge/homecube/BubbleTextView;

    invoke-virtual {v6, p0}, Lcom/lge/homecube/BubbleTextView;->setLauncher(Lcom/lge/homecube/Launcher;)V

    .line 899
    new-instance v6, Lcom/lge/homecube/MenuTextView;

    invoke-direct {v6, p0}, Lcom/lge/homecube/MenuTextView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/lge/homecube/Launcher;->mMenuTextView:Lcom/lge/homecube/MenuTextView;

    .line 900
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->mMenuTextView:Lcom/lge/homecube/MenuTextView;

    invoke-virtual {v6, p0}, Lcom/lge/homecube/MenuTextView;->setLauncher(Lcom/lge/homecube/Launcher;)V

    .line 902
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->mAllAppsUtilities:Lcom/lge/homecube/AllAppsUtilities;

    invoke-virtual {v6, p0}, Lcom/lge/homecube/AllAppsUtilities;->setLauncher(Lcom/lge/homecube/Launcher;)V

    .line 905
    const v6, 0x7f05000f

    invoke-virtual {v1, v6}, Lcom/lge/homecube/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/lge/homecube/Launcher;->mBottomButton1:Landroid/widget/ImageView;

    .line 906
    const v6, 0x7f05000e

    invoke-virtual {v1, v6}, Lcom/lge/homecube/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/lge/homecube/Launcher;->mBottomButton2:Landroid/widget/ImageView;

    .line 907
    const v6, 0x7f05000d

    invoke-virtual {v1, v6}, Lcom/lge/homecube/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/lge/homecube/Launcher;->mBottomButton3:Landroid/widget/ImageView;

    .line 908
    const v6, 0x7f05000c

    invoke-virtual {v1, v6}, Lcom/lge/homecube/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/lge/homecube/Launcher;->mBottomButton4:Landroid/widget/ImageView;

    .line 909
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->mBottomButton1:Landroid/widget/ImageView;

    new-instance v7, Lcom/lge/homecube/Launcher$2;

    invoke-direct {v7, p0}, Lcom/lge/homecube/Launcher$2;-><init>(Lcom/lge/homecube/Launcher;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 918
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->mBottomButton2:Landroid/widget/ImageView;

    new-instance v7, Lcom/lge/homecube/Launcher$3;

    invoke-direct {v7, p0}, Lcom/lge/homecube/Launcher$3;-><init>(Lcom/lge/homecube/Launcher;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 927
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->mBottomButton3:Landroid/widget/ImageView;

    new-instance v7, Lcom/lge/homecube/Launcher$4;

    invoke-direct {v7, p0}, Lcom/lge/homecube/Launcher$4;-><init>(Lcom/lge/homecube/Launcher;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 936
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->mBottomButton4:Landroid/widget/ImageView;

    new-instance v7, Lcom/lge/homecube/Launcher$5;

    invoke-direct {v7, p0}, Lcom/lge/homecube/Launcher$5;-><init>(Lcom/lge/homecube/Launcher;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1136
    const v6, 0x7f050010

    invoke-virtual {v1, v6}, Lcom/lge/homecube/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/SlidingDrawer;

    iput-object v6, p0, Lcom/lge/homecube/Launcher;->mDrawer:Landroid/widget/SlidingDrawer;

    .line 1137
    iget-object v2, p0, Lcom/lge/homecube/Launcher;->mDrawer:Landroid/widget/SlidingDrawer;

    .line 1138
    .local v2, drawer:Landroid/widget/SlidingDrawer;
    invoke-virtual {v2}, Landroid/widget/SlidingDrawer;->close()V

    .line 1144
    invoke-virtual {v2}, Landroid/widget/SlidingDrawer;->getContent()Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    iput-object v6, p0, Lcom/lge/homecube/Launcher;->mFrameLayout:Landroid/widget/FrameLayout;

    .line 1147
    new-instance v6, Lcom/lge/homecube/Launcher$AppsAdapter;

    iget-object v7, p0, Lcom/lge/homecube/Launcher;->mOperatorItems:Ljava/util/ArrayList;

    invoke-direct {v6, p0, p0, v7}, Lcom/lge/homecube/Launcher$AppsAdapter;-><init>(Lcom/lge/homecube/Launcher;Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v6, p0, Lcom/lge/homecube/Launcher;->mOperatorList:Lcom/lge/homecube/Launcher$AppsAdapter;

    .line 1148
    new-instance v6, Lcom/lge/homecube/Launcher$AppsAdapter;

    iget-object v7, p0, Lcom/lge/homecube/Launcher;->mCommunicationItems:Ljava/util/ArrayList;

    invoke-direct {v6, p0, p0, v7}, Lcom/lge/homecube/Launcher$AppsAdapter;-><init>(Lcom/lge/homecube/Launcher;Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v6, p0, Lcom/lge/homecube/Launcher;->mCommunicationList:Lcom/lge/homecube/Launcher$AppsAdapter;

    .line 1149
    new-instance v6, Lcom/lge/homecube/Launcher$AppsAdapter;

    iget-object v7, p0, Lcom/lge/homecube/Launcher;->mMultimediaItems:Ljava/util/ArrayList;

    invoke-direct {v6, p0, p0, v7}, Lcom/lge/homecube/Launcher$AppsAdapter;-><init>(Lcom/lge/homecube/Launcher;Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v6, p0, Lcom/lge/homecube/Launcher;->mMultimediaList:Lcom/lge/homecube/Launcher$AppsAdapter;

    .line 1150
    new-instance v6, Lcom/lge/homecube/Launcher$AppsAdapter;

    iget-object v7, p0, Lcom/lge/homecube/Launcher;->mUtilitiesItems:Ljava/util/ArrayList;

    invoke-direct {v6, p0, p0, v7}, Lcom/lge/homecube/Launcher$AppsAdapter;-><init>(Lcom/lge/homecube/Launcher;Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v6, p0, Lcom/lge/homecube/Launcher;->mUtilitiesList:Lcom/lge/homecube/Launcher$AppsAdapter;

    .line 1151
    new-instance v6, Lcom/lge/homecube/Launcher$AppsAdapter;

    iget-object v7, p0, Lcom/lge/homecube/Launcher;->mGoogleItems:Ljava/util/ArrayList;

    invoke-direct {v6, p0, p0, v7}, Lcom/lge/homecube/Launcher$AppsAdapter;-><init>(Lcom/lge/homecube/Launcher;Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v6, p0, Lcom/lge/homecube/Launcher;->mGoogleList:Lcom/lge/homecube/Launcher$AppsAdapter;

    .line 1152
    new-instance v6, Lcom/lge/homecube/Launcher$AppsAdapter;

    iget-object v7, p0, Lcom/lge/homecube/Launcher;->mDownloadsItems:Ljava/util/ArrayList;

    invoke-direct {v6, p0, p0, v7}, Lcom/lge/homecube/Launcher$AppsAdapter;-><init>(Lcom/lge/homecube/Launcher;Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v6, p0, Lcom/lge/homecube/Launcher;->mDownloadsList:Lcom/lge/homecube/Launcher$AppsAdapter;

    .line 1153
    new-instance v6, Lcom/lge/homecube/Launcher$AppsAdapter;

    iget-object v7, p0, Lcom/lge/homecube/Launcher;->mGroup1Items:Ljava/util/ArrayList;

    invoke-direct {v6, p0, p0, v7}, Lcom/lge/homecube/Launcher$AppsAdapter;-><init>(Lcom/lge/homecube/Launcher;Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v6, p0, Lcom/lge/homecube/Launcher;->mGroup1List:Lcom/lge/homecube/Launcher$AppsAdapter;

    .line 1154
    new-instance v6, Lcom/lge/homecube/Launcher$AppsAdapter;

    iget-object v7, p0, Lcom/lge/homecube/Launcher;->mGroup2Items:Ljava/util/ArrayList;

    invoke-direct {v6, p0, p0, v7}, Lcom/lge/homecube/Launcher$AppsAdapter;-><init>(Lcom/lge/homecube/Launcher;Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v6, p0, Lcom/lge/homecube/Launcher;->mGroup2List:Lcom/lge/homecube/Launcher$AppsAdapter;

    .line 1155
    new-instance v6, Lcom/lge/homecube/Launcher$AppsAdapter;

    iget-object v7, p0, Lcom/lge/homecube/Launcher;->mGroup3Items:Ljava/util/ArrayList;

    invoke-direct {v6, p0, p0, v7}, Lcom/lge/homecube/Launcher$AppsAdapter;-><init>(Lcom/lge/homecube/Launcher;Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v6, p0, Lcom/lge/homecube/Launcher;->mGroup3List:Lcom/lge/homecube/Launcher$AppsAdapter;

    .line 1156
    new-instance v6, Lcom/lge/homecube/Launcher$AppsAdapter;

    iget-object v7, p0, Lcom/lge/homecube/Launcher;->mGroup4Items:Ljava/util/ArrayList;

    invoke-direct {v6, p0, p0, v7}, Lcom/lge/homecube/Launcher$AppsAdapter;-><init>(Lcom/lge/homecube/Launcher;Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v6, p0, Lcom/lge/homecube/Launcher;->mGroup4List:Lcom/lge/homecube/Launcher$AppsAdapter;

    .line 1157
    new-instance v6, Lcom/lge/homecube/Launcher$AppsAdapter;

    iget-object v7, p0, Lcom/lge/homecube/Launcher;->mGroup5Items:Ljava/util/ArrayList;

    invoke-direct {v6, p0, p0, v7}, Lcom/lge/homecube/Launcher$AppsAdapter;-><init>(Lcom/lge/homecube/Launcher;Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v6, p0, Lcom/lge/homecube/Launcher;->mGroup5List:Lcom/lge/homecube/Launcher$AppsAdapter;

    .line 1158
    new-instance v6, Lcom/lge/homecube/Launcher$AppsAdapter;

    iget-object v7, p0, Lcom/lge/homecube/Launcher;->mGroup6Items:Ljava/util/ArrayList;

    invoke-direct {v6, p0, p0, v7}, Lcom/lge/homecube/Launcher$AppsAdapter;-><init>(Lcom/lge/homecube/Launcher;Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v6, p0, Lcom/lge/homecube/Launcher;->mGroup6List:Lcom/lge/homecube/Launcher$AppsAdapter;

    .line 1160
    const v6, 0x7f050013

    invoke-virtual {p0, v6}, Lcom/lge/homecube/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ScrollView;

    iput-object v6, p0, Lcom/lge/homecube/Launcher;->mScrollView:Landroid/widget/ScrollView;

    .line 1162
    const v6, 0x7f050015

    invoke-virtual {p0, v6}, Lcom/lge/homecube/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/lge/homecube/AllAppsGridView;

    iput-object v6, p0, Lcom/lge/homecube/Launcher;->operator_Grid:Lcom/lge/homecube/AllAppsGridView;

    .line 1163
    const v6, 0x7f050017

    invoke-virtual {p0, v6}, Lcom/lge/homecube/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/lge/homecube/AllAppsGridView;

    iput-object v6, p0, Lcom/lge/homecube/Launcher;->commuication_Grid:Lcom/lge/homecube/AllAppsGridView;

    .line 1164
    const v6, 0x7f050019

    invoke-virtual {p0, v6}, Lcom/lge/homecube/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/lge/homecube/AllAppsGridView;

    iput-object v6, p0, Lcom/lge/homecube/Launcher;->multimedia_Grid:Lcom/lge/homecube/AllAppsGridView;

    .line 1165
    const v6, 0x7f05001b

    invoke-virtual {p0, v6}, Lcom/lge/homecube/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/lge/homecube/AllAppsGridView;

    iput-object v6, p0, Lcom/lge/homecube/Launcher;->utilities_Grid:Lcom/lge/homecube/AllAppsGridView;

    .line 1166
    const v6, 0x7f05001d

    invoke-virtual {p0, v6}, Lcom/lge/homecube/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/lge/homecube/AllAppsGridView;

    iput-object v6, p0, Lcom/lge/homecube/Launcher;->google_Grid:Lcom/lge/homecube/AllAppsGridView;

    .line 1167
    const v6, 0x7f05001f

    invoke-virtual {p0, v6}, Lcom/lge/homecube/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/lge/homecube/AllAppsGridView;

    iput-object v6, p0, Lcom/lge/homecube/Launcher;->downloads_Grid:Lcom/lge/homecube/AllAppsGridView;

    .line 1168
    const v6, 0x7f050021

    invoke-virtual {p0, v6}, Lcom/lge/homecube/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/lge/homecube/AllAppsGridView;

    iput-object v6, p0, Lcom/lge/homecube/Launcher;->group1_Grid:Lcom/lge/homecube/AllAppsGridView;

    .line 1169
    const v6, 0x7f050023

    invoke-virtual {p0, v6}, Lcom/lge/homecube/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/lge/homecube/AllAppsGridView;

    iput-object v6, p0, Lcom/lge/homecube/Launcher;->group2_Grid:Lcom/lge/homecube/AllAppsGridView;

    .line 1170
    const v6, 0x7f050025

    invoke-virtual {p0, v6}, Lcom/lge/homecube/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/lge/homecube/AllAppsGridView;

    iput-object v6, p0, Lcom/lge/homecube/Launcher;->group3_Grid:Lcom/lge/homecube/AllAppsGridView;

    .line 1171
    const v6, 0x7f050027

    invoke-virtual {p0, v6}, Lcom/lge/homecube/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/lge/homecube/AllAppsGridView;

    iput-object v6, p0, Lcom/lge/homecube/Launcher;->group4_Grid:Lcom/lge/homecube/AllAppsGridView;

    .line 1172
    const v6, 0x7f050029

    invoke-virtual {p0, v6}, Lcom/lge/homecube/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/lge/homecube/AllAppsGridView;

    iput-object v6, p0, Lcom/lge/homecube/Launcher;->group5_Grid:Lcom/lge/homecube/AllAppsGridView;

    .line 1173
    const v6, 0x7f05002b

    invoke-virtual {p0, v6}, Lcom/lge/homecube/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/lge/homecube/AllAppsGridView;

    iput-object v6, p0, Lcom/lge/homecube/Launcher;->group6_Grid:Lcom/lge/homecube/AllAppsGridView;

    .line 1175
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->operator_Grid:Lcom/lge/homecube/AllAppsGridView;

    iget-object v7, p0, Lcom/lge/homecube/Launcher;->mOperatorList:Lcom/lge/homecube/Launcher$AppsAdapter;

    invoke-virtual {v6, v7}, Lcom/lge/homecube/AllAppsGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1176
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->commuication_Grid:Lcom/lge/homecube/AllAppsGridView;

    iget-object v7, p0, Lcom/lge/homecube/Launcher;->mCommunicationList:Lcom/lge/homecube/Launcher$AppsAdapter;

    invoke-virtual {v6, v7}, Lcom/lge/homecube/AllAppsGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1177
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->multimedia_Grid:Lcom/lge/homecube/AllAppsGridView;

    iget-object v7, p0, Lcom/lge/homecube/Launcher;->mMultimediaList:Lcom/lge/homecube/Launcher$AppsAdapter;

    invoke-virtual {v6, v7}, Lcom/lge/homecube/AllAppsGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1178
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->utilities_Grid:Lcom/lge/homecube/AllAppsGridView;

    iget-object v7, p0, Lcom/lge/homecube/Launcher;->mUtilitiesList:Lcom/lge/homecube/Launcher$AppsAdapter;

    invoke-virtual {v6, v7}, Lcom/lge/homecube/AllAppsGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1179
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->google_Grid:Lcom/lge/homecube/AllAppsGridView;

    iget-object v7, p0, Lcom/lge/homecube/Launcher;->mGoogleList:Lcom/lge/homecube/Launcher$AppsAdapter;

    invoke-virtual {v6, v7}, Lcom/lge/homecube/AllAppsGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1180
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->downloads_Grid:Lcom/lge/homecube/AllAppsGridView;

    iget-object v7, p0, Lcom/lge/homecube/Launcher;->mDownloadsList:Lcom/lge/homecube/Launcher$AppsAdapter;

    invoke-virtual {v6, v7}, Lcom/lge/homecube/AllAppsGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1181
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->group1_Grid:Lcom/lge/homecube/AllAppsGridView;

    iget-object v7, p0, Lcom/lge/homecube/Launcher;->mGroup1List:Lcom/lge/homecube/Launcher$AppsAdapter;

    invoke-virtual {v6, v7}, Lcom/lge/homecube/AllAppsGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1182
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->group2_Grid:Lcom/lge/homecube/AllAppsGridView;

    iget-object v7, p0, Lcom/lge/homecube/Launcher;->mGroup2List:Lcom/lge/homecube/Launcher$AppsAdapter;

    invoke-virtual {v6, v7}, Lcom/lge/homecube/AllAppsGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1183
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->group3_Grid:Lcom/lge/homecube/AllAppsGridView;

    iget-object v7, p0, Lcom/lge/homecube/Launcher;->mGroup3List:Lcom/lge/homecube/Launcher$AppsAdapter;

    invoke-virtual {v6, v7}, Lcom/lge/homecube/AllAppsGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1184
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->group4_Grid:Lcom/lge/homecube/AllAppsGridView;

    iget-object v7, p0, Lcom/lge/homecube/Launcher;->mGroup4List:Lcom/lge/homecube/Launcher$AppsAdapter;

    invoke-virtual {v6, v7}, Lcom/lge/homecube/AllAppsGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1185
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->group5_Grid:Lcom/lge/homecube/AllAppsGridView;

    iget-object v7, p0, Lcom/lge/homecube/Launcher;->mGroup5List:Lcom/lge/homecube/Launcher$AppsAdapter;

    invoke-virtual {v6, v7}, Lcom/lge/homecube/AllAppsGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1186
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->group6_Grid:Lcom/lge/homecube/AllAppsGridView;

    iget-object v7, p0, Lcom/lge/homecube/Launcher;->mGroup6List:Lcom/lge/homecube/Launcher$AppsAdapter;

    invoke-virtual {v6, v7}, Lcom/lge/homecube/AllAppsGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1188
    invoke-virtual {p0}, Lcom/lge/homecube/Launcher;->setGridViewHeight()V

    .line 1191
    const v6, 0x7f05002c

    invoke-virtual {p0, v6}, Lcom/lge/homecube/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    iput-object v6, p0, Lcom/lge/homecube/Launcher;->mRelativeLayout:Landroid/widget/RelativeLayout;

    .line 1209
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->operator_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v6, v10}, Lcom/lge/homecube/AllAppsGridView;->setSelector(I)V

    .line 1210
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->commuication_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v6, v10}, Lcom/lge/homecube/AllAppsGridView;->setSelector(I)V

    .line 1211
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->multimedia_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v6, v10}, Lcom/lge/homecube/AllAppsGridView;->setSelector(I)V

    .line 1212
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->utilities_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v6, v10}, Lcom/lge/homecube/AllAppsGridView;->setSelector(I)V

    .line 1213
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->google_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v6, v10}, Lcom/lge/homecube/AllAppsGridView;->setSelector(I)V

    .line 1214
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->downloads_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v6, v10}, Lcom/lge/homecube/AllAppsGridView;->setSelector(I)V

    .line 1215
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->group1_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v6, v10}, Lcom/lge/homecube/AllAppsGridView;->setSelector(I)V

    .line 1216
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->group2_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v6, v10}, Lcom/lge/homecube/AllAppsGridView;->setSelector(I)V

    .line 1217
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->group3_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v6, v10}, Lcom/lge/homecube/AllAppsGridView;->setSelector(I)V

    .line 1218
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->group4_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v6, v10}, Lcom/lge/homecube/AllAppsGridView;->setSelector(I)V

    .line 1219
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->group5_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v6, v10}, Lcom/lge/homecube/AllAppsGridView;->setSelector(I)V

    .line 1220
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->group6_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v6, v10}, Lcom/lge/homecube/AllAppsGridView;->setSelector(I)V

    .line 1223
    const v6, 0x7f050014

    invoke-virtual {p0, v6}, Lcom/lge/homecube/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/lge/homecube/Launcher;->mTitleOperator:Landroid/widget/TextView;

    .line 1224
    const v6, 0x7f050016

    invoke-virtual {p0, v6}, Lcom/lge/homecube/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/lge/homecube/Launcher;->mTitleCommunication:Landroid/widget/TextView;

    .line 1225
    const v6, 0x7f050018

    invoke-virtual {p0, v6}, Lcom/lge/homecube/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/lge/homecube/Launcher;->mTitleMultimedia:Landroid/widget/TextView;

    .line 1226
    const v6, 0x7f05001a

    invoke-virtual {p0, v6}, Lcom/lge/homecube/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/lge/homecube/Launcher;->mTitleUtilities:Landroid/widget/TextView;

    .line 1227
    const v6, 0x7f05001c

    invoke-virtual {p0, v6}, Lcom/lge/homecube/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/lge/homecube/Launcher;->mTitleGoogle:Landroid/widget/TextView;

    .line 1228
    const v6, 0x7f05001e

    invoke-virtual {p0, v6}, Lcom/lge/homecube/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/lge/homecube/Launcher;->mTitleDownloads:Landroid/widget/TextView;

    .line 1229
    const v6, 0x7f050020

    invoke-virtual {p0, v6}, Lcom/lge/homecube/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/lge/homecube/Launcher;->mTitleGroup1:Landroid/widget/TextView;

    .line 1230
    const v6, 0x7f050022

    invoke-virtual {p0, v6}, Lcom/lge/homecube/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/lge/homecube/Launcher;->mTitleGroup2:Landroid/widget/TextView;

    .line 1231
    const v6, 0x7f050024

    invoke-virtual {p0, v6}, Lcom/lge/homecube/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/lge/homecube/Launcher;->mTitleGroup3:Landroid/widget/TextView;

    .line 1232
    const v6, 0x7f050026

    invoke-virtual {p0, v6}, Lcom/lge/homecube/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/lge/homecube/Launcher;->mTitleGroup4:Landroid/widget/TextView;

    .line 1233
    const v6, 0x7f050028

    invoke-virtual {p0, v6}, Lcom/lge/homecube/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/lge/homecube/Launcher;->mTitleGroup5:Landroid/widget/TextView;

    .line 1234
    const v6, 0x7f05002a

    invoke-virtual {p0, v6}, Lcom/lge/homecube/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/lge/homecube/Launcher;->mTitleGroup6:Landroid/widget/TextView;

    .line 1236
    invoke-direct {p0}, Lcom/lge/homecube/Launcher;->getGroupnames()[Ljava/lang/String;

    move-result-object v4

    .line 1239
    .local v4, groupNames:[Ljava/lang/String;
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->mTitleCommunication:Landroid/widget/TextView;

    const/4 v7, 0x1

    aget-object v7, v4, v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1240
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->mTitleMultimedia:Landroid/widget/TextView;

    const/4 v7, 0x2

    aget-object v7, v4, v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1241
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->mTitleUtilities:Landroid/widget/TextView;

    const/4 v7, 0x3

    aget-object v7, v4, v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1243
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->mTitleDownloads:Landroid/widget/TextView;

    const/4 v7, 0x5

    aget-object v7, v4, v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1253
    sget-object v6, Lcom/lge/homecube/Launcher;->mOpCode:Ljava/lang/String;

    const-string v7, "RGS"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_471

    sget-object v6, Lcom/lge/homecube/Launcher;->mOpCode:Ljava/lang/String;

    const-string v7, "TIM"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_471

    sget-object v6, Lcom/lge/homecube/Launcher;->mOpCode:Ljava/lang/String;

    const-string v7, "CLARO"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_471

    sget-object v6, Lcom/lge/homecube/Launcher;->mOpCode:Ljava/lang/String;

    const-string v7, "TCL"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_471

    .line 1254
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->operator_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v6, v8}, Lcom/lge/homecube/AllAppsGridView;->setVisibility(I)V

    .line 1255
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->mTitleOperator:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1261
    :goto_338
    sget-object v6, Lcom/lge/homecube/Launcher;->mOpCode:Ljava/lang/String;

    const-string v7, "ORG"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_356

    sget-object v6, Lcom/lge/homecube/Launcher;->mOpCode:Ljava/lang/String;

    const-string v7, "CLARO"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_356

    sget-object v6, Lcom/lge/homecube/Launcher;->mOpCode:Ljava/lang/String;

    const-string v7, "TCL"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_47a

    .line 1262
    :cond_356
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->google_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v6, v8}, Lcom/lge/homecube/AllAppsGridView;->setVisibility(I)V

    .line 1263
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->mTitleGoogle:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1269
    :goto_360
    invoke-direct {p0}, Lcom/lge/homecube/Launcher;->loadGroupNumPreferences()I

    move-result v6

    iput v6, p0, Lcom/lge/homecube/Launcher;->NumofAddedGroup:I

    .line 1271
    iget v6, p0, Lcom/lge/homecube/Launcher;->NumofAddedGroup:I

    packed-switch v6, :pswitch_data_6d6

    .line 1409
    :goto_36b
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->mTitleCommunication:Landroid/widget/TextView;

    new-instance v7, Lcom/lge/homecube/Launcher$6;

    invoke-direct {v7, p0}, Lcom/lge/homecube/Launcher$6;-><init>(Lcom/lge/homecube/Launcher;)V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1417
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->mTitleMultimedia:Landroid/widget/TextView;

    new-instance v7, Lcom/lge/homecube/Launcher$7;

    invoke-direct {v7, p0}, Lcom/lge/homecube/Launcher$7;-><init>(Lcom/lge/homecube/Launcher;)V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1424
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->mTitleUtilities:Landroid/widget/TextView;

    new-instance v7, Lcom/lge/homecube/Launcher$8;

    invoke-direct {v7, p0}, Lcom/lge/homecube/Launcher$8;-><init>(Lcom/lge/homecube/Launcher;)V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1432
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->mTitleGoogle:Landroid/widget/TextView;

    new-instance v7, Lcom/lge/homecube/Launcher$9;

    invoke-direct {v7, p0}, Lcom/lge/homecube/Launcher$9;-><init>(Lcom/lge/homecube/Launcher;)V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1440
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->mTitleDownloads:Landroid/widget/TextView;

    new-instance v7, Lcom/lge/homecube/Launcher$10;

    invoke-direct {v7, p0}, Lcom/lge/homecube/Launcher$10;-><init>(Lcom/lge/homecube/Launcher;)V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1448
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->mTitleGroup1:Landroid/widget/TextView;

    new-instance v7, Lcom/lge/homecube/Launcher$11;

    invoke-direct {v7, p0}, Lcom/lge/homecube/Launcher$11;-><init>(Lcom/lge/homecube/Launcher;)V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1456
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->mTitleGroup2:Landroid/widget/TextView;

    new-instance v7, Lcom/lge/homecube/Launcher$12;

    invoke-direct {v7, p0}, Lcom/lge/homecube/Launcher$12;-><init>(Lcom/lge/homecube/Launcher;)V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1464
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->mTitleGroup3:Landroid/widget/TextView;

    new-instance v7, Lcom/lge/homecube/Launcher$13;

    invoke-direct {v7, p0}, Lcom/lge/homecube/Launcher$13;-><init>(Lcom/lge/homecube/Launcher;)V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1471
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->mTitleGroup4:Landroid/widget/TextView;

    new-instance v7, Lcom/lge/homecube/Launcher$14;

    invoke-direct {v7, p0}, Lcom/lge/homecube/Launcher$14;-><init>(Lcom/lge/homecube/Launcher;)V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1479
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->mTitleGroup5:Landroid/widget/TextView;

    new-instance v7, Lcom/lge/homecube/Launcher$15;

    invoke-direct {v7, p0}, Lcom/lge/homecube/Launcher$15;-><init>(Lcom/lge/homecube/Launcher;)V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1486
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->mTitleGroup6:Landroid/widget/TextView;

    new-instance v7, Lcom/lge/homecube/Launcher$16;

    invoke-direct {v7, p0}, Lcom/lge/homecube/Launcher$16;-><init>(Lcom/lge/homecube/Launcher;)V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1498
    const v6, 0x7f05002d

    invoke-virtual {v1, v6}, Lcom/lge/homecube/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/lge/homecube/AddToHomeScreen;

    iput-object v6, p0, Lcom/lge/homecube/Launcher;->mAddToHomeScreen:Lcom/lge/homecube/AddToHomeScreen;

    .line 1499
    const v6, 0x7f05002f

    invoke-virtual {p0, v6}, Lcom/lge/homecube/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/lge/homecube/Launcher;->mGotoIdleString:Landroid/widget/TextView;

    .line 1500
    const v6, 0x7f05002e

    invoke-virtual {p0, v6}, Lcom/lge/homecube/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/lge/homecube/Launcher;->mGotoIdleIcon:Landroid/widget/ImageView;

    .line 1502
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->mRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1530
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->mAddToHomeScreen:Lcom/lge/homecube/AddToHomeScreen;

    invoke-virtual {v6, p0}, Lcom/lge/homecube/AddToHomeScreen;->setLauncher(Lcom/lge/homecube/Launcher;)V

    .line 1531
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->mAddToHomeScreen:Lcom/lge/homecube/AddToHomeScreen;

    invoke-virtual {v6, v1}, Lcom/lge/homecube/AddToHomeScreen;->setDragController(Lcom/lge/homecube/DragLayer;)V

    .line 1532
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->mAddToHomeScreen:Lcom/lge/homecube/AddToHomeScreen;

    iget-object v7, p0, Lcom/lge/homecube/Launcher;->mHandleView:Lcom/lge/homecube/HandleView;

    invoke-virtual {v6, v7}, Lcom/lge/homecube/AddToHomeScreen;->setHandle(Landroid/view/View;)V

    .line 1534
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->mAddToHomeScreen:Lcom/lge/homecube/AddToHomeScreen;

    invoke-virtual {v1, v6}, Lcom/lge/homecube/DragLayer;->setDragListener(Lcom/lge/homecube/DragController$DragListener;)V

    .line 1539
    const v6, 0x7f050030

    invoke-virtual {v1, v6}, Lcom/lge/homecube/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/homecube/DeleteZone;

    .line 1541
    .local v0, deleteZone:Lcom/lge/homecube/DeleteZone;
    const v6, 0x7f050011

    invoke-virtual {v2, v6}, Landroid/widget/SlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/lge/homecube/HandleView;

    iput-object v6, p0, Lcom/lge/homecube/Launcher;->mHandleView:Lcom/lge/homecube/HandleView;

    .line 1542
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->mHandleView:Lcom/lge/homecube/HandleView;

    invoke-virtual {v6, p0}, Lcom/lge/homecube/HandleView;->setLauncher(Lcom/lge/homecube/Launcher;)V

    .line 1543
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->mHandleView:Lcom/lge/homecube/HandleView;

    invoke-virtual {v6}, Lcom/lge/homecube/HandleView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/TransitionDrawable;

    iput-object v6, p0, Lcom/lge/homecube/Launcher;->mHandleIcon:Landroid/graphics/drawable/TransitionDrawable;

    .line 1544
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->mHandleIcon:Landroid/graphics/drawable/TransitionDrawable;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    .line 1546
    invoke-virtual {v2}, Landroid/widget/SlidingDrawer;->lock()V

    .line 1547
    new-instance v3, Lcom/lge/homecube/Launcher$DrawerManager;

    const/4 v6, 0x0

    invoke-direct {v3, p0, v6}, Lcom/lge/homecube/Launcher$DrawerManager;-><init>(Lcom/lge/homecube/Launcher;Lcom/lge/homecube/Launcher$1;)V

    .line 1548
    .local v3, drawerManager:Lcom/lge/homecube/Launcher$DrawerManager;
    invoke-virtual {v2, v3}, Landroid/widget/SlidingDrawer;->setOnDrawerOpenListener(Landroid/widget/SlidingDrawer$OnDrawerOpenListener;)V

    .line 1549
    invoke-virtual {v2, v3}, Landroid/widget/SlidingDrawer;->setOnDrawerCloseListener(Landroid/widget/SlidingDrawer$OnDrawerCloseListener;)V

    .line 1550
    invoke-virtual {v2, v3}, Landroid/widget/SlidingDrawer;->setOnDrawerScrollListener(Landroid/widget/SlidingDrawer$OnDrawerScrollListener;)V

    .line 1552
    invoke-virtual {v5, p0}, Lcom/lge/homecube/Workspace;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1553
    invoke-virtual {v5, v1}, Lcom/lge/homecube/Workspace;->setDragger(Lcom/lge/homecube/DragController;)V

    .line 1554
    invoke-virtual {v5, p0}, Lcom/lge/homecube/Workspace;->setLauncher(Lcom/lge/homecube/Launcher;)V

    .line 1555
    invoke-virtual {p0}, Lcom/lge/homecube/Launcher;->loadWallpaper()V

    .line 1557
    invoke-virtual {v0, p0}, Lcom/lge/homecube/DeleteZone;->setLauncher(Lcom/lge/homecube/Launcher;)V

    .line 1558
    invoke-virtual {v0, v1}, Lcom/lge/homecube/DeleteZone;->setDragController(Lcom/lge/homecube/DragLayer;)V

    .line 1559
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->mHandleView:Lcom/lge/homecube/HandleView;

    invoke-virtual {v0, v6}, Lcom/lge/homecube/DeleteZone;->setHandle(Landroid/view/View;)V

    .line 1561
    invoke-virtual {v1, v5}, Lcom/lge/homecube/DragLayer;->setDragScoller(Lcom/lge/homecube/DragScroller;)V

    .line 1562
    invoke-virtual {v1, v0}, Lcom/lge/homecube/DragLayer;->setDragListener(Lcom/lge/homecube/DragController$DragListener;)V

    .line 1565
    invoke-virtual {v1, p0}, Lcom/lge/homecube/DragLayer;->setLauncher(Lcom/lge/homecube/Launcher;)V

    .line 1568
    return-void

    .line 1258
    .end local v0           #deleteZone:Lcom/lge/homecube/DeleteZone;
    .end local v3           #drawerManager:Lcom/lge/homecube/Launcher$DrawerManager;
    :cond_471
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->mTitleOperator:Landroid/widget/TextView;

    aget-object v7, v4, v9

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_338

    .line 1266
    :cond_47a
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->mTitleGoogle:Landroid/widget/TextView;

    const/4 v7, 0x4

    aget-object v7, v4, v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_360

    .line 1274
    :pswitch_484
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->group1_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v6, v8}, Lcom/lge/homecube/AllAppsGridView;->setVisibility(I)V

    .line 1275
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->mTitleGroup1:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1276
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->group2_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v6, v8}, Lcom/lge/homecube/AllAppsGridView;->setVisibility(I)V

    .line 1277
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->mTitleGroup2:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1278
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->group3_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v6, v8}, Lcom/lge/homecube/AllAppsGridView;->setVisibility(I)V

    .line 1279
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->mTitleGroup3:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1280
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->group4_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v6, v8}, Lcom/lge/homecube/AllAppsGridView;->setVisibility(I)V

    .line 1281
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->mTitleGroup4:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1282
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->group5_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v6, v8}, Lcom/lge/homecube/AllAppsGridView;->setVisibility(I)V

    .line 1283
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->mTitleGroup5:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1284
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->group6_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v6, v8}, Lcom/lge/homecube/AllAppsGridView;->setVisibility(I)V

    .line 1285
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->mTitleGroup6:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_36b

    .line 1289
    :pswitch_4c2
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->mTitleGroup1:Landroid/widget/TextView;

    aget-object v7, v4, v11

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1290
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->group1_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v6, v9}, Lcom/lge/homecube/AllAppsGridView;->setVisibility(I)V

    .line 1291
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->mTitleGroup1:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1292
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->group2_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v6, v8}, Lcom/lge/homecube/AllAppsGridView;->setVisibility(I)V

    .line 1293
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->mTitleGroup2:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1294
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->group3_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v6, v8}, Lcom/lge/homecube/AllAppsGridView;->setVisibility(I)V

    .line 1295
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->mTitleGroup3:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1296
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->group4_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v6, v8}, Lcom/lge/homecube/AllAppsGridView;->setVisibility(I)V

    .line 1297
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->mTitleGroup4:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1298
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->group5_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v6, v8}, Lcom/lge/homecube/AllAppsGridView;->setVisibility(I)V

    .line 1299
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->mTitleGroup5:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1300
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->group6_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v6, v8}, Lcom/lge/homecube/AllAppsGridView;->setVisibility(I)V

    .line 1301
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->mTitleGroup6:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_36b

    .line 1305
    :pswitch_507
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->mTitleGroup1:Landroid/widget/TextView;

    aget-object v7, v4, v11

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1306
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->mTitleGroup2:Landroid/widget/TextView;

    aget-object v7, v4, v12

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1307
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->group1_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v6, v9}, Lcom/lge/homecube/AllAppsGridView;->setVisibility(I)V

    .line 1308
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->mTitleGroup1:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1309
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->group2_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v6, v9}, Lcom/lge/homecube/AllAppsGridView;->setVisibility(I)V

    .line 1310
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->mTitleGroup2:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1311
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->group3_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v6, v8}, Lcom/lge/homecube/AllAppsGridView;->setVisibility(I)V

    .line 1312
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->mTitleGroup3:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1313
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->group4_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v6, v8}, Lcom/lge/homecube/AllAppsGridView;->setVisibility(I)V

    .line 1314
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->mTitleGroup4:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1315
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->group5_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v6, v8}, Lcom/lge/homecube/AllAppsGridView;->setVisibility(I)V

    .line 1316
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->mTitleGroup5:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1317
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->group6_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v6, v8}, Lcom/lge/homecube/AllAppsGridView;->setVisibility(I)V

    .line 1318
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->mTitleGroup6:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_36b

    .line 1322
    :pswitch_553
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->mTitleGroup1:Landroid/widget/TextView;

    aget-object v7, v4, v11

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1323
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->mTitleGroup2:Landroid/widget/TextView;

    aget-object v7, v4, v12

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1324
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->mTitleGroup3:Landroid/widget/TextView;

    aget-object v7, v4, v8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1325
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->group1_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v6, v9}, Lcom/lge/homecube/AllAppsGridView;->setVisibility(I)V

    .line 1326
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->mTitleGroup1:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1327
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->group2_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v6, v9}, Lcom/lge/homecube/AllAppsGridView;->setVisibility(I)V

    .line 1328
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->mTitleGroup2:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1329
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->group3_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v6, v9}, Lcom/lge/homecube/AllAppsGridView;->setVisibility(I)V

    .line 1330
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->mTitleGroup3:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1331
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->group4_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v6, v8}, Lcom/lge/homecube/AllAppsGridView;->setVisibility(I)V

    .line 1332
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->mTitleGroup4:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1333
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->group5_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v6, v8}, Lcom/lge/homecube/AllAppsGridView;->setVisibility(I)V

    .line 1334
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->mTitleGroup5:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1335
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->group6_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v6, v8}, Lcom/lge/homecube/AllAppsGridView;->setVisibility(I)V

    .line 1336
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->mTitleGroup6:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_36b

    .line 1340
    :pswitch_5a6
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->mTitleGroup1:Landroid/widget/TextView;

    aget-object v7, v4, v11

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1341
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->mTitleGroup2:Landroid/widget/TextView;

    aget-object v7, v4, v12

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1342
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->mTitleGroup3:Landroid/widget/TextView;

    aget-object v7, v4, v8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1343
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->mTitleGroup4:Landroid/widget/TextView;

    const/16 v7, 0x9

    aget-object v7, v4, v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1344
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->group1_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v6, v9}, Lcom/lge/homecube/AllAppsGridView;->setVisibility(I)V

    .line 1345
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->mTitleGroup1:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1346
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->group2_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v6, v9}, Lcom/lge/homecube/AllAppsGridView;->setVisibility(I)V

    .line 1347
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->mTitleGroup2:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1348
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->group3_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v6, v9}, Lcom/lge/homecube/AllAppsGridView;->setVisibility(I)V

    .line 1349
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->mTitleGroup3:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1350
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->group4_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v6, v9}, Lcom/lge/homecube/AllAppsGridView;->setVisibility(I)V

    .line 1351
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->mTitleGroup4:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1352
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->group5_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v6, v8}, Lcom/lge/homecube/AllAppsGridView;->setVisibility(I)V

    .line 1353
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->mTitleGroup5:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1354
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->group6_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v6, v8}, Lcom/lge/homecube/AllAppsGridView;->setVisibility(I)V

    .line 1355
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->mTitleGroup6:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_36b

    .line 1359
    :pswitch_602
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->mTitleGroup1:Landroid/widget/TextView;

    aget-object v7, v4, v11

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1360
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->mTitleGroup2:Landroid/widget/TextView;

    aget-object v7, v4, v12

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1361
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->mTitleGroup3:Landroid/widget/TextView;

    aget-object v7, v4, v8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1362
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->mTitleGroup4:Landroid/widget/TextView;

    const/16 v7, 0x9

    aget-object v7, v4, v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1363
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->mTitleGroup5:Landroid/widget/TextView;

    const/16 v7, 0xa

    aget-object v7, v4, v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1364
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->group1_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v6, v9}, Lcom/lge/homecube/AllAppsGridView;->setVisibility(I)V

    .line 1365
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->mTitleGroup1:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1366
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->group2_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v6, v9}, Lcom/lge/homecube/AllAppsGridView;->setVisibility(I)V

    .line 1367
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->mTitleGroup2:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1368
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->group3_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v6, v9}, Lcom/lge/homecube/AllAppsGridView;->setVisibility(I)V

    .line 1369
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->mTitleGroup3:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1370
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->group4_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v6, v9}, Lcom/lge/homecube/AllAppsGridView;->setVisibility(I)V

    .line 1371
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->mTitleGroup4:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1372
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->group5_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v6, v9}, Lcom/lge/homecube/AllAppsGridView;->setVisibility(I)V

    .line 1373
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->mTitleGroup5:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1374
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->group6_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v6, v8}, Lcom/lge/homecube/AllAppsGridView;->setVisibility(I)V

    .line 1375
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->mTitleGroup6:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_36b

    .line 1379
    :pswitch_667
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->mTitleGroup1:Landroid/widget/TextView;

    aget-object v7, v4, v11

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1380
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->mTitleGroup2:Landroid/widget/TextView;

    aget-object v7, v4, v12

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1381
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->mTitleGroup3:Landroid/widget/TextView;

    aget-object v7, v4, v8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1382
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->mTitleGroup4:Landroid/widget/TextView;

    const/16 v7, 0x9

    aget-object v7, v4, v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1383
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->mTitleGroup5:Landroid/widget/TextView;

    const/16 v7, 0xa

    aget-object v7, v4, v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1384
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->mTitleGroup6:Landroid/widget/TextView;

    const/16 v7, 0xb

    aget-object v7, v4, v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1385
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->group1_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v6, v9}, Lcom/lge/homecube/AllAppsGridView;->setVisibility(I)V

    .line 1386
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->mTitleGroup1:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1387
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->group2_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v6, v9}, Lcom/lge/homecube/AllAppsGridView;->setVisibility(I)V

    .line 1388
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->mTitleGroup2:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1389
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->group3_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v6, v9}, Lcom/lge/homecube/AllAppsGridView;->setVisibility(I)V

    .line 1390
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->mTitleGroup3:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1391
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->group4_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v6, v9}, Lcom/lge/homecube/AllAppsGridView;->setVisibility(I)V

    .line 1392
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->mTitleGroup4:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1393
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->group5_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v6, v9}, Lcom/lge/homecube/AllAppsGridView;->setVisibility(I)V

    .line 1394
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->mTitleGroup5:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1395
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->group6_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v6, v9}, Lcom/lge/homecube/AllAppsGridView;->setVisibility(I)V

    .line 1396
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->mTitleGroup6:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_36b

    .line 1271
    nop

    :pswitch_data_6d6
    .packed-switch 0x0
        :pswitch_484
        :pswitch_4c2
        :pswitch_507
        :pswitch_553
        :pswitch_5a6
        :pswitch_602
        :pswitch_667
    .end packed-switch
.end method

.method private showAddDialog(Lcom/lge/homecube/CellLayout$CellInfo;)V
    .registers 3
    .parameter "cellInfo"

    .prologue
    const/4 v0, 0x1

    .line 3420
    iput-object p1, p0, Lcom/lge/homecube/Launcher;->mAddItemCellInfo:Lcom/lge/homecube/CellLayout$CellInfo;

    .line 3421
    iput-boolean v0, p0, Lcom/lge/homecube/Launcher;->mWaitingForResult:Z

    .line 3422
    invoke-virtual {p0, v0}, Lcom/lge/homecube/Launcher;->showDialog(I)V

    .line 3423
    return-void
.end method

.method private showNotifications()V
    .registers 3

    .prologue
    .line 2799
    const-string v1, "statusbar"

    invoke-virtual {p0, v1}, Lcom/lge/homecube/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 2800
    .local v0, statusBar:Landroid/app/StatusBarManager;
    if-eqz v0, :cond_d

    .line 2801
    invoke-virtual {v0}, Landroid/app/StatusBarManager;->expand()V

    .line 2803
    :cond_d
    return-void
.end method

.method private startLoaders()V
    .registers 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 531
    sget-object v1, Lcom/lge/homecube/Launcher;->sModel:Lcom/lge/homecube/LauncherModel;

    iget-boolean v2, p0, Lcom/lge/homecube/Launcher;->mLocaleChanged:Z

    invoke-virtual {v1, v3, p0, v2}, Lcom/lge/homecube/LauncherModel;->loadApplications(ZLcom/lge/homecube/Launcher;Z)Z

    move-result v0

    .line 532
    .local v0, loadApplications:Z
    sget-object v1, Lcom/lge/homecube/Launcher;->sModel:Lcom/lge/homecube/LauncherModel;

    iget-boolean v2, p0, Lcom/lge/homecube/Launcher;->mLocaleChanged:Z

    if-nez v2, :cond_19

    move v2, v3

    :goto_11
    iget-boolean v3, p0, Lcom/lge/homecube/Launcher;->mLocaleChanged:Z

    invoke-virtual {v1, v2, p0, v3, v0}, Lcom/lge/homecube/LauncherModel;->loadUserItems(ZLcom/lge/homecube/Launcher;ZZ)V

    .line 534
    iput-boolean v4, p0, Lcom/lge/homecube/Launcher;->mRestoring:Z

    .line 535
    return-void

    :cond_19
    move v2, v4

    .line 532
    goto :goto_11
.end method

.method private startWallpaper()V
    .registers 3

    .prologue
    .line 2806
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2807
    .local v0, pickWallpaper:Landroid/content/Intent;
    const v1, 0x7f090002

    invoke-virtual {p0, v1}, Lcom/lge/homecube/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/lge/homecube/Launcher;->startActivity(Landroid/content/Intent;)V

    .line 2808
    return-void
.end method

.method private updateShortcutsForPackage(Ljava/lang/String;)V
    .registers 3
    .parameter "packageName"

    .prologue
    .line 2601
    if-eqz p1, :cond_d

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_d

    .line 2602
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->mWorkspace:Lcom/lge/homecube/Workspace;

    invoke-virtual {v0, p1}, Lcom/lge/homecube/Workspace;->updateShortcutsForPackage(Ljava/lang/String;)V

    .line 2604
    :cond_d
    return-void
.end method


# virtual methods
.method public DeleteGroup(I)V
    .registers 8
    .parameter "id"

    .prologue
    const/4 v1, 0x1

    const/16 v5, 0x9

    const/16 v4, 0xa

    const/16 v3, 0xb

    const/16 v2, 0x8

    .line 5795
    invoke-direct {p0}, Lcom/lge/homecube/Launcher;->loadGroupNumPreferences()I

    move-result v0

    iput v0, p0, Lcom/lge/homecube/Launcher;->NumofAddedGroup:I

    .line 5798
    iget v0, p0, Lcom/lge/homecube/Launcher;->NumofAddedGroup:I

    packed-switch v0, :pswitch_data_1a4

    .line 5838
    :goto_14
    packed-switch p1, :pswitch_data_1b4

    .line 5880
    :goto_17
    return-void

    .line 5800
    :pswitch_18
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->group1_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v0, v2}, Lcom/lge/homecube/AllAppsGridView;->setVisibility(I)V

    .line 5801
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->mTitleGroup1:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5802
    iget v0, p0, Lcom/lge/homecube/Launcher;->NumofAddedGroup:I

    invoke-virtual {p0, p0, p1, v0}, Lcom/lge/homecube/Launcher;->ReorganizeGroupItem(Landroid/content/Context;II)V

    .line 5803
    iget v0, p0, Lcom/lge/homecube/Launcher;->NumofAddedGroup:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/lge/homecube/Launcher;->SetGroupNumPreference(I)V

    goto :goto_14

    .line 5807
    :pswitch_2e
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->group2_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v0, v2}, Lcom/lge/homecube/AllAppsGridView;->setVisibility(I)V

    .line 5808
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->mTitleGroup2:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5809
    iget v0, p0, Lcom/lge/homecube/Launcher;->NumofAddedGroup:I

    invoke-virtual {p0, p0, p1, v0}, Lcom/lge/homecube/Launcher;->ReorganizeGroupItem(Landroid/content/Context;II)V

    .line 5810
    iget v0, p0, Lcom/lge/homecube/Launcher;->NumofAddedGroup:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/lge/homecube/Launcher;->SetGroupNumPreference(I)V

    goto :goto_14

    .line 5813
    :pswitch_44
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->group3_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v0, v2}, Lcom/lge/homecube/AllAppsGridView;->setVisibility(I)V

    .line 5814
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->mTitleGroup3:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5815
    iget v0, p0, Lcom/lge/homecube/Launcher;->NumofAddedGroup:I

    invoke-virtual {p0, p0, p1, v0}, Lcom/lge/homecube/Launcher;->ReorganizeGroupItem(Landroid/content/Context;II)V

    .line 5816
    iget v0, p0, Lcom/lge/homecube/Launcher;->NumofAddedGroup:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/lge/homecube/Launcher;->SetGroupNumPreference(I)V

    goto :goto_14

    .line 5819
    :pswitch_5a
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->group4_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v0, v2}, Lcom/lge/homecube/AllAppsGridView;->setVisibility(I)V

    .line 5820
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->mTitleGroup4:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5821
    iget v0, p0, Lcom/lge/homecube/Launcher;->NumofAddedGroup:I

    invoke-virtual {p0, p0, p1, v0}, Lcom/lge/homecube/Launcher;->ReorganizeGroupItem(Landroid/content/Context;II)V

    .line 5822
    iget v0, p0, Lcom/lge/homecube/Launcher;->NumofAddedGroup:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/lge/homecube/Launcher;->SetGroupNumPreference(I)V

    goto :goto_14

    .line 5825
    :pswitch_70
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->group5_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v0, v2}, Lcom/lge/homecube/AllAppsGridView;->setVisibility(I)V

    .line 5826
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->mTitleGroup5:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5827
    iget v0, p0, Lcom/lge/homecube/Launcher;->NumofAddedGroup:I

    invoke-virtual {p0, p0, p1, v0}, Lcom/lge/homecube/Launcher;->ReorganizeGroupItem(Landroid/content/Context;II)V

    .line 5828
    iget v0, p0, Lcom/lge/homecube/Launcher;->NumofAddedGroup:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/lge/homecube/Launcher;->SetGroupNumPreference(I)V

    goto :goto_14

    .line 5831
    :pswitch_86
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->group6_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v0, v2}, Lcom/lge/homecube/AllAppsGridView;->setVisibility(I)V

    .line 5832
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->mTitleGroup6:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5833
    iget v0, p0, Lcom/lge/homecube/Launcher;->NumofAddedGroup:I

    invoke-virtual {p0, p0, p1, v0}, Lcom/lge/homecube/Launcher;->ReorganizeGroupItem(Landroid/content/Context;II)V

    .line 5834
    iget v0, p0, Lcom/lge/homecube/Launcher;->NumofAddedGroup:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/lge/homecube/Launcher;->SetGroupNumPreference(I)V

    goto/16 :goto_14

    .line 5840
    :pswitch_9d
    const/4 v0, 0x7

    invoke-direct {p0, v2}, Lcom/lge/homecube/Launcher;->loadGroupname(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/lge/homecube/Launcher;->SetGroupname(ILjava/lang/String;)V

    .line 5841
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->mTitleGroup1:Landroid/widget/TextView;

    const/4 v1, 0x7

    invoke-direct {p0, v1}, Lcom/lge/homecube/Launcher;->loadGroupname(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5842
    invoke-direct {p0, v5}, Lcom/lge/homecube/Launcher;->loadGroupname(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/lge/homecube/Launcher;->SetGroupname(ILjava/lang/String;)V

    .line 5843
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->mTitleGroup2:Landroid/widget/TextView;

    invoke-direct {p0, v2}, Lcom/lge/homecube/Launcher;->loadGroupname(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5844
    invoke-direct {p0, v4}, Lcom/lge/homecube/Launcher;->loadGroupname(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v5, v0}, Lcom/lge/homecube/Launcher;->SetGroupname(ILjava/lang/String;)V

    .line 5845
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->mTitleGroup3:Landroid/widget/TextView;

    invoke-direct {p0, v5}, Lcom/lge/homecube/Launcher;->loadGroupname(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5846
    invoke-direct {p0, v3}, Lcom/lge/homecube/Launcher;->loadGroupname(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v4, v0}, Lcom/lge/homecube/Launcher;->SetGroupname(ILjava/lang/String;)V

    .line 5847
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->mTitleGroup4:Landroid/widget/TextView;

    invoke-direct {p0, v4}, Lcom/lge/homecube/Launcher;->loadGroupname(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5848
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcom/lge/homecube/Launcher;->loadGroupname(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/lge/homecube/Launcher;->SetGroupname(ILjava/lang/String;)V

    .line 5849
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->mTitleGroup5:Landroid/widget/TextView;

    invoke-direct {p0, v3}, Lcom/lge/homecube/Launcher;->loadGroupname(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_17

    .line 5852
    :pswitch_f3
    invoke-direct {p0, v5}, Lcom/lge/homecube/Launcher;->loadGroupname(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/lge/homecube/Launcher;->SetGroupname(ILjava/lang/String;)V

    .line 5853
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->mTitleGroup2:Landroid/widget/TextView;

    invoke-direct {p0, v2}, Lcom/lge/homecube/Launcher;->loadGroupname(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5854
    invoke-direct {p0, v4}, Lcom/lge/homecube/Launcher;->loadGroupname(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v5, v0}, Lcom/lge/homecube/Launcher;->SetGroupname(ILjava/lang/String;)V

    .line 5855
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->mTitleGroup3:Landroid/widget/TextView;

    invoke-direct {p0, v5}, Lcom/lge/homecube/Launcher;->loadGroupname(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5856
    invoke-direct {p0, v3}, Lcom/lge/homecube/Launcher;->loadGroupname(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v4, v0}, Lcom/lge/homecube/Launcher;->SetGroupname(ILjava/lang/String;)V

    .line 5857
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->mTitleGroup4:Landroid/widget/TextView;

    invoke-direct {p0, v4}, Lcom/lge/homecube/Launcher;->loadGroupname(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5858
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcom/lge/homecube/Launcher;->loadGroupname(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/lge/homecube/Launcher;->SetGroupname(ILjava/lang/String;)V

    .line 5859
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->mTitleGroup5:Landroid/widget/TextView;

    invoke-direct {p0, v3}, Lcom/lge/homecube/Launcher;->loadGroupname(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_17

    .line 5862
    :pswitch_137
    invoke-direct {p0, v4}, Lcom/lge/homecube/Launcher;->loadGroupname(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v5, v0}, Lcom/lge/homecube/Launcher;->SetGroupname(ILjava/lang/String;)V

    .line 5863
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->mTitleGroup3:Landroid/widget/TextView;

    invoke-direct {p0, v5}, Lcom/lge/homecube/Launcher;->loadGroupname(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5864
    invoke-direct {p0, v3}, Lcom/lge/homecube/Launcher;->loadGroupname(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v4, v0}, Lcom/lge/homecube/Launcher;->SetGroupname(ILjava/lang/String;)V

    .line 5865
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->mTitleGroup4:Landroid/widget/TextView;

    invoke-direct {p0, v4}, Lcom/lge/homecube/Launcher;->loadGroupname(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5866
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcom/lge/homecube/Launcher;->loadGroupname(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/lge/homecube/Launcher;->SetGroupname(ILjava/lang/String;)V

    .line 5867
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->mTitleGroup5:Landroid/widget/TextView;

    invoke-direct {p0, v3}, Lcom/lge/homecube/Launcher;->loadGroupname(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_17

    .line 5870
    :pswitch_16b
    invoke-direct {p0, v3}, Lcom/lge/homecube/Launcher;->loadGroupname(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v4, v0}, Lcom/lge/homecube/Launcher;->SetGroupname(ILjava/lang/String;)V

    .line 5871
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->mTitleGroup4:Landroid/widget/TextView;

    invoke-direct {p0, v4}, Lcom/lge/homecube/Launcher;->loadGroupname(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5872
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcom/lge/homecube/Launcher;->loadGroupname(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/lge/homecube/Launcher;->SetGroupname(ILjava/lang/String;)V

    .line 5873
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->mTitleGroup5:Landroid/widget/TextView;

    invoke-direct {p0, v3}, Lcom/lge/homecube/Launcher;->loadGroupname(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_17

    .line 5876
    :pswitch_18f
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcom/lge/homecube/Launcher;->loadGroupname(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/lge/homecube/Launcher;->SetGroupname(ILjava/lang/String;)V

    .line 5877
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->mTitleGroup5:Landroid/widget/TextView;

    invoke-direct {p0, v3}, Lcom/lge/homecube/Launcher;->loadGroupname(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_17

    .line 5798
    nop

    :pswitch_data_1a4
    .packed-switch 0x1
        :pswitch_18
        :pswitch_2e
        :pswitch_44
        :pswitch_5a
        :pswitch_70
        :pswitch_86
    .end packed-switch

    .line 5838
    :pswitch_data_1b4
    .packed-switch 0x6
        :pswitch_9d
        :pswitch_f3
        :pswitch_137
        :pswitch_16b
        :pswitch_18f
    .end packed-switch
.end method

.method public DropOnMenu(FFLjava/lang/Object;)Z
    .registers 14
    .parameter "xPos"
    .parameter "yPos"
    .parameter "DragInfo"

    .prologue
    .line 5116
    float-to-int v5, p1

    .line 5117
    .local v5, x:I
    float-to-int v6, p2

    .line 5118
    .local v6, y:I
    move-object v0, p3

    check-cast v0, Lcom/lge/homecube/ApplicationInfo;

    move-object v3, v0

    .line 5119
    .local v3, mDragInfo:Lcom/lge/homecube/ApplicationInfo;
    const/4 v2, -0x1

    .line 5120
    .local v2, index:I
    iget-object v7, p0, Lcom/lge/homecube/Launcher;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v7}, Landroid/widget/ScrollView;->getHeight()I

    move-result v4

    .line 5122
    .local v4, scrollview_height:I
    iget-object v7, p0, Lcom/lge/homecube/Launcher;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v7}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v7

    add-int/2addr v6, v7

    .line 5125
    iget-object v7, p0, Lcom/lge/homecube/Launcher;->lastVisitedGroupView:Lcom/lge/homecube/AllAppsGridView;

    if-eqz v7, :cond_20

    .line 5126
    iget-object v7, p0, Lcom/lge/homecube/Launcher;->lastVisitedGroupView:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v7}, Lcom/lge/homecube/AllAppsGridView;->refreshGroupViewItems()V

    .line 5127
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/lge/homecube/Launcher;->lastVisitedGroupView:Lcom/lge/homecube/AllAppsGridView;

    .line 5131
    :cond_20
    iget-object v7, p0, Lcom/lge/homecube/Launcher;->mRelativeLayout:Landroid/widget/RelativeLayout;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 5159
    iget-object v7, p0, Lcom/lge/homecube/Launcher;->operator_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v7}, Lcom/lge/homecube/AllAppsGridView;->getTop()I

    move-result v7

    iput v7, p0, Lcom/lge/homecube/Launcher;->mOperatorGridTop:I

    .line 5160
    iget-object v7, p0, Lcom/lge/homecube/Launcher;->commuication_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v7}, Lcom/lge/homecube/AllAppsGridView;->getTop()I

    move-result v7

    iput v7, p0, Lcom/lge/homecube/Launcher;->mCommunicationGridTop:I

    .line 5161
    iget-object v7, p0, Lcom/lge/homecube/Launcher;->multimedia_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v7}, Lcom/lge/homecube/AllAppsGridView;->getTop()I

    move-result v7

    iput v7, p0, Lcom/lge/homecube/Launcher;->mMultimediaGridTop:I

    .line 5162
    iget-object v7, p0, Lcom/lge/homecube/Launcher;->utilities_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v7}, Lcom/lge/homecube/AllAppsGridView;->getTop()I

    move-result v7

    iput v7, p0, Lcom/lge/homecube/Launcher;->mUtilitiesGridTop:I

    .line 5163
    iget-object v7, p0, Lcom/lge/homecube/Launcher;->google_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v7}, Lcom/lge/homecube/AllAppsGridView;->getTop()I

    move-result v7

    iput v7, p0, Lcom/lge/homecube/Launcher;->mGoogleGridTop:I

    .line 5164
    iget-object v7, p0, Lcom/lge/homecube/Launcher;->downloads_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v7}, Lcom/lge/homecube/AllAppsGridView;->getTop()I

    move-result v7

    iput v7, p0, Lcom/lge/homecube/Launcher;->mDownloadsGridTop:I

    .line 5165
    iget-object v7, p0, Lcom/lge/homecube/Launcher;->group1_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v7}, Lcom/lge/homecube/AllAppsGridView;->getTop()I

    move-result v7

    iput v7, p0, Lcom/lge/homecube/Launcher;->mGroup1GridTop:I

    .line 5166
    iget-object v7, p0, Lcom/lge/homecube/Launcher;->group2_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v7}, Lcom/lge/homecube/AllAppsGridView;->getTop()I

    move-result v7

    iput v7, p0, Lcom/lge/homecube/Launcher;->mGroup2GridTop:I

    .line 5167
    iget-object v7, p0, Lcom/lge/homecube/Launcher;->group3_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v7}, Lcom/lge/homecube/AllAppsGridView;->getTop()I

    move-result v7

    iput v7, p0, Lcom/lge/homecube/Launcher;->mGroup3GridTop:I

    .line 5168
    iget-object v7, p0, Lcom/lge/homecube/Launcher;->group4_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v7}, Lcom/lge/homecube/AllAppsGridView;->getTop()I

    move-result v7

    iput v7, p0, Lcom/lge/homecube/Launcher;->mGroup4GridTop:I

    .line 5169
    iget-object v7, p0, Lcom/lge/homecube/Launcher;->group5_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v7}, Lcom/lge/homecube/AllAppsGridView;->getTop()I

    move-result v7

    iput v7, p0, Lcom/lge/homecube/Launcher;->mGroup5GridTop:I

    .line 5170
    iget-object v7, p0, Lcom/lge/homecube/Launcher;->group6_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v7}, Lcom/lge/homecube/AllAppsGridView;->getTop()I

    move-result v7

    iput v7, p0, Lcom/lge/homecube/Launcher;->mGroup6GridTop:I

    .line 5172
    iget-object v7, p0, Lcom/lge/homecube/Launcher;->operator_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v7}, Lcom/lge/homecube/AllAppsGridView;->getHeight()I

    move-result v7

    iput v7, p0, Lcom/lge/homecube/Launcher;->mOperatorGridHeight:I

    .line 5173
    iget-object v7, p0, Lcom/lge/homecube/Launcher;->commuication_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v7}, Lcom/lge/homecube/AllAppsGridView;->getHeight()I

    move-result v7

    iput v7, p0, Lcom/lge/homecube/Launcher;->mCommunicationGridHeight:I

    .line 5174
    iget-object v7, p0, Lcom/lge/homecube/Launcher;->multimedia_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v7}, Lcom/lge/homecube/AllAppsGridView;->getHeight()I

    move-result v7

    iput v7, p0, Lcom/lge/homecube/Launcher;->mMultimediaGridHeight:I

    .line 5175
    iget-object v7, p0, Lcom/lge/homecube/Launcher;->utilities_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v7}, Lcom/lge/homecube/AllAppsGridView;->getHeight()I

    move-result v7

    iput v7, p0, Lcom/lge/homecube/Launcher;->mUtilitiesGridHeight:I

    .line 5176
    iget-object v7, p0, Lcom/lge/homecube/Launcher;->google_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v7}, Lcom/lge/homecube/AllAppsGridView;->getHeight()I

    move-result v7

    iput v7, p0, Lcom/lge/homecube/Launcher;->mGoogleGridHeight:I

    .line 5177
    iget-object v7, p0, Lcom/lge/homecube/Launcher;->downloads_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v7}, Lcom/lge/homecube/AllAppsGridView;->getHeight()I

    move-result v7

    iput v7, p0, Lcom/lge/homecube/Launcher;->mDownloadsGridHeight:I

    .line 5178
    iget-object v7, p0, Lcom/lge/homecube/Launcher;->group1_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v7}, Lcom/lge/homecube/AllAppsGridView;->getHeight()I

    move-result v7

    iput v7, p0, Lcom/lge/homecube/Launcher;->mGroup1GridHeight:I

    .line 5179
    iget-object v7, p0, Lcom/lge/homecube/Launcher;->group2_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v7}, Lcom/lge/homecube/AllAppsGridView;->getHeight()I

    move-result v7

    iput v7, p0, Lcom/lge/homecube/Launcher;->mGroup2GridHeight:I

    .line 5180
    iget-object v7, p0, Lcom/lge/homecube/Launcher;->group3_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v7}, Lcom/lge/homecube/AllAppsGridView;->getHeight()I

    move-result v7

    iput v7, p0, Lcom/lge/homecube/Launcher;->mGroup3GridHeight:I

    .line 5181
    iget-object v7, p0, Lcom/lge/homecube/Launcher;->group4_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v7}, Lcom/lge/homecube/AllAppsGridView;->getHeight()I

    move-result v7

    iput v7, p0, Lcom/lge/homecube/Launcher;->mGroup4GridHeight:I

    .line 5182
    iget-object v7, p0, Lcom/lge/homecube/Launcher;->group5_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v7}, Lcom/lge/homecube/AllAppsGridView;->getHeight()I

    move-result v7

    iput v7, p0, Lcom/lge/homecube/Launcher;->mGroup5GridHeight:I

    .line 5183
    iget-object v7, p0, Lcom/lge/homecube/Launcher;->group6_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v7}, Lcom/lge/homecube/AllAppsGridView;->getHeight()I

    move-result v7

    iput v7, p0, Lcom/lge/homecube/Launcher;->mGroup6GridHeight:I

    .line 5185
    iget v7, p0, Lcom/lge/homecube/Launcher;->mOperatorGridTop:I

    if-ge v7, v6, :cond_1a6

    iget v7, p0, Lcom/lge/homecube/Launcher;->mOperatorGridTop:I

    iget v8, p0, Lcom/lge/homecube/Launcher;->mOperatorGridHeight:I

    add-int/2addr v7, v8

    if-ge v6, v7, :cond_1a6

    .line 5186
    iget-object v7, p0, Lcom/lge/homecube/Launcher;->operator_Grid:Lcom/lge/homecube/AllAppsGridView;

    iget v8, p0, Lcom/lge/homecube/Launcher;->mOperatorGridTop:I

    sub-int v8, v6, v8

    iget v9, p0, Lcom/lge/homecube/Launcher;->mOperatorGridHeight:I

    invoke-virtual {v7, v5, v8, v9}, Lcom/lge/homecube/AllAppsGridView;->getIndex(III)I

    move-result v2

    .line 5187
    const-string v7, "CubeHome"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Drop Grid  : Operator   ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  : hwang072"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5189
    const/4 v7, -0x1

    if-eq v2, v7, :cond_131

    .line 5190
    iget-object v7, p0, Lcom/lge/homecube/Launcher;->mOperatorItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 5191
    const/4 v7, 0x0

    iput v7, p0, Lcom/lge/homecube/Launcher;->mDropItemGrid:I

    .line 5192
    iput v2, p0, Lcom/lge/homecube/Launcher;->mDropItemIndex:I

    .line 5193
    iget v7, v3, Lcom/lge/homecube/ApplicationInfo;->position:I

    iput v7, p0, Lcom/lge/homecube/Launcher;->mDraggedItemIndex:I

    .line 5194
    const/4 v7, 0x0

    invoke-static {p0, v3, v2, v7}, Lcom/lge/homecube/Launcher;->moveItemInDatabase(Landroid/content/Context;Lcom/lge/homecube/ApplicationInfo;II)V

    .line 5342
    :cond_131
    :goto_131
    const/4 v7, -0x1

    if-eq v2, v7, :cond_190

    .line 5343
    iget v7, p0, Lcom/lge/homecube/Launcher;->mDraggedItemGrid:I

    packed-switch v7, :pswitch_data_72c

    .line 5469
    :goto_139
    invoke-virtual {p0}, Lcom/lge/homecube/Launcher;->setGridViewHeight()V

    .line 5471
    iget-object v7, p0, Lcom/lge/homecube/Launcher;->operator_Grid:Lcom/lge/homecube/AllAppsGridView;

    iget-object v8, p0, Lcom/lge/homecube/Launcher;->mOperatorList:Lcom/lge/homecube/Launcher$AppsAdapter;

    invoke-virtual {v7, v8}, Lcom/lge/homecube/AllAppsGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 5472
    iget-object v7, p0, Lcom/lge/homecube/Launcher;->commuication_Grid:Lcom/lge/homecube/AllAppsGridView;

    iget-object v8, p0, Lcom/lge/homecube/Launcher;->mCommunicationList:Lcom/lge/homecube/Launcher$AppsAdapter;

    invoke-virtual {v7, v8}, Lcom/lge/homecube/AllAppsGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 5473
    iget-object v7, p0, Lcom/lge/homecube/Launcher;->multimedia_Grid:Lcom/lge/homecube/AllAppsGridView;

    iget-object v8, p0, Lcom/lge/homecube/Launcher;->mMultimediaList:Lcom/lge/homecube/Launcher$AppsAdapter;

    invoke-virtual {v7, v8}, Lcom/lge/homecube/AllAppsGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 5474
    iget-object v7, p0, Lcom/lge/homecube/Launcher;->utilities_Grid:Lcom/lge/homecube/AllAppsGridView;

    iget-object v8, p0, Lcom/lge/homecube/Launcher;->mUtilitiesList:Lcom/lge/homecube/Launcher$AppsAdapter;

    invoke-virtual {v7, v8}, Lcom/lge/homecube/AllAppsGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 5475
    iget-object v7, p0, Lcom/lge/homecube/Launcher;->google_Grid:Lcom/lge/homecube/AllAppsGridView;

    iget-object v8, p0, Lcom/lge/homecube/Launcher;->mGoogleList:Lcom/lge/homecube/Launcher$AppsAdapter;

    invoke-virtual {v7, v8}, Lcom/lge/homecube/AllAppsGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 5476
    iget-object v7, p0, Lcom/lge/homecube/Launcher;->downloads_Grid:Lcom/lge/homecube/AllAppsGridView;

    iget-object v8, p0, Lcom/lge/homecube/Launcher;->mDownloadsList:Lcom/lge/homecube/Launcher$AppsAdapter;

    invoke-virtual {v7, v8}, Lcom/lge/homecube/AllAppsGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 5477
    iget-object v7, p0, Lcom/lge/homecube/Launcher;->group1_Grid:Lcom/lge/homecube/AllAppsGridView;

    iget-object v8, p0, Lcom/lge/homecube/Launcher;->mGroup1List:Lcom/lge/homecube/Launcher$AppsAdapter;

    invoke-virtual {v7, v8}, Lcom/lge/homecube/AllAppsGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 5478
    iget-object v7, p0, Lcom/lge/homecube/Launcher;->group2_Grid:Lcom/lge/homecube/AllAppsGridView;

    iget-object v8, p0, Lcom/lge/homecube/Launcher;->mGroup2List:Lcom/lge/homecube/Launcher$AppsAdapter;

    invoke-virtual {v7, v8}, Lcom/lge/homecube/AllAppsGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 5479
    iget-object v7, p0, Lcom/lge/homecube/Launcher;->group3_Grid:Lcom/lge/homecube/AllAppsGridView;

    iget-object v8, p0, Lcom/lge/homecube/Launcher;->mGroup3List:Lcom/lge/homecube/Launcher$AppsAdapter;

    invoke-virtual {v7, v8}, Lcom/lge/homecube/AllAppsGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 5480
    iget-object v7, p0, Lcom/lge/homecube/Launcher;->group4_Grid:Lcom/lge/homecube/AllAppsGridView;

    iget-object v8, p0, Lcom/lge/homecube/Launcher;->mGroup4List:Lcom/lge/homecube/Launcher$AppsAdapter;

    invoke-virtual {v7, v8}, Lcom/lge/homecube/AllAppsGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 5481
    iget-object v7, p0, Lcom/lge/homecube/Launcher;->group5_Grid:Lcom/lge/homecube/AllAppsGridView;

    iget-object v8, p0, Lcom/lge/homecube/Launcher;->mGroup5List:Lcom/lge/homecube/Launcher$AppsAdapter;

    invoke-virtual {v7, v8}, Lcom/lge/homecube/AllAppsGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 5482
    iget-object v7, p0, Lcom/lge/homecube/Launcher;->group6_Grid:Lcom/lge/homecube/AllAppsGridView;

    iget-object v8, p0, Lcom/lge/homecube/Launcher;->mGroup6List:Lcom/lge/homecube/Launcher$AppsAdapter;

    invoke-virtual {v7, v8}, Lcom/lge/homecube/AllAppsGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 5487
    :cond_190
    const/4 v1, 0x0

    .end local p1
    .local v1, i:I
    :goto_191
    iget-object v7, p0, Lcom/lge/homecube/Launcher;->mOperatorItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_62d

    .line 5489
    iget-object v7, p0, Lcom/lge/homecube/Launcher;->mOperatorItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lge/homecube/ApplicationInfo;

    iput v1, p1, Lcom/lge/homecube/ApplicationInfo;->position:I

    .line 5487
    add-int/lit8 v1, v1, 0x1

    goto :goto_191

    .line 5197
    .end local v1           #i:I
    .restart local p1
    :cond_1a6
    iget v7, p0, Lcom/lge/homecube/Launcher;->mCommunicationGridTop:I

    if-ge v7, v6, :cond_1f2

    iget v7, p0, Lcom/lge/homecube/Launcher;->mCommunicationGridTop:I

    iget v8, p0, Lcom/lge/homecube/Launcher;->mCommunicationGridHeight:I

    add-int/2addr v7, v8

    if-ge v6, v7, :cond_1f2

    .line 5199
    iget-object v7, p0, Lcom/lge/homecube/Launcher;->commuication_Grid:Lcom/lge/homecube/AllAppsGridView;

    iget v8, p0, Lcom/lge/homecube/Launcher;->mCommunicationGridTop:I

    sub-int v8, v6, v8

    iget v9, p0, Lcom/lge/homecube/Launcher;->mCommunicationGridHeight:I

    invoke-virtual {v7, v5, v8, v9}, Lcom/lge/homecube/AllAppsGridView;->getIndex(III)I

    move-result v2

    .line 5200
    const-string v7, "CubeHome"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Drop Grid : Communication   ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  : hwang072"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5202
    const/4 v7, -0x1

    if-eq v2, v7, :cond_131

    .line 5203
    iget-object v7, p0, Lcom/lge/homecube/Launcher;->mCommunicationItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 5204
    const/4 v7, 0x1

    iput v7, p0, Lcom/lge/homecube/Launcher;->mDropItemGrid:I

    .line 5205
    iput v2, p0, Lcom/lge/homecube/Launcher;->mDropItemIndex:I

    .line 5206
    iget v7, v3, Lcom/lge/homecube/ApplicationInfo;->position:I

    iput v7, p0, Lcom/lge/homecube/Launcher;->mDraggedItemIndex:I

    .line 5207
    const/4 v7, 0x1

    invoke-static {p0, v3, v2, v7}, Lcom/lge/homecube/Launcher;->moveItemInDatabase(Landroid/content/Context;Lcom/lge/homecube/ApplicationInfo;II)V

    goto/16 :goto_131

    .line 5213
    :cond_1f2
    iget v7, p0, Lcom/lge/homecube/Launcher;->mMultimediaGridTop:I

    if-ge v7, v6, :cond_23e

    iget v7, p0, Lcom/lge/homecube/Launcher;->mMultimediaGridTop:I

    iget v8, p0, Lcom/lge/homecube/Launcher;->mMultimediaGridHeight:I

    add-int/2addr v7, v8

    if-ge v6, v7, :cond_23e

    .line 5215
    iget-object v7, p0, Lcom/lge/homecube/Launcher;->multimedia_Grid:Lcom/lge/homecube/AllAppsGridView;

    iget v8, p0, Lcom/lge/homecube/Launcher;->mMultimediaGridTop:I

    sub-int v8, v6, v8

    iget v9, p0, Lcom/lge/homecube/Launcher;->mMultimediaGridTop:I

    invoke-virtual {v7, v5, v8, v9}, Lcom/lge/homecube/AllAppsGridView;->getIndex(III)I

    move-result v2

    .line 5216
    const-string v7, "CubeHome"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Drop Grid  : Multimedia   ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  : hwang072"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5218
    const/4 v7, -0x1

    if-eq v2, v7, :cond_131

    .line 5219
    iget-object v7, p0, Lcom/lge/homecube/Launcher;->mMultimediaItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 5220
    const/4 v7, 0x2

    iput v7, p0, Lcom/lge/homecube/Launcher;->mDropItemGrid:I

    .line 5221
    iput v2, p0, Lcom/lge/homecube/Launcher;->mDropItemIndex:I

    .line 5222
    iget v7, v3, Lcom/lge/homecube/ApplicationInfo;->position:I

    iput v7, p0, Lcom/lge/homecube/Launcher;->mDraggedItemIndex:I

    .line 5223
    const/4 v7, 0x2

    invoke-static {p0, v3, v2, v7}, Lcom/lge/homecube/Launcher;->moveItemInDatabase(Landroid/content/Context;Lcom/lge/homecube/ApplicationInfo;II)V

    goto/16 :goto_131

    .line 5228
    :cond_23e
    iget v7, p0, Lcom/lge/homecube/Launcher;->mUtilitiesGridTop:I

    if-ge v7, v6, :cond_28a

    iget v7, p0, Lcom/lge/homecube/Launcher;->mUtilitiesGridTop:I

    iget v8, p0, Lcom/lge/homecube/Launcher;->mUtilitiesGridHeight:I

    add-int/2addr v7, v8

    if-ge v6, v7, :cond_28a

    .line 5230
    iget-object v7, p0, Lcom/lge/homecube/Launcher;->utilities_Grid:Lcom/lge/homecube/AllAppsGridView;

    iget v8, p0, Lcom/lge/homecube/Launcher;->mUtilitiesGridTop:I

    sub-int v8, v6, v8

    iget v9, p0, Lcom/lge/homecube/Launcher;->mUtilitiesGridHeight:I

    invoke-virtual {v7, v5, v8, v9}, Lcom/lge/homecube/AllAppsGridView;->getIndex(III)I

    move-result v2

    .line 5231
    const-string v7, "CubeHome"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Drop Grid  : Utilities   ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  : hwang072"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5233
    const/4 v7, -0x1

    if-eq v2, v7, :cond_131

    .line 5234
    iget-object v7, p0, Lcom/lge/homecube/Launcher;->mUtilitiesItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 5235
    const/4 v7, 0x3

    iput v7, p0, Lcom/lge/homecube/Launcher;->mDropItemGrid:I

    .line 5236
    iput v2, p0, Lcom/lge/homecube/Launcher;->mDropItemIndex:I

    .line 5237
    iget v7, v3, Lcom/lge/homecube/ApplicationInfo;->position:I

    iput v7, p0, Lcom/lge/homecube/Launcher;->mDraggedItemIndex:I

    .line 5238
    const/4 v7, 0x3

    invoke-static {p0, v3, v2, v7}, Lcom/lge/homecube/Launcher;->moveItemInDatabase(Landroid/content/Context;Lcom/lge/homecube/ApplicationInfo;II)V

    goto/16 :goto_131

    .line 5241
    :cond_28a
    iget v7, p0, Lcom/lge/homecube/Launcher;->mGoogleGridTop:I

    if-ge v7, v6, :cond_2d6

    iget v7, p0, Lcom/lge/homecube/Launcher;->mGoogleGridTop:I

    iget v8, p0, Lcom/lge/homecube/Launcher;->mGoogleGridHeight:I

    add-int/2addr v7, v8

    if-ge v6, v7, :cond_2d6

    .line 5242
    iget-object v7, p0, Lcom/lge/homecube/Launcher;->google_Grid:Lcom/lge/homecube/AllAppsGridView;

    iget v8, p0, Lcom/lge/homecube/Launcher;->mGoogleGridTop:I

    sub-int v8, v6, v8

    iget v9, p0, Lcom/lge/homecube/Launcher;->mGoogleGridHeight:I

    invoke-virtual {v7, v5, v8, v9}, Lcom/lge/homecube/AllAppsGridView;->getIndex(III)I

    move-result v2

    .line 5243
    const-string v7, "CubeHome"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Drop Grid  : Google   ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  : hwang072"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5245
    const/4 v7, -0x1

    if-eq v2, v7, :cond_131

    .line 5246
    iget-object v7, p0, Lcom/lge/homecube/Launcher;->mGoogleItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 5247
    const/4 v7, 0x4

    iput v7, p0, Lcom/lge/homecube/Launcher;->mDropItemGrid:I

    .line 5248
    iput v2, p0, Lcom/lge/homecube/Launcher;->mDropItemIndex:I

    .line 5249
    iget v7, v3, Lcom/lge/homecube/ApplicationInfo;->position:I

    iput v7, p0, Lcom/lge/homecube/Launcher;->mDraggedItemIndex:I

    .line 5250
    const/4 v7, 0x4

    invoke-static {p0, v3, v2, v7}, Lcom/lge/homecube/Launcher;->moveItemInDatabase(Landroid/content/Context;Lcom/lge/homecube/ApplicationInfo;II)V

    goto/16 :goto_131

    .line 5254
    :cond_2d6
    iget v7, p0, Lcom/lge/homecube/Launcher;->mDownloadsGridTop:I

    if-ge v7, v6, :cond_322

    iget v7, p0, Lcom/lge/homecube/Launcher;->mDownloadsGridTop:I

    iget v8, p0, Lcom/lge/homecube/Launcher;->mDownloadsGridHeight:I

    add-int/2addr v7, v8

    if-ge v6, v7, :cond_322

    .line 5255
    iget-object v7, p0, Lcom/lge/homecube/Launcher;->downloads_Grid:Lcom/lge/homecube/AllAppsGridView;

    iget v8, p0, Lcom/lge/homecube/Launcher;->mDownloadsGridTop:I

    sub-int v8, v6, v8

    iget v9, p0, Lcom/lge/homecube/Launcher;->mDownloadsGridHeight:I

    invoke-virtual {v7, v5, v8, v9}, Lcom/lge/homecube/AllAppsGridView;->getIndex(III)I

    move-result v2

    .line 5256
    const-string v7, "CubeHome"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Drop Grid  : Downloads   ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  : hwang072"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5258
    const/4 v7, -0x1

    if-eq v2, v7, :cond_131

    .line 5259
    iget-object v7, p0, Lcom/lge/homecube/Launcher;->mDownloadsItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 5260
    const/4 v7, 0x5

    iput v7, p0, Lcom/lge/homecube/Launcher;->mDropItemGrid:I

    .line 5261
    iput v2, p0, Lcom/lge/homecube/Launcher;->mDropItemIndex:I

    .line 5262
    iget v7, v3, Lcom/lge/homecube/ApplicationInfo;->position:I

    iput v7, p0, Lcom/lge/homecube/Launcher;->mDraggedItemIndex:I

    .line 5263
    const/4 v7, 0x5

    invoke-static {p0, v3, v2, v7}, Lcom/lge/homecube/Launcher;->moveItemInDatabase(Landroid/content/Context;Lcom/lge/homecube/ApplicationInfo;II)V

    goto/16 :goto_131

    .line 5269
    :cond_322
    iget v7, p0, Lcom/lge/homecube/Launcher;->mGroup1GridTop:I

    if-ge v7, v6, :cond_36e

    iget v7, p0, Lcom/lge/homecube/Launcher;->mGroup1GridTop:I

    iget v8, p0, Lcom/lge/homecube/Launcher;->mGroup1GridHeight:I

    add-int/2addr v7, v8

    if-ge v6, v7, :cond_36e

    .line 5270
    iget-object v7, p0, Lcom/lge/homecube/Launcher;->group1_Grid:Lcom/lge/homecube/AllAppsGridView;

    iget v8, p0, Lcom/lge/homecube/Launcher;->mGroup1GridTop:I

    sub-int v8, v6, v8

    iget v9, p0, Lcom/lge/homecube/Launcher;->mGroup1GridHeight:I

    invoke-virtual {v7, v5, v8, v9}, Lcom/lge/homecube/AllAppsGridView;->getIndex(III)I

    move-result v2

    .line 5271
    const-string v7, "CubeHome"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Drop Grid  : Group1   ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  : hwang072"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5273
    const/4 v7, -0x1

    if-eq v2, v7, :cond_131

    .line 5274
    iget-object v7, p0, Lcom/lge/homecube/Launcher;->mGroup1Items:Ljava/util/ArrayList;

    invoke-virtual {v7, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 5275
    const/4 v7, 0x6

    iput v7, p0, Lcom/lge/homecube/Launcher;->mDropItemGrid:I

    .line 5276
    iput v2, p0, Lcom/lge/homecube/Launcher;->mDropItemIndex:I

    .line 5277
    iget v7, v3, Lcom/lge/homecube/ApplicationInfo;->position:I

    iput v7, p0, Lcom/lge/homecube/Launcher;->mDraggedItemIndex:I

    .line 5278
    const/4 v7, 0x6

    invoke-static {p0, v3, v2, v7}, Lcom/lge/homecube/Launcher;->moveItemInDatabase(Landroid/content/Context;Lcom/lge/homecube/ApplicationInfo;II)V

    goto/16 :goto_131

    .line 5281
    :cond_36e
    iget v7, p0, Lcom/lge/homecube/Launcher;->mGroup2GridTop:I

    if-ge v7, v6, :cond_3ba

    iget v7, p0, Lcom/lge/homecube/Launcher;->mGroup2GridTop:I

    iget v8, p0, Lcom/lge/homecube/Launcher;->mGroup2GridHeight:I

    add-int/2addr v7, v8

    if-ge v6, v7, :cond_3ba

    .line 5282
    iget-object v7, p0, Lcom/lge/homecube/Launcher;->group2_Grid:Lcom/lge/homecube/AllAppsGridView;

    iget v8, p0, Lcom/lge/homecube/Launcher;->mGroup2GridTop:I

    sub-int v8, v6, v8

    iget v9, p0, Lcom/lge/homecube/Launcher;->mGroup2GridHeight:I

    invoke-virtual {v7, v5, v8, v9}, Lcom/lge/homecube/AllAppsGridView;->getIndex(III)I

    move-result v2

    .line 5283
    const-string v7, "CubeHome"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Drop Grid  : Group2   ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  : hwang072"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5285
    const/4 v7, -0x1

    if-eq v2, v7, :cond_131

    .line 5286
    iget-object v7, p0, Lcom/lge/homecube/Launcher;->mGroup2Items:Ljava/util/ArrayList;

    invoke-virtual {v7, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 5287
    const/4 v7, 0x7

    iput v7, p0, Lcom/lge/homecube/Launcher;->mDropItemGrid:I

    .line 5288
    iput v2, p0, Lcom/lge/homecube/Launcher;->mDropItemIndex:I

    .line 5289
    iget v7, v3, Lcom/lge/homecube/ApplicationInfo;->position:I

    iput v7, p0, Lcom/lge/homecube/Launcher;->mDraggedItemIndex:I

    .line 5290
    const/4 v7, 0x7

    invoke-static {p0, v3, v2, v7}, Lcom/lge/homecube/Launcher;->moveItemInDatabase(Landroid/content/Context;Lcom/lge/homecube/ApplicationInfo;II)V

    goto/16 :goto_131

    .line 5293
    :cond_3ba
    iget v7, p0, Lcom/lge/homecube/Launcher;->mGroup3GridTop:I

    if-ge v7, v6, :cond_408

    iget v7, p0, Lcom/lge/homecube/Launcher;->mGroup3GridTop:I

    iget v8, p0, Lcom/lge/homecube/Launcher;->mGroup3GridHeight:I

    add-int/2addr v7, v8

    if-ge v6, v7, :cond_408

    .line 5294
    iget-object v7, p0, Lcom/lge/homecube/Launcher;->group3_Grid:Lcom/lge/homecube/AllAppsGridView;

    iget v8, p0, Lcom/lge/homecube/Launcher;->mGroup3GridTop:I

    sub-int v8, v6, v8

    iget v9, p0, Lcom/lge/homecube/Launcher;->mGroup3GridHeight:I

    invoke-virtual {v7, v5, v8, v9}, Lcom/lge/homecube/AllAppsGridView;->getIndex(III)I

    move-result v2

    .line 5295
    const-string v7, "CubeHome"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Drop Grid  : Group3   ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  : hwang072"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5297
    const/4 v7, -0x1

    if-eq v2, v7, :cond_131

    .line 5298
    iget-object v7, p0, Lcom/lge/homecube/Launcher;->mGroup3Items:Ljava/util/ArrayList;

    invoke-virtual {v7, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 5299
    const/16 v7, 0x8

    iput v7, p0, Lcom/lge/homecube/Launcher;->mDropItemGrid:I

    .line 5300
    iput v2, p0, Lcom/lge/homecube/Launcher;->mDropItemIndex:I

    .line 5301
    iget v7, v3, Lcom/lge/homecube/ApplicationInfo;->position:I

    iput v7, p0, Lcom/lge/homecube/Launcher;->mDraggedItemIndex:I

    .line 5302
    const/16 v7, 0x8

    invoke-static {p0, v3, v2, v7}, Lcom/lge/homecube/Launcher;->moveItemInDatabase(Landroid/content/Context;Lcom/lge/homecube/ApplicationInfo;II)V

    goto/16 :goto_131

    .line 5305
    :cond_408
    iget v7, p0, Lcom/lge/homecube/Launcher;->mGroup4GridTop:I

    if-ge v7, v6, :cond_456

    iget v7, p0, Lcom/lge/homecube/Launcher;->mGroup4GridTop:I

    iget v8, p0, Lcom/lge/homecube/Launcher;->mGroup4GridHeight:I

    add-int/2addr v7, v8

    if-ge v6, v7, :cond_456

    .line 5306
    iget-object v7, p0, Lcom/lge/homecube/Launcher;->group4_Grid:Lcom/lge/homecube/AllAppsGridView;

    iget v8, p0, Lcom/lge/homecube/Launcher;->mGroup4GridTop:I

    sub-int v8, v6, v8

    iget v9, p0, Lcom/lge/homecube/Launcher;->mGroup4GridHeight:I

    invoke-virtual {v7, v5, v8, v9}, Lcom/lge/homecube/AllAppsGridView;->getIndex(III)I

    move-result v2

    .line 5307
    const-string v7, "CubeHome"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Drop Grid  : Group4   ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  : hwang072"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5309
    const/4 v7, -0x1

    if-eq v2, v7, :cond_131

    .line 5310
    iget-object v7, p0, Lcom/lge/homecube/Launcher;->mGroup4Items:Ljava/util/ArrayList;

    invoke-virtual {v7, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 5311
    const/16 v7, 0x9

    iput v7, p0, Lcom/lge/homecube/Launcher;->mDropItemGrid:I

    .line 5312
    iput v2, p0, Lcom/lge/homecube/Launcher;->mDropItemIndex:I

    .line 5313
    iget v7, v3, Lcom/lge/homecube/ApplicationInfo;->position:I

    iput v7, p0, Lcom/lge/homecube/Launcher;->mDraggedItemIndex:I

    .line 5314
    const/16 v7, 0x9

    invoke-static {p0, v3, v2, v7}, Lcom/lge/homecube/Launcher;->moveItemInDatabase(Landroid/content/Context;Lcom/lge/homecube/ApplicationInfo;II)V

    goto/16 :goto_131

    .line 5317
    :cond_456
    iget v7, p0, Lcom/lge/homecube/Launcher;->mGroup5GridTop:I

    if-ge v7, v6, :cond_4a4

    iget v7, p0, Lcom/lge/homecube/Launcher;->mGroup5GridTop:I

    iget v8, p0, Lcom/lge/homecube/Launcher;->mGroup5GridHeight:I

    add-int/2addr v7, v8

    if-ge v6, v7, :cond_4a4

    .line 5318
    iget-object v7, p0, Lcom/lge/homecube/Launcher;->group5_Grid:Lcom/lge/homecube/AllAppsGridView;

    iget v8, p0, Lcom/lge/homecube/Launcher;->mGroup5GridTop:I

    sub-int v8, v6, v8

    iget v9, p0, Lcom/lge/homecube/Launcher;->mGroup5GridHeight:I

    invoke-virtual {v7, v5, v8, v9}, Lcom/lge/homecube/AllAppsGridView;->getIndex(III)I

    move-result v2

    .line 5319
    const-string v7, "CubeHome"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Drop Grid  : Group5   ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  : hwang072"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5321
    const/4 v7, -0x1

    if-eq v2, v7, :cond_131

    .line 5322
    iget-object v7, p0, Lcom/lge/homecube/Launcher;->mGroup5Items:Ljava/util/ArrayList;

    invoke-virtual {v7, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 5323
    const/16 v7, 0xa

    iput v7, p0, Lcom/lge/homecube/Launcher;->mDropItemGrid:I

    .line 5324
    iput v2, p0, Lcom/lge/homecube/Launcher;->mDropItemIndex:I

    .line 5325
    iget v7, v3, Lcom/lge/homecube/ApplicationInfo;->position:I

    iput v7, p0, Lcom/lge/homecube/Launcher;->mDraggedItemIndex:I

    .line 5326
    const/16 v7, 0xa

    invoke-static {p0, v3, v2, v7}, Lcom/lge/homecube/Launcher;->moveItemInDatabase(Landroid/content/Context;Lcom/lge/homecube/ApplicationInfo;II)V

    goto/16 :goto_131

    .line 5329
    :cond_4a4
    iget v7, p0, Lcom/lge/homecube/Launcher;->mGroup6GridTop:I

    if-ge v7, v6, :cond_131

    iget v7, p0, Lcom/lge/homecube/Launcher;->mGroup6GridTop:I

    iget v8, p0, Lcom/lge/homecube/Launcher;->mGroup6GridHeight:I

    add-int/2addr v7, v8

    if-ge v6, v7, :cond_131

    .line 5330
    iget-object v7, p0, Lcom/lge/homecube/Launcher;->group6_Grid:Lcom/lge/homecube/AllAppsGridView;

    iget v8, p0, Lcom/lge/homecube/Launcher;->mGroup6GridTop:I

    sub-int v8, v6, v8

    iget v9, p0, Lcom/lge/homecube/Launcher;->mGroup6GridHeight:I

    invoke-virtual {v7, v5, v8, v9}, Lcom/lge/homecube/AllAppsGridView;->getIndex(III)I

    move-result v2

    .line 5331
    const-string v7, "CubeHome"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Drop Grid  : Group6   ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  : hwang072"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5333
    const/4 v7, -0x1

    if-eq v2, v7, :cond_131

    .line 5334
    iget-object v7, p0, Lcom/lge/homecube/Launcher;->mGroup6Items:Ljava/util/ArrayList;

    invoke-virtual {v7, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 5335
    const/16 v7, 0xb

    iput v7, p0, Lcom/lge/homecube/Launcher;->mDropItemGrid:I

    .line 5336
    iput v2, p0, Lcom/lge/homecube/Launcher;->mDropItemIndex:I

    .line 5337
    iget v7, v3, Lcom/lge/homecube/ApplicationInfo;->position:I

    iput v7, p0, Lcom/lge/homecube/Launcher;->mDraggedItemIndex:I

    .line 5338
    const/16 v7, 0xb

    invoke-static {p0, v3, v2, v7}, Lcom/lge/homecube/Launcher;->moveItemInDatabase(Landroid/content/Context;Lcom/lge/homecube/ApplicationInfo;II)V

    goto/16 :goto_131

    .line 5345
    :pswitch_4f2
    iget v7, p0, Lcom/lge/homecube/Launcher;->mDropItemGrid:I

    if-nez v7, :cond_502

    .line 5346
    iget v7, p0, Lcom/lge/homecube/Launcher;->mDropItemIndex:I

    iget v8, p0, Lcom/lge/homecube/Launcher;->mDraggedItemIndex:I

    if-ge v7, v8, :cond_502

    .line 5348
    iget v7, p0, Lcom/lge/homecube/Launcher;->mDraggedItemIndex:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/lge/homecube/Launcher;->mDraggedItemIndex:I

    .line 5351
    :cond_502
    iget-object v7, p0, Lcom/lge/homecube/Launcher;->mOperatorItems:Ljava/util/ArrayList;

    iget v8, p0, Lcom/lge/homecube/Launcher;->mDraggedItemIndex:I

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto/16 :goto_139

    .line 5356
    :pswitch_50b
    iget v7, p0, Lcom/lge/homecube/Launcher;->mDropItemGrid:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_51c

    .line 5357
    iget v7, p0, Lcom/lge/homecube/Launcher;->mDropItemIndex:I

    iget v8, p0, Lcom/lge/homecube/Launcher;->mDraggedItemIndex:I

    if-ge v7, v8, :cond_51c

    .line 5359
    iget v7, p0, Lcom/lge/homecube/Launcher;->mDraggedItemIndex:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/lge/homecube/Launcher;->mDraggedItemIndex:I

    .line 5362
    :cond_51c
    iget-object v7, p0, Lcom/lge/homecube/Launcher;->mCommunicationItems:Ljava/util/ArrayList;

    iget v8, p0, Lcom/lge/homecube/Launcher;->mDraggedItemIndex:I

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto/16 :goto_139

    .line 5366
    :pswitch_525
    iget v7, p0, Lcom/lge/homecube/Launcher;->mDropItemGrid:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_536

    .line 5367
    iget v7, p0, Lcom/lge/homecube/Launcher;->mDropItemIndex:I

    iget v8, p0, Lcom/lge/homecube/Launcher;->mDraggedItemIndex:I

    if-ge v7, v8, :cond_536

    .line 5369
    iget v7, p0, Lcom/lge/homecube/Launcher;->mDraggedItemIndex:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/lge/homecube/Launcher;->mDraggedItemIndex:I

    .line 5372
    :cond_536
    iget-object v7, p0, Lcom/lge/homecube/Launcher;->mMultimediaItems:Ljava/util/ArrayList;

    iget v8, p0, Lcom/lge/homecube/Launcher;->mDraggedItemIndex:I

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto/16 :goto_139

    .line 5376
    :pswitch_53f
    iget v7, p0, Lcom/lge/homecube/Launcher;->mDropItemGrid:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_550

    .line 5377
    iget v7, p0, Lcom/lge/homecube/Launcher;->mDropItemIndex:I

    iget v8, p0, Lcom/lge/homecube/Launcher;->mDraggedItemIndex:I

    if-ge v7, v8, :cond_550

    .line 5379
    iget v7, p0, Lcom/lge/homecube/Launcher;->mDraggedItemIndex:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/lge/homecube/Launcher;->mDraggedItemIndex:I

    .line 5382
    :cond_550
    iget-object v7, p0, Lcom/lge/homecube/Launcher;->mUtilitiesItems:Ljava/util/ArrayList;

    iget v8, p0, Lcom/lge/homecube/Launcher;->mDraggedItemIndex:I

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto/16 :goto_139

    .line 5386
    :pswitch_559
    iget v7, p0, Lcom/lge/homecube/Launcher;->mDropItemGrid:I

    const/4 v8, 0x4

    if-ne v7, v8, :cond_56a

    .line 5387
    iget v7, p0, Lcom/lge/homecube/Launcher;->mDropItemIndex:I

    iget v8, p0, Lcom/lge/homecube/Launcher;->mDraggedItemIndex:I

    if-ge v7, v8, :cond_56a

    .line 5389
    iget v7, p0, Lcom/lge/homecube/Launcher;->mDraggedItemIndex:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/lge/homecube/Launcher;->mDraggedItemIndex:I

    .line 5392
    :cond_56a
    iget-object v7, p0, Lcom/lge/homecube/Launcher;->mGoogleItems:Ljava/util/ArrayList;

    iget v8, p0, Lcom/lge/homecube/Launcher;->mDraggedItemIndex:I

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto/16 :goto_139

    .line 5396
    :pswitch_573
    iget v7, p0, Lcom/lge/homecube/Launcher;->mDropItemGrid:I

    const/4 v8, 0x5

    if-ne v7, v8, :cond_584

    .line 5397
    iget v7, p0, Lcom/lge/homecube/Launcher;->mDropItemIndex:I

    iget v8, p0, Lcom/lge/homecube/Launcher;->mDraggedItemIndex:I

    if-ge v7, v8, :cond_584

    .line 5399
    iget v7, p0, Lcom/lge/homecube/Launcher;->mDraggedItemIndex:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/lge/homecube/Launcher;->mDraggedItemIndex:I

    .line 5402
    :cond_584
    iget-object v7, p0, Lcom/lge/homecube/Launcher;->mDownloadsItems:Ljava/util/ArrayList;

    iget v8, p0, Lcom/lge/homecube/Launcher;->mDraggedItemIndex:I

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto/16 :goto_139

    .line 5408
    :pswitch_58d
    iget v7, p0, Lcom/lge/homecube/Launcher;->mDropItemGrid:I

    const/4 v8, 0x6

    if-ne v7, v8, :cond_59e

    .line 5409
    iget v7, p0, Lcom/lge/homecube/Launcher;->mDropItemIndex:I

    iget v8, p0, Lcom/lge/homecube/Launcher;->mDraggedItemIndex:I

    if-ge v7, v8, :cond_59e

    .line 5411
    iget v7, p0, Lcom/lge/homecube/Launcher;->mDraggedItemIndex:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/lge/homecube/Launcher;->mDraggedItemIndex:I

    .line 5414
    :cond_59e
    iget-object v7, p0, Lcom/lge/homecube/Launcher;->mGroup1Items:Ljava/util/ArrayList;

    iget v8, p0, Lcom/lge/homecube/Launcher;->mDraggedItemIndex:I

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto/16 :goto_139

    .line 5418
    :pswitch_5a7
    iget v7, p0, Lcom/lge/homecube/Launcher;->mDropItemGrid:I

    const/4 v8, 0x7

    if-ne v7, v8, :cond_5b8

    .line 5419
    iget v7, p0, Lcom/lge/homecube/Launcher;->mDropItemIndex:I

    iget v8, p0, Lcom/lge/homecube/Launcher;->mDraggedItemIndex:I

    if-ge v7, v8, :cond_5b8

    .line 5421
    iget v7, p0, Lcom/lge/homecube/Launcher;->mDraggedItemIndex:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/lge/homecube/Launcher;->mDraggedItemIndex:I

    .line 5424
    :cond_5b8
    iget-object v7, p0, Lcom/lge/homecube/Launcher;->mGroup2Items:Ljava/util/ArrayList;

    iget v8, p0, Lcom/lge/homecube/Launcher;->mDraggedItemIndex:I

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto/16 :goto_139

    .line 5428
    :pswitch_5c1
    iget v7, p0, Lcom/lge/homecube/Launcher;->mDropItemGrid:I

    const/16 v8, 0x8

    if-ne v7, v8, :cond_5d3

    .line 5429
    iget v7, p0, Lcom/lge/homecube/Launcher;->mDropItemIndex:I

    iget v8, p0, Lcom/lge/homecube/Launcher;->mDraggedItemIndex:I

    if-ge v7, v8, :cond_5d3

    .line 5431
    iget v7, p0, Lcom/lge/homecube/Launcher;->mDraggedItemIndex:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/lge/homecube/Launcher;->mDraggedItemIndex:I

    .line 5434
    :cond_5d3
    iget-object v7, p0, Lcom/lge/homecube/Launcher;->mGroup3Items:Ljava/util/ArrayList;

    iget v8, p0, Lcom/lge/homecube/Launcher;->mDraggedItemIndex:I

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto/16 :goto_139

    .line 5438
    :pswitch_5dc
    iget v7, p0, Lcom/lge/homecube/Launcher;->mDropItemGrid:I

    const/16 v8, 0x9

    if-ne v7, v8, :cond_5ee

    .line 5439
    iget v7, p0, Lcom/lge/homecube/Launcher;->mDropItemIndex:I

    iget v8, p0, Lcom/lge/homecube/Launcher;->mDraggedItemIndex:I

    if-ge v7, v8, :cond_5ee

    .line 5441
    iget v7, p0, Lcom/lge/homecube/Launcher;->mDraggedItemIndex:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/lge/homecube/Launcher;->mDraggedItemIndex:I

    .line 5444
    :cond_5ee
    iget-object v7, p0, Lcom/lge/homecube/Launcher;->mGroup4Items:Ljava/util/ArrayList;

    iget v8, p0, Lcom/lge/homecube/Launcher;->mDraggedItemIndex:I

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto/16 :goto_139

    .line 5448
    :pswitch_5f7
    iget v7, p0, Lcom/lge/homecube/Launcher;->mDropItemGrid:I

    const/16 v8, 0xa

    if-ne v7, v8, :cond_609

    .line 5449
    iget v7, p0, Lcom/lge/homecube/Launcher;->mDropItemIndex:I

    iget v8, p0, Lcom/lge/homecube/Launcher;->mDraggedItemIndex:I

    if-ge v7, v8, :cond_609

    .line 5451
    iget v7, p0, Lcom/lge/homecube/Launcher;->mDraggedItemIndex:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/lge/homecube/Launcher;->mDraggedItemIndex:I

    .line 5454
    :cond_609
    iget-object v7, p0, Lcom/lge/homecube/Launcher;->mGroup5Items:Ljava/util/ArrayList;

    iget v8, p0, Lcom/lge/homecube/Launcher;->mDraggedItemIndex:I

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto/16 :goto_139

    .line 5458
    :pswitch_612
    iget v7, p0, Lcom/lge/homecube/Launcher;->mDropItemGrid:I

    const/16 v8, 0xb

    if-ne v7, v8, :cond_624

    .line 5459
    iget v7, p0, Lcom/lge/homecube/Launcher;->mDropItemIndex:I

    iget v8, p0, Lcom/lge/homecube/Launcher;->mDraggedItemIndex:I

    if-ge v7, v8, :cond_624

    .line 5461
    iget v7, p0, Lcom/lge/homecube/Launcher;->mDraggedItemIndex:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/lge/homecube/Launcher;->mDraggedItemIndex:I

    .line 5464
    :cond_624
    iget-object v7, p0, Lcom/lge/homecube/Launcher;->mGroup6Items:Ljava/util/ArrayList;

    iget v8, p0, Lcom/lge/homecube/Launcher;->mDraggedItemIndex:I

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto/16 :goto_139

    .line 5493
    .end local p1
    .restart local v1       #i:I
    :cond_62d
    const/4 v1, 0x0

    :goto_62e
    iget-object v7, p0, Lcom/lge/homecube/Launcher;->mCommunicationItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_643

    .line 5495
    iget-object v7, p0, Lcom/lge/homecube/Launcher;->mCommunicationItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lge/homecube/ApplicationInfo;

    iput v1, p1, Lcom/lge/homecube/ApplicationInfo;->position:I

    .line 5493
    add-int/lit8 v1, v1, 0x1

    goto :goto_62e

    .line 5498
    :cond_643
    const/4 v1, 0x0

    :goto_644
    iget-object v7, p0, Lcom/lge/homecube/Launcher;->mMultimediaItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_659

    .line 5500
    iget-object v7, p0, Lcom/lge/homecube/Launcher;->mMultimediaItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lge/homecube/ApplicationInfo;

    iput v1, p1, Lcom/lge/homecube/ApplicationInfo;->position:I

    .line 5498
    add-int/lit8 v1, v1, 0x1

    goto :goto_644

    .line 5503
    :cond_659
    const/4 v1, 0x0

    :goto_65a
    iget-object v7, p0, Lcom/lge/homecube/Launcher;->mUtilitiesItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_66f

    .line 5505
    iget-object v7, p0, Lcom/lge/homecube/Launcher;->mUtilitiesItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lge/homecube/ApplicationInfo;

    iput v1, p1, Lcom/lge/homecube/ApplicationInfo;->position:I

    .line 5503
    add-int/lit8 v1, v1, 0x1

    goto :goto_65a

    .line 5508
    :cond_66f
    const/4 v1, 0x0

    :goto_670
    iget-object v7, p0, Lcom/lge/homecube/Launcher;->mGoogleItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_685

    .line 5510
    iget-object v7, p0, Lcom/lge/homecube/Launcher;->mGoogleItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lge/homecube/ApplicationInfo;

    iput v1, p1, Lcom/lge/homecube/ApplicationInfo;->position:I

    .line 5508
    add-int/lit8 v1, v1, 0x1

    goto :goto_670

    .line 5514
    :cond_685
    const/4 v1, 0x0

    :goto_686
    iget-object v7, p0, Lcom/lge/homecube/Launcher;->mDownloadsItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_69b

    .line 5516
    iget-object v7, p0, Lcom/lge/homecube/Launcher;->mDownloadsItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lge/homecube/ApplicationInfo;

    iput v1, p1, Lcom/lge/homecube/ApplicationInfo;->position:I

    .line 5514
    add-int/lit8 v1, v1, 0x1

    goto :goto_686

    .line 5519
    :cond_69b
    const/4 v1, 0x0

    :goto_69c
    iget-object v7, p0, Lcom/lge/homecube/Launcher;->mGroup1Items:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_6b1

    .line 5521
    iget-object v7, p0, Lcom/lge/homecube/Launcher;->mGroup1Items:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lge/homecube/ApplicationInfo;

    iput v1, p1, Lcom/lge/homecube/ApplicationInfo;->position:I

    .line 5519
    add-int/lit8 v1, v1, 0x1

    goto :goto_69c

    .line 5524
    :cond_6b1
    const/4 v1, 0x0

    :goto_6b2
    iget-object v7, p0, Lcom/lge/homecube/Launcher;->mGroup2Items:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_6c7

    .line 5526
    iget-object v7, p0, Lcom/lge/homecube/Launcher;->mGroup2Items:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lge/homecube/ApplicationInfo;

    iput v1, p1, Lcom/lge/homecube/ApplicationInfo;->position:I

    .line 5524
    add-int/lit8 v1, v1, 0x1

    goto :goto_6b2

    .line 5529
    :cond_6c7
    const/4 v1, 0x0

    :goto_6c8
    iget-object v7, p0, Lcom/lge/homecube/Launcher;->mGroup3Items:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_6dd

    .line 5531
    iget-object v7, p0, Lcom/lge/homecube/Launcher;->mGroup3Items:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lge/homecube/ApplicationInfo;

    iput v1, p1, Lcom/lge/homecube/ApplicationInfo;->position:I

    .line 5529
    add-int/lit8 v1, v1, 0x1

    goto :goto_6c8

    .line 5534
    :cond_6dd
    const/4 v1, 0x0

    :goto_6de
    iget-object v7, p0, Lcom/lge/homecube/Launcher;->mGroup4Items:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_6f3

    .line 5536
    iget-object v7, p0, Lcom/lge/homecube/Launcher;->mGroup4Items:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lge/homecube/ApplicationInfo;

    iput v1, p1, Lcom/lge/homecube/ApplicationInfo;->position:I

    .line 5534
    add-int/lit8 v1, v1, 0x1

    goto :goto_6de

    .line 5539
    :cond_6f3
    const/4 v1, 0x0

    :goto_6f4
    iget-object v7, p0, Lcom/lge/homecube/Launcher;->mGroup5Items:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_709

    .line 5541
    iget-object v7, p0, Lcom/lge/homecube/Launcher;->mGroup5Items:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lge/homecube/ApplicationInfo;

    iput v1, p1, Lcom/lge/homecube/ApplicationInfo;->position:I

    .line 5539
    add-int/lit8 v1, v1, 0x1

    goto :goto_6f4

    .line 5544
    :cond_709
    const/4 v1, 0x0

    :goto_70a
    iget-object v7, p0, Lcom/lge/homecube/Launcher;->mGroup6Items:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_71f

    .line 5546
    iget-object v7, p0, Lcom/lge/homecube/Launcher;->mGroup6Items:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lge/homecube/ApplicationInfo;

    iput v1, p1, Lcom/lge/homecube/ApplicationInfo;->position:I

    .line 5544
    add-int/lit8 v1, v1, 0x1

    goto :goto_70a

    .line 5550
    :cond_71f
    iget-object v7, p0, Lcom/lge/homecube/Launcher;->mRelativeLayout:Landroid/widget/RelativeLayout;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 5571
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/lge/homecube/Launcher;->setAllAppsGridViewDrawingCacheEnabled(Z)V

    .line 5573
    const/4 v7, 0x1

    return v7

    .line 5343
    :pswitch_data_72c
    .packed-switch 0x0
        :pswitch_4f2
        :pswitch_50b
        :pswitch_525
        :pswitch_53f
        :pswitch_559
        :pswitch_573
        :pswitch_58d
        :pswitch_5a7
        :pswitch_5c1
        :pswitch_5dc
        :pswitch_5f7
        :pswitch_612
    .end packed-switch
.end method

.method public ItemListSort()V
    .registers 3

    .prologue
    .line 4241
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->mOperatorItems:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 4242
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->mCommunicationItems:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 4243
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->mMultimediaItems:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 4244
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->mUtilitiesItems:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 4245
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->mGoogleItems:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 4246
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->mDownloadsItems:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 4247
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->mGroup1Items:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 4248
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->mGroup2Items:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 4249
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->mGroup3Items:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 4250
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->mGroup4Items:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 4251
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->mGroup5Items:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 4252
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->mGroup6Items:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 4255
    invoke-virtual {p0}, Lcom/lge/homecube/Launcher;->setGridViewHeight()V

    .line 4257
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->operator_Grid:Lcom/lge/homecube/AllAppsGridView;

    iget-object v1, p0, Lcom/lge/homecube/Launcher;->mOperatorList:Lcom/lge/homecube/Launcher$AppsAdapter;

    invoke-virtual {v0, v1}, Lcom/lge/homecube/AllAppsGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 4258
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->commuication_Grid:Lcom/lge/homecube/AllAppsGridView;

    iget-object v1, p0, Lcom/lge/homecube/Launcher;->mCommunicationList:Lcom/lge/homecube/Launcher$AppsAdapter;

    invoke-virtual {v0, v1}, Lcom/lge/homecube/AllAppsGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 4259
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->multimedia_Grid:Lcom/lge/homecube/AllAppsGridView;

    iget-object v1, p0, Lcom/lge/homecube/Launcher;->mMultimediaList:Lcom/lge/homecube/Launcher$AppsAdapter;

    invoke-virtual {v0, v1}, Lcom/lge/homecube/AllAppsGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 4260
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->utilities_Grid:Lcom/lge/homecube/AllAppsGridView;

    iget-object v1, p0, Lcom/lge/homecube/Launcher;->mUtilitiesList:Lcom/lge/homecube/Launcher$AppsAdapter;

    invoke-virtual {v0, v1}, Lcom/lge/homecube/AllAppsGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 4261
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->google_Grid:Lcom/lge/homecube/AllAppsGridView;

    iget-object v1, p0, Lcom/lge/homecube/Launcher;->mGoogleList:Lcom/lge/homecube/Launcher$AppsAdapter;

    invoke-virtual {v0, v1}, Lcom/lge/homecube/AllAppsGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 4262
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->downloads_Grid:Lcom/lge/homecube/AllAppsGridView;

    iget-object v1, p0, Lcom/lge/homecube/Launcher;->mDownloadsList:Lcom/lge/homecube/Launcher$AppsAdapter;

    invoke-virtual {v0, v1}, Lcom/lge/homecube/AllAppsGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 4263
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->group1_Grid:Lcom/lge/homecube/AllAppsGridView;

    iget-object v1, p0, Lcom/lge/homecube/Launcher;->mGroup1List:Lcom/lge/homecube/Launcher$AppsAdapter;

    invoke-virtual {v0, v1}, Lcom/lge/homecube/AllAppsGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 4264
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->group2_Grid:Lcom/lge/homecube/AllAppsGridView;

    iget-object v1, p0, Lcom/lge/homecube/Launcher;->mGroup2List:Lcom/lge/homecube/Launcher$AppsAdapter;

    invoke-virtual {v0, v1}, Lcom/lge/homecube/AllAppsGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 4265
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->group3_Grid:Lcom/lge/homecube/AllAppsGridView;

    iget-object v1, p0, Lcom/lge/homecube/Launcher;->mGroup3List:Lcom/lge/homecube/Launcher$AppsAdapter;

    invoke-virtual {v0, v1}, Lcom/lge/homecube/AllAppsGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 4266
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->group4_Grid:Lcom/lge/homecube/AllAppsGridView;

    iget-object v1, p0, Lcom/lge/homecube/Launcher;->mGroup4List:Lcom/lge/homecube/Launcher$AppsAdapter;

    invoke-virtual {v0, v1}, Lcom/lge/homecube/AllAppsGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 4267
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->group5_Grid:Lcom/lge/homecube/AllAppsGridView;

    iget-object v1, p0, Lcom/lge/homecube/Launcher;->mGroup5List:Lcom/lge/homecube/Launcher$AppsAdapter;

    invoke-virtual {v0, v1}, Lcom/lge/homecube/AllAppsGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 4268
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->group6_Grid:Lcom/lge/homecube/AllAppsGridView;

    iget-object v1, p0, Lcom/lge/homecube/Launcher;->mGroup6List:Lcom/lge/homecube/Launcher$AppsAdapter;

    invoke-virtual {v0, v1}, Lcom/lge/homecube/AllAppsGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 4271
    return-void
.end method

.method public ReorganizeGroupItem(Landroid/content/Context;II)V
    .registers 27
    .parameter "context"
    .parameter "deletedId"
    .parameter "NumofAddedGroup"

    .prologue
    .line 5887
    new-instance v22, Landroid/content/ContentValues;

    invoke-direct/range {v22 .. v22}, Landroid/content/ContentValues;-><init>()V

    .line 5888
    .local v22, values:Landroid/content/ContentValues;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 5891
    .local v5, cr:Landroid/content/ContentResolver;
    const/4 v6, 0x4

    new-array v7, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v8, "_id"

    aput-object v8, v7, v6

    const/4 v6, 0x1

    const-string v8, "intent"

    aput-object v8, v7, v6

    const/4 v6, 0x2

    const-string v8, "group_id"

    aput-object v8, v7, v6

    const/4 v6, 0x3

    const-string v8, "original_group_id"

    aput-object v8, v7, v6

    .line 5894
    .local v7, QUERY_COLUMNS:[Ljava/lang/String;
    sget-object v6, Lcom/lge/homecube/AllAppsSettings$AllApps;->CONTENT_URI:Landroid/net/Uri;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 5897
    .local v11, c:Landroid/database/Cursor;
    const-string v6, "_id"

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 5898
    .local v16, idIndex:I
    const-string v6, "intent"

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    .line 5899
    .local v20, intentIndex:I
    const-string v6, "group_id"

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 5900
    .local v15, group_idIndex:I
    const-string v6, "original_group_id"

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    .line 5908
    .end local v7           #QUERY_COLUMNS:[Ljava/lang/String;
    .local v21, origin_group_idIndex:I
    :cond_41
    :goto_41
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_1cf

    .line 5910
    move-object v0, v11

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 5913
    .local v19, intentDescription:Ljava/lang/String;
    :try_start_4e
    invoke-static/range {v19 .. v19}, Landroid/content/Intent;->getIntent(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_51
    .catch Ljava/net/URISyntaxException; {:try_start_4e .. :try_end_51} :catch_d0

    move-result-object v18

    .line 5918
    .local v18, intent:Landroid/content/Intent;
    new-instance v17, Lcom/lge/homecube/ApplicationInfo;

    invoke-direct/range {v17 .. v17}, Lcom/lge/homecube/ApplicationInfo;-><init>()V

    .line 5919
    .local v17, info:Lcom/lge/homecube/ApplicationInfo;
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, v17

    iput v0, v1, Lcom/lge/homecube/ApplicationInfo;->itemType:I

    .line 5920
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/lge/homecube/ApplicationInfo;->intent:Landroid/content/Intent;

    .line 5921
    move-object v0, v11

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    move-wide v0, v8

    move-object/from16 v2, v17

    iput-wide v0, v2, Lcom/lge/homecube/ApplicationInfo;->id:J

    .line 5922
    invoke-interface {v11, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move v0, v6

    move-object/from16 v1, v17

    iput v0, v1, Lcom/lge/homecube/ApplicationInfo;->group_id:I

    .line 5923
    move-object v0, v11

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move v0, v6

    move-object/from16 v1, v17

    iput v0, v1, Lcom/lge/homecube/ApplicationInfo;->origin_group_id:I

    .line 5925
    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v13

    .line 5926
    .local v13, component:Landroid/content/ComponentName;
    invoke-virtual {v13}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v12

    .line 5928
    .local v12, classname:Ljava/lang/String;
    invoke-interface {v11, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move v0, v6

    move/from16 v1, p2

    if-ne v0, v1, :cond_196

    .line 5930
    const-string v6, "group_id"

    move-object v0, v11

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v22

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5931
    move-object v0, v11

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    packed-switch v6, :pswitch_data_1e0

    .line 5958
    :goto_b3
    move-object v0, v11

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    int-to-long v8, v6

    const/4 v6, 0x0

    invoke-static {v8, v9, v6}, Lcom/lge/homecube/AllAppsSettings$AllApps;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v22

    move-object v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 5961
    invoke-virtual/range {v22 .. v22}, Landroid/content/ContentValues;->clear()V

    goto/16 :goto_41

    .line 5914
    .end local v12           #classname:Ljava/lang/String;
    .end local v13           #component:Landroid/content/ComponentName;
    .end local v17           #info:Lcom/lge/homecube/ApplicationInfo;
    .end local v18           #intent:Landroid/content/Intent;
    :catch_d0
    move-exception v14

    .line 5915
    .local v14, e:Ljava/net/URISyntaxException;
    goto/16 :goto_41

    .line 5933
    .end local v14           #e:Ljava/net/URISyntaxException;
    .restart local v12       #classname:Ljava/lang/String;
    .restart local v13       #component:Landroid/content/ComponentName;
    .restart local v17       #info:Lcom/lge/homecube/ApplicationInfo;
    .restart local v18       #intent:Landroid/content/Intent;
    :pswitch_d3
    const-string v6, "position"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->mOperatorItems:Ljava/util/ArrayList;

    move-object v7, v0

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v22

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5934
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->mOperatorItems:Ljava/util/ArrayList;

    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b3

    .line 5937
    :pswitch_f3
    const-string v6, "position"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->mCommunicationItems:Ljava/util/ArrayList;

    move-object v7, v0

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v22

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5938
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->mCommunicationItems:Ljava/util/ArrayList;

    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b3

    .line 5941
    :pswitch_113
    const-string v6, "position"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->mMultimediaItems:Ljava/util/ArrayList;

    move-object v7, v0

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v22

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5942
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->mMultimediaItems:Ljava/util/ArrayList;

    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b3

    .line 5945
    :pswitch_133
    const-string v6, "position"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->mUtilitiesItems:Ljava/util/ArrayList;

    move-object v7, v0

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v22

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5946
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->mUtilitiesItems:Ljava/util/ArrayList;

    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_b3

    .line 5949
    :pswitch_154
    const-string v6, "position"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->mGoogleItems:Ljava/util/ArrayList;

    move-object v7, v0

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v22

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5950
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->mGoogleItems:Ljava/util/ArrayList;

    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_b3

    .line 5953
    :pswitch_175
    const-string v6, "position"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->mDownloadsItems:Ljava/util/ArrayList;

    move-object v7, v0

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v22

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5954
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->mDownloadsItems:Ljava/util/ArrayList;

    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_b3

    .line 5963
    :cond_196
    invoke-interface {v11, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move v0, v6

    move/from16 v1, p2

    if-le v0, v1, :cond_41

    .line 5964
    const-string v6, "group_id"

    invoke-interface {v11, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v22

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5965
    move-object v0, v11

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    int-to-long v8, v6

    const/4 v6, 0x0

    invoke-static {v8, v9, v6}, Lcom/lge/homecube/AllAppsSettings$AllApps;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v22

    move-object v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 5966
    invoke-virtual/range {v22 .. v22}, Landroid/content/ContentValues;->clear()V

    goto/16 :goto_41

    .line 5973
    .end local v12           #classname:Ljava/lang/String;
    .end local v13           #component:Landroid/content/ComponentName;
    .end local v17           #info:Lcom/lge/homecube/ApplicationInfo;
    .end local v18           #intent:Landroid/content/Intent;
    .end local v19           #intentDescription:Ljava/lang/String;
    :cond_1cf
    new-instance v6, Lcom/lge/homecube/Launcher$ItemsLoader;

    const/4 v7, 0x0

    move-object v0, v6

    move-object/from16 v1, p0

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Lcom/lge/homecube/Launcher$ItemsLoader;-><init>(Lcom/lge/homecube/Launcher;Lcom/lge/homecube/Launcher$1;)V

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/lge/homecube/Launcher;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 5975
    return-void

    .line 5931
    :pswitch_data_1e0
    .packed-switch 0x0
        :pswitch_d3
        :pswitch_f3
        :pswitch_113
        :pswitch_133
        :pswitch_154
        :pswitch_175
    .end packed-switch
.end method

.method public ResetGroup()V
    .registers 24

    .prologue
    .line 5983
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/lge/homecube/Launcher;->SetGroupNumPreference(I)V

    .line 5985
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->group1_Grid:Lcom/lge/homecube/AllAppsGridView;

    move-object v6, v0

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Lcom/lge/homecube/AllAppsGridView;->setVisibility(I)V

    .line 5986
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->mTitleGroup1:Landroid/widget/TextView;

    move-object v6, v0

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5987
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->group2_Grid:Lcom/lge/homecube/AllAppsGridView;

    move-object v6, v0

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Lcom/lge/homecube/AllAppsGridView;->setVisibility(I)V

    .line 5988
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->mTitleGroup2:Landroid/widget/TextView;

    move-object v6, v0

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5989
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->group3_Grid:Lcom/lge/homecube/AllAppsGridView;

    move-object v6, v0

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Lcom/lge/homecube/AllAppsGridView;->setVisibility(I)V

    .line 5990
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->mTitleGroup3:Landroid/widget/TextView;

    move-object v6, v0

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5991
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->group4_Grid:Lcom/lge/homecube/AllAppsGridView;

    move-object v6, v0

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Lcom/lge/homecube/AllAppsGridView;->setVisibility(I)V

    .line 5992
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->mTitleGroup4:Landroid/widget/TextView;

    move-object v6, v0

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5993
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->group5_Grid:Lcom/lge/homecube/AllAppsGridView;

    move-object v6, v0

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Lcom/lge/homecube/AllAppsGridView;->setVisibility(I)V

    .line 5994
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->mTitleGroup5:Landroid/widget/TextView;

    move-object v6, v0

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5995
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->group6_Grid:Lcom/lge/homecube/AllAppsGridView;

    move-object v6, v0

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Lcom/lge/homecube/AllAppsGridView;->setVisibility(I)V

    .line 5996
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->mTitleGroup6:Landroid/widget/TextView;

    move-object v6, v0

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5999
    sget-object v6, Lcom/lge/homecube/Launcher;->mOpCode:Ljava/lang/String;

    const-string v7, "RGS"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_178

    .line 6000
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->mTitleOperator:Landroid/widget/TextView;

    move-object v6, v0

    const v7, 0x7f09002d

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 6010
    :goto_94
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->mTitleCommunication:Landroid/widget/TextView;

    move-object v6, v0

    const v7, 0x7f090028

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 6011
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->mTitleMultimedia:Landroid/widget/TextView;

    move-object v6, v0

    const v7, 0x7f090029

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 6012
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->mTitleUtilities:Landroid/widget/TextView;

    move-object v6, v0

    const v7, 0x7f09002a

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 6013
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->mTitleGoogle:Landroid/widget/TextView;

    move-object v6, v0

    const v7, 0x7f090031

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 6014
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->mTitleDownloads:Landroid/widget/TextView;

    move-object v6, v0

    const v7, 0x7f09002b

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 6024
    invoke-direct/range {p0 .. p0}, Lcom/lge/homecube/Launcher;->setToDefaultGroupName()V

    .line 6027
    invoke-virtual/range {p0 .. p0}, Lcom/lge/homecube/Launcher;->getContext()Landroid/content/Context;

    move-result-object v12

    .line 6028
    .local v12, context:Landroid/content/Context;
    new-instance v22, Landroid/content/ContentValues;

    invoke-direct/range {v22 .. v22}, Landroid/content/ContentValues;-><init>()V

    .line 6029
    .local v22, values:Landroid/content/ContentValues;
    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 6032
    .local v5, cr:Landroid/content/ContentResolver;
    const/4 v6, 0x6

    new-array v7, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v8, "position"

    aput-object v8, v7, v6

    const/4 v6, 0x1

    const-string v8, "group_id"

    aput-object v8, v7, v6

    const/4 v6, 0x2

    const-string v8, "original_position"

    aput-object v8, v7, v6

    const/4 v6, 0x3

    const-string v8, "original_group_id"

    aput-object v8, v7, v6

    const/4 v6, 0x4

    const-string v8, "_id"

    aput-object v8, v7, v6

    const/4 v6, 0x5

    const-string v8, "intent"

    aput-object v8, v7, v6

    .line 6035
    .local v7, QUERY_COLUMNS:[Ljava/lang/String;
    sget-object v6, Lcom/lge/homecube/AllAppsSettings$AllApps;->CONTENT_URI:Landroid/net/Uri;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 6038
    .local v11, c:Landroid/database/Cursor;
    const-string v6, "_id"

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 6039
    .local v15, idIndex:I
    const-string v6, "intent"

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    .line 6040
    .local v18, intentIndex:I
    const-string v6, "position"

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    .line 6041
    .local v21, positionIndex:I
    const-string v6, "group_id"

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 6042
    .local v14, group_idIndex:I
    const-string v6, "original_position"

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    .line 6043
    .local v20, origin_positionIndex:I
    const-string v6, "original_group_id"

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    .line 6048
    .end local v7           #QUERY_COLUMNS:[Ljava/lang/String;
    .local v19, origin_group_idIndex:I
    :goto_129
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_19e

    .line 6050
    move-object v0, v11

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 6053
    .local v17, intentDescription:Ljava/lang/String;
    :try_start_136
    invoke-static/range {v17 .. v17}, Landroid/content/Intent;->getIntent(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_139
    .catch Ljava/net/URISyntaxException; {:try_start_136 .. :try_end_139} :catch_19c

    move-result-object v16

    .line 6058
    .local v16, intent:Landroid/content/Intent;
    const-string v6, "position"

    move-object v0, v11

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v22

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 6059
    const-string v6, "group_id"

    move-object v0, v11

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v22

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 6060
    invoke-interface {v11, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    int-to-long v8, v6

    const/4 v6, 0x0

    invoke-static {v8, v9, v6}, Lcom/lge/homecube/AllAppsSettings$AllApps;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v22

    move-object v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_129

    .line 6002
    .end local v5           #cr:Landroid/content/ContentResolver;
    .end local v11           #c:Landroid/database/Cursor;
    .end local v12           #context:Landroid/content/Context;
    .end local v14           #group_idIndex:I
    .end local v15           #idIndex:I
    .end local v16           #intent:Landroid/content/Intent;
    .end local v17           #intentDescription:Ljava/lang/String;
    .end local v18           #intentIndex:I
    .end local v19           #origin_group_idIndex:I
    .end local v20           #origin_positionIndex:I
    .end local v21           #positionIndex:I
    .end local v22           #values:Landroid/content/ContentValues;
    :cond_178
    sget-object v6, Lcom/lge/homecube/Launcher;->mOpCode:Ljava/lang/String;

    const-string v7, "TIM"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_18f

    .line 6003
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->mTitleOperator:Landroid/widget/TextView;

    move-object v6, v0

    const v7, 0x7f09002e

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_94

    .line 6007
    :cond_18f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->mTitleOperator:Landroid/widget/TextView;

    move-object v6, v0

    const v7, 0x7f09002c

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_94

    .line 6054
    .restart local v5       #cr:Landroid/content/ContentResolver;
    .restart local v11       #c:Landroid/database/Cursor;
    .restart local v12       #context:Landroid/content/Context;
    .restart local v14       #group_idIndex:I
    .restart local v15       #idIndex:I
    .restart local v17       #intentDescription:Ljava/lang/String;
    .restart local v18       #intentIndex:I
    .restart local v19       #origin_group_idIndex:I
    .restart local v20       #origin_positionIndex:I
    .restart local v21       #positionIndex:I
    .restart local v22       #values:Landroid/content/ContentValues;
    :catch_19c
    move-exception v13

    .line 6055
    .local v13, e:Ljava/net/URISyntaxException;
    goto :goto_129

    .line 6067
    .end local v13           #e:Ljava/net/URISyntaxException;
    .end local v17           #intentDescription:Ljava/lang/String;
    :cond_19e
    new-instance v6, Lcom/lge/homecube/Launcher$ItemsLoader;

    const/4 v7, 0x0

    move-object v0, v6

    move-object/from16 v1, p0

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Lcom/lge/homecube/Launcher$ItemsLoader;-><init>(Lcom/lge/homecube/Launcher;Lcom/lge/homecube/Launcher$1;)V

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/lge/homecube/Launcher;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 6068
    return-void
.end method

.method public SetGroupNumPreference(I)V
    .registers 6
    .parameter "numofgroup"

    .prologue
    .line 6258
    const-string v2, "added_group"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/lge/homecube/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 6259
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 6260
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "Number of Group"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 6261
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 6262
    return-void
.end method

.method public SetGroupname(ILjava/lang/String;)V
    .registers 7
    .parameter "id"
    .parameter "name"

    .prologue
    .line 6303
    const-string v2, "group_name"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/lge/homecube/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 6304
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 6306
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    packed-switch p1, :pswitch_data_5a

    .line 6345
    :goto_e
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 6346
    return-void

    .line 6308
    :pswitch_12
    const-string v2, "allapps_title1"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_e

    .line 6311
    :pswitch_18
    const-string v2, "allapps_title2"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_e

    .line 6314
    :pswitch_1e
    const-string v2, "allapps_title3"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_e

    .line 6317
    :pswitch_24
    const-string v2, "allapps_title4"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_e

    .line 6320
    :pswitch_2a
    const-string v2, "allapps_title5"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_e

    .line 6323
    :pswitch_30
    const-string v2, "allapps_title6"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_e

    .line 6326
    :pswitch_36
    const-string v2, "allapps_title7"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_e

    .line 6329
    :pswitch_3c
    const-string v2, "allapps_title8"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_e

    .line 6332
    :pswitch_42
    const-string v2, "allapps_title9"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_e

    .line 6335
    :pswitch_48
    const-string v2, "allapps_title10"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_e

    .line 6338
    :pswitch_4e
    const-string v2, "allapps_title11"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_e

    .line 6341
    :pswitch_54
    const-string v2, "allapps_title12"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_e

    .line 6306
    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_12
        :pswitch_18
        :pswitch_1e
        :pswitch_24
        :pswitch_2a
        :pswitch_30
        :pswitch_36
        :pswitch_3c
        :pswitch_42
        :pswitch_48
        :pswitch_4e
        :pswitch_54
    .end packed-switch
.end method

.method public SetRenameTitleIdPreference(I)V
    .registers 6
    .parameter "id"

    .prologue
    .line 6288
    const-string v2, "rename_title_id"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/lge/homecube/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 6289
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 6290
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "RenameTitleId"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 6291
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 6292
    return-void
.end method

.method public SetRenameTitlePreference(Ljava/lang/String;)V
    .registers 6
    .parameter "old_title"

    .prologue
    .line 6273
    const-string v2, "rename_title"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/lge/homecube/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 6274
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 6275
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "RenameTitle"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 6276
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 6277
    return-void
.end method

.method addAppWidget(Landroid/content/Intent;)V
    .registers 10
    .parameter "data"

    .prologue
    const/4 v6, 0x5

    const/4 v5, -0x1

    const-string v7, "appWidgetId"

    .line 2608
    const-string v4, "appWidgetId"

    invoke-virtual {p1, v7, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 2610
    .local v1, appWidgetId:I
    const-string v4, "custom_widget"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2611
    .local v2, customWidget:Ljava/lang/String;
    const-string v4, "search_widget"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 2613
    iget-object v4, p0, Lcom/lge/homecube/Launcher;->mAppWidgetHost:Lcom/lge/homecube/LauncherAppWidgetHost;

    invoke-virtual {v4, v1}, Lcom/lge/homecube/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    .line 2615
    invoke-virtual {p0}, Lcom/lge/homecube/Launcher;->addSearch()V

    .line 2631
    :goto_20
    return-void

    .line 2617
    :cond_21
    iget-object v4, p0, Lcom/lge/homecube/Launcher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v4, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    .line 2619
    .local v0, appWidget:Landroid/appwidget/AppWidgetProviderInfo;
    iget-object v4, v0, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz v4, :cond_40

    .line 2621
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.appwidget.action.APPWIDGET_CONFIGURE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2622
    .local v3, intent:Landroid/content/Intent;
    iget-object v4, v0, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2623
    const-string v4, "appWidgetId"

    invoke-virtual {v3, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2625
    invoke-virtual {p0, v3, v6}, Lcom/lge/homecube/Launcher;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_20

    .line 2628
    .end local v3           #intent:Landroid/content/Intent;
    :cond_40
    invoke-virtual {p0, v6, v5, p1}, Lcom/lge/homecube/Launcher;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_20
.end method

.method addFolder(Z)V
    .registers 12
    .parameter "insertAtFirst"

    .prologue
    const/4 v8, 0x1

    .line 2689
    new-instance v1, Lcom/lge/homecube/UserFolderInfo;

    invoke-direct {v1}, Lcom/lge/homecube/UserFolderInfo;-><init>()V

    .line 2690
    .local v1, folderInfo:Lcom/lge/homecube/UserFolderInfo;
    const v0, 0x7f090001

    invoke-virtual {p0, v0}, Lcom/lge/homecube/Launcher;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v1, Lcom/lge/homecube/UserFolderInfo;->title:Ljava/lang/CharSequence;

    .line 2692
    iget-object v9, p0, Lcom/lge/homecube/Launcher;->mAddItemCellInfo:Lcom/lge/homecube/CellLayout$CellInfo;

    .line 2693
    .local v9, cellInfo:Lcom/lge/homecube/CellLayout$CellInfo;
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->mWorkspace:Lcom/lge/homecube/Workspace;

    invoke-virtual {v0}, Lcom/lge/homecube/Workspace;->getCurrentScreen()I

    move-result v0

    iput v0, v9, Lcom/lge/homecube/CellLayout$CellInfo;->screen:I

    .line 2694
    invoke-direct {p0, v9}, Lcom/lge/homecube/Launcher;->findSingleSlot(Lcom/lge/homecube/CellLayout$CellInfo;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 2707
    :goto_1f
    return-void

    .line 2697
    :cond_20
    const-wide/16 v2, -0x64

    iget-object v0, p0, Lcom/lge/homecube/Launcher;->mWorkspace:Lcom/lge/homecube/Workspace;

    invoke-virtual {v0}, Lcom/lge/homecube/Workspace;->getCurrentScreen()I

    move-result v4

    iget v5, v9, Lcom/lge/homecube/CellLayout$CellInfo;->cellX:I

    iget v6, v9, Lcom/lge/homecube/CellLayout$CellInfo;->cellY:I

    const/4 v7, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/lge/homecube/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/lge/homecube/ItemInfo;JIIIZ)V

    .line 2699
    sget-object v0, Lcom/lge/homecube/Launcher;->sModel:Lcom/lge/homecube/LauncherModel;

    invoke-virtual {v0, v1}, Lcom/lge/homecube/LauncherModel;->addDesktopItem(Lcom/lge/homecube/ItemInfo;)V

    .line 2700
    sget-object v0, Lcom/lge/homecube/Launcher;->sModel:Lcom/lge/homecube/LauncherModel;

    invoke-virtual {v0, v1}, Lcom/lge/homecube/LauncherModel;->addFolder(Lcom/lge/homecube/FolderInfo;)V

    .line 2703
    const v2, 0x7f030007

    iget-object v0, p0, Lcom/lge/homecube/Launcher;->mWorkspace:Lcom/lge/homecube/Workspace;

    iget-object v4, p0, Lcom/lge/homecube/Launcher;->mWorkspace:Lcom/lge/homecube/Workspace;

    invoke-virtual {v4}, Lcom/lge/homecube/Workspace;->getCurrentScreen()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/lge/homecube/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v2, p0, v0, v1}, Lcom/lge/homecube/FolderIcon;->fromXml(ILcom/lge/homecube/Launcher;Landroid/view/ViewGroup;Lcom/lge/homecube/UserFolderInfo;)Lcom/lge/homecube/FolderIcon;

    move-result-object v3

    .line 2705
    .local v3, newFolder:Lcom/lge/homecube/FolderIcon;
    iget-object v2, p0, Lcom/lge/homecube/Launcher;->mWorkspace:Lcom/lge/homecube/Workspace;

    iget v4, v9, Lcom/lge/homecube/CellLayout$CellInfo;->cellX:I

    iget v5, v9, Lcom/lge/homecube/CellLayout$CellInfo;->cellY:I

    move v6, v8

    move v7, v8

    move v8, p1

    invoke-virtual/range {v2 .. v8}, Lcom/lge/homecube/Workspace;->addInCurrentScreen(Landroid/view/View;IIIIZ)V

    goto :goto_1f
.end method

.method addLiveFolder(Landroid/content/Intent;)V
    .registers 6
    .parameter "intent"

    .prologue
    .line 2678
    invoke-virtual {p0}, Lcom/lge/homecube/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09000e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2679
    .local v0, folderName:Ljava/lang/String;
    const-string v2, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2681
    .local v1, shortcutName:Ljava/lang/String;
    if-eqz v0, :cond_24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 2682
    iget-boolean v2, p0, Lcom/lge/homecube/Launcher;->mDesktopLocked:Z

    if-nez v2, :cond_22

    const/4 v2, 0x1

    :goto_1e
    invoke-virtual {p0, v2}, Lcom/lge/homecube/Launcher;->addFolder(Z)V

    .line 2686
    :goto_21
    return-void

    .line 2682
    :cond_22
    const/4 v2, 0x0

    goto :goto_1e

    .line 2684
    :cond_24
    const/4 v2, 0x4

    invoke-virtual {p0, p1, v2}, Lcom/lge/homecube/Launcher;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_21
.end method

.method addSearch()V
    .registers 15

    .prologue
    const/4 v13, 0x1

    const/4 v7, 0x0

    .line 2634
    invoke-static {}, Lcom/lge/homecube/Widget;->makeSearch()Lcom/lge/homecube/Widget;

    move-result-object v1

    .line 2635
    .local v1, info:Lcom/lge/homecube/Widget;
    iget-object v8, p0, Lcom/lge/homecube/Launcher;->mAddItemCellInfo:Lcom/lge/homecube/CellLayout$CellInfo;

    .line 2637
    .local v8, cellInfo:Lcom/lge/homecube/CellLayout$CellInfo;
    iget-object v12, p0, Lcom/lge/homecube/Launcher;->mCellCoordinates:[I

    .line 2638
    .local v12, xy:[I
    iget v10, v1, Lcom/lge/homecube/Widget;->spanX:I

    .line 2639
    .local v10, spanX:I
    iget v11, v1, Lcom/lge/homecube/Widget;->spanY:I

    .line 2641
    .local v11, spanY:I
    invoke-direct {p0, v8, v12, v10, v11}, Lcom/lge/homecube/Launcher;->findSlot(Lcom/lge/homecube/CellLayout$CellInfo;[III)Z

    move-result v0

    if-nez v0, :cond_15

    .line 2653
    :goto_14
    return-void

    .line 2643
    :cond_15
    sget-object v0, Lcom/lge/homecube/Launcher;->sModel:Lcom/lge/homecube/LauncherModel;

    invoke-virtual {v0, v1}, Lcom/lge/homecube/LauncherModel;->addDesktopItem(Lcom/lge/homecube/ItemInfo;)V

    .line 2644
    const-wide/16 v2, -0x64

    iget-object v0, p0, Lcom/lge/homecube/Launcher;->mWorkspace:Lcom/lge/homecube/Workspace;

    invoke-virtual {v0}, Lcom/lge/homecube/Workspace;->getCurrentScreen()I

    move-result v4

    aget v5, v12, v7

    aget v6, v12, v13

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/lge/homecube/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/lge/homecube/ItemInfo;JIIIZ)V

    .line 2647
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->mInflater:Landroid/view/LayoutInflater;

    iget v2, v1, Lcom/lge/homecube/Widget;->layoutResource:I

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 2648
    .local v3, view:Landroid/view/View;
    invoke-virtual {v3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2649
    const v0, 0x7f050036

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/lge/homecube/Search;

    .line 2650
    .local v9, search:Lcom/lge/homecube/Search;
    invoke-virtual {v9, p0}, Lcom/lge/homecube/Search;->setLauncher(Lcom/lge/homecube/Launcher;)V

    .line 2652
    iget-object v2, p0, Lcom/lge/homecube/Launcher;->mWorkspace:Lcom/lge/homecube/Workspace;

    aget v4, v12, v7

    aget v5, v12, v13

    iget v6, v1, Lcom/lge/homecube/Widget;->spanX:I

    move v7, v11

    invoke-virtual/range {v2 .. v7}, Lcom/lge/homecube/Workspace;->addInCurrentScreen(Landroid/view/View;IIII)V

    goto :goto_14
.end method

.method addShortcut(Landroid/content/Intent;)V
    .registers 9
    .parameter "intent"

    .prologue
    const-string v6, "themestate"

    .line 2657
    invoke-virtual {p0}, Lcom/lge/homecube/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09000b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2658
    .local v0, applicationName:Ljava/lang/String;
    const-string v4, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2660
    .local v3, shortcutName:Ljava/lang/String;
    if-eqz v0, :cond_42

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_42

    .line 2661
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    const/4 v5, 0x0

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2662
    .local v1, mainIntent:Landroid/content/Intent;
    const-string v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2664
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.PICK_ACTIVITY"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2665
    .local v2, pickIntent:Landroid/content/Intent;
    const-string v4, "android.intent.extra.INTENT"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2667
    const-string v4, "themestate"

    invoke-virtual {p0}, Lcom/lge/homecube/Launcher;->getThemeState()Z

    move-result v4

    invoke-virtual {v2, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2668
    const/4 v4, 0x6

    invoke-virtual {p0, v2, v4}, Lcom/lge/homecube/Launcher;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2674
    .end local v1           #mainIntent:Landroid/content/Intent;
    .end local v2           #pickIntent:Landroid/content/Intent;
    :goto_41
    return-void

    .line 2671
    :cond_42
    const-string v4, "themestate"

    invoke-virtual {p0}, Lcom/lge/homecube/Launcher;->getThemeState()Z

    move-result v4

    invoke-virtual {p1, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2672
    const/4 v4, 0x1

    invoke-virtual {p0, p1, v4}, Lcom/lge/homecube/Launcher;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_41
.end method

.method public changeGridSelector(Z)V
    .registers 5
    .parameter "state"

    .prologue
    const v2, 0x7f020064

    const v1, 0x7f020063

    .line 6627
    if-eqz p1, :cond_45

    .line 6629
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->operator_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v0, v2}, Lcom/lge/homecube/AllAppsGridView;->setSelector(I)V

    .line 6630
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->commuication_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v0, v2}, Lcom/lge/homecube/AllAppsGridView;->setSelector(I)V

    .line 6631
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->multimedia_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v0, v2}, Lcom/lge/homecube/AllAppsGridView;->setSelector(I)V

    .line 6632
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->utilities_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v0, v2}, Lcom/lge/homecube/AllAppsGridView;->setSelector(I)V

    .line 6633
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->google_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v0, v2}, Lcom/lge/homecube/AllAppsGridView;->setSelector(I)V

    .line 6634
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->downloads_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v0, v2}, Lcom/lge/homecube/AllAppsGridView;->setSelector(I)V

    .line 6635
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->group1_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v0, v2}, Lcom/lge/homecube/AllAppsGridView;->setSelector(I)V

    .line 6636
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->group2_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v0, v2}, Lcom/lge/homecube/AllAppsGridView;->setSelector(I)V

    .line 6637
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->group3_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v0, v2}, Lcom/lge/homecube/AllAppsGridView;->setSelector(I)V

    .line 6638
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->group4_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v0, v2}, Lcom/lge/homecube/AllAppsGridView;->setSelector(I)V

    .line 6639
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->group5_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v0, v2}, Lcom/lge/homecube/AllAppsGridView;->setSelector(I)V

    .line 6640
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->group6_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v0, v2}, Lcom/lge/homecube/AllAppsGridView;->setSelector(I)V

    .line 6658
    :goto_44
    return-void

    .line 6644
    :cond_45
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->operator_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v0, v1}, Lcom/lge/homecube/AllAppsGridView;->setSelector(I)V

    .line 6645
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->commuication_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v0, v1}, Lcom/lge/homecube/AllAppsGridView;->setSelector(I)V

    .line 6646
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->multimedia_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v0, v1}, Lcom/lge/homecube/AllAppsGridView;->setSelector(I)V

    .line 6647
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->utilities_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v0, v1}, Lcom/lge/homecube/AllAppsGridView;->setSelector(I)V

    .line 6648
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->google_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v0, v1}, Lcom/lge/homecube/AllAppsGridView;->setSelector(I)V

    .line 6649
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->downloads_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v0, v1}, Lcom/lge/homecube/AllAppsGridView;->setSelector(I)V

    .line 6650
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->group1_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v0, v1}, Lcom/lge/homecube/AllAppsGridView;->setSelector(I)V

    .line 6651
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->group2_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v0, v1}, Lcom/lge/homecube/AllAppsGridView;->setSelector(I)V

    .line 6652
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->group3_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v0, v1}, Lcom/lge/homecube/AllAppsGridView;->setSelector(I)V

    .line 6653
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->group4_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v0, v1}, Lcom/lge/homecube/AllAppsGridView;->setSelector(I)V

    .line 6654
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->group5_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v0, v1}, Lcom/lge/homecube/AllAppsGridView;->setSelector(I)V

    .line 6655
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->group6_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v0, v1}, Lcom/lge/homecube/AllAppsGridView;->setSelector(I)V

    goto :goto_44
.end method

.method public changeTheme(Z)V
    .registers 2
    .parameter "state"

    .prologue
    .line 6537
    invoke-virtual {p0, p1}, Lcom/lge/homecube/Launcher;->setThemeState(Z)V

    .line 6539
    return-void
.end method

.method public changeVisibility(I)V
    .registers 4
    .parameter "groupnum"

    .prologue
    const/4 v1, 0x0

    .line 1794
    packed-switch p1, :pswitch_data_48

    .line 1820
    :goto_4
    return-void

    .line 1796
    :pswitch_5
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->group1_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v0, v1}, Lcom/lge/homecube/AllAppsGridView;->setVisibility(I)V

    .line 1797
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->mTitleGroup1:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 1800
    :pswitch_10
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->group2_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v0, v1}, Lcom/lge/homecube/AllAppsGridView;->setVisibility(I)V

    .line 1801
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->mTitleGroup2:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 1804
    :pswitch_1b
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->group3_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v0, v1}, Lcom/lge/homecube/AllAppsGridView;->setVisibility(I)V

    .line 1805
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->mTitleGroup3:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 1808
    :pswitch_26
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->group4_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v0, v1}, Lcom/lge/homecube/AllAppsGridView;->setVisibility(I)V

    .line 1809
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->mTitleGroup4:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 1812
    :pswitch_31
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->group5_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v0, v1}, Lcom/lge/homecube/AllAppsGridView;->setVisibility(I)V

    .line 1813
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->mTitleGroup5:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 1816
    :pswitch_3c
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->group6_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v0, v1}, Lcom/lge/homecube/AllAppsGridView;->setVisibility(I)V

    .line 1817
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->mTitleGroup6:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 1794
    nop

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_5
        :pswitch_10
        :pswitch_1b
        :pswitch_26
        :pswitch_31
        :pswitch_3c
    .end packed-switch
.end method

.method closeAllApplications()V
    .registers 2

    .prologue
    .line 3311
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->mDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->close()V

    .line 3312
    return-void
.end method

.method closeFolder(Lcom/lge/homecube/Folder;)V
    .registers 5
    .parameter "folder"

    .prologue
    .line 2906
    invoke-virtual {p1}, Lcom/lge/homecube/Folder;->getInfo()Lcom/lge/homecube/FolderInfo;

    move-result-object v1

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/lge/homecube/FolderInfo;->opened:Z

    .line 2907
    invoke-virtual {p1}, Lcom/lge/homecube/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 2908
    .local v0, parent:Landroid/view/ViewGroup;
    if-eqz v0, :cond_12

    .line 2909
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2911
    :cond_12
    invoke-virtual {p1}, Lcom/lge/homecube/Folder;->onClose()V

    .line 2912
    return-void
.end method

.method completeAddApplication(Landroid/content/Context;Landroid/content/Intent;Lcom/lge/homecube/CellLayout$CellInfo;Z)V
    .registers 13
    .parameter "context"
    .parameter "data"
    .parameter "cellInfo"
    .parameter "insertAtFirst"

    .prologue
    .line 1955
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->mWorkspace:Lcom/lge/homecube/Workspace;

    invoke-virtual {v6}, Lcom/lge/homecube/Workspace;->getCurrentScreen()I

    move-result v6

    iput v6, p3, Lcom/lge/homecube/CellLayout$CellInfo;->screen:I

    .line 1956
    invoke-direct {p0, p3}, Lcom/lge/homecube/Launcher;->findSingleSlot(Lcom/lge/homecube/CellLayout$CellInfo;)Z

    move-result v6

    if-nez v6, :cond_f

    .line 2065
    :cond_e
    :goto_e
    return-void

    .line 1959
    :cond_f
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 1962
    .local v2, component:Landroid/content/ComponentName;
    const/4 v1, 0x0

    .line 1963
    .local v1, classname:Ljava/lang/String;
    if-eqz v2, :cond_1a

    .line 1964
    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 1967
    :cond_1a
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 1968
    .local v5, packageManager:Landroid/content/pm/PackageManager;
    const/4 v0, 0x0

    .line 1970
    .local v0, activityInfo:Landroid/content/pm/ActivityInfo;
    const/4 v6, 0x0

    :try_start_20
    invoke-virtual {v5, v2, v6}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_23
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_20 .. :try_end_23} :catch_64

    move-result-object v0

    .line 1975
    :goto_24
    if-eqz v0, :cond_e

    .line 1976
    new-instance v4, Lcom/lge/homecube/ApplicationInfo;

    invoke-direct {v4}, Lcom/lge/homecube/ApplicationInfo;-><init>()V

    .line 1978
    .local v4, itemInfo:Lcom/lge/homecube/ApplicationInfo;
    invoke-virtual {v0, v5}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, v4, Lcom/lge/homecube/ApplicationInfo;->title:Ljava/lang/CharSequence;

    .line 1979
    iget-object v6, v4, Lcom/lge/homecube/ApplicationInfo;->title:Ljava/lang/CharSequence;

    if-nez v6, :cond_39

    .line 1980
    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object v6, v4, Lcom/lge/homecube/ApplicationInfo;->title:Ljava/lang/CharSequence;

    .line 1983
    :cond_39
    const/high16 v6, 0x1020

    invoke-virtual {v4, v2, v6}, Lcom/lge/homecube/ApplicationInfo;->setActivity(Landroid/content/ComponentName;I)V

    .line 1988
    invoke-virtual {p0}, Lcom/lge/homecube/Launcher;->getThemeState()Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_231

    .line 1990
    const-string v6, "com.android.browser.BrowserActivity"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6d

    .line 1991
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020009

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, v4, Lcom/lge/homecube/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 2061
    :goto_5a
    const-wide/16 v6, -0x1

    iput-wide v6, v4, Lcom/lge/homecube/ApplicationInfo;->container:J

    .line 2063
    iget-object v6, p0, Lcom/lge/homecube/Launcher;->mWorkspace:Lcom/lge/homecube/Workspace;

    invoke-virtual {v6, v4, p3, p4}, Lcom/lge/homecube/Workspace;->addApplicationShortcut(Lcom/lge/homecube/ApplicationInfo;Lcom/lge/homecube/CellLayout$CellInfo;Z)V

    goto :goto_e

    .line 1971
    .end local v4           #itemInfo:Lcom/lge/homecube/ApplicationInfo;
    :catch_64
    move-exception v3

    .line 1972
    .local v3, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "CubeHome"

    const-string v7, "Couldn\'t find ActivityInfo for selected application"

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_24

    .line 1993
    .end local v3           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v4       #itemInfo:Lcom/lge/homecube/ApplicationInfo;
    :cond_6d
    const-string v6, "com.android.contacts.DialtactsContactsEntryActivity"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_83

    .line 1994
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020012

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, v4, Lcom/lge/homecube/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_5a

    .line 1996
    :cond_83
    const-string v6, "com.android.contacts.DialtactsActivity"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_99

    .line 1997
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020016

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, v4, Lcom/lge/homecube/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_5a

    .line 1999
    :cond_99
    const-string v6, "com.android.email.activity.Welcome"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_af

    .line 2000
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020017

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, v4, Lcom/lge/homecube/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_5a

    .line 2002
    :cond_af
    const-string v6, "com.android.im.plugin.orange.LandingPage"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c3

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.android.im.app.LandingPage"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d1

    .line 2003
    :cond_c3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f02003b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, v4, Lcom/lge/homecube/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_5a

    .line 2005
    :cond_d1
    const-string v6, "com.android.mms.ui.ConversationList"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e8

    .line 2006
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020049

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, v4, Lcom/lge/homecube/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_5a

    .line 2008
    :cond_e8
    const-string v6, "com.good.android.ui.LaunchActivity"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ff

    .line 2009
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020068

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, v4, Lcom/lge/homecube/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_5a

    .line 2011
    :cond_ff
    const-string v6, "com.lge.sns.account.ui.AccountListView"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_116

    .line 2012
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020046

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, v4, Lcom/lge/homecube/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_5a

    .line 2014
    :cond_116
    const-string v6, "com.arcsoft.camera.ArcCameraApp"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12d

    .line 2015
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020010

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, v4, Lcom/lge/homecube/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_5a

    .line 2017
    :cond_12d
    const-string v6, "lge.android.fmradio.FmRadioView"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_144

    .line 2018
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020019

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, v4, Lcom/lge/homecube/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_5a

    .line 2020
    :cond_144
    const-string v6, "arcsoft.android.arcmediagallery.ArcPictureGallery"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15b

    .line 2021
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020001

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, v4, Lcom/lge/homecube/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_5a

    .line 2023
    :cond_15b
    const-string v6, "arcsoft.android.arcmmp.MainUI"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_172

    .line 2024
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020047

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, v4, Lcom/lge/homecube/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_5a

    .line 2026
    :cond_172
    const-string v6, "com.android.music.MusicBrowserActivity"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_189

    .line 2027
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f02004b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, v4, Lcom/lge/homecube/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_5a

    .line 2029
    :cond_189
    const-string v6, "arcsoft.android.videoeditor.MainUI"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a0

    .line 2030
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020084

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, v4, Lcom/lge/homecube/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_5a

    .line 2032
    :cond_1a0
    const-string v6, "com.android.alarmclock.AlarmClock"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b6

    .line 2033
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/high16 v7, 0x7f02

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, v4, Lcom/lge/homecube/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_5a

    .line 2035
    :cond_1b6
    const-string v6, "com.android.calculator2.Calculator"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1cd

    .line 2036
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f02000e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, v4, Lcom/lge/homecube/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_5a

    .line 2038
    :cond_1cd
    const-string v6, "com.lge.favoritecontacts.FavoriteContacts"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1e4

    .line 2039
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020018

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, v4, Lcom/lge/homecube/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_5a

    .line 2041
    :cond_1e4
    const-string v6, "com.lge.homeselector.HomeSelectorActivity"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1fb

    .line 2042
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020022

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, v4, Lcom/lge/homecube/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_5a

    .line 2044
    :cond_1fb
    const-string v6, "com.android.soundrecorder.SRListActivity"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_212

    .line 2045
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020086

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, v4, Lcom/lge/homecube/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_5a

    .line 2047
    :cond_212
    const-string v6, "com.android.settings.Settings"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_229

    .line 2048
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f02006e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, v4, Lcom/lge/homecube/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_5a

    .line 2052
    :cond_229
    invoke-virtual {v0, v5}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, v4, Lcom/lge/homecube/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_5a

    .line 2057
    :cond_231
    invoke-virtual {v0, v5}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, v4, Lcom/lge/homecube/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_5a
.end method

.method createShortcut(ILandroid/view/ViewGroup;Lcom/lge/homecube/ApplicationInfo;)Landroid/view/View;
    .registers 13
    .parameter "layoutResId"
    .parameter "parent"
    .parameter "info"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1845
    iget-object v5, p0, Lcom/lge/homecube/Launcher;->mInflater:Landroid/view/LayoutInflater;

    const/4 v6, 0x0

    invoke-virtual {v5, p1, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1847
    .local v3, favorite:Landroid/widget/TextView;
    const/4 v2, 0x0

    .line 1848
    .local v2, drawableIcon:Landroid/graphics/drawable/Drawable;
    iget-boolean v5, p3, Lcom/lge/homecube/ApplicationInfo;->filtered:Z

    if-nez v5, :cond_1a

    .line 1849
    iget-object v5, p3, Lcom/lge/homecube/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-static {v5, p0}, Lcom/lge/homecube/Utilities;->createIconThumbnail(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p3, Lcom/lge/homecube/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 1850
    iput-boolean v8, p3, Lcom/lge/homecube/ApplicationInfo;->filtered:Z

    .line 1854
    :cond_1a
    iget-object v5, p3, Lcom/lge/homecube/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 1856
    .local v1, component:Landroid/content/ComponentName;
    const/4 v0, 0x0

    .line 1857
    .local v0, classname:Ljava/lang/String;
    if-eqz v1, :cond_27

    .line 1858
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 1861
    :cond_27
    invoke-virtual {p0}, Lcom/lge/homecube/Launcher;->getThemeState()Z

    move-result v5

    if-ne v5, v8, :cond_1a1

    if-eqz v0, :cond_1a1

    .line 1863
    invoke-virtual {p0}, Lcom/lge/homecube/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 1865
    .local v4, resources:Landroid/content/res/Resources;
    const-string v5, "com.android.browser.BrowserActivity"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_51

    .line 1866
    const v5, 0x7f020009

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1931
    :goto_42
    invoke-virtual {v3, v7, v2, v7, v7}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1940
    .end local v4           #resources:Landroid/content/res/Resources;
    :goto_45
    iget-object v5, p3, Lcom/lge/homecube/ApplicationInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1941
    invoke-virtual {v3, p3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1942
    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1944
    return-object v3

    .line 1868
    .restart local v4       #resources:Landroid/content/res/Resources;
    :cond_51
    const-string v5, "com.android.contacts.DialtactsContactsEntryActivity"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_61

    .line 1869
    const v5, 0x7f020012

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_42

    .line 1871
    :cond_61
    const-string v5, "com.android.contacts.DialtactsActivity"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_71

    .line 1872
    const v5, 0x7f020016

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_42

    .line 1874
    :cond_71
    const-string v5, "com.android.email.activity.Welcome"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_81

    .line 1875
    const v5, 0x7f020017

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_42

    .line 1877
    :cond_81
    const-string v5, "com.android.im.plugin.orange.LandingPage"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_99

    const-string v5, "com.android.im.app.LandingPage"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_99

    const-string v5, " com.android.im.plugin.tim.LandingPage"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a1

    .line 1880
    :cond_99
    const v5, 0x7f02003b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_42

    .line 1882
    :cond_a1
    const-string v5, "com.android.mms.ui.ConversationList"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b1

    .line 1883
    const v5, 0x7f020049

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_42

    .line 1885
    :cond_b1
    const-string v5, "com.good.android.ui.LaunchActivity"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c1

    .line 1886
    const v5, 0x7f020068

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_42

    .line 1888
    :cond_c1
    const-string v5, "com.lge.sns.account.ui.AccountListView"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d2

    .line 1889
    const v5, 0x7f020046

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_42

    .line 1891
    :cond_d2
    const-string v5, "com.arcsoft.camera.ArcCameraApp"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e3

    .line 1892
    const v5, 0x7f020010

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_42

    .line 1894
    :cond_e3
    const-string v5, "lge.android.fmradio.FmRadioView"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f4

    .line 1895
    const v5, 0x7f020019

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_42

    .line 1897
    :cond_f4
    const-string v5, "arcsoft.android.arcmediagallery.ArcPictureGallery"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_105

    .line 1898
    const v5, 0x7f020001

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_42

    .line 1900
    :cond_105
    const-string v5, "arcsoft.android.arcmmp.MainUI"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_116

    .line 1901
    const v5, 0x7f020047

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_42

    .line 1903
    :cond_116
    const-string v5, "com.android.music.MusicBrowserActivity"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_127

    .line 1904
    const v5, 0x7f02004b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_42

    .line 1906
    :cond_127
    const-string v5, "arcsoft.android.videoeditor.MainUI"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_138

    .line 1907
    const v5, 0x7f020084

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_42

    .line 1909
    :cond_138
    const-string v5, "com.android.alarmclock.AlarmClock"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_148

    .line 1910
    const/high16 v5, 0x7f02

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_42

    .line 1912
    :cond_148
    const-string v5, "com.android.calculator2.Calculator"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_159

    .line 1913
    const v5, 0x7f02000e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_42

    .line 1915
    :cond_159
    const-string v5, "com.lge.favoritecontacts.FavoriteContacts"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16a

    .line 1916
    const v5, 0x7f020018

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_42

    .line 1918
    :cond_16a
    const-string v5, "com.lge.homeselector.HomeSelectorActivity"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17b

    .line 1919
    const v5, 0x7f020022

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_42

    .line 1921
    :cond_17b
    const-string v5, "com.android.soundrecorder.SRListActivity"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18c

    .line 1922
    const v5, 0x7f020086

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_42

    .line 1924
    :cond_18c
    const-string v5, "com.android.settings.Settings"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19d

    .line 1925
    const v5, 0x7f02006e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_42

    .line 1929
    :cond_19d
    iget-object v2, p3, Lcom/lge/homecube/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_42

    .line 1935
    .end local v4           #resources:Landroid/content/res/Resources;
    :cond_1a1
    iget-object v5, p3, Lcom/lge/homecube/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v7, v5, v7, v7}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_45
.end method

.method createShortcut(Lcom/lge/homecube/ApplicationInfo;)Landroid/view/View;
    .registers 5
    .parameter "info"

    .prologue
    .line 1831
    const v1, 0x7f030002

    iget-object v0, p0, Lcom/lge/homecube/Launcher;->mWorkspace:Lcom/lge/homecube/Workspace;

    iget-object v2, p0, Lcom/lge/homecube/Launcher;->mWorkspace:Lcom/lge/homecube/Workspace;

    invoke-virtual {v2}, Lcom/lge/homecube/Workspace;->getCurrentScreen()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/lge/homecube/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v1, v0, p1}, Lcom/lge/homecube/Launcher;->createShortcut(ILandroid/view/ViewGroup;Lcom/lge/homecube/ApplicationInfo;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 6
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    const-string v3, "Homecube"

    .line 2846
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2c

    .line 2847
    const-string v0, "Homecube"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "thom21.dispatchKeyEvent event.getKeyCode() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2848
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_76

    .line 2881
    :cond_2c
    :goto_2c
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_30
    return v0

    .line 2850
    :sswitch_31
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->mWorkspace:Lcom/lge/homecube/Workspace;

    invoke-virtual {v0, p1}, Lcom/lge/homecube/Workspace;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 2851
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->mDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 2852
    invoke-direct {p0}, Lcom/lge/homecube/Launcher;->closeDrawer()V

    :cond_41
    :goto_41
    move v0, v2

    .line 2861
    goto :goto_30

    .line 2854
    :cond_43
    invoke-direct {p0}, Lcom/lge/homecube/Launcher;->closeFolder()V

    .line 2855
    invoke-direct {p0}, Lcom/lge/homecube/Launcher;->phoneIsInUse()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 2857
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/lge/homecube/Launcher;->returnToInCallScreen(Z)V

    .line 2858
    const-string v0, "Homecube"

    const-string v0, "returnToInCallScreen(false)"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_41

    :sswitch_58
    move v0, v2

    .line 2863
    goto :goto_30

    .line 2866
    :sswitch_5a
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->mDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 2867
    iget-boolean v0, p0, Lcom/lge/homecube/Launcher;->mIsMainGridUp:Z

    if-nez v0, :cond_2c

    .line 2868
    iget-boolean v0, p0, Lcom/lge/homecube/Launcher;->mIsRotate:Z

    if-eqz v0, :cond_72

    .line 2869
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->mReuseData:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/lge/homecube/Launcher;->getAllAppsData(Ljava/lang/Object;)V

    .line 2873
    :goto_6f
    iput-boolean v2, p0, Lcom/lge/homecube/Launcher;->mIsMainGridUp:Z

    goto :goto_2c

    .line 2871
    :cond_72
    invoke-virtual {p0}, Lcom/lge/homecube/Launcher;->getAllAppsDataOrg()V

    goto :goto_6f

    .line 2848
    :sswitch_data_76
    .sparse-switch
        0x3 -> :sswitch_58
        0x4 -> :sswitch_31
        0x42 -> :sswitch_5a
    .end sparse-switch
.end method

.method public getAllAppsData(Ljava/lang/Object;)V
    .registers 23
    .parameter "data"

    .prologue
    .line 1574
    move-object/from16 v0, p1

    check-cast v0, Ljava/util/ArrayList;

    move-object v13, v0

    .line 1576
    .local v13, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/homecube/ApplicationInfo;>;"
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 1584
    .local v16, size:I
    const/16 v19, 0x1

    move/from16 v0, v16

    move/from16 v1, v19

    if-ge v0, v1, :cond_14

    .line 1585
    invoke-virtual/range {p0 .. p0}, Lcom/lge/homecube/Launcher;->getAllAppsDataOrg()V

    .line 1589
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->mOperatorItems:Ljava/util/ArrayList;

    move-object v15, v0

    .line 1590
    .local v15, operatorItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/homecube/ApplicationInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->mCommunicationItems:Ljava/util/ArrayList;

    move-object v2, v0

    .line 1591
    .local v2, communicationItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/homecube/ApplicationInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->mMultimediaItems:Ljava/util/ArrayList;

    move-object v14, v0

    .line 1592
    .local v14, multimediaItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/homecube/ApplicationInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->mUtilitiesItems:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    .line 1593
    .local v18, utilitiesItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/homecube/ApplicationInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->mGoogleItems:Ljava/util/ArrayList;

    move-object v5, v0

    .line 1594
    .local v5, googleItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/homecube/ApplicationInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->mDownloadsItems:Ljava/util/ArrayList;

    move-object v3, v0

    .line 1595
    .local v3, downloadsItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/homecube/ApplicationInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->mGroup1Items:Ljava/util/ArrayList;

    move-object v6, v0

    .line 1596
    .local v6, group1Items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/homecube/ApplicationInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->mGroup2Items:Ljava/util/ArrayList;

    move-object v7, v0

    .line 1597
    .local v7, group2Items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/homecube/ApplicationInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->mGroup3Items:Ljava/util/ArrayList;

    move-object v8, v0

    .line 1598
    .local v8, group3Items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/homecube/ApplicationInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->mGroup4Items:Ljava/util/ArrayList;

    move-object v9, v0

    .line 1599
    .local v9, group4Items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/homecube/ApplicationInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->mGroup5Items:Ljava/util/ArrayList;

    move-object v10, v0

    .line 1600
    .local v10, group5Items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/homecube/ApplicationInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->mGroup6Items:Ljava/util/ArrayList;

    move-object v11, v0

    .line 1602
    .local v11, group6Items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/homecube/ApplicationInfo;>;"
    :try_start_51
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->mOperatorItems:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->clear()V

    .line 1603
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->mCommunicationItems:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->clear()V

    .line 1604
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->mMultimediaItems:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->clear()V

    .line 1605
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->mUtilitiesItems:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->clear()V

    .line 1606
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->mGoogleItems:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->clear()V

    .line 1607
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->mDownloadsItems:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->clear()V

    .line 1608
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->mGroup1Items:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->clear()V

    .line 1609
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->mGroup2Items:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->clear()V

    .line 1610
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->mGroup3Items:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->clear()V

    .line 1611
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->mGroup4Items:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->clear()V

    .line 1612
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->mGroup5Items:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->clear()V

    .line 1613
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->mGroup6Items:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->clear()V
    :try_end_bd
    .catch Ljava/lang/NullPointerException; {:try_start_51 .. :try_end_bd} :catch_d5

    .line 1617
    :goto_bd
    const/4 v12, 0x0

    .local v12, i:I
    :goto_be
    move v0, v12

    move/from16 v1, v16

    if-ge v0, v1, :cond_135

    .line 1618
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/lge/homecube/ApplicationInfo;

    .line 1619
    .local v17, tmp:Lcom/lge/homecube/ApplicationInfo;
    move-object/from16 v0, v17

    iget v0, v0, Lcom/lge/homecube/ApplicationInfo;->group_id:I

    move/from16 v19, v0

    packed-switch v19, :pswitch_data_35a

    .line 1617
    :goto_d2
    add-int/lit8 v12, v12, 0x1

    goto :goto_be

    .line 1614
    .end local v12           #i:I
    .end local v17           #tmp:Lcom/lge/homecube/ApplicationInfo;
    :catch_d5
    move-exception v19

    move-object/from16 v4, v19

    .line 1615
    .local v4, ex:Ljava/lang/NullPointerException;
    const-string v19, "bykong"

    const-string v20, "nullpointer check 2009_10_25"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_bd

    .line 1621
    .end local v4           #ex:Ljava/lang/NullPointerException;
    .restart local v12       #i:I
    .restart local v17       #tmp:Lcom/lge/homecube/ApplicationInfo;
    :pswitch_e0
    move-object v0, v15

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d2

    .line 1624
    :pswitch_e7
    move-object v0, v2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d2

    .line 1627
    :pswitch_ee
    move-object v0, v14

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d2

    .line 1630
    :pswitch_f5
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d2

    .line 1633
    :pswitch_fd
    move-object v0, v5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d2

    .line 1636
    :pswitch_104
    move-object v0, v3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d2

    .line 1639
    :pswitch_10b
    move-object v0, v6

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d2

    .line 1642
    :pswitch_112
    move-object v0, v7

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d2

    .line 1645
    :pswitch_119
    move-object v0, v8

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d2

    .line 1648
    :pswitch_120
    move-object v0, v9

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d2

    .line 1651
    :pswitch_127
    move-object v0, v10

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d2

    .line 1654
    :pswitch_12e
    move-object v0, v11

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d2

    .line 1659
    .end local v17           #tmp:Lcom/lge/homecube/ApplicationInfo;
    :cond_135
    invoke-virtual/range {p0 .. p0}, Lcom/lge/homecube/Launcher;->ItemListSort()V

    .line 1661
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->mDragLayer:Lcom/lge/homecube/DragLayer;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/lge/homecube/DragLayer;->getNumCoumns()I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/homecube/Launcher;->mColumnNum:I

    .line 1663
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->operator_Grid:Lcom/lge/homecube/AllAppsGridView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/homecube/Launcher;->mColumnNum:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/lge/homecube/AllAppsGridView;->setColumNum(I)V

    .line 1664
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->commuication_Grid:Lcom/lge/homecube/AllAppsGridView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/homecube/Launcher;->mColumnNum:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/lge/homecube/AllAppsGridView;->setColumNum(I)V

    .line 1665
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->multimedia_Grid:Lcom/lge/homecube/AllAppsGridView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/homecube/Launcher;->mColumnNum:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/lge/homecube/AllAppsGridView;->setColumNum(I)V

    .line 1666
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->utilities_Grid:Lcom/lge/homecube/AllAppsGridView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/homecube/Launcher;->mColumnNum:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/lge/homecube/AllAppsGridView;->setColumNum(I)V

    .line 1667
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->google_Grid:Lcom/lge/homecube/AllAppsGridView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/homecube/Launcher;->mColumnNum:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/lge/homecube/AllAppsGridView;->setColumNum(I)V

    .line 1668
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->downloads_Grid:Lcom/lge/homecube/AllAppsGridView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/homecube/Launcher;->mColumnNum:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/lge/homecube/AllAppsGridView;->setColumNum(I)V

    .line 1669
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->group1_Grid:Lcom/lge/homecube/AllAppsGridView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/homecube/Launcher;->mColumnNum:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/lge/homecube/AllAppsGridView;->setColumNum(I)V

    .line 1670
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->group2_Grid:Lcom/lge/homecube/AllAppsGridView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/homecube/Launcher;->mColumnNum:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/lge/homecube/AllAppsGridView;->setColumNum(I)V

    .line 1671
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->group3_Grid:Lcom/lge/homecube/AllAppsGridView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/homecube/Launcher;->mColumnNum:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/lge/homecube/AllAppsGridView;->setColumNum(I)V

    .line 1672
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->group4_Grid:Lcom/lge/homecube/AllAppsGridView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/homecube/Launcher;->mColumnNum:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/lge/homecube/AllAppsGridView;->setColumNum(I)V

    .line 1673
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->group5_Grid:Lcom/lge/homecube/AllAppsGridView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/homecube/Launcher;->mColumnNum:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/lge/homecube/AllAppsGridView;->setColumNum(I)V

    .line 1674
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->group6_Grid:Lcom/lge/homecube/AllAppsGridView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/homecube/Launcher;->mColumnNum:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/lge/homecube/AllAppsGridView;->setColumNum(I)V

    .line 1676
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->operator_Grid:Lcom/lge/homecube/AllAppsGridView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/lge/homecube/AllAppsGridView;->setLauncher(Lcom/lge/homecube/Launcher;)V

    .line 1677
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->commuication_Grid:Lcom/lge/homecube/AllAppsGridView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/lge/homecube/AllAppsGridView;->setLauncher(Lcom/lge/homecube/Launcher;)V

    .line 1678
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->multimedia_Grid:Lcom/lge/homecube/AllAppsGridView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/lge/homecube/AllAppsGridView;->setLauncher(Lcom/lge/homecube/Launcher;)V

    .line 1679
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->utilities_Grid:Lcom/lge/homecube/AllAppsGridView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/lge/homecube/AllAppsGridView;->setLauncher(Lcom/lge/homecube/Launcher;)V

    .line 1680
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->google_Grid:Lcom/lge/homecube/AllAppsGridView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/lge/homecube/AllAppsGridView;->setLauncher(Lcom/lge/homecube/Launcher;)V

    .line 1681
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->downloads_Grid:Lcom/lge/homecube/AllAppsGridView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/lge/homecube/AllAppsGridView;->setLauncher(Lcom/lge/homecube/Launcher;)V

    .line 1682
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->group1_Grid:Lcom/lge/homecube/AllAppsGridView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/lge/homecube/AllAppsGridView;->setLauncher(Lcom/lge/homecube/Launcher;)V

    .line 1683
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->group2_Grid:Lcom/lge/homecube/AllAppsGridView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/lge/homecube/AllAppsGridView;->setLauncher(Lcom/lge/homecube/Launcher;)V

    .line 1684
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->group3_Grid:Lcom/lge/homecube/AllAppsGridView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/lge/homecube/AllAppsGridView;->setLauncher(Lcom/lge/homecube/Launcher;)V

    .line 1685
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->group4_Grid:Lcom/lge/homecube/AllAppsGridView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/lge/homecube/AllAppsGridView;->setLauncher(Lcom/lge/homecube/Launcher;)V

    .line 1686
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->group5_Grid:Lcom/lge/homecube/AllAppsGridView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/lge/homecube/AllAppsGridView;->setLauncher(Lcom/lge/homecube/Launcher;)V

    .line 1687
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->group6_Grid:Lcom/lge/homecube/AllAppsGridView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/lge/homecube/AllAppsGridView;->setLauncher(Lcom/lge/homecube/Launcher;)V

    .line 1689
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->operator_Grid:Lcom/lge/homecube/AllAppsGridView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->mDragLayer:Lcom/lge/homecube/DragLayer;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/lge/homecube/AllAppsGridView;->setDragger(Lcom/lge/homecube/DragController;)V

    .line 1690
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->commuication_Grid:Lcom/lge/homecube/AllAppsGridView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->mDragLayer:Lcom/lge/homecube/DragLayer;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/lge/homecube/AllAppsGridView;->setDragger(Lcom/lge/homecube/DragController;)V

    .line 1691
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->multimedia_Grid:Lcom/lge/homecube/AllAppsGridView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->mDragLayer:Lcom/lge/homecube/DragLayer;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/lge/homecube/AllAppsGridView;->setDragger(Lcom/lge/homecube/DragController;)V

    .line 1692
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->utilities_Grid:Lcom/lge/homecube/AllAppsGridView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->mDragLayer:Lcom/lge/homecube/DragLayer;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/lge/homecube/AllAppsGridView;->setDragger(Lcom/lge/homecube/DragController;)V

    .line 1693
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->google_Grid:Lcom/lge/homecube/AllAppsGridView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->mDragLayer:Lcom/lge/homecube/DragLayer;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/lge/homecube/AllAppsGridView;->setDragger(Lcom/lge/homecube/DragController;)V

    .line 1694
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->downloads_Grid:Lcom/lge/homecube/AllAppsGridView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->mDragLayer:Lcom/lge/homecube/DragLayer;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/lge/homecube/AllAppsGridView;->setDragger(Lcom/lge/homecube/DragController;)V

    .line 1695
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->group1_Grid:Lcom/lge/homecube/AllAppsGridView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->mDragLayer:Lcom/lge/homecube/DragLayer;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/lge/homecube/AllAppsGridView;->setDragger(Lcom/lge/homecube/DragController;)V

    .line 1696
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->group2_Grid:Lcom/lge/homecube/AllAppsGridView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->mDragLayer:Lcom/lge/homecube/DragLayer;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/lge/homecube/AllAppsGridView;->setDragger(Lcom/lge/homecube/DragController;)V

    .line 1697
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->group3_Grid:Lcom/lge/homecube/AllAppsGridView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->mDragLayer:Lcom/lge/homecube/DragLayer;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/lge/homecube/AllAppsGridView;->setDragger(Lcom/lge/homecube/DragController;)V

    .line 1698
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->group4_Grid:Lcom/lge/homecube/AllAppsGridView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->mDragLayer:Lcom/lge/homecube/DragLayer;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/lge/homecube/AllAppsGridView;->setDragger(Lcom/lge/homecube/DragController;)V

    .line 1699
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->group5_Grid:Lcom/lge/homecube/AllAppsGridView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->mDragLayer:Lcom/lge/homecube/DragLayer;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/lge/homecube/AllAppsGridView;->setDragger(Lcom/lge/homecube/DragController;)V

    .line 1700
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->group6_Grid:Lcom/lge/homecube/AllAppsGridView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->mDragLayer:Lcom/lge/homecube/DragLayer;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/lge/homecube/AllAppsGridView;->setDragger(Lcom/lge/homecube/DragController;)V

    .line 1702
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->mDragLayer:Lcom/lge/homecube/DragLayer;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/lge/homecube/Launcher;->setDragger(Lcom/lge/homecube/DragController;)V

    .line 1704
    return-void

    .line 1619
    :pswitch_data_35a
    .packed-switch 0x0
        :pswitch_e0
        :pswitch_e7
        :pswitch_ee
        :pswitch_f5
        :pswitch_fd
        :pswitch_104
        :pswitch_10b
        :pswitch_112
        :pswitch_119
        :pswitch_120
        :pswitch_127
        :pswitch_12e
    .end packed-switch
.end method

.method public getAllAppsDataOrg()V
    .registers 3

    .prologue
    .line 1709
    new-instance v0, Lcom/lge/homecube/Launcher$ItemsLoader;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lge/homecube/Launcher$ItemsLoader;-><init>(Lcom/lge/homecube/Launcher;Lcom/lge/homecube/Launcher$1;)V

    invoke-virtual {p0, v0}, Lcom/lge/homecube/Launcher;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1714
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->mDragLayer:Lcom/lge/homecube/DragLayer;

    invoke-virtual {v0}, Lcom/lge/homecube/DragLayer;->getNumCoumns()I

    move-result v0

    iput v0, p0, Lcom/lge/homecube/Launcher;->mColumnNum:I

    .line 1716
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->operator_Grid:Lcom/lge/homecube/AllAppsGridView;

    iget-object v1, p0, Lcom/lge/homecube/Launcher;->mOperatorList:Lcom/lge/homecube/Launcher$AppsAdapter;

    invoke-virtual {v0, v1}, Lcom/lge/homecube/AllAppsGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1717
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->commuication_Grid:Lcom/lge/homecube/AllAppsGridView;

    iget-object v1, p0, Lcom/lge/homecube/Launcher;->mCommunicationList:Lcom/lge/homecube/Launcher$AppsAdapter;

    invoke-virtual {v0, v1}, Lcom/lge/homecube/AllAppsGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1718
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->multimedia_Grid:Lcom/lge/homecube/AllAppsGridView;

    iget-object v1, p0, Lcom/lge/homecube/Launcher;->mMultimediaList:Lcom/lge/homecube/Launcher$AppsAdapter;

    invoke-virtual {v0, v1}, Lcom/lge/homecube/AllAppsGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1719
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->utilities_Grid:Lcom/lge/homecube/AllAppsGridView;

    iget-object v1, p0, Lcom/lge/homecube/Launcher;->mUtilitiesList:Lcom/lge/homecube/Launcher$AppsAdapter;

    invoke-virtual {v0, v1}, Lcom/lge/homecube/AllAppsGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1720
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->google_Grid:Lcom/lge/homecube/AllAppsGridView;

    iget-object v1, p0, Lcom/lge/homecube/Launcher;->mGoogleList:Lcom/lge/homecube/Launcher$AppsAdapter;

    invoke-virtual {v0, v1}, Lcom/lge/homecube/AllAppsGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1721
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->downloads_Grid:Lcom/lge/homecube/AllAppsGridView;

    iget-object v1, p0, Lcom/lge/homecube/Launcher;->mDownloadsList:Lcom/lge/homecube/Launcher$AppsAdapter;

    invoke-virtual {v0, v1}, Lcom/lge/homecube/AllAppsGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1722
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->group1_Grid:Lcom/lge/homecube/AllAppsGridView;

    iget-object v1, p0, Lcom/lge/homecube/Launcher;->mGroup1List:Lcom/lge/homecube/Launcher$AppsAdapter;

    invoke-virtual {v0, v1}, Lcom/lge/homecube/AllAppsGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1723
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->group2_Grid:Lcom/lge/homecube/AllAppsGridView;

    iget-object v1, p0, Lcom/lge/homecube/Launcher;->mGroup2List:Lcom/lge/homecube/Launcher$AppsAdapter;

    invoke-virtual {v0, v1}, Lcom/lge/homecube/AllAppsGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1724
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->group3_Grid:Lcom/lge/homecube/AllAppsGridView;

    iget-object v1, p0, Lcom/lge/homecube/Launcher;->mGroup3List:Lcom/lge/homecube/Launcher$AppsAdapter;

    invoke-virtual {v0, v1}, Lcom/lge/homecube/AllAppsGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1725
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->group4_Grid:Lcom/lge/homecube/AllAppsGridView;

    iget-object v1, p0, Lcom/lge/homecube/Launcher;->mGroup4List:Lcom/lge/homecube/Launcher$AppsAdapter;

    invoke-virtual {v0, v1}, Lcom/lge/homecube/AllAppsGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1726
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->group5_Grid:Lcom/lge/homecube/AllAppsGridView;

    iget-object v1, p0, Lcom/lge/homecube/Launcher;->mGroup5List:Lcom/lge/homecube/Launcher$AppsAdapter;

    invoke-virtual {v0, v1}, Lcom/lge/homecube/AllAppsGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1727
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->group6_Grid:Lcom/lge/homecube/AllAppsGridView;

    iget-object v1, p0, Lcom/lge/homecube/Launcher;->mGroup6List:Lcom/lge/homecube/Launcher$AppsAdapter;

    invoke-virtual {v0, v1}, Lcom/lge/homecube/AllAppsGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1729
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->operator_Grid:Lcom/lge/homecube/AllAppsGridView;

    iget v1, p0, Lcom/lge/homecube/Launcher;->mColumnNum:I

    invoke-virtual {v0, v1}, Lcom/lge/homecube/AllAppsGridView;->setColumNum(I)V

    .line 1730
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->commuication_Grid:Lcom/lge/homecube/AllAppsGridView;

    iget v1, p0, Lcom/lge/homecube/Launcher;->mColumnNum:I

    invoke-virtual {v0, v1}, Lcom/lge/homecube/AllAppsGridView;->setColumNum(I)V

    .line 1731
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->multimedia_Grid:Lcom/lge/homecube/AllAppsGridView;

    iget v1, p0, Lcom/lge/homecube/Launcher;->mColumnNum:I

    invoke-virtual {v0, v1}, Lcom/lge/homecube/AllAppsGridView;->setColumNum(I)V

    .line 1732
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->utilities_Grid:Lcom/lge/homecube/AllAppsGridView;

    iget v1, p0, Lcom/lge/homecube/Launcher;->mColumnNum:I

    invoke-virtual {v0, v1}, Lcom/lge/homecube/AllAppsGridView;->setColumNum(I)V

    .line 1733
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->google_Grid:Lcom/lge/homecube/AllAppsGridView;

    iget v1, p0, Lcom/lge/homecube/Launcher;->mColumnNum:I

    invoke-virtual {v0, v1}, Lcom/lge/homecube/AllAppsGridView;->setColumNum(I)V

    .line 1734
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->downloads_Grid:Lcom/lge/homecube/AllAppsGridView;

    iget v1, p0, Lcom/lge/homecube/Launcher;->mColumnNum:I

    invoke-virtual {v0, v1}, Lcom/lge/homecube/AllAppsGridView;->setColumNum(I)V

    .line 1735
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->group1_Grid:Lcom/lge/homecube/AllAppsGridView;

    iget v1, p0, Lcom/lge/homecube/Launcher;->mColumnNum:I

    invoke-virtual {v0, v1}, Lcom/lge/homecube/AllAppsGridView;->setColumNum(I)V

    .line 1736
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->group2_Grid:Lcom/lge/homecube/AllAppsGridView;

    iget v1, p0, Lcom/lge/homecube/Launcher;->mColumnNum:I

    invoke-virtual {v0, v1}, Lcom/lge/homecube/AllAppsGridView;->setColumNum(I)V

    .line 1737
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->group3_Grid:Lcom/lge/homecube/AllAppsGridView;

    iget v1, p0, Lcom/lge/homecube/Launcher;->mColumnNum:I

    invoke-virtual {v0, v1}, Lcom/lge/homecube/AllAppsGridView;->setColumNum(I)V

    .line 1738
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->group4_Grid:Lcom/lge/homecube/AllAppsGridView;

    iget v1, p0, Lcom/lge/homecube/Launcher;->mColumnNum:I

    invoke-virtual {v0, v1}, Lcom/lge/homecube/AllAppsGridView;->setColumNum(I)V

    .line 1739
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->group5_Grid:Lcom/lge/homecube/AllAppsGridView;

    iget v1, p0, Lcom/lge/homecube/Launcher;->mColumnNum:I

    invoke-virtual {v0, v1}, Lcom/lge/homecube/AllAppsGridView;->setColumNum(I)V

    .line 1740
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->group6_Grid:Lcom/lge/homecube/AllAppsGridView;

    iget v1, p0, Lcom/lge/homecube/Launcher;->mColumnNum:I

    invoke-virtual {v0, v1}, Lcom/lge/homecube/AllAppsGridView;->setColumNum(I)V

    .line 1742
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->operator_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v0, p0}, Lcom/lge/homecube/AllAppsGridView;->setLauncher(Lcom/lge/homecube/Launcher;)V

    .line 1743
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->commuication_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v0, p0}, Lcom/lge/homecube/AllAppsGridView;->setLauncher(Lcom/lge/homecube/Launcher;)V

    .line 1744
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->multimedia_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v0, p0}, Lcom/lge/homecube/AllAppsGridView;->setLauncher(Lcom/lge/homecube/Launcher;)V

    .line 1745
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->utilities_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v0, p0}, Lcom/lge/homecube/AllAppsGridView;->setLauncher(Lcom/lge/homecube/Launcher;)V

    .line 1746
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->google_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v0, p0}, Lcom/lge/homecube/AllAppsGridView;->setLauncher(Lcom/lge/homecube/Launcher;)V

    .line 1747
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->downloads_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v0, p0}, Lcom/lge/homecube/AllAppsGridView;->setLauncher(Lcom/lge/homecube/Launcher;)V

    .line 1748
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->group1_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v0, p0}, Lcom/lge/homecube/AllAppsGridView;->setLauncher(Lcom/lge/homecube/Launcher;)V

    .line 1749
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->group2_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v0, p0}, Lcom/lge/homecube/AllAppsGridView;->setLauncher(Lcom/lge/homecube/Launcher;)V

    .line 1750
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->group3_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v0, p0}, Lcom/lge/homecube/AllAppsGridView;->setLauncher(Lcom/lge/homecube/Launcher;)V

    .line 1751
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->group4_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v0, p0}, Lcom/lge/homecube/AllAppsGridView;->setLauncher(Lcom/lge/homecube/Launcher;)V

    .line 1752
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->group5_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v0, p0}, Lcom/lge/homecube/AllAppsGridView;->setLauncher(Lcom/lge/homecube/Launcher;)V

    .line 1753
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->group6_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v0, p0}, Lcom/lge/homecube/AllAppsGridView;->setLauncher(Lcom/lge/homecube/Launcher;)V

    .line 1755
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->operator_Grid:Lcom/lge/homecube/AllAppsGridView;

    iget-object v1, p0, Lcom/lge/homecube/Launcher;->mDragLayer:Lcom/lge/homecube/DragLayer;

    invoke-virtual {v0, v1}, Lcom/lge/homecube/AllAppsGridView;->setDragger(Lcom/lge/homecube/DragController;)V

    .line 1756
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->commuication_Grid:Lcom/lge/homecube/AllAppsGridView;

    iget-object v1, p0, Lcom/lge/homecube/Launcher;->mDragLayer:Lcom/lge/homecube/DragLayer;

    invoke-virtual {v0, v1}, Lcom/lge/homecube/AllAppsGridView;->setDragger(Lcom/lge/homecube/DragController;)V

    .line 1757
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->multimedia_Grid:Lcom/lge/homecube/AllAppsGridView;

    iget-object v1, p0, Lcom/lge/homecube/Launcher;->mDragLayer:Lcom/lge/homecube/DragLayer;

    invoke-virtual {v0, v1}, Lcom/lge/homecube/AllAppsGridView;->setDragger(Lcom/lge/homecube/DragController;)V

    .line 1758
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->utilities_Grid:Lcom/lge/homecube/AllAppsGridView;

    iget-object v1, p0, Lcom/lge/homecube/Launcher;->mDragLayer:Lcom/lge/homecube/DragLayer;

    invoke-virtual {v0, v1}, Lcom/lge/homecube/AllAppsGridView;->setDragger(Lcom/lge/homecube/DragController;)V

    .line 1759
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->google_Grid:Lcom/lge/homecube/AllAppsGridView;

    iget-object v1, p0, Lcom/lge/homecube/Launcher;->mDragLayer:Lcom/lge/homecube/DragLayer;

    invoke-virtual {v0, v1}, Lcom/lge/homecube/AllAppsGridView;->setDragger(Lcom/lge/homecube/DragController;)V

    .line 1760
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->downloads_Grid:Lcom/lge/homecube/AllAppsGridView;

    iget-object v1, p0, Lcom/lge/homecube/Launcher;->mDragLayer:Lcom/lge/homecube/DragLayer;

    invoke-virtual {v0, v1}, Lcom/lge/homecube/AllAppsGridView;->setDragger(Lcom/lge/homecube/DragController;)V

    .line 1761
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->group1_Grid:Lcom/lge/homecube/AllAppsGridView;

    iget-object v1, p0, Lcom/lge/homecube/Launcher;->mDragLayer:Lcom/lge/homecube/DragLayer;

    invoke-virtual {v0, v1}, Lcom/lge/homecube/AllAppsGridView;->setDragger(Lcom/lge/homecube/DragController;)V

    .line 1762
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->group2_Grid:Lcom/lge/homecube/AllAppsGridView;

    iget-object v1, p0, Lcom/lge/homecube/Launcher;->mDragLayer:Lcom/lge/homecube/DragLayer;

    invoke-virtual {v0, v1}, Lcom/lge/homecube/AllAppsGridView;->setDragger(Lcom/lge/homecube/DragController;)V

    .line 1763
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->group3_Grid:Lcom/lge/homecube/AllAppsGridView;

    iget-object v1, p0, Lcom/lge/homecube/Launcher;->mDragLayer:Lcom/lge/homecube/DragLayer;

    invoke-virtual {v0, v1}, Lcom/lge/homecube/AllAppsGridView;->setDragger(Lcom/lge/homecube/DragController;)V

    .line 1764
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->group4_Grid:Lcom/lge/homecube/AllAppsGridView;

    iget-object v1, p0, Lcom/lge/homecube/Launcher;->mDragLayer:Lcom/lge/homecube/DragLayer;

    invoke-virtual {v0, v1}, Lcom/lge/homecube/AllAppsGridView;->setDragger(Lcom/lge/homecube/DragController;)V

    .line 1765
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->group5_Grid:Lcom/lge/homecube/AllAppsGridView;

    iget-object v1, p0, Lcom/lge/homecube/Launcher;->mDragLayer:Lcom/lge/homecube/DragLayer;

    invoke-virtual {v0, v1}, Lcom/lge/homecube/AllAppsGridView;->setDragger(Lcom/lge/homecube/DragController;)V

    .line 1766
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->group6_Grid:Lcom/lge/homecube/AllAppsGridView;

    iget-object v1, p0, Lcom/lge/homecube/Launcher;->mDragLayer:Lcom/lge/homecube/DragLayer;

    invoke-virtual {v0, v1}, Lcom/lge/homecube/AllAppsGridView;->setDragger(Lcom/lge/homecube/DragController;)V

    .line 1768
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->mDragLayer:Lcom/lge/homecube/DragLayer;

    invoke-virtual {p0, v0}, Lcom/lge/homecube/Launcher;->setDragger(Lcom/lge/homecube/DragController;)V

    .line 1782
    return-void
.end method

.method public getAppWidgetHost()Lcom/lge/homecube/LauncherAppWidgetHost;
    .registers 2

    .prologue
    .line 2143
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->mAppWidgetHost:Lcom/lge/homecube/LauncherAppWidgetHost;

    return-object v0
.end method

.method public getApplicationsList()V
    .registers 15

    .prologue
    const/4 v13, 0x0

    .line 4723
    new-instance v8, Landroid/content/Intent;

    const-string v10, "android.intent.action.MAIN"

    const/4 v11, 0x0

    invoke-direct {v8, v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 4724
    .local v8, mainIntent:Landroid/content/Intent;
    const-string v10, "android.intent.category.LAUNCHER"

    invoke-virtual {v8, v10}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 4726
    invoke-virtual {p0}, Lcom/lge/homecube/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 4727
    .local v9, manager:Landroid/content/pm/PackageManager;
    invoke-virtual {v9, v8, v13}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 4729
    .local v1, apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v10, p0, Lcom/lge/homecube/Launcher;->mAllAppComponentname:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 4731
    if-eqz v1, :cond_40b

    .line 4738
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_21
    :goto_21
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_ab

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 4741
    .local v7, info:Landroid/content/pm/ResolveInfo;
    new-instance v0, Lcom/lge/homecube/ApplicationInfo;

    invoke-direct {v0}, Lcom/lge/homecube/ApplicationInfo;-><init>()V

    .line 4744
    .local v0, application:Lcom/lge/homecube/ApplicationInfo;
    iget-object v10, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 4748
    .local v2, classname:Ljava/lang/String;
    new-instance v4, Landroid/content/ComponentName;

    iget-object v10, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v11, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4749
    .local v4, componetname:Landroid/content/ComponentName;
    iget-object v10, p0, Lcom/lge/homecube/Launcher;->mAllAppComponentname:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4753
    iget-object v10, p0, Lcom/lge/homecube/Launcher;->mDefaultAppComponentname:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_21

    .line 4754
    invoke-virtual {v7, v9}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    iput-object v10, v0, Lcom/lge/homecube/ApplicationInfo;->title:Ljava/lang/CharSequence;

    .line 4756
    iget-object v10, v0, Lcom/lge/homecube/ApplicationInfo;->title:Ljava/lang/CharSequence;

    if-nez v10, :cond_62

    .line 4757
    iget-object v10, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object v10, v0, Lcom/lge/homecube/ApplicationInfo;->title:Ljava/lang/CharSequence;

    .line 4759
    :cond_62
    new-instance v10, Landroid/content/ComponentName;

    iget-object v11, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v12, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v10, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v11, 0x1020

    invoke-virtual {v0, v10, v11}, Lcom/lge/homecube/ApplicationInfo;->setActivity(Landroid/content/ComponentName;I)V

    .line 4765
    iput v13, v0, Lcom/lge/homecube/ApplicationInfo;->itemType:I

    .line 4767
    iget-object v10, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v10, v9}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    iput-object v10, v0, Lcom/lge/homecube/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 4769
    new-instance v10, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v11, p0, Lcom/lge/homecube/Launcher;->mDownloadsItems:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v12, 0x5

    invoke-static {p0, v0, v11, v12, v13}, Lcom/lge/homecube/Launcher;->addItemToAllAppsDatabase(Landroid/content/Context;Lcom/lge/homecube/ApplicationInfo;IIZ)Landroid/graphics/Bitmap;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v10, v0, Lcom/lge/homecube/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 4770
    iget-object v10, p0, Lcom/lge/homecube/Launcher;->mDownloadsItems:Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/lge/homecube/Launcher;->mDownloadsItems:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 4772
    iget-object v10, p0, Lcom/lge/homecube/Launcher;->mDefaultAppComponentname:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4773
    iget-object v10, p0, Lcom/lge/homecube/Launcher;->downloads_Grid:Lcom/lge/homecube/AllAppsGridView;

    iget-object v11, p0, Lcom/lge/homecube/Launcher;->mDownloadsList:Lcom/lge/homecube/Launcher$AppsAdapter;

    invoke-virtual {v10, v11}, Lcom/lge/homecube/AllAppsGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_21

    .line 4785
    .end local v0           #application:Lcom/lge/homecube/ApplicationInfo;
    .end local v2           #classname:Ljava/lang/String;
    .end local v4           #componetname:Landroid/content/ComponentName;
    .end local v7           #info:Landroid/content/pm/ResolveInfo;
    :cond_ab
    const/4 v5, 0x0

    .local v5, i:I
    :goto_ac
    iget-object v10, p0, Lcom/lge/homecube/Launcher;->mOperatorItems:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v5, v10, :cond_f3

    .line 4786
    iget-object v10, p0, Lcom/lge/homecube/Launcher;->mOperatorItems:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/lge/homecube/ApplicationInfo;

    iget-object v10, v10, Lcom/lge/homecube/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    .line 4787
    .local v3, component:Landroid/content/ComponentName;
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 4790
    .restart local v2       #classname:Ljava/lang/String;
    iget-object v10, p0, Lcom/lge/homecube/Launcher;->mAllAppComponentname:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_f0

    .line 4791
    iget-object v10, p0, Lcom/lge/homecube/Launcher;->mOperatorItems:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/lge/homecube/ApplicationInfo;

    invoke-static {p0, v10}, Lcom/lge/homecube/Launcher;->deleteItemFromAllAppsDatabase(Landroid/content/Context;Lcom/lge/homecube/ApplicationInfo;)V

    .line 4792
    iget-object v10, p0, Lcom/lge/homecube/Launcher;->mOperatorItems:Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/lge/homecube/Launcher;->mOperatorItems:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4793
    iget-object v10, p0, Lcom/lge/homecube/Launcher;->operator_Grid:Lcom/lge/homecube/AllAppsGridView;

    iget-object v11, p0, Lcom/lge/homecube/Launcher;->mOperatorList:Lcom/lge/homecube/Launcher$AppsAdapter;

    invoke-virtual {v10, v11}, Lcom/lge/homecube/AllAppsGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 4796
    iget-object v10, p0, Lcom/lge/homecube/Launcher;->mDefaultAppComponentname:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4785
    :cond_f0
    add-int/lit8 v5, v5, 0x1

    goto :goto_ac

    .line 4803
    .end local v2           #classname:Ljava/lang/String;
    .end local v3           #component:Landroid/content/ComponentName;
    :cond_f3
    const/4 v5, 0x0

    :goto_f4
    iget-object v10, p0, Lcom/lge/homecube/Launcher;->mCommunicationItems:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v5, v10, :cond_13b

    .line 4804
    iget-object v10, p0, Lcom/lge/homecube/Launcher;->mCommunicationItems:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/lge/homecube/ApplicationInfo;

    iget-object v10, v10, Lcom/lge/homecube/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    .line 4805
    .restart local v3       #component:Landroid/content/ComponentName;
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 4808
    .restart local v2       #classname:Ljava/lang/String;
    iget-object v10, p0, Lcom/lge/homecube/Launcher;->mAllAppComponentname:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_138

    .line 4809
    iget-object v10, p0, Lcom/lge/homecube/Launcher;->mCommunicationItems:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/lge/homecube/ApplicationInfo;

    invoke-static {p0, v10}, Lcom/lge/homecube/Launcher;->deleteItemFromAllAppsDatabase(Landroid/content/Context;Lcom/lge/homecube/ApplicationInfo;)V

    .line 4810
    iget-object v10, p0, Lcom/lge/homecube/Launcher;->mCommunicationItems:Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/lge/homecube/Launcher;->mCommunicationItems:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4811
    iget-object v10, p0, Lcom/lge/homecube/Launcher;->commuication_Grid:Lcom/lge/homecube/AllAppsGridView;

    iget-object v11, p0, Lcom/lge/homecube/Launcher;->mCommunicationList:Lcom/lge/homecube/Launcher$AppsAdapter;

    invoke-virtual {v10, v11}, Lcom/lge/homecube/AllAppsGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 4814
    iget-object v10, p0, Lcom/lge/homecube/Launcher;->mDefaultAppComponentname:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4803
    :cond_138
    add-int/lit8 v5, v5, 0x1

    goto :goto_f4

    .line 4820
    .end local v2           #classname:Ljava/lang/String;
    .end local v3           #component:Landroid/content/ComponentName;
    :cond_13b
    const/4 v5, 0x0

    :goto_13c
    iget-object v10, p0, Lcom/lge/homecube/Launcher;->mMultimediaItems:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v5, v10, :cond_183

    .line 4821
    iget-object v10, p0, Lcom/lge/homecube/Launcher;->mMultimediaItems:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/lge/homecube/ApplicationInfo;

    iget-object v10, v10, Lcom/lge/homecube/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    .line 4822
    .restart local v3       #component:Landroid/content/ComponentName;
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 4825
    .restart local v2       #classname:Ljava/lang/String;
    iget-object v10, p0, Lcom/lge/homecube/Launcher;->mAllAppComponentname:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_180

    .line 4826
    iget-object v10, p0, Lcom/lge/homecube/Launcher;->mMultimediaItems:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/lge/homecube/ApplicationInfo;

    invoke-static {p0, v10}, Lcom/lge/homecube/Launcher;->deleteItemFromAllAppsDatabase(Landroid/content/Context;Lcom/lge/homecube/ApplicationInfo;)V

    .line 4827
    iget-object v10, p0, Lcom/lge/homecube/Launcher;->mMultimediaItems:Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/lge/homecube/Launcher;->mMultimediaItems:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4828
    iget-object v10, p0, Lcom/lge/homecube/Launcher;->multimedia_Grid:Lcom/lge/homecube/AllAppsGridView;

    iget-object v11, p0, Lcom/lge/homecube/Launcher;->mMultimediaList:Lcom/lge/homecube/Launcher$AppsAdapter;

    invoke-virtual {v10, v11}, Lcom/lge/homecube/AllAppsGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 4831
    iget-object v10, p0, Lcom/lge/homecube/Launcher;->mDefaultAppComponentname:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4820
    :cond_180
    add-int/lit8 v5, v5, 0x1

    goto :goto_13c

    .line 4837
    .end local v2           #classname:Ljava/lang/String;
    .end local v3           #component:Landroid/content/ComponentName;
    :cond_183
    const/4 v5, 0x0

    :goto_184
    iget-object v10, p0, Lcom/lge/homecube/Launcher;->mUtilitiesItems:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v5, v10, :cond_1cb

    .line 4838
    iget-object v10, p0, Lcom/lge/homecube/Launcher;->mUtilitiesItems:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/lge/homecube/ApplicationInfo;

    iget-object v10, v10, Lcom/lge/homecube/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    .line 4839
    .restart local v3       #component:Landroid/content/ComponentName;
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 4842
    .restart local v2       #classname:Ljava/lang/String;
    iget-object v10, p0, Lcom/lge/homecube/Launcher;->mAllAppComponentname:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1c8

    .line 4843
    iget-object v10, p0, Lcom/lge/homecube/Launcher;->mUtilitiesItems:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/lge/homecube/ApplicationInfo;

    invoke-static {p0, v10}, Lcom/lge/homecube/Launcher;->deleteItemFromAllAppsDatabase(Landroid/content/Context;Lcom/lge/homecube/ApplicationInfo;)V

    .line 4844
    iget-object v10, p0, Lcom/lge/homecube/Launcher;->mUtilitiesItems:Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/lge/homecube/Launcher;->mUtilitiesItems:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4845
    iget-object v10, p0, Lcom/lge/homecube/Launcher;->utilities_Grid:Lcom/lge/homecube/AllAppsGridView;

    iget-object v11, p0, Lcom/lge/homecube/Launcher;->mUtilitiesList:Lcom/lge/homecube/Launcher$AppsAdapter;

    invoke-virtual {v10, v11}, Lcom/lge/homecube/AllAppsGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 4848
    iget-object v10, p0, Lcom/lge/homecube/Launcher;->mDefaultAppComponentname:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4837
    :cond_1c8
    add-int/lit8 v5, v5, 0x1

    goto :goto_184

    .line 4854
    .end local v2           #classname:Ljava/lang/String;
    .end local v3           #component:Landroid/content/ComponentName;
    :cond_1cb
    const/4 v5, 0x0

    :goto_1cc
    iget-object v10, p0, Lcom/lge/homecube/Launcher;->mGoogleItems:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v5, v10, :cond_213

    .line 4855
    iget-object v10, p0, Lcom/lge/homecube/Launcher;->mGoogleItems:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/lge/homecube/ApplicationInfo;

    iget-object v10, v10, Lcom/lge/homecube/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    .line 4856
    .restart local v3       #component:Landroid/content/ComponentName;
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 4859
    .restart local v2       #classname:Ljava/lang/String;
    iget-object v10, p0, Lcom/lge/homecube/Launcher;->mAllAppComponentname:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_210

    .line 4860
    iget-object v10, p0, Lcom/lge/homecube/Launcher;->mGoogleItems:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/lge/homecube/ApplicationInfo;

    invoke-static {p0, v10}, Lcom/lge/homecube/Launcher;->deleteItemFromAllAppsDatabase(Landroid/content/Context;Lcom/lge/homecube/ApplicationInfo;)V

    .line 4861
    iget-object v10, p0, Lcom/lge/homecube/Launcher;->mGoogleItems:Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/lge/homecube/Launcher;->mGoogleItems:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4862
    iget-object v10, p0, Lcom/lge/homecube/Launcher;->google_Grid:Lcom/lge/homecube/AllAppsGridView;

    iget-object v11, p0, Lcom/lge/homecube/Launcher;->mGoogleList:Lcom/lge/homecube/Launcher$AppsAdapter;

    invoke-virtual {v10, v11}, Lcom/lge/homecube/AllAppsGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 4865
    iget-object v10, p0, Lcom/lge/homecube/Launcher;->mDefaultAppComponentname:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4854
    :cond_210
    add-int/lit8 v5, v5, 0x1

    goto :goto_1cc

    .line 4873
    .end local v2           #classname:Ljava/lang/String;
    .end local v3           #component:Landroid/content/ComponentName;
    :cond_213
    const/4 v5, 0x0

    :goto_214
    iget-object v10, p0, Lcom/lge/homecube/Launcher;->mDownloadsItems:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v5, v10, :cond_25b

    .line 4874
    iget-object v10, p0, Lcom/lge/homecube/Launcher;->mDownloadsItems:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/lge/homecube/ApplicationInfo;

    iget-object v10, v10, Lcom/lge/homecube/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    .line 4875
    .restart local v3       #component:Landroid/content/ComponentName;
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 4878
    .restart local v2       #classname:Ljava/lang/String;
    iget-object v10, p0, Lcom/lge/homecube/Launcher;->mAllAppComponentname:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_258

    .line 4879
    iget-object v10, p0, Lcom/lge/homecube/Launcher;->mDownloadsItems:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/lge/homecube/ApplicationInfo;

    invoke-static {p0, v10}, Lcom/lge/homecube/Launcher;->deleteItemFromAllAppsDatabase(Landroid/content/Context;Lcom/lge/homecube/ApplicationInfo;)V

    .line 4880
    iget-object v10, p0, Lcom/lge/homecube/Launcher;->mDownloadsItems:Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/lge/homecube/Launcher;->mDownloadsItems:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4881
    iget-object v10, p0, Lcom/lge/homecube/Launcher;->downloads_Grid:Lcom/lge/homecube/AllAppsGridView;

    iget-object v11, p0, Lcom/lge/homecube/Launcher;->mDownloadsList:Lcom/lge/homecube/Launcher$AppsAdapter;

    invoke-virtual {v10, v11}, Lcom/lge/homecube/AllAppsGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 4884
    iget-object v10, p0, Lcom/lge/homecube/Launcher;->mDefaultAppComponentname:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4873
    :cond_258
    add-int/lit8 v5, v5, 0x1

    goto :goto_214

    .line 4893
    .end local v2           #classname:Ljava/lang/String;
    .end local v3           #component:Landroid/content/ComponentName;
    :cond_25b
    const/4 v5, 0x0

    :goto_25c
    iget-object v10, p0, Lcom/lge/homecube/Launcher;->mGroup1Items:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v5, v10, :cond_2a3

    .line 4894
    iget-object v10, p0, Lcom/lge/homecube/Launcher;->mGroup1Items:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/lge/homecube/ApplicationInfo;

    iget-object v10, v10, Lcom/lge/homecube/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    .line 4895
    .restart local v3       #component:Landroid/content/ComponentName;
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 4898
    .restart local v2       #classname:Ljava/lang/String;
    iget-object v10, p0, Lcom/lge/homecube/Launcher;->mAllAppComponentname:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2a0

    .line 4899
    iget-object v10, p0, Lcom/lge/homecube/Launcher;->mGroup1Items:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/lge/homecube/ApplicationInfo;

    invoke-static {p0, v10}, Lcom/lge/homecube/Launcher;->deleteItemFromAllAppsDatabase(Landroid/content/Context;Lcom/lge/homecube/ApplicationInfo;)V

    .line 4900
    iget-object v10, p0, Lcom/lge/homecube/Launcher;->mGroup1Items:Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/lge/homecube/Launcher;->mGroup1Items:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4901
    iget-object v10, p0, Lcom/lge/homecube/Launcher;->group1_Grid:Lcom/lge/homecube/AllAppsGridView;

    iget-object v11, p0, Lcom/lge/homecube/Launcher;->mGroup1List:Lcom/lge/homecube/Launcher$AppsAdapter;

    invoke-virtual {v10, v11}, Lcom/lge/homecube/AllAppsGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 4904
    iget-object v10, p0, Lcom/lge/homecube/Launcher;->mDefaultAppComponentname:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4893
    :cond_2a0
    add-int/lit8 v5, v5, 0x1

    goto :goto_25c

    .line 4912
    .end local v2           #classname:Ljava/lang/String;
    .end local v3           #component:Landroid/content/ComponentName;
    :cond_2a3
    const/4 v5, 0x0

    :goto_2a4
    iget-object v10, p0, Lcom/lge/homecube/Launcher;->mGroup2Items:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v5, v10, :cond_2eb

    .line 4913
    iget-object v10, p0, Lcom/lge/homecube/Launcher;->mGroup2Items:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/lge/homecube/ApplicationInfo;

    iget-object v10, v10, Lcom/lge/homecube/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    .line 4914
    .restart local v3       #component:Landroid/content/ComponentName;
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 4917
    .restart local v2       #classname:Ljava/lang/String;
    iget-object v10, p0, Lcom/lge/homecube/Launcher;->mAllAppComponentname:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2e8

    .line 4918
    iget-object v10, p0, Lcom/lge/homecube/Launcher;->mGroup2Items:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/lge/homecube/ApplicationInfo;

    invoke-static {p0, v10}, Lcom/lge/homecube/Launcher;->deleteItemFromAllAppsDatabase(Landroid/content/Context;Lcom/lge/homecube/ApplicationInfo;)V

    .line 4919
    iget-object v10, p0, Lcom/lge/homecube/Launcher;->mGroup2Items:Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/lge/homecube/Launcher;->mGroup2Items:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4920
    iget-object v10, p0, Lcom/lge/homecube/Launcher;->group2_Grid:Lcom/lge/homecube/AllAppsGridView;

    iget-object v11, p0, Lcom/lge/homecube/Launcher;->mGroup2List:Lcom/lge/homecube/Launcher$AppsAdapter;

    invoke-virtual {v10, v11}, Lcom/lge/homecube/AllAppsGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 4923
    iget-object v10, p0, Lcom/lge/homecube/Launcher;->mDefaultAppComponentname:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4912
    :cond_2e8
    add-int/lit8 v5, v5, 0x1

    goto :goto_2a4

    .line 4931
    .end local v2           #classname:Ljava/lang/String;
    .end local v3           #component:Landroid/content/ComponentName;
    :cond_2eb
    const/4 v5, 0x0

    :goto_2ec
    iget-object v10, p0, Lcom/lge/homecube/Launcher;->mGroup3Items:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v5, v10, :cond_333

    .line 4933
    iget-object v10, p0, Lcom/lge/homecube/Launcher;->mGroup3Items:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/lge/homecube/ApplicationInfo;

    iget-object v10, v10, Lcom/lge/homecube/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    .line 4934
    .restart local v3       #component:Landroid/content/ComponentName;
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 4937
    .restart local v2       #classname:Ljava/lang/String;
    iget-object v10, p0, Lcom/lge/homecube/Launcher;->mAllAppComponentname:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_330

    .line 4938
    iget-object v10, p0, Lcom/lge/homecube/Launcher;->mGroup3Items:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/lge/homecube/ApplicationInfo;

    invoke-static {p0, v10}, Lcom/lge/homecube/Launcher;->deleteItemFromAllAppsDatabase(Landroid/content/Context;Lcom/lge/homecube/ApplicationInfo;)V

    .line 4939
    iget-object v10, p0, Lcom/lge/homecube/Launcher;->mGroup3Items:Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/lge/homecube/Launcher;->mGroup3Items:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4940
    iget-object v10, p0, Lcom/lge/homecube/Launcher;->group3_Grid:Lcom/lge/homecube/AllAppsGridView;

    iget-object v11, p0, Lcom/lge/homecube/Launcher;->mGroup3List:Lcom/lge/homecube/Launcher$AppsAdapter;

    invoke-virtual {v10, v11}, Lcom/lge/homecube/AllAppsGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 4943
    iget-object v10, p0, Lcom/lge/homecube/Launcher;->mDefaultAppComponentname:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4931
    :cond_330
    add-int/lit8 v5, v5, 0x1

    goto :goto_2ec

    .line 4951
    .end local v2           #classname:Ljava/lang/String;
    .end local v3           #component:Landroid/content/ComponentName;
    :cond_333
    const/4 v5, 0x0

    :goto_334
    iget-object v10, p0, Lcom/lge/homecube/Launcher;->mGroup4Items:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v5, v10, :cond_37b

    .line 4953
    iget-object v10, p0, Lcom/lge/homecube/Launcher;->mGroup4Items:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/lge/homecube/ApplicationInfo;

    iget-object v10, v10, Lcom/lge/homecube/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    .line 4954
    .restart local v3       #component:Landroid/content/ComponentName;
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 4957
    .restart local v2       #classname:Ljava/lang/String;
    iget-object v10, p0, Lcom/lge/homecube/Launcher;->mAllAppComponentname:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_378

    .line 4958
    iget-object v10, p0, Lcom/lge/homecube/Launcher;->mGroup4Items:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/lge/homecube/ApplicationInfo;

    invoke-static {p0, v10}, Lcom/lge/homecube/Launcher;->deleteItemFromAllAppsDatabase(Landroid/content/Context;Lcom/lge/homecube/ApplicationInfo;)V

    .line 4959
    iget-object v10, p0, Lcom/lge/homecube/Launcher;->mGroup4Items:Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/lge/homecube/Launcher;->mGroup4Items:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4960
    iget-object v10, p0, Lcom/lge/homecube/Launcher;->group4_Grid:Lcom/lge/homecube/AllAppsGridView;

    iget-object v11, p0, Lcom/lge/homecube/Launcher;->mGroup4List:Lcom/lge/homecube/Launcher$AppsAdapter;

    invoke-virtual {v10, v11}, Lcom/lge/homecube/AllAppsGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 4963
    iget-object v10, p0, Lcom/lge/homecube/Launcher;->mDefaultAppComponentname:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4951
    :cond_378
    add-int/lit8 v5, v5, 0x1

    goto :goto_334

    .line 4971
    .end local v2           #classname:Ljava/lang/String;
    .end local v3           #component:Landroid/content/ComponentName;
    :cond_37b
    const/4 v5, 0x0

    :goto_37c
    iget-object v10, p0, Lcom/lge/homecube/Launcher;->mGroup5Items:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v5, v10, :cond_3c3

    .line 4973
    iget-object v10, p0, Lcom/lge/homecube/Launcher;->mGroup5Items:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/lge/homecube/ApplicationInfo;

    iget-object v10, v10, Lcom/lge/homecube/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    .line 4974
    .restart local v3       #component:Landroid/content/ComponentName;
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 4977
    .restart local v2       #classname:Ljava/lang/String;
    iget-object v10, p0, Lcom/lge/homecube/Launcher;->mAllAppComponentname:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3c0

    .line 4978
    iget-object v10, p0, Lcom/lge/homecube/Launcher;->mGroup5Items:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/lge/homecube/ApplicationInfo;

    invoke-static {p0, v10}, Lcom/lge/homecube/Launcher;->deleteItemFromAllAppsDatabase(Landroid/content/Context;Lcom/lge/homecube/ApplicationInfo;)V

    .line 4979
    iget-object v10, p0, Lcom/lge/homecube/Launcher;->mGroup5Items:Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/lge/homecube/Launcher;->mGroup5Items:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4980
    iget-object v10, p0, Lcom/lge/homecube/Launcher;->group5_Grid:Lcom/lge/homecube/AllAppsGridView;

    iget-object v11, p0, Lcom/lge/homecube/Launcher;->mGroup5List:Lcom/lge/homecube/Launcher$AppsAdapter;

    invoke-virtual {v10, v11}, Lcom/lge/homecube/AllAppsGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 4983
    iget-object v10, p0, Lcom/lge/homecube/Launcher;->mDefaultAppComponentname:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4971
    :cond_3c0
    add-int/lit8 v5, v5, 0x1

    goto :goto_37c

    .line 4991
    .end local v2           #classname:Ljava/lang/String;
    .end local v3           #component:Landroid/content/ComponentName;
    :cond_3c3
    const/4 v5, 0x0

    :goto_3c4
    iget-object v10, p0, Lcom/lge/homecube/Launcher;->mGroup6Items:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v5, v10, :cond_40b

    .line 4993
    iget-object v10, p0, Lcom/lge/homecube/Launcher;->mGroup6Items:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/lge/homecube/ApplicationInfo;

    iget-object v10, v10, Lcom/lge/homecube/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    .line 4994
    .restart local v3       #component:Landroid/content/ComponentName;
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 4997
    .restart local v2       #classname:Ljava/lang/String;
    iget-object v10, p0, Lcom/lge/homecube/Launcher;->mAllAppComponentname:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_408

    .line 4998
    iget-object v10, p0, Lcom/lge/homecube/Launcher;->mGroup6Items:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/lge/homecube/ApplicationInfo;

    invoke-static {p0, v10}, Lcom/lge/homecube/Launcher;->deleteItemFromAllAppsDatabase(Landroid/content/Context;Lcom/lge/homecube/ApplicationInfo;)V

    .line 4999
    iget-object v10, p0, Lcom/lge/homecube/Launcher;->mGroup6Items:Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/lge/homecube/Launcher;->mGroup6Items:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5000
    iget-object v10, p0, Lcom/lge/homecube/Launcher;->group6_Grid:Lcom/lge/homecube/AllAppsGridView;

    iget-object v11, p0, Lcom/lge/homecube/Launcher;->mGroup6List:Lcom/lge/homecube/Launcher$AppsAdapter;

    invoke-virtual {v10, v11}, Lcom/lge/homecube/AllAppsGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 5003
    iget-object v10, p0, Lcom/lge/homecube/Launcher;->mDefaultAppComponentname:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4991
    :cond_408
    add-int/lit8 v5, v5, 0x1

    goto :goto_3c4

    .line 5029
    .end local v2           #classname:Ljava/lang/String;
    .end local v3           #component:Landroid/content/ComponentName;
    .end local v5           #i:I
    .end local v6           #i$:Ljava/util/Iterator;
    :cond_40b
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .registers 1

    .prologue
    .line 5979
    return-object p0
.end method

.method getDragController()Lcom/lge/homecube/DragController;
    .registers 2

    .prologue
    .line 3128
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->mDragLayer:Lcom/lge/homecube/DragLayer;

    return-object v0
.end method

.method getDrawerHandle()Landroid/view/View;
    .registers 2

    .prologue
    .line 3315
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->mHandleView:Lcom/lge/homecube/HandleView;

    return-object v0
.end method

.method public getThemeState()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 6549
    iget-boolean v1, p0, Lcom/lge/homecube/Launcher;->mThemeStateReady:Z

    if-nez v1, :cond_16

    .line 6550
    const-string v1, "homecube_theme"

    invoke-virtual {p0, v1, v2}, Lcom/lge/homecube/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 6551
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "ThemeName"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/lge/homecube/Launcher;->mThmemState:Z

    .line 6552
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lge/homecube/Launcher;->mThemeStateReady:Z

    .line 6554
    .end local v0           #prefs:Landroid/content/SharedPreferences;
    :cond_16
    iget-boolean v1, p0, Lcom/lge/homecube/Launcher;->mThmemState:Z

    return v1
.end method

.method getWorkspace()Lcom/lge/homecube/Workspace;
    .registers 2

    .prologue
    .line 3331
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->mWorkspace:Lcom/lge/homecube/Workspace;

    return-object v0
.end method

.method isDrawerDown()Z
    .registers 2

    .prologue
    .line 3319
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->mDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->isMoving()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/lge/homecube/Launcher;->mDrawer:Landroid/widget/SlidingDrawer;

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
    .line 3327
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->mDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->isMoving()Z

    move-result v0

    return v0
.end method

.method isDrawerUp()Z
    .registers 2

    .prologue
    .line 3323
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->mDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/lge/homecube/Launcher;->mDrawer:Landroid/widget/SlidingDrawer;

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
    .line 3235
    iget-boolean v0, p0, Lcom/lge/homecube/Launcher;->mDesktopLocked:Z

    return v0
.end method

.method public loadWallpaper()V
    .registers 4

    .prologue
    .line 3189
    sget-object v1, Lcom/lge/homecube/Launcher;->sWallpaper:Landroid/graphics/Bitmap;

    if-nez v1, :cond_14

    .line 3190
    invoke-virtual {p0}, Lcom/lge/homecube/Launcher;->getWallpaper()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3191
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_1c

    .line 3192
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/lge/homecube/Launcher;->sWallpaper:Landroid/graphics/Bitmap;

    .line 3197
    :cond_14
    iget-object v1, p0, Lcom/lge/homecube/Launcher;->mWorkspace:Lcom/lge/homecube/Workspace;

    sget-object v2, Lcom/lge/homecube/Launcher;->sWallpaper:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Lcom/lge/homecube/Workspace;->loadWallpaper(Landroid/graphics/Bitmap;)V

    .line 3198
    return-void

    .line 3194
    .restart local v0       #drawable:Landroid/graphics/drawable/Drawable;
    :cond_1c
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "The wallpaper must be a BitmapDrawable."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
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

    .line 561
    if-ne p2, v2, :cond_4f

    iget-object v1, p0, Lcom/lge/homecube/Launcher;->mAddItemCellInfo:Lcom/lge/homecube/CellLayout$CellInfo;

    if-eqz v1, :cond_4f

    .line 562
    packed-switch p1, :pswitch_data_66

    .line 593
    :cond_c
    :goto_c
    :pswitch_c
    iput-boolean v3, p0, Lcom/lge/homecube/Launcher;->mWaitingForResult:Z

    .line 594
    return-void

    .line 564
    :pswitch_f
    iget-object v1, p0, Lcom/lge/homecube/Launcher;->mAddItemCellInfo:Lcom/lge/homecube/CellLayout$CellInfo;

    iget-boolean v2, p0, Lcom/lge/homecube/Launcher;->mDesktopLocked:Z

    if-nez v2, :cond_1a

    move v2, v4

    :goto_16
    invoke-virtual {p0, p0, p3, v1, v2}, Lcom/lge/homecube/Launcher;->completeAddApplication(Landroid/content/Context;Landroid/content/Intent;Lcom/lge/homecube/CellLayout$CellInfo;Z)V

    goto :goto_c

    :cond_1a
    move v2, v3

    goto :goto_16

    .line 567
    :pswitch_1c
    invoke-virtual {p0, p3}, Lcom/lge/homecube/Launcher;->addShortcut(Landroid/content/Intent;)V

    goto :goto_c

    .line 570
    :pswitch_20
    iget-object v1, p0, Lcom/lge/homecube/Launcher;->mAddItemCellInfo:Lcom/lge/homecube/CellLayout$CellInfo;

    iget-boolean v2, p0, Lcom/lge/homecube/Launcher;->mDesktopLocked:Z

    if-nez v2, :cond_2b

    move v2, v4

    :goto_27
    invoke-direct {p0, p3, v1, v2}, Lcom/lge/homecube/Launcher;->completeAddShortcut(Landroid/content/Intent;Lcom/lge/homecube/CellLayout$CellInfo;Z)V

    goto :goto_c

    :cond_2b
    move v2, v3

    goto :goto_27

    .line 573
    :pswitch_2d
    invoke-virtual {p0, p3}, Lcom/lge/homecube/Launcher;->addLiveFolder(Landroid/content/Intent;)V

    goto :goto_c

    .line 576
    :pswitch_31
    iget-object v1, p0, Lcom/lge/homecube/Launcher;->mAddItemCellInfo:Lcom/lge/homecube/CellLayout$CellInfo;

    iget-boolean v2, p0, Lcom/lge/homecube/Launcher;->mDesktopLocked:Z

    if-nez v2, :cond_3c

    move v2, v4

    :goto_38
    invoke-direct {p0, p3, v1, v2}, Lcom/lge/homecube/Launcher;->completeAddLiveFolder(Landroid/content/Intent;Lcom/lge/homecube/CellLayout$CellInfo;Z)V

    goto :goto_c

    :cond_3c
    move v2, v3

    goto :goto_38

    .line 579
    :pswitch_3e
    invoke-virtual {p0, p3}, Lcom/lge/homecube/Launcher;->addAppWidget(Landroid/content/Intent;)V

    goto :goto_c

    .line 582
    :pswitch_42
    iget-object v1, p0, Lcom/lge/homecube/Launcher;->mAddItemCellInfo:Lcom/lge/homecube/CellLayout$CellInfo;

    iget-boolean v2, p0, Lcom/lge/homecube/Launcher;->mDesktopLocked:Z

    if-nez v2, :cond_4d

    move v2, v4

    :goto_49
    invoke-direct {p0, p3, v1, v2}, Lcom/lge/homecube/Launcher;->completeAddAppWidget(Landroid/content/Intent;Lcom/lge/homecube/CellLayout$CellInfo;Z)V

    goto :goto_c

    :cond_4d
    move v2, v3

    goto :goto_49

    .line 585
    :cond_4f
    const/16 v1, 0x9

    if-ne p1, v1, :cond_c

    if-nez p2, :cond_c

    if-eqz p3, :cond_c

    .line 588
    const-string v1, "appWidgetId"

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 589
    .local v0, appWidgetId:I
    if-eq v0, v2, :cond_c

    .line 590
    iget-object v1, p0, Lcom/lge/homecube/Launcher;->mAppWidgetHost:Lcom/lge/homecube/LauncherAppWidgetHost;

    invoke-virtual {v1, v0}, Lcom/lge/homecube/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    goto :goto_c

    .line 562
    nop

    :pswitch_data_66
    .packed-switch 0x1
        :pswitch_20
        :pswitch_c
        :pswitch_c
        :pswitch_31
        :pswitch_42
        :pswitch_f
        :pswitch_1c
        :pswitch_2d
        :pswitch_3e
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 3137
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 3138
    .local v1, tag:Ljava/lang/Object;
    instance-of v2, v1, Lcom/lge/homecube/ApplicationInfo;

    if-eqz v2, :cond_10

    .line 3140
    check-cast v1, Lcom/lge/homecube/ApplicationInfo;

    .end local v1           #tag:Ljava/lang/Object;
    iget-object v0, v1, Lcom/lge/homecube/ApplicationInfo;->intent:Landroid/content/Intent;

    .line 3141
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/lge/homecube/Launcher;->startActivitySafely(Landroid/content/Intent;)V

    .line 3145
    .end local v0           #intent:Landroid/content/Intent;
    :cond_f
    :goto_f
    return-void

    .line 3142
    .restart local v1       #tag:Ljava/lang/Object;
    :cond_10
    instance-of v2, v1, Lcom/lge/homecube/FolderInfo;

    if-eqz v2, :cond_f

    .line 3143
    check-cast v1, Lcom/lge/homecube/FolderInfo;

    .end local v1           #tag:Ljava/lang/Object;
    invoke-direct {p0, v1}, Lcom/lge/homecube/Launcher;->handleFolderClick(Lcom/lge/homecube/FolderInfo;)V

    goto :goto_f
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 10
    .parameter "savedInstanceState"

    .prologue
    const v7, 0x7f030008

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v4, " isWorkspaceLocked="

    const-string v3, "homecube"

    .line 394
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 395
    invoke-virtual {p0}, Lcom/lge/homecube/Launcher;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/homecube/Launcher;->mInflater:Landroid/view/LayoutInflater;

    .line 397
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/homecube/Launcher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 399
    new-instance v1, Lcom/lge/homecube/LauncherAppWidgetHost;

    const/16 v2, 0x401

    invoke-direct {v1, p0, v2}, Lcom/lge/homecube/LauncherAppWidgetHost;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/lge/homecube/Launcher;->mAppWidgetHost:Lcom/lge/homecube/LauncherAppWidgetHost;

    .line 400
    iget-object v1, p0, Lcom/lge/homecube/Launcher;->mAppWidgetHost:Lcom/lge/homecube/LauncherAppWidgetHost;

    invoke-virtual {v1}, Lcom/lge/homecube/LauncherAppWidgetHost;->startListening()V

    .line 405
    const-string v1, "homecube"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "11  isWorkspaceLocked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lge/homecube/Launcher;->isWorkspaceLocked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    invoke-direct {p0}, Lcom/lge/homecube/Launcher;->checkForLocaleChange()V

    .line 407
    const-string v1, "homecube"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "12  isWorkspaceLocked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lge/homecube/Launcher;->isWorkspaceLocked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    invoke-direct {p0}, Lcom/lge/homecube/Launcher;->setWallpaperDimension()V

    .line 409
    const-string v1, "homecube"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "13  isWorkspaceLocked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lge/homecube/Launcher;->isWorkspaceLocked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    invoke-virtual {p0}, Lcom/lge/homecube/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_265

    move v0, v6

    .line 413
    .local v0, isLandscape:Z
    :goto_8e
    if-eqz v0, :cond_268

    .line 414
    sget-object v1, Lcom/lge/homecube/Launcher;->mContentViewLandscape:Landroid/view/View;

    if-nez v1, :cond_9d

    .line 415
    iget-object v1, p0, Lcom/lge/homecube/Launcher;->mInflater:Landroid/view/LayoutInflater;

    const/4 v2, 0x0

    invoke-virtual {v1, v7, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    sput-object v1, Lcom/lge/homecube/Launcher;->mContentViewLandscape:Landroid/view/View;

    .line 416
    :cond_9d
    sget-object v1, Lcom/lge/homecube/Launcher;->mContentViewLandscape:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/lge/homecube/Launcher;->setContentView(Landroid/view/View;)V

    .line 425
    :goto_a2
    const-string v1, "homecube"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "13 isWorkspaceLocked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lge/homecube/Launcher;->isWorkspaceLocked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    invoke-direct {p0}, Lcom/lge/homecube/Launcher;->setupViews()V

    .line 427
    const-string v1, "homecube"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "1 mLock="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/homecube/Launcher;->mWorkspace:Lcom/lge/homecube/Workspace;

    invoke-virtual {v2}, Lcom/lge/homecube/Workspace;->isLock()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isWorkspaceLocked="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lge/homecube/Launcher;->isWorkspaceLocked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    invoke-direct {p0}, Lcom/lge/homecube/Launcher;->registerIntentReceivers()V

    .line 429
    const-string v1, "homecube"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "2 mLock="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/homecube/Launcher;->mWorkspace:Lcom/lge/homecube/Workspace;

    invoke-virtual {v2}, Lcom/lge/homecube/Workspace;->isLock()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isWorkspaceLocked="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lge/homecube/Launcher;->isWorkspaceLocked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    invoke-direct {p0}, Lcom/lge/homecube/Launcher;->registerContentObservers()V

    .line 431
    const-string v1, "homecube"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "3 mLock="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/homecube/Launcher;->mWorkspace:Lcom/lge/homecube/Workspace;

    invoke-virtual {v2}, Lcom/lge/homecube/Workspace;->isLock()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isWorkspaceLocked="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lge/homecube/Launcher;->isWorkspaceLocked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    iput-object p1, p0, Lcom/lge/homecube/Launcher;->mSavedState:Landroid/os/Bundle;

    .line 433
    iget-object v1, p0, Lcom/lge/homecube/Launcher;->mSavedState:Landroid/os/Bundle;

    invoke-direct {p0, v1}, Lcom/lge/homecube/Launcher;->restoreState(Landroid/os/Bundle;)V

    .line 434
    const-string v1, "homecube"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "4 mLock="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/homecube/Launcher;->mWorkspace:Lcom/lge/homecube/Workspace;

    invoke-virtual {v2}, Lcom/lge/homecube/Workspace;->isLock()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isWorkspaceLocked="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lge/homecube/Launcher;->isWorkspaceLocked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    iget-boolean v1, p0, Lcom/lge/homecube/Launcher;->mRestoring:Z

    if-nez v1, :cond_1dd

    .line 440
    const-string v1, "homecube"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startLoaders before mLock="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/homecube/Launcher;->mWorkspace:Lcom/lge/homecube/Workspace;

    invoke-virtual {v2}, Lcom/lge/homecube/Workspace;->isLock()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isWorkspaceLocked="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lge/homecube/Launcher;->isWorkspaceLocked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    invoke-direct {p0}, Lcom/lge/homecube/Launcher;->startLoaders()V

    .line 442
    const-string v1, "homecube"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startLoaders after  mLock="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/homecube/Launcher;->mWorkspace:Lcom/lge/homecube/Workspace;

    invoke-virtual {v2}, Lcom/lge/homecube/Workspace;->isLock()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isWorkspaceLocked="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lge/homecube/Launcher;->isWorkspaceLocked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    :cond_1dd
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v1, p0, Lcom/lge/homecube/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    .line 447
    iget-object v1, p0, Lcom/lge/homecube/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-static {v1, v5}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 456
    invoke-virtual {p0}, Lcom/lge/homecube/Launcher;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/homecube/Launcher;->mReuseData:Ljava/lang/Object;

    .line 458
    iget-object v1, p0, Lcom/lge/homecube/Launcher;->mSavedState:Landroid/os/Bundle;

    if-eqz v1, :cond_1fd

    iget-object v1, p0, Lcom/lge/homecube/Launcher;->mSavedState:Landroid/os/Bundle;

    const-string v2, "launcher.all_apps_folder"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eq v1, v6, :cond_201

    :cond_1fd
    iget-boolean v1, p0, Lcom/lge/homecube/Launcher;->mLocaleChanged:Z

    if-eqz v1, :cond_33f

    .line 459
    :cond_201
    iget-object v1, p0, Lcom/lge/homecube/Launcher;->mReuseData:Ljava/lang/Object;

    if-nez v1, :cond_27c

    .line 460
    const-string v1, "homecube"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " getAllAppsDataOrg before ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/homecube/Launcher;->mWorkspace:Lcom/lge/homecube/Workspace;

    invoke-virtual {v2}, Lcom/lge/homecube/Workspace;->isLock()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isWorkspaceLocked="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lge/homecube/Launcher;->isWorkspaceLocked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    invoke-virtual {p0}, Lcom/lge/homecube/Launcher;->getAllAppsDataOrg()V

    .line 462
    const-string v1, "homecube"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " getAllAppsDataOrg after ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/homecube/Launcher;->mWorkspace:Lcom/lge/homecube/Workspace;

    invoke-virtual {v2}, Lcom/lge/homecube/Workspace;->isLock()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isWorkspaceLocked="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lge/homecube/Launcher;->isWorkspaceLocked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    iput-boolean v5, p0, Lcom/lge/homecube/Launcher;->mIsRotate:Z

    .line 479
    :goto_262
    iput-boolean v6, p0, Lcom/lge/homecube/Launcher;->mIsMainGridUp:Z

    .line 492
    :goto_264
    return-void

    .end local v0           #isLandscape:Z
    :cond_265
    move v0, v5

    .line 411
    goto/16 :goto_8e

    .line 418
    .restart local v0       #isLandscape:Z
    :cond_268
    sget-object v1, Lcom/lge/homecube/Launcher;->mContentViewPortrait:Landroid/view/View;

    if-nez v1, :cond_275

    .line 419
    iget-object v1, p0, Lcom/lge/homecube/Launcher;->mInflater:Landroid/view/LayoutInflater;

    const/4 v2, 0x0

    invoke-virtual {v1, v7, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    sput-object v1, Lcom/lge/homecube/Launcher;->mContentViewPortrait:Landroid/view/View;

    .line 420
    :cond_275
    sget-object v1, Lcom/lge/homecube/Launcher;->mContentViewPortrait:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/lge/homecube/Launcher;->setContentView(Landroid/view/View;)V

    goto/16 :goto_a2

    .line 466
    :cond_27c
    iget-boolean v1, p0, Lcom/lge/homecube/Launcher;->mLocaleChanged:Z

    if-eqz v1, :cond_2de

    .line 467
    const-string v1, "homecube"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mLocale getAllAppsDataOrg before ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/homecube/Launcher;->mWorkspace:Lcom/lge/homecube/Workspace;

    invoke-virtual {v2}, Lcom/lge/homecube/Workspace;->isLock()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isWorkspaceLocked="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lge/homecube/Launcher;->isWorkspaceLocked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    invoke-virtual {p0}, Lcom/lge/homecube/Launcher;->getAllAppsDataOrg()V

    .line 469
    const-string v1, "homecube"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mLocale getAllAppsDataOrg after ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/homecube/Launcher;->mWorkspace:Lcom/lge/homecube/Workspace;

    invoke-virtual {v2}, Lcom/lge/homecube/Workspace;->isLock()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isWorkspaceLocked="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lge/homecube/Launcher;->isWorkspaceLocked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    iput-boolean v5, p0, Lcom/lge/homecube/Launcher;->mIsRotate:Z

    goto :goto_262

    .line 473
    :cond_2de
    const-string v1, "homecube"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " getAllApps before ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/homecube/Launcher;->mWorkspace:Lcom/lge/homecube/Workspace;

    invoke-virtual {v2}, Lcom/lge/homecube/Workspace;->isLock()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isWorkspaceLocked="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lge/homecube/Launcher;->isWorkspaceLocked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    iget-object v1, p0, Lcom/lge/homecube/Launcher;->mReuseData:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lcom/lge/homecube/Launcher;->getAllAppsData(Ljava/lang/Object;)V

    .line 475
    const-string v1, "homecube"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " getAllApps after mLock="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/homecube/Launcher;->mWorkspace:Lcom/lge/homecube/Workspace;

    invoke-virtual {v2}, Lcom/lge/homecube/Workspace;->isLock()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isWorkspaceLocked="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lge/homecube/Launcher;->isWorkspaceLocked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    iput-boolean v6, p0, Lcom/lge/homecube/Launcher;->mIsRotate:Z

    goto/16 :goto_262

    .line 482
    :cond_33f
    iget-object v1, p0, Lcom/lge/homecube/Launcher;->mReuseData:Ljava/lang/Object;

    if-eqz v1, :cond_373

    .line 483
    iput-boolean v6, p0, Lcom/lge/homecube/Launcher;->mIsRotate:Z

    .line 484
    const-string v1, "homecube"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mReuseData not null Rotate=true Lock="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/homecube/Launcher;->mWorkspace:Lcom/lge/homecube/Workspace;

    invoke-virtual {v2}, Lcom/lge/homecube/Workspace;->isLock()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isWorkspaceLocked="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lge/homecube/Launcher;->isWorkspaceLocked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_264

    .line 487
    :cond_373
    iput-boolean v5, p0, Lcom/lge/homecube/Launcher;->mIsRotate:Z

    .line 488
    const-string v1, "homecube"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mReuseData not null Rotate=false Lock="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/homecube/Launcher;->mWorkspace:Lcom/lge/homecube/Workspace;

    invoke-virtual {v2}, Lcom/lge/homecube/Workspace;->isLock()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isWorkspaceLocked="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lge/homecube/Launcher;->isWorkspaceLocked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_264
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 4
    .parameter "id"

    .prologue
    const/4 v1, 0x0

    .line 3340
    packed-switch p1, :pswitch_data_64

    .line 3366
    :pswitch_4
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_8
    return-object v0

    .line 3342
    :pswitch_9
    new-instance v0, Lcom/lge/homecube/Launcher$CreateShortcut;

    invoke-direct {v0, p0, v1}, Lcom/lge/homecube/Launcher$CreateShortcut;-><init>(Lcom/lge/homecube/Launcher;Lcom/lge/homecube/Launcher$1;)V

    invoke-virtual {v0}, Lcom/lge/homecube/Launcher$CreateShortcut;->createDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_8

    .line 3344
    :pswitch_13
    new-instance v0, Lcom/lge/homecube/Launcher$RenameFolder;

    invoke-direct {v0, p0, v1}, Lcom/lge/homecube/Launcher$RenameFolder;-><init>(Lcom/lge/homecube/Launcher;Lcom/lge/homecube/Launcher$1;)V

    invoke-virtual {v0}, Lcom/lge/homecube/Launcher$RenameFolder;->createDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_8

    .line 3347
    :pswitch_1d
    new-instance v0, Lcom/lge/homecube/Launcher$AllAppsRenameFolder;

    invoke-direct {v0, p0, v1}, Lcom/lge/homecube/Launcher$AllAppsRenameFolder;-><init>(Lcom/lge/homecube/Launcher;Lcom/lge/homecube/Launcher$1;)V

    invoke-virtual {v0}, Lcom/lge/homecube/Launcher$AllAppsRenameFolder;->createDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_8

    .line 3349
    :pswitch_27
    new-instance v0, Lcom/lge/homecube/Launcher$AddGroup;

    invoke-direct {v0, p0, v1}, Lcom/lge/homecube/Launcher$AddGroup;-><init>(Lcom/lge/homecube/Launcher;Lcom/lge/homecube/Launcher$1;)V

    invoke-virtual {v0}, Lcom/lge/homecube/Launcher$AddGroup;->createDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_8

    .line 3351
    :pswitch_31
    new-instance v0, Lcom/lge/homecube/Launcher$ResetGroup;

    invoke-direct {v0, p0, v1}, Lcom/lge/homecube/Launcher$ResetGroup;-><init>(Lcom/lge/homecube/Launcher;Lcom/lge/homecube/Launcher$1;)V

    invoke-virtual {v0}, Lcom/lge/homecube/Launcher$ResetGroup;->createDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_8

    .line 3353
    :pswitch_3b
    new-instance v0, Lcom/lge/homecube/Launcher$RenameDeleteSelector;

    invoke-direct {v0, p0, v1}, Lcom/lge/homecube/Launcher$RenameDeleteSelector;-><init>(Lcom/lge/homecube/Launcher;Lcom/lge/homecube/Launcher$1;)V

    invoke-virtual {v0}, Lcom/lge/homecube/Launcher$RenameDeleteSelector;->createDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_8

    .line 3355
    :pswitch_45
    new-instance v0, Lcom/lge/homecube/Launcher$DeleteYesNo;

    invoke-direct {v0, p0, v1}, Lcom/lge/homecube/Launcher$DeleteYesNo;-><init>(Lcom/lge/homecube/Launcher;Lcom/lge/homecube/Launcher$1;)V

    invoke-virtual {v0}, Lcom/lge/homecube/Launcher$DeleteYesNo;->createDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_8

    .line 3358
    :pswitch_4f
    new-instance v0, Lcom/lge/homecube/Launcher$LgThemeSelector;

    invoke-direct {v0, p0, v1}, Lcom/lge/homecube/Launcher$LgThemeSelector;-><init>(Lcom/lge/homecube/Launcher;Lcom/lge/homecube/Launcher$1;)V

    invoke-virtual {v0}, Lcom/lge/homecube/Launcher$LgThemeSelector;->createDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_8

    .line 3360
    :pswitch_59
    new-instance v0, Lcom/lge/homecube/Launcher$CharThemeSelector;

    invoke-direct {v0, p0, v1}, Lcom/lge/homecube/Launcher$CharThemeSelector;-><init>(Lcom/lge/homecube/Launcher;Lcom/lge/homecube/Launcher$1;)V

    invoke-virtual {v0}, Lcom/lge/homecube/Launcher$CharThemeSelector;->createDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_8

    .line 3340
    nop

    :pswitch_data_64
    .packed-switch 0x1
        :pswitch_9
        :pswitch_13
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_1d
        :pswitch_27
        :pswitch_31
        :pswitch_3b
        :pswitch_45
        :pswitch_4f
        :pswitch_59
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 9
    .parameter "menu"

    .prologue
    const v6, 0x1080033

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2451
    iget-boolean v2, p0, Lcom/lge/homecube/Launcher;->mDesktopLocked:Z

    if-eqz v2, :cond_b

    move v2, v4

    .line 2491
    :goto_a
    return v2

    .line 2453
    :cond_b
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 2454
    const/4 v2, 0x2

    const v3, 0x7f090019

    invoke-interface {p1, v5, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v2

    const/16 v3, 0x41

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 2457
    const/4 v2, 0x3

    const v3, 0x7f09001a

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x108003f

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v2

    const/16 v3, 0x57

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 2461
    const/4 v2, 0x4

    const v3, 0x7f09003b

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->addSubMenu(IIII)Landroid/view/SubMenu;

    move-result-object v2

    const v3, 0x7f02006d

    invoke-interface {v2, v3}, Landroid/view/SubMenu;->setIcon(I)Landroid/view/SubMenu;

    move-result-object v1

    .line 2463
    .local v1, sub:Landroid/view/SubMenu;
    invoke-interface {v1}, Landroid/view/SubMenu;->clear()V

    .line 2464
    const/16 v2, 0xa

    const v3, 0x7f09003c

    invoke-interface {v1, v5, v2, v4, v3}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    .line 2465
    const/16 v2, 0xb

    const v3, 0x7f09003d

    invoke-interface {v1, v5, v2, v4, v3}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    .line 2468
    const/4 v2, 0x5

    const v3, 0x7f09001b

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x1080060

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v2

    const/16 v3, 0x73

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 2471
    const/4 v2, 0x6

    const v3, 0x7f09001c

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x1080191

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v2

    const/16 v3, 0x4e

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 2475
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.settings.SETTINGS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2476
    .local v0, settings:Landroid/content/Intent;
    const/high16 v2, 0x1020

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2479
    const/4 v2, 0x7

    const v3, 0x7f09001d

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x1080049

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v2

    const/16 v3, 0x50

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 2483
    const/16 v2, 0x8

    const v3, 0x7f090033

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v2

    const/16 v3, 0x47

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 2486
    const/16 v2, 0x9

    const v3, 0x7f090034

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f02004c

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v2

    const/16 v3, 0x52

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move v2, v5

    .line 2491
    goto/16 :goto_a
.end method

.method onDesktopItemsLoaded()V
    .registers 2

    .prologue
    .line 2935
    iget-boolean v0, p0, Lcom/lge/homecube/Launcher;->mDestroyed:Z

    if-eqz v0, :cond_5

    .line 2937
    :goto_4
    return-void

    .line 2936
    :cond_5
    invoke-direct {p0}, Lcom/lge/homecube/Launcher;->bindDesktopItems()V

    goto :goto_4
.end method

.method public onDestroy()V
    .registers 4

    .prologue
    .line 2291
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lge/homecube/Launcher;->mDestroyed:Z

    .line 2293
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2296
    :try_start_6
    iget-object v1, p0, Lcom/lge/homecube/Launcher;->mAppWidgetHost:Lcom/lge/homecube/LauncherAppWidgetHost;

    invoke-virtual {v1}, Lcom/lge/homecube/LauncherAppWidgetHost;->stopListening()V
    :try_end_b
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_b} :catch_c2

    .line 2301
    :goto_b
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/method/TextKeyListener;->release()V

    .line 2306
    sget-object v1, Lcom/lge/homecube/Launcher;->sModel:Lcom/lge/homecube/LauncherModel;

    invoke-virtual {v1}, Lcom/lge/homecube/LauncherModel;->unbind()V

    .line 2307
    sget-object v1, Lcom/lge/homecube/Launcher;->sModel:Lcom/lge/homecube/LauncherModel;

    invoke-virtual {v1}, Lcom/lge/homecube/LauncherModel;->abortLoaders()V

    .line 2309
    invoke-virtual {p0}, Lcom/lge/homecube/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/homecube/Launcher;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 2310
    invoke-virtual {p0}, Lcom/lge/homecube/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/homecube/Launcher;->mAppWidgetResetObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 2311
    iget-object v1, p0, Lcom/lge/homecube/Launcher;->mApplicationsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/lge/homecube/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2317
    :try_start_33
    iget-object v1, p0, Lcom/lge/homecube/Launcher;->mOperatorItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2318
    iget-object v1, p0, Lcom/lge/homecube/Launcher;->mCommunicationItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2319
    iget-object v1, p0, Lcom/lge/homecube/Launcher;->mMultimediaItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2320
    iget-object v1, p0, Lcom/lge/homecube/Launcher;->mUtilitiesItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2321
    iget-object v1, p0, Lcom/lge/homecube/Launcher;->mGoogleItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2322
    iget-object v1, p0, Lcom/lge/homecube/Launcher;->mDownloadsItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2323
    iget-object v1, p0, Lcom/lge/homecube/Launcher;->mGroup1Items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2324
    iget-object v1, p0, Lcom/lge/homecube/Launcher;->mGroup2Items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2325
    iget-object v1, p0, Lcom/lge/homecube/Launcher;->mGroup3Items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2326
    iget-object v1, p0, Lcom/lge/homecube/Launcher;->mGroup4Items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2327
    iget-object v1, p0, Lcom/lge/homecube/Launcher;->mGroup5Items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2328
    iget-object v1, p0, Lcom/lge/homecube/Launcher;->mGroup6Items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2330
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lge/homecube/Launcher;->mOperatorItems:Ljava/util/ArrayList;

    .line 2331
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lge/homecube/Launcher;->mCommunicationItems:Ljava/util/ArrayList;

    .line 2332
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lge/homecube/Launcher;->mMultimediaItems:Ljava/util/ArrayList;

    .line 2333
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lge/homecube/Launcher;->mUtilitiesItems:Ljava/util/ArrayList;

    .line 2334
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lge/homecube/Launcher;->mGoogleItems:Ljava/util/ArrayList;

    .line 2335
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lge/homecube/Launcher;->mDownloadsItems:Ljava/util/ArrayList;

    .line 2336
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lge/homecube/Launcher;->mGroup1Items:Ljava/util/ArrayList;

    .line 2337
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lge/homecube/Launcher;->mGroup2Items:Ljava/util/ArrayList;

    .line 2338
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lge/homecube/Launcher;->mGroup3Items:Ljava/util/ArrayList;

    .line 2339
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lge/homecube/Launcher;->mGroup4Items:Ljava/util/ArrayList;

    .line 2340
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lge/homecube/Launcher;->mGroup5Items:Ljava/util/ArrayList;

    .line 2341
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lge/homecube/Launcher;->mGroup6Items:Ljava/util/ArrayList;
    :try_end_93
    .catch Ljava/lang/NullPointerException; {:try_start_33 .. :try_end_93} :catch_cd

    .line 2349
    :goto_93
    sget-object v1, Lcom/lge/homecube/Launcher;->mContentViewLandscape:Landroid/view/View;

    if-eqz v1, :cond_aa

    sget-object v1, Lcom/lge/homecube/Launcher;->mContentViewLandscape:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_aa

    .line 2350
    sget-object v1, Lcom/lge/homecube/Launcher;->mContentViewLandscape:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 2352
    :cond_aa
    sget-object v1, Lcom/lge/homecube/Launcher;->mContentViewPortrait:Landroid/view/View;

    if-eqz v1, :cond_c1

    sget-object v1, Lcom/lge/homecube/Launcher;->mContentViewPortrait:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_c1

    .line 2353
    sget-object v1, Lcom/lge/homecube/Launcher;->mContentViewPortrait:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 2356
    :cond_c1
    return-void

    .line 2297
    .restart local p0
    :catch_c2
    move-exception v1

    move-object v0, v1

    .line 2298
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v1, "CubeHome"

    const-string v2, "problem while stopping AppWidgetHost during Launcher destruction"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_b

    .line 2342
    .end local v0           #ex:Ljava/lang/NullPointerException;
    :catch_cd
    move-exception v1

    move-object v0, v1

    .line 2343
    .restart local v0       #ex:Ljava/lang/NullPointerException;
    const-string v1, "bykong"

    const-string v2, "nullpointer check 2009_10_25"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_93
.end method

.method public onDropCompleted(Landroid/view/View;Z)V
    .registers 3
    .parameter "target"
    .parameter "success"

    .prologue
    .line 6520
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 14
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 749
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    .line 750
    .local v3, handled:Z
    if-nez v3, :cond_8a

    invoke-direct {p0}, Lcom/lge/homecube/Launcher;->acceptFilter()Z

    move-result v8

    if-eqz v8, :cond_8a

    const/16 v8, 0x42

    if-eq p1, v8, :cond_8a

    .line 751
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v8

    iget-object v9, p0, Lcom/lge/homecube/Launcher;->mWorkspace:Lcom/lge/homecube/Workspace;

    iget-object v10, p0, Lcom/lge/homecube/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v8, v9, v10, p1, p2}, Landroid/text/method/TextKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 753
    .local v2, gotKey:Z
    if-eqz v2, :cond_8a

    iget-object v8, p0, Lcom/lge/homecube/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    if-eqz v8, :cond_8a

    iget-object v8, p0, Lcom/lge/homecube/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_8a

    .line 755
    iget-object v8, p0, Lcom/lge/homecube/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 757
    .local v7, str:Ljava/lang/String;
    const/4 v6, 0x1

    .line 758
    .local v6, isDialable:Z
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    .line 759
    .local v0, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_36
    if-ge v4, v0, :cond_43

    .line 762
    invoke-virtual {v7, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->isReallyDialableLGE(C)Z

    move-result v8

    if-nez v8, :cond_6d

    .line 764
    const/4 v6, 0x0

    .line 769
    :cond_43
    if-eqz v6, :cond_70

    .line 770
    new-instance v5, Landroid/content/Intent;

    const-string v8, "android.intent.action.DIAL"

    const-string v9, "tel"

    const/4 v10, 0x0

    invoke-static {v9, v7, v10}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-direct {v5, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 785
    .local v5, intent:Landroid/content/Intent;
    :goto_53
    const/high16 v8, 0x1020

    invoke-virtual {v5, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 789
    :try_start_58
    invoke-virtual {p0, v5}, Lcom/lge/homecube/Launcher;->startActivity(Landroid/content/Intent;)V
    :try_end_5b
    .catch Landroid/content/ActivityNotFoundException; {:try_start_58 .. :try_end_5b} :catch_8c

    .line 794
    :goto_5b
    iget-object v8, p0, Lcom/lge/homecube/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 795
    iget-object v8, p0, Lcom/lge/homecube/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 796
    iget-object v8, p0, Lcom/lge/homecube/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 798
    const/4 v8, 0x1

    .line 802
    .end local v0           #count:I
    .end local v2           #gotKey:Z
    .end local v4           #i:I
    .end local v5           #intent:Landroid/content/Intent;
    .end local v6           #isDialable:Z
    .end local v7           #str:Ljava/lang/String;
    :goto_6c
    return v8

    .line 759
    .restart local v0       #count:I
    .restart local v2       #gotKey:Z
    .restart local v4       #i:I
    .restart local v6       #isDialable:Z
    .restart local v7       #str:Ljava/lang/String;
    :cond_6d
    add-int/lit8 v4, v4, 0x1

    goto :goto_36

    .line 772
    :cond_70
    new-instance v5, Landroid/content/Intent;

    const-string v8, "com.android.contacts.action.FILTER_CONTACTS"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 773
    .restart local v5       #intent:Landroid/content/Intent;
    const-string v8, "com.android.contacts.extra.FILTER_TEXT"

    invoke-virtual {v5, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 776
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 778
    .local v1, extras:Landroid/os/Bundle;
    const-string v8, "com.android.contacts.extra.KEY_EVENT"

    invoke-virtual {v1, v8, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 780
    invoke-virtual {v5, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    goto :goto_53

    .end local v0           #count:I
    .end local v1           #extras:Landroid/os/Bundle;
    .end local v2           #gotKey:Z
    .end local v4           #i:I
    .end local v5           #intent:Landroid/content/Intent;
    .end local v6           #isDialable:Z
    .end local v7           #str:Ljava/lang/String;
    :cond_8a
    move v8, v3

    .line 802
    goto :goto_6c

    .line 790
    .restart local v0       #count:I
    .restart local v2       #gotKey:Z
    .restart local v4       #i:I
    .restart local v5       #intent:Landroid/content/Intent;
    .restart local v6       #isDialable:Z
    .restart local v7       #str:Ljava/lang/String;
    :catch_8c
    move-exception v8

    goto :goto_5b
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 15
    .parameter "v"

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x0

    const/4 v10, 0x1

    const-string v7, "View-name="

    const-string v7, "SOU"

    .line 3241
    const/4 v2, 0x0

    .line 3242
    .local v2, FLAG_Widget:Z
    const/4 v3, 0x0

    .line 3243
    .local v3, LAW:Lcom/lge/homecube/LauncherAppWidgetHostView;
    const/4 v1, 0x0

    .line 3245
    .local v1, AWP:Landroid/appwidget/AppWidgetProviderInfo;
    :try_start_a
    move-object v0, p1

    check-cast v0, Lcom/lge/homecube/LauncherAppWidgetHostView;

    move-object v3, v0

    .line 3246
    invoke-virtual {v3}, Lcom/lge/homecube/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    .line 3247
    const-string v7, "SOU"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "View-name="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3248
    const-string v7, "SOU"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "View-name="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3249
    const-string v7, "SOU"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "View-name="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_6c} :catch_73

    .line 3251
    const/4 v2, 0x1

    .line 3257
    :goto_6d
    iget-boolean v7, p0, Lcom/lge/homecube/Launcher;->mDesktopLocked:Z

    if-eqz v7, :cond_77

    move v7, v11

    .line 3303
    :goto_72
    return v7

    .line 3252
    :catch_73
    move-exception v7

    move-object v6, v7

    .line 3253
    .local v6, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_6d

    .line 3261
    .end local v6           #e:Ljava/lang/Exception;
    :cond_77
    instance-of v7, p1, Lcom/lge/homecube/CellLayout;

    if-nez v7, :cond_81

    .line 3262
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/view/View;

    .line 3265
    .restart local p1
    :cond_81
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lge/homecube/CellLayout$CellInfo;

    .line 3268
    .local v5, cellInfo:Lcom/lge/homecube/CellLayout$CellInfo;
    if-nez v5, :cond_8b

    move v7, v10

    .line 3269
    goto :goto_72

    .line 3272
    :cond_8b
    iget-object v7, p0, Lcom/lge/homecube/Launcher;->mWorkspace:Lcom/lge/homecube/Workspace;

    invoke-virtual {v7}, Lcom/lge/homecube/Workspace;->allowLongPress()Z

    move-result v7

    if-eqz v7, :cond_a3

    .line 3273
    iget-object v7, v5, Lcom/lge/homecube/CellLayout$CellInfo;->cell:Landroid/view/View;

    if-nez v7, :cond_a5

    .line 3274
    iget-boolean v7, v5, Lcom/lge/homecube/CellLayout$CellInfo;->valid:Z

    if-eqz v7, :cond_a3

    .line 3276
    iget-object v7, p0, Lcom/lge/homecube/Launcher;->mWorkspace:Lcom/lge/homecube/Workspace;

    invoke-virtual {v7, v11}, Lcom/lge/homecube/Workspace;->setAllowLongPress(Z)V

    .line 3277
    invoke-direct {p0, v5}, Lcom/lge/homecube/Launcher;->showAddDialog(Lcom/lge/homecube/CellLayout$CellInfo;)V

    :cond_a3
    :goto_a3
    move v7, v10

    .line 3303
    goto :goto_72

    .line 3280
    :cond_a5
    iget-object v7, v5, Lcom/lge/homecube/CellLayout$CellInfo;->cell:Landroid/view/View;

    instance-of v7, v7, Lcom/lge/homecube/Folder;

    if-nez v7, :cond_a3

    .line 3283
    iget-object v7, p0, Lcom/lge/homecube/Launcher;->mWorkspace:Lcom/lge/homecube/Workspace;

    invoke-virtual {v7, v5}, Lcom/lge/homecube/Workspace;->startDrag(Lcom/lge/homecube/CellLayout$CellInfo;)V

    .line 3287
    new-instance v4, Landroid/content/ComponentName;

    const-string v7, "com.lge.cbwidget"

    const-string v8, "com.lge.cbwidget.CBWidgetProvider"

    invoke-direct {v4, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3288
    .local v4, cbName:Landroid/content/ComponentName;
    if-eqz v2, :cond_ce

    .line 3289
    iget-object v7, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v7, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a3

    .line 3290
    iget-object v7, p0, Lcom/lge/homecube/Launcher;->mWorkspace:Lcom/lge/homecube/Workspace;

    invoke-virtual {v7, v10}, Lcom/lge/homecube/Workspace;->setDeleteZoneFlag(Z)V

    .line 3291
    iget-object v7, p0, Lcom/lge/homecube/Launcher;->mLauncherLayout:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v7, v12}, Landroid/widget/AbsoluteLayout;->setVisibility(I)V

    goto :goto_a3

    .line 3295
    :cond_ce
    iget-object v7, p0, Lcom/lge/homecube/Launcher;->mWorkspace:Lcom/lge/homecube/Workspace;

    invoke-virtual {v7, v10}, Lcom/lge/homecube/Workspace;->setDeleteZoneFlag(Z)V

    .line 3297
    iget-object v7, p0, Lcom/lge/homecube/Launcher;->mLauncherLayout:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v7, v12}, Landroid/widget/AbsoluteLayout;->setVisibility(I)V

    goto :goto_a3
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 10
    .parameter "intent"

    .prologue
    const/high16 v5, 0x40

    const/4 v4, 0x0

    const-string v7, "thom21 onNewIntent mDrawer.isOpened "

    const-string v6, "Homecube"

    .line 2197
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 2198
    const-string v2, "Homecube"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "thom21 onNewIntent mDrawer.isOpened "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/homecube/Launcher;->mDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v3}, Landroid/widget/SlidingDrawer;->isOpened()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2201
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_83

    .line 2202
    invoke-virtual {p0}, Lcom/lge/homecube/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->closeAllPanels()V

    .line 2205
    const/4 v2, 0x1

    :try_start_3c
    invoke-virtual {p0, v2}, Lcom/lge/homecube/Launcher;->dismissDialog(I)V

    .line 2207
    iget-object v2, p0, Lcom/lge/homecube/Launcher;->mWorkspace:Lcom/lge/homecube/Workspace;

    invoke-virtual {v2}, Lcom/lge/homecube/Workspace;->unlock()V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_44} :catch_a8

    .line 2213
    :goto_44
    const/4 v2, 0x2

    :try_start_45
    invoke-virtual {p0, v2}, Lcom/lge/homecube/Launcher;->dismissDialog(I)V

    .line 2215
    iget-object v2, p0, Lcom/lge/homecube/Launcher;->mWorkspace:Lcom/lge/homecube/Workspace;

    invoke-virtual {v2}, Lcom/lge/homecube/Workspace;->unlock()V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_4d} :catch_a6

    .line 2222
    :goto_4d
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v2

    and-int/2addr v2, v5

    if-eq v2, v5, :cond_a2

    .line 2224
    iget-object v2, p0, Lcom/lge/homecube/Launcher;->mWorkspace:Lcom/lge/homecube/Workspace;

    invoke-virtual {v2}, Lcom/lge/homecube/Workspace;->isDefaultScreenShowing()Z

    move-result v2

    if-nez v2, :cond_61

    .line 2225
    iget-object v2, p0, Lcom/lge/homecube/Launcher;->mWorkspace:Lcom/lge/homecube/Workspace;

    invoke-virtual {v2}, Lcom/lge/homecube/Workspace;->moveToDefaultScreen()V

    .line 2227
    :cond_61
    invoke-direct {p0}, Lcom/lge/homecube/Launcher;->closeDrawer()V

    .line 2228
    invoke-virtual {p0}, Lcom/lge/homecube/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v1

    .line 2229
    .local v1, v:Landroid/view/View;
    if-eqz v1, :cond_83

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_83

    .line 2230
    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Lcom/lge/homecube/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 2232
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 2238
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v1           #v:Landroid/view/View;
    :cond_83
    :goto_83
    const-string v2, "Homecube"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "thom21 onNewIntent mDrawer.isOpened "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/homecube/Launcher;->mDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v3}, Landroid/widget/SlidingDrawer;->isOpened()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2239
    return-void

    .line 2235
    :cond_a2
    invoke-direct {p0, v4}, Lcom/lge/homecube/Launcher;->closeDrawer(Z)V

    goto :goto_83

    .line 2216
    :catch_a6
    move-exception v2

    goto :goto_4d

    .line 2208
    :catch_a8
    move-exception v2

    goto :goto_44
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 2537
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_3c

    .line 2571
    :pswitch_8
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_c
    return v0

    .line 2539
    :pswitch_d
    invoke-direct {p0}, Lcom/lge/homecube/Launcher;->addItems()V

    move v0, v1

    .line 2540
    goto :goto_c

    .line 2542
    :pswitch_12
    invoke-direct {p0}, Lcom/lge/homecube/Launcher;->startWallpaper()V

    move v0, v1

    .line 2543
    goto :goto_c

    .line 2545
    :pswitch_17
    invoke-virtual {p0}, Lcom/lge/homecube/Launcher;->onSearchRequested()Z

    move v0, v1

    .line 2546
    goto :goto_c

    .line 2548
    :pswitch_1c
    invoke-direct {p0}, Lcom/lge/homecube/Launcher;->showNotifications()V

    move v0, v1

    .line 2549
    goto :goto_c

    .line 2552
    :pswitch_21
    invoke-direct {p0}, Lcom/lge/homecube/Launcher;->loadGroupNumPreferences()I

    move-result v0

    iput v0, p0, Lcom/lge/homecube/Launcher;->NumofAddedGroup:I

    .line 2553
    invoke-virtual {p0}, Lcom/lge/homecube/Launcher;->showAddGroupDialog()V

    move v0, v1

    .line 2554
    goto :goto_c

    .line 2556
    :pswitch_2c
    invoke-virtual {p0}, Lcom/lge/homecube/Launcher;->showResetGroupDialog()V

    move v0, v1

    .line 2557
    goto :goto_c

    .line 2564
    :pswitch_31
    invoke-virtual {p0}, Lcom/lge/homecube/Launcher;->showLgThemeSelectorDialog()V

    move v0, v1

    .line 2565
    goto :goto_c

    .line 2567
    :pswitch_36
    invoke-virtual {p0}, Lcom/lge/homecube/Launcher;->showCharThemeSelectorDialog()V

    move v0, v1

    .line 2568
    goto :goto_c

    .line 2537
    nop

    :pswitch_data_3c
    .packed-switch 0x2
        :pswitch_d
        :pswitch_12
        :pswitch_8
        :pswitch_17
        :pswitch_1c
        :pswitch_8
        :pswitch_21
        :pswitch_2c
        :pswitch_31
        :pswitch_36
    .end packed-switch
.end method

.method protected onPause()V
    .registers 1

    .prologue
    .line 639
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 641
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .registers 14
    .parameter "id"
    .parameter "dialog"

    .prologue
    const v10, 0x7f050032

    const/4 v9, 0x1

    const/4 v7, 0x0

    const-string v8, "homecube"

    const-string v6, " isWorkspaceLocked="

    .line 3371
    sparse-switch p1, :sswitch_data_136

    .line 3411
    :goto_c
    return-void

    .line 3373
    :sswitch_d
    const-string v4, "homecube"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DIALOG_CREATE_SHORTCUT Lock= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/homecube/Launcher;->mWorkspace:Lcom/lge/homecube/Workspace;

    invoke-virtual {v5}, Lcom/lge/homecube/Workspace;->isLock()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isWorkspaceLocked="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/lge/homecube/Launcher;->isWorkspaceLocked()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3374
    iget-object v4, p0, Lcom/lge/homecube/Launcher;->mWorkspace:Lcom/lge/homecube/Workspace;

    invoke-virtual {v4}, Lcom/lge/homecube/Workspace;->lock()V

    .line 3375
    const-string v4, "homecube"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DIALOG_CREATE_SHORTCUT Lock= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/homecube/Launcher;->mWorkspace:Lcom/lge/homecube/Workspace;

    invoke-virtual {v5}, Lcom/lge/homecube/Workspace;->isLock()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isWorkspaceLocked="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/lge/homecube/Launcher;->isWorkspaceLocked()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 3378
    :sswitch_6b
    const-string v4, "homecube"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DIALOG_RENAME_FOLDER  Lock= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/homecube/Launcher;->mWorkspace:Lcom/lge/homecube/Workspace;

    invoke-virtual {v5}, Lcom/lge/homecube/Workspace;->isLock()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isWorkspaceLocked="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/lge/homecube/Launcher;->isWorkspaceLocked()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3379
    iget-object v4, p0, Lcom/lge/homecube/Launcher;->mWorkspace:Lcom/lge/homecube/Workspace;

    invoke-virtual {v4}, Lcom/lge/homecube/Workspace;->lock()V

    .line 3380
    const-string v4, "homecube"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DIALOG_RENAME_FOLDER  Lock= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/homecube/Launcher;->mWorkspace:Lcom/lge/homecube/Workspace;

    invoke-virtual {v5}, Lcom/lge/homecube/Workspace;->isLock()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isWorkspaceLocked="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/lge/homecube/Launcher;->isWorkspaceLocked()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3381
    invoke-direct {p0, v9}, Lcom/lge/homecube/Launcher;->sendOpenChangeToIME(Z)V

    .line 3382
    invoke-virtual {p2, v10}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 3383
    .local v1, input:Landroid/widget/EditText;
    iget-object v4, p0, Lcom/lge/homecube/Launcher;->mFolderInfo:Lcom/lge/homecube/FolderInfo;

    iget-object v3, v4, Lcom/lge/homecube/FolderInfo;->title:Ljava/lang/CharSequence;

    .line 3384
    .local v3, text:Ljava/lang/CharSequence;
    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3385
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-virtual {v1, v7, v4}, Landroid/widget/EditText;->setSelection(II)V

    goto/16 :goto_c

    .line 3389
    .end local v1           #input:Landroid/widget/EditText;
    .end local v3           #text:Ljava/lang/CharSequence;
    :sswitch_e1
    invoke-virtual {p2, v10}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 3390
    .local v2, rename_input:Landroid/widget/EditText;
    new-array v4, v9, [Landroid/text/InputFilter;

    new-instance v5, Landroid/text/InputFilter$LengthFilter;

    const/16 v6, 0x1e

    invoke-direct {v5, v6}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v5, v4, v7

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 3391
    invoke-direct {p0}, Lcom/lge/homecube/Launcher;->loadRenameTitlePreferences()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3392
    invoke-direct {p0}, Lcom/lge/homecube/Launcher;->loadRenameTitlePreferences()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v7, v4}, Landroid/widget/EditText;->setSelection(II)V

    goto/16 :goto_c

    .line 3396
    .end local v2           #rename_input:Landroid/widget/EditText;
    :sswitch_109
    const v4, 0x7f050002

    invoke-virtual {p2, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 3397
    .local v0, add_input:Landroid/widget/EditText;
    const v4, 0x7f090036

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setText(I)V

    .line 3398
    invoke-virtual {p0}, Lcom/lge/homecube/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090036

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v7, v4}, Landroid/widget/EditText;->setSelection(II)V

    goto/16 :goto_c

    .line 3402
    .end local v0           #add_input:Landroid/widget/EditText;
    :sswitch_12c
    invoke-direct {p0}, Lcom/lge/homecube/Launcher;->loadRenameTitlePreferences()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_c

    .line 3371
    nop

    :sswitch_data_136
    .sparse-switch
        0x1 -> :sswitch_d
        0x2 -> :sswitch_6b
        0xa -> :sswitch_e1
        0xb -> :sswitch_109
        0xd -> :sswitch_12c
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 9
    .parameter "menu"

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x6

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2496
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 2499
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->mDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->isOpened()Z

    move-result v0

    if-nez v0, :cond_65

    .line 2501
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->mWorkspace:Lcom/lge/homecube/Workspace;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/homecube/Workspace;->findAllVacantCells([Z)Lcom/lge/homecube/CellLayout$CellInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/homecube/Launcher;->mMenuAddInfo:Lcom/lge/homecube/CellLayout$CellInfo;

    .line 2502
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->mMenuAddInfo:Lcom/lge/homecube/CellLayout$CellInfo;

    if-eqz v0, :cond_63

    iget-object v0, p0, Lcom/lge/homecube/Launcher;->mMenuAddInfo:Lcom/lge/homecube/CellLayout$CellInfo;

    iget-boolean v0, v0, Lcom/lge/homecube/CellLayout$CellInfo;->valid:Z

    if-eqz v0, :cond_63

    move v0, v2

    :goto_24
    invoke-interface {p1, v2, v0}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 2504
    invoke-interface {p1, v3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2505
    invoke-interface {p1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2506
    invoke-interface {p1, v5}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2507
    invoke-interface {p1, v6}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2508
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2509
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2510
    invoke-interface {p1, v4}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2511
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2532
    :goto_62
    return v2

    :cond_63
    move v0, v3

    .line 2502
    goto :goto_24

    .line 2515
    :cond_65
    invoke-interface {p1, v3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2516
    invoke-interface {p1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2517
    invoke-interface {p1, v5}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2519
    invoke-interface {p1, v6}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2520
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2521
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2522
    invoke-direct {p0}, Lcom/lge/homecube/Launcher;->loadGroupNumPreferences()I

    move-result v0

    if-ge v0, v4, :cond_a7

    .line 2523
    invoke-interface {p1, v4}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2526
    :goto_9e
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_62

    .line 2525
    :cond_a7
    invoke-interface {p1, v4}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_9e
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 2
    .parameter "savedInstanceState"

    .prologue
    .line 2244
    iput-object p1, p0, Lcom/lge/homecube/Launcher;->mSavedInstanceState:Landroid/os/Bundle;

    .line 2245
    return-void
.end method

.method protected onResume()V
    .registers 7

    .prologue
    const-string v5, "homecube"

    const-string v4, " isWorkspaceLocked="

    const-string v3, " Lock="

    .line 598
    const-string v0, "Homecube"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "thom21 onResume mDrawer.isOpened() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/homecube/Launcher;->mDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v2}, Landroid/widget/SlidingDrawer;->isOpened()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    const-string v0, "homecube"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "1 onResume mRestoring="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/lge/homecube/Launcher;->mRestoring:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Lock="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/homecube/Launcher;->mWorkspace:Lcom/lge/homecube/Workspace;

    invoke-virtual {v1}, Lcom/lge/homecube/Workspace;->isLock()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isWorkspaceLocked="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lge/homecube/Launcher;->isWorkspaceLocked()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 601
    const-string v0, "homecube"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "2 onResume mRestoring="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/lge/homecube/Launcher;->mRestoring:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Lock="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/homecube/Launcher;->mWorkspace:Lcom/lge/homecube/Workspace;

    invoke-virtual {v1}, Lcom/lge/homecube/Workspace;->isLock()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isWorkspaceLocked="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lge/homecube/Launcher;->isWorkspaceLocked()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    iget-boolean v0, p0, Lcom/lge/homecube/Launcher;->mRestoring:Z

    if-eqz v0, :cond_10e

    .line 603
    const-string v0, "homecube"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "3 onResume mRestoring="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/lge/homecube/Launcher;->mRestoring:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Lock="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/homecube/Launcher;->mWorkspace:Lcom/lge/homecube/Workspace;

    invoke-virtual {v1}, Lcom/lge/homecube/Workspace;->isLock()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isWorkspaceLocked="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lge/homecube/Launcher;->isWorkspaceLocked()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    invoke-direct {p0}, Lcom/lge/homecube/Launcher;->startLoaders()V

    .line 605
    const-string v0, "homecube"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "4 onResume mRestoring="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/lge/homecube/Launcher;->mRestoring:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Lock="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/homecube/Launcher;->mWorkspace:Lcom/lge/homecube/Workspace;

    invoke-virtual {v1}, Lcom/lge/homecube/Workspace;->isLock()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isWorkspaceLocked="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lge/homecube/Launcher;->isWorkspaceLocked()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    :cond_10e
    iget-boolean v0, p0, Lcom/lge/homecube/Launcher;->mIsNewIntent:Z

    if-eqz v0, :cond_11c

    .line 611
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->mWorkspace:Lcom/lge/homecube/Workspace;

    new-instance v1, Lcom/lge/homecube/Launcher$1;

    invoke-direct {v1, p0}, Lcom/lge/homecube/Launcher$1;-><init>(Lcom/lge/homecube/Launcher;)V

    invoke-virtual {v0, v1}, Lcom/lge/homecube/Workspace;->post(Ljava/lang/Runnable;)Z

    .line 624
    :cond_11c
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/homecube/Launcher;->mIsNewIntent:Z

    .line 627
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->mWorkspace:Lcom/lge/homecube/Workspace;

    invoke-virtual {v0}, Lcom/lge/homecube/Workspace;->isLock()Z

    move-result v0

    if-eqz v0, :cond_12c

    .line 628
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->mWorkspace:Lcom/lge/homecube/Workspace;

    invoke-virtual {v0}, Lcom/lge/homecube/Workspace;->unlock()V

    .line 635
    :cond_12c
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .registers 8

    .prologue
    const/4 v5, 0x0

    const-string v6, "HomeCube"

    .line 646
    iget-object v3, p0, Lcom/lge/homecube/Launcher;->mBinder:Lcom/lge/homecube/Launcher$DesktopBinder;

    if-eqz v3, :cond_c

    .line 647
    iget-object v3, p0, Lcom/lge/homecube/Launcher;->mBinder:Lcom/lge/homecube/Launcher$DesktopBinder;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/lge/homecube/Launcher$DesktopBinder;->mTerminate:Z

    .line 661
    :cond_c
    iget-object v3, p0, Lcom/lge/homecube/Launcher;->mOperatorItems:Ljava/util/ArrayList;

    if-nez v3, :cond_41

    iget-object v3, p0, Lcom/lge/homecube/Launcher;->mCommunicationItems:Ljava/util/ArrayList;

    if-nez v3, :cond_41

    iget-object v3, p0, Lcom/lge/homecube/Launcher;->mMultimediaItems:Ljava/util/ArrayList;

    if-nez v3, :cond_41

    iget-object v3, p0, Lcom/lge/homecube/Launcher;->mGoogleItems:Ljava/util/ArrayList;

    if-nez v3, :cond_41

    iget-object v3, p0, Lcom/lge/homecube/Launcher;->mDownloadsItems:Ljava/util/ArrayList;

    if-nez v3, :cond_41

    iget-object v3, p0, Lcom/lge/homecube/Launcher;->mGroup1Items:Ljava/util/ArrayList;

    if-nez v3, :cond_41

    iget-object v3, p0, Lcom/lge/homecube/Launcher;->mGroup2Items:Ljava/util/ArrayList;

    if-nez v3, :cond_41

    iget-object v3, p0, Lcom/lge/homecube/Launcher;->mGroup3Items:Ljava/util/ArrayList;

    if-nez v3, :cond_41

    iget-object v3, p0, Lcom/lge/homecube/Launcher;->mGroup4Items:Ljava/util/ArrayList;

    if-nez v3, :cond_41

    iget-object v3, p0, Lcom/lge/homecube/Launcher;->mGroup5Items:Ljava/util/ArrayList;

    if-nez v3, :cond_41

    iget-object v3, p0, Lcom/lge/homecube/Launcher;->mGroup6Items:Ljava/util/ArrayList;

    if-nez v3, :cond_41

    .line 666
    iget-object v3, p0, Lcom/lge/homecube/Launcher;->mReuseData:Ljava/lang/Object;

    if-eqz v3, :cond_3f

    .line 667
    iget-object v3, p0, Lcom/lge/homecube/Launcher;->mReuseData:Ljava/lang/Object;

    .line 738
    :goto_3e
    return-object v3

    :cond_3f
    move-object v3, v5

    .line 671
    goto :goto_3e

    .line 676
    :cond_41
    iget-object v3, p0, Lcom/lge/homecube/Launcher;->mOperatorItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_a9

    iget-object v3, p0, Lcom/lge/homecube/Launcher;->mCommunicationItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_a9

    iget-object v3, p0, Lcom/lge/homecube/Launcher;->mMultimediaItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_a9

    iget-object v3, p0, Lcom/lge/homecube/Launcher;->mGoogleItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_a9

    iget-object v3, p0, Lcom/lge/homecube/Launcher;->mDownloadsItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_a9

    iget-object v3, p0, Lcom/lge/homecube/Launcher;->mGroup1Items:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_a9

    iget-object v3, p0, Lcom/lge/homecube/Launcher;->mGroup2Items:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_a9

    iget-object v3, p0, Lcom/lge/homecube/Launcher;->mGroup3Items:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_a9

    iget-object v3, p0, Lcom/lge/homecube/Launcher;->mGroup4Items:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_a9

    iget-object v3, p0, Lcom/lge/homecube/Launcher;->mGroup5Items:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_a9

    iget-object v3, p0, Lcom/lge/homecube/Launcher;->mGroup6Items:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_a9

    .line 680
    iget-object v3, p0, Lcom/lge/homecube/Launcher;->mReuseData:Ljava/lang/Object;

    if-eqz v3, :cond_a7

    .line 681
    const-string v3, "HomeCube"

    const-string v3, "3"

    invoke-static {v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    iget-object v3, p0, Lcom/lge/homecube/Launcher;->mReuseData:Ljava/lang/Object;

    goto :goto_3e

    :cond_a7
    move-object v3, v5

    .line 685
    goto :goto_3e

    .line 689
    :cond_a9
    const-string v3, "HomeCube"

    const-string v3, "5"

    invoke-static {v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    iput-object v5, p0, Lcom/lge/homecube/Launcher;->mReuseData:Ljava/lang/Object;

    .line 694
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 695
    .local v1, mItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/homecube/ApplicationInfo;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 696
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 697
    .local v2, size:I
    if-lez v2, :cond_c9

    .line 698
    const/4 v0, 0x0

    .local v0, i:I
    :goto_c1
    if-ge v0, v2, :cond_c9

    .line 699
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 698
    add-int/lit8 v0, v0, 0x1

    goto :goto_c1

    .line 702
    .end local v0           #i:I
    :cond_c9
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_ca
    iget-object v3, p0, Lcom/lge/homecube/Launcher;->mOperatorItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_de

    .line 703
    iget-object v3, p0, Lcom/lge/homecube/Launcher;->mOperatorItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 702
    add-int/lit8 v0, v0, 0x1

    goto :goto_ca

    .line 705
    :cond_de
    const/4 v0, 0x0

    :goto_df
    iget-object v3, p0, Lcom/lge/homecube/Launcher;->mCommunicationItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_f3

    .line 706
    iget-object v3, p0, Lcom/lge/homecube/Launcher;->mCommunicationItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 705
    add-int/lit8 v0, v0, 0x1

    goto :goto_df

    .line 708
    :cond_f3
    const/4 v0, 0x0

    :goto_f4
    iget-object v3, p0, Lcom/lge/homecube/Launcher;->mMultimediaItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_108

    .line 709
    iget-object v3, p0, Lcom/lge/homecube/Launcher;->mMultimediaItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 708
    add-int/lit8 v0, v0, 0x1

    goto :goto_f4

    .line 711
    :cond_108
    const/4 v0, 0x0

    :goto_109
    iget-object v3, p0, Lcom/lge/homecube/Launcher;->mUtilitiesItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_11d

    .line 712
    iget-object v3, p0, Lcom/lge/homecube/Launcher;->mUtilitiesItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 711
    add-int/lit8 v0, v0, 0x1

    goto :goto_109

    .line 714
    :cond_11d
    const/4 v0, 0x0

    :goto_11e
    iget-object v3, p0, Lcom/lge/homecube/Launcher;->mGoogleItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_132

    .line 715
    iget-object v3, p0, Lcom/lge/homecube/Launcher;->mGoogleItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 714
    add-int/lit8 v0, v0, 0x1

    goto :goto_11e

    .line 717
    :cond_132
    const/4 v0, 0x0

    :goto_133
    iget-object v3, p0, Lcom/lge/homecube/Launcher;->mDownloadsItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_147

    .line 718
    iget-object v3, p0, Lcom/lge/homecube/Launcher;->mDownloadsItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 717
    add-int/lit8 v0, v0, 0x1

    goto :goto_133

    .line 720
    :cond_147
    const/4 v0, 0x0

    :goto_148
    iget-object v3, p0, Lcom/lge/homecube/Launcher;->mGroup1Items:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_15c

    .line 721
    iget-object v3, p0, Lcom/lge/homecube/Launcher;->mGroup1Items:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 720
    add-int/lit8 v0, v0, 0x1

    goto :goto_148

    .line 723
    :cond_15c
    const/4 v0, 0x0

    :goto_15d
    iget-object v3, p0, Lcom/lge/homecube/Launcher;->mGroup2Items:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_171

    .line 724
    iget-object v3, p0, Lcom/lge/homecube/Launcher;->mGroup2Items:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 723
    add-int/lit8 v0, v0, 0x1

    goto :goto_15d

    .line 726
    :cond_171
    const/4 v0, 0x0

    :goto_172
    iget-object v3, p0, Lcom/lge/homecube/Launcher;->mGroup3Items:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_186

    .line 727
    iget-object v3, p0, Lcom/lge/homecube/Launcher;->mGroup3Items:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 726
    add-int/lit8 v0, v0, 0x1

    goto :goto_172

    .line 729
    :cond_186
    const/4 v0, 0x0

    :goto_187
    iget-object v3, p0, Lcom/lge/homecube/Launcher;->mGroup4Items:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_19b

    .line 730
    iget-object v3, p0, Lcom/lge/homecube/Launcher;->mGroup4Items:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 729
    add-int/lit8 v0, v0, 0x1

    goto :goto_187

    .line 732
    :cond_19b
    const/4 v0, 0x0

    :goto_19c
    iget-object v3, p0, Lcom/lge/homecube/Launcher;->mGroup5Items:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1b0

    .line 733
    iget-object v3, p0, Lcom/lge/homecube/Launcher;->mGroup5Items:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 732
    add-int/lit8 v0, v0, 0x1

    goto :goto_19c

    .line 735
    :cond_1b0
    const/4 v0, 0x0

    :goto_1b1
    iget-object v3, p0, Lcom/lge/homecube/Launcher;->mGroup6Items:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1c5

    .line 736
    iget-object v3, p0, Lcom/lge/homecube/Launcher;->mGroup6Items:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 735
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b1

    :cond_1c5
    move-object v3, v1

    .line 738
    goto/16 :goto_3e
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 12
    .parameter "outState"

    .prologue
    const/4 v9, 0x1

    .line 2249
    const-string v7, "launcher.current_screen"

    iget-object v8, p0, Lcom/lge/homecube/Launcher;->mWorkspace:Lcom/lge/homecube/Workspace;

    invoke-virtual {v8}, Lcom/lge/homecube/Workspace;->getCurrentScreen()I

    move-result v8

    invoke-virtual {p1, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2251
    iget-object v7, p0, Lcom/lge/homecube/Launcher;->mWorkspace:Lcom/lge/homecube/Workspace;

    invoke-virtual {v7}, Lcom/lge/homecube/Workspace;->getOpenFolders()Ljava/util/ArrayList;

    move-result-object v2

    .line 2252
    .local v2, folders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/homecube/Folder;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_b3

    .line 2253
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2254
    .local v1, count:I
    new-array v4, v1, [J

    .line 2255
    .local v4, ids:[J
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1f
    if-ge v3, v1, :cond_32

    .line 2256
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lge/homecube/Folder;

    invoke-virtual {v7}, Lcom/lge/homecube/Folder;->getInfo()Lcom/lge/homecube/FolderInfo;

    move-result-object v5

    .line 2257
    .local v5, info:Lcom/lge/homecube/FolderInfo;
    iget-wide v7, v5, Lcom/lge/homecube/FolderInfo;->id:J

    aput-wide v7, v4, v3

    .line 2255
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 2259
    .end local v5           #info:Lcom/lge/homecube/FolderInfo;
    :cond_32
    const-string v7, "launcher.user_folder"

    invoke-virtual {p1, v7, v4}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 2264
    .end local v1           #count:I
    .end local v3           #i:I
    .end local v4           #ids:[J
    :goto_37
    iget-object v7, p0, Lcom/lge/homecube/Launcher;->mDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v7}, Landroid/widget/SlidingDrawer;->isOpened()Z

    move-result v7

    if-eqz v7, :cond_44

    .line 2265
    const-string v7, "launcher.all_apps_folder"

    invoke-virtual {p1, v7, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2268
    :cond_44
    iget-object v7, p0, Lcom/lge/homecube/Launcher;->mAddItemCellInfo:Lcom/lge/homecube/CellLayout$CellInfo;

    if-eqz v7, :cond_9c

    iget-object v7, p0, Lcom/lge/homecube/Launcher;->mAddItemCellInfo:Lcom/lge/homecube/CellLayout$CellInfo;

    iget-boolean v7, v7, Lcom/lge/homecube/CellLayout$CellInfo;->valid:Z

    if-eqz v7, :cond_9c

    iget-boolean v7, p0, Lcom/lge/homecube/Launcher;->mWaitingForResult:Z

    if-eqz v7, :cond_9c

    .line 2269
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->mAddItemCellInfo:Lcom/lge/homecube/CellLayout$CellInfo;

    .line 2270
    .local v0, addItemCellInfo:Lcom/lge/homecube/CellLayout$CellInfo;
    iget-object v7, p0, Lcom/lge/homecube/Launcher;->mWorkspace:Lcom/lge/homecube/Workspace;

    iget v8, v0, Lcom/lge/homecube/CellLayout$CellInfo;->screen:I

    invoke-virtual {v7, v8}, Lcom/lge/homecube/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/lge/homecube/CellLayout;

    .line 2272
    .local v6, layout:Lcom/lge/homecube/CellLayout;
    const-string v7, "launcher.add_screen"

    iget v8, v0, Lcom/lge/homecube/CellLayout$CellInfo;->screen:I

    invoke-virtual {p1, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2273
    const-string v7, "launcher.add_cellX"

    iget v8, v0, Lcom/lge/homecube/CellLayout$CellInfo;->cellX:I

    invoke-virtual {p1, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2274
    const-string v7, "launcher.add_cellY"

    iget v8, v0, Lcom/lge/homecube/CellLayout$CellInfo;->cellY:I

    invoke-virtual {p1, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2275
    const-string v7, "launcher.add_spanX"

    iget v8, v0, Lcom/lge/homecube/CellLayout$CellInfo;->spanX:I

    invoke-virtual {p1, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2276
    const-string v7, "launcher.add_spanY"

    iget v8, v0, Lcom/lge/homecube/CellLayout$CellInfo;->spanY:I

    invoke-virtual {p1, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2277
    const-string v7, "launcher.add_countX"

    invoke-virtual {v6}, Lcom/lge/homecube/CellLayout;->getCountX()I

    move-result v8

    invoke-virtual {p1, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2278
    const-string v7, "launcher.add_countY"

    invoke-virtual {v6}, Lcom/lge/homecube/CellLayout;->getCountY()I

    move-result v8

    invoke-virtual {p1, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2279
    const-string v7, "launcher.add_occupied_cells"

    invoke-virtual {v6}, Lcom/lge/homecube/CellLayout;->getOccupiedCells()[Z

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 2283
    .end local v0           #addItemCellInfo:Lcom/lge/homecube/CellLayout$CellInfo;
    .end local v6           #layout:Lcom/lge/homecube/CellLayout;
    :cond_9c
    iget-object v7, p0, Lcom/lge/homecube/Launcher;->mFolderInfo:Lcom/lge/homecube/FolderInfo;

    if-eqz v7, :cond_b2

    iget-boolean v7, p0, Lcom/lge/homecube/Launcher;->mWaitingForResult:Z

    if-eqz v7, :cond_b2

    .line 2284
    const-string v7, "launcher.rename_folder"

    invoke-virtual {p1, v7, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2285
    const-string v7, "launcher.rename_folder_id"

    iget-object v8, p0, Lcom/lge/homecube/Launcher;->mFolderInfo:Lcom/lge/homecube/FolderInfo;

    iget-wide v8, v8, Lcom/lge/homecube/FolderInfo;->id:J

    invoke-virtual {p1, v7, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2287
    :cond_b2
    return-void

    .line 2261
    :cond_b3
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    goto :goto_37
.end method

.method public onSearchRequested()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2577
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0, v2, v1}, Lcom/lge/homecube/Launcher;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 2578
    return v1
.end method

.method public setAllAppsGridViewDrawingCacheEnabled(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 5578
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->operator_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v0, p1}, Lcom/lge/homecube/AllAppsGridView;->setDrawingCacheEnabled(Z)V

    .line 5579
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->commuication_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v0, p1}, Lcom/lge/homecube/AllAppsGridView;->setDrawingCacheEnabled(Z)V

    .line 5580
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->multimedia_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v0, p1}, Lcom/lge/homecube/AllAppsGridView;->setDrawingCacheEnabled(Z)V

    .line 5581
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->utilities_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v0, p1}, Lcom/lge/homecube/AllAppsGridView;->setDrawingCacheEnabled(Z)V

    .line 5582
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->google_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v0, p1}, Lcom/lge/homecube/AllAppsGridView;->setDrawingCacheEnabled(Z)V

    .line 5583
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->downloads_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v0, p1}, Lcom/lge/homecube/AllAppsGridView;->setDrawingCacheEnabled(Z)V

    .line 5584
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->group1_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v0, p1}, Lcom/lge/homecube/AllAppsGridView;->setDrawingCacheEnabled(Z)V

    .line 5585
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->group2_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v0, p1}, Lcom/lge/homecube/AllAppsGridView;->setDrawingCacheEnabled(Z)V

    .line 5586
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->group3_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v0, p1}, Lcom/lge/homecube/AllAppsGridView;->setDrawingCacheEnabled(Z)V

    .line 5587
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->group4_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v0, p1}, Lcom/lge/homecube/AllAppsGridView;->setDrawingCacheEnabled(Z)V

    .line 5588
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->group5_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v0, p1}, Lcom/lge/homecube/AllAppsGridView;->setDrawingCacheEnabled(Z)V

    .line 5589
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->group6_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v0, p1}, Lcom/lge/homecube/AllAppsGridView;->setDrawingCacheEnabled(Z)V

    .line 5590
    return-void
.end method

.method public setDragger(Lcom/lge/homecube/DragController;)V
    .registers 2
    .parameter "dragger"

    .prologue
    .line 6517
    iput-object p1, p0, Lcom/lge/homecube/Launcher;->mDragger:Lcom/lge/homecube/DragController;

    .line 6518
    return-void
.end method

.method public setGridViewHeight()V
    .registers 20

    .prologue
    .line 5654
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->operator_Grid:Lcom/lge/homecube/AllAppsGridView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/lge/homecube/AllAppsGridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    .line 5655
    .local v14, l_oper:Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->commuication_Grid:Lcom/lge/homecube/AllAppsGridView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/lge/homecube/AllAppsGridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 5656
    .local v4, l_comm:Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->multimedia_Grid:Lcom/lge/homecube/AllAppsGridView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/lge/homecube/AllAppsGridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    .line 5657
    .local v13, l_multi:Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->utilities_Grid:Lcom/lge/homecube/AllAppsGridView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/lge/homecube/AllAppsGridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    .line 5658
    .local v15, l_utill:Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->google_Grid:Lcom/lge/homecube/AllAppsGridView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/lge/homecube/AllAppsGridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 5659
    .local v6, l_google:Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->downloads_Grid:Lcom/lge/homecube/AllAppsGridView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/lge/homecube/AllAppsGridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 5660
    .local v5, l_down:Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->group1_Grid:Lcom/lge/homecube/AllAppsGridView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/lge/homecube/AllAppsGridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .line 5661
    .local v7, l_group1:Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->group2_Grid:Lcom/lge/homecube/AllAppsGridView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/lge/homecube/AllAppsGridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    .line 5662
    .local v8, l_group2:Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->group3_Grid:Lcom/lge/homecube/AllAppsGridView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/lge/homecube/AllAppsGridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    .line 5663
    .local v9, l_group3:Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->group4_Grid:Lcom/lge/homecube/AllAppsGridView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/lge/homecube/AllAppsGridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    .line 5664
    .local v10, l_group4:Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->group5_Grid:Lcom/lge/homecube/AllAppsGridView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/lge/homecube/AllAppsGridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    .line 5665
    .local v11, l_group5:Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->group6_Grid:Lcom/lge/homecube/AllAppsGridView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/lge/homecube/AllAppsGridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    .line 5667
    .local v12, l_group6:Landroid/view/ViewGroup$LayoutParams;
    const/16 v16, 0x62

    .line 5668
    .local v16, oneline_height:I
    const/16 v2, 0x62

    .line 5670
    .local v2, height_default:I
    invoke-virtual/range {p0 .. p0}, Lcom/lge/homecube/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_215

    const/16 v17, 0x1

    move/from16 v3, v17

    .line 5673
    .local v3, isLandscape:Z
    :goto_96
    if-nez v3, :cond_21b

    .line 5674
    const/16 v17, 0x4

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/homecube/Launcher;->mColumnNum:I

    .line 5678
    :goto_a0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->mOperatorItems:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-gtz v17, :cond_225

    .line 5680
    const/16 v17, 0x62

    move/from16 v0, v17

    move-object v1, v14

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 5685
    :goto_b3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->mCommunicationItems:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-gtz v17, :cond_246

    .line 5687
    const/16 v17, 0x62

    move/from16 v0, v17

    move-object v1, v4

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 5693
    :goto_c6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->mMultimediaItems:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-gtz v17, :cond_267

    .line 5695
    const/16 v17, 0x62

    move/from16 v0, v17

    move-object v1, v13

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 5700
    :goto_d9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->mUtilitiesItems:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-gtz v17, :cond_288

    .line 5702
    const/16 v17, 0x62

    move/from16 v0, v17

    move-object v1, v15

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 5707
    :goto_ec
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->mGoogleItems:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-gtz v17, :cond_2a9

    .line 5709
    const/16 v17, 0x62

    move/from16 v0, v17

    move-object v1, v6

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 5713
    :goto_ff
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->mDownloadsItems:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-gtz v17, :cond_2ca

    .line 5715
    const/16 v17, 0x62

    move/from16 v0, v17

    move-object v1, v5

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 5720
    :goto_112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->mGroup1Items:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-gtz v17, :cond_2eb

    .line 5722
    const/16 v17, 0x62

    move/from16 v0, v17

    move-object v1, v7

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 5726
    :goto_125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->mGroup2Items:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-gtz v17, :cond_30c

    .line 5728
    const/16 v17, 0x62

    move/from16 v0, v17

    move-object v1, v8

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 5732
    :goto_138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->mGroup3Items:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-gtz v17, :cond_32d

    .line 5734
    const/16 v17, 0x62

    move/from16 v0, v17

    move-object v1, v9

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 5738
    :goto_14b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->mGroup4Items:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-gtz v17, :cond_34e

    .line 5740
    const/16 v17, 0x62

    move/from16 v0, v17

    move-object v1, v10

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 5744
    :goto_15e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->mGroup5Items:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-gtz v17, :cond_36f

    .line 5746
    const/16 v17, 0x62

    move/from16 v0, v17

    move-object v1, v11

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 5750
    :goto_171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->mGroup6Items:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-gtz v17, :cond_390

    .line 5752
    const/16 v17, 0x62

    move/from16 v0, v17

    move-object v1, v12

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 5757
    :goto_184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->operator_Grid:Lcom/lge/homecube/AllAppsGridView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v14

    invoke-virtual {v0, v1}, Lcom/lge/homecube/AllAppsGridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5758
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->commuication_Grid:Lcom/lge/homecube/AllAppsGridView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/lge/homecube/AllAppsGridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5759
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->multimedia_Grid:Lcom/lge/homecube/AllAppsGridView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v13

    invoke-virtual {v0, v1}, Lcom/lge/homecube/AllAppsGridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5760
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->utilities_Grid:Lcom/lge/homecube/AllAppsGridView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/lge/homecube/AllAppsGridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5761
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->google_Grid:Lcom/lge/homecube/AllAppsGridView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/lge/homecube/AllAppsGridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5762
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->downloads_Grid:Lcom/lge/homecube/AllAppsGridView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/lge/homecube/AllAppsGridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5763
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->group1_Grid:Lcom/lge/homecube/AllAppsGridView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v7

    invoke-virtual {v0, v1}, Lcom/lge/homecube/AllAppsGridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5764
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->group2_Grid:Lcom/lge/homecube/AllAppsGridView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v8

    invoke-virtual {v0, v1}, Lcom/lge/homecube/AllAppsGridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5765
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->group3_Grid:Lcom/lge/homecube/AllAppsGridView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v9

    invoke-virtual {v0, v1}, Lcom/lge/homecube/AllAppsGridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5766
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->group4_Grid:Lcom/lge/homecube/AllAppsGridView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v10

    invoke-virtual {v0, v1}, Lcom/lge/homecube/AllAppsGridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5767
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->group5_Grid:Lcom/lge/homecube/AllAppsGridView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v11

    invoke-virtual {v0, v1}, Lcom/lge/homecube/AllAppsGridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5768
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->group6_Grid:Lcom/lge/homecube/AllAppsGridView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v12

    invoke-virtual {v0, v1}, Lcom/lge/homecube/AllAppsGridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5769
    return-void

    .line 5670
    .end local v3           #isLandscape:Z
    :cond_215
    const/16 v17, 0x0

    move/from16 v3, v17

    goto/16 :goto_96

    .line 5676
    .restart local v3       #isLandscape:Z
    :cond_21b
    const/16 v17, 0x6

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/homecube/Launcher;->mColumnNum:I

    goto/16 :goto_a0

    .line 5682
    :cond_225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->mOperatorItems:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    const/16 v18, 0x1

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/homecube/Launcher;->mColumnNum:I

    move/from16 v18, v0

    div-int v17, v17, v18

    add-int/lit8 v17, v17, 0x1

    mul-int/lit8 v17, v17, 0x62

    move/from16 v0, v17

    move-object v1, v14

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_b3

    .line 5689
    :cond_246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->mCommunicationItems:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    const/16 v18, 0x1

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/homecube/Launcher;->mColumnNum:I

    move/from16 v18, v0

    div-int v17, v17, v18

    add-int/lit8 v17, v17, 0x1

    mul-int/lit8 v17, v17, 0x62

    move/from16 v0, v17

    move-object v1, v4

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_c6

    .line 5697
    :cond_267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->mMultimediaItems:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    const/16 v18, 0x1

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/homecube/Launcher;->mColumnNum:I

    move/from16 v18, v0

    div-int v17, v17, v18

    add-int/lit8 v17, v17, 0x1

    mul-int/lit8 v17, v17, 0x62

    move/from16 v0, v17

    move-object v1, v13

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_d9

    .line 5704
    :cond_288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->mUtilitiesItems:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    const/16 v18, 0x1

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/homecube/Launcher;->mColumnNum:I

    move/from16 v18, v0

    div-int v17, v17, v18

    add-int/lit8 v17, v17, 0x1

    mul-int/lit8 v17, v17, 0x62

    move/from16 v0, v17

    move-object v1, v15

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_ec

    .line 5711
    :cond_2a9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->mGoogleItems:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    const/16 v18, 0x1

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/homecube/Launcher;->mColumnNum:I

    move/from16 v18, v0

    div-int v17, v17, v18

    add-int/lit8 v17, v17, 0x1

    mul-int/lit8 v17, v17, 0x62

    move/from16 v0, v17

    move-object v1, v6

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_ff

    .line 5717
    :cond_2ca
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->mDownloadsItems:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    const/16 v18, 0x1

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/homecube/Launcher;->mColumnNum:I

    move/from16 v18, v0

    div-int v17, v17, v18

    add-int/lit8 v17, v17, 0x1

    mul-int/lit8 v17, v17, 0x62

    move/from16 v0, v17

    move-object v1, v5

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_112

    .line 5724
    :cond_2eb
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->mGroup1Items:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    const/16 v18, 0x1

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/homecube/Launcher;->mColumnNum:I

    move/from16 v18, v0

    div-int v17, v17, v18

    add-int/lit8 v17, v17, 0x1

    mul-int/lit8 v17, v17, 0x62

    move/from16 v0, v17

    move-object v1, v7

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_125

    .line 5730
    :cond_30c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->mGroup2Items:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    const/16 v18, 0x1

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/homecube/Launcher;->mColumnNum:I

    move/from16 v18, v0

    div-int v17, v17, v18

    add-int/lit8 v17, v17, 0x1

    mul-int/lit8 v17, v17, 0x62

    move/from16 v0, v17

    move-object v1, v8

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_138

    .line 5736
    :cond_32d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->mGroup3Items:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    const/16 v18, 0x1

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/homecube/Launcher;->mColumnNum:I

    move/from16 v18, v0

    div-int v17, v17, v18

    add-int/lit8 v17, v17, 0x1

    mul-int/lit8 v17, v17, 0x62

    move/from16 v0, v17

    move-object v1, v9

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_14b

    .line 5742
    :cond_34e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->mGroup4Items:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    const/16 v18, 0x1

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/homecube/Launcher;->mColumnNum:I

    move/from16 v18, v0

    div-int v17, v17, v18

    add-int/lit8 v17, v17, 0x1

    mul-int/lit8 v17, v17, 0x62

    move/from16 v0, v17

    move-object v1, v10

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_15e

    .line 5748
    :cond_36f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->mGroup5Items:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    const/16 v18, 0x1

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/homecube/Launcher;->mColumnNum:I

    move/from16 v18, v0

    div-int v17, v17, v18

    add-int/lit8 v17, v17, 0x1

    mul-int/lit8 v17, v17, 0x62

    move/from16 v0, v17

    move-object v1, v11

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_171

    .line 5754
    :cond_390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->mGroup6Items:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    const/16 v18, 0x1

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/homecube/Launcher;->mColumnNum:I

    move/from16 v18, v0

    div-int v17, v17, v18

    add-int/lit8 v17, v17, 0x1

    mul-int/lit8 v17, v17, 0x62

    move/from16 v0, v17

    move-object v1, v12

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_184
.end method

.method public setRenameTitle(ILjava/lang/String;)V
    .registers 3
    .parameter "id"
    .parameter "old_title"

    .prologue
    .line 1785
    iput-object p2, p0, Lcom/lge/homecube/Launcher;->RenameTitle:Ljava/lang/CharSequence;

    .line 1786
    iput p1, p0, Lcom/lge/homecube/Launcher;->RenameTitleId:I

    .line 1788
    invoke-virtual {p0, p2}, Lcom/lge/homecube/Launcher;->SetRenameTitlePreference(Ljava/lang/String;)V

    .line 1789
    invoke-virtual {p0, p1}, Lcom/lge/homecube/Launcher;->SetRenameTitleIdPreference(I)V

    .line 1790
    return-void
.end method

.method public setThemeState(Z)V
    .registers 6
    .parameter "state"

    .prologue
    .line 6559
    const-string v2, "homecube_theme"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/lge/homecube/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 6560
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 6561
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "ThemeName"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 6562
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 6563
    iput-boolean p1, p0, Lcom/lge/homecube/Launcher;->mThmemState:Z

    .line 6564
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .registers 2
    .parameter "view"

    .prologue
    .line 6522
    iput-object p1, p0, Lcom/lge/homecube/Launcher;->mView:Landroid/view/View;

    .line 6523
    return-void
.end method

.method public setWallpaperTheme(Z)V
    .registers 8
    .parameter "state"

    .prologue
    const-string v5, "Failed to set wallpaper: "

    const-string v4, "CubeHome"

    .line 6568
    if-nez p1, :cond_e5

    .line 6571
    const/4 v1, 0x0

    .line 6572
    .local v1, stream:Ljava/io/InputStream;
    :try_start_7
    sget-object v2, Lcom/lge/homecube/Launcher;->mOpCode:Ljava/lang/String;

    const-string v3, "ORG"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 6574
    invoke-virtual {p0}, Lcom/lge/homecube/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020099

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 6608
    :goto_1c
    invoke-virtual {p0, v1}, Lcom/lge/homecube/Launcher;->setWallpaper(Ljava/io/InputStream;)V

    .line 6622
    .end local v1           #stream:Ljava/io/InputStream;
    :goto_1f
    return-void

    .line 6576
    .restart local v1       #stream:Ljava/io/InputStream;
    :cond_20
    sget-object v2, Lcom/lge/homecube/Launcher;->mOpCode:Ljava/lang/String;

    const-string v3, "RGS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 6578
    invoke-virtual {p0}, Lcom/lge/homecube/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02009e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    goto :goto_1c

    .line 6580
    :cond_36
    sget-object v2, Lcom/lge/homecube/Launcher;->mOpCode:Ljava/lang/String;

    const-string v3, "BYT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 6582
    invoke-virtual {p0}, Lcom/lge/homecube/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02008b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    goto :goto_1c

    .line 6584
    :cond_4c
    sget-object v2, Lcom/lge/homecube/Launcher;->mOpCode:Ljava/lang/String;

    const-string v3, "Cellcom"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_62

    .line 6586
    invoke-virtual {p0}, Lcom/lge/homecube/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02008c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    goto :goto_1c

    .line 6588
    :cond_62
    sget-object v2, Lcom/lge/homecube/Launcher;->mOpCode:Ljava/lang/String;

    const-string v3, "VIVO"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_78

    .line 6590
    invoke-virtual {p0}, Lcom/lge/homecube/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200a9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    goto :goto_1c

    .line 6592
    :cond_78
    sget-object v2, Lcom/lge/homecube/Launcher;->mOpCode:Ljava/lang/String;

    const-string v3, "TIM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8e

    .line 6594
    invoke-virtual {p0}, Lcom/lge/homecube/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200a8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    goto :goto_1c

    .line 6596
    :cond_8e
    sget-object v2, Lcom/lge/homecube/Launcher;->mOpCode:Ljava/lang/String;

    const-string v3, "CLARO"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a5

    .line 6598
    invoke-virtual {p0}, Lcom/lge/homecube/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02008e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    goto/16 :goto_1c

    .line 6600
    :cond_a5
    sget-object v2, Lcom/lge/homecube/Launcher;->mOpCode:Ljava/lang/String;

    const-string v3, "TLS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_bc

    .line 6602
    invoke-virtual {p0}, Lcom/lge/homecube/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200a7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    goto/16 :goto_1c

    .line 6606
    :cond_bc
    invoke-virtual {p0}, Lcom/lge/homecube/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020096

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_c6
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_c6} :catch_c9

    move-result-object v1

    goto/16 :goto_1c

    .line 6609
    :catch_c9
    move-exception v2

    move-object v0, v2

    .line 6610
    .local v0, e:Ljava/io/IOException;
    const-string v2, "CubeHome"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to set wallpaper: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1f

    .line 6616
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #stream:Ljava/io/InputStream;
    :cond_e5
    :try_start_e5
    invoke-virtual {p0}, Lcom/lge/homecube/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020011

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 6617
    .restart local v1       #stream:Ljava/io/InputStream;
    invoke-virtual {p0, v1}, Lcom/lge/homecube/Launcher;->setWallpaper(Ljava/io/InputStream;)V
    :try_end_f3
    .catch Ljava/io/IOException; {:try_start_e5 .. :try_end_f3} :catch_f5

    goto/16 :goto_1f

    .line 6618
    .end local v1           #stream:Ljava/io/InputStream;
    :catch_f5
    move-exception v2

    move-object v0, v2

    .line 6619
    .restart local v0       #e:Ljava/io/IOException;
    const-string v2, "CubeHome"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to set wallpaper: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1f
.end method

.method showAddGroupDialog()V
    .registers 2

    .prologue
    .line 4697
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/lge/homecube/Launcher;->showDialog(I)V

    .line 4698
    return-void
.end method

.method showCharThemeSelectorDialog()V
    .registers 2

    .prologue
    .line 4718
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/lge/homecube/Launcher;->showDialog(I)V

    .line 4719
    return-void
.end method

.method showDeleteYesNoDialog()V
    .registers 2

    .prologue
    .line 4710
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lcom/lge/homecube/Launcher;->showDialog(I)V

    .line 4711
    return-void
.end method

.method showLgThemeSelectorDialog()V
    .registers 2

    .prologue
    .line 4714
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/lge/homecube/Launcher;->showDialog(I)V

    .line 4715
    return-void
.end method

.method showRenameDeleteSelectorDialog()V
    .registers 2

    .prologue
    .line 4705
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lcom/lge/homecube/Launcher;->showDialog(I)V

    .line 4706
    return-void
.end method

.method showRenameDialog(Lcom/lge/homecube/FolderInfo;)V
    .registers 3
    .parameter "info"

    .prologue
    .line 3414
    iput-object p1, p0, Lcom/lge/homecube/Launcher;->mFolderInfo:Lcom/lge/homecube/FolderInfo;

    .line 3415
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/homecube/Launcher;->mWaitingForResult:Z

    .line 3416
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/lge/homecube/Launcher;->showDialog(I)V

    .line 3417
    return-void
.end method

.method showRenameDialogAllApps()V
    .registers 2

    .prologue
    .line 4693
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/lge/homecube/Launcher;->showDialog(I)V

    .line 4694
    return-void
.end method

.method showResetGroupDialog()V
    .registers 2

    .prologue
    .line 4701
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/lge/homecube/Launcher;->showDialog(I)V

    .line 4702
    return-void
.end method

.method showSearchDialog(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .registers 12
    .parameter "initialQuery"
    .parameter "selectInitialQuery"
    .parameter "appSearchData"
    .parameter "globalSearch"

    .prologue
    .line 2396
    if-nez p1, :cond_9

    .line 2398
    invoke-direct {p0}, Lcom/lge/homecube/Launcher;->getTypedText()Ljava/lang/String;

    move-result-object p1

    .line 2399
    invoke-direct {p0}, Lcom/lge/homecube/Launcher;->clearTypedText()V

    .line 2401
    :cond_9
    if-nez p3, :cond_17

    .line 2402
    new-instance p3, Landroid/os/Bundle;

    .end local p3
    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 2403
    .restart local p3
    const-string v1, "source"

    const-string v2, "launcher-search"

    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2406
    :cond_17
    const-string v1, "search"

    invoke-virtual {p0, v1}, Lcom/lge/homecube/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    .line 2409
    .local v0, searchManager:Landroid/app/SearchManager;
    iget-object v1, p0, Lcom/lge/homecube/Launcher;->mWorkspace:Lcom/lge/homecube/Workspace;

    invoke-virtual {v1}, Lcom/lge/homecube/Workspace;->findSearchWidgetOnCurrentScreen()Lcom/lge/homecube/Search;

    move-result-object v6

    .line 2410
    .local v6, searchWidget:Lcom/lge/homecube/Search;
    if-eqz v6, :cond_2f

    .line 2413
    new-instance v1, Lcom/lge/homecube/Launcher$17;

    invoke-direct {v1, p0, v0}, Lcom/lge/homecube/Launcher$17;-><init>(Lcom/lge/homecube/Launcher;Landroid/app/SearchManager;)V

    invoke-virtual {v0, v1}, Landroid/app/SearchManager;->setOnCancelListener(Landroid/app/SearchManager$OnCancelListener;)V

    .line 2421
    :cond_2f
    invoke-virtual {p0}, Lcom/lge/homecube/Launcher;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/app/SearchManager;->startSearch(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;Z)V

    .line 2423
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .registers 4
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    .line 2360
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/homecube/Launcher;->mWaitingForResult:Z

    .line 2361
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2362
    return-void
.end method

.method startActivitySafely(Landroid/content/Intent;)V
    .registers 6
    .parameter "intent"

    .prologue
    const v3, 0x7f090005

    const/4 v2, 0x0

    .line 3148
    const/high16 v1, 0x1000

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3151
    :try_start_9
    invoke-virtual {p0, p1}, Lcom/lge/homecube/Launcher;->startActivity(Landroid/content/Intent;)V
    :try_end_c
    .catch Landroid/content/ActivityNotFoundException; {:try_start_9 .. :try_end_c} :catch_d
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_c} :catch_16

    .line 3160
    :goto_c
    return-void

    .line 3152
    :catch_d
    move-exception v0

    .line 3153
    .local v0, e:Landroid/content/ActivityNotFoundException;
    invoke-static {p0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_c

    .line 3154
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :catch_16
    move-exception v0

    .line 3155
    .local v0, e:Ljava/lang/SecurityException;
    invoke-static {p0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 3156
    const-string v1, "CubeHome"

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

.method public startItemDrag(Landroid/view/View;Ljava/lang/Object;I)V
    .registers 5
    .parameter "view"
    .parameter "info"
    .parameter "dragAction"

    .prologue
    .line 6513
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->mDragger:Lcom/lge/homecube/DragController;

    invoke-interface {v0, p1, p0, p2, p3}, Lcom/lge/homecube/DragController;->startDrag(Landroid/view/View;Lcom/lge/homecube/DragSource;Ljava/lang/Object;I)V

    .line 6514
    return-void
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .registers 7
    .parameter "initialQuery"
    .parameter "selectInitialQuery"
    .parameter "appSearchData"
    .parameter "globalSearch"

    .prologue
    .line 2370
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/lge/homecube/Launcher;->closeDrawer(Z)V

    .line 2374
    iget-object v1, p0, Lcom/lge/homecube/Launcher;->mWorkspace:Lcom/lge/homecube/Workspace;

    invoke-virtual {v1}, Lcom/lge/homecube/Workspace;->findSearchWidgetOnCurrentScreen()Lcom/lge/homecube/Search;

    move-result-object v0

    .line 2375
    .local v0, searchWidget:Lcom/lge/homecube/Search;
    if-nez v0, :cond_10

    .line 2376
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/lge/homecube/Launcher;->showSearchDialog(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 2391
    :goto_f
    return-void

    .line 2378
    :cond_10
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/lge/homecube/Search;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 2380
    invoke-direct {p0}, Lcom/lge/homecube/Launcher;->getTypedText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/homecube/Search;->setQuery(Ljava/lang/String;)V

    goto :goto_f
.end method

.method stopSearch()V
    .registers 4

    .prologue
    .line 2440
    const-string v2, "search"

    invoke-virtual {p0, v2}, Lcom/lge/homecube/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    .line 2441
    .local v0, searchManager:Landroid/app/SearchManager;
    invoke-virtual {v0}, Landroid/app/SearchManager;->stopSearch()V

    .line 2443
    iget-object v2, p0, Lcom/lge/homecube/Launcher;->mWorkspace:Lcom/lge/homecube/Workspace;

    invoke-virtual {v2}, Lcom/lge/homecube/Workspace;->findSearchWidgetOnCurrentScreen()Lcom/lge/homecube/Search;

    move-result-object v1

    .line 2444
    .local v1, searchWidget:Lcom/lge/homecube/Search;
    if-eqz v1, :cond_17

    .line 2445
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lge/homecube/Search;->stopSearch(Z)V

    .line 2447
    :cond_17
    return-void
.end method

.method public updateMainGridAppsItem()V
    .registers 2

    .prologue
    .line 3931
    invoke-virtual {p0}, Lcom/lge/homecube/Launcher;->getAllAppsDataOrg()V

    .line 3932
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/homecube/Launcher;->mIsMainGridUp:Z

    .line 3934
    return-void
.end method

.method public updateMoveSelectionBackgoundItem(FF)V
    .registers 10
    .parameter "xPos"
    .parameter "yPos"

    .prologue
    .line 5034
    float-to-int v3, p1

    .line 5035
    .local v3, x:I
    float-to-int v6, p2

    .line 5037
    .local v6, y:I
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    add-int/2addr v6, v0

    .line 5039
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->operator_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v0}, Lcom/lge/homecube/AllAppsGridView;->getTop()I

    move-result v0

    iput v0, p0, Lcom/lge/homecube/Launcher;->mOperatorGridTop:I

    .line 5040
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->commuication_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v0}, Lcom/lge/homecube/AllAppsGridView;->getTop()I

    move-result v0

    iput v0, p0, Lcom/lge/homecube/Launcher;->mCommunicationGridTop:I

    .line 5041
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->multimedia_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v0}, Lcom/lge/homecube/AllAppsGridView;->getTop()I

    move-result v0

    iput v0, p0, Lcom/lge/homecube/Launcher;->mMultimediaGridTop:I

    .line 5042
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->utilities_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v0}, Lcom/lge/homecube/AllAppsGridView;->getTop()I

    move-result v0

    iput v0, p0, Lcom/lge/homecube/Launcher;->mUtilitiesGridTop:I

    .line 5043
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->google_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v0}, Lcom/lge/homecube/AllAppsGridView;->getTop()I

    move-result v0

    iput v0, p0, Lcom/lge/homecube/Launcher;->mGoogleGridTop:I

    .line 5044
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->downloads_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v0}, Lcom/lge/homecube/AllAppsGridView;->getTop()I

    move-result v0

    iput v0, p0, Lcom/lge/homecube/Launcher;->mDownloadsGridTop:I

    .line 5045
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->group1_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v0}, Lcom/lge/homecube/AllAppsGridView;->getTop()I

    move-result v0

    iput v0, p0, Lcom/lge/homecube/Launcher;->mGroup1GridTop:I

    .line 5046
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->group2_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v0}, Lcom/lge/homecube/AllAppsGridView;->getTop()I

    move-result v0

    iput v0, p0, Lcom/lge/homecube/Launcher;->mGroup2GridTop:I

    .line 5047
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->group3_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v0}, Lcom/lge/homecube/AllAppsGridView;->getTop()I

    move-result v0

    iput v0, p0, Lcom/lge/homecube/Launcher;->mGroup3GridTop:I

    .line 5048
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->group4_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v0}, Lcom/lge/homecube/AllAppsGridView;->getTop()I

    move-result v0

    iput v0, p0, Lcom/lge/homecube/Launcher;->mGroup4GridTop:I

    .line 5049
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->group5_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v0}, Lcom/lge/homecube/AllAppsGridView;->getTop()I

    move-result v0

    iput v0, p0, Lcom/lge/homecube/Launcher;->mGroup5GridTop:I

    .line 5050
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->group6_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v0}, Lcom/lge/homecube/AllAppsGridView;->getTop()I

    move-result v0

    iput v0, p0, Lcom/lge/homecube/Launcher;->mGroup6GridTop:I

    .line 5052
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->operator_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v0}, Lcom/lge/homecube/AllAppsGridView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/lge/homecube/Launcher;->mOperatorGridHeight:I

    .line 5053
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->commuication_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v0}, Lcom/lge/homecube/AllAppsGridView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/lge/homecube/Launcher;->mCommunicationGridHeight:I

    .line 5054
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->multimedia_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v0}, Lcom/lge/homecube/AllAppsGridView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/lge/homecube/Launcher;->mMultimediaGridHeight:I

    .line 5055
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->utilities_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v0}, Lcom/lge/homecube/AllAppsGridView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/lge/homecube/Launcher;->mUtilitiesGridHeight:I

    .line 5056
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->google_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v0}, Lcom/lge/homecube/AllAppsGridView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/lge/homecube/Launcher;->mGoogleGridHeight:I

    .line 5057
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->downloads_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v0}, Lcom/lge/homecube/AllAppsGridView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/lge/homecube/Launcher;->mDownloadsGridHeight:I

    .line 5058
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->group1_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v0}, Lcom/lge/homecube/AllAppsGridView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/lge/homecube/Launcher;->mGroup1GridHeight:I

    .line 5059
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->group2_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v0}, Lcom/lge/homecube/AllAppsGridView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/lge/homecube/Launcher;->mGroup2GridHeight:I

    .line 5060
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->group3_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v0}, Lcom/lge/homecube/AllAppsGridView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/lge/homecube/Launcher;->mGroup3GridHeight:I

    .line 5061
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->group4_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v0}, Lcom/lge/homecube/AllAppsGridView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/lge/homecube/Launcher;->mGroup4GridHeight:I

    .line 5062
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->group5_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v0}, Lcom/lge/homecube/AllAppsGridView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/lge/homecube/Launcher;->mGroup5GridHeight:I

    .line 5063
    iget-object v0, p0, Lcom/lge/homecube/Launcher;->group6_Grid:Lcom/lge/homecube/AllAppsGridView;

    invoke-virtual {v0}, Lcom/lge/homecube/AllAppsGridView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/lge/homecube/Launcher;->mGroup6GridHeight:I

    .line 5065
    iget v0, p0, Lcom/lge/homecube/Launcher;->mOperatorGridTop:I

    if-ge v0, v6, :cond_e2

    iget v0, p0, Lcom/lge/homecube/Launcher;->mOperatorGridTop:I

    iget v1, p0, Lcom/lge/homecube/Launcher;->mOperatorGridHeight:I

    add-int/2addr v0, v1

    if-ge v6, v0, :cond_e2

    .line 5066
    iget-object v1, p0, Lcom/lge/homecube/Launcher;->operator_Grid:Lcom/lge/homecube/AllAppsGridView;

    iget-object v2, p0, Lcom/lge/homecube/Launcher;->mOperatorItems:Ljava/util/ArrayList;

    iget v0, p0, Lcom/lge/homecube/Launcher;->mOperatorGridTop:I

    sub-int v4, v6, v0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/lge/homecube/Launcher;->backgroundObjColorChange(Lcom/lge/homecube/AllAppsGridView;Ljava/util/ArrayList;III)V

    .line 5101
    :cond_e1
    :goto_e1
    return-void

    .line 5068
    :cond_e2
    iget v0, p0, Lcom/lge/homecube/Launcher;->mCommunicationGridTop:I

    if-ge v0, v6, :cond_fb

    iget v0, p0, Lcom/lge/homecube/Launcher;->mCommunicationGridTop:I

    iget v1, p0, Lcom/lge/homecube/Launcher;->mCommunicationGridHeight:I

    add-int/2addr v0, v1

    if-ge v6, v0, :cond_fb

    .line 5069
    iget-object v1, p0, Lcom/lge/homecube/Launcher;->commuication_Grid:Lcom/lge/homecube/AllAppsGridView;

    iget-object v2, p0, Lcom/lge/homecube/Launcher;->mCommunicationItems:Ljava/util/ArrayList;

    iget v0, p0, Lcom/lge/homecube/Launcher;->mCommunicationGridTop:I

    sub-int v4, v6, v0

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/lge/homecube/Launcher;->backgroundObjColorChange(Lcom/lge/homecube/AllAppsGridView;Ljava/util/ArrayList;III)V

    goto :goto_e1

    .line 5071
    :cond_fb
    iget v0, p0, Lcom/lge/homecube/Launcher;->mMultimediaGridTop:I

    if-ge v0, v6, :cond_114

    iget v0, p0, Lcom/lge/homecube/Launcher;->mMultimediaGridTop:I

    iget v1, p0, Lcom/lge/homecube/Launcher;->mMultimediaGridHeight:I

    add-int/2addr v0, v1

    if-ge v6, v0, :cond_114

    .line 5072
    iget-object v1, p0, Lcom/lge/homecube/Launcher;->multimedia_Grid:Lcom/lge/homecube/AllAppsGridView;

    iget-object v2, p0, Lcom/lge/homecube/Launcher;->mMultimediaItems:Ljava/util/ArrayList;

    iget v0, p0, Lcom/lge/homecube/Launcher;->mMultimediaGridTop:I

    sub-int v4, v6, v0

    const/4 v5, 0x2

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/lge/homecube/Launcher;->backgroundObjColorChange(Lcom/lge/homecube/AllAppsGridView;Ljava/util/ArrayList;III)V

    goto :goto_e1

    .line 5074
    :cond_114
    iget v0, p0, Lcom/lge/homecube/Launcher;->mUtilitiesGridTop:I

    if-ge v0, v6, :cond_12d

    iget v0, p0, Lcom/lge/homecube/Launcher;->mUtilitiesGridTop:I

    iget v1, p0, Lcom/lge/homecube/Launcher;->mUtilitiesGridHeight:I

    add-int/2addr v0, v1

    if-ge v6, v0, :cond_12d

    .line 5075
    iget-object v1, p0, Lcom/lge/homecube/Launcher;->utilities_Grid:Lcom/lge/homecube/AllAppsGridView;

    iget-object v2, p0, Lcom/lge/homecube/Launcher;->mUtilitiesItems:Ljava/util/ArrayList;

    iget v0, p0, Lcom/lge/homecube/Launcher;->mUtilitiesGridTop:I

    sub-int v4, v6, v0

    const/4 v5, 0x3

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/lge/homecube/Launcher;->backgroundObjColorChange(Lcom/lge/homecube/AllAppsGridView;Ljava/util/ArrayList;III)V

    goto :goto_e1

    .line 5077
    :cond_12d
    iget v0, p0, Lcom/lge/homecube/Launcher;->mGoogleGridTop:I

    if-ge v0, v6, :cond_146

    iget v0, p0, Lcom/lge/homecube/Launcher;->mGoogleGridTop:I

    iget v1, p0, Lcom/lge/homecube/Launcher;->mGoogleGridHeight:I

    add-int/2addr v0, v1

    if-ge v6, v0, :cond_146

    .line 5078
    iget-object v1, p0, Lcom/lge/homecube/Launcher;->google_Grid:Lcom/lge/homecube/AllAppsGridView;

    iget-object v2, p0, Lcom/lge/homecube/Launcher;->mGoogleItems:Ljava/util/ArrayList;

    iget v0, p0, Lcom/lge/homecube/Launcher;->mGoogleGridTop:I

    sub-int v4, v6, v0

    const/4 v5, 0x4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/lge/homecube/Launcher;->backgroundObjColorChange(Lcom/lge/homecube/AllAppsGridView;Ljava/util/ArrayList;III)V

    goto :goto_e1

    .line 5080
    :cond_146
    iget v0, p0, Lcom/lge/homecube/Launcher;->mDownloadsGridTop:I

    if-ge v0, v6, :cond_15f

    iget v0, p0, Lcom/lge/homecube/Launcher;->mDownloadsGridTop:I

    iget v1, p0, Lcom/lge/homecube/Launcher;->mDownloadsGridHeight:I

    add-int/2addr v0, v1

    if-ge v6, v0, :cond_15f

    .line 5081
    iget-object v1, p0, Lcom/lge/homecube/Launcher;->downloads_Grid:Lcom/lge/homecube/AllAppsGridView;

    iget-object v2, p0, Lcom/lge/homecube/Launcher;->mDownloadsItems:Ljava/util/ArrayList;

    iget v0, p0, Lcom/lge/homecube/Launcher;->mDownloadsGridTop:I

    sub-int v4, v6, v0

    const/4 v5, 0x5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/lge/homecube/Launcher;->backgroundObjColorChange(Lcom/lge/homecube/AllAppsGridView;Ljava/util/ArrayList;III)V

    goto :goto_e1

    .line 5083
    :cond_15f
    iget v0, p0, Lcom/lge/homecube/Launcher;->mGroup1GridTop:I

    if-ge v0, v6, :cond_179

    iget v0, p0, Lcom/lge/homecube/Launcher;->mGroup1GridTop:I

    iget v1, p0, Lcom/lge/homecube/Launcher;->mGroup1GridHeight:I

    add-int/2addr v0, v1

    if-ge v6, v0, :cond_179

    .line 5084
    iget-object v1, p0, Lcom/lge/homecube/Launcher;->group1_Grid:Lcom/lge/homecube/AllAppsGridView;

    iget-object v2, p0, Lcom/lge/homecube/Launcher;->mGroup1Items:Ljava/util/ArrayList;

    iget v0, p0, Lcom/lge/homecube/Launcher;->mGroup1GridTop:I

    sub-int v4, v6, v0

    const/4 v5, 0x6

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/lge/homecube/Launcher;->backgroundObjColorChange(Lcom/lge/homecube/AllAppsGridView;Ljava/util/ArrayList;III)V

    goto/16 :goto_e1

    .line 5086
    :cond_179
    iget v0, p0, Lcom/lge/homecube/Launcher;->mGroup2GridTop:I

    if-ge v0, v6, :cond_193

    iget v0, p0, Lcom/lge/homecube/Launcher;->mGroup2GridTop:I

    iget v1, p0, Lcom/lge/homecube/Launcher;->mGroup2GridHeight:I

    add-int/2addr v0, v1

    if-ge v6, v0, :cond_193

    .line 5087
    iget-object v1, p0, Lcom/lge/homecube/Launcher;->group2_Grid:Lcom/lge/homecube/AllAppsGridView;

    iget-object v2, p0, Lcom/lge/homecube/Launcher;->mGroup2Items:Ljava/util/ArrayList;

    iget v0, p0, Lcom/lge/homecube/Launcher;->mGroup2GridTop:I

    sub-int v4, v6, v0

    const/4 v5, 0x7

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/lge/homecube/Launcher;->backgroundObjColorChange(Lcom/lge/homecube/AllAppsGridView;Ljava/util/ArrayList;III)V

    goto/16 :goto_e1

    .line 5089
    :cond_193
    iget v0, p0, Lcom/lge/homecube/Launcher;->mGroup3GridTop:I

    if-ge v0, v6, :cond_1ae

    iget v0, p0, Lcom/lge/homecube/Launcher;->mGroup3GridTop:I

    iget v1, p0, Lcom/lge/homecube/Launcher;->mGroup3GridHeight:I

    add-int/2addr v0, v1

    if-ge v6, v0, :cond_1ae

    .line 5090
    iget-object v1, p0, Lcom/lge/homecube/Launcher;->group3_Grid:Lcom/lge/homecube/AllAppsGridView;

    iget-object v2, p0, Lcom/lge/homecube/Launcher;->mGroup3Items:Ljava/util/ArrayList;

    iget v0, p0, Lcom/lge/homecube/Launcher;->mGroup3GridTop:I

    sub-int v4, v6, v0

    const/16 v5, 0x8

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/lge/homecube/Launcher;->backgroundObjColorChange(Lcom/lge/homecube/AllAppsGridView;Ljava/util/ArrayList;III)V

    goto/16 :goto_e1

    .line 5092
    :cond_1ae
    iget v0, p0, Lcom/lge/homecube/Launcher;->mGroup4GridTop:I

    if-ge v0, v6, :cond_1c9

    iget v0, p0, Lcom/lge/homecube/Launcher;->mGroup4GridTop:I

    iget v1, p0, Lcom/lge/homecube/Launcher;->mGroup4GridHeight:I

    add-int/2addr v0, v1

    if-ge v6, v0, :cond_1c9

    .line 5093
    iget-object v1, p0, Lcom/lge/homecube/Launcher;->group4_Grid:Lcom/lge/homecube/AllAppsGridView;

    iget-object v2, p0, Lcom/lge/homecube/Launcher;->mGroup4Items:Ljava/util/ArrayList;

    iget v0, p0, Lcom/lge/homecube/Launcher;->mGroup4GridTop:I

    sub-int v4, v6, v0

    const/16 v5, 0x9

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/lge/homecube/Launcher;->backgroundObjColorChange(Lcom/lge/homecube/AllAppsGridView;Ljava/util/ArrayList;III)V

    goto/16 :goto_e1

    .line 5095
    :cond_1c9
    iget v0, p0, Lcom/lge/homecube/Launcher;->mGroup5GridTop:I

    if-ge v0, v6, :cond_1e4

    iget v0, p0, Lcom/lge/homecube/Launcher;->mGroup5GridTop:I

    iget v1, p0, Lcom/lge/homecube/Launcher;->mGroup5GridHeight:I

    add-int/2addr v0, v1

    if-ge v6, v0, :cond_1e4

    .line 5096
    iget-object v1, p0, Lcom/lge/homecube/Launcher;->group5_Grid:Lcom/lge/homecube/AllAppsGridView;

    iget-object v2, p0, Lcom/lge/homecube/Launcher;->mGroup5Items:Ljava/util/ArrayList;

    iget v0, p0, Lcom/lge/homecube/Launcher;->mGroup5GridTop:I

    sub-int v4, v6, v0

    const/16 v5, 0xa

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/lge/homecube/Launcher;->backgroundObjColorChange(Lcom/lge/homecube/AllAppsGridView;Ljava/util/ArrayList;III)V

    goto/16 :goto_e1

    .line 5098
    :cond_1e4
    iget v0, p0, Lcom/lge/homecube/Launcher;->mGroup6GridTop:I

    if-ge v0, v6, :cond_e1

    iget v0, p0, Lcom/lge/homecube/Launcher;->mGroup6GridTop:I

    iget v1, p0, Lcom/lge/homecube/Launcher;->mGroup6GridHeight:I

    add-int/2addr v0, v1

    if-ge v6, v0, :cond_e1

    .line 5099
    iget-object v1, p0, Lcom/lge/homecube/Launcher;->group6_Grid:Lcom/lge/homecube/AllAppsGridView;

    iget-object v2, p0, Lcom/lge/homecube/Launcher;->mGroup6Items:Ljava/util/ArrayList;

    iget v0, p0, Lcom/lge/homecube/Launcher;->mGroup6GridTop:I

    sub-int v4, v6, v0

    const/16 v5, 0xb

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/lge/homecube/Launcher;->backgroundObjColorChange(Lcom/lge/homecube/AllAppsGridView;Ljava/util/ArrayList;III)V

    goto/16 :goto_e1
.end method
