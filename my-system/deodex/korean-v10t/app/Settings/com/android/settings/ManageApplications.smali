.class public Lcom/android/settings/ManageApplications;
.super Landroid/app/ListActivity;
.source "ManageApplications.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ManageApplications$AlphaComparator;,
        Lcom/android/settings/ManageApplications$SizeComparator;,
        Lcom/android/settings/ManageApplications$AppInfoCache;,
        Lcom/android/settings/ManageApplications$PackageIntentReceiver;,
        Lcom/android/settings/ManageApplications$PkgSizeObserver;,
        Lcom/android/settings/ManageApplications$AppInfoAdapter;,
        Lcom/android/settings/ManageApplications$AppViewHolder;,
        Lcom/android/settings/ManageApplications$AppInfo;,
        Lcom/android/settings/ManageApplications$ResourceLoaderThread;,
        Lcom/android/settings/ManageApplications$AddRemoveInfo;,
        Lcom/android/settings/ManageApplications$TaskRunner;,
        Lcom/android/settings/ManageApplications$SizeObserver;
    }
.end annotation


# static fields
.field private static final ADD_PKG_DONE:I = 0x6

.field private static final ADD_PKG_START:I = 0x5

.field public static final APP_CHG:Ljava/lang/String; = "com.android.settings.changed"

.field public static final APP_PKG_NAME:Ljava/lang/String; = "com.android.settings.ApplicationPkgName"

.field public static final APP_PKG_PREFIX:Ljava/lang/String; = "com.android.settings."

.field private static final ATTR_GET_SIZE_STATUS:Ljava/lang/String; = "passed"

.field private static final ATTR_PKGS:Ljava/lang/String; = "ps"

.field private static final ATTR_PKG_NAME:Ljava/lang/String; = "p"

.field private static final ATTR_PKG_SIZE_STR:Ljava/lang/String; = "f"

.field private static final ATTR_PKG_STATS:Ljava/lang/String; = "s"

.field private static final ATTR_SIZE_STRS:Ljava/lang/String; = "fs"

.field private static final ATTR_STATS:Ljava/lang/String; = "ss"

.field private static final COMPUTE_BULK_SIZE:I = 0x2

.field private static final COMPUTE_END:I = 0xa

.field private static final DEBUG_SIZE:Z = false

.field private static final DEBUG_TIME:Z = false

.field private static final DLG_BASE:I = 0x0

.field private static final DLG_LOADING:I = 0x1

.field public static final FILTER_APPS_ALL:I = 0x2

.field public static final FILTER_APPS_RUNNING:I = 0x4

.field public static final FILTER_APPS_THIRD_PARTY:I = 0x3

.field public static final FILTER_OPTIONS:I = 0x5

.field private static final HANDLER_MESSAGE_BASE:I = 0x0

.field private static final INIT_PKG_INFO:I = 0x1

.field private static final INSTALLED_APP_DETAILS:I = 0x1

.field private static final MENU_OPTIONS_BASE:I = 0x0

.field private static final NEXT_LOAD_STEP:I = 0x9

.field private static final PREFS_NAME:Ljava/lang/String; = "ManageAppsInfo.prefs"

.field private static final PREF_DISABLE_CACHE:Ljava/lang/String; = "disableCache"

.field private static final REFRESH_DONE:I = 0x8

.field private static final REFRESH_ICONS:I = 0xb

.field private static final REFRESH_LABELS:I = 0x7

.field private static final REMOVE_PKG:I = 0x3

.field private static final REORDER_LIST:I = 0x4

.field private static final SIZE_INVALID:I = -0x1

.field public static final SORT_ORDER_ALPHA:I = 0x0

.field public static final SORT_ORDER_SIZE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ManageApplications"


# instance fields
.field private DEBUG_PKG_DELAY:Z

.field private localLOGV:Z

.field private mAddRemoveMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field mAlertDlg:Landroid/app/AlertDialog;

.field private mAppInfoAdapter:Lcom/android/settings/ManageApplications$AppInfoAdapter;

.field private mCache:Lcom/android/settings/ManageApplications$AppInfoCache;

.field private mComputeSizes:Z

.field private mComputingSizeStr:Ljava/lang/CharSequence;

.field mCurrentPkgName:Ljava/lang/String;

.field private mDefaultAppIcon:Landroid/graphics/drawable/Drawable;

.field private mEmptyView:Landroid/widget/TextView;

.field mFilterApps:I

.field private mFirst:Z

.field private mHandler:Landroid/os/Handler;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mInvalidSizeStr:Ljava/lang/CharSequence;

.field private mJustCreated:Z

.field private mListView:Landroid/widget/ListView;

.field private mLoadLabels:Z

.field private mLoadTimeStart:J

.field private mObserver:Lcom/android/settings/ManageApplications$PkgSizeObserver;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mReceiver:Lcom/android/settings/ManageApplications$PackageIntentReceiver;

.field mResourceThread:Lcom/android/settings/ManageApplications$ResourceLoaderThread;

.field private mSetListViewLater:Z

.field private mSizeComputor:Lcom/android/settings/ManageApplications$TaskRunner;

.field private mSizesFirst:Z

.field private mSortOrder:I


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 117
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 180
    iput-boolean v1, p0, Lcom/android/settings/ManageApplications;->localLOGV:Z

    .line 186
    iput v1, p0, Lcom/android/settings/ManageApplications;->mSortOrder:I

    .line 189
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/ManageApplications;->mFilterApps:I

    .line 205
    iput-boolean v1, p0, Lcom/android/settings/ManageApplications;->mComputeSizes:Z

    .line 225
    iput-boolean v1, p0, Lcom/android/settings/ManageApplications;->DEBUG_PKG_DELAY:Z

    .line 233
    new-instance v0, Lcom/android/settings/ManageApplications$AppInfoCache;

    invoke-direct {v0, p0}, Lcom/android/settings/ManageApplications$AppInfoCache;-><init>(Lcom/android/settings/ManageApplications;)V

    iput-object v0, p0, Lcom/android/settings/ManageApplications;->mCache:Lcom/android/settings/ManageApplications$AppInfoCache;

    .line 239
    iput-boolean v1, p0, Lcom/android/settings/ManageApplications;->mLoadLabels:Z

    .line 240
    iput-boolean v1, p0, Lcom/android/settings/ManageApplications;->mSizesFirst:Z

    .line 247
    iput-boolean v2, p0, Lcom/android/settings/ManageApplications;->mJustCreated:Z

    .line 248
    iput-boolean v1, p0, Lcom/android/settings/ManageApplications;->mFirst:Z

    .line 250
    iput-boolean v2, p0, Lcom/android/settings/ManageApplications;->mSetListViewLater:Z

    .line 283
    new-instance v0, Lcom/android/settings/ManageApplications$1;

    invoke-direct {v0, p0}, Lcom/android/settings/ManageApplications$1;-><init>(Lcom/android/settings/ManageApplications;)V

    iput-object v0, p0, Lcom/android/settings/ManageApplications;->mHandler:Landroid/os/Handler;

    .line 2361
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/ManageApplications;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/android/settings/ManageApplications;->localLOGV:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/ManageApplications;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/android/settings/ManageApplications;->mJustCreated:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/settings/ManageApplications;II)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 117
    invoke-direct {p0, p1, p2}, Lcom/android/settings/ManageApplications;->sendMessageToHandler(II)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/settings/ManageApplications;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/android/settings/ManageApplications;->mLoadLabels:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/settings/ManageApplications;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    iput-boolean p1, p0, Lcom/android/settings/ManageApplications;->mLoadLabels:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/settings/ManageApplications;)Landroid/content/pm/PackageManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/settings/ManageApplications;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings/ManageApplications;)Lcom/android/settings/ManageApplications$PkgSizeObserver;
    .registers 2
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/settings/ManageApplications;->mObserver:Lcom/android/settings/ManageApplications$PkgSizeObserver;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings/ManageApplications;)Lcom/android/settings/ManageApplications$AppInfoCache;
    .registers 2
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/settings/ManageApplications;->mCache:Lcom/android/settings/ManageApplications$AppInfoCache;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/settings/ManageApplications;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/android/settings/ManageApplications;->mSetListViewLater:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/android/settings/ManageApplications;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    iput-boolean p1, p0, Lcom/android/settings/ManageApplications;->mSetListViewLater:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/settings/ManageApplications;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/android/settings/ManageApplications;->initListView()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/settings/ManageApplications;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/android/settings/ManageApplications;->doneLoadingData()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/settings/ManageApplications;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 117
    invoke-direct {p0, p1, p2}, Lcom/android/settings/ManageApplications;->updatePackageList(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/ManageApplications;Ljava/util/List;)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/android/settings/ManageApplications;->updateAppList(Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/android/settings/ManageApplications;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/android/settings/ManageApplications;->mSizesFirst:Z

    return v0
.end method

.method static synthetic access$2100(Lcom/android/settings/ManageApplications;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/android/settings/ManageApplications;->initComputeSizes()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/settings/ManageApplications;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/android/settings/ManageApplications;->initResourceThread()V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/settings/ManageApplications;Landroid/content/pm/PackageStats;)J
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/android/settings/ManageApplications;->getTotalSize(Landroid/content/pm/PackageStats;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$2900(Lcom/android/settings/ManageApplications;J)Ljava/lang/CharSequence;
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    invoke-direct {p0, p1, p2}, Lcom/android/settings/ManageApplications;->getSizeStr(J)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/ManageApplications;Ljava/util/List;I)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 117
    invoke-direct {p0, p1, p2}, Lcom/android/settings/ManageApplications;->initAppList(Ljava/util/List;I)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/settings/ManageApplications;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/settings/ManageApplications;->mDefaultAppIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/settings/ManageApplications;)Ljava/lang/CharSequence;
    .registers 2
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/settings/ManageApplications;->mComputingSizeStr:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/settings/ManageApplications;)Landroid/view/LayoutInflater;
    .registers 2
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/settings/ManageApplications;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/settings/ManageApplications;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/android/settings/ManageApplications;->showEmptyViewIfListEmpty()V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/settings/ManageApplications;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/android/settings/ManageApplications;->DEBUG_PKG_DELAY:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/ManageApplications;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/settings/ManageApplications;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/ManageApplications;)Lcom/android/settings/ManageApplications$AppInfoAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/settings/ManageApplications;->mAppInfoAdapter:Lcom/android/settings/ManageApplications$AppInfoAdapter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/ManageApplications;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/android/settings/ManageApplications;->mComputeSizes:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/settings/ManageApplications;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    iput-boolean p1, p0, Lcom/android/settings/ManageApplications;->mComputeSizes:Z

    return p1
.end method

.method static synthetic access$702(Lcom/android/settings/ManageApplications;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    iput-boolean p1, p0, Lcom/android/settings/ManageApplications;->mFirst:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/settings/ManageApplications;)Ljava/util/Map;
    .registers 2
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/settings/ManageApplications;->mAddRemoveMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/ManageApplications;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 117
    iget v0, p0, Lcom/android/settings/ManageApplications;->mSortOrder:I

    return v0
.end method

.method static synthetic access$902(Lcom/android/settings/ManageApplications;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    iput p1, p0, Lcom/android/settings/ManageApplications;->mSortOrder:I

    return p1
.end method

.method private clearMessagesInHandler()V
    .registers 3

    .prologue
    .line 875
    iget-object v0, p0, Lcom/android/settings/ManageApplications;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 876
    iget-object v0, p0, Lcom/android/settings/ManageApplications;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 877
    iget-object v0, p0, Lcom/android/settings/ManageApplications;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 878
    iget-object v0, p0, Lcom/android/settings/ManageApplications;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 879
    iget-object v0, p0, Lcom/android/settings/ManageApplications;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 880
    iget-object v0, p0, Lcom/android/settings/ManageApplications;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 881
    iget-object v0, p0, Lcom/android/settings/ManageApplications;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 882
    iget-object v0, p0, Lcom/android/settings/ManageApplications;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 883
    iget-object v0, p0, Lcom/android/settings/ManageApplications;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 884
    iget-object v0, p0, Lcom/android/settings/ManageApplications;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 885
    return-void
.end method

.method private dismissLoadingMsg()V
    .registers 3

    .prologue
    .line 1023
    iget-boolean v0, p0, Lcom/android/settings/ManageApplications;->localLOGV:Z

    if-eqz v0, :cond_b

    .line 1024
    const-string v0, "ManageApplications"

    const-string v1, "Dismissing Loading message"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    :cond_b
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/ManageApplications;->dismissDialog(I)V

    .line 1034
    return-void
.end method

.method private doneLoadingData()V
    .registers 2

    .prologue
    .line 647
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/ManageApplications;->setProgressBarIndeterminateVisibility(Z)V

    .line 648
    return-void
.end method

.method private getRunningAppProcessesList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 785
    const-string v1, "activity"

    invoke-virtual {p0, v1}, Lcom/android/settings/ManageApplications;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 787
    .local v0, am:Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private getSizeStr(J)Ljava/lang/CharSequence;
    .registers 6
    .parameter "size"

    .prologue
    .line 857
    const/4 v0, 0x0

    .line 859
    .local v0, appSize:Ljava/lang/CharSequence;
    const-wide/16 v1, -0x1

    cmp-long v1, p1, v1

    if-nez v1, :cond_a

    .line 860
    iget-object v1, p0, Lcom/android/settings/ManageApplications;->mInvalidSizeStr:Ljava/lang/CharSequence;

    .line 865
    :goto_9
    return-object v1

    .line 863
    :cond_a
    invoke-static {p0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 865
    goto :goto_9
.end method

.method private getTotalSize(Landroid/content/pm/PackageStats;)J
    .registers 6
    .parameter "ps"

    .prologue
    .line 849
    if-eqz p1, :cond_b

    .line 850
    iget-wide v0, p1, Landroid/content/pm/PackageStats;->cacheSize:J

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->codeSize:J

    add-long/2addr v0, v2

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->dataSize:J

    add-long/2addr v0, v2

    .line 853
    :goto_a
    return-wide v0

    :cond_b
    const-wide/16 v0, -0x1

    goto :goto_a
.end method

.method private initAppList(Ljava/util/List;I)V
    .registers 5
    .parameter
    .parameter "filterOption"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, appList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    const/4 v1, 0x0

    .line 792
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/ManageApplications;->setProgressBarIndeterminateVisibility(Z)V

    .line 793
    iput-boolean v1, p0, Lcom/android/settings/ManageApplications;->mComputeSizes:Z

    .line 794
    iput-boolean v1, p0, Lcom/android/settings/ManageApplications;->mLoadLabels:Z

    .line 796
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/ManageApplications;->mAddRemoveMap:Ljava/util/Map;

    .line 797
    iget-object v0, p0, Lcom/android/settings/ManageApplications;->mAppInfoAdapter:Lcom/android/settings/ManageApplications$AppInfoAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/android/settings/ManageApplications$AppInfoAdapter;->initMapFromList(Ljava/util/List;I)V

    .line 798
    return-void
.end method

.method private initComputeSizes()V
    .registers 4

    .prologue
    .line 817
    iget-boolean v1, p0, Lcom/android/settings/ManageApplications;->localLOGV:Z

    if-eqz v1, :cond_b

    .line 818
    const-string v1, "ManageApplications"

    const-string v2, "Initiating compute sizes for first time"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    :cond_b
    iget-object v1, p0, Lcom/android/settings/ManageApplications;->mSizeComputor:Lcom/android/settings/ManageApplications$TaskRunner;

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/android/settings/ManageApplications;->mSizeComputor:Lcom/android/settings/ManageApplications$TaskRunner;

    invoke-virtual {v1}, Lcom/android/settings/ManageApplications$TaskRunner;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 822
    iget-object v1, p0, Lcom/android/settings/ManageApplications;->mSizeComputor:Lcom/android/settings/ManageApplications$TaskRunner;

    invoke-virtual {v1}, Lcom/android/settings/ManageApplications$TaskRunner;->setAbort()V

    .line 825
    :cond_1c
    iget-object v1, p0, Lcom/android/settings/ManageApplications;->mAppInfoAdapter:Lcom/android/settings/ManageApplications$AppInfoAdapter;

    invoke-virtual {v1}, Lcom/android/settings/ManageApplications$AppInfoAdapter;->getBaseAppList()Ljava/util/List;

    move-result-object v0

    .line 827
    .local v0, appList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz v0, :cond_32

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_32

    .line 828
    new-instance v1, Lcom/android/settings/ManageApplications$TaskRunner;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/ManageApplications$TaskRunner;-><init>(Lcom/android/settings/ManageApplications;Ljava/util/List;)V

    iput-object v1, p0, Lcom/android/settings/ManageApplications;->mSizeComputor:Lcom/android/settings/ManageApplications$TaskRunner;

    .line 832
    :goto_31
    return-void

    .line 830
    :cond_32
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/ManageApplications;->mComputeSizes:Z

    goto :goto_31
.end method

.method private initListView()V
    .registers 3

    .prologue
    .line 577
    iget-object v0, p0, Lcom/android/settings/ManageApplications;->mAppInfoAdapter:Lcom/android/settings/ManageApplications$AppInfoAdapter;

    iget v1, p0, Lcom/android/settings/ManageApplications;->mSortOrder:I

    invoke-virtual {v0, v1}, Lcom/android/settings/ManageApplications$AppInfoAdapter;->sortBaseList(I)V

    .line 579
    iget-boolean v0, p0, Lcom/android/settings/ManageApplications;->mJustCreated:Z

    if-eqz v0, :cond_18

    .line 581
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/ManageApplications;->mJustCreated:Z

    .line 582
    iget-object v0, p0, Lcom/android/settings/ManageApplications;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settings/ManageApplications;->mAppInfoAdapter:Lcom/android/settings/ManageApplications$AppInfoAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 583
    invoke-direct {p0}, Lcom/android/settings/ManageApplications;->dismissLoadingMsg()V

    .line 585
    :cond_18
    return-void
.end method

.method private initResourceThread()V
    .registers 3

    .prologue
    .line 802
    iget-object v1, p0, Lcom/android/settings/ManageApplications;->mResourceThread:Lcom/android/settings/ManageApplications$ResourceLoaderThread;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/android/settings/ManageApplications;->mResourceThread:Lcom/android/settings/ManageApplications$ResourceLoaderThread;

    invoke-virtual {v1}, Lcom/android/settings/ManageApplications$ResourceLoaderThread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 803
    iget-object v1, p0, Lcom/android/settings/ManageApplications;->mResourceThread:Lcom/android/settings/ManageApplications$ResourceLoaderThread;

    invoke-virtual {v1}, Lcom/android/settings/ManageApplications$ResourceLoaderThread;->setAbort()V

    .line 806
    :cond_11
    new-instance v1, Lcom/android/settings/ManageApplications$ResourceLoaderThread;

    invoke-direct {v1, p0}, Lcom/android/settings/ManageApplications$ResourceLoaderThread;-><init>(Lcom/android/settings/ManageApplications;)V

    iput-object v1, p0, Lcom/android/settings/ManageApplications;->mResourceThread:Lcom/android/settings/ManageApplications$ResourceLoaderThread;

    .line 808
    iget-object v1, p0, Lcom/android/settings/ManageApplications;->mAppInfoAdapter:Lcom/android/settings/ManageApplications$AppInfoAdapter;

    invoke-virtual {v1}, Lcom/android/settings/ManageApplications$AppInfoAdapter;->getBaseAppList()Ljava/util/List;

    move-result-object v0

    .line 810
    .local v0, appList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz v0, :cond_2b

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2b

    .line 811
    iget-object v1, p0, Lcom/android/settings/ManageApplications;->mResourceThread:Lcom/android/settings/ManageApplications$ResourceLoaderThread;

    invoke-virtual {v1, v0}, Lcom/android/settings/ManageApplications$ResourceLoaderThread;->loadAllResources(Ljava/util/List;)V

    .line 813
    :cond_2b
    return-void
.end method

.method private sendMessageToHandler(I)V
    .registers 3
    .parameter "msgId"

    .prologue
    .line 900
    iget-object v0, p0, Lcom/android/settings/ManageApplications;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 901
    return-void
.end method

.method private sendMessageToHandler(II)V
    .registers 5
    .parameter "msgId"
    .parameter "arg1"

    .prologue
    .line 888
    iget-object v1, p0, Lcom/android/settings/ManageApplications;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 889
    .local v0, msg:Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 890
    iget-object v1, p0, Lcom/android/settings/ManageApplications;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 891
    return-void
.end method

.method private sendMessageToHandler(ILandroid/os/Bundle;)V
    .registers 5
    .parameter "msgId"
    .parameter "data"

    .prologue
    .line 894
    iget-object v1, p0, Lcom/android/settings/ManageApplications;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 895
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 896
    iget-object v1, p0, Lcom/android/settings/ManageApplications;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 897
    return-void
.end method

.method private showEmptyViewIfListEmpty()V
    .registers 5

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 835
    iget-boolean v0, p0, Lcom/android/settings/ManageApplications;->localLOGV:Z

    if-eqz v0, :cond_e

    .line 836
    const-string v0, "ManageApplications"

    const-string v1, "Checking for empty view"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    :cond_e
    iget-object v0, p0, Lcom/android/settings/ManageApplications;->mAppInfoAdapter:Lcom/android/settings/ManageApplications$AppInfoAdapter;

    invoke-virtual {v0}, Lcom/android/settings/ManageApplications$AppInfoAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_21

    .line 840
    iget-object v0, p0, Lcom/android/settings/ManageApplications;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 841
    iget-object v0, p0, Lcom/android/settings/ManageApplications;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 846
    :goto_20
    return-void

    .line 843
    :cond_21
    iget-object v0, p0, Lcom/android/settings/ManageApplications;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 844
    iget-object v0, p0, Lcom/android/settings/ManageApplications;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_20
.end method

.method private showLoadingMsg()V
    .registers 3

    .prologue
    .line 1015
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/ManageApplications;->showDialog(I)V

    .line 1017
    iget-boolean v0, p0, Lcom/android/settings/ManageApplications;->localLOGV:Z

    if-eqz v0, :cond_f

    .line 1018
    const-string v0, "ManageApplications"

    const-string v1, "Displaying Loading message"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    :cond_f
    return-void
.end method

.method private startApplicationDetailsActivity()V
    .registers 4

    .prologue
    .line 1072
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1073
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/android/settings/InstalledAppDetails;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1074
    const-string v1, "com.android.settings.ApplicationPkgName"

    iget-object v2, p0, Lcom/android/settings/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1076
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/ManageApplications;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1077
    return-void
.end method

.method private updateAppList(Ljava/util/List;)Z
    .registers 13
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, newList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    const-string v10, "ManageApplications"

    .line 593
    if-eqz p1, :cond_c

    iget-object v8, p0, Lcom/android/settings/ManageApplications;->mCache:Lcom/android/settings/ManageApplications$AppInfoCache;

    invoke-static {v8}, Lcom/android/settings/ManageApplications$AppInfoCache;->access$1500(Lcom/android/settings/ManageApplications$AppInfoCache;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 594
    :cond_c
    const/4 v8, 0x0

    .line 643
    :goto_d
    return v8

    .line 597
    :cond_e
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 598
    .local v2, existingList:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 601
    .local v6, ret:Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_18
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ApplicationInfo;

    .line 602
    .local v4, info:Landroid/content/pm/ApplicationInfo;
    iget-object v5, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 603
    .local v5, pkgName:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/settings/ManageApplications;->mCache:Lcom/android/settings/ManageApplications$AppInfoCache;

    invoke-static {v8, v5}, Lcom/android/settings/ManageApplications$AppInfoCache;->access$2300(Lcom/android/settings/ManageApplications$AppInfoCache;Ljava/lang/String;)Lcom/android/settings/ManageApplications$AppInfo;

    move-result-object v0

    .line 605
    .local v0, aInfo:Lcom/android/settings/ManageApplications$AppInfo;
    if-eqz v0, :cond_32

    .line 606
    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_18

    .line 609
    :cond_32
    iget-boolean v8, p0, Lcom/android/settings/ManageApplications;->localLOGV:Z

    if-eqz v8, :cond_54

    .line 610
    const-string v8, "ManageApplications"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "New pkg :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " installed when paused"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    :cond_54
    const-string v8, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {p0, v8, v5}, Lcom/android/settings/ManageApplications;->updatePackageList(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    const/4 v6, 0x1

    goto :goto_18

    .line 620
    .end local v0           #aInfo:Lcom/android/settings/ManageApplications$AppInfo;
    .end local v4           #info:Landroid/content/pm/ApplicationInfo;
    .end local v5           #pkgName:Ljava/lang/String;
    :cond_5b
    const/4 v1, 0x0

    .line 621
    .local v1, deletedList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/android/settings/ManageApplications;->mCache:Lcom/android/settings/ManageApplications$AppInfoCache;

    invoke-static {v8}, Lcom/android/settings/ManageApplications$AppInfoCache;->access$2400(Lcom/android/settings/ManageApplications$AppInfoCache;)Ljava/util/Set;

    move-result-object v7

    .line 623
    .local v7, staleList:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_66
    :goto_66
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 624
    .restart local v5       #pkgName:Ljava/lang/String;
    invoke-interface {v2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_66

    .line 625
    iget-boolean v8, p0, Lcom/android/settings/ManageApplications;->localLOGV:Z

    if-eqz v8, :cond_9a

    .line 626
    const-string v8, "ManageApplications"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Pkg :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " deleted when paused"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    :cond_9a
    if-nez v1, :cond_a4

    .line 630
    new-instance v1, Ljava/util/ArrayList;

    .end local v1           #deletedList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 631
    .restart local v1       #deletedList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 634
    :cond_a4
    const/4 v6, 0x1

    goto :goto_66

    .line 639
    .end local v5           #pkgName:Ljava/lang/String;
    :cond_a6
    if-eqz v1, :cond_ad

    .line 640
    iget-object v8, p0, Lcom/android/settings/ManageApplications;->mAppInfoAdapter:Lcom/android/settings/ManageApplications$AppInfoAdapter;

    invoke-virtual {v8, v1}, Lcom/android/settings/ManageApplications$AppInfoAdapter;->removeFromList(Ljava/util/List;)V

    :cond_ad
    move v8, v6

    .line 643
    goto/16 :goto_d
.end method

.method private updatePackageList(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "actionStr"
    .parameter "pkgName"

    .prologue
    const-string v2, "p"

    .line 906
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 907
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 908
    .local v0, data:Landroid/os/Bundle;
    const-string v1, "p"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 909
    const/4 v1, 0x5

    invoke-direct {p0, v1, v0}, Lcom/android/settings/ManageApplications;->sendMessageToHandler(ILandroid/os/Bundle;)V

    .line 915
    .end local v0           #data:Landroid/os/Bundle;
    :cond_18
    :goto_18
    return-void

    .line 910
    :cond_19
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 911
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 912
    .restart local v0       #data:Landroid/os/Bundle;
    const-string v1, "p"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 913
    const/4 v1, 0x3

    invoke-direct {p0, v1, v0}, Lcom/android/settings/ManageApplications;->sendMessageToHandler(ILandroid/os/Bundle;)V

    goto :goto_18
.end method


# virtual methods
.method getFilteredApps(Ljava/util/List;I)Ljava/util/List;
    .registers 14
    .parameter
    .parameter "filterOption"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 724
    .local p1, pAppList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 726
    .local v7, retList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-nez p1, :cond_9

    move-object v10, v7

    .line 780
    :goto_8
    return-object v10

    .line 730
    :cond_9
    const/4 v10, 0x3

    if-ne p2, v10, :cond_39

    .line 731
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 733
    .local v1, appList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_15
    :goto_15
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_37

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 734
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    const/4 v3, 0x0

    .line 736
    .local v3, flag:Z
    iget v10, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v10, v10, 0x80

    if-eqz v10, :cond_2f

    .line 738
    const/4 v3, 0x1

    .line 744
    :cond_29
    :goto_29
    if-eqz v3, :cond_15

    .line 745
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .line 739
    :cond_2f
    iget v10, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v10, v10, 0x1

    if-nez v10, :cond_29

    .line 741
    const/4 v3, 0x1

    goto :goto_29

    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v3           #flag:Z
    :cond_37
    move-object v10, v1

    .line 749
    goto :goto_8

    .line 750
    .end local v1           #appList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v5           #i$:Ljava/util/Iterator;
    :cond_39
    const/4 v10, 0x4

    if-ne p2, v10, :cond_99

    .line 751
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 752
    .restart local v1       #appList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-direct {p0}, Lcom/android/settings/ManageApplications;->getRunningAppProcessesList()Ljava/util/List;

    move-result-object v6

    .line 754
    .local v6, procList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v6, :cond_4d

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_4f

    :cond_4d
    move-object v10, v1

    .line 755
    goto :goto_8

    .line 759
    :cond_4f
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 761
    .local v8, runningMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5       #i$:Ljava/util/Iterator;
    :cond_58
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 762
    .local v2, appProcInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    if-eqz v2, :cond_58

    iget-object v10, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    if-eqz v10, :cond_58

    .line 763
    iget-object v10, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v9, v10

    .line 765
    .local v9, size:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_6e
    if-ge v4, v9, :cond_58

    .line 766
    iget-object v10, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    aget-object v10, v10, v4

    invoke-virtual {v8, v10, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 765
    add-int/lit8 v4, v4, 0x1

    goto :goto_6e

    .line 772
    .end local v2           #appProcInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v4           #i:I
    .end local v9           #size:I
    :cond_7a
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_7e
    :goto_7e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_96

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 773
    .restart local v0       #appInfo:Landroid/content/pm/ApplicationInfo;
    iget-object v10, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_7e

    .line 774
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7e

    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    :cond_96
    move-object v10, v1

    .line 778
    goto/16 :goto_8

    .end local v1           #appList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #procList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v8           #runningMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_99
    move-object v10, p1

    .line 780
    goto/16 :goto_8
.end method

.method getInstalledApps(I)Ljava/util/List;
    .registers 15
    .parameter "filterOption"
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
    const/16 v11, 0x2000

    .line 651
    iget-object v10, p0, Lcom/android/settings/ManageApplications;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v10, v11}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v7

    .line 653
    .local v7, installedAppList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-nez v7, :cond_10

    .line 654
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 713
    :goto_f
    return-object v10

    .line 657
    :cond_10
    const/4 v10, 0x3

    if-ne p1, v10, :cond_40

    .line 658
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 660
    .local v1, appList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_1c
    :goto_1c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 661
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    const/4 v4, 0x0

    .line 663
    .local v4, flag:Z
    iget v10, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v10, v10, 0x80

    if-eqz v10, :cond_36

    .line 665
    const/4 v4, 0x1

    .line 671
    :cond_30
    :goto_30
    if-eqz v4, :cond_1c

    .line 672
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    .line 666
    :cond_36
    iget v10, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v10, v10, 0x1

    if-nez v10, :cond_30

    .line 668
    const/4 v4, 0x1

    goto :goto_30

    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v4           #flag:Z
    :cond_3e
    move-object v10, v1

    .line 676
    goto :goto_f

    .line 677
    .end local v1           #appList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v6           #i$:Ljava/util/Iterator;
    :cond_40
    const/4 v10, 0x4

    if-ne p1, v10, :cond_a9

    .line 678
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 679
    .restart local v1       #appList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-direct {p0}, Lcom/android/settings/ManageApplications;->getRunningAppProcessesList()Ljava/util/List;

    move-result-object v8

    .line 681
    .local v8, procList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v8, :cond_54

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_56

    :cond_54
    move-object v10, v1

    .line 682
    goto :goto_f

    .line 686
    :cond_56
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6       #i$:Ljava/util/Iterator;
    :cond_5a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 687
    .local v2, appProcInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    if-eqz v2, :cond_5a

    iget-object v10, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    if-eqz v10, :cond_5a

    .line 688
    iget-object v10, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v9, v10

    .line 690
    .local v9, size:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_70
    if-ge v5, v9, :cond_5a

    .line 691
    const/4 v0, 0x0

    .line 694
    .restart local v0       #appInfo:Landroid/content/pm/ApplicationInfo;
    :try_start_73
    iget-object v10, p0, Lcom/android/settings/ManageApplications;->mPm:Landroid/content/pm/PackageManager;

    iget-object v11, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    aget-object v11, v11, v5

    const/16 v12, 0x2000

    invoke-virtual {v10, v11, v12}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_7e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_73 .. :try_end_7e} :catch_87

    move-result-object v0

    .line 704
    if-eqz v0, :cond_84

    .line 705
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 690
    :cond_84
    :goto_84
    add-int/lit8 v5, v5, 0x1

    goto :goto_70

    .line 696
    :catch_87
    move-exception v10

    move-object v3, v10

    .line 697
    .local v3, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v10, "ManageApplications"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error retrieving ApplicationInfo for pkg:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    aget-object v12, v12, v5

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_84

    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v2           #appProcInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v3           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v5           #i:I
    .end local v9           #size:I
    :cond_a6
    move-object v10, v1

    .line 711
    goto/16 :goto_f

    .end local v1           #appList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v8           #procList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_a9
    move-object v10, v7

    .line 713
    goto/16 :goto_f
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 2
    .parameter "dialog"

    .prologue
    .line 1139
    invoke-virtual {p0}, Lcom/android/settings/ManageApplications;->finish()V

    .line 1140
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1145
    packed-switch p2, :pswitch_data_14

    .line 1169
    :goto_3
    return-void

    .line 1149
    :pswitch_4
    const/4 v0, 0x2

    .line 1167
    .local v0, newOption:I
    :goto_5
    iget-object v1, p0, Lcom/android/settings/ManageApplications;->mAlertDlg:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 1168
    const/4 v1, 0x4

    invoke-direct {p0, v1, v0}, Lcom/android/settings/ManageApplications;->sendMessageToHandler(II)V

    goto :goto_3

    .line 1154
    .end local v0           #newOption:I
    :pswitch_f
    const/4 v0, 0x4

    .line 1156
    .restart local v0       #newOption:I
    goto :goto_5

    .line 1159
    .end local v0           #newOption:I
    :pswitch_11
    const/4 v0, 0x3

    .line 1161
    .restart local v0       #newOption:I
    goto :goto_5

    .line 1145
    nop

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_4
        :pswitch_f
        :pswitch_11
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .parameter "newConfig"

    .prologue
    .line 1066
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1067
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x1

    .line 919
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 921
    iget-boolean v4, p0, Lcom/android/settings/ManageApplications;->localLOGV:Z

    if-eqz v4, :cond_f

    .line 922
    const-string v4, "ManageApplications"

    const-string v5, "Activity created"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    :cond_f
    invoke-virtual {p0}, Lcom/android/settings/ManageApplications;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 932
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 934
    .local v0, action:Ljava/lang/String;
    const-string v4, "android.intent.action.MANAGE_PACKAGE_STORAGE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 935
    iput v6, p0, Lcom/android/settings/ManageApplications;->mSortOrder:I

    .line 936
    iput-boolean v6, p0, Lcom/android/settings/ManageApplications;->mSizesFirst:Z

    .line 939
    :cond_23
    invoke-virtual {p0}, Lcom/android/settings/ManageApplications;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/ManageApplications;->mPm:Landroid/content/pm/PackageManager;

    .line 941
    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Lcom/android/settings/ManageApplications;->requestWindowFeature(I)Z

    .line 942
    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lcom/android/settings/ManageApplications;->requestWindowFeature(I)Z

    .line 943
    const/4 v4, 0x5

    invoke-virtual {p0, v4}, Lcom/android/settings/ManageApplications;->requestWindowFeature(I)Z

    .line 944
    const v4, 0x7f030014

    invoke-virtual {p0, v4}, Lcom/android/settings/ManageApplications;->setContentView(I)V

    .line 945
    invoke-direct {p0}, Lcom/android/settings/ManageApplications;->showLoadingMsg()V

    .line 946
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1080093

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/ManageApplications;->mDefaultAppIcon:Landroid/graphics/drawable/Drawable;

    .line 948
    const v4, 0x7f0802ca

    invoke-virtual {p0, v4}, Lcom/android/settings/ManageApplications;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/ManageApplications;->mInvalidSizeStr:Ljava/lang/CharSequence;

    .line 949
    const v4, 0x7f0802c9

    invoke-virtual {p0, v4}, Lcom/android/settings/ManageApplications;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/ManageApplications;->mComputingSizeStr:Ljava/lang/CharSequence;

    .line 951
    const-string v4, "layout_inflater"

    invoke-virtual {p0, v4}, Lcom/android/settings/ManageApplications;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    iput-object v4, p0, Lcom/android/settings/ManageApplications;->mInflater:Landroid/view/LayoutInflater;

    .line 952
    new-instance v4, Lcom/android/settings/ManageApplications$PackageIntentReceiver;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/settings/ManageApplications$PackageIntentReceiver;-><init>(Lcom/android/settings/ManageApplications;Lcom/android/settings/ManageApplications$1;)V

    iput-object v4, p0, Lcom/android/settings/ManageApplications;->mReceiver:Lcom/android/settings/ManageApplications$PackageIntentReceiver;

    .line 953
    const v4, 0x7f0a003c

    invoke-virtual {p0, v4}, Lcom/android/settings/ManageApplications;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings/ManageApplications;->mEmptyView:Landroid/widget/TextView;

    .line 954
    new-instance v4, Lcom/android/settings/ManageApplications$PkgSizeObserver;

    invoke-direct {v4, p0}, Lcom/android/settings/ManageApplications$PkgSizeObserver;-><init>(Lcom/android/settings/ManageApplications;)V

    iput-object v4, p0, Lcom/android/settings/ManageApplications;->mObserver:Lcom/android/settings/ManageApplications$PkgSizeObserver;

    .line 957
    iget v4, p0, Lcom/android/settings/ManageApplications;->mSortOrder:I

    invoke-virtual {p0, v4}, Lcom/android/settings/ManageApplications;->getInstalledApps(I)Ljava/util/List;

    move-result-object v1

    .line 958
    .local v1, appList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    new-instance v4, Lcom/android/settings/ManageApplications$AppInfoAdapter;

    invoke-direct {v4, p0, p0, v1}, Lcom/android/settings/ManageApplications$AppInfoAdapter;-><init>(Lcom/android/settings/ManageApplications;Landroid/content/Context;Ljava/util/List;)V

    iput-object v4, p0, Lcom/android/settings/ManageApplications;->mAppInfoAdapter:Lcom/android/settings/ManageApplications$AppInfoAdapter;

    .line 960
    const v4, 0x102000a

    invoke-virtual {p0, v4}, Lcom/android/settings/ManageApplications;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    .line 961
    .local v3, lv:Landroid/widget/ListView;
    invoke-virtual {v3, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 962
    invoke-virtual {v3, v6}, Landroid/widget/ListView;->setSaveEnabled(Z)V

    .line 963
    invoke-virtual {v3, v6}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 964
    invoke-virtual {v3, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 965
    iput-object v3, p0, Lcom/android/settings/ManageApplications;->mListView:Landroid/widget/ListView;

    .line 980
    iget-object v4, p0, Lcom/android/settings/ManageApplications;->mCache:Lcom/android/settings/ManageApplications$AppInfoCache;

    invoke-static {v4}, Lcom/android/settings/ManageApplications$AppInfoCache;->access$2600(Lcom/android/settings/ManageApplications$AppInfoCache;)V

    .line 987
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .registers 5
    .parameter "id"

    .prologue
    const/4 v2, 0x1

    .line 997
    if-ne p1, v2, :cond_1e

    .line 998
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 999
    .local v0, dlg:Landroid/app/ProgressDialog;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 1000
    const v1, 0x7f0802bb

    invoke-virtual {p0, v1}, Lcom/android/settings/ManageApplications;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1001
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1002
    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    move-object v1, v0

    .line 1007
    .end local v0           #dlg:Landroid/app/ProgressDialog;
    :goto_1d
    return-object v1

    :cond_1e
    const/4 v1, 0x0

    goto :goto_1d
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 7
    .parameter "menu"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1081
    const v0, 0x7f0802b3

    invoke-interface {p1, v3, v3, v4, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108009c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1083
    const/4 v0, 0x2

    const v1, 0x7f0802b4

    invoke-interface {p1, v3, v4, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108009d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1085
    const/4 v0, 0x5

    const/4 v1, 0x3

    const v2, 0x7f0802b6

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02001c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1088
    return v4
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 991
    iget-object v0, p0, Lcom/android/settings/ManageApplications;->mCache:Lcom/android/settings/ManageApplications$AppInfoCache;

    invoke-static {v0}, Lcom/android/settings/ManageApplications$AppInfoCache;->access$2700(Lcom/android/settings/ManageApplications$AppInfoCache;)V

    .line 992
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 993
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1132
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/android/settings/ManageApplications;->mAppInfoAdapter:Lcom/android/settings/ManageApplications$AppInfoAdapter;

    invoke-virtual {v1, p3}, Lcom/android/settings/ManageApplications$AppInfoAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 1133
    .local v0, info:Landroid/content/pm/ApplicationInfo;
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    .line 1134
    invoke-direct {p0}, Lcom/android/settings/ManageApplications;->startApplicationDetailsActivity()V

    .line 1135
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 9
    .parameter "item"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1108
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 1110
    .local v0, menuId:I
    if-eqz v0, :cond_a

    if-ne v0, v5, :cond_f

    .line 1111
    :cond_a
    const/4 v1, 0x4

    invoke-direct {p0, v1, v0}, Lcom/android/settings/ManageApplications;->sendMessageToHandler(II)V

    .line 1127
    :cond_e
    :goto_e
    return v5

    .line 1112
    :cond_f
    const/4 v1, 0x5

    if-ne v0, v1, :cond_e

    .line 1113
    iget-object v1, p0, Lcom/android/settings/ManageApplications;->mAlertDlg:Landroid/app/AlertDialog;

    if-nez v1, :cond_52

    .line 1114
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0802b7

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0800bb

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/CharSequence;

    const v3, 0x7f0802b8

    invoke-virtual {p0, v3}, Lcom/android/settings/ManageApplications;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v2, v6

    const v3, 0x7f0802ba

    invoke-virtual {p0, v3}, Lcom/android/settings/ManageApplications;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x2

    const v4, 0x7f0802b9

    invoke-virtual {p0, v4}, Lcom/android/settings/ManageApplications;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2, v6, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/ManageApplications;->mAlertDlg:Landroid/app/AlertDialog;

    .line 1124
    :cond_52
    iget-object v1, p0, Lcom/android/settings/ManageApplications;->mAlertDlg:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_e
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 6
    .parameter "menu"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1093
    iget-boolean v0, p0, Lcom/android/settings/ManageApplications;->mFirst:Z

    if-eqz v0, :cond_2c

    .line 1094
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/ManageApplications;->mSortOrder:I

    if-eqz v1, :cond_28

    move v1, v2

    :goto_f
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1096
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/ManageApplications;->mSortOrder:I

    if-eq v1, v2, :cond_2a

    move v1, v2

    :goto_1b
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1098
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move v0, v2

    .line 1103
    :goto_27
    return v0

    :cond_28
    move v1, v3

    .line 1094
    goto :goto_f

    :cond_2a
    move v1, v3

    .line 1096
    goto :goto_1b

    :cond_2c
    move v0, v3

    .line 1103
    goto :goto_27
.end method

.method public onStart()V
    .registers 2

    .prologue
    .line 1038
    invoke-super {p0}, Landroid/app/ListActivity;->onStart()V

    .line 1040
    iget-object v0, p0, Lcom/android/settings/ManageApplications;->mReceiver:Lcom/android/settings/ManageApplications$PackageIntentReceiver;

    invoke-virtual {v0}, Lcom/android/settings/ManageApplications$PackageIntentReceiver;->registerReceiver()V

    .line 1041
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/ManageApplications;->sendMessageToHandler(I)V

    .line 1042
    return-void
.end method

.method public onStop()V
    .registers 2

    .prologue
    .line 1046
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 1049
    iget-object v0, p0, Lcom/android/settings/ManageApplications;->mResourceThread:Lcom/android/settings/ManageApplications$ResourceLoaderThread;

    if-eqz v0, :cond_c

    .line 1050
    iget-object v0, p0, Lcom/android/settings/ManageApplications;->mResourceThread:Lcom/android/settings/ManageApplications$ResourceLoaderThread;

    invoke-virtual {v0}, Lcom/android/settings/ManageApplications$ResourceLoaderThread;->setAbort()V

    .line 1053
    :cond_c
    iget-object v0, p0, Lcom/android/settings/ManageApplications;->mSizeComputor:Lcom/android/settings/ManageApplications$TaskRunner;

    if-eqz v0, :cond_15

    .line 1054
    iget-object v0, p0, Lcom/android/settings/ManageApplications;->mSizeComputor:Lcom/android/settings/ManageApplications$TaskRunner;

    invoke-virtual {v0}, Lcom/android/settings/ManageApplications$TaskRunner;->setAbort()V

    .line 1058
    :cond_15
    invoke-direct {p0}, Lcom/android/settings/ManageApplications;->clearMessagesInHandler()V

    .line 1060
    iget-object v0, p0, Lcom/android/settings/ManageApplications;->mReceiver:Lcom/android/settings/ManageApplications$PackageIntentReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/ManageApplications;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1061
    return-void
.end method
