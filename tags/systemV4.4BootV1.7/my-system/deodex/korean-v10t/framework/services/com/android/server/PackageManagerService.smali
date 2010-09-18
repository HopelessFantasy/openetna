.class Lcom/android/server/PackageManagerService;
.super Landroid/content/pm/IPackageManager$Stub;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/PackageManagerService$Settings;,
        Lcom/android/server/PackageManagerService$SharedUserSetting;,
        Lcom/android/server/PackageManagerService$PackageSetting;,
        Lcom/android/server/PackageManagerService$PackageSettingBase;,
        Lcom/android/server/PackageManagerService$GrantedPermissions;,
        Lcom/android/server/PackageManagerService$PreferredActivity;,
        Lcom/android/server/PackageManagerService$PackageSignatures;,
        Lcom/android/server/PackageManagerService$BasePermission;,
        Lcom/android/server/PackageManagerService$PackageRemovedInfo;,
        Lcom/android/server/PackageManagerService$PackageInstalledInfo;,
        Lcom/android/server/PackageManagerService$AppDirObserver;,
        Lcom/android/server/PackageManagerService$ServiceIntentResolver;,
        Lcom/android/server/PackageManagerService$ActivityIntentResolver;
    }
.end annotation


# static fields
.field private static final ADD_EVENTS:I = 0x88

.field private static final DEBUG_PREFERRED:Z = false

.field private static final DEBUG_SETTINGS:Z = false

.field static final DEX_OPT_FAILED:I = -0x1

.field static final DEX_OPT_PERFORMED:I = 0x1

.field static final DEX_OPT_SKIPPED:I = 0x0

.field private static final FIRST_APPLICATION_UID:I = 0x2710

.field private static final GET_CERTIFICATES:Z = true

.field static final LOG_BOOT_PROGRESS_PMS_DATA_SCAN_START:I = 0xc08

.field static final LOG_BOOT_PROGRESS_PMS_READY:I = 0xc1c

.field static final LOG_BOOT_PROGRESS_PMS_SCAN_END:I = 0xc12

.field static final LOG_BOOT_PROGRESS_PMS_START:I = 0xbf4

.field static final LOG_BOOT_PROGRESS_PMS_SYSTEM_SCAN_START:I = 0xbfe

.field private static final MAX_APPLICATION_UIDS:I = 0x3e8

.field private static final MULTIPLE_APPLICATION_UIDS:Z = true

.field private static final OBSERVER_EVENTS:I = 0x2c8

.field private static final RADIO_UID:I = 0x3e9

.field private static final REMOVE_EVENTS:I = 0x248

.field static final SCAN_FORCE_DEX:I = 0x4

.field static final SCAN_FORWARD_LOCKED:I = 0x10

.field static final SCAN_MONITOR:I = 0x1

.field static final SCAN_NEW_INSTALL:I = 0x20

.field static final SCAN_NO_DEX:I = 0x2

.field static final SCAN_UPDATE_SIGNATURE:I = 0x8

.field private static final SHOW_INFO:Z = false

.field private static final TAG:Ljava/lang/String; = "PackageManager"

.field private static final mProviderInitOrderSorter:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/content/pm/ProviderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final mResolvePrioritySorter:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mActivities:Lcom/android/server/PackageManagerService$ActivityIntentResolver;

.field mAndroidApplication:Landroid/content/pm/ApplicationInfo;

.field final mAppDataDir:Ljava/io/File;

.field final mAppDirs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageParser$Package;",
            ">;"
        }
    .end annotation
.end field

.field final mAppInstallDir:Ljava/io/File;

.field final mAppInstallObserver:Landroid/os/FileObserver;

.field final mContext:Landroid/content/Context;

.field final mDefParseFlags:I

.field final mDrmAppInstallObserver:Landroid/os/FileObserver;

.field final mDrmAppPrivateInstallDir:Ljava/io/File;

.field final mFactoryTest:Z

.field final mFrameworkDir:Ljava/io/File;

.field final mFrameworkInstallObserver:Landroid/os/FileObserver;

.field mGlobalGids:[I

.field final mHandler:Landroid/os/Handler;

.field final mHandlerThread:Landroid/os/HandlerThread;

.field mHasSystemUidErrors:Z

.field final mInstallLock:Ljava/lang/Object;

.field final mInstaller:Lcom/android/server/Installer;

.field final mInstrumentation:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Landroid/content/pm/PackageParser$Instrumentation;",
            ">;"
        }
    .end annotation
.end field

.field mLastScanError:I

.field final mMetrics:Landroid/util/DisplayMetrics;

.field final mNoDexOpt:Z

.field final mOutPermissions:[I

.field final mPackages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageParser$Package;",
            ">;"
        }
    .end annotation
.end field

.field final mPermissionGroups:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageParser$PermissionGroup;",
            ">;"
        }
    .end annotation
.end field

.field mPlatformPackage:Landroid/content/pm/PackageParser$Package;

.field final mProtectedBroadcasts:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mProviders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageParser$Provider;",
            ">;"
        }
    .end annotation
.end field

.field final mProvidersByComponent:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Landroid/content/pm/PackageParser$Provider;",
            ">;"
        }
    .end annotation
.end field

.field final mReceivers:Lcom/android/server/PackageManagerService$ActivityIntentResolver;

.field mReportedUidError:Z

.field final mResolveActivity:Landroid/content/pm/ActivityInfo;

.field mResolveComponentName:Landroid/content/ComponentName;

.field final mResolveInfo:Landroid/content/pm/ResolveInfo;

.field mRestoredSettings:Z

.field mSafeMode:Z

.field mScanningPath:Ljava/io/File;

.field final mSdkCodename:Ljava/lang/String;

.field final mSdkVersion:I

.field final mSeparateProcesses:[Ljava/lang/String;

.field final mServices:Lcom/android/server/PackageManagerService$ServiceIntentResolver;

.field final mSettings:Lcom/android/server/PackageManagerService$Settings;

.field final mSharedLibraries:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mSystemAppDir:Ljava/io/File;

.field final mSystemInstallObserver:Landroid/os/FileObserver;

.field final mSystemPermissions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field mSystemReady:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 3297
    new-instance v0, Lcom/android/server/PackageManagerService$3;

    invoke-direct {v0}, Lcom/android/server/PackageManagerService$3;-><init>()V

    sput-object v0, Lcom/android/server/PackageManagerService;->mResolvePrioritySorter:Ljava/util/Comparator;

    .line 3321
    new-instance v0, Lcom/android/server/PackageManagerService$4;

    invoke-direct {v0}, Lcom/android/server/PackageManagerService$4;-><init>()V

    sput-object v0, Lcom/android/server/PackageManagerService;->mProviderInitOrderSorter:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 34
    .parameter "context"
    .parameter "factoryTest"

    .prologue
    .line 293
    invoke-direct/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;-><init>()V

    .line 139
    new-instance v25, Landroid/os/HandlerThread;

    const-string v26, "PackageManager"

    const/16 v27, 0xa

    invoke-direct/range {v25 .. v27}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 143
    sget v25, Landroid/os/Build$VERSION;->SDK_INT:I

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/PackageManagerService;->mSdkVersion:I

    .line 144
    const-string v25, "REL"

    sget-object v26, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_2d0

    const/16 v25, 0x0

    :goto_26
    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mSdkCodename:Ljava/lang/String;

    .line 186
    new-instance v25, Ljava/lang/Object;

    invoke-direct/range {v25 .. v25}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    .line 191
    new-instance v25, Ljava/util/HashMap;

    invoke-direct/range {v25 .. v25}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mAppDirs:Ljava/util/HashMap;

    .line 198
    const/16 v25, 0x3

    move/from16 v0, v25

    new-array v0, v0, [I

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mOutPermissions:[I

    .line 205
    new-instance v25, Ljava/util/HashMap;

    invoke-direct/range {v25 .. v25}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    .line 217
    new-instance v25, Landroid/util/SparseArray;

    invoke-direct/range {v25 .. v25}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mSystemPermissions:Landroid/util/SparseArray;

    .line 222
    new-instance v25, Ljava/util/HashMap;

    invoke-direct/range {v25 .. v25}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mSharedLibraries:Ljava/util/HashMap;

    .line 225
    new-instance v25, Lcom/android/server/PackageManagerService$ActivityIntentResolver;

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/server/PackageManagerService$ActivityIntentResolver;-><init>(Lcom/android/server/PackageManagerService;Lcom/android/server/PackageManagerService$1;)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mActivities:Lcom/android/server/PackageManagerService$ActivityIntentResolver;

    .line 229
    new-instance v25, Lcom/android/server/PackageManagerService$ActivityIntentResolver;

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/server/PackageManagerService$ActivityIntentResolver;-><init>(Lcom/android/server/PackageManagerService;Lcom/android/server/PackageManagerService$1;)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mReceivers:Lcom/android/server/PackageManagerService$ActivityIntentResolver;

    .line 233
    new-instance v25, Lcom/android/server/PackageManagerService$ServiceIntentResolver;

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/server/PackageManagerService$ServiceIntentResolver;-><init>(Lcom/android/server/PackageManagerService;Lcom/android/server/PackageManagerService$1;)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mServices:Lcom/android/server/PackageManagerService$ServiceIntentResolver;

    .line 236
    new-instance v25, Ljava/util/HashMap;

    invoke-direct/range {v25 .. v25}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mProvidersByComponent:Ljava/util/HashMap;

    .line 241
    new-instance v25, Ljava/util/HashMap;

    invoke-direct/range {v25 .. v25}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mProviders:Ljava/util/HashMap;

    .line 245
    new-instance v25, Ljava/util/HashMap;

    invoke-direct/range {v25 .. v25}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mInstrumentation:Ljava/util/HashMap;

    .line 249
    new-instance v25, Ljava/util/HashMap;

    invoke-direct/range {v25 .. v25}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mPermissionGroups:Ljava/util/HashMap;

    .line 253
    new-instance v25, Ljava/util/HashSet;

    invoke-direct/range {v25 .. v25}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mProtectedBroadcasts:Ljava/util/HashSet;

    .line 260
    new-instance v25, Landroid/content/pm/ActivityInfo;

    invoke-direct/range {v25 .. v25}, Landroid/content/pm/ActivityInfo;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    .line 261
    new-instance v25, Landroid/content/pm/ResolveInfo;

    invoke-direct/range {v25 .. v25}, Landroid/content/pm/ResolveInfo;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 294
    const/16 v25, 0xbf4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v26

    invoke-static/range {v25 .. v27}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 297
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PackageManagerService;->mSdkVersion:I

    move/from16 v25, v0

    if-gtz v25, :cond_10f

    .line 298
    const-string v25, "PackageManager"

    const-string v26, "**** ro.build.version.sdk not set!"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :cond_10f
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mContext:Landroid/content/Context;

    .line 302
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/PackageManagerService;->mFactoryTest:Z

    .line 303
    const-string v25, "eng"

    const-string v26, "ro.build.type"

    invoke-static/range {v26 .. v26}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/PackageManagerService;->mNoDexOpt:Z

    .line 304
    new-instance v25, Landroid/util/DisplayMetrics;

    invoke-direct/range {v25 .. v25}, Landroid/util/DisplayMetrics;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mMetrics:Landroid/util/DisplayMetrics;

    .line 305
    new-instance v25, Lcom/android/server/PackageManagerService$Settings;

    invoke-direct/range {v25 .. v25}, Lcom/android/server/PackageManagerService$Settings;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object/from16 v25, v0

    const-string v26, "android.uid.system"

    const/16 v27, 0x3e8

    const/16 v28, 0x1

    invoke-virtual/range {v25 .. v28}, Lcom/android/server/PackageManagerService$Settings;->addSharedUserLP(Ljava/lang/String;II)Lcom/android/server/PackageManagerService$SharedUserSetting;

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object/from16 v25, v0

    const-string v26, "android.uid.phone"

    const/16 v27, 0x3e9

    const/16 v28, 0x1

    invoke-virtual/range {v25 .. v28}, Lcom/android/server/PackageManagerService$Settings;->addSharedUserLP(Ljava/lang/String;II)Lcom/android/server/PackageManagerService$SharedUserSetting;

    .line 313
    const-string v25, "debug.separate_processes"

    invoke-static/range {v25 .. v25}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 314
    .local v21, separateProcesses:Ljava/lang/String;
    if-eqz v21, :cond_30a

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v25

    if-lez v25, :cond_30a

    .line 315
    const-string v25, "*"

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_2d4

    .line 316
    const/16 v25, 0x8

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/PackageManagerService;->mDefParseFlags:I

    .line 317
    const/16 v25, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mSeparateProcesses:[Ljava/lang/String;

    .line 318
    const-string v25, "PackageManager"

    const-string v26, "Running with debug.separate_processes: * (ALL)"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    :goto_192
    new-instance v12, Lcom/android/server/Installer;

    invoke-direct {v12}, Lcom/android/server/Installer;-><init>()V

    .line 335
    .local v12, installer:Lcom/android/server/Installer;
    invoke-virtual {v12}, Lcom/android/server/Installer;->ping()Z

    move-result v25

    if-eqz v25, :cond_31c

    invoke-static {}, Landroid/os/Process;->supportsProcesses()Z

    move-result v25

    if-eqz v25, :cond_31c

    .line 336
    move-object v0, v12

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    .line 341
    :goto_1a8
    const-string v25, "window"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/view/WindowManager;

    .line 342
    .local v24, wm:Landroid/view/WindowManager;
    invoke-interface/range {v24 .. v24}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    .line 343
    .local v6, d:Landroid/view/Display;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v25, v0

    move-object v0, v6

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    move-object/from16 v25, v0

    monitor-enter v25

    .line 346
    :try_start_1cb
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object/from16 v26, v0

    monitor-enter v26
    :try_end_1d2
    .catchall {:try_start_1cb .. :try_end_1d2} :catchall_347

    .line 347
    :try_start_1d2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/os/HandlerThread;->start()V

    .line 348
    new-instance v27, Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mHandler:Landroid/os/Handler;

    .line 350
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v7

    .line 351
    .local v7, dataDir:Ljava/io/File;
    new-instance v27, Ljava/io/File;

    const-string v28, "data"

    move-object/from16 v0, v27

    move-object v1, v7

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mAppDataDir:Ljava/io/File;

    .line 352
    new-instance v27, Ljava/io/File;

    const-string v28, "app-private"

    move-object/from16 v0, v27

    move-object v1, v7

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mDrmAppPrivateInstallDir:Ljava/io/File;

    .line 354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    move-object/from16 v27, v0

    if-nez v27, :cond_241

    .line 358
    new-instance v17, Ljava/io/File;

    const-string v27, "misc"

    move-object/from16 v0, v17

    move-object v1, v7

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 359
    .local v17, miscDir:Ljava/io/File;
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->mkdirs()Z

    .line 360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mAppDataDir:Ljava/io/File;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->mkdirs()Z

    .line 361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mDrmAppPrivateInstallDir:Ljava/io/File;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->mkdirs()Z

    .line 364
    .end local v17           #miscDir:Ljava/io/File;
    :cond_241
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/PackageManagerService;->readPermissions()V

    .line 366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/server/PackageManagerService$Settings;->readLP()Z

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/PackageManagerService;->mRestoredSettings:Z

    .line 367
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v22

    .line 369
    .local v22, startTime:J
    const/16 v27, 0xbfe

    move/from16 v0, v27

    move-wide/from16 v1, v22

    invoke-static {v0, v1, v2}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 372
    const/16 v20, 0x1

    .line 373
    .local v20, scanMode:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PackageManagerService;->mNoDexOpt:Z

    move/from16 v27, v0

    if-eqz v27, :cond_274

    .line 374
    const-string v27, "PackageManager"

    const-string v28, "Running ENG build: no pre-dexopt!"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    or-int/lit8 v20, v20, 0x2

    .line 378
    :cond_274
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    .line 380
    .local v14, libFiles:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v27, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v28

    const-string v29, "framework"

    invoke-direct/range {v27 .. v29}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mFrameworkDir:Ljava/io/File;

    .line 382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    move-object/from16 v27, v0

    if-eqz v27, :cond_4fb

    .line 387
    const-string v27, "java.boot.class.path"

    invoke-static/range {v27 .. v27}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 388
    .local v5, bootClassPath:Ljava/lang/String;
    if-eqz v5, :cond_36e

    .line 389
    const/16 v27, 0x3a

    move-object v0, v5

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/android/server/PackageManagerService;->splitString(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v19

    .line 390
    .local v19, paths:[Ljava/lang/String;
    const/4 v11, 0x0

    .local v11, i:I
    :goto_2a4
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v27, v0
    :try_end_2a9
    .catchall {:try_start_1d2 .. :try_end_2a9} :catchall_344

    move v0, v11

    move/from16 v1, v27

    if-ge v0, v1, :cond_375

    .line 392
    :try_start_2ae
    aget-object v27, v19, v11

    invoke-static/range {v27 .. v27}, Ldalvik/system/DexFile;->isDexOptNeeded(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_2cd

    .line 393
    aget-object v27, v19, v11

    move-object v0, v14

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    move-object/from16 v27, v0

    aget-object v28, v19, v11

    const/16 v29, 0x3e8

    const/16 v30, 0x1

    invoke-virtual/range {v27 .. v30}, Lcom/android/server/Installer;->dexopt(Ljava/lang/String;IZ)I
    :try_end_2cd
    .catchall {:try_start_2ae .. :try_end_2cd} :catchall_344
    .catch Ljava/io/FileNotFoundException; {:try_start_2ae .. :try_end_2cd} :catch_326
    .catch Ljava/io/IOException; {:try_start_2ae .. :try_end_2cd} :catch_34a

    .line 390
    :cond_2cd
    :goto_2cd
    add-int/lit8 v11, v11, 0x1

    goto :goto_2a4

    .line 144
    .end local v5           #bootClassPath:Ljava/lang/String;
    .end local v6           #d:Landroid/view/Display;
    .end local v7           #dataDir:Ljava/io/File;
    .end local v11           #i:I
    .end local v12           #installer:Lcom/android/server/Installer;
    .end local v14           #libFiles:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v19           #paths:[Ljava/lang/String;
    .end local v20           #scanMode:I
    .end local v21           #separateProcesses:Ljava/lang/String;
    .end local v22           #startTime:J
    .end local v24           #wm:Landroid/view/WindowManager;
    :cond_2d0
    sget-object v25, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    goto/16 :goto_26

    .line 320
    .restart local v21       #separateProcesses:Ljava/lang/String;
    :cond_2d4
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/PackageManagerService;->mDefParseFlags:I

    .line 321
    const-string v25, ","

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mSeparateProcesses:[Ljava/lang/String;

    .line 322
    const-string v25, "PackageManager"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Running with debug.separate_processes: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_192

    .line 326
    :cond_30a
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/PackageManagerService;->mDefParseFlags:I

    .line 327
    const/16 v25, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mSeparateProcesses:[Ljava/lang/String;

    goto/16 :goto_192

    .line 338
    .restart local v12       #installer:Lcom/android/server/Installer;
    :cond_31c
    const/16 v25, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    goto/16 :goto_1a8

    .line 396
    .restart local v5       #bootClassPath:Ljava/lang/String;
    .restart local v6       #d:Landroid/view/Display;
    .restart local v7       #dataDir:Ljava/io/File;
    .restart local v11       #i:I
    .restart local v14       #libFiles:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v19       #paths:[Ljava/lang/String;
    .restart local v20       #scanMode:I
    .restart local v22       #startTime:J
    .restart local v24       #wm:Landroid/view/WindowManager;
    :catch_326
    move-exception v27

    move-object/from16 v9, v27

    .line 397
    .local v9, e:Ljava/io/FileNotFoundException;
    :try_start_329
    const-string v27, "PackageManager"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Boot class path not found: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    aget-object v29, v19, v11

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2cd

    .line 521
    .end local v5           #bootClassPath:Ljava/lang/String;
    .end local v7           #dataDir:Ljava/io/File;
    .end local v9           #e:Ljava/io/FileNotFoundException;
    .end local v11           #i:I
    .end local v14           #libFiles:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v19           #paths:[Ljava/lang/String;
    .end local v20           #scanMode:I
    .end local v22           #startTime:J
    .end local p1
    :catchall_344
    move-exception v27

    monitor-exit v26
    :try_end_346
    .catchall {:try_start_329 .. :try_end_346} :catchall_344

    :try_start_346
    throw v27

    .line 522
    :catchall_347
    move-exception v26

    monitor-exit v25
    :try_end_349
    .catchall {:try_start_346 .. :try_end_349} :catchall_347

    throw v26

    .line 398
    .restart local v5       #bootClassPath:Ljava/lang/String;
    .restart local v7       #dataDir:Ljava/io/File;
    .restart local v11       #i:I
    .restart local v14       #libFiles:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v19       #paths:[Ljava/lang/String;
    .restart local v20       #scanMode:I
    .restart local v22       #startTime:J
    .restart local p1
    :catch_34a
    move-exception v27

    move-object/from16 v9, v27

    .line 399
    .local v9, e:Ljava/io/IOException;
    :try_start_34d
    const-string v27, "PackageManager"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Exception reading boot class path: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    aget-object v29, v19, v11

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object v2, v9

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2cd

    .line 403
    .end local v9           #e:Ljava/io/IOException;
    .end local v11           #i:I
    .end local v19           #paths:[Ljava/lang/String;
    :cond_36e
    const-string v27, "PackageManager"

    const-string v28, "No BOOTCLASSPATH found!"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    :cond_375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSharedLibraries:Ljava/util/HashMap;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/HashMap;->size()I

    move-result v27

    if-lez v27, :cond_3fc

    .line 410
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSharedLibraries:Ljava/util/HashMap;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .line 411
    .local v16, libs:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_38f
    :goto_38f
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_3fc

    .line 412
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;
    :try_end_39b
    .catchall {:try_start_34d .. :try_end_39b} :catchall_344

    .line 414
    .local v13, lib:Ljava/lang/String;
    :try_start_39b
    invoke-static {v13}, Ldalvik/system/DexFile;->isDexOptNeeded(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_38f

    .line 415
    invoke-virtual {v14, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    move-object/from16 v27, v0

    const/16 v28, 0x3e8

    const/16 v29, 0x1

    move-object/from16 v0, v27

    move-object v1, v13

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/Installer;->dexopt(Ljava/lang/String;IZ)I
    :try_end_3b8
    .catchall {:try_start_39b .. :try_end_3b8} :catchall_344
    .catch Ljava/io/FileNotFoundException; {:try_start_39b .. :try_end_3b8} :catch_3b9
    .catch Ljava/io/IOException; {:try_start_39b .. :try_end_3b8} :catch_3d8

    goto :goto_38f

    .line 418
    :catch_3b9
    move-exception v27

    move-object/from16 v9, v27

    .line 419
    .local v9, e:Ljava/io/FileNotFoundException;
    :try_start_3bc
    const-string v27, "PackageManager"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Library not found: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38f

    .line 420
    .end local v9           #e:Ljava/io/FileNotFoundException;
    :catch_3d8
    move-exception v27

    move-object/from16 v9, v27

    .line 421
    .local v9, e:Ljava/io/IOException;
    const-string v27, "PackageManager"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Exception reading library: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object v2, v9

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_38f

    .line 428
    .end local v9           #e:Ljava/io/IOException;
    .end local v13           #lib:Ljava/lang/String;
    .end local v16           #libs:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_3fc
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mFrameworkDir:Ljava/io/File;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "/framework-res.apk"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object v0, v14

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 431
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mFrameworkDir:Ljava/io/File;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "/lge-res.apk"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object v0, v14

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 440
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mFrameworkDir:Ljava/io/File;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v10

    .line 441
    .local v10, frameworkFiles:[Ljava/lang/String;
    if-eqz v10, :cond_4fb

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    move-object/from16 v27, v0

    if-eqz v27, :cond_4fb

    .line 442
    const/4 v11, 0x0

    .restart local v11       #i:I
    :goto_457
    move-object v0, v10

    array-length v0, v0

    move/from16 v27, v0

    move v0, v11

    move/from16 v1, v27

    if-ge v0, v1, :cond_4fb

    .line 443
    new-instance v15, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mFrameworkDir:Ljava/io/File;

    move-object/from16 v27, v0

    aget-object v28, v10, v11

    move-object v0, v15

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 444
    .local v15, libPath:Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v18

    .line 446
    .local v18, path:Ljava/lang/String;
    move-object v0, v14

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_482

    .line 442
    :cond_47f
    :goto_47f
    add-int/lit8 v11, v11, 0x1

    goto :goto_457

    .line 450
    :cond_482
    const-string v27, ".apk"

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v27

    if-nez v27, :cond_49a

    const-string v27, ".jar"

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_497
    .catchall {:try_start_3bc .. :try_end_497} :catchall_344

    move-result v27

    if-eqz v27, :cond_47f

    .line 454
    :cond_49a
    :try_start_49a
    invoke-static/range {v18 .. v18}, Ldalvik/system/DexFile;->isDexOptNeeded(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_47f

    .line 455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    move-object/from16 v27, v0

    const/16 v28, 0x3e8

    const/16 v29, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, v18

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/Installer;->dexopt(Ljava/lang/String;IZ)I
    :try_end_4b5
    .catchall {:try_start_49a .. :try_end_4b5} :catchall_344
    .catch Ljava/io/FileNotFoundException; {:try_start_49a .. :try_end_4b5} :catch_4b6
    .catch Ljava/io/IOException; {:try_start_49a .. :try_end_4b5} :catch_4d6

    goto :goto_47f

    .line 457
    :catch_4b6
    move-exception v27

    move-object/from16 v9, v27

    .line 458
    .local v9, e:Ljava/io/FileNotFoundException;
    :try_start_4b9
    const-string v27, "PackageManager"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Jar not found: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_47f

    .line 459
    .end local v9           #e:Ljava/io/FileNotFoundException;
    :catch_4d6
    move-exception v27

    move-object/from16 v9, v27

    .line 460
    .local v9, e:Ljava/io/IOException;
    const-string v27, "PackageManager"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Exception reading jar: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object v2, v9

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_47f

    .line 466
    .end local v5           #bootClassPath:Ljava/lang/String;
    .end local v9           #e:Ljava/io/IOException;
    .end local v10           #frameworkFiles:[Ljava/lang/String;
    .end local v11           #i:I
    .end local v15           #libPath:Ljava/io/File;
    .end local v18           #path:Ljava/lang/String;
    :cond_4fb
    new-instance v27, Lcom/android/server/PackageManagerService$AppDirObserver;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mFrameworkDir:Ljava/io/File;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x2c8

    const/16 v30, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move-object/from16 v2, v28

    move/from16 v3, v29

    move/from16 v4, v30

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/PackageManagerService$AppDirObserver;-><init>(Lcom/android/server/PackageManagerService;Ljava/lang/String;IZ)V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mFrameworkInstallObserver:Landroid/os/FileObserver;

    .line 468
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mFrameworkInstallObserver:Landroid/os/FileObserver;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/os/FileObserver;->startWatching()V

    .line 469
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mFrameworkDir:Ljava/io/File;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    or-int/lit8 v29, v20, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/PackageManagerService;->scanDirLI(Ljava/io/File;II)V

    .line 471
    new-instance v27, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v28

    const-string v29, "app"

    invoke-direct/range {v27 .. v29}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mSystemAppDir:Ljava/io/File;

    .line 472
    new-instance v27, Lcom/android/server/PackageManagerService$AppDirObserver;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSystemAppDir:Ljava/io/File;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x2c8

    const/16 v30, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move-object/from16 v2, v28

    move/from16 v3, v29

    move/from16 v4, v30

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/PackageManagerService$AppDirObserver;-><init>(Lcom/android/server/PackageManagerService;Ljava/lang/String;IZ)V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mSystemInstallObserver:Landroid/os/FileObserver;

    .line 474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSystemInstallObserver:Landroid/os/FileObserver;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/os/FileObserver;->startWatching()V

    .line 475
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSystemAppDir:Ljava/io/File;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/PackageManagerService;->scanDirLI(Ljava/io/File;II)V

    .line 476
    new-instance v27, Ljava/io/File;

    const-string v28, "app"

    move-object/from16 v0, v27

    move-object v1, v7

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mAppInstallDir:Ljava/io/File;

    .line 477
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    move-object/from16 v27, v0

    if-nez v27, :cond_5af

    .line 480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mAppInstallDir:Ljava/io/File;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->mkdirs()Z

    .line 483
    :cond_5af
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/server/PackageManagerService$Settings;->getListOfIncompleteInstallPackages()Ljava/util/ArrayList;

    move-result-object v8

    .line 485
    .local v8, deletePkgsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v11, 0x0

    .end local p1
    .restart local v11       #i:I
    :goto_5ba
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v27

    move v0, v11

    move/from16 v1, v27

    if-ge v0, v1, :cond_5cf

    .line 487
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/PackageManagerService;->cleanupInstallFailedPackage(Ljava/lang/String;)V

    .line 485
    add-int/lit8 v11, v11, 0x1

    goto :goto_5ba

    .line 490
    :cond_5cf
    invoke-direct/range {p0 .. p0}, Lcom/android/server/PackageManagerService;->deleteTempPackageFiles()V

    .line 492
    const/16 v27, 0xc08

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v28

    invoke-static/range {v27 .. v29}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 494
    new-instance v27, Lcom/android/server/PackageManagerService$AppDirObserver;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mAppInstallDir:Ljava/io/File;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x2c8

    const/16 v30, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move-object/from16 v2, v28

    move/from16 v3, v29

    move/from16 v4, v30

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/PackageManagerService$AppDirObserver;-><init>(Lcom/android/server/PackageManagerService;Ljava/lang/String;IZ)V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mAppInstallObserver:Landroid/os/FileObserver;

    .line 496
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mAppInstallObserver:Landroid/os/FileObserver;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/os/FileObserver;->startWatching()V

    .line 497
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mAppInstallDir:Ljava/io/File;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/PackageManagerService;->scanDirLI(Ljava/io/File;II)V

    .line 499
    new-instance v27, Lcom/android/server/PackageManagerService$AppDirObserver;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mDrmAppPrivateInstallDir:Ljava/io/File;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x2c8

    const/16 v30, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move-object/from16 v2, v28

    move/from16 v3, v29

    move/from16 v4, v30

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/PackageManagerService$AppDirObserver;-><init>(Lcom/android/server/PackageManagerService;Ljava/lang/String;IZ)V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mDrmAppInstallObserver:Landroid/os/FileObserver;

    .line 501
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mDrmAppInstallObserver:Landroid/os/FileObserver;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/os/FileObserver;->startWatching()V

    .line 502
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mDrmAppPrivateInstallDir:Ljava/io/File;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    or-int/lit8 v29, v20, 0x10

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/PackageManagerService;->scanDirLI(Ljava/io/File;II)V

    .line 504
    const/16 v27, 0xc12

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v28

    invoke-static/range {v27 .. v29}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 506
    const-string v27, "PackageManager"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Time to scan packages: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v29

    sub-long v29, v29, v22

    move-wide/from16 v0, v29

    long-to-float v0, v0

    move/from16 v29, v0

    const/high16 v30, 0x447a

    div-float v29, v29, v30

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " seconds"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    invoke-direct/range {p0 .. p0}, Lcom/android/server/PackageManagerService;->updatePermissionsLP()V

    .line 512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/server/PackageManagerService$Settings;->writeLP()V

    .line 514
    const/16 v27, 0xc1c

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v28

    invoke-static/range {v27 .. v29}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 520
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Runtime;->gc()V

    .line 521
    monitor-exit v26
    :try_end_6ae
    .catchall {:try_start_4b9 .. :try_end_6ae} :catchall_344

    .line 522
    :try_start_6ae
    monitor-exit v25
    :try_end_6af
    .catchall {:try_start_6ae .. :try_end_6af} :catchall_347

    .line 523
    return-void
.end method

.method static synthetic access$1000()Ljava/util/Comparator;
    .registers 1

    .prologue
    .line 104
    sget-object v0, Lcom/android/server/PackageManagerService;->mResolvePrioritySorter:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic access$1100(Ljava/lang/String;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 104
    invoke-static {p0}, Lcom/android/server/PackageManagerService;->isPackageFilename(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/PackageManagerService;Ljava/io/File;Ljava/io/File;Ljava/io/File;II)Landroid/content/pm/PackageParser$Package;
    .registers 7
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 104
    invoke-direct/range {p0 .. p5}, Lcom/android/server/PackageManagerService;->scanPackageLI(Ljava/io/File;Ljava/io/File;Ljava/io/File;II)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/PackageManagerService;Landroid/content/pm/PackageParser$Package;Z)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 104
    invoke-direct {p0, p1, p2}, Lcom/android/server/PackageManagerService;->grantPermissionsLP(Landroid/content/pm/PackageParser$Package;Z)V

    return-void
.end method

.method static synthetic access$1400(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 104
    invoke-static {p0, p1, p2}, Lcom/android/server/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/PackageManagerService;Landroid/net/Uri;IZLjava/lang/String;)Lcom/android/server/PackageManagerService$PackageInstalledInfo;
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 104
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/PackageManagerService;->installPackageLI(Landroid/net/Uri;IZLjava/lang/String;)Lcom/android/server/PackageManagerService$PackageInstalledInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/PackageManagerService;Ljava/lang/String;ZZI)Z
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 104
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/PackageManagerService;->deletePackageX(Ljava/lang/String;ZZI)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/PackageManagerService;Ljava/lang/String;)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/android/server/PackageManagerService;->clearApplicationUserDataLI(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/server/PackageManagerService;Ljava/lang/String;)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/android/server/PackageManagerService;->deleteApplicationCacheFilesLI(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/PackageManagerService;Ljava/lang/String;Landroid/content/pm/PackageStats;)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 104
    invoke-direct {p0, p1, p2}, Lcom/android/server/PackageManagerService;->getPackageSizeInfoLI(Ljava/lang/String;Landroid/content/pm/PackageStats;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(ILjava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    invoke-static {p0, p1}, Lcom/android/server/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    return-void
.end method

.method static appendInt([II)[I
    .registers 7
    .parameter "cur"
    .parameter "val"

    .prologue
    const/4 v4, 0x0

    .line 733
    if-nez p0, :cond_9

    .line 734
    const/4 v3, 0x1

    new-array v3, v3, [I

    aput p1, v3, v4

    .line 745
    :goto_8
    return-object v3

    .line 736
    :cond_9
    array-length v0, p0

    .line 737
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_b
    if-ge v1, v0, :cond_16

    .line 738
    aget v3, p0, v1

    if-ne v3, p1, :cond_13

    move-object v3, p0

    .line 739
    goto :goto_8

    .line 737
    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 742
    :cond_16
    add-int/lit8 v3, v0, 0x1

    new-array v2, v3, [I

    .line 743
    .local v2, ret:[I
    invoke-static {p0, v4, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 744
    aput p1, v2, v0

    move-object v3, v2

    .line 745
    goto :goto_8
.end method

.method static appendInts([I[I)[I
    .registers 5
    .parameter "cur"
    .parameter "add"

    .prologue
    .line 749
    if-nez p1, :cond_4

    move-object v2, p0

    .line 755
    :goto_3
    return-object v2

    .line 750
    :cond_4
    if-nez p0, :cond_8

    move-object v2, p1

    goto :goto_3

    .line 751
    :cond_8
    array-length v0, p1

    .line 752
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_a
    if-ge v1, v0, :cond_15

    .line 753
    aget v2, p1, v1

    invoke-static {p0, v2}, Lcom/android/server/PackageManagerService;->appendInt([II)[I

    move-result-object p0

    .line 752
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_15
    move-object v2, p0

    .line 755
    goto :goto_3
.end method

.method static arrayToString([I)Ljava/lang/String;
    .registers 4
    .parameter "array"

    .prologue
    .line 4876
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v2, 0x80

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 4877
    .local v0, buf:Ljava/lang/StringBuffer;
    const/16 v2, 0x5b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 4878
    if-eqz p0, :cond_21

    .line 4879
    const/4 v1, 0x0

    .local v1, i:I
    :goto_f
    array-length v2, p0

    if-ge v1, v2, :cond_21

    .line 4880
    if-lez v1, :cond_19

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4881
    :cond_19
    aget v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 4879
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 4884
    .end local v1           #i:I
    :cond_21
    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 4885
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private cachePackageSharedLibsLI(Landroid/content/pm/PackageParser$Package;Ljava/io/File;Ljava/io/File;)I
    .registers 23
    .parameter "pkg"
    .parameter "dataPath"
    .parameter "scanFile"

    .prologue
    .line 2554
    new-instance v6, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/lib"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2555
    .local v6, sharedLibraryDir:Ljava/io/File;
    sget-object v16, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    .line 2556
    .local v16, sharedLibraryABI:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lib/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2557
    .local v8, apkLibraryDirectory:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "lib"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2558
    .local v9, apkSharedLibraryPrefix:Ljava/lang/String;
    const-string v18, ".so"

    .line 2559
    .local v18, sharedLibrarySuffix:Ljava/lang/String;
    const/4 v13, 0x0

    .line 2560
    .local v13, hasNativeCode:Z
    const/4 v14, 0x0

    .line 2562
    .local v14, installedNativeCode:Z
    :try_start_51
    new-instance v4, Ljava/util/zip/ZipFile;

    move-object v0, v4

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 2563
    .local v4, zipFile:Ljava/util/zip/ZipFile;
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v11

    .line 2566
    .local v11, entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/util/zip/ZipEntry;>;"
    :cond_5d
    :goto_5d
    invoke-interface {v11}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_131

    .line 2567
    invoke-interface {v11}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/zip/ZipEntry;

    .line 2568
    .local v5, entry:Ljava/util/zip/ZipEntry;
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_7f

    .line 2569
    if-nez v13, :cond_5d

    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "lib"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 2570
    const/4 v13, 0x1

    goto :goto_5d

    .line 2574
    :cond_7f
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v12

    .line 2575
    .local v12, entryName:Ljava/lang/String;
    const-string v2, "lib/"

    invoke-virtual {v12, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8c

    .line 2576
    const/4 v13, 0x1

    .line 2578
    :cond_8c
    invoke-virtual {v12, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5d

    const-string v2, ".so"

    invoke-virtual {v12, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 2582
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v12, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    .line 2584
    .local v15, libFileName:Ljava/lang/String;
    const-string v2, "/"

    invoke-virtual {v15, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5d

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/os/FileUtils;->isFilenameSafe(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 2589
    const/4 v14, 0x1

    .line 2591
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 2593
    .local v17, sharedLibraryFilePath:Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    move-object v0, v7

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2594
    .local v7, sharedLibraryFile:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_f7

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v15

    .end local v15           #libFileName:Ljava/lang/String;
    cmp-long v2, v2, v15

    if-nez v2, :cond_f7

    invoke-virtual {v7}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getTime()J

    move-result-wide v15

    cmp-long v2, v2, v15

    if-eqz v2, :cond_5d

    .line 2598
    :cond_f7
    const-string v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Caching shared lib "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2600
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    move-object v2, v0

    if-nez v2, :cond_11d

    .line 2601
    invoke-virtual {v6}, Ljava/io/File;->mkdir()Z

    :cond_11d
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    .line 2603
    invoke-direct/range {v2 .. v7}, Lcom/android/server/PackageManagerService;->cacheSharedLibLI(Landroid/content/pm/PackageParser$Package;Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/io/File;Ljava/io/File;)V
    :try_end_124
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_124} :catch_126

    goto/16 :goto_5d

    .line 2607
    .end local v4           #zipFile:Ljava/util/zip/ZipFile;
    .end local v5           #entry:Ljava/util/zip/ZipEntry;
    .end local v7           #sharedLibraryFile:Ljava/io/File;
    .end local v11           #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/util/zip/ZipEntry;>;"
    .end local v12           #entryName:Ljava/lang/String;
    .end local v17           #sharedLibraryFilePath:Ljava/lang/String;
    :catch_126
    move-exception v2

    move-object v10, v2

    .line 2608
    .local v10, e:Ljava/io/IOException;
    const-string v2, "PackageManager"

    const-string v3, "Failed to cache package shared libs"

    invoke-static {v2, v3, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2609
    const/4 v2, -0x4

    .line 2618
    .end local v10           #e:Ljava/io/IOException;
    :goto_130
    return v2

    .line 2612
    .restart local v4       #zipFile:Ljava/util/zip/ZipFile;
    .restart local v11       #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/util/zip/ZipEntry;>;"
    :cond_131
    if-eqz v13, :cond_152

    if-nez v14, :cond_152

    .line 2613
    const-string v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Install failed: .apk has native code but none for arch "

    .end local v4           #zipFile:Ljava/util/zip/ZipFile;
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2615
    const/16 v2, -0x10

    goto :goto_130

    .line 2618
    .restart local v4       #zipFile:Ljava/util/zip/ZipFile;
    :cond_152
    const/4 v2, 0x1

    goto :goto_130
.end method

.method private cacheSharedLibLI(Landroid/content/pm/PackageParser$Package;Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/io/File;Ljava/io/File;)V
    .registers 12
    .parameter "pkg"
    .parameter "zipFile"
    .parameter "entry"
    .parameter "sharedLibraryDir"
    .parameter "sharedLibraryFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v3, "tmp"

    .line 2625
    invoke-virtual {p2, p3}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    .line 2627
    .local v0, inputStream:Ljava/io/InputStream;
    :try_start_6
    const-string v3, "tmp"

    const-string v4, "tmp"

    invoke-static {v3, v4, p4}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 2628
    .local v1, tempFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 2631
    .local v2, tempFilePath:Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/os/FileUtils;->copyToFile(Ljava/io/InputStream;Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-virtual {p3}, Ljava/util/zip/ZipEntry;->getTime()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/io/File;->setLastModified(J)Z

    move-result v3

    if-eqz v3, :cond_32

    const/16 v3, 0x1a4

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-static {v2, v3, v4, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    move-result v3

    if-nez v3, :cond_32

    invoke-virtual {v1, p5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_5d

    .line 2638
    :cond_32
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 2639
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t create cached shared lib "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_58
    .catchall {:try_start_6 .. :try_end_58} :catchall_58

    .line 2643
    .end local v1           #tempFile:Ljava/io/File;
    .end local v2           #tempFilePath:Ljava/lang/String;
    :catchall_58
    move-exception v3

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw v3

    .restart local v1       #tempFile:Ljava/io/File;
    .restart local v2       #tempFilePath:Ljava/lang/String;
    :cond_5d
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 2645
    return-void
.end method

.method private checkPermissionTreeLP(Ljava/lang/String;)Lcom/android/server/PackageManagerService$BasePermission;
    .registers 6
    .parameter "permName"

    .prologue
    .line 1073
    if-eqz p1, :cond_46

    .line 1074
    invoke-direct {p0, p1}, Lcom/android/server/PackageManagerService;->findPermissionTreeLP(Ljava/lang/String;)Lcom/android/server/PackageManagerService$BasePermission;

    move-result-object v0

    .line 1075
    .local v0, bp:Lcom/android/server/PackageManagerService$BasePermission;
    if-eqz v0, :cond_46

    .line 1076
    iget v1, v0, Lcom/android/server/PackageManagerService$BasePermission;->uid:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    if-ne v1, v2, :cond_11

    .line 1077
    return-object v0

    .line 1079
    :cond_11
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not allowed to add to permission tree "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/PackageManagerService$BasePermission;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " owned by uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/server/PackageManagerService$BasePermission;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1085
    .end local v0           #bp:Lcom/android/server/PackageManagerService$BasePermission;
    :cond_46
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No permission tree found for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private chooseBestActivity(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;)Landroid/content/pm/ResolveInfo;
    .registers 15
    .parameter "intent"
    .parameter "resolvedType"
    .parameter "flags"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Landroid/content/pm/ResolveInfo;"
        }
    .end annotation

    .prologue
    .local p4, query:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 1232
    if-eqz p4, :cond_4c

    .line 1233
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v6

    .line 1234
    .local v6, N:I
    if-ne v6, v0, :cond_12

    .line 1235
    invoke-interface {p4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/content/pm/ResolveInfo;

    move-object v0, p0

    .line 1264
    .end local v6           #N:I
    :goto_11
    return-object v0

    .line 1236
    .restart local v6       #N:I
    .restart local p0
    :cond_12
    if-le v6, v0, :cond_4c

    .line 1239
    invoke-interface {p4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 1240
    .local v7, r0:Landroid/content/pm/ResolveInfo;
    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 1249
    .local v8, r1:Landroid/content/pm/ResolveInfo;
    iget v0, v7, Landroid/content/pm/ResolveInfo;->priority:I

    iget v1, v8, Landroid/content/pm/ResolveInfo;->priority:I

    if-ne v0, v1, :cond_32

    iget v0, v7, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    iget v1, v8, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    if-ne v0, v1, :cond_32

    iget-boolean v0, v7, Landroid/content/pm/ResolveInfo;->isDefault:Z

    iget-boolean v1, v8, Landroid/content/pm/ResolveInfo;->isDefault:Z

    if-eq v0, v1, :cond_3a

    .line 1252
    :cond_32
    invoke-interface {p4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/content/pm/ResolveInfo;

    move-object v0, p0

    goto :goto_11

    .line 1256
    .restart local p0
    :cond_3a
    iget v5, v7, Landroid/content/pm/ResolveInfo;->priority:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/PackageManagerService;->findPreferredActivity(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Landroid/content/pm/ResolveInfo;

    move-result-object v9

    .line 1258
    .local v9, ri:Landroid/content/pm/ResolveInfo;
    if-eqz v9, :cond_49

    move-object v0, v9

    .line 1259
    goto :goto_11

    .line 1261
    :cond_49
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    goto :goto_11

    .line 1264
    .end local v6           #N:I
    .end local v7           #r0:Landroid/content/pm/ResolveInfo;
    .end local v8           #r1:Landroid/content/pm/ResolveInfo;
    .end local v9           #ri:Landroid/content/pm/ResolveInfo;
    :cond_4c
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private clearApplicationUserDataLI(Ljava/lang/String;)Z
    .registers 13
    .parameter "packageName"

    .prologue
    const/4 v9, 0x0

    const-string v10, "Package named \'"

    const-string v8, "\' doesn\'t exist."

    const-string v7, "PackageManager"

    .line 4423
    if-nez p1, :cond_12

    .line 4424
    const-string v5, "PackageManager"

    const-string v5, "Attempt to delete null packageName."

    invoke-static {v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v9

    .line 4461
    :goto_11
    return v5

    .line 4428
    :cond_12
    const/4 v1, 0x0

    .line 4429
    .local v1, dataOnly:Z
    iget-object v5, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v5

    .line 4430
    :try_start_16
    iget-object v6, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Package;

    .line 4431
    .local v2, p:Landroid/content/pm/PackageParser$Package;
    if-nez v2, :cond_56

    .line 4432
    const/4 v1, 0x1

    .line 4433
    iget-object v6, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    invoke-static {v6}, Lcom/android/server/PackageManagerService$Settings;->access$300(Lcom/android/server/PackageManagerService$Settings;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 4434
    .local v3, ps:Lcom/android/server/PackageManagerService$PackageSetting;
    if-eqz v3, :cond_33

    iget-object v6, v3, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-nez v6, :cond_54

    .line 4435
    :cond_33
    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Package named \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' doesn\'t exist."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4436
    monitor-exit v5

    move v5, v9

    goto :goto_11

    .line 4438
    :cond_54
    iget-object v2, v3, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    .line 4440
    .end local v3           #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_56
    monitor-exit v5
    :try_end_57
    .catchall {:try_start_16 .. :try_end_57} :catchall_7b

    .line 4441
    if-nez v1, :cond_a3

    .line 4443
    if-nez v2, :cond_7e

    .line 4444
    const-string v5, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Package named \'"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' doesn\'t exist."

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v9

    .line 4445
    goto :goto_11

    .line 4440
    .end local v2           #p:Landroid/content/pm/PackageParser$Package;
    :catchall_7b
    move-exception v6

    :try_start_7c
    monitor-exit v5
    :try_end_7d
    .catchall {:try_start_7c .. :try_end_7d} :catchall_7b

    throw v6

    .line 4447
    .restart local v2       #p:Landroid/content/pm/PackageParser$Package;
    :cond_7e
    iget-object v0, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 4448
    .local v0, applicationInfo:Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_a3

    .line 4449
    const-string v5, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has no applicationInfo."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v9

    .line 4450
    goto/16 :goto_11

    .line 4453
    .end local v0           #applicationInfo:Landroid/content/pm/ApplicationInfo;
    :cond_a3
    iget-object v5, p0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    if-eqz v5, :cond_ca

    .line 4454
    iget-object v5, p0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    invoke-virtual {v5, p1}, Lcom/android/server/Installer;->clearUserData(Ljava/lang/String;)I

    move-result v4

    .line 4455
    .local v4, retCode:I
    if-gez v4, :cond_ca

    .line 4456
    const-string v5, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t remove cache files for package: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v9

    .line 4458
    goto/16 :goto_11

    .line 4461
    .end local v4           #retCode:I
    :cond_ca
    const/4 v5, 0x1

    goto/16 :goto_11
.end method

.method private collectCertificatesLI(Landroid/content/pm/PackageParser;Lcom/android/server/PackageManagerService$PackageSetting;Landroid/content/pm/PackageParser$Package;Ljava/io/File;I)Z
    .registers 10
    .parameter "pp"
    .parameter "ps"
    .parameter "pkg"
    .parameter "srcFile"
    .parameter "parseFlags"

    .prologue
    .line 1802
    if-eqz p2, :cond_16

    iget-object v0, p2, Lcom/android/server/PackageManagerService$PackageSetting;->codePath:Ljava/io/File;

    invoke-virtual {v0, p4}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p2}, Lcom/android/server/PackageManagerService$PackageSetting;->getTimeStamp()J

    move-result-wide v0

    invoke-virtual {p4}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_40

    .line 1804
    :cond_16
    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " changed; collecting certs"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1805
    invoke-virtual {p1, p3, p5}, Landroid/content/pm/PackageParser;->collectCertificates(Landroid/content/pm/PackageParser$Package;I)Z

    move-result v0

    if-nez v0, :cond_40

    .line 1806
    invoke-virtual {p1}, Landroid/content/pm/PackageParser;->getParseError()I

    move-result v0

    iput v0, p0, Lcom/android/server/PackageManagerService;->mLastScanError:I

    .line 1807
    const/4 v0, 0x0

    .line 1811
    :goto_3f
    return v0

    :cond_40
    const/4 v0, 0x1

    goto :goto_3f
.end method

.method private static copyZipEntry(Ljava/util/zip/ZipEntry;Ljava/util/zip/ZipFile;Ljava/util/zip/ZipOutputStream;)V
    .registers 8
    .parameter "zipEntry"
    .parameter "inZipFile"
    .parameter "outZipStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4047
    const/16 v4, 0x1000

    new-array v0, v4, [B

    .line 4051
    .local v0, buffer:[B
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result v4

    if-nez v4, :cond_21

    .line 4053
    new-instance v2, Ljava/util/zip/ZipEntry;

    invoke-direct {v2, p0}, Ljava/util/zip/ZipEntry;-><init>(Ljava/util/zip/ZipEntry;)V

    .line 4058
    .local v2, newEntry:Ljava/util/zip/ZipEntry;
    :goto_f
    invoke-virtual {p2, v2}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 4060
    invoke-virtual {p1, p0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    .line 4061
    .local v1, data:Ljava/io/InputStream;
    :goto_16
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .local v3, num:I
    if-lez v3, :cond_2b

    .line 4062
    const/4 v4, 0x0

    invoke-virtual {p2, v0, v4, v3}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    goto :goto_16

    .line 4056
    .end local v1           #data:Ljava/io/InputStream;
    .end local v2           #newEntry:Ljava/util/zip/ZipEntry;
    .end local v3           #num:I
    :cond_21
    new-instance v2, Ljava/util/zip/ZipEntry;

    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .restart local v2       #newEntry:Ljava/util/zip/ZipEntry;
    goto :goto_f

    .line 4064
    .restart local v1       #data:Ljava/io/InputStream;
    .restart local v3       #num:I
    :cond_2b
    invoke-virtual {p2}, Ljava/util/zip/ZipOutputStream;->flush()V

    .line 4065
    return-void
.end method

.method private createTempPackageFile()Ljava/io/File;
    .registers 9

    .prologue
    const/4 v6, 0x0

    const-string v7, "PackageManager"

    .line 4086
    :try_start_3
    const-string v2, "vmdl"

    const-string v3, ".tmp"

    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mAppInstallDir:Ljava/io/File;

    invoke-static {v2, v3, v4}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_c} :catch_1a

    move-result-object v1

    .line 4092
    .local v1, tmpPackageFile:Ljava/io/File;
    :try_start_d
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x180

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-static {v2, v3, v4, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_18} :catch_25

    move-object v2, v1

    .line 4099
    .end local v1           #tmpPackageFile:Ljava/io/File;
    :goto_19
    return-object v2

    .line 4087
    :catch_1a
    move-exception v2

    move-object v0, v2

    .line 4088
    .local v0, e:Ljava/io/IOException;
    const-string v2, "PackageManager"

    const-string v2, "Couldn\'t create temp file for downloaded package file."

    invoke-static {v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v6

    .line 4089
    goto :goto_19

    .line 4095
    .end local v0           #e:Ljava/io/IOException;
    .restart local v1       #tmpPackageFile:Ljava/io/File;
    :catch_25
    move-exception v2

    move-object v0, v2

    .line 4096
    .restart local v0       #e:Ljava/io/IOException;
    const-string v2, "PackageManager"

    const-string v2, "Trouble getting the canoncical path for a temp file."

    invoke-static {v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v6

    .line 4097
    goto :goto_19
.end method

.method private deleteApplicationCacheFilesLI(Ljava/lang/String;)Z
    .registers 9
    .parameter "packageName"

    .prologue
    const/4 v5, 0x0

    const-string v6, "PackageManager"

    .line 4488
    if-nez p1, :cond_e

    .line 4489
    const-string v3, "PackageManager"

    const-string v3, "Attempt to delete null packageName."

    invoke-static {v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v5

    .line 4513
    :goto_d
    return v3

    .line 4493
    :cond_e
    iget-object v3, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v3

    .line 4494
    :try_start_11
    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Package;

    .line 4495
    .local v1, p:Landroid/content/pm/PackageParser$Package;
    monitor-exit v3
    :try_end_1a
    .catchall {:try_start_11 .. :try_end_1a} :catchall_3c

    .line 4496
    if-nez v1, :cond_3f

    .line 4497
    const-string v3, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package named \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' doesn\'t exist."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v5

    .line 4498
    goto :goto_d

    .line 4495
    .end local v1           #p:Landroid/content/pm/PackageParser$Package;
    :catchall_3c
    move-exception v4

    :try_start_3d
    monitor-exit v3
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    throw v4

    .line 4500
    .restart local v1       #p:Landroid/content/pm/PackageParser$Package;
    :cond_3f
    iget-object v0, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 4501
    .local v0, applicationInfo:Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_63

    .line 4502
    const-string v3, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has no applicationInfo."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v5

    .line 4503
    goto :goto_d

    .line 4505
    :cond_63
    iget-object v3, p0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    if-eqz v3, :cond_89

    .line 4506
    iget-object v3, p0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    invoke-virtual {v3, p1}, Lcom/android/server/Installer;->deleteCacheFiles(Ljava/lang/String;)I

    move-result v2

    .line 4507
    .local v2, retCode:I
    if-gez v2, :cond_89

    .line 4508
    const-string v3, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t remove cache files for package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v5

    .line 4510
    goto :goto_d

    .line 4513
    .end local v2           #retCode:I
    :cond_89
    const/4 v3, 0x1

    goto :goto_d
.end method

.method private deleteInstalledPackageLI(Landroid/content/pm/PackageParser$Package;ZILcom/android/server/PackageManagerService$PackageRemovedInfo;)Z
    .registers 9
    .parameter "p"
    .parameter "deleteCodeAndResources"
    .parameter "flags"
    .parameter "outInfo"

    .prologue
    .line 4322
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 4323
    .local v0, applicationInfo:Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_26

    .line 4324
    const-string v1, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has no applicationInfo."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4325
    const/4 v1, 0x0

    .line 4339
    :goto_25
    return v1

    .line 4327
    :cond_26
    if-eqz p4, :cond_2c

    .line 4328
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v1, p4, Lcom/android/server/PackageManagerService$PackageRemovedInfo;->uid:I

    .line 4332
    :cond_2c
    invoke-direct {p0, p1, p4, p3}, Lcom/android/server/PackageManagerService;->removePackageDataLI(Landroid/content/pm/PackageParser$Package;Lcom/android/server/PackageManagerService$PackageRemovedInfo;I)V

    .line 4335
    if-eqz p2, :cond_3a

    .line 4336
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/PackageManagerService;->deletePackageResourcesLI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4339
    :cond_3a
    const/4 v1, 0x1

    goto :goto_25
.end method

.method private deletePackageLI(Ljava/lang/String;ZILcom/android/server/PackageManagerService$PackageRemovedInfo;)Z
    .registers 14
    .parameter "packageName"
    .parameter "deleteCodeAndResources"
    .parameter "flags"
    .parameter "outInfo"

    .prologue
    const/4 v7, 0x0

    const-string v8, "Package named \'"

    const-string v6, "\' doesn\'t exist."

    const-string v5, "PackageManager"

    .line 4347
    if-nez p1, :cond_12

    .line 4348
    const-string v3, "PackageManager"

    const-string v3, "Attempt to delete null packageName."

    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v7

    .line 4388
    :goto_11
    return v3

    .line 4352
    :cond_12
    const/4 v0, 0x0

    .line 4353
    .local v0, dataOnly:Z
    iget-object v3, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v3

    .line 4354
    :try_start_16
    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Package;

    .line 4355
    .local v1, p:Landroid/content/pm/PackageParser$Package;
    if-nez v1, :cond_52

    .line 4357
    const/4 v0, 0x1

    .line 4358
    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    invoke-static {v4}, Lcom/android/server/PackageManagerService$Settings;->access$300(Lcom/android/server/PackageManagerService$Settings;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 4359
    .local v2, ps:Lcom/android/server/PackageManagerService$PackageSetting;
    if-nez v2, :cond_50

    .line 4360
    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Package named \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' doesn\'t exist."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4361
    monitor-exit v3

    move v3, v7

    goto :goto_11

    .line 4363
    :cond_50
    iget-object v1, v2, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    .line 4365
    .end local v2           #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_52
    monitor-exit v3
    :try_end_53
    .catchall {:try_start_16 .. :try_end_53} :catchall_75

    .line 4366
    if-nez v1, :cond_78

    .line 4367
    const-string v3, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package named \'"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' doesn\'t exist."

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v7

    .line 4368
    goto :goto_11

    .line 4365
    .end local v1           #p:Landroid/content/pm/PackageParser$Package;
    :catchall_75
    move-exception v4

    :try_start_76
    monitor-exit v3
    :try_end_77
    .catchall {:try_start_76 .. :try_end_77} :catchall_75

    throw v4

    .line 4371
    .restart local v1       #p:Landroid/content/pm/PackageParser$Package;
    :cond_78
    if-eqz v0, :cond_7f

    .line 4373
    invoke-direct {p0, v1, p4, p3}, Lcom/android/server/PackageManagerService;->removePackageDataLI(Landroid/content/pm/PackageParser$Package;Lcom/android/server/PackageManagerService$PackageRemovedInfo;I)V

    .line 4374
    const/4 v3, 0x1

    goto :goto_11

    .line 4377
    :cond_7f
    iget-object v3, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v3, :cond_a6

    .line 4378
    const-string v3, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has no applicationInfo."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v7

    .line 4379
    goto/16 :goto_11

    .line 4381
    :cond_a6
    iget-object v3, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_ce

    .line 4382
    const-string v3, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removing system package:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4385
    invoke-direct {p0, v1, p3, p4}, Lcom/android/server/PackageManagerService;->deleteSystemPackageLI(Landroid/content/pm/PackageParser$Package;ILcom/android/server/PackageManagerService$PackageRemovedInfo;)Z

    move-result v3

    goto/16 :goto_11

    .line 4387
    :cond_ce
    const-string v3, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removing non-system package:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4388
    invoke-direct {p0, v1, p2, p3, p4}, Lcom/android/server/PackageManagerService;->deleteInstalledPackageLI(Landroid/content/pm/PackageParser$Package;ZILcom/android/server/PackageManagerService$PackageRemovedInfo;)Z

    move-result v3

    goto/16 :goto_11
.end method

.method private deletePackageResourcesLI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .parameter "packageName"
    .parameter "sourceDir"
    .parameter "publicSourceDir"

    .prologue
    const-string v5, "PackageManager"

    .line 4300
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4301
    .local v2, sourceFile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2b

    .line 4302
    const-string v3, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package source "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " does not exist."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4305
    :cond_2b
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 4306
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4307
    .local v0, publicSourceFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 4308
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 4310
    :cond_3c
    iget-object v3, p0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    if-eqz v3, :cond_7c

    .line 4311
    iget-object v3, p0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/Installer;->rmdex(Ljava/lang/String;)I

    move-result v1

    .line 4312
    .local v1, retCode:I
    if-gez v1, :cond_7c

    .line 4313
    const-string v3, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t remove dex file for package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at location "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", retcode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4318
    .end local v1           #retCode:I
    :cond_7c
    return-void
.end method

.method private deletePackageX(Ljava/lang/String;ZZI)Z
    .registers 12
    .parameter "packageName"
    .parameter "sendBroadCast"
    .parameter "deleteCodeAndResources"
    .parameter "flags"

    .prologue
    const/4 v6, 0x1

    .line 4140
    new-instance v1, Lcom/android/server/PackageManagerService$PackageRemovedInfo;

    invoke-direct {v1}, Lcom/android/server/PackageManagerService$PackageRemovedInfo;-><init>()V

    .line 4143
    .local v1, info:Lcom/android/server/PackageManagerService$PackageRemovedInfo;
    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v4

    .line 4144
    :try_start_9
    invoke-direct {p0, p1, p3, p4, v1}, Lcom/android/server/PackageManagerService;->deletePackageLI(Ljava/lang/String;ZILcom/android/server/PackageManagerService$PackageRemovedInfo;)Z

    move-result v2

    .line 4145
    .local v2, res:Z
    monitor-exit v4
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_39

    .line 4147
    if-eqz v2, :cond_38

    if-eqz p2, :cond_38

    .line 4148
    iget-boolean v3, v1, Lcom/android/server/PackageManagerService$PackageRemovedInfo;->isRemovedPackageSystemUpdate:Z

    .line 4149
    .local v3, systemUpdate:Z
    invoke-virtual {v1, p3, v3}, Lcom/android/server/PackageManagerService$PackageRemovedInfo;->sendBroadcast(ZZ)V

    .line 4153
    if-eqz v3, :cond_38

    .line 4154
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, v6}, Landroid/os/Bundle;-><init>(I)V

    .line 4155
    .local v0, extras:Landroid/os/Bundle;
    const-string v4, "android.intent.extra.UID"

    iget v5, v1, Lcom/android/server/PackageManagerService$PackageRemovedInfo;->removedUid:I

    if-ltz v5, :cond_3c

    iget v5, v1, Lcom/android/server/PackageManagerService$PackageRemovedInfo;->removedUid:I

    :goto_26
    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4156
    const-string v4, "android.intent.extra.REPLACING"

    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4158
    const-string v4, "android.intent.action.PACKAGE_ADDED"

    invoke-static {v4, p1, v0}, Lcom/android/server/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 4159
    const-string v4, "android.intent.action.PACKAGE_REPLACED"

    invoke-static {v4, p1, v0}, Lcom/android/server/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 4162
    .end local v0           #extras:Landroid/os/Bundle;
    .end local v3           #systemUpdate:Z
    :cond_38
    return v2

    .line 4145
    .end local v2           #res:Z
    :catchall_39
    move-exception v5

    :try_start_3a
    monitor-exit v4
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw v5

    .line 4155
    .restart local v0       #extras:Landroid/os/Bundle;
    .restart local v2       #res:Z
    .restart local v3       #systemUpdate:Z
    :cond_3c
    iget v5, v1, Lcom/android/server/PackageManagerService$PackageRemovedInfo;->uid:I

    goto :goto_26
.end method

.method private deleteSystemPackageLI(Landroid/content/pm/PackageParser$Package;ILcom/android/server/PackageManagerService$PackageRemovedInfo;)Z
    .registers 15
    .parameter "p"
    .parameter "flags"
    .parameter "outInfo"

    .prologue
    .line 4240
    iget-object v6, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 4242
    .local v6, applicationInfo:Landroid/content/pm/ApplicationInfo;
    if-nez v6, :cond_26

    .line 4243
    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has no applicationInfo."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4244
    const/4 v0, 0x0

    .line 4295
    :goto_25
    return v0

    .line 4246
    :cond_26
    const/4 v9, 0x0

    .line 4250
    .local v9, ps:Lcom/android/server/PackageManagerService$PackageSetting;
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v0

    .line 4251
    :try_start_2a
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/PackageManagerService$Settings;->getDisabledSystemPkg(Ljava/lang/String;)Lcom/android/server/PackageManagerService$PackageSetting;

    move-result-object v9

    .line 4252
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_2a .. :try_end_33} :catchall_51

    .line 4253
    if-nez v9, :cond_54

    .line 4254
    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempt to delete system package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4255
    const/4 v0, 0x0

    goto :goto_25

    .line 4252
    :catchall_51
    move-exception v1

    :try_start_52
    monitor-exit v0
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_51

    throw v1

    .line 4257
    :cond_54
    const-string v0, "PackageManager"

    const-string v1, "Deleting system pkg from data partition"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4260
    const/4 v0, 0x1

    iput-boolean v0, p3, Lcom/android/server/PackageManagerService$PackageRemovedInfo;->isRemovedPackageSystemUpdate:Z

    .line 4261
    const/4 v7, 0x0

    .line 4262
    .local v7, deleteCodeAndResources:Z
    iget v0, v9, Lcom/android/server/PackageManagerService$PackageSetting;->versionCode:I

    iget v1, p1, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    if-ge v0, v1, :cond_74

    .line 4264
    const/4 v7, 0x1

    .line 4265
    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_6c

    .line 4266
    and-int/lit8 p2, p2, -0x2

    .line 4274
    :cond_6c
    :goto_6c
    invoke-direct {p0, p1, v7, p2, p3}, Lcom/android/server/PackageManagerService;->deleteInstalledPackageLI(Landroid/content/pm/PackageParser$Package;ZILcom/android/server/PackageManagerService$PackageRemovedInfo;)Z

    move-result v10

    .line 4275
    .local v10, ret:Z
    if-nez v10, :cond_7b

    .line 4276
    const/4 v0, 0x0

    goto :goto_25

    .line 4270
    .end local v10           #ret:Z
    :cond_74
    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_6c

    .line 4271
    or-int/lit8 p2, p2, 0x1

    goto :goto_6c

    .line 4278
    .restart local v10       #ret:Z
    :cond_7b
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v0

    .line 4280
    :try_start_7e
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/PackageManagerService$Settings;->enableSystemPackageLP(Ljava/lang/String;)Lcom/android/server/PackageManagerService$PackageSetting;

    .line 4281
    monitor-exit v0
    :try_end_86
    .catchall {:try_start_7e .. :try_end_86} :catchall_be

    .line 4283
    iget-object v1, v9, Lcom/android/server/PackageManagerService$PackageSetting;->codePath:Ljava/io/File;

    iget-object v2, v9, Lcom/android/server/PackageManagerService$PackageSetting;->codePath:Ljava/io/File;

    iget-object v3, v9, Lcom/android/server/PackageManagerService$PackageSetting;->resourcePath:Ljava/io/File;

    const/4 v4, 0x5

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/PackageManagerService;->scanPackageLI(Ljava/io/File;Ljava/io/File;Ljava/io/File;II)Landroid/content/pm/PackageParser$Package;

    move-result-object v8

    .line 4287
    .local v8, newPkg:Landroid/content/pm/PackageParser$Package;
    if-nez v8, :cond_c1

    .line 4288
    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to restore system package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/PackageManagerService;->mLastScanError:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4289
    const/4 v0, 0x0

    goto/16 :goto_25

    .line 4281
    .end local v8           #newPkg:Landroid/content/pm/PackageParser$Package;
    :catchall_be
    move-exception v1

    :try_start_bf
    monitor-exit v0
    :try_end_c0
    .catchall {:try_start_bf .. :try_end_c0} :catchall_be

    throw v1

    .line 4291
    .restart local v8       #newPkg:Landroid/content/pm/PackageParser$Package;
    :cond_c1
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v0

    .line 4292
    const/4 v1, 0x1

    :try_start_c5
    invoke-direct {p0, v8, v1}, Lcom/android/server/PackageManagerService;->grantPermissionsLP(Landroid/content/pm/PackageParser$Package;Z)V

    .line 4293
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    invoke-virtual {v1}, Lcom/android/server/PackageManagerService$Settings;->writeLP()V

    .line 4294
    monitor-exit v0

    .line 4295
    const/4 v0, 0x1

    goto/16 :goto_25

    .line 4294
    :catchall_d1
    move-exception v1

    monitor-exit v0
    :try_end_d3
    .catchall {:try_start_c5 .. :try_end_d3} :catchall_d1

    throw v1
.end method

.method private deleteTempPackageFiles()V
    .registers 7

    .prologue
    .line 4068
    new-instance v0, Lcom/android/server/PackageManagerService$6;

    invoke-direct {v0, p0}, Lcom/android/server/PackageManagerService$6;-><init>(Lcom/android/server/PackageManagerService;)V

    .line 4073
    .local v0, filter:Ljava/io/FilenameFilter;
    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mAppInstallDir:Ljava/io/File;

    invoke-virtual {v4, v0}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v3

    .line 4074
    .local v3, tmpFilesList:[Ljava/lang/String;
    if-nez v3, :cond_e

    .line 4081
    :cond_d
    return-void

    .line 4077
    :cond_e
    const/4 v1, 0x0

    .local v1, i:I
    :goto_f
    array-length v4, v3

    if-ge v1, v4, :cond_d

    .line 4078
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mAppInstallDir:Ljava/io/File;

    aget-object v5, v3, v1

    invoke-direct {v2, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4079
    .local v2, tmpFile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 4077
    add-int/lit8 v1, v1, 0x1

    goto :goto_f
.end method

.method private extractPublicFiles(Landroid/content/pm/PackageParser$Package;Ljava/io/File;)V
    .registers 12
    .parameter "newPackage"
    .parameter "publicZipFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, -0x1

    .line 4011
    new-instance v3, Ljava/util/zip/ZipOutputStream;

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v6}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 4013
    .local v3, publicZipOutStream:Ljava/util/zip/ZipOutputStream;
    new-instance v1, Ljava/util/zip/ZipFile;

    iget-object v6, p1, Landroid/content/pm/PackageParser$Package;->mPath:Ljava/lang/String;

    invoke-direct {v1, v6}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 4017
    .local v1, privateZip:Ljava/util/zip/ZipFile;
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v2

    .line 4018
    .local v2, privateZipEntries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :cond_16
    :goto_16
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_4c

    .line 4019
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/zip/ZipEntry;

    .line 4020
    .local v4, zipEntry:Ljava/util/zip/ZipEntry;
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    .line 4021
    .local v5, zipEntryName:Ljava/lang/String;
    const-string v6, "AndroidManifest.xml"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3e

    const-string v6, "resources.arsc"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3e

    const-string v6, "res/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 4025
    :cond_3e
    :try_start_3e
    invoke-static {v4, v1, v3}, Lcom/android/server/PackageManagerService;->copyZipEntry(Ljava/util/zip/ZipEntry;Ljava/util/zip/ZipFile;Ljava/util/zip/ZipOutputStream;)V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_42

    goto :goto_16

    .line 4026
    :catch_42
    move-exception v0

    .line 4028
    .local v0, e:Ljava/io/IOException;
    :try_start_43
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 4029
    throw v0
    :try_end_47
    .catchall {:try_start_43 .. :try_end_47} :catchall_47

    .line 4031
    :catchall_47
    move-exception v6

    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    throw v6

    .line 4037
    .end local v0           #e:Ljava/io/IOException;
    .end local v4           #zipEntry:Ljava/util/zip/ZipEntry;
    .end local v5           #zipEntryName:Ljava/lang/String;
    :cond_4c
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 4038
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x1a4

    invoke-static {v6, v7, v8, v8}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 4042
    return-void
.end method

.method private findPermissionTreeLP(Ljava/lang/String;)Lcom/android/server/PackageManagerService$BasePermission;
    .registers 6
    .parameter "permName"

    .prologue
    .line 1062
    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    iget-object v2, v2, Lcom/android/server/PackageManagerService$Settings;->mPermissionTrees:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageManagerService$BasePermission;

    .line 1063
    .local v0, bp:Lcom/android/server/PackageManagerService$BasePermission;
    iget-object v2, v0, Lcom/android/server/PackageManagerService$BasePermission;->name:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, v0, Lcom/android/server/PackageManagerService$BasePermission;->name:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v2, v3, :cond_c

    iget-object v2, v0, Lcom/android/server/PackageManagerService$BasePermission;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_c

    move-object v2, v0

    .line 1069
    .end local v0           #bp:Lcom/android/server/PackageManagerService$BasePermission;
    :goto_3b
    return-object v2

    :cond_3c
    const/4 v2, 0x0

    goto :goto_3b
.end method

.method private static fixProcessName(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .parameter "defProcessName"
    .parameter "processName"
    .parameter "uid"

    .prologue
    .line 1889
    if-nez p1, :cond_4

    move-object v0, p0

    .line 1892
    :goto_3
    return-object v0

    :cond_4
    move-object v0, p1

    goto :goto_3
.end method

.method private generateApplicationInfoFromSettingsLP(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    .registers 7
    .parameter "packageName"
    .parameter "flags"

    .prologue
    const/4 v3, 0x0

    .line 866
    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    invoke-static {v2}, Lcom/android/server/PackageManagerService$Settings;->access$300(Lcom/android/server/PackageManagerService$Settings;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 867
    .local v1, ps:Lcom/android/server/PackageManagerService$PackageSetting;
    if-eqz v1, :cond_25

    .line 868
    iget-object v2, v1, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-nez v2, :cond_1e

    .line 869
    invoke-direct {p0, p1, p2}, Lcom/android/server/PackageManagerService;->generatePackageInfoFromSettingsLP(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 870
    .local v0, pInfo:Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_1c

    .line 871
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 877
    .end local v0           #pInfo:Landroid/content/pm/PackageInfo;
    :goto_1b
    return-object v2

    .restart local v0       #pInfo:Landroid/content/pm/PackageInfo;
    :cond_1c
    move-object v2, v3

    .line 873
    goto :goto_1b

    .line 875
    .end local v0           #pInfo:Landroid/content/pm/PackageInfo;
    :cond_1e
    iget-object v2, v1, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    invoke-static {v2, p2}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/PackageParser$Package;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    goto :goto_1b

    :cond_25
    move-object v2, v3

    .line 877
    goto :goto_1b
.end method

.method private generatePackageInfoFromSettingsLP(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .registers 5
    .parameter "packageName"
    .parameter "flags"

    .prologue
    .line 881
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    invoke-static {v1}, Lcom/android/server/PackageManagerService$Settings;->access$300(Lcom/android/server/PackageManagerService$Settings;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 882
    .local v0, ps:Lcom/android/server/PackageManagerService$PackageSetting;
    if-eqz v0, :cond_26

    .line 883
    iget-object v1, v0, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-nez v1, :cond_1f

    .line 884
    new-instance v1, Landroid/content/pm/PackageParser$Package;

    invoke-direct {v1, p1}, Landroid/content/pm/PackageParser$Package;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    .line 885
    iget-object v1, v0, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object p1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 887
    :cond_1f
    iget-object v1, v0, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    invoke-virtual {p0, v1, p2}, Lcom/android/server/PackageManagerService;->generatePackageInfo(Landroid/content/pm/PackageParser$Package;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 889
    :goto_25
    return-object v1

    :cond_26
    const/4 v1, 0x0

    goto :goto_25
.end method

.method private getFwdLockedResource(Ljava/lang/String;)Ljava/io/File;
    .registers 5
    .parameter "pkgName"

    .prologue
    .line 3826
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".zip"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3827
    .local v0, publicZipFileName:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mAppInstallDir:Ljava/io/File;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method private getPackageSizeInfoLI(Ljava/lang/String;Landroid/content/pm/PackageStats;)Z
    .registers 14
    .parameter "packageName"
    .parameter "pStats"

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    const-string v8, "PackageManager"

    .line 4541
    if-nez p1, :cond_f

    .line 4542
    const-string v6, "PackageManager"

    const-string v6, "Attempt to get size of null packageName."

    invoke-static {v8, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v10

    .line 4577
    :goto_e
    return v6

    .line 4546
    :cond_f
    const/4 v1, 0x0

    .line 4547
    .local v1, dataOnly:Z
    iget-object v6, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v6

    .line 4548
    :try_start_13
    iget-object v7, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Package;

    .line 4549
    .local v2, p:Landroid/content/pm/PackageParser$Package;
    if-nez v2, :cond_53

    .line 4550
    const/4 v1, 0x1

    .line 4551
    iget-object v7, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    invoke-static {v7}, Lcom/android/server/PackageManagerService$Settings;->access$300(Lcom/android/server/PackageManagerService$Settings;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 4552
    .local v3, ps:Lcom/android/server/PackageManagerService$PackageSetting;
    if-eqz v3, :cond_30

    iget-object v7, v3, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-nez v7, :cond_51

    .line 4553
    :cond_30
    const-string v7, "PackageManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Package named \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' doesn\'t exist."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4554
    monitor-exit v6

    move v6, v10

    goto :goto_e

    .line 4556
    :cond_51
    iget-object v2, v3, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    .line 4558
    .end local v3           #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_53
    monitor-exit v6
    :try_end_54
    .catchall {:try_start_13 .. :try_end_54} :catchall_7b

    .line 4559
    const/4 v4, 0x0

    .line 4560
    .local v4, publicSrcDir:Ljava/lang/String;
    if-nez v1, :cond_87

    .line 4561
    iget-object v0, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 4562
    .local v0, applicationInfo:Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_7e

    .line 4563
    const-string v6, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " has no applicationInfo."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v10

    .line 4564
    goto :goto_e

    .line 4558
    .end local v0           #applicationInfo:Landroid/content/pm/ApplicationInfo;
    .end local v2           #p:Landroid/content/pm/PackageParser$Package;
    .end local v4           #publicSrcDir:Ljava/lang/String;
    :catchall_7b
    move-exception v7

    :try_start_7c
    monitor-exit v6
    :try_end_7d
    .catchall {:try_start_7c .. :try_end_7d} :catchall_7b

    throw v7

    .line 4566
    .restart local v0       #applicationInfo:Landroid/content/pm/ApplicationInfo;
    .restart local v2       #p:Landroid/content/pm/PackageParser$Package;
    .restart local v4       #publicSrcDir:Ljava/lang/String;
    :cond_7e
    invoke-direct {p0, v2}, Lcom/android/server/PackageManagerService;->isForwardLocked(Landroid/content/pm/PackageParser$Package;)Z

    move-result v6

    if-eqz v6, :cond_98

    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    move-object v4, v6

    .line 4568
    .end local v0           #applicationInfo:Landroid/content/pm/ApplicationInfo;
    :cond_87
    :goto_87
    iget-object v6, p0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    if-eqz v6, :cond_9e

    .line 4569
    iget-object v6, p0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    iget-object v7, v2, Landroid/content/pm/PackageParser$Package;->mPath:Ljava/lang/String;

    invoke-virtual {v6, p1, v7, v4, p2}, Lcom/android/server/Installer;->getSizeInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageStats;)I

    move-result v5

    .line 4571
    .local v5, res:I
    if-gez v5, :cond_9b

    move v6, v10

    .line 4572
    goto/16 :goto_e

    .line 4566
    .end local v5           #res:I
    .restart local v0       #applicationInfo:Landroid/content/pm/ApplicationInfo;
    :cond_98
    const/4 v6, 0x0

    move-object v4, v6

    goto :goto_87

    .end local v0           #applicationInfo:Landroid/content/pm/ApplicationInfo;
    .restart local v5       #res:I
    :cond_9b
    move v6, v9

    .line 4574
    goto/16 :goto_e

    .end local v5           #res:I
    :cond_9e
    move v6, v9

    .line 4577
    goto/16 :goto_e
.end method

.method private grantPermissionsLP(Landroid/content/pm/PackageParser$Package;Z)V
    .registers 23
    .parameter "pkg"
    .parameter "replace"

    .prologue
    .line 2874
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    move-object v15, v0

    check-cast v15, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 2875
    .local v15, ps:Lcom/android/server/PackageManagerService$PackageSetting;
    if-nez v15, :cond_a

    .line 2998
    :cond_9
    :goto_9
    return-void

    .line 2878
    :cond_a
    move-object v0, v15

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    move-object/from16 v17, v0

    if-eqz v17, :cond_155

    move-object v0, v15

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    move-object/from16 v17, v0

    move-object/from16 v8, v17

    .line 2879
    .local v8, gp:Lcom/android/server/PackageManagerService$GrantedPermissions;
    :goto_18
    const/4 v5, 0x0

    .line 2881
    .local v5, addedPermission:Z
    if-eqz p2, :cond_37

    .line 2882
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object v1, v15

    iput-boolean v0, v1, Lcom/android/server/PackageManagerService$PackageSetting;->permissionsFixed:Z

    .line 2883
    if-ne v8, v15, :cond_37

    .line 2884
    move-object v0, v8

    iget-object v0, v0, Lcom/android/server/PackageManagerService$GrantedPermissions;->grantedPermissions:Ljava/util/HashSet;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashSet;->clear()V

    .line 2885
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mGlobalGids:[I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v8

    iput-object v0, v1, Lcom/android/server/PackageManagerService$GrantedPermissions;->gids:[I

    .line 2889
    :cond_37
    move-object v0, v8

    iget-object v0, v0, Lcom/android/server/PackageManagerService$GrantedPermissions;->gids:[I

    move-object/from16 v17, v0

    if-nez v17, :cond_49

    .line 2890
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mGlobalGids:[I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v8

    iput-object v0, v1, Lcom/android/server/PackageManagerService$GrantedPermissions;->gids:[I

    .line 2893
    :cond_49
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2894
    .local v3, N:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_54
    if-ge v9, v3, :cond_2d8

    .line 2895
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move v1, v9

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 2896
    .local v11, name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mPermissions:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/PackageManagerService$BasePermission;

    .line 2897
    .local v7, bp:Lcom/android/server/PackageManagerService$BasePermission;
    if-eqz v7, :cond_158

    move-object v0, v7

    iget-object v0, v0, Lcom/android/server/PackageManagerService$BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    move-object/from16 v17, v0

    move-object/from16 v13, v17

    .line 2904
    .local v13, p:Landroid/content/pm/PackageParser$Permission;
    :goto_83
    if-eqz v13, :cond_2ab

    .line 2905
    move-object v0, v13

    iget-object v0, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    move-object v14, v0

    .line 2907
    .local v14, perm:Ljava/lang/String;
    move-object v0, v13

    iget-object v0, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    move/from16 v17, v0

    if-eqz v17, :cond_af

    move-object v0, v13

    iget-object v0, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_15e

    .line 2909
    :cond_af
    const/4 v6, 0x1

    .line 2941
    .local v6, allowed:Z
    :cond_b0
    :goto_b0
    if-eqz v6, :cond_249

    .line 2942
    move-object v0, v15

    iget v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->pkgFlags:I

    move/from16 v17, v0

    and-int/lit8 v17, v17, 0x1

    if-nez v17, :cond_122

    move-object v0, v15

    iget-boolean v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->permissionsFixed:Z

    move/from16 v17, v0

    if-eqz v17, :cond_122

    .line 2946
    move-object v0, v8

    iget-object v0, v0, Lcom/android/server/PackageManagerService$GrantedPermissions;->loadedPermissions:Ljava/util/HashSet;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_122

    .line 2947
    const/4 v6, 0x0

    .line 2951
    sget-object v17, Landroid/content/pm/PackageParser;->NEW_PERMISSIONS:[Landroid/content/pm/PackageParser$NewPermissionInfo;

    move-object/from16 v0, v17

    array-length v0, v0

    move v4, v0

    .line 2952
    .local v4, NP:I
    const/4 v10, 0x0

    .local v10, ip:I
    :goto_d8
    if-ge v10, v4, :cond_122

    .line 2953
    sget-object v17, Landroid/content/pm/PackageParser;->NEW_PERMISSIONS:[Landroid/content/pm/PackageParser$NewPermissionInfo;

    aget-object v12, v17, v10

    .line 2955
    .local v12, npi:Landroid/content/pm/PackageParser$NewPermissionInfo;
    move-object v0, v12

    iget-object v0, v0, Landroid/content/pm/PackageParser$NewPermissionInfo;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_212

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move/from16 v17, v0

    move-object v0, v12

    iget v0, v0, Landroid/content/pm/PackageParser$NewPermissionInfo;->sdkVersion:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_212

    .line 2957
    const/4 v6, 0x1

    .line 2958
    const-string v17, "PackageManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Auto-granting WRITE_EXTERNAL_STORAGE to old pkg "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2965
    .end local v4           #NP:I
    .end local v10           #ip:I
    .end local v12           #npi:Landroid/content/pm/PackageParser$NewPermissionInfo;
    :cond_122
    if-eqz v6, :cond_216

    .line 2966
    move-object v0, v8

    iget-object v0, v0, Lcom/android/server/PackageManagerService$GrantedPermissions;->grantedPermissions:Ljava/util/HashSet;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_151

    .line 2967
    const/4 v5, 0x1

    .line 2968
    move-object v0, v8

    iget-object v0, v0, Lcom/android/server/PackageManagerService$GrantedPermissions;->grantedPermissions:Ljava/util/HashSet;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2969
    move-object v0, v8

    iget-object v0, v0, Lcom/android/server/PackageManagerService$GrantedPermissions;->gids:[I

    move-object/from16 v17, v0

    move-object v0, v7

    iget-object v0, v0, Lcom/android/server/PackageManagerService$BasePermission;->gids:[I

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v18}, Lcom/android/server/PackageManagerService;->appendInts([I[I)[I

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v8

    iput-object v0, v1, Lcom/android/server/PackageManagerService$GrantedPermissions;->gids:[I

    .line 2894
    .end local v6           #allowed:Z
    .end local v14           #perm:Ljava/lang/String;
    :cond_151
    :goto_151
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_54

    .end local v3           #N:I
    .end local v5           #addedPermission:Z
    .end local v7           #bp:Lcom/android/server/PackageManagerService$BasePermission;
    .end local v8           #gp:Lcom/android/server/PackageManagerService$GrantedPermissions;
    .end local v9           #i:I
    .end local v11           #name:Ljava/lang/String;
    .end local v13           #p:Landroid/content/pm/PackageParser$Permission;
    :cond_155
    move-object v8, v15

    .line 2878
    goto/16 :goto_18

    .line 2897
    .restart local v3       #N:I
    .restart local v5       #addedPermission:Z
    .restart local v7       #bp:Lcom/android/server/PackageManagerService$BasePermission;
    .restart local v8       #gp:Lcom/android/server/PackageManagerService$GrantedPermissions;
    .restart local v9       #i:I
    .restart local v11       #name:Ljava/lang/String;
    :cond_158
    const/16 v17, 0x0

    move-object/from16 v13, v17

    goto/16 :goto_83

    .line 2910
    .restart local v13       #p:Landroid/content/pm/PackageParser$Permission;
    .restart local v14       #perm:Ljava/lang/String;
    :cond_15e
    move-object v0, v13

    iget-object v0, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_184

    move-object v0, v13

    iget-object v0, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    move/from16 v17, v0

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_20f

    .line 2912
    :cond_184
    move-object v0, v13

    iget-object v0, v0, Landroid/content/pm/PackageParser$Permission;->owner:Landroid/content/pm/PackageParser$Package;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/PackageManagerService;->checkSignaturesLP(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageParser$Package;)I

    move-result v17

    if-eqz v17, :cond_1a7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPlatformPackage:Landroid/content/pm/PackageParser$Package;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/PackageManagerService;->checkSignaturesLP(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageParser$Package;)I

    move-result v17

    if-nez v17, :cond_204

    :cond_1a7
    const/16 v17, 0x1

    move/from16 v6, v17

    .line 2916
    .restart local v6       #allowed:Z
    :goto_1ab
    move-object v0, v13

    iget-object v0, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    move/from16 v17, v0

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_b0

    .line 2917
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v17, v0

    and-int/lit8 v17, v17, 0x1

    if-eqz v17, :cond_b0

    .line 2920
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v17, v0

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0x80

    move/from16 v17, v0

    if-eqz v17, :cond_20c

    .line 2922
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/PackageManagerService$Settings;->getDisabledSystemPkg(Ljava/lang/String;)Lcom/android/server/PackageManagerService$PackageSetting;

    move-result-object v16

    .line 2923
    .local v16, sysPs:Lcom/android/server/PackageManagerService$PackageSetting;
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->grantedPermissions:Ljava/util/HashSet;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_209

    .line 2924
    const/4 v6, 0x1

    goto/16 :goto_b0

    .line 2912
    .end local v6           #allowed:Z
    .end local v16           #sysPs:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_204
    const/16 v17, 0x0

    move/from16 v6, v17

    goto :goto_1ab

    .line 2926
    .restart local v6       #allowed:Z
    .restart local v16       #sysPs:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_209
    const/4 v6, 0x0

    goto/16 :goto_b0

    .line 2929
    .end local v16           #sysPs:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_20c
    const/4 v6, 0x1

    goto/16 :goto_b0

    .line 2934
    .end local v6           #allowed:Z
    :cond_20f
    const/4 v6, 0x0

    .restart local v6       #allowed:Z
    goto/16 :goto_b0

    .line 2952
    .restart local v4       #NP:I
    .restart local v10       #ip:I
    .restart local v12       #npi:Landroid/content/pm/PackageParser$NewPermissionInfo;
    :cond_212
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_d8

    .line 2972
    .end local v4           #NP:I
    .end local v10           #ip:I
    .end local v12           #npi:Landroid/content/pm/PackageParser$NewPermissionInfo;
    :cond_216
    const-string v17, "PackageManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Not granting permission "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " to package "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " because it was previously installed without"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_151

    .line 2977
    :cond_249
    const-string v17, "PackageManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Not granting permission "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " to package "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " (protectionLevel="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object v0, v13

    iget-object v0, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " flags=0x"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ")"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_151

    .line 2984
    .end local v6           #allowed:Z
    .end local v14           #perm:Ljava/lang/String;
    :cond_2ab
    const-string v17, "PackageManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Unknown permission "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " in package "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_151

    .line 2989
    .end local v7           #bp:Lcom/android/server/PackageManagerService$BasePermission;
    .end local v11           #name:Ljava/lang/String;
    .end local v13           #p:Landroid/content/pm/PackageParser$Permission;
    :cond_2d8
    if-nez v5, :cond_2dc

    if-eqz p2, :cond_2ec

    :cond_2dc
    move-object v0, v15

    iget-boolean v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->permissionsFixed:Z

    move/from16 v17, v0

    if-nez v17, :cond_2ec

    move-object v0, v15

    iget v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->pkgFlags:I

    move/from16 v17, v0

    and-int/lit8 v17, v17, 0x1

    if-eqz v17, :cond_2f9

    :cond_2ec
    move-object v0, v15

    iget v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->pkgFlags:I

    move/from16 v17, v0

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0x80

    move/from16 v17, v0

    if-eqz v17, :cond_9

    .line 2995
    :cond_2f9
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object v1, v15

    iput-boolean v0, v1, Lcom/android/server/PackageManagerService$PackageSetting;->permissionsFixed:Z

    .line 2996
    new-instance v17, Ljava/util/HashSet;

    move-object v0, v8

    iget-object v0, v0, Lcom/android/server/PackageManagerService$GrantedPermissions;->grantedPermissions:Ljava/util/HashSet;

    move-object/from16 v18, v0

    invoke-direct/range {v17 .. v18}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, v17

    move-object v1, v8

    iput-object v0, v1, Lcom/android/server/PackageManagerService$GrantedPermissions;->loadedPermissions:Ljava/util/HashSet;

    goto/16 :goto_9
.end method

.method private installNewPackageLI(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Landroid/content/pm/PackageParser$Package;ZZLjava/lang/String;Lcom/android/server/PackageManagerService$PackageInstalledInfo;)V
    .registers 29
    .parameter "pkgName"
    .parameter "tmpPackageFile"
    .parameter "destFilePath"
    .parameter "destPackageFile"
    .parameter "destResourceFile"
    .parameter "pkg"
    .parameter "forwardLocked"
    .parameter "newInstall"
    .parameter "installerPackageName"
    .parameter "res"

    .prologue
    .line 3499
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mAppDataDir:Ljava/io/File;

    move-object v6, v0

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v17

    .line 3500
    .local v17, dataDirExists:Z
    move-object/from16 v0, p1

    move-object/from16 v1, p10

    iput-object v0, v1, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->name:Ljava/lang/String;

    .line 3501
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object v5, v0

    monitor-enter v5

    .line 3502
    :try_start_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mAppDirs:Ljava/util/HashMap;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_63

    .line 3504
    :cond_3a
    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Attempt to re-install "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " without first uninstalling."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3506
    const/4 v6, -0x1

    move v0, v6

    move-object/from16 v1, p10

    iput v0, v1, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->returnCode:I

    .line 3507
    monitor-exit v5

    .line 3549
    :cond_62
    :goto_62
    return-void

    .line 3509
    :cond_63
    monitor-exit v5
    :try_end_64
    .catchall {:try_start_1e .. :try_end_64} :catchall_bf

    .line 3510
    invoke-virtual/range {p4 .. p4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_6d

    .line 3513
    invoke-virtual/range {p4 .. p4}, Ljava/io/File;->delete()Z

    .line 3515
    :cond_6d
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/PackageManagerService;->mLastScanError:I

    .line 3516
    const/4 v10, 0x0

    if-eqz p7, :cond_c2

    const/16 v5, 0x10

    :goto_78
    or-int/lit8 v5, v5, 0xd

    if-eqz p8, :cond_c4

    const/16 v6, 0x20

    :goto_7e
    or-int v11, v5, v6

    move-object/from16 v5, p0

    move-object/from16 v6, p2

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v5 .. v11}, Lcom/android/server/PackageManagerService;->scanPackageLI(Ljava/io/File;Ljava/io/File;Ljava/io/File;Landroid/content/pm/PackageParser$Package;II)Landroid/content/pm/PackageParser$Package;

    move-result-object v12

    .line 3522
    .local v12, newPackage:Landroid/content/pm/PackageParser$Package;
    if-nez v12, :cond_c6

    .line 3523
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Package couldn\'t be installed in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3524
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PackageManagerService;->mLastScanError:I

    move v5, v0

    move v0, v5

    move-object/from16 v1, p10

    iput v0, v1, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->returnCode:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_62

    .line 3525
    const/4 v5, -0x2

    move v0, v5

    move-object/from16 v1, p10

    iput v0, v1, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->returnCode:I

    goto :goto_62

    .line 3509
    .end local v12           #newPackage:Landroid/content/pm/PackageParser$Package;
    :catchall_bf
    move-exception v6

    :try_start_c0
    monitor-exit v5
    :try_end_c1
    .catchall {:try_start_c0 .. :try_end_c1} :catchall_bf

    throw v6

    .line 3516
    :cond_c2
    const/4 v5, 0x0

    goto :goto_78

    :cond_c4
    const/4 v6, 0x0

    goto :goto_7e

    .line 3528
    .restart local v12       #newPackage:Landroid/content/pm/PackageParser$Package;
    :cond_c6
    const/4 v13, 0x1

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move/from16 v14, p7

    move-object/from16 v15, p9

    move-object/from16 v16, p10

    invoke-direct/range {v5 .. v16}, Lcom/android/server/PackageManagerService;->updateSettingsLI(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageParser$Package;ZZLjava/lang/String;Lcom/android/server/PackageManagerService$PackageInstalledInfo;)V

    .line 3538
    move-object/from16 v0, p10

    iget v0, v0, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->returnCode:I

    move v5, v0

    const/4 v6, 0x1

    if-eq v5, v6, :cond_62

    .line 3543
    const/4 v5, 0x1

    if-eqz v17, :cond_fb

    const/4 v6, 0x1

    :goto_ea
    move-object/from16 v0, p10

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/PackageManagerService$PackageRemovedInfo;

    move-object v7, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v5

    move v3, v6

    move-object v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/PackageManagerService;->deletePackageLI(Ljava/lang/String;ZILcom/android/server/PackageManagerService$PackageRemovedInfo;)Z

    goto/16 :goto_62

    :cond_fb
    const/4 v6, 0x0

    goto :goto_ea
.end method

.method private installPackageLI(Landroid/net/Uri;IZLjava/lang/String;)Lcom/android/server/PackageManagerService$PackageInstalledInfo;
    .registers 30
    .parameter "pPackageURI"
    .parameter "pFlags"
    .parameter "newInstall"
    .parameter "installerPackageName"

    .prologue
    .line 3832
    const/4 v7, 0x0

    .line 3833
    .local v7, tmpPackageFile:Ljava/io/File;
    const/4 v6, 0x0

    .line 3834
    .local v6, pkgName:Ljava/lang/String;
    const/4 v12, 0x0

    .line 3835
    .local v12, forwardLocked:Z
    const/16 v23, 0x0

    .line 3837
    .local v23, replacingExistingPackage:Z
    new-instance v15, Lcom/android/server/PackageManagerService$PackageInstalledInfo;

    move-object v0, v15

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/PackageManagerService$PackageInstalledInfo;-><init>(Lcom/android/server/PackageManagerService;)V

    .line 3838
    .local v15, res:Lcom/android/server/PackageManagerService$PackageInstalledInfo;
    const/4 v5, 0x1

    iput v5, v15, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->returnCode:I

    .line 3839
    const/4 v5, -0x1

    iput v5, v15, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->uid:I

    .line 3840
    const/4 v5, 0x0

    iput-object v5, v15, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    .line 3841
    new-instance v5, Lcom/android/server/PackageManagerService$PackageRemovedInfo;

    invoke-direct {v5}, Lcom/android/server/PackageManagerService$PackageRemovedInfo;-><init>()V

    iput-object v5, v15, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/PackageManagerService$PackageRemovedInfo;

    .line 3844
    :try_start_1d
    invoke-direct/range {p0 .. p0}, Lcom/android/server/PackageManagerService;->createTempPackageFile()Ljava/io/File;

    move-result-object v7

    .line 3845
    if-nez v7, :cond_32

    .line 3846
    const/4 v5, -0x4

    iput v5, v15, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->returnCode:I
    :try_end_26
    .catchall {:try_start_1d .. :try_end_26} :catchall_232

    .line 3959
    if-eqz v7, :cond_31

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_31

    .line 3960
    :goto_2e
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 3963
    :cond_31
    return-object v15

    .line 3849
    :cond_32
    :try_start_32
    invoke-virtual {v7}, Ljava/io/File;->deleteOnExit()V

    .line 3850
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    const-string v8, "file"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_69

    .line 3851
    new-instance v24, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v24

    move-object v1, v5

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3855
    .local v24, srcPackageFile:Ljava/io/File;
    move-object/from16 v0, v24

    move-object v1, v7

    invoke-static {v0, v1}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_102

    .line 3856
    const-string v5, "PackageManager"

    const-string v8, "Couldn\'t copy package file to temp file."

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3857
    const/4 v5, -0x4

    iput v5, v15, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->returnCode:I
    :try_end_60
    .catchall {:try_start_32 .. :try_end_60} :catchall_232

    .line 3959
    if-eqz v7, :cond_31

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_31

    goto :goto_2e

    .line 3860
    .end local v24           #srcPackageFile:Ljava/io/File;
    :cond_69
    :try_start_69
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    const-string v8, "content"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_72
    .catchall {:try_start_69 .. :try_end_72} :catchall_232

    move-result v5

    if-eqz v5, :cond_da

    .line 3863
    :try_start_75
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "r"

    move-object v0, v5

    move-object/from16 v1, p1

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_87
    .catchall {:try_start_75 .. :try_end_87} :catchall_232
    .catch Ljava/io/FileNotFoundException; {:try_start_75 .. :try_end_87} :catch_9d

    move-result-object v19

    .line 3869
    .local v19, fd:Landroid/os/ParcelFileDescriptor;
    if-nez v19, :cond_b4

    .line 3870
    :try_start_8a
    const-string v5, "PackageManager"

    const-string v8, "Couldn\'t open file descriptor from download service (null)."

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3871
    const/4 v5, -0x4

    iput v5, v15, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->returnCode:I
    :try_end_94
    .catchall {:try_start_8a .. :try_end_94} :catchall_232

    .line 3959
    if-eqz v7, :cond_31

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_31

    goto :goto_2e

    .line 3864
    .end local v19           #fd:Landroid/os/ParcelFileDescriptor;
    :catch_9d
    move-exception v5

    move-object/from16 v18, v5

    .line 3865
    .local v18, e:Ljava/io/FileNotFoundException;
    :try_start_a0
    const-string v5, "PackageManager"

    const-string v8, "Couldn\'t open file descriptor from download service."

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3866
    const/4 v5, -0x4

    iput v5, v15, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->returnCode:I
    :try_end_aa
    .catchall {:try_start_a0 .. :try_end_aa} :catchall_232

    .line 3959
    if-eqz v7, :cond_31

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_31

    goto/16 :goto_2e

    .line 3878
    .end local v18           #e:Ljava/io/FileNotFoundException;
    .restart local v19       #fd:Landroid/os/ParcelFileDescriptor;
    :cond_b4
    :try_start_b4
    new-instance v17, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 3882
    .local v17, dlStream:Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;
    move-object/from16 v0, v17

    move-object v1, v7

    invoke-static {v0, v1}, Landroid/os/FileUtils;->copyToFile(Ljava/io/InputStream;Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_102

    .line 3883
    const-string v5, "PackageManager"

    const-string v8, "Couldn\'t copy package stream to temp file."

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3884
    const/4 v5, -0x4

    iput v5, v15, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->returnCode:I
    :try_end_d0
    .catchall {:try_start_b4 .. :try_end_d0} :catchall_232

    .line 3959
    if-eqz v7, :cond_31

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_31

    goto/16 :goto_2e

    .line 3888
    .end local v17           #dlStream:Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;
    .end local v19           #fd:Landroid/os/ParcelFileDescriptor;
    :cond_da
    :try_start_da
    const-string v5, "PackageManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Package URI is not \'file:\' or \'content:\' - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v0, v8

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3889
    const/4 v5, -0x3

    iput v5, v15, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->returnCode:I
    :try_end_f8
    .catchall {:try_start_da .. :try_end_f8} :catchall_232

    .line 3959
    if-eqz v7, :cond_31

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_31

    goto/16 :goto_2e

    .line 3892
    :cond_102
    :try_start_102
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    invoke-static {v5, v8}, Landroid/content/pm/PackageParser;->parsePackageName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 3894
    if-nez v6, :cond_132

    .line 3895
    const-string v5, "PackageManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Couldn\'t find a package name in : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3896
    const/4 v5, -0x2

    iput v5, v15, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->returnCode:I
    :try_end_128
    .catchall {:try_start_102 .. :try_end_128} :catchall_232

    .line 3959
    if-eqz v7, :cond_31

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_31

    goto/16 :goto_2e

    .line 3899
    :cond_132
    :try_start_132
    iput-object v6, v15, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->name:Ljava/lang/String;

    .line 3901
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ".apk"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 3902
    .local v21, pkgFileName:Ljava/lang/String;
    and-int/lit8 v5, p2, 0x1

    if-eqz v5, :cond_1c3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mDrmAppPrivateInstallDir:Ljava/io/File;

    move-object v5, v0

    move-object/from16 v16, v5

    .line 3905
    .local v16, destDir:Ljava/io/File;
    :goto_152
    new-instance v9, Ljava/io/File;

    move-object v0, v9

    move-object/from16 v1, v16

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3906
    .local v9, destPackageFile:Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    .line 3908
    .local v8, destFilePath:Ljava/lang/String;
    and-int/lit8 v5, p2, 0x1

    if-eqz v5, :cond_1cb

    .line 3909
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/server/PackageManagerService;->getFwdLockedResource(Ljava/lang/String;)Ljava/io/File;

    move-result-object v10

    .line 3910
    .local v10, destResourceFile:Ljava/io/File;
    const/4 v12, 0x1

    .line 3915
    :goto_16c
    const/16 v20, 0x2

    .line 3916
    .local v20, parseFlags:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PackageManagerService;->mDefParseFlags:I

    move v5, v0

    or-int v20, v20, v5

    .line 3917
    new-instance v22, Landroid/content/pm/PackageParser;

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-direct {v0, v1}, Landroid/content/pm/PackageParser;-><init>(Ljava/lang/String;)V

    .line 3918
    .local v22, pp:Landroid/content/pm/PackageParser;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSeparateProcesses:[Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageParser;->setSeparateProcesses([Ljava/lang/String;)V

    .line 3919
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PackageManagerService;->mSdkVersion:I

    move v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSdkCodename:Ljava/lang/String;

    move-object v11, v0

    move-object/from16 v0, v22

    move v1, v5

    move-object v2, v11

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageParser;->setSdkVersion(ILjava/lang/String;)V

    .line 3920
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mMetrics:Landroid/util/DisplayMetrics;

    move-object v11, v0

    move-object/from16 v0, v22

    move-object v1, v7

    move-object v2, v5

    move-object v3, v11

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/pm/PackageParser;->parsePackage(Ljava/io/File;Ljava/lang/String;Landroid/util/DisplayMetrics;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v11

    .line 3922
    .local v11, pkg:Landroid/content/pm/PackageParser$Package;
    if-nez v11, :cond_1cd

    .line 3923
    invoke-virtual/range {v22 .. v22}, Landroid/content/pm/PackageParser;->getParseError()I

    move-result v5

    iput v5, v15, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->returnCode:I
    :try_end_1b9
    .catchall {:try_start_132 .. :try_end_1b9} :catchall_232

    .line 3959
    if-eqz v7, :cond_31

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_31

    goto/16 :goto_2e

    .line 3902
    .end local v8           #destFilePath:Ljava/lang/String;
    .end local v9           #destPackageFile:Ljava/io/File;
    .end local v10           #destResourceFile:Ljava/io/File;
    .end local v11           #pkg:Landroid/content/pm/PackageParser$Package;
    .end local v16           #destDir:Ljava/io/File;
    .end local v20           #parseFlags:I
    .end local v22           #pp:Landroid/content/pm/PackageParser;
    :cond_1c3
    :try_start_1c3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mAppInstallDir:Ljava/io/File;

    move-object v5, v0

    move-object/from16 v16, v5

    goto :goto_152

    .line 3912
    .restart local v8       #destFilePath:Ljava/lang/String;
    .restart local v9       #destPackageFile:Ljava/io/File;
    .restart local v16       #destDir:Ljava/io/File;
    :cond_1cb
    move-object v10, v9

    .restart local v10       #destResourceFile:Ljava/io/File;
    goto :goto_16c

    .line 3926
    .restart local v11       #pkg:Landroid/content/pm/PackageParser$Package;
    .restart local v20       #parseFlags:I
    .restart local v22       #pp:Landroid/content/pm/PackageParser;
    :cond_1cd
    iget-object v5, v11, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v5, v5, 0x100

    if-eqz v5, :cond_1e7

    .line 3927
    and-int/lit8 v5, p2, 0x4

    if-nez v5, :cond_1e7

    .line 3928
    const/16 v5, -0xf

    iput v5, v15, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->returnCode:I
    :try_end_1dd
    .catchall {:try_start_1c3 .. :try_end_1dd} :catchall_232

    .line 3959
    if-eqz v7, :cond_31

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_31

    goto/16 :goto_2e

    .line 3932
    :cond_1e7
    :try_start_1e7
    move-object/from16 v0, v22

    move-object v1, v11

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageParser;->collectCertificates(Landroid/content/pm/PackageParser$Package;I)Z

    move-result v5

    if-nez v5, :cond_202

    .line 3933
    invoke-virtual/range {v22 .. v22}, Landroid/content/pm/PackageParser;->getParseError()I

    move-result v5

    iput v5, v15, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->returnCode:I
    :try_end_1f8
    .catchall {:try_start_1e7 .. :try_end_1f8} :catchall_232

    .line 3959
    if-eqz v7, :cond_31

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_31

    goto/16 :goto_2e

    .line 3937
    :cond_202
    :try_start_202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object v5, v0

    monitor-enter v5
    :try_end_208
    .catchall {:try_start_202 .. :try_end_208} :catchall_232

    .line 3939
    and-int/lit8 v13, p2, 0x2

    if-eqz v13, :cond_219

    :try_start_20c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object v13, v0

    invoke-virtual {v13, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_219

    .line 3941
    const/16 v23, 0x1

    .line 3943
    :cond_219
    monitor-exit v5
    :try_end_21a
    .catchall {:try_start_20c .. :try_end_21a} :catchall_22f

    .line 3945
    if-eqz v23, :cond_23f

    move-object/from16 v5, p0

    move/from16 v13, p3

    move-object/from16 v14, p4

    .line 3946
    :try_start_222
    invoke-direct/range {v5 .. v15}, Lcom/android/server/PackageManagerService;->replacePackageLI(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Landroid/content/pm/PackageParser$Package;ZZLjava/lang/String;Lcom/android/server/PackageManagerService$PackageInstalledInfo;)V
    :try_end_225
    .catchall {:try_start_222 .. :try_end_225} :catchall_232

    .line 3959
    :goto_225
    if-eqz v7, :cond_31

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_31

    goto/16 :goto_2e

    .line 3943
    .end local v8           #destFilePath:Ljava/lang/String;
    :catchall_22f
    move-exception v8

    :try_start_230
    monitor-exit v5
    :try_end_231
    .catchall {:try_start_230 .. :try_end_231} :catchall_22f

    :try_start_231
    throw v8
    :try_end_232
    .catchall {:try_start_231 .. :try_end_232} :catchall_232

    .line 3959
    .end local v9           #destPackageFile:Ljava/io/File;
    .end local v10           #destResourceFile:Ljava/io/File;
    .end local v11           #pkg:Landroid/content/pm/PackageParser$Package;
    .end local v16           #destDir:Ljava/io/File;
    .end local v20           #parseFlags:I
    .end local v21           #pkgFileName:Ljava/lang/String;
    .end local v22           #pp:Landroid/content/pm/PackageParser;
    :catchall_232
    move-exception v5

    if-eqz v7, :cond_23e

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v6

    .end local v6           #pkgName:Ljava/lang/String;
    if-eqz v6, :cond_23e

    .line 3960
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 3959
    :cond_23e
    throw v5

    .restart local v6       #pkgName:Ljava/lang/String;
    .restart local v8       #destFilePath:Ljava/lang/String;
    .restart local v9       #destPackageFile:Ljava/io/File;
    .restart local v10       #destResourceFile:Ljava/io/File;
    .restart local v11       #pkg:Landroid/content/pm/PackageParser$Package;
    .restart local v16       #destDir:Ljava/io/File;
    .restart local v20       #parseFlags:I
    .restart local v21       #pkgFileName:Ljava/lang/String;
    .restart local v22       #pp:Landroid/content/pm/PackageParser;
    :cond_23f
    move-object/from16 v5, p0

    move/from16 v13, p3

    move-object/from16 v14, p4

    .line 3952
    :try_start_245
    invoke-direct/range {v5 .. v15}, Lcom/android/server/PackageManagerService;->installNewPackageLI(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Landroid/content/pm/PackageParser$Package;ZZLjava/lang/String;Lcom/android/server/PackageManagerService$PackageInstalledInfo;)V
    :try_end_248
    .catchall {:try_start_245 .. :try_end_248} :catchall_232

    goto :goto_225
.end method

.method private isForwardLocked(Landroid/content/pm/PackageParser$Package;)Z
    .registers 5
    .parameter "deletedPackage"

    .prologue
    .line 4005
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 4006
    .local v0, applicationInfo:Landroid/content/pm/ApplicationInfo;
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mDrmAppPrivateInstallDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private static final isPackageFilename(Ljava/lang/String;)Z
    .registers 2
    .parameter "name"

    .prologue
    .line 2823
    if-eqz p0, :cond_c

    const-string v0, ".apk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static final main(Landroid/content/Context;Z)Landroid/content/pm/IPackageManager;
    .registers 4
    .parameter "context"
    .parameter "factoryTest"

    .prologue
    .line 266
    new-instance v0, Lcom/android/server/PackageManagerService;

    invoke-direct {v0, p0, p1}, Lcom/android/server/PackageManagerService;-><init>(Landroid/content/Context;Z)V

    .line 267
    .local v0, m:Lcom/android/server/PackageManagerService;
    const-string v1, "package"

    invoke-static {v1, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 268
    return-object v0
.end method

.method private performDexOptLI(Landroid/content/pm/PackageParser$Package;Z)I
    .registers 13
    .parameter "pkg"
    .parameter "forceDex"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const-string v9, "PackageManager"

    .line 1944
    const/4 v2, 0x0

    .line 1945
    .local v2, performed:Z
    iget-object v4, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_6d

    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    if-eqz v4, :cond_6d

    .line 1946
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->mScanPath:Ljava/lang/String;

    .line 1947
    .local v1, path:Ljava/lang/String;
    const/4 v3, 0x0

    .line 1949
    .local v3, ret:I
    if-nez p2, :cond_1c

    :try_start_16
    invoke-static {v1}, Ldalvik/system/DexFile;->isDexOptNeeded(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 1950
    :cond_1c
    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    iget-object v5, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-boolean v6, p1, Landroid/content/pm/PackageParser$Package;->mForwardLocked:Z

    if-nez v6, :cond_33

    move v6, v7

    :goto_27
    invoke-virtual {v4, v1, v5, v6}, Lcom/android/server/Installer;->dexopt(Ljava/lang/String;IZ)I

    move-result v3

    .line 1952
    const/4 v4, 0x1

    iput-boolean v4, p1, Landroid/content/pm/PackageParser$Package;->mDidDexOpt:Z
    :try_end_2e
    .catch Ljava/io/FileNotFoundException; {:try_start_16 .. :try_end_2e} :catch_35
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_2e} :catch_51

    .line 1953
    const/4 v2, 0x1

    .line 1962
    :cond_2f
    :goto_2f
    if-gez v3, :cond_6d

    .line 1964
    const/4 v4, -0x1

    .line 1968
    .end local v1           #path:Ljava/lang/String;
    .end local v3           #ret:I
    :goto_32
    return v4

    .restart local v1       #path:Ljava/lang/String;
    .restart local v3       #ret:I
    :cond_33
    move v6, v8

    .line 1950
    goto :goto_27

    .line 1955
    :catch_35
    move-exception v4

    move-object v0, v4

    .line 1956
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v4, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Apk not found for dexopt: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1957
    const/4 v3, -0x1

    .line 1961
    goto :goto_2f

    .line 1958
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_51
    move-exception v4

    move-object v0, v4

    .line 1959
    .local v0, e:Ljava/io/IOException;
    const-string v4, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception reading apk: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1960
    const/4 v3, -0x1

    goto :goto_2f

    .line 1968
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #path:Ljava/lang/String;
    .end local v3           #ret:I
    :cond_6d
    if-eqz v2, :cond_71

    move v4, v7

    goto :goto_32

    :cond_71
    move v4, v8

    goto :goto_32
.end method

.method private readPermissionsFromXml(Ljava/io/File;)V
    .registers 21
    .parameter "permFile"

    .prologue
    .line 592
    const/4 v11, 0x0

    .line 594
    .local v11, permReader:Ljava/io/FileReader;
    :try_start_1
    new-instance v12, Ljava/io/FileReader;

    move-object v0, v12

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_9} :catch_29

    .line 601
    .end local v11           #permReader:Ljava/io/FileReader;
    .local v12, permReader:Ljava/io/FileReader;
    :try_start_9
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v9

    .line 602
    .local v9, parser:Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v9, v12}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 604
    const-string v16, "permissions"

    move-object v0, v9

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 607
    :goto_18
    invoke-static {v9}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 608
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_1e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_1e} :catch_82
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_1e} :catch_af

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_49

    .end local v9           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :goto_27
    move-object v11, v12

    .line 695
    .end local v12           #permReader:Ljava/io/FileReader;
    .restart local v11       #permReader:Ljava/io/FileReader;
    :goto_28
    return-void

    .line 595
    :catch_29
    move-exception v16

    move-object/from16 v3, v16

    .line 596
    .local v3, e:Ljava/io/FileNotFoundException;
    const-string v16, "PackageManager"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Couldn\'t find or open permissions file "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28

    .line 612
    .end local v3           #e:Ljava/io/FileNotFoundException;
    .end local v11           #permReader:Ljava/io/FileReader;
    .restart local v9       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v12       #permReader:Ljava/io/FileReader;
    :cond_49
    :try_start_49
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 613
    .local v8, name:Ljava/lang/String;
    const-string v16, "group"

    move-object/from16 v0, v16

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_c0

    .line 614
    const/16 v16, 0x0

    const-string v17, "gid"

    move-object v0, v9

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 615
    .local v5, gidStr:Ljava/lang/String;
    if-eqz v5, :cond_92

    .line 616
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 617
    .local v4, gid:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mGlobalGids:[I

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move v1, v4

    invoke-static {v0, v1}, Lcom/android/server/PackageManagerService;->appendInt([II)[I

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mGlobalGids:[I

    .line 623
    .end local v4           #gid:I
    :goto_7e
    invoke-static {v9}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_81
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_49 .. :try_end_81} :catch_82
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_81} :catch_af

    goto :goto_18

    .line 690
    .end local v5           #gidStr:Ljava/lang/String;
    .end local v8           #name:Ljava/lang/String;
    .end local v9           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_82
    move-exception v16

    move-object/from16 v3, v16

    .line 691
    .local v3, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v16, "PackageManager"

    const-string v17, "Got execption parsing permissions."

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object v2, v3

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_27

    .line 619
    .end local v3           #e:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v5       #gidStr:Ljava/lang/String;
    .restart local v8       #name:Ljava/lang/String;
    .restart local v9       #parser:Lorg/xmlpull/v1/XmlPullParser;
    :cond_92
    :try_start_92
    const-string v16, "PackageManager"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "<group> without gid at "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ae
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_92 .. :try_end_ae} :catch_82
    .catch Ljava/io/IOException; {:try_start_92 .. :try_end_ae} :catch_af

    goto :goto_7e

    .line 692
    .end local v5           #gidStr:Ljava/lang/String;
    .end local v8           #name:Ljava/lang/String;
    .end local v9           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_af
    move-exception v16

    move-object/from16 v3, v16

    .line 693
    .local v3, e:Ljava/io/IOException;
    const-string v16, "PackageManager"

    const-string v17, "Got execption parsing permissions."

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object v2, v3

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_27

    .line 625
    .end local v3           #e:Ljava/io/IOException;
    .restart local v8       #name:Ljava/lang/String;
    .restart local v9       #parser:Lorg/xmlpull/v1/XmlPullParser;
    :cond_c0
    :try_start_c0
    const-string v16, "permission"

    move-object/from16 v0, v16

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_108

    .line 626
    const/16 v16, 0x0

    const-string v17, "name"

    move-object v0, v9

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 627
    .local v10, perm:Ljava/lang/String;
    if-nez v10, :cond_fb

    .line 628
    const-string v16, "PackageManager"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "<permission> without name at "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    invoke-static {v9}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_18

    .line 633
    :cond_fb
    invoke-virtual {v10}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v10

    .line 634
    move-object/from16 v0, p0

    move-object v1, v9

    move-object v2, v10

    invoke-virtual {v0, v1, v2}, Lcom/android/server/PackageManagerService;->readPermission(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    goto/16 :goto_18

    .line 636
    .end local v10           #perm:Ljava/lang/String;
    :cond_108
    const-string v16, "assign-permission"

    move-object/from16 v0, v16

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1d6

    .line 637
    const/16 v16, 0x0

    const-string v17, "name"

    move-object v0, v9

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 638
    .restart local v10       #perm:Ljava/lang/String;
    if-nez v10, :cond_143

    .line 639
    const-string v16, "PackageManager"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "<assign-permission> without name at "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    invoke-static {v9}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_18

    .line 644
    :cond_143
    const/16 v16, 0x0

    const-string v17, "uid"

    move-object v0, v9

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 645
    .local v15, uidStr:Ljava/lang/String;
    if-nez v15, :cond_173

    .line 646
    const-string v16, "PackageManager"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "<assign-permission> without uid at "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    invoke-static {v9}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_18

    .line 651
    :cond_173
    invoke-static {v15}, Landroid/os/Process;->getUidForName(Ljava/lang/String;)I

    move-result v14

    .line 652
    .local v14, uid:I
    if-gez v14, :cond_1a7

    .line 653
    const-string v16, "PackageManager"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "<assign-permission> with unknown uid \""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\" at "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    invoke-static {v9}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_18

    .line 659
    :cond_1a7
    invoke-virtual {v10}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v10

    .line 660
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSystemPermissions:Landroid/util/SparseArray;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move v1, v14

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/HashSet;

    .line 661
    .local v13, perms:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    if-nez v13, :cond_1ce

    .line 662
    new-instance v13, Ljava/util/HashSet;

    .end local v13           #perms:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    .line 663
    .restart local v13       #perms:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSystemPermissions:Landroid/util/SparseArray;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move v1, v14

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 665
    :cond_1ce
    invoke-virtual {v13, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 666
    invoke-static {v9}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_18

    .line 668
    .end local v10           #perm:Ljava/lang/String;
    .end local v13           #perms:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v14           #uid:I
    .end local v15           #uidStr:Ljava/lang/String;
    :cond_1d6
    const-string v16, "library"

    move-object/from16 v0, v16

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_273

    .line 669
    const/16 v16, 0x0

    const-string v17, "name"

    move-object v0, v9

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 670
    .local v7, lname:Ljava/lang/String;
    const/16 v16, 0x0

    const-string v17, "file"

    move-object v0, v9

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 671
    .local v6, lfile:Ljava/lang/String;
    if-nez v7, :cond_21e

    .line 672
    const-string v16, "PackageManager"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "<library> without name at "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    :goto_219
    invoke-static {v9}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_18

    .line 674
    :cond_21e
    if-nez v6, :cond_23d

    .line 675
    const-string v16, "PackageManager"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "<library> without file at "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_219

    .line 678
    :cond_23d
    const-string v16, "PackageManager"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Got library "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " in "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSharedLibraries:Ljava/util/HashMap;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v7

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_219

    .line 685
    .end local v6           #lfile:Ljava/lang/String;
    .end local v7           #lname:Ljava/lang/String;
    :cond_273
    invoke-static {v9}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_276
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c0 .. :try_end_276} :catch_82
    .catch Ljava/io/IOException; {:try_start_c0 .. :try_end_276} :catch_af

    goto/16 :goto_18
.end method

.method private removePackageDataLI(Landroid/content/pm/PackageParser$Package;Lcom/android/server/PackageManagerService$PackageRemovedInfo;I)V
    .registers 12
    .parameter "p"
    .parameter "outInfo"
    .parameter "flags"

    .prologue
    .line 4195
    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 4196
    .local v2, packageName:Ljava/lang/String;
    if-eqz p2, :cond_6

    .line 4197
    iput-object v2, p2, Lcom/android/server/PackageManagerService$PackageRemovedInfo;->removedPackage:Ljava/lang/String;

    .line 4199
    :cond_6
    const/4 v5, 0x1

    invoke-virtual {p0, p1, v5}, Lcom/android/server/PackageManagerService;->removePackageLI(Landroid/content/pm/PackageParser$Package;Z)V

    .line 4202
    iget-object v5, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v5

    .line 4203
    :try_start_d
    iget-object v6, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    invoke-static {v6}, Lcom/android/server/PackageManagerService$Settings;->access$300(Lcom/android/server/PackageManagerService$Settings;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 4204
    .local v1, deletedPs:Lcom/android/server/PackageManagerService$PackageSetting;
    monitor-exit v5
    :try_end_1a
    .catchall {:try_start_d .. :try_end_1a} :catchall_71

    .line 4205
    and-int/lit8 v5, p3, 0x1

    if-nez v5, :cond_5a

    .line 4206
    iget-object v5, p0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    if-eqz v5, :cond_74

    .line 4207
    iget-object v5, p0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    invoke-virtual {v5, v2}, Lcom/android/server/Installer;->remove(Ljava/lang/String;)I

    move-result v4

    .line 4208
    .local v4, retCode:I
    if-gez v4, :cond_4c

    .line 4209
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Couldn\'t remove app data or cache directory for package: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", retcode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4219
    .end local v4           #retCode:I
    :cond_4c
    :goto_4c
    iget-object v5, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v5

    .line 4220
    if-eqz p2, :cond_59

    .line 4221
    :try_start_51
    iget-object v6, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    invoke-static {v6, v2}, Lcom/android/server/PackageManagerService$Settings;->access$200(Lcom/android/server/PackageManagerService$Settings;Ljava/lang/String;)I

    move-result v6

    iput v6, p2, Lcom/android/server/PackageManagerService$PackageRemovedInfo;->removedUid:I

    .line 4223
    :cond_59
    monitor-exit v5
    :try_end_5a
    .catchall {:try_start_51 .. :try_end_5a} :catchall_89

    .line 4225
    :cond_5a
    iget-object v5, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v5

    .line 4226
    if-eqz v1, :cond_6a

    :try_start_5f
    iget-object v6, v1, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    if-eqz v6, :cond_6a

    .line 4228
    iget-object v6, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    iget-object v7, p0, Lcom/android/server/PackageManagerService;->mGlobalGids:[I

    invoke-static {v6, v1, v7}, Lcom/android/server/PackageManagerService$Settings;->access$1700(Lcom/android/server/PackageManagerService$Settings;Lcom/android/server/PackageManagerService$PackageSetting;[I)V

    .line 4231
    :cond_6a
    iget-object v6, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    invoke-virtual {v6}, Lcom/android/server/PackageManagerService$Settings;->writeLP()V

    .line 4232
    monitor-exit v5
    :try_end_70
    .catchall {:try_start_5f .. :try_end_70} :catchall_8c

    .line 4233
    return-void

    .line 4204
    .end local v1           #deletedPs:Lcom/android/server/PackageManagerService$PackageSetting;
    :catchall_71
    move-exception v6

    :try_start_72
    monitor-exit v5
    :try_end_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_71

    throw v6

    .line 4215
    .restart local v1       #deletedPs:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_74
    iget-object v5, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$Package;

    .line 4216
    .local v3, pkg:Landroid/content/pm/PackageParser$Package;
    new-instance v0, Ljava/io/File;

    iget-object v5, v3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4217
    .local v0, dataDir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_4c

    .line 4223
    .end local v0           #dataDir:Ljava/io/File;
    .end local v3           #pkg:Landroid/content/pm/PackageParser$Package;
    :catchall_89
    move-exception v6

    :try_start_8a
    monitor-exit v5
    :try_end_8b
    .catchall {:try_start_8a .. :try_end_8b} :catchall_89

    throw v6

    .line 4232
    :catchall_8c
    move-exception v6

    :try_start_8d
    monitor-exit v5
    :try_end_8e
    .catchall {:try_start_8d .. :try_end_8e} :catchall_8c

    throw v6
.end method

.method private replaceNonSystemPackageLI(Landroid/content/pm/PackageParser$Package;Ljava/io/File;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Landroid/content/pm/PackageParser$Package;ZZLjava/lang/String;Lcom/android/server/PackageManagerService$PackageInstalledInfo;)V
    .registers 39
    .parameter "deletedPackage"
    .parameter "tmpPackageFile"
    .parameter "destFilePath"
    .parameter "destPackageFile"
    .parameter "destResourceFile"
    .parameter "pkg"
    .parameter "forwardLocked"
    .parameter "newInstall"
    .parameter "installerPackageName"
    .parameter "res"

    .prologue
    .line 3584
    const/16 v18, 0x0

    .line 3585
    .local v18, newPackage:Landroid/content/pm/PackageParser$Package;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object v12, v0

    .line 3586
    .local v12, pkgName:Ljava/lang/String;
    const/16 v24, 0x1

    .line 3587
    .local v24, deletedPkg:Z
    const/16 v27, 0x0

    .line 3589
    .local v27, updatedSettings:Z
    const/16 v26, 0x0

    .line 3590
    .local v26, oldInstallerPackageName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object v5, v0

    monitor-enter v5

    .line 3591
    :try_start_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v6, v0

    invoke-virtual {v6, v12}, Lcom/android/server/PackageManagerService$Settings;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 3592
    monitor-exit v5
    :try_end_1d
    .catchall {:try_start_13 .. :try_end_1d} :catchall_ab

    .line 3594
    const/4 v10, 0x2

    .line 3596
    .local v10, parseFlags:I
    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, p10

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/PackageManagerService$PackageRemovedInfo;

    move-object v7, v0

    move-object/from16 v0, p0

    move-object v1, v12

    move v2, v5

    move v3, v6

    move-object v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/PackageManagerService;->deletePackageLI(Ljava/lang/String;ZILcom/android/server/PackageManagerService$PackageRemovedInfo;)Z

    move-result v5

    if-nez v5, :cond_ae

    .line 3599
    const/16 v5, -0xa

    move v0, v5

    move-object/from16 v1, p10

    iput v0, v1, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->returnCode:I

    .line 3600
    const/16 v24, 0x0

    .line 3628
    :cond_3a
    :goto_3a
    move-object/from16 v0, p10

    iget v0, v0, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->returnCode:I

    move v5, v0

    const/4 v6, 0x1

    if-ne v5, v6, :cond_122

    .line 3631
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v23, v0

    .line 3632
    .local v23, deletedPackageAppInfo:Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v25, v0

    .line 3634
    .local v25, installedPackageAppInfo:Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6b

    .line 3636
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    move-object v6, v0

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 3638
    :cond_6b
    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_88

    .line 3640
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    move-object v6, v0

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 3645
    :cond_88
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object v5, v0

    monitor-enter v5

    .line 3646
    :try_start_8e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v6, v0

    invoke-static {v6}, Lcom/android/server/PackageManagerService$Settings;->access$300(Lcom/android/server/PackageManagerService$Settings;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/android/server/PackageManagerService$PackageSetting;

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    move v3, v10

    move v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/PackageManagerService;->verifySignaturesLP(Lcom/android/server/PackageManagerService$PackageSetting;Landroid/content/pm/PackageParser$Package;IZ)Z

    .line 3648
    monitor-exit v5
    :try_end_aa
    .catchall {:try_start_8e .. :try_end_aa} :catchall_11f

    .line 3670
    .end local v23           #deletedPackageAppInfo:Landroid/content/pm/ApplicationInfo;
    .end local v25           #installedPackageAppInfo:Landroid/content/pm/ApplicationInfo;
    :cond_aa
    :goto_aa
    return-void

    .line 3592
    .end local v10           #parseFlags:I
    .restart local p1
    :catchall_ab
    move-exception v6

    :try_start_ac
    monitor-exit v5
    :try_end_ad
    .catchall {:try_start_ac .. :try_end_ad} :catchall_ab

    throw v6

    .line 3603
    .restart local v10       #parseFlags:I
    :cond_ae
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/PackageManagerService;->mLastScanError:I

    .line 3604
    if-eqz p7, :cond_100

    const/16 v5, 0x10

    :goto_b8
    or-int/lit8 v5, v5, 0xd

    if-eqz p8, :cond_102

    const/16 v6, 0x20

    :goto_be
    or-int v11, v5, v6

    move-object/from16 v5, p0

    move-object/from16 v6, p2

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v5 .. v11}, Lcom/android/server/PackageManagerService;->scanPackageLI(Ljava/io/File;Ljava/io/File;Ljava/io/File;Landroid/content/pm/PackageParser$Package;II)Landroid/content/pm/PackageParser$Package;

    move-result-object v18

    .line 3610
    if-nez v18, :cond_104

    .line 3611
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Package couldn\'t be installed in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3612
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PackageManagerService;->mLastScanError:I

    move v5, v0

    move v0, v5

    move-object/from16 v1, p10

    iput v0, v1, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->returnCode:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3a

    .line 3613
    const/4 v5, -0x2

    move v0, v5

    move-object/from16 v1, p10

    iput v0, v1, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->returnCode:I

    goto/16 :goto_3a

    .line 3604
    :cond_100
    const/4 v5, 0x0

    goto :goto_b8

    :cond_102
    const/4 v6, 0x0

    goto :goto_be

    .line 3616
    :cond_104
    const/16 v19, 0x1

    move-object/from16 v11, p0

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    move-object/from16 v15, p4

    move-object/from16 v16, p5

    move-object/from16 v17, p6

    move/from16 v20, p7

    move-object/from16 v21, p9

    move-object/from16 v22, p10

    invoke-direct/range {v11 .. v22}, Lcom/android/server/PackageManagerService;->updateSettingsLI(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageParser$Package;ZZLjava/lang/String;Lcom/android/server/PackageManagerService$PackageInstalledInfo;)V

    .line 3624
    const/16 v27, 0x1

    goto/16 :goto_3a

    .line 3648
    .end local p1
    .restart local v23       #deletedPackageAppInfo:Landroid/content/pm/ApplicationInfo;
    .restart local v25       #installedPackageAppInfo:Landroid/content/pm/ApplicationInfo;
    :catchall_11f
    move-exception v6

    :try_start_120
    monitor-exit v5
    :try_end_121
    .catchall {:try_start_120 .. :try_end_121} :catchall_11f

    throw v6

    .line 3654
    .end local v23           #deletedPackageAppInfo:Landroid/content/pm/ApplicationInfo;
    .end local v25           #installedPackageAppInfo:Landroid/content/pm/ApplicationInfo;
    .restart local p1
    :cond_122
    if-eqz v27, :cond_134

    .line 3655
    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object/from16 v0, p10

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/PackageManagerService$PackageRemovedInfo;

    move-object v7, v0

    move-object/from16 v0, p0

    move-object v1, v12

    move v2, v5

    move v3, v6

    move-object v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/PackageManagerService;->deletePackageLI(Ljava/lang/String;ZILcom/android/server/PackageManagerService$PackageRemovedInfo;)Z

    .line 3662
    :cond_134
    if-eqz v24, :cond_aa

    .line 3663
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mPath:Ljava/lang/String;

    move-object v6, v0

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct/range {p0 .. p1}, Lcom/android/server/PackageManagerService;->isForwardLocked(Landroid/content/pm/PackageParser$Package;)Z

    move-result v6

    if-eqz v6, :cond_158

    const/4 v6, 0x1

    :goto_14b
    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v6

    move v3, v7

    move-object/from16 v4, v26

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/PackageManagerService;->installPackageLI(Landroid/net/Uri;IZLjava/lang/String;)Lcom/android/server/PackageManagerService$PackageInstalledInfo;

    goto/16 :goto_aa

    :cond_158
    const/4 v6, 0x0

    goto :goto_14b
.end method

.method private replacePackageLI(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Landroid/content/pm/PackageParser$Package;ZZLjava/lang/String;Lcom/android/server/PackageManagerService$PackageInstalledInfo;)V
    .registers 26
    .parameter "pkgName"
    .parameter "tmpPackageFile"
    .parameter "destFilePath"
    .parameter "destPackageFile"
    .parameter "destResourceFile"
    .parameter "pkg"
    .parameter "forwardLocked"
    .parameter "newInstall"
    .parameter "installerPackageName"
    .parameter "res"

    .prologue
    .line 3559
    iget-object v3, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v3

    .line 3560
    :try_start_3
    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageParser$Package;

    .line 3561
    .local v4, oldPackage:Landroid/content/pm/PackageParser$Package;
    move-object v0, p0

    move-object/from16 v1, p6

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/server/PackageManagerService;->checkSignaturesLP(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageParser$Package;)I

    move-result v5

    if-eqz v5, :cond_21

    .line 3562
    const/16 v4, -0x68

    move v0, v4

    move-object/from16 v1, p10

    iput v0, v1, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->returnCode:I

    .line 3563
    .end local v4           #oldPackage:Landroid/content/pm/PackageParser$Package;
    monitor-exit v3

    .line 3577
    :goto_20
    return-void

    .line 3565
    .restart local v4       #oldPackage:Landroid/content/pm/PackageParser$Package;
    :cond_21
    monitor-exit v3
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_45

    .line 3566
    iget-object v3, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_48

    const/4 v3, 0x1

    move v14, v3

    .line 3567
    .local v14, sysPkg:Z
    :goto_2c
    if-eqz v14, :cond_4b

    move-object v3, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    .line 3568
    invoke-direct/range {v3 .. v13}, Lcom/android/server/PackageManagerService;->replaceSystemPackageLI(Landroid/content/pm/PackageParser$Package;Ljava/io/File;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Landroid/content/pm/PackageParser$Package;ZZLjava/lang/String;Lcom/android/server/PackageManagerService$PackageInstalledInfo;)V

    goto :goto_20

    .line 3565
    .end local v4           #oldPackage:Landroid/content/pm/PackageParser$Package;
    .end local v14           #sysPkg:Z
    :catchall_45
    move-exception v4

    :try_start_46
    monitor-exit v3
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    throw v4

    .line 3566
    .restart local v4       #oldPackage:Landroid/content/pm/PackageParser$Package;
    :cond_48
    const/4 v3, 0x0

    move v14, v3

    goto :goto_2c

    .restart local v14       #sysPkg:Z
    :cond_4b
    move-object v3, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    .line 3573
    invoke-direct/range {v3 .. v13}, Lcom/android/server/PackageManagerService;->replaceNonSystemPackageLI(Landroid/content/pm/PackageParser$Package;Ljava/io/File;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Landroid/content/pm/PackageParser$Package;ZZLjava/lang/String;Lcom/android/server/PackageManagerService$PackageInstalledInfo;)V

    goto :goto_20
.end method

.method private replaceSystemPackageLI(Landroid/content/pm/PackageParser$Package;Ljava/io/File;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Landroid/content/pm/PackageParser$Package;ZZLjava/lang/String;Lcom/android/server/PackageManagerService$PackageInstalledInfo;)V
    .registers 37
    .parameter "deletedPackage"
    .parameter "tmpPackageFile"
    .parameter "destFilePath"
    .parameter "destPackageFile"
    .parameter "destResourceFile"
    .parameter "pkg"
    .parameter "forwardLocked"
    .parameter "newInstall"
    .parameter "installerPackageName"
    .parameter "res"

    .prologue
    .line 3677
    const/16 v18, 0x0

    .line 3678
    .local v18, newPackage:Landroid/content/pm/PackageParser$Package;
    const/16 v25, 0x0

    .line 3679
    .local v25, updatedSettings:Z
    const/4 v10, 0x3

    .line 3681
    .local v10, parseFlags:I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object v12, v0

    .line 3682
    .local v12, packageName:Ljava/lang/String;
    const/16 v5, -0xa

    move v0, v5

    move-object/from16 v1, p10

    iput v0, v1, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->returnCode:I

    .line 3683
    if-nez v12, :cond_1b

    .line 3684
    const-string v5, "PackageManager"

    const-string v6, "Attempt to delete null packageName."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3762
    .end local p1
    :goto_1a
    return-void

    .line 3689
    .restart local p1
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object v5, v0

    monitor-enter v5

    .line 3690
    :try_start_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object v6, v0

    invoke-virtual {v6, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/content/pm/PackageParser$Package;

    .line 3691
    .local v23, oldPkg:Landroid/content/pm/PackageParser$Package;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v6, v0

    invoke-static {v6}, Lcom/android/server/PackageManagerService$Settings;->access$300(Lcom/android/server/PackageManagerService$Settings;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 3692
    .local v24, oldPkgSetting:Lcom/android/server/PackageManagerService$PackageSetting;
    if-eqz v23, :cond_46

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v6, v0

    if-eqz v6, :cond_46

    if-nez v24, :cond_69

    .line 3694
    :cond_46
    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could\'nt find package:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " information"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3695
    monitor-exit v5

    goto :goto_1a

    .line 3697
    .end local v23           #oldPkg:Landroid/content/pm/PackageParser$Package;
    .end local v24           #oldPkgSetting:Lcom/android/server/PackageManagerService$PackageSetting;
    :catchall_66
    move-exception v6

    monitor-exit v5
    :try_end_68
    .catchall {:try_start_21 .. :try_end_68} :catchall_66

    throw v6

    .restart local v23       #oldPkg:Landroid/content/pm/PackageParser$Package;
    .restart local v24       #oldPkgSetting:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_69
    :try_start_69
    monitor-exit v5
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_66

    .line 3698
    move-object/from16 v0, p10

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/PackageManagerService$PackageRemovedInfo;

    move-object v5, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v6, v0

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v6, v5, Lcom/android/server/PackageManagerService$PackageRemovedInfo;->uid:I

    .line 3699
    move-object/from16 v0, p10

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/PackageManagerService$PackageRemovedInfo;

    move-object v5, v0

    iput-object v12, v5, Lcom/android/server/PackageManagerService$PackageRemovedInfo;->removedPackage:Ljava/lang/String;

    .line 3701
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/server/PackageManagerService;->removePackageLI(Landroid/content/pm/PackageParser$Package;Z)V

    .line 3702
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object v5, v0

    monitor-enter v5

    .line 3703
    :try_start_8e
    move-object/from16 v0, p10

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/PackageManagerService$PackageRemovedInfo;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v7, v0

    invoke-virtual {v7, v12}, Lcom/android/server/PackageManagerService$Settings;->disableSystemPackageLP(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/android/server/PackageManagerService$PackageRemovedInfo;->removedUid:I

    .line 3704
    monitor-exit v5
    :try_end_9f
    .catchall {:try_start_8e .. :try_end_9f} :catchall_129

    .line 3707
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/PackageManagerService;->mLastScanError:I

    .line 3708
    move-object/from16 v0, p6

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v5, v0

    iget v6, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v6, v6, 0x80

    iput v6, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3709
    if-eqz p7, :cond_12c

    const/16 v5, 0x10

    :goto_b4
    or-int/lit8 v5, v5, 0xd

    if-eqz p8, :cond_12e

    const/16 v6, 0x20

    :goto_ba
    or-int v11, v5, v6

    move-object/from16 v5, p0

    move-object/from16 v6, p2

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v5 .. v11}, Lcom/android/server/PackageManagerService;->scanPackageLI(Ljava/io/File;Ljava/io/File;Ljava/io/File;Landroid/content/pm/PackageParser$Package;II)Landroid/content/pm/PackageParser$Package;

    move-result-object v18

    .line 3715
    if-nez v18, :cond_130

    .line 3716
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Package couldn\'t be installed in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3717
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PackageManagerService;->mLastScanError:I

    move v5, v0

    move v0, v5

    move-object/from16 v1, p10

    iput v0, v1, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->returnCode:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_fa

    .line 3718
    const/4 v5, -0x2

    move v0, v5

    move-object/from16 v1, p10

    iput v0, v1, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->returnCode:I

    .line 3732
    :cond_fa
    :goto_fa
    move-object/from16 v0, p10

    iget v0, v0, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->returnCode:I

    move v5, v0

    const/4 v6, 0x1

    if-ne v5, v6, :cond_14a

    .line 3736
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object v5, v0

    monitor-enter v5

    .line 3737
    :try_start_108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v6, v0

    invoke-static {v6}, Lcom/android/server/PackageManagerService$Settings;->access$300(Lcom/android/server/PackageManagerService$Settings;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/android/server/PackageManagerService$PackageSetting;

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    move v3, v10

    move v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/PackageManagerService;->verifySignaturesLP(Lcom/android/server/PackageManagerService$PackageSetting;Landroid/content/pm/PackageParser$Package;IZ)Z

    .line 3739
    monitor-exit v5

    goto/16 :goto_1a

    :catchall_126
    move-exception v6

    monitor-exit v5
    :try_end_128
    .catchall {:try_start_108 .. :try_end_128} :catchall_126

    throw v6

    .line 3704
    .restart local p1
    :catchall_129
    move-exception v6

    :try_start_12a
    monitor-exit v5
    :try_end_12b
    .catchall {:try_start_12a .. :try_end_12b} :catchall_129

    throw v6

    .line 3709
    :cond_12c
    const/4 v5, 0x0

    goto :goto_b4

    :cond_12e
    const/4 v6, 0x0

    goto :goto_ba

    .line 3721
    :cond_130
    const/16 v19, 0x1

    move-object/from16 v11, p0

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    move-object/from16 v15, p4

    move-object/from16 v16, p5

    move-object/from16 v17, p6

    move/from16 v20, p7

    move-object/from16 v21, p9

    move-object/from16 v22, p10

    invoke-direct/range {v11 .. v22}, Lcom/android/server/PackageManagerService;->updateSettingsLI(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageParser$Package;ZZLjava/lang/String;Lcom/android/server/PackageManagerService$PackageInstalledInfo;)V

    .line 3729
    const/16 v25, 0x1

    goto :goto_fa

    .line 3743
    :cond_14a
    if-eqz v18, :cond_155

    .line 3744
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/server/PackageManagerService;->removePackageLI(Landroid/content/pm/PackageParser$Package;Z)V

    .line 3747
    :cond_155
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->codePath:Ljava/io/File;

    move-object v6, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->codePath:Ljava/io/File;

    move-object v7, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->resourcePath:Ljava/io/File;

    move-object v8, v0

    const/16 v11, 0x9

    move-object/from16 v5, p0

    move-object/from16 v9, v23

    invoke-direct/range {v5 .. v11}, Lcom/android/server/PackageManagerService;->scanPackageLI(Ljava/io/File;Ljava/io/File;Ljava/io/File;Landroid/content/pm/PackageParser$Package;II)Landroid/content/pm/PackageParser$Package;

    .line 3753
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object v5, v0

    monitor-enter v5

    .line 3754
    if-eqz v25, :cond_18a

    .line 3755
    :try_start_175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v6, v0

    invoke-virtual {v6, v12}, Lcom/android/server/PackageManagerService$Settings;->enableSystemPackageLP(Ljava/lang/String;)Lcom/android/server/PackageManagerService$PackageSetting;

    .line 3756
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v6, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->installerPackageName:Ljava/lang/String;

    move-object v7, v0

    invoke-virtual {v6, v12, v7}, Lcom/android/server/PackageManagerService$Settings;->setInstallerPackageName(Ljava/lang/String;Ljava/lang/String;)V

    .line 3759
    :cond_18a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/server/PackageManagerService$Settings;->writeLP()V

    .line 3760
    monitor-exit v5

    goto/16 :goto_1a

    :catchall_195
    move-exception v6

    monitor-exit v5
    :try_end_197
    .catchall {:try_start_175 .. :try_end_197} :catchall_195

    throw v6
.end method

.method private static reportSettingsProblem(ILjava/lang/String;)V
    .registers 11
    .parameter "priority"
    .parameter "msg"

    .prologue
    .line 1783
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 1784
    .local v0, dataDir:Ljava/io/File;
    new-instance v4, Ljava/io/File;

    const-string v5, "system"

    invoke-direct {v4, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1785
    .local v4, systemDir:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v5, "uiderrors.txt"

    invoke-direct {v1, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1786
    .local v1, fname:Ljava/io/File;
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v5, 0x1

    invoke-direct {v2, v1, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 1787
    .local v2, out:Ljava/io/FileOutputStream;
    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 1788
    .local v3, pw:Ljava/io/PrintWriter;
    invoke-virtual {v3, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1789
    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V

    .line 1790
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x1fc

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-static {v5, v6, v7, v8}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_2e} :catch_34

    .line 1796
    .end local v0           #dataDir:Ljava/io/File;
    .end local v1           #fname:Ljava/io/File;
    .end local v2           #out:Ljava/io/FileOutputStream;
    .end local v3           #pw:Ljava/io/PrintWriter;
    .end local v4           #systemDir:Ljava/io/File;
    :goto_2e
    const-string v5, "PackageManager"

    invoke-static {p0, v5, p1}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 1797
    return-void

    .line 1794
    :catch_34
    move-exception v5

    goto :goto_2e
.end method

.method private scanDirLI(Ljava/io/File;II)V
    .registers 12
    .parameter "dir"
    .parameter "flags"
    .parameter "scanMode"

    .prologue
    .line 1764
    const-string v0, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scanning app dir "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1766
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v6

    .line 1769
    .local v6, files:[Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1d
    array-length v0, v6

    if-ge v7, v0, :cond_38

    .line 1770
    new-instance v1, Ljava/io/File;

    aget-object v0, v6, v7

    invoke-direct {v1, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1771
    .local v1, file:Ljava/io/File;
    move-object v3, v1

    .line 1773
    .local v3, resFile:Ljava/io/File;
    and-int/lit8 v0, p3, 0x10

    if-eqz v0, :cond_2d

    .line 1774
    const/4 v3, 0x0

    .line 1776
    :cond_2d
    or-int/lit8 v4, p2, 0x4

    move-object v0, p0

    move-object v2, v1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/PackageManagerService;->scanPackageLI(Ljava/io/File;Ljava/io/File;Ljava/io/File;II)Landroid/content/pm/PackageParser$Package;

    .line 1769
    add-int/lit8 v7, v7, 0x1

    goto :goto_1d

    .line 1779
    .end local v1           #file:Ljava/io/File;
    .end local v3           #resFile:Ljava/io/File;
    :cond_38
    return-void
.end method

.method private scanPackageLI(Ljava/io/File;Ljava/io/File;Ljava/io/File;II)Landroid/content/pm/PackageParser$Package;
    .registers 23
    .parameter "scanFile"
    .parameter "destCodeFile"
    .parameter "destResourceFile"
    .parameter "parseFlags"
    .parameter "scanMode"

    .prologue
    .line 1821
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/PackageManagerService;->mLastScanError:I

    .line 1822
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PackageManagerService;->mDefParseFlags:I

    move v5, v0

    or-int p4, p4, v5

    .line 1823
    new-instance v6, Landroid/content/pm/PackageParser;

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Landroid/content/pm/PackageParser;-><init>(Ljava/lang/String;)V

    .line 1824
    .local v6, pp:Landroid/content/pm/PackageParser;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSeparateProcesses:[Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v6, v5}, Landroid/content/pm/PackageParser;->setSeparateProcesses([Ljava/lang/String;)V

    .line 1825
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PackageManagerService;->mSdkVersion:I

    move v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSdkCodename:Ljava/lang/String;

    move-object v7, v0

    invoke-virtual {v6, v5, v7}, Landroid/content/pm/PackageParser;->setSdkVersion(ILjava/lang/String;)V

    .line 1826
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mMetrics:Landroid/util/DisplayMetrics;

    move-object v7, v0

    move-object v0, v6

    move-object/from16 v1, p1

    move-object v2, v5

    move-object v3, v7

    move/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/pm/PackageParser;->parsePackage(Ljava/io/File;Ljava/lang/String;Landroid/util/DisplayMetrics;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v8

    .line 1828
    .local v8, pkg:Landroid/content/pm/PackageParser$Package;
    if-nez v8, :cond_4c

    .line 1829
    invoke-virtual {v6}, Landroid/content/pm/PackageParser;->getParseError()I

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/PackageManagerService;->mLastScanError:I

    .line 1830
    const/4 v5, 0x0

    .line 1883
    .end local v6           #pp:Landroid/content/pm/PackageParser;
    :goto_4b
    return-object v5

    .line 1834
    .restart local v6       #pp:Landroid/content/pm/PackageParser;
    :cond_4c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object v5, v0

    monitor-enter v5

    .line 1835
    :try_start_52
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v7, v0

    iget-object v9, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v9}, Lcom/android/server/PackageManagerService$Settings;->peekPackageLP(Ljava/lang/String;)Lcom/android/server/PackageManagerService$PackageSetting;

    move-result-object v7

    .line 1836
    .local v7, ps:Lcom/android/server/PackageManagerService$PackageSetting;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v9, v0

    iget-object v9, v9, Lcom/android/server/PackageManagerService$Settings;->mDisabledSysPackages:Ljava/util/HashMap;

    iget-object v10, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 1837
    .local v16, updatedPkg:Lcom/android/server/PackageManagerService$PackageSetting;
    monitor-exit v5
    :try_end_6d
    .catchall {:try_start_52 .. :try_end_6d} :catchall_95

    move-object/from16 v5, p0

    move-object/from16 v9, p1

    move/from16 v10, p4

    .line 1839
    invoke-direct/range {v5 .. v10}, Lcom/android/server/PackageManagerService;->collectCertificatesLI(Landroid/content/pm/PackageParser;Lcom/android/server/PackageManagerService$PackageSetting;Landroid/content/pm/PackageParser$Package;Ljava/io/File;I)Z

    move-result v5

    if-nez v5, :cond_98

    .line 1840
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    .end local v6           #pp:Landroid/content/pm/PackageParser;
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed verifying certificates for package:"

    .end local v7           #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1841
    const/4 v5, 0x0

    goto :goto_4b

    .line 1837
    .end local v16           #updatedPkg:Lcom/android/server/PackageManagerService$PackageSetting;
    :catchall_95
    move-exception v6

    :try_start_96
    monitor-exit v5
    :try_end_97
    .catchall {:try_start_96 .. :try_end_97} :catchall_95

    throw v6

    .line 1843
    .restart local v6       #pp:Landroid/content/pm/PackageParser;
    .restart local v7       #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    .restart local v16       #updatedPkg:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_98
    if-eqz v16, :cond_9c

    .line 1845
    or-int/lit8 p4, p4, 0x1

    .line 1847
    :cond_9c
    and-int/lit8 v5, p4, 0x1

    if-eqz v5, :cond_113

    .line 1849
    if-eqz v16, :cond_113

    .line 1850
    if-eqz v7, :cond_113

    iget-object v5, v7, Lcom/android/server/PackageManagerService$PackageSetting;->codePath:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    .end local v6           #pp:Landroid/content/pm/PackageParser;
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_113

    .line 1851
    iget v5, v8, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    iget v6, v7, Lcom/android/server/PackageManagerService$PackageSetting;->versionCode:I

    if-gt v5, v6, :cond_ea

    .line 1854
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Package:"

    .end local v7           #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " has been updated. Ignoring the one from path:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1856
    const/4 v5, -0x5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/PackageManagerService;->mLastScanError:I

    .line 1857
    const/4 v5, 0x0

    goto/16 :goto_4b

    .line 1863
    .restart local v7       #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_ea
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object v5, v0

    monitor-enter v5

    .line 1865
    :try_start_f0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object v6, v0

    iget-object v9, v7, Lcom/android/server/PackageManagerService$PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1866
    monitor-exit v5
    :try_end_fb
    .catchall {:try_start_f0 .. :try_end_fb} :catchall_141

    .line 1867
    iget-object v5, v7, Lcom/android/server/PackageManagerService$PackageSetting;->name:Ljava/lang/String;

    iget-object v6, v7, Lcom/android/server/PackageManagerService$PackageSetting;->codePathString:Ljava/lang/String;

    iget-object v9, v7, Lcom/android/server/PackageManagerService$PackageSetting;->resourcePathString:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    move-object v3, v9

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/PackageManagerService;->deletePackageResourcesLI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1868
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v5, v0

    iget-object v6, v7, Lcom/android/server/PackageManagerService$PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/server/PackageManagerService$Settings;->enableSystemPackageLP(Ljava/lang/String;)Lcom/android/server/PackageManagerService$PackageSetting;

    .line 1875
    :cond_113
    if-eqz v7, :cond_121

    iget-object v5, v7, Lcom/android/server/PackageManagerService$PackageSetting;->codePath:Ljava/io/File;

    iget-object v6, v7, Lcom/android/server/PackageManagerService$PackageSetting;->resourcePath:Ljava/io/File;

    invoke-virtual {v5, v6}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_121

    .line 1876
    or-int/lit8 p5, p5, 0x10

    .line 1878
    :cond_121
    move-object/from16 v12, p3

    .line 1879
    .local v12, resFile:Ljava/io/File;
    and-int/lit8 v5, p5, 0x10

    if-eqz v5, :cond_130

    .line 1880
    iget-object v5, v7, Lcom/android/server/PackageManagerService$PackageSetting;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/server/PackageManagerService;->getFwdLockedResource(Ljava/lang/String;)Ljava/io/File;

    move-result-object v12

    .line 1883
    :cond_130
    or-int/lit8 v15, p5, 0x8

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object v13, v8

    move/from16 v14, p4

    invoke-direct/range {v9 .. v15}, Lcom/android/server/PackageManagerService;->scanPackageLI(Ljava/io/File;Ljava/io/File;Ljava/io/File;Landroid/content/pm/PackageParser$Package;II)Landroid/content/pm/PackageParser$Package;

    move-result-object v5

    goto/16 :goto_4b

    .line 1866
    .end local v12           #resFile:Ljava/io/File;
    :catchall_141
    move-exception v6

    :try_start_142
    monitor-exit v5
    :try_end_143
    .catchall {:try_start_142 .. :try_end_143} :catchall_141

    throw v6
.end method

.method private scanPackageLI(Ljava/io/File;Ljava/io/File;Ljava/io/File;Landroid/content/pm/PackageParser$Package;II)Landroid/content/pm/PackageParser$Package;
    .registers 50
    .parameter "scanFile"
    .parameter "destCodeFile"
    .parameter "destResourceFile"
    .parameter "pkg"
    .parameter "parseFlags"
    .parameter "scanMode"

    .prologue
    .line 1975
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mScanningPath:Ljava/io/File;

    .line 1976
    if-nez p4, :cond_11

    .line 1977
    const/16 v5, -0x6a

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/PackageManagerService;->mLastScanError:I

    .line 1978
    const/4 v5, 0x0

    .line 2549
    .end local p1
    :goto_10
    return-object v5

    .line 1981
    .restart local p1
    :cond_11
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v5, v0

    move-object v0, v5

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v32, v0

    .line 1982
    .local v32, pkgName:Ljava/lang/String;
    and-int/lit8 v5, p5, 0x1

    if-eqz v5, :cond_2a

    .line 1983
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v5, v0

    iget v6, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit8 v6, v6, 0x1

    iput v6, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1986
    :cond_2a
    const-string v5, "android"

    move-object/from16 v0, v32

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_135

    .line 1987
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object v5, v0

    monitor-enter v5

    .line 1988
    :try_start_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mAndroidApplication:Landroid/content/pm/ApplicationInfo;

    move-object v6, v0

    if-eqz v6, :cond_7e

    .line 1989
    const-string v6, "PackageManager"

    const-string v7, "*************************************************"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1990
    const-string v6, "PackageManager"

    const-string v7, "Core android package being redefined.  Skipping."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1991
    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " file="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mScanningPath:Ljava/io/File;

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1992
    const-string v6, "PackageManager"

    const-string v7, "*************************************************"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1993
    const/4 v6, -0x5

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/PackageManagerService;->mLastScanError:I

    .line 1994
    const/4 v6, 0x0

    monitor-exit v5

    move-object v5, v6

    goto :goto_10

    .line 1999
    :cond_7e
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mPlatformPackage:Landroid/content/pm/PackageParser$Package;

    .line 2000
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PackageManagerService;->mSdkVersion:I

    move v6, v0

    move v0, v6

    move-object/from16 v1, p4

    iput v0, v1, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    .line 2001
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mAndroidApplication:Landroid/content/pm/ApplicationInfo;

    .line 2002
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mAndroidApplication:Landroid/content/pm/ApplicationInfo;

    move-object v7, v0

    iput-object v7, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 2003
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    move-object v6, v0

    const-class v7, Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 2004
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mAndroidApplication:Landroid/content/pm/ApplicationInfo;

    move-object v7, v0

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v7, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 2005
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mAndroidApplication:Landroid/content/pm/ApplicationInfo;

    move-object v7, v0

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iput-object v7, v6, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 2006
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    move-object v6, v0

    const/4 v7, 0x0

    iput v7, v6, Landroid/content/pm/ActivityInfo;->launchMode:I

    .line 2007
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    move-object v6, v0

    const/16 v7, 0x20

    iput v7, v6, Landroid/content/pm/ActivityInfo;->flags:I

    .line 2008
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    move-object v6, v0

    const v7, 0x1030085

    iput v7, v6, Landroid/content/pm/ActivityInfo;->theme:I

    .line 2009
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    move-object v6, v0

    const/4 v7, 0x1

    iput-boolean v7, v6, Landroid/content/pm/ActivityInfo;->exported:Z

    .line 2010
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    move-object v6, v0

    const/4 v7, 0x1

    iput-boolean v7, v6, Landroid/content/pm/ActivityInfo;->enabled:Z

    .line 2011
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    move-object v7, v0

    iput-object v7, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 2012
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    move-object v6, v0

    const/4 v7, 0x0

    iput v7, v6, Landroid/content/pm/ResolveInfo;->priority:I

    .line 2013
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    move-object v6, v0

    const/4 v7, 0x0

    iput v7, v6, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    .line 2014
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    move-object v6, v0

    const/4 v7, 0x0

    iput v7, v6, Landroid/content/pm/ResolveInfo;->match:I

    .line 2015
    new-instance v6, Landroid/content/ComponentName;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mAndroidApplication:Landroid/content/pm/ApplicationInfo;

    move-object v7, v0

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    move-object v8, v0

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PackageManagerService;->mResolveComponentName:Landroid/content/ComponentName;

    .line 2017
    monitor-exit v5
    :try_end_135
    .catchall {:try_start_3b .. :try_end_135} :catchall_1a8

    .line 2020
    :cond_135
    and-int/lit8 v5, p5, 0x2

    if-eqz v5, :cond_154

    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Scanning package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2022
    :cond_154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_170

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSharedLibraries:Ljava/util/HashMap;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1ab

    .line 2023
    :cond_170
    const-string v5, "PackageManager"

    const-string v6, "*************************************************"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2024
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Application package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " already installed.  Skipping duplicate."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2026
    const-string v5, "PackageManager"

    const-string v6, "*************************************************"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2027
    const/4 v5, -0x5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/PackageManagerService;->mLastScanError:I

    .line 2028
    const/4 v5, 0x0

    goto/16 :goto_10

    .line 2017
    :catchall_1a8
    move-exception v6

    :try_start_1a9
    monitor-exit v5
    :try_end_1aa
    .catchall {:try_start_1a9 .. :try_end_1aa} :catchall_1a8

    throw v6

    .line 2031
    :cond_1ab
    const/4 v7, 0x0

    .line 2032
    .local v7, suid:Lcom/android/server/PackageManagerService$SharedUserSetting;
    const/16 v33, 0x0

    .line 2034
    .local v33, pkgSetting:Lcom/android/server/PackageManagerService$PackageSetting;
    const/16 v36, 0x0

    .line 2036
    .local v36, removeExisting:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object v14, v0

    monitor-enter v14

    .line 2038
    :try_start_1b6
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->usesLibraryFiles:[Ljava/lang/String;

    move-object v5, v0

    if-eqz v5, :cond_22a

    .line 2039
    const/16 v22, 0x0

    .local v22, i:I
    :goto_1bf
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->usesLibraryFiles:[Ljava/lang/String;

    move-object v5, v0

    array-length v5, v5

    move/from16 v0, v22

    move v1, v5

    if-ge v0, v1, :cond_22a

    .line 2040
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSharedLibraries:Ljava/util/HashMap;

    move-object v5, v0

    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->usesLibraryFiles:[Ljava/lang/String;

    move-object v6, v0

    aget-object v6, v6, v22

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 2041
    .local v20, file:Ljava/lang/String;
    if-nez v20, :cond_220

    .line 2042
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Package "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object v8, v0

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " requires unavailable shared library "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->usesLibraryFiles:[Ljava/lang/String;

    move-object v8, v0

    aget-object v8, v8, v22

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "; ignoring!"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2045
    const/16 v5, -0x9

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/PackageManagerService;->mLastScanError:I

    .line 2046
    const/4 v5, 0x0

    monitor-exit v14

    goto/16 :goto_10

    .line 2131
    .end local v20           #file:Ljava/lang/String;
    .end local v22           #i:I
    :catchall_21d
    move-exception v5

    monitor-exit v14
    :try_end_21f
    .catchall {:try_start_1b6 .. :try_end_21f} :catchall_21d

    throw v5

    .line 2048
    .restart local v20       #file:Ljava/lang/String;
    .restart local v22       #i:I
    :cond_220
    :try_start_220
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->usesLibraryFiles:[Ljava/lang/String;

    move-object v5, v0

    aput-object v20, v5, v22

    .line 2039
    add-int/lit8 v22, v22, 0x1

    goto :goto_1bf

    .line 2052
    .end local v20           #file:Ljava/lang/String;
    .end local v22           #i:I
    :cond_22a
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    move-object v5, v0

    if-eqz v5, :cond_2ad

    .line 2053
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v5, v0

    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    move-object v6, v0

    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v8, v0

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v9, 0x1

    invoke-virtual {v5, v6, v8, v9}, Lcom/android/server/PackageManagerService$Settings;->getSharedUserLP(Ljava/lang/String;IZ)Lcom/android/server/PackageManagerService$SharedUserSetting;

    move-result-object v7

    .line 2055
    if-nez v7, :cond_274

    .line 2056
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Creating application package "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " for shared user failed"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2058
    const/4 v5, -0x4

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/PackageManagerService;->mLastScanError:I

    .line 2059
    const/4 v5, 0x0

    monitor-exit v14

    goto/16 :goto_10

    .line 2061
    :cond_274
    and-int/lit8 v5, p5, 0x2

    if-eqz v5, :cond_2ad

    .line 2062
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Shared UserID "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    move-object v8, v0

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " (uid="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, v7, Lcom/android/server/PackageManagerService$SharedUserSetting;->userId:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "): packages="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, v7, Lcom/android/server/PackageManagerService$SharedUserSetting;->packages:Ljava/util/HashSet;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2069
    :cond_2ad
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v5, v0

    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v6, v0

    iget v10, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object/from16 v6, p4

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    invoke-virtual/range {v5 .. v12}, Lcom/android/server/PackageManagerService$Settings;->getPackageLP(Landroid/content/pm/PackageParser$Package;Lcom/android/server/PackageManagerService$SharedUserSetting;Ljava/io/File;Ljava/io/File;IZZ)Lcom/android/server/PackageManagerService$PackageSetting;

    move-result-object v33

    .line 2071
    if-nez v33, :cond_2f2

    .line 2072
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Creating application package "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " failed"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2073
    const/4 v5, -0x4

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/PackageManagerService;->mLastScanError:I

    .line 2074
    const/4 v5, 0x0

    monitor-exit v14

    goto/16 :goto_10

    .line 2076
    :cond_2f2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/PackageManagerService$Settings;->mDisabledSysPackages:Ljava/util/HashMap;

    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_30f

    .line 2077
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v5, v0

    iget v6, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v6, v6, 0x80

    iput v6, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 2080
    :cond_30f
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v5, v0

    move-object/from16 v0, v33

    iget v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->userId:I

    move v6, v0

    iput v6, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2081
    move-object/from16 v0, v33

    move-object/from16 v1, p4

    iput-object v0, v1, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    .line 2083
    and-int/lit8 v5, p6, 0x8

    if-eqz v5, :cond_343

    const/4 v5, 0x1

    :goto_326
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, p4

    move/from16 v3, p5

    move v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/PackageManagerService;->verifySignaturesLP(Lcom/android/server/PackageManagerService$PackageSetting;Landroid/content/pm/PackageParser$Package;IZ)Z

    move-result v5

    if-nez v5, :cond_379

    .line 2085
    and-int/lit8 v5, p5, 0x1

    if-nez v5, :cond_345

    .line 2086
    const/4 v5, -0x7

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/PackageManagerService;->mLastScanError:I

    .line 2087
    const/4 v5, 0x0

    monitor-exit v14

    goto/16 :goto_10

    .line 2083
    :cond_343
    const/4 v5, 0x0

    goto :goto_326

    .line 2091
    :cond_345
    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->signatures:Lcom/android/server/PackageManagerService$PackageSignatures;

    move-object v5, v0

    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    move-object v6, v0

    invoke-static {v5, v6}, Lcom/android/server/PackageManagerService$PackageSignatures;->access$702(Lcom/android/server/PackageManagerService$PackageSignatures;[Landroid/content/pm/Signature;)[Landroid/content/pm/Signature;

    .line 2097
    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    move-object v5, v0

    if-eqz v5, :cond_377

    .line 2098
    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/PackageManagerService$SharedUserSetting;->signatures:Lcom/android/server/PackageManagerService$PackageSignatures;

    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    move-object v6, v0

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v8}, Lcom/android/server/PackageManagerService$PackageSignatures;->mergeSignatures([Landroid/content/pm/Signature;Z)Z

    move-result v5

    if-nez v5, :cond_377

    .line 2100
    const/16 v5, -0x68

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/PackageManagerService;->mLastScanError:I

    .line 2101
    const/4 v5, 0x0

    monitor-exit v14

    goto/16 :goto_10

    .line 2104
    :cond_377
    const/16 v36, 0x1

    .line 2111
    :cond_379
    and-int/lit8 v5, p6, 0x20

    if-eqz v5, :cond_429

    .line 2112
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 2114
    .local v13, N:I
    const/16 v22, 0x0

    .restart local v22       #i:I
    :goto_388
    move/from16 v0, v22

    move v1, v13

    if-ge v0, v1, :cond_429

    .line 2115
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/content/pm/PackageParser$Provider;

    .line 2116
    .local v27, p:Landroid/content/pm/PackageParser$Provider;
    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object v5, v0

    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v25

    .line 2117
    .local v25, names:[Ljava/lang/String;
    const/16 v23, 0x0

    .local v23, j:I
    :goto_3aa
    move-object/from16 v0, v25

    array-length v0, v0

    move v5, v0

    move/from16 v0, v23

    move v1, v5

    if-ge v0, v1, :cond_425

    .line 2118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mProviders:Ljava/util/HashMap;

    move-object v5, v0

    aget-object v6, v25, v23

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_422

    .line 2119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mProviders:Ljava/util/HashMap;

    move-object v5, v0

    aget-object v6, v25, v23

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/content/pm/PackageParser$Provider;

    .line 2120
    .local v26, other:Landroid/content/pm/PackageParser$Provider;
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Can\'t install because provider name "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v8, v25, v23

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " (in package "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v8, v0

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ") is already used by "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v26, :cond_41f

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->component:Landroid/content/ComponentName;

    move-object v8, v0

    if-eqz v8, :cond_41f

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->component:Landroid/content/ComponentName;

    move-object v8, v0

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    :goto_409
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2125
    const/16 v5, -0xd

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/PackageManagerService;->mLastScanError:I

    .line 2126
    const/4 v5, 0x0

    monitor-exit v14

    goto/16 :goto_10

    .line 2120
    :cond_41f
    const-string v8, "?"

    goto :goto_409

    .line 2117
    .end local v26           #other:Landroid/content/pm/PackageParser$Provider;
    :cond_422
    add-int/lit8 v23, v23, 0x1

    goto :goto_3aa

    .line 2114
    :cond_425
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_388

    .line 2131
    .end local v13           #N:I
    .end local v22           #i:I
    .end local v23           #j:I
    .end local v25           #names:[Ljava/lang/String;
    .end local v27           #p:Landroid/content/pm/PackageParser$Provider;
    :cond_429
    monitor-exit v14
    :try_end_42a
    .catchall {:try_start_220 .. :try_end_42a} :catchall_21d

    .line 2133
    if-eqz v36, :cond_499

    .line 2134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    move-object v5, v0

    if-eqz v5, :cond_470

    .line 2135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/server/Installer;->remove(Ljava/lang/String;)I

    move-result v37

    .line 2136
    .local v37, ret:I
    if-eqz v37, :cond_470

    .line 2137
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "System package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " could not have data directory erased after signature change."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 2139
    .local v24, msg:Ljava/lang/String;
    const/4 v5, 0x5

    move v0, v5

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/android/server/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 2140
    const/16 v5, -0xa

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/PackageManagerService;->mLastScanError:I

    .line 2141
    const/4 v5, 0x0

    goto/16 :goto_10

    .line 2144
    .end local v24           #msg:Ljava/lang/String;
    .end local v37           #ret:I
    :cond_470
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "System package "

    .end local v7           #suid:Lcom/android/server/PackageManagerService$SharedUserSetting;
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " signature changed: existing data removed."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2146
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/PackageManagerService;->mLastScanError:I

    .line 2149
    :cond_499
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->lastModified()J

    move-result-wide v40

    .line 2150
    .local v40, scanFileTime:J
    and-int/lit8 v5, p6, 0x4

    if-eqz v5, :cond_543

    const/4 v5, 0x1

    move/from16 v21, v5

    .line 2151
    .local v21, forceDex:Z
    :goto_4a4
    if-nez v21, :cond_4ae

    invoke-virtual/range {v33 .. v33}, Lcom/android/server/PackageManagerService$PackageSetting;->getTimeStamp()J

    move-result-wide v5

    cmp-long v5, v40, v5

    if-eqz v5, :cond_548

    :cond_4ae
    const/4 v5, 0x1

    move/from16 v39, v5

    .line 2152
    .local v39, scanFileNewer:Z
    :goto_4b1
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v5, v0

    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v7, v0

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v8, v0

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v6, v7, v8}, Lcom/android/server/PackageManagerService;->fixProcessName(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 2156
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v5, v0

    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 2159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPlatformPackage:Landroid/content/pm/PackageParser$Package;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p4

    if-ne v0, v1, :cond_54d

    .line 2161
    new-instance v18, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v5

    const-string v6, "system"

    move-object/from16 v0, v18

    move-object v1, v5

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2162
    .local v18, dataPath:Ljava/io/File;
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v5, v0

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 2256
    :goto_500
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    move-object v5, v0

    if-eqz v5, :cond_7d3

    .line 2257
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v29

    .line 2258
    .local v29, path:Ljava/lang/String;
    if-eqz v39, :cond_7a6

    .line 2259
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v6

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " changed; unpacking"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2260
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, v18

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/PackageManagerService;->cachePackageSharedLibsLI(Landroid/content/pm/PackageParser$Package;Ljava/io/File;Ljava/io/File;)I

    move-result v19

    .line 2261
    .local v19, err:I
    const/4 v5, 0x1

    move/from16 v0, v19

    move v1, v5

    if-eq v0, v1, :cond_7a6

    .line 2262
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/PackageManagerService;->mLastScanError:I

    .line 2263
    const/4 v5, 0x0

    goto/16 :goto_10

    .line 2150
    .end local v18           #dataPath:Ljava/io/File;
    .end local v19           #err:I
    .end local v21           #forceDex:Z
    .end local v29           #path:Ljava/lang/String;
    .end local v39           #scanFileNewer:Z
    :cond_543
    const/4 v5, 0x0

    move/from16 v21, v5

    goto/16 :goto_4a4

    .line 2151
    .restart local v21       #forceDex:Z
    :cond_548
    const/4 v5, 0x0

    move/from16 v39, v5

    goto/16 :goto_4b1

    .line 2165
    .restart local v39       #scanFileNewer:Z
    :cond_54d
    new-instance v18, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mAppDataDir:Ljava/io/File;

    move-object v5, v0

    move-object/from16 v0, v18

    move-object v1, v5

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2166
    .restart local v18       #dataPath:Ljava/io/File;
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_71c

    .line 2167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mOutPermissions:[I

    move-object v5, v0

    const/4 v6, 0x1

    const/4 v7, 0x0

    aput v7, v5, v6

    .line 2168
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mOutPermissions:[I

    move-object v6, v0

    invoke-static {v5, v6}, Landroid/os/FileUtils;->getPermissions(Ljava/lang/String;[I)I

    .line 2169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mOutPermissions:[I

    move-object v5, v0

    const/4 v6, 0x1

    aget v5, v5, v6

    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v6, v0

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v5, v6, :cond_58e

    invoke-static {}, Landroid/os/Process;->supportsProcesses()Z

    move-result v5

    if-nez v5, :cond_5a6

    .line 2171
    :cond_58e
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v5, v0

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 2223
    :cond_599
    :goto_599
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v5, v0

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    goto/16 :goto_500

    .line 2173
    :cond_5a6
    const/16 v35, 0x0

    .line 2174
    .local v35, recovered:Z
    and-int/lit8 v5, p5, 0x1

    if-eqz v5, :cond_663

    .line 2177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    move-object v5, v0

    if-eqz v5, :cond_65b

    .line 2178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/server/Installer;->remove(Ljava/lang/String;)I

    move-result v37

    .line 2179
    .restart local v37       #ret:I
    if-ltz v37, :cond_65b

    .line 2181
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "System package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has changed from uid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mOutPermissions:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v6, v0

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; old data erased"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 2185
    .restart local v24       #msg:Ljava/lang/String;
    const/4 v5, 0x5

    move v0, v5

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/android/server/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 2186
    const/16 v35, 0x1

    .line 2189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    move-object v5, v0

    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v6, v0

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v7, v0

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object v0, v5

    move-object/from16 v1, v32

    move v2, v6

    move v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/Installer;->install(Ljava/lang/String;II)I

    move-result v37

    .line 2191
    const/4 v5, -0x1

    move/from16 v0, v37

    move v1, v5

    if-ne v0, v1, :cond_65b

    .line 2193
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "System package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " could not have data directory re-created after delete."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 2195
    const/4 v5, 0x5

    move v0, v5

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/android/server/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 2196
    const/4 v5, -0x4

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/PackageManagerService;->mLastScanError:I

    .line 2197
    const/4 v5, 0x0

    goto/16 :goto_10

    .line 2201
    .end local v24           #msg:Ljava/lang/String;
    .end local v37           #ret:I
    :cond_65b
    if-nez v35, :cond_663

    .line 2202
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/PackageManagerService;->mHasSystemUidErrors:Z

    .line 2205
    :cond_663
    if-nez v35, :cond_599

    .line 2206
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v5, v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/mismatched_uid/settings_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v7, v0

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/fs_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mOutPermissions:[I

    move-object v7, v0

    const/4 v8, 0x1

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 2209
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has mismatched uid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mOutPermissions:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " on disk, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v6, v0

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in settings"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 2213
    .restart local v24       #msg:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object v5, v0

    monitor-enter v5

    .line 2214
    :try_start_6df
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PackageManagerService;->mReportedUidError:Z

    move v6, v0

    if-nez v6, :cond_70f

    .line 2215
    const/4 v6, 0x1

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/PackageManagerService;->mReportedUidError:Z

    .line 2216
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v6

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; read messages:\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/android/server/PackageManagerService$Settings;->getReadMessagesLP()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 2219
    :cond_70f
    const/4 v6, 0x6

    move v0, v6

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/android/server/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 2220
    monitor-exit v5

    goto/16 :goto_599

    :catchall_719
    move-exception v6

    monitor-exit v5
    :try_end_71b
    .catchall {:try_start_6df .. :try_end_71b} :catchall_719

    throw v6

    .line 2225
    .end local v24           #msg:Ljava/lang/String;
    .end local v35           #recovered:Z
    :cond_71c
    and-int/lit8 v5, p5, 0x2

    if-eqz v5, :cond_720

    .line 2228
    :cond_720
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    move-object v5, v0

    if-eqz v5, :cond_74e

    .line 2229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    move-object v5, v0

    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v6, v0

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v7, v0

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object v0, v5

    move-object/from16 v1, v32

    move v2, v6

    move v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/Installer;->install(Ljava/lang/String;II)I

    move-result v37

    .line 2231
    .restart local v37       #ret:I
    if-gez v37, :cond_76e

    .line 2233
    const/4 v5, -0x4

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/PackageManagerService;->mLastScanError:I

    .line 2234
    const/4 v5, 0x0

    goto/16 :goto_10

    .line 2237
    .end local v37           #ret:I
    :cond_74e
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->mkdirs()Z

    .line 2238
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_76e

    .line 2239
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x1f9

    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v7, v0

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v8, v0

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v5, v6, v7, v8}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 2245
    :cond_76e
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_781

    .line 2246
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v5, v0

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    goto/16 :goto_500

    .line 2248
    :cond_781
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to create data directory: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2249
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    goto/16 :goto_500

    .line 2267
    .restart local v29       #path:Ljava/lang/String;
    :cond_7a6
    and-int/lit8 v5, p6, 0x10

    if-eqz v5, :cond_7d1

    const/4 v5, 0x1

    :goto_7ab
    move v0, v5

    move-object/from16 v1, p4

    iput-boolean v0, v1, Landroid/content/pm/PackageParser$Package;->mForwardLocked:Z

    .line 2268
    move-object/from16 v0, v29

    move-object/from16 v1, p4

    iput-object v0, v1, Landroid/content/pm/PackageParser$Package;->mScanPath:Ljava/lang/String;

    .line 2270
    and-int/lit8 v5, p6, 0x2

    if-nez v5, :cond_7d3

    .line 2271
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/server/PackageManagerService;->performDexOptLI(Landroid/content/pm/PackageParser$Package;Z)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_7d3

    .line 2272
    const/16 v5, -0xb

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/PackageManagerService;->mLastScanError:I

    .line 2273
    const/4 v5, 0x0

    goto/16 :goto_10

    .line 2267
    :cond_7d1
    const/4 v5, 0x0

    goto :goto_7ab

    .line 2278
    .end local v29           #path:Ljava/lang/String;
    :cond_7d3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PackageManagerService;->mFactoryTest:Z

    move v5, v0

    if-eqz v5, :cond_7f2

    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    move-object v5, v0

    const-string v6, "android.permission.FACTORY_TEST"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7f2

    .line 2280
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v5, v0

    iget v6, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit8 v6, v6, 0x10

    iput v6, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 2284
    :cond_7f2
    and-int/lit8 v5, p6, 0x1

    if-eqz v5, :cond_810

    .line 2285
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p4

    iput-object v0, v1, Landroid/content/pm/PackageParser$Package;->mPath:Ljava/lang/String;

    .line 2286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mAppDirs:Ljava/util/HashMap;

    move-object v5, v0

    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mPath:Ljava/lang/String;

    move-object v6, v0

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2292
    :cond_810
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v15

    .line 2293
    .local v15, am:Landroid/app/IActivityManager;
    if-eqz v15, :cond_82b

    and-int/lit8 v5, p5, 0x2

    if-eqz v5, :cond_82b

    .line 2295
    :try_start_81a
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v5, v0

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v6, v0

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v15, v5, v6}, Landroid/app/IActivityManager;->killApplicationWithUid(Ljava/lang/String;I)V
    :try_end_82b
    .catch Landroid/os/RemoteException; {:try_start_81a .. :try_end_82b} :catch_fe0

    .line 2300
    :cond_82b
    :goto_82b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object v5, v0

    monitor-enter v5

    .line 2302
    :try_start_831
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, v33

    move-object/from16 v2, p4

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/PackageManagerService$Settings;->access$800(Lcom/android/server/PackageManagerService$Settings;Lcom/android/server/PackageManagerService$PackageSetting;Landroid/content/pm/PackageParser$Package;Ljava/io/File;Ljava/io/File;)V

    .line 2304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object v6, v0

    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v7, v0

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2305
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 2306
    .restart local v13       #N:I
    const/16 v34, 0x0

    .line 2308
    .local v34, r:Ljava/lang/StringBuilder;
    const/16 v22, 0x0

    .restart local v22       #i:I
    :goto_862
    move/from16 v0, v22

    move v1, v13

    if-ge v0, v1, :cond_a1b

    .line 2309
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    move-object v6, v0

    move-object v0, v6

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/content/pm/PackageParser$Provider;

    .line 2310
    .restart local v27       #p:Landroid/content/pm/PackageParser$Provider;
    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object v6, v0

    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v7, v0

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object v8, v0

    iget-object v8, v8, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v9, v0

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v7, v8, v9}, Lcom/android/server/PackageManagerService;->fixProcessName(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    .line 2312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mProvidersByComponent:Ljava/util/HashMap;

    move-object v6, v0

    new-instance v7, Landroid/content/ComponentName;

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object v8, v0

    iget-object v8, v8, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object v9, v0

    iget-object v9, v9, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2314
    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object v6, v0

    iget-boolean v6, v6, Landroid/content/pm/ProviderInfo;->isSyncable:Z

    move v0, v6

    move-object/from16 v1, v27

    iput-boolean v0, v1, Landroid/content/pm/PackageParser$Provider;->syncable:Z

    .line 2315
    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v25

    .line 2316
    .restart local v25       #names:[Ljava/lang/String;
    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 2317
    const/16 v23, 0x0

    .restart local v23       #j:I
    move-object/from16 v28, v27

    .end local v27           #p:Landroid/content/pm/PackageParser$Provider;
    .local v28, p:Landroid/content/pm/PackageParser$Provider;
    :goto_8d9
    move-object/from16 v0, v25

    array-length v0, v0

    move v6, v0

    move/from16 v0, v23

    move v1, v6

    if-ge v0, v1, :cond_9f1

    .line 2318
    const/4 v6, 0x1

    move/from16 v0, v23

    move v1, v6

    if-ne v0, v1, :cond_fe3

    move-object/from16 v0, v28

    iget-boolean v0, v0, Landroid/content/pm/PackageParser$Provider;->syncable:Z

    move v6, v0

    if-eqz v6, :cond_fe3

    .line 2326
    new-instance v27, Landroid/content/pm/PackageParser$Provider;

    invoke-direct/range {v27 .. v28}, Landroid/content/pm/PackageParser$Provider;-><init>(Landroid/content/pm/PackageParser$Provider;)V

    .line 2327
    .end local v28           #p:Landroid/content/pm/PackageParser$Provider;
    .restart local v27       #p:Landroid/content/pm/PackageParser$Provider;
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, v27

    iput-boolean v0, v1, Landroid/content/pm/PackageParser$Provider;->syncable:Z

    .line 2329
    :goto_8fa
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mProviders:Ljava/util/HashMap;

    move-object v6, v0

    aget-object v7, v25, v23

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_998

    .line 2330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mProviders:Ljava/util/HashMap;

    move-object v6, v0

    aget-object v7, v25, v23

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2331
    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    if-nez v6, :cond_96d

    .line 2332
    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object v6, v0

    aget-object v7, v25, v23

    iput-object v7, v6, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 2336
    :goto_927
    and-int/lit8 v6, p5, 0x2

    if-eqz v6, :cond_967

    .line 2337
    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Registered content provider: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v25, v23

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", className = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object v8, v0

    iget-object v8, v8, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", isSyncable = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object v8, v0

    iget-boolean v8, v8, Landroid/content/pm/ProviderInfo;->isSyncable:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2317
    :cond_967
    :goto_967
    add-int/lit8 v23, v23, 0x1

    move-object/from16 v28, v27

    .end local v27           #p:Landroid/content/pm/PackageParser$Provider;
    .restart local v28       #p:Landroid/content/pm/PackageParser$Provider;
    goto/16 :goto_8d9

    .line 2334
    .end local v28           #p:Landroid/content/pm/PackageParser$Provider;
    .restart local v27       #p:Landroid/content/pm/PackageParser$Provider;
    :cond_96d
    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object v6, v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object v8, v0

    iget-object v8, v8, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v25, v23

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    goto :goto_927

    .line 2547
    .end local v13           #N:I
    .end local v22           #i:I
    .end local v23           #j:I
    .end local v25           #names:[Ljava/lang/String;
    .end local v27           #p:Landroid/content/pm/PackageParser$Provider;
    .end local v34           #r:Ljava/lang/StringBuilder;
    .end local p1
    :catchall_995
    move-exception v6

    monitor-exit v5
    :try_end_997
    .catchall {:try_start_831 .. :try_end_997} :catchall_995

    throw v6

    .line 2341
    .restart local v13       #N:I
    .restart local v22       #i:I
    .restart local v23       #j:I
    .restart local v25       #names:[Ljava/lang/String;
    .restart local v27       #p:Landroid/content/pm/PackageParser$Provider;
    .restart local v34       #r:Ljava/lang/StringBuilder;
    .restart local p1
    :cond_998
    :try_start_998
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mProviders:Ljava/util/HashMap;

    move-object v6, v0

    aget-object v7, v25, v23

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/content/pm/PackageParser$Provider;

    .line 2342
    .restart local v26       #other:Landroid/content/pm/PackageParser$Provider;
    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Skipping provider name "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v25, v23

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " (in package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v8, v0

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "): name already used by "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz v26, :cond_9ee

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->component:Landroid/content/ComponentName;

    move-object v8, v0

    if-eqz v8, :cond_9ee

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->component:Landroid/content/ComponentName;

    move-object v8, v0

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    :goto_9e1
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_967

    :cond_9ee
    const-string v8, "?"

    goto :goto_9e1

    .line 2349
    .end local v26           #other:Landroid/content/pm/PackageParser$Provider;
    .end local v27           #p:Landroid/content/pm/PackageParser$Provider;
    .restart local v28       #p:Landroid/content/pm/PackageParser$Provider;
    :cond_9f1
    and-int/lit8 v6, p5, 0x2

    if-eqz v6, :cond_a0e

    .line 2350
    if-nez v34, :cond_a12

    .line 2351
    new-instance v34, Ljava/lang/StringBuilder;

    .end local v34           #r:Ljava/lang/StringBuilder;
    const/16 v6, 0x100

    move-object/from16 v0, v34

    move v1, v6

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2355
    .restart local v34       #r:Ljava/lang/StringBuilder;
    :goto_a01
    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v34

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2308
    :cond_a0e
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_862

    .line 2353
    :cond_a12
    const/16 v6, 0x20

    move-object/from16 v0, v34

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_a01

    .line 2358
    .end local v23           #j:I
    .end local v25           #names:[Ljava/lang/String;
    .end local v28           #p:Landroid/content/pm/PackageParser$Provider;
    :cond_a1b
    if-eqz v34, :cond_a38

    .line 2359
    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  Providers: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2362
    :cond_a38
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 2363
    const/16 v34, 0x0

    .line 2364
    const/16 v22, 0x0

    :goto_a45
    move/from16 v0, v22

    move v1, v13

    if-ge v0, v1, :cond_aac

    .line 2365
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    move-object v6, v0

    move-object v0, v6

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Landroid/content/pm/PackageParser$Service;

    .line 2366
    .local v38, s:Landroid/content/pm/PackageParser$Service;
    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    move-object v6, v0

    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v7, v0

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    move-object v8, v0

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v9, v0

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v7, v8, v9}, Lcom/android/server/PackageManagerService;->fixProcessName(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    .line 2368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mServices:Lcom/android/server/PackageManagerService$ServiceIntentResolver;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/server/PackageManagerService$ServiceIntentResolver;->addService(Landroid/content/pm/PackageParser$Service;)V

    .line 2369
    and-int/lit8 v6, p5, 0x2

    if-eqz v6, :cond_aa0

    .line 2370
    if-nez v34, :cond_aa3

    .line 2371
    new-instance v34, Ljava/lang/StringBuilder;

    .end local v34           #r:Ljava/lang/StringBuilder;
    const/16 v6, 0x100

    move-object/from16 v0, v34

    move v1, v6

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2375
    .restart local v34       #r:Ljava/lang/StringBuilder;
    :goto_a93
    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v34

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2364
    :cond_aa0
    add-int/lit8 v22, v22, 0x1

    goto :goto_a45

    .line 2373
    :cond_aa3
    const/16 v6, 0x20

    move-object/from16 v0, v34

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_a93

    .line 2378
    .end local v38           #s:Landroid/content/pm/PackageParser$Service;
    :cond_aac
    if-eqz v34, :cond_ac9

    .line 2379
    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  Services: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2382
    :cond_ac9
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 2383
    const/16 v34, 0x0

    .line 2384
    const/16 v22, 0x0

    :goto_ad6
    move/from16 v0, v22

    move v1, v13

    if-ge v0, v1, :cond_b33

    .line 2385
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    move-object v6, v0

    move-object v0, v6

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/PackageParser$Activity;

    .line 2386
    .local v14, a:Landroid/content/pm/PackageParser$Activity;
    iget-object v6, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v7, v0

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget-object v8, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v9, v0

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v7, v8, v9}, Lcom/android/server/PackageManagerService;->fixProcessName(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 2388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mReceivers:Lcom/android/server/PackageManagerService$ActivityIntentResolver;

    move-object v6, v0

    const-string v7, "receiver"

    invoke-virtual {v6, v14, v7}, Lcom/android/server/PackageManagerService$ActivityIntentResolver;->addActivity(Landroid/content/pm/PackageParser$Activity;Ljava/lang/String;)V

    .line 2389
    and-int/lit8 v6, p5, 0x2

    if-eqz v6, :cond_b27

    .line 2390
    if-nez v34, :cond_b2a

    .line 2391
    new-instance v34, Ljava/lang/StringBuilder;

    .end local v34           #r:Ljava/lang/StringBuilder;
    const/16 v6, 0x100

    move-object/from16 v0, v34

    move v1, v6

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2395
    .restart local v34       #r:Ljava/lang/StringBuilder;
    :goto_b1d
    iget-object v6, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v34

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2384
    :cond_b27
    add-int/lit8 v22, v22, 0x1

    goto :goto_ad6

    .line 2393
    :cond_b2a
    const/16 v6, 0x20

    move-object/from16 v0, v34

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_b1d

    .line 2398
    .end local v14           #a:Landroid/content/pm/PackageParser$Activity;
    :cond_b33
    if-eqz v34, :cond_b50

    .line 2399
    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  Receivers: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2402
    :cond_b50
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 2403
    const/16 v34, 0x0

    .line 2404
    const/16 v22, 0x0

    :goto_b5d
    move/from16 v0, v22

    move v1, v13

    if-ge v0, v1, :cond_bba

    .line 2405
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    move-object v6, v0

    move-object v0, v6

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/PackageParser$Activity;

    .line 2406
    .restart local v14       #a:Landroid/content/pm/PackageParser$Activity;
    iget-object v6, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v7, v0

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget-object v8, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v9, v0

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v7, v8, v9}, Lcom/android/server/PackageManagerService;->fixProcessName(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 2408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mActivities:Lcom/android/server/PackageManagerService$ActivityIntentResolver;

    move-object v6, v0

    const-string v7, "activity"

    invoke-virtual {v6, v14, v7}, Lcom/android/server/PackageManagerService$ActivityIntentResolver;->addActivity(Landroid/content/pm/PackageParser$Activity;Ljava/lang/String;)V

    .line 2409
    and-int/lit8 v6, p5, 0x2

    if-eqz v6, :cond_bae

    .line 2410
    if-nez v34, :cond_bb1

    .line 2411
    new-instance v34, Ljava/lang/StringBuilder;

    .end local v34           #r:Ljava/lang/StringBuilder;
    const/16 v6, 0x100

    move-object/from16 v0, v34

    move v1, v6

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2415
    .restart local v34       #r:Ljava/lang/StringBuilder;
    :goto_ba4
    iget-object v6, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v34

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2404
    :cond_bae
    add-int/lit8 v22, v22, 0x1

    goto :goto_b5d

    .line 2413
    :cond_bb1
    const/16 v6, 0x20

    move-object/from16 v0, v34

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_ba4

    .line 2418
    .end local v14           #a:Landroid/content/pm/PackageParser$Activity;
    :cond_bba
    if-eqz v34, :cond_bd7

    .line 2419
    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  Activities: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2422
    :cond_bd7
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->permissionGroups:Ljava/util/ArrayList;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 2423
    const/16 v34, 0x0

    .line 2424
    const/16 v22, 0x0

    :goto_be4
    move/from16 v0, v22

    move v1, v13

    if-ge v0, v1, :cond_cb7

    .line 2425
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->permissionGroups:Ljava/util/ArrayList;

    move-object v6, v0

    move-object v0, v6

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/content/pm/PackageParser$PermissionGroup;

    .line 2426
    .local v31, pg:Landroid/content/pm/PackageParser$PermissionGroup;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPermissionGroups:Ljava/util/HashMap;

    move-object v6, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    move-object v7, v0

    iget-object v7, v7, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/pm/PackageParser$PermissionGroup;

    .line 2427
    .local v17, cur:Landroid/content/pm/PackageParser$PermissionGroup;
    if-nez v17, :cond_c47

    .line 2428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPermissionGroups:Ljava/util/HashMap;

    move-object v6, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    move-object v7, v0

    iget-object v7, v7, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2429
    and-int/lit8 v6, p5, 0x2

    if-eqz v6, :cond_c3b

    .line 2430
    if-nez v34, :cond_c3e

    .line 2431
    new-instance v34, Ljava/lang/StringBuilder;

    .end local v34           #r:Ljava/lang/StringBuilder;
    const/16 v6, 0x100

    move-object/from16 v0, v34

    move v1, v6

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2435
    .restart local v34       #r:Ljava/lang/StringBuilder;
    :goto_c2e
    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v34

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2424
    :cond_c3b
    :goto_c3b
    add-int/lit8 v22, v22, 0x1

    goto :goto_be4

    .line 2433
    :cond_c3e
    const/16 v6, 0x20

    move-object/from16 v0, v34

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_c2e

    .line 2438
    :cond_c47
    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Permission group "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    move-object v8, v0

    iget-object v8, v8, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " from package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    move-object v8, v0

    iget-object v8, v8, Landroid/content/pm/PermissionGroupInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ignored: original from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    move-object v8, v0

    iget-object v8, v8, Landroid/content/pm/PermissionGroupInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2441
    and-int/lit8 v6, p5, 0x2

    if-eqz v6, :cond_c3b

    .line 2442
    if-nez v34, :cond_cae

    .line 2443
    new-instance v34, Ljava/lang/StringBuilder;

    .end local v34           #r:Ljava/lang/StringBuilder;
    const/16 v6, 0x100

    move-object/from16 v0, v34

    move v1, v6

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2447
    .restart local v34       #r:Ljava/lang/StringBuilder;
    :goto_c98
    const-string v6, "DUP:"

    move-object/from16 v0, v34

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2448
    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v34

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c3b

    .line 2445
    :cond_cae
    const/16 v6, 0x20

    move-object/from16 v0, v34

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_c98

    .line 2452
    .end local v17           #cur:Landroid/content/pm/PackageParser$PermissionGroup;
    .end local v31           #pg:Landroid/content/pm/PackageParser$PermissionGroup;
    :cond_cb7
    if-eqz v34, :cond_cd4

    .line 2453
    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  Permission Groups: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2456
    :cond_cd4
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 2457
    const/16 v34, 0x0

    .line 2458
    const/16 v22, 0x0

    .end local p1
    :goto_ce1
    move/from16 v0, v22

    move v1, v13

    if-ge v0, v1, :cond_ef0

    .line 2459
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    move-object v6, v0

    move-object v0, v6

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/content/pm/PackageParser$Permission;

    .line 2460
    .local v27, p:Landroid/content/pm/PackageParser$Permission;
    move-object/from16 v0, v27

    iget-boolean v0, v0, Landroid/content/pm/PackageParser$Permission;->tree:Z

    move v6, v0

    if-eqz v6, :cond_ddb

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/server/PackageManagerService$Settings;->mPermissionTrees:Ljava/util/HashMap;

    move-object/from16 v30, v6

    .line 2463
    .local v30, permissionMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/PackageManagerService$BasePermission;>;"
    :goto_d04
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPermissionGroups:Ljava/util/HashMap;

    move-object v6, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    move-object v7, v0

    iget-object v7, v7, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageParser$PermissionGroup;

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    iput-object v0, v1, Landroid/content/pm/PackageParser$Permission;->group:Landroid/content/pm/PackageParser$PermissionGroup;

    .line 2464
    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    if-eqz v6, :cond_d2c

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/pm/PackageParser$Permission;->group:Landroid/content/pm/PackageParser$PermissionGroup;

    move-object v6, v0

    if-eqz v6, :cond_eaf

    .line 2465
    :cond_d2c
    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v30

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/PackageManagerService$BasePermission;

    .line 2466
    .local v16, bp:Lcom/android/server/PackageManagerService$BasePermission;
    if-nez v16, :cond_d66

    .line 2467
    new-instance v16, Lcom/android/server/PackageManagerService$BasePermission;

    .end local v16           #bp:Lcom/android/server/PackageManagerService$BasePermission;
    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    move-object v7, v0

    iget-object v7, v7, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v0, v16

    move-object v1, v6

    move-object v2, v7

    move v3, v8

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/PackageManagerService$BasePermission;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2469
    .restart local v16       #bp:Lcom/android/server/PackageManagerService$BasePermission;
    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v30

    move-object v1, v6

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2471
    :cond_d66
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/PackageManagerService$BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    move-object v6, v0

    if-nez v6, :cond_e7f

    .line 2472
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/PackageManagerService$BasePermission;->sourcePackage:Ljava/lang/String;

    move-object v6, v0

    if-eqz v6, :cond_d86

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/PackageManagerService$BasePermission;->sourcePackage:Ljava/lang/String;

    move-object v6, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    move-object v7, v0

    iget-object v7, v7, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e3e

    .line 2474
    :cond_d86
    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/server/PackageManagerService;->findPermissionTreeLP(Ljava/lang/String;)Lcom/android/server/PackageManagerService$BasePermission;

    move-result-object v42

    .line 2475
    .local v42, tree:Lcom/android/server/PackageManagerService$BasePermission;
    if-eqz v42, :cond_da8

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/android/server/PackageManagerService$BasePermission;->sourcePackage:Ljava/lang/String;

    move-object v6, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    move-object v7, v0

    iget-object v7, v7, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_def

    .line 2477
    :cond_da8
    move-object/from16 v0, v27

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/server/PackageManagerService$BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    .line 2478
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v6, v0

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    move v0, v6

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/server/PackageManagerService$BasePermission;->uid:I

    .line 2479
    and-int/lit8 v6, p5, 0x2

    if-eqz v6, :cond_dd7

    .line 2480
    if-nez v34, :cond_de6

    .line 2481
    new-instance v34, Ljava/lang/StringBuilder;

    .end local v34           #r:Ljava/lang/StringBuilder;
    const/16 v6, 0x100

    move-object/from16 v0, v34

    move v1, v6

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2485
    .restart local v34       #r:Ljava/lang/StringBuilder;
    :goto_dca
    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v34

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2458
    .end local v16           #bp:Lcom/android/server/PackageManagerService$BasePermission;
    .end local v42           #tree:Lcom/android/server/PackageManagerService$BasePermission;
    :cond_dd7
    :goto_dd7
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_ce1

    .line 2460
    .end local v30           #permissionMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/PackageManagerService$BasePermission;>;"
    :cond_ddb
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/server/PackageManagerService$Settings;->mPermissions:Ljava/util/HashMap;

    move-object/from16 v30, v6

    goto/16 :goto_d04

    .line 2483
    .restart local v16       #bp:Lcom/android/server/PackageManagerService$BasePermission;
    .restart local v30       #permissionMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/PackageManagerService$BasePermission;>;"
    .restart local v42       #tree:Lcom/android/server/PackageManagerService$BasePermission;
    :cond_de6
    const/16 v6, 0x20

    move-object/from16 v0, v34

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_dca

    .line 2488
    :cond_def
    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Permission "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    move-object v8, v0

    iget-object v8, v8, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " from package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    move-object v8, v0

    iget-object v8, v8, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ignored: base tree "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/android/server/PackageManagerService$BasePermission;->name:Ljava/lang/String;

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is from package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/android/server/PackageManagerService$BasePermission;->sourcePackage:Ljava/lang/String;

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_dd7

    .line 2494
    .end local v42           #tree:Lcom/android/server/PackageManagerService$BasePermission;
    :cond_e3e
    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Permission "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    move-object v8, v0

    iget-object v8, v8, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " from package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    move-object v8, v0

    iget-object v8, v8, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ignored: original from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/PackageManagerService$BasePermission;->sourcePackage:Ljava/lang/String;

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_dd7

    .line 2498
    :cond_e7f
    and-int/lit8 v6, p5, 0x2

    if-eqz v6, :cond_dd7

    .line 2499
    if-nez v34, :cond_ea6

    .line 2500
    new-instance v34, Ljava/lang/StringBuilder;

    .end local v34           #r:Ljava/lang/StringBuilder;
    const/16 v6, 0x100

    move-object/from16 v0, v34

    move v1, v6

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2504
    .restart local v34       #r:Ljava/lang/StringBuilder;
    :goto_e8f
    const-string v6, "DUP:"

    move-object/from16 v0, v34

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2505
    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v34

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_dd7

    .line 2502
    :cond_ea6
    const/16 v6, 0x20

    move-object/from16 v0, v34

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_e8f

    .line 2508
    .end local v16           #bp:Lcom/android/server/PackageManagerService$BasePermission;
    :cond_eaf
    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Permission "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    move-object v8, v0

    iget-object v8, v8, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " from package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    move-object v8, v0

    iget-object v8, v8, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ignored: no group "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/pm/PackageParser$Permission;->group:Landroid/content/pm/PackageParser$PermissionGroup;

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_dd7

    .line 2513
    .end local v27           #p:Landroid/content/pm/PackageParser$Permission;
    .end local v30           #permissionMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/PackageManagerService$BasePermission;>;"
    :cond_ef0
    if-eqz v34, :cond_f0d

    .line 2514
    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  Permissions: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2517
    :cond_f0d
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 2518
    const/16 v34, 0x0

    .line 2519
    const/16 v22, 0x0

    :goto_f1a
    move/from16 v0, v22

    move v1, v13

    if-ge v0, v1, :cond_f89

    .line 2520
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    move-object v6, v0

    move-object v0, v6

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/PackageParser$Instrumentation;

    .line 2521
    .local v14, a:Landroid/content/pm/PackageParser$Instrumentation;
    iget-object v6, v14, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v7, v0

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v7, v6, Landroid/content/pm/InstrumentationInfo;->packageName:Ljava/lang/String;

    .line 2522
    iget-object v6, v14, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v7, v0

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v7, v6, Landroid/content/pm/InstrumentationInfo;->sourceDir:Ljava/lang/String;

    .line 2523
    iget-object v6, v14, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v7, v0

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    iput-object v7, v6, Landroid/content/pm/InstrumentationInfo;->publicSourceDir:Ljava/lang/String;

    .line 2524
    iget-object v6, v14, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v7, v0

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    iput-object v7, v6, Landroid/content/pm/InstrumentationInfo;->dataDir:Ljava/lang/String;

    .line 2525
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mInstrumentation:Ljava/util/HashMap;

    move-object v6, v0

    iget-object v7, v14, Landroid/content/pm/PackageParser$Instrumentation;->component:Landroid/content/ComponentName;

    invoke-virtual {v6, v7, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2526
    and-int/lit8 v6, p5, 0x2

    if-eqz v6, :cond_f7d

    .line 2527
    if-nez v34, :cond_f80

    .line 2528
    new-instance v34, Ljava/lang/StringBuilder;

    .end local v34           #r:Ljava/lang/StringBuilder;
    const/16 v6, 0x100

    move-object/from16 v0, v34

    move v1, v6

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2532
    .restart local v34       #r:Ljava/lang/StringBuilder;
    :goto_f73
    iget-object v6, v14, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    iget-object v6, v6, Landroid/content/pm/InstrumentationInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v34

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2519
    :cond_f7d
    add-int/lit8 v22, v22, 0x1

    goto :goto_f1a

    .line 2530
    :cond_f80
    const/16 v6, 0x20

    move-object/from16 v0, v34

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_f73

    .line 2535
    .end local v14           #a:Landroid/content/pm/PackageParser$Instrumentation;
    :cond_f89
    if-eqz v34, :cond_fa6

    .line 2536
    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  Instrumentation: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2539
    :cond_fa6
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->protectedBroadcasts:Ljava/util/ArrayList;

    move-object v6, v0

    if-eqz v6, :cond_fd4

    .line 2540
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->protectedBroadcasts:Ljava/util/ArrayList;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 2541
    const/16 v22, 0x0

    :goto_fb8
    move/from16 v0, v22

    move v1, v13

    if-ge v0, v1, :cond_fd4

    .line 2542
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mProtectedBroadcasts:Ljava/util/HashSet;

    move-object v6, v0

    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->protectedBroadcasts:Ljava/util/ArrayList;

    move-object v7, v0

    move-object v0, v7

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2541
    add-int/lit8 v22, v22, 0x1

    goto :goto_fb8

    .line 2546
    :cond_fd4
    move-object/from16 v0, v33

    move-wide/from16 v1, v40

    invoke-virtual {v0, v1, v2}, Lcom/android/server/PackageManagerService$PackageSetting;->setTimeStamp(J)V

    .line 2547
    monitor-exit v5
    :try_end_fdc
    .catchall {:try_start_998 .. :try_end_fdc} :catchall_995

    move-object/from16 v5, p4

    .line 2549
    goto/16 :goto_10

    .line 2297
    .end local v13           #N:I
    .end local v22           #i:I
    .end local v34           #r:Ljava/lang/StringBuilder;
    .restart local p1
    :catch_fe0
    move-exception v5

    goto/16 :goto_82b

    .restart local v13       #N:I
    .restart local v22       #i:I
    .restart local v23       #j:I
    .restart local v25       #names:[Ljava/lang/String;
    .restart local v28       #p:Landroid/content/pm/PackageParser$Provider;
    .restart local v34       #r:Ljava/lang/StringBuilder;
    :cond_fe3
    move-object/from16 v27, v28

    .end local v28           #p:Landroid/content/pm/PackageParser$Provider;
    .local v27, p:Landroid/content/pm/PackageParser$Provider;
    goto/16 :goto_8fa
.end method

.method private static final sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 14
    .parameter "action"
    .parameter "pkg"
    .parameter "extras"

    .prologue
    const/4 v1, 0x0

    .line 3331
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 3332
    .local v0, am:Landroid/app/IActivityManager;
    if-eqz v0, :cond_2b

    .line 3334
    :try_start_7
    new-instance v2, Landroid/content/Intent;

    if-eqz p1, :cond_12

    const-string v1, "package"

    const/4 v3, 0x0

    invoke-static {v1, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :cond_12
    invoke-direct {v2, p0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3336
    .local v2, intent:Landroid/content/Intent;
    if-eqz p2, :cond_1a

    .line 3337
    invoke-virtual {v2, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 3339
    :cond_1a
    const/high16 v1, 0x2000

    invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3340
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface/range {v0 .. v10}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ZZ)I
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_2b} :catch_2c

    .line 3346
    .end local v2           #intent:Landroid/content/Intent;
    :cond_2b
    :goto_2b
    return-void

    .line 3343
    :catch_2c
    move-exception v1

    goto :goto_2b
.end method

.method private setEnabledSetting(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 17
    .parameter "packageNameStr"
    .parameter "classNameStr"
    .parameter "newState"
    .parameter "flags"

    .prologue
    .line 4752
    if-eqz p3, :cond_21

    const/4 v8, 0x1

    if-eq p3, v8, :cond_21

    const/4 v8, 0x2

    if-eq p3, v8, :cond_21

    .line 4755
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid new component state: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 4759
    :cond_21
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 4760
    .local v7, uid:I
    iget-object v8, p0, Lcom/android/server/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v9, "android.permission.CHANGE_COMPONENT_ENABLED_STATE"

    invoke-virtual {v8, v9}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v5

    .line 4762
    .local v5, permission:I
    if-nez v5, :cond_61

    const/4 v8, 0x1

    move v0, v8

    .line 4763
    .local v0, allowedByPermission:Z
    :goto_31
    const/4 v4, -0x1

    .line 4764
    .local v4, packageUid:I
    iget-object v8, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v8

    .line 4765
    :try_start_35
    iget-object v9, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    invoke-static {v9}, Lcom/android/server/PackageManagerService$Settings;->access$300(Lcom/android/server/PackageManagerService$Settings;)Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 4766
    .local v6, pkgSetting:Lcom/android/server/PackageManagerService$PackageSetting;
    if-nez v6, :cond_87

    .line 4767
    if-nez p2, :cond_64

    .line 4768
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown package: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 4802
    .end local v6           #pkgSetting:Lcom/android/server/PackageManagerService$PackageSetting;
    :catchall_5e
    move-exception v9

    monitor-exit v8
    :try_end_60
    .catchall {:try_start_35 .. :try_end_60} :catchall_5e

    throw v9

    .line 4762
    .end local v0           #allowedByPermission:Z
    .end local v4           #packageUid:I
    :cond_61
    const/4 v8, 0x0

    move v0, v8

    goto :goto_31

    .line 4771
    .restart local v0       #allowedByPermission:Z
    .restart local v4       #packageUid:I
    .restart local v6       #pkgSetting:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_64
    :try_start_64
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown component: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 4775
    :cond_87
    if-nez v0, :cond_c0

    iget v9, v6, Lcom/android/server/PackageManagerService$PackageSetting;->userId:I

    if-eq v7, v9, :cond_c0

    .line 4776
    new-instance v9, Ljava/lang/SecurityException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Permission Denial: attempt to change component state from pid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", uid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", package uid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v6, Lcom/android/server/PackageManagerService$PackageSetting;->userId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 4781
    :cond_c0
    iget v4, v6, Lcom/android/server/PackageManagerService$PackageSetting;->userId:I

    .line 4782
    if-nez p2, :cond_ee

    .line 4784
    iput p3, v6, Lcom/android/server/PackageManagerService$PackageSetting;->enabled:I

    .line 4801
    :goto_c6
    iget-object v9, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    invoke-virtual {v9}, Lcom/android/server/PackageManagerService$Settings;->writeLP()V

    .line 4802
    monitor-exit v8
    :try_end_cc
    .catchall {:try_start_64 .. :try_end_cc} :catchall_5e

    .line 4804
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 4806
    .local v1, callingId:J
    :try_start_d0
    new-instance v3, Landroid/os/Bundle;

    const/4 v8, 0x2

    invoke-direct {v3, v8}, Landroid/os/Bundle;-><init>(I)V

    .line 4807
    .local v3, extras:Landroid/os/Bundle;
    const-string v8, "android.intent.extra.DONT_KILL_APP"

    and-int/lit8 v9, p4, 0x1

    if-eqz v9, :cond_116

    const/4 v9, 0x1

    :goto_dd
    invoke-virtual {v3, v8, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4809
    const-string v8, "android.intent.extra.UID"

    invoke-virtual {v3, v8, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4810
    const-string v8, "android.intent.action.PACKAGE_CHANGED"

    invoke-static {v8, p1, v3}, Lcom/android/server/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_ea
    .catchall {:try_start_d0 .. :try_end_ea} :catchall_118

    .line 4812
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4814
    return-void

    .line 4787
    .end local v1           #callingId:J
    .end local v3           #extras:Landroid/os/Bundle;
    :cond_ee
    packed-switch p3, :pswitch_data_11e

    .line 4798
    :try_start_f1
    const-string v9, "PackageManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid new component state: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c6

    .line 4789
    :pswitch_10a
    invoke-virtual {v6, p2}, Lcom/android/server/PackageManagerService$PackageSetting;->enableComponentLP(Ljava/lang/String;)V

    goto :goto_c6

    .line 4792
    :pswitch_10e
    invoke-virtual {v6, p2}, Lcom/android/server/PackageManagerService$PackageSetting;->disableComponentLP(Ljava/lang/String;)V

    goto :goto_c6

    .line 4795
    :pswitch_112
    invoke-virtual {v6, p2}, Lcom/android/server/PackageManagerService$PackageSetting;->restoreComponentLP(Ljava/lang/String;)V
    :try_end_115
    .catchall {:try_start_f1 .. :try_end_115} :catchall_5e

    goto :goto_c6

    .line 4807
    .restart local v1       #callingId:J
    .restart local v3       #extras:Landroid/os/Bundle;
    :cond_116
    const/4 v9, 0x0

    goto :goto_dd

    .line 4812
    .end local v3           #extras:Landroid/os/Bundle;
    :catchall_118
    move-exception v8

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v8

    .line 4787
    nop

    :pswitch_data_11e
    .packed-switch 0x0
        :pswitch_112
        :pswitch_10a
        :pswitch_10e
    .end packed-switch
.end method

.method private setPermissionsLI(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;Ljava/lang/String;Ljava/io/File;Z)I
    .registers 13
    .parameter "pkgName"
    .parameter "newPackage"
    .parameter "destFilePath"
    .parameter "destResourceFile"
    .parameter "forwardLocked"

    .prologue
    const/4 v5, -0x1

    const-string v6, "PackageManager"

    .line 3972
    if-eqz p5, :cond_55

    .line 3974
    :try_start_5
    invoke-direct {p0, p2, p4}, Lcom/android/server/PackageManagerService;->extractPublicFiles(Landroid/content/pm/PackageParser$Package;Ljava/io/File;)V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_46
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_8} :catch_3c

    .line 3982
    iget-object v3, p0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    if-eqz v3, :cond_48

    .line 3983
    iget-object v3, p0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, p1, v4}, Lcom/android/server/Installer;->setForwardLockPerm(Ljava/lang/String;I)I

    move-result v2

    .line 3997
    .local v2, retCode:I
    :goto_16
    if-eqz v2, :cond_3a

    .line 3998
    const-string v3, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t set new package file permissions for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". The return code was: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4001
    :cond_3a
    const/4 v3, 0x1

    .end local v2           #retCode:I
    :goto_3b
    return v3

    .line 3975
    :catch_3c
    move-exception v0

    .line 3976
    .local v0, e:Ljava/io/IOException;
    :try_start_3d
    const-string v3, "PackageManager"

    const-string v4, "Couldn\'t create a new zip file for the public parts of a forward-locked app."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_44
    .catchall {:try_start_3d .. :try_end_44} :catchall_46

    .line 3978
    const/4 v3, -0x4

    goto :goto_3b

    .line 3979
    .end local v0           #e:Ljava/io/IOException;
    :catchall_46
    move-exception v3

    throw v3

    .line 3986
    :cond_48
    const/16 v1, 0x1a0

    .line 3988
    .local v1, filePermissions:I
    const/16 v3, 0x1a0

    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p3, v3, v5, v4}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    move-result v2

    .line 3990
    .restart local v2       #retCode:I
    goto :goto_16

    .line 3992
    .end local v1           #filePermissions:I
    .end local v2           #retCode:I
    :cond_55
    const/16 v1, 0x1a4

    .line 3995
    .restart local v1       #filePermissions:I
    const/16 v3, 0x1a4

    invoke-static {p3, v3, v5, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    move-result v2

    .restart local v2       #retCode:I
    goto :goto_16
.end method

.method static splitString(Ljava/lang/String;C)[Ljava/lang/String;
    .registers 7
    .parameter "str"
    .parameter "sep"

    .prologue
    .line 272
    const/4 v0, 0x1

    .line 273
    .local v0, count:I
    const/4 v1, 0x0

    .line 274
    .local v1, i:I
    :goto_2
    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-ltz v1, :cond_d

    .line 275
    add-int/lit8 v0, v0, 0x1

    .line 276
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 279
    :cond_d
    new-array v3, v0, [Ljava/lang/String;

    .line 280
    .local v3, res:[Ljava/lang/String;
    const/4 v1, 0x0

    .line 281
    const/4 v0, 0x0

    .line 282
    const/4 v2, 0x0

    .line 283
    .local v2, lastI:I
    :goto_12
    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-ltz v1, :cond_24

    .line 284
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 285
    add-int/lit8 v0, v0, 0x1

    .line 286
    add-int/lit8 v1, v1, 0x1

    .line 287
    move v2, v1

    goto :goto_12

    .line 289
    :cond_24
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 290
    return-object v3
.end method

.method private updatePermissionsLP()V
    .registers 12

    .prologue
    const-string v10, "PackageManager"

    const-string v9, " from package "

    .line 2828
    iget-object v5, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    iget-object v5, v5, Lcom/android/server/PackageManagerService$Settings;->mPermissionTrees:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2830
    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/PackageManagerService$BasePermission;>;"
    :cond_10
    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4a

    .line 2831
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageManagerService$BasePermission;

    .line 2832
    .local v0, bp:Lcom/android/server/PackageManagerService$BasePermission;
    iget-object v5, v0, Lcom/android/server/PackageManagerService$BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    if-nez v5, :cond_10

    .line 2833
    const-string v5, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removing dangling permission tree: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/android/server/PackageManagerService$BasePermission;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " from package "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/android/server/PackageManagerService$BasePermission;->sourcePackage:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2835
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_10

    .line 2841
    .end local v0           #bp:Lcom/android/server/PackageManagerService$BasePermission;
    :cond_4a
    iget-object v5, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    iget-object v5, v5, Lcom/android/server/PackageManagerService$Settings;->mPermissions:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2842
    :cond_56
    :goto_56
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_cf

    .line 2843
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageManagerService$BasePermission;

    .line 2844
    .restart local v0       #bp:Lcom/android/server/PackageManagerService$BasePermission;
    iget v5, v0, Lcom/android/server/PackageManagerService$BasePermission;->type:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_a1

    .line 2848
    iget-object v5, v0, Lcom/android/server/PackageManagerService$BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    if-nez v5, :cond_a1

    iget-object v5, v0, Lcom/android/server/PackageManagerService$BasePermission;->pendingInfo:Landroid/content/pm/PermissionInfo;

    if-eqz v5, :cond_a1

    .line 2849
    iget-object v5, v0, Lcom/android/server/PackageManagerService$BasePermission;->name:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/server/PackageManagerService;->findPermissionTreeLP(Ljava/lang/String;)Lcom/android/server/PackageManagerService$BasePermission;

    move-result-object v4

    .line 2850
    .local v4, tree:Lcom/android/server/PackageManagerService$BasePermission;
    if-eqz v4, :cond_a1

    .line 2851
    new-instance v5, Landroid/content/pm/PackageParser$Permission;

    iget-object v6, v4, Lcom/android/server/PackageManagerService$BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    iget-object v6, v6, Landroid/content/pm/PackageParser$Permission;->owner:Landroid/content/pm/PackageParser$Package;

    new-instance v7, Landroid/content/pm/PermissionInfo;

    iget-object v8, v0, Lcom/android/server/PackageManagerService$BasePermission;->pendingInfo:Landroid/content/pm/PermissionInfo;

    invoke-direct {v7, v8}, Landroid/content/pm/PermissionInfo;-><init>(Landroid/content/pm/PermissionInfo;)V

    invoke-direct {v5, v6, v7}, Landroid/content/pm/PackageParser$Permission;-><init>(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PermissionInfo;)V

    iput-object v5, v0, Lcom/android/server/PackageManagerService$BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    .line 2853
    iget-object v5, v0, Lcom/android/server/PackageManagerService$BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    iget-object v5, v5, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v6, v4, Lcom/android/server/PackageManagerService$BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    iget-object v6, v6, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v6, v6, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    iput-object v6, v5, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 2854
    iget-object v5, v0, Lcom/android/server/PackageManagerService$BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    iget-object v5, v5, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v6, v0, Lcom/android/server/PackageManagerService$BasePermission;->name:Ljava/lang/String;

    iput-object v6, v5, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 2855
    iget v5, v4, Lcom/android/server/PackageManagerService$BasePermission;->uid:I

    iput v5, v0, Lcom/android/server/PackageManagerService$BasePermission;->uid:I

    .line 2859
    .end local v4           #tree:Lcom/android/server/PackageManagerService$BasePermission;
    :cond_a1
    iget-object v5, v0, Lcom/android/server/PackageManagerService$BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    if-nez v5, :cond_56

    .line 2860
    const-string v5, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removing dangling permission: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/android/server/PackageManagerService$BasePermission;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " from package "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/android/server/PackageManagerService$BasePermission;->sourcePackage:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2862
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_56

    .line 2868
    .end local v0           #bp:Lcom/android/server/PackageManagerService$BasePermission;
    :cond_cf
    iget-object v5, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_d9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_ea

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$Package;

    .line 2869
    .local v3, pkg:Landroid/content/pm/PackageParser$Package;
    const/4 v5, 0x0

    invoke-direct {p0, v3, v5}, Lcom/android/server/PackageManagerService;->grantPermissionsLP(Landroid/content/pm/PackageParser$Package;Z)V

    goto :goto_d9

    .line 2871
    .end local v3           #pkg:Landroid/content/pm/PackageParser$Package;
    :cond_ea
    return-void
.end method

.method private updatePreferredIndicesLP()V
    .registers 6

    .prologue
    .line 4622
    iget-object v3, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    invoke-static {v3}, Lcom/android/server/PackageManagerService$Settings;->access$900(Lcom/android/server/PackageManagerService$Settings;)Ljava/util/ArrayList;

    move-result-object v2

    .line 4624
    .local v2, pkgs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/PackageManagerService$PackageSetting;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4625
    .local v0, N:I
    const/4 v1, 0x0

    .end local p0
    .local v1, i:I
    :goto_b
    if-ge v1, v0, :cond_1c

    .line 4626
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/PackageManagerService$PackageSetting;

    iget-object v3, p0, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    sub-int v4, v0, v1

    iput v4, v3, Landroid/content/pm/PackageParser$Package;->mPreferredOrder:I

    .line 4625
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 4628
    :cond_1c
    return-void
.end method

.method private updateSettingsLI(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageParser$Package;ZZLjava/lang/String;Lcom/android/server/PackageManagerService$PackageInstalledInfo;)V
    .registers 22
    .parameter "pkgName"
    .parameter "tmpPackageFile"
    .parameter "destFilePath"
    .parameter "destPackageFile"
    .parameter "destResourceFile"
    .parameter "pkg"
    .parameter "newPackage"
    .parameter "replacingExistingPackage"
    .parameter "forwardLocked"
    .parameter "installerPackageName"
    .parameter "res"

    .prologue
    .line 3772
    iget-object v3, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v3

    .line 3776
    :try_start_3
    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Lcom/android/server/PackageManagerService$Settings;->setInstallStatus(Ljava/lang/String;I)V

    .line 3777
    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    invoke-virtual {v4}, Lcom/android/server/PackageManagerService$Settings;->writeLP()V

    .line 3778
    monitor-exit v3
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_4a

    .line 3780
    const/4 v9, 0x0

    .line 3781
    .local v9, retCode:I
    move-object/from16 v0, p6

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v3, v0

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_4d

    .line 3782
    iget-object v3, p0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    invoke-virtual {p2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/server/Installer;->movedex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 3784
    if-eqz v9, :cond_4d

    .line 3785
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t rename dex file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3786
    const/4 v3, -0x4

    move v0, v3

    move-object/from16 v1, p11

    iput v0, v1, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->returnCode:I

    .line 3823
    :cond_49
    :goto_49
    return-void

    .line 3778
    .end local v9           #retCode:I
    :catchall_4a
    move-exception v4

    :try_start_4b
    monitor-exit v3
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    throw v4

    .line 3793
    .restart local v9       #retCode:I
    :cond_4d
    invoke-virtual {p2, p4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_c7

    .line 3794
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t move package file to: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3795
    const/4 v3, -0x4

    move v0, v3

    move-object/from16 v1, p11

    iput v0, v1, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->returnCode:I

    .line 3806
    :goto_71
    move-object/from16 v0, p11

    iget v0, v0, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->returnCode:I

    move v3, v0

    const/4 v4, 0x1

    if-eq v3, v4, :cond_86

    .line 3807
    iget-object v3, p0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    if-eqz v3, :cond_86

    .line 3808
    iget-object v3, p0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/Installer;->rmdex(Ljava/lang/String;)I

    .line 3812
    :cond_86
    iget-object v3, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v3

    .line 3813
    const/4 v4, 0x1

    :try_start_8a
    move-object v0, p0

    move-object/from16 v1, p7

    move v2, v4

    invoke-direct {v0, v1, v2}, Lcom/android/server/PackageManagerService;->grantPermissionsLP(Landroid/content/pm/PackageParser$Package;Z)V

    .line 3814
    move-object v0, p1

    move-object/from16 v1, p11

    iput-object v0, v1, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->name:Ljava/lang/String;

    .line 3815
    move-object/from16 v0, p7

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v4, v0

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    move v0, v4

    move-object/from16 v1, p11

    iput v0, v1, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->uid:I

    .line 3816
    move-object/from16 v0, p7

    move-object/from16 v1, p11

    iput-object v0, v1, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    .line 3817
    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    const/4 v5, 0x1

    invoke-virtual {v4, p1, v5}, Lcom/android/server/PackageManagerService$Settings;->setInstallStatus(Ljava/lang/String;I)V

    .line 3818
    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v0, v4

    move-object v1, p1

    move-object/from16 v2, p10

    invoke-virtual {v0, v1, v2}, Lcom/android/server/PackageManagerService$Settings;->setInstallerPackageName(Ljava/lang/String;Ljava/lang/String;)V

    .line 3819
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p11

    iput v0, v1, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->returnCode:I

    .line 3821
    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    invoke-virtual {v4}, Lcom/android/server/PackageManagerService$Settings;->writeLP()V

    .line 3822
    monitor-exit v3

    goto :goto_49

    :catchall_c4
    move-exception v4

    monitor-exit v3
    :try_end_c6
    .catchall {:try_start_8a .. :try_end_c6} :catchall_c4

    throw v4

    :cond_c7
    move-object v3, p0

    move-object v4, p1

    move-object/from16 v5, p7

    move-object v6, p3

    move-object v7, p5

    move/from16 v8, p9

    .line 3797
    invoke-direct/range {v3 .. v8}, Lcom/android/server/PackageManagerService;->setPermissionsLI(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;Ljava/lang/String;Ljava/io/File;Z)I

    move-result v3

    move v0, v3

    move-object/from16 v1, p11

    iput v0, v1, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->returnCode:I

    .line 3800
    move-object/from16 v0, p11

    iget v0, v0, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->returnCode:I

    move v3, v0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_49

    .line 3803
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "New package installed in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_71
.end method

.method private verifySignaturesLP(Lcom/android/server/PackageManagerService$PackageSetting;Landroid/content/pm/PackageParser$Package;IZ)Z
    .registers 10
    .parameter "pkgSetting"
    .parameter "pkg"
    .parameter "parseFlags"
    .parameter "updateSignature"

    .prologue
    const/4 v2, 0x0

    const-string v4, "PackageManager"

    const-string v3, "Package "

    .line 1897
    iget-object v0, p2, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    if-eqz v0, :cond_7b

    .line 1898
    iget-object v0, p1, Lcom/android/server/PackageManagerService$PackageSetting;->signatures:Lcom/android/server/PackageManagerService$PackageSignatures;

    iget-object v1, p2, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    invoke-virtual {v0, v1, p4}, Lcom/android/server/PackageManagerService$PackageSignatures;->updateSignatures([Landroid/content/pm/Signature;Z)Z

    move-result v0

    if-nez v0, :cond_38

    .line 1900
    const-string v0, "PackageManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " signatures do not match the previously installed version; ignoring!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1902
    const/4 v0, -0x7

    iput v0, p0, Lcom/android/server/PackageManagerService;->mLastScanError:I

    move v0, v2

    .line 1919
    :goto_37
    return v0

    .line 1906
    :cond_38
    iget-object v0, p1, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    if-eqz v0, :cond_83

    .line 1907
    iget-object v0, p1, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    iget-object v0, v0, Lcom/android/server/PackageManagerService$SharedUserSetting;->signatures:Lcom/android/server/PackageManagerService$PackageSignatures;

    iget-object v1, p2, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    invoke-virtual {v0, v1, p4}, Lcom/android/server/PackageManagerService$PackageSignatures;->mergeSignatures([Landroid/content/pm/Signature;Z)Z

    move-result v0

    if-nez v0, :cond_83

    .line 1909
    const-string v0, "PackageManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " has no signatures that match those in shared user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    iget-object v1, v1, Lcom/android/server/PackageManagerService$SharedUserSetting;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; ignoring!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1912
    const/4 v0, -0x8

    iput v0, p0, Lcom/android/server/PackageManagerService;->mLastScanError:I

    move v0, v2

    .line 1913
    goto :goto_37

    .line 1917
    :cond_7b
    iget-object v0, p1, Lcom/android/server/PackageManagerService$PackageSetting;->signatures:Lcom/android/server/PackageManagerService$PackageSignatures;

    invoke-static {v0}, Lcom/android/server/PackageManagerService$PackageSignatures;->access$700(Lcom/android/server/PackageManagerService$PackageSignatures;)[Landroid/content/pm/Signature;

    move-result-object v0

    iput-object v0, p2, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    .line 1919
    :cond_83
    const/4 v0, 0x1

    goto :goto_37
.end method


# virtual methods
.method public addPackageToPreferred(Ljava/lang/String;)V
    .registers 7
    .parameter "packageName"

    .prologue
    .line 4582
    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.SET_PREFERRED_APPLICATIONS"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4585
    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v2

    .line 4586
    :try_start_b
    iget-object v3, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Package;

    .line 4587
    .local v0, p:Landroid/content/pm/PackageParser$Package;
    if-nez v0, :cond_17

    .line 4588
    monitor-exit v2

    .line 4598
    :goto_16
    return-void

    .line 4590
    :cond_17
    iget-object v1, v0, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 4591
    .local v1, ps:Lcom/android/server/PackageManagerService$PackageSetting;
    if-eqz v1, :cond_38

    .line 4592
    iget-object v3, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    invoke-static {v3}, Lcom/android/server/PackageManagerService$Settings;->access$900(Lcom/android/server/PackageManagerService$Settings;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4593
    iget-object v3, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    invoke-static {v3}, Lcom/android/server/PackageManagerService$Settings;->access$900(Lcom/android/server/PackageManagerService$Settings;)Ljava/util/ArrayList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 4594
    invoke-direct {p0}, Lcom/android/server/PackageManagerService;->updatePreferredIndicesLP()V

    .line 4595
    iget-object v3, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    invoke-virtual {v3}, Lcom/android/server/PackageManagerService$Settings;->writeLP()V

    .line 4597
    :cond_38
    monitor-exit v2

    goto :goto_16

    .end local v0           #p:Landroid/content/pm/PackageParser$Package;
    .end local v1           #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    :catchall_3a
    move-exception v3

    monitor-exit v2
    :try_end_3c
    .catchall {:try_start_b .. :try_end_3c} :catchall_3a

    throw v3
.end method

.method public addPermission(Landroid/content/pm/PermissionInfo;)Z
    .registers 9
    .parameter "info"

    .prologue
    const/4 v6, 0x2

    .line 1089
    iget-object v3, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v3

    .line 1090
    :try_start_4
    iget v4, p1, Landroid/content/pm/PermissionInfo;->labelRes:I

    if-nez v4, :cond_17

    iget-object v4, p1, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-nez v4, :cond_17

    .line 1091
    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "Label must be specified in permission"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1113
    :catchall_14
    move-exception v4

    monitor-exit v3
    :try_end_16
    .catchall {:try_start_4 .. :try_end_16} :catchall_14

    throw v4

    .line 1093
    :cond_17
    :try_start_17
    iget-object v4, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/PackageManagerService;->checkPermissionTreeLP(Ljava/lang/String;)Lcom/android/server/PackageManagerService$BasePermission;

    move-result-object v2

    .line 1094
    .local v2, tree:Lcom/android/server/PackageManagerService$BasePermission;
    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    iget-object v4, v4, Lcom/android/server/PackageManagerService$Settings;->mPermissions:Ljava/util/HashMap;

    iget-object v5, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/PackageManagerService$BasePermission;

    .line 1095
    .local v1, bp:Lcom/android/server/PackageManagerService$BasePermission;
    if-nez v1, :cond_6b

    const/4 v4, 0x1

    move v0, v4

    .line 1096
    .local v0, added:Z
    :goto_2d
    if-eqz v0, :cond_6e

    .line 1097
    new-instance v1, Lcom/android/server/PackageManagerService$BasePermission;

    .end local v1           #bp:Lcom/android/server/PackageManagerService$BasePermission;
    iget-object v4, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    iget-object v5, v2, Lcom/android/server/PackageManagerService$BasePermission;->sourcePackage:Ljava/lang/String;

    const/4 v6, 0x2

    invoke-direct {v1, v4, v5, v6}, Lcom/android/server/PackageManagerService$BasePermission;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1104
    .restart local v1       #bp:Lcom/android/server/PackageManagerService$BasePermission;
    :cond_39
    new-instance v4, Landroid/content/pm/PackageParser$Permission;

    iget-object v5, v2, Lcom/android/server/PackageManagerService$BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    iget-object v5, v5, Landroid/content/pm/PackageParser$Permission;->owner:Landroid/content/pm/PackageParser$Package;

    new-instance v6, Landroid/content/pm/PermissionInfo;

    invoke-direct {v6, p1}, Landroid/content/pm/PermissionInfo;-><init>(Landroid/content/pm/PermissionInfo;)V

    invoke-direct {v4, v5, v6}, Landroid/content/pm/PackageParser$Permission;-><init>(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PermissionInfo;)V

    iput-object v4, v1, Lcom/android/server/PackageManagerService$BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    .line 1106
    iget-object v4, v1, Lcom/android/server/PackageManagerService$BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v5, v2, Lcom/android/server/PackageManagerService$BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    iget-object v5, v5, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v5, v5, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    iput-object v5, v4, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 1107
    iget v4, v2, Lcom/android/server/PackageManagerService$BasePermission;->uid:I

    iput v4, v1, Lcom/android/server/PackageManagerService$BasePermission;->uid:I

    .line 1108
    if-eqz v0, :cond_64

    .line 1109
    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    iget-object v4, v4, Lcom/android/server/PackageManagerService$Settings;->mPermissions:Ljava/util/HashMap;

    iget-object v5, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1111
    :cond_64
    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    invoke-virtual {v4}, Lcom/android/server/PackageManagerService$Settings;->writeLP()V

    .line 1112
    monitor-exit v3

    return v0

    .line 1095
    .end local v0           #added:Z
    :cond_6b
    const/4 v4, 0x0

    move v0, v4

    goto :goto_2d

    .line 1099
    .restart local v0       #added:Z
    :cond_6e
    iget v4, v1, Lcom/android/server/PackageManagerService$BasePermission;->type:I

    if-eq v4, v6, :cond_39

    .line 1100
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not allowed to modify non-dynamic permission "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_8d
    .catchall {:try_start_17 .. :try_end_8d} :catchall_14
.end method

.method public addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .registers 9
    .parameter "filter"
    .parameter "match"
    .parameter "set"
    .parameter "activity"

    .prologue
    const-string v0, "PackageManager"

    .line 4644
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.SET_PREFERRED_APPLICATIONS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4647
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v0

    .line 4648
    :try_start_d
    const-string v1, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding preferred activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4649
    new-instance v1, Landroid/util/LogPrinter;

    const/4 v2, 0x4

    const-string v3, "PackageManager"

    invoke-direct {v1, v2, v3}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;)V

    const-string v2, "  "

    invoke-virtual {p1, v1, v2}, Landroid/content/IntentFilter;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 4650
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    invoke-static {v1}, Lcom/android/server/PackageManagerService$Settings;->access$600(Lcom/android/server/PackageManagerService$Settings;)Lcom/android/server/IntentResolver;

    move-result-object v1

    new-instance v2, Lcom/android/server/PackageManagerService$PreferredActivity;

    invoke-direct {v2, p1, p2, p3, p4}, Lcom/android/server/PackageManagerService$PreferredActivity;-><init>(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    invoke-virtual {v1, v2}, Lcom/android/server/IntentResolver;->addFilter(Landroid/content/IntentFilter;)V

    .line 4652
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    invoke-virtual {v1}, Lcom/android/server/PackageManagerService$Settings;->writeLP()V

    .line 4653
    monitor-exit v0

    .line 4654
    return-void

    .line 4653
    :catchall_4d
    move-exception v1

    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_d .. :try_end_4f} :catchall_4d

    throw v1
.end method

.method public checkPermission(Ljava/lang/String;Ljava/lang/String;)I
    .registers 8
    .parameter "permName"
    .parameter "pkgName"

    .prologue
    const/4 v4, 0x0

    .line 1020
    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v2

    .line 1021
    :try_start_4
    iget-object v3, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Package;

    .line 1022
    .local v0, p:Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_32

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    if-eqz v3, :cond_32

    .line 1023
    iget-object v1, v0, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 1024
    .local v1, ps:Lcom/android/server/PackageManagerService$PackageSetting;
    iget-object v3, v1, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    if-eqz v3, :cond_27

    .line 1025
    iget-object v3, v1, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    iget-object v3, v3, Lcom/android/server/PackageManagerService$SharedUserSetting;->grantedPermissions:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 1026
    monitor-exit v2

    move v2, v4

    .line 1033
    .end local v1           #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    :goto_26
    return v2

    .line 1028
    .restart local v1       #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_27
    iget-object v3, v1, Lcom/android/server/PackageManagerService$PackageSetting;->grantedPermissions:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 1029
    monitor-exit v2

    move v2, v4

    goto :goto_26

    .line 1032
    .end local v1           #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_32
    monitor-exit v2

    .line 1033
    const/4 v2, -0x1

    goto :goto_26

    .line 1032
    .end local v0           #p:Landroid/content/pm/PackageParser$Package;
    :catchall_35
    move-exception v3

    monitor-exit v2
    :try_end_37
    .catchall {:try_start_4 .. :try_end_37} :catchall_35

    throw v3
.end method

.method public checkSignatures(Ljava/lang/String;Ljava/lang/String;)I
    .registers 7
    .parameter "pkg1"
    .parameter "pkg2"

    .prologue
    .line 1139
    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v2

    .line 1140
    :try_start_3
    iget-object v3, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Package;

    .line 1141
    .local v0, p1:Landroid/content/pm/PackageParser$Package;
    iget-object v3, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Package;

    .line 1142
    .local v1, p2:Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_1f

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    if-eqz v3, :cond_1f

    if-eqz v1, :cond_1f

    iget-object v3, v1, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    if-nez v3, :cond_23

    .line 1144
    :cond_1f
    const/4 v3, -0x4

    monitor-exit v2

    move v2, v3

    .line 1146
    :goto_22
    return v2

    :cond_23
    invoke-virtual {p0, v0, v1}, Lcom/android/server/PackageManagerService;->checkSignaturesLP(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageParser$Package;)I

    move-result v3

    monitor-exit v2

    move v2, v3

    goto :goto_22

    .line 1147
    .end local v0           #p1:Landroid/content/pm/PackageParser$Package;
    .end local v1           #p2:Landroid/content/pm/PackageParser$Package;
    :catchall_2a
    move-exception v3

    monitor-exit v2
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2a

    throw v3
.end method

.method checkSignaturesLP(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageParser$Package;)I
    .registers 10
    .parameter "p1"
    .parameter "p2"

    .prologue
    .line 1151
    iget-object v5, p1, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    if-nez v5, :cond_c

    .line 1152
    iget-object v5, p2, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    if-nez v5, :cond_a

    const/4 v5, 0x1

    .line 1173
    :goto_9
    return v5

    .line 1152
    :cond_a
    const/4 v5, -0x1

    goto :goto_9

    .line 1156
    :cond_c
    iget-object v5, p2, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    if-nez v5, :cond_12

    .line 1157
    const/4 v5, -0x2

    goto :goto_9

    .line 1159
    :cond_12
    iget-object v5, p1, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    array-length v0, v5

    .line 1160
    .local v0, N1:I
    iget-object v5, p2, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    array-length v1, v5

    .line 1161
    .local v1, N2:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_19
    if-ge v2, v0, :cond_38

    .line 1162
    const/4 v4, 0x0

    .line 1163
    .local v4, match:Z
    const/4 v3, 0x0

    .local v3, j:I
    :goto_1d
    if-ge v3, v1, :cond_2e

    .line 1164
    iget-object v5, p1, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    aget-object v5, v5, v2

    iget-object v6, p2, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    aget-object v6, v6, v3

    invoke-virtual {v5, v6}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_32

    .line 1165
    const/4 v4, 0x1

    .line 1169
    :cond_2e
    if-nez v4, :cond_35

    .line 1170
    const/4 v5, -0x3

    goto :goto_9

    .line 1163
    :cond_32
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 1161
    :cond_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 1173
    .end local v3           #j:I
    .end local v4           #match:Z
    :cond_38
    const/4 v5, 0x0

    goto :goto_9
.end method

.method public checkUidPermission(Ljava/lang/String;I)I
    .registers 11
    .parameter "permName"
    .parameter "uid"

    .prologue
    const/4 v7, 0x0

    .line 1037
    iget-object v5, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v5

    .line 1038
    :try_start_4
    iget-object v6, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    invoke-virtual {v6, p2}, Lcom/android/server/PackageManagerService$Settings;->getUserIdLP(I)Ljava/lang/Object;

    move-result-object v1

    .line 1039
    .local v1, obj:Ljava/lang/Object;
    if-eqz v1, :cond_32

    .line 1040
    instance-of v6, v1, Lcom/android/server/PackageManagerService$SharedUserSetting;

    if-eqz v6, :cond_1f

    .line 1041
    move-object v0, v1

    check-cast v0, Lcom/android/server/PackageManagerService$SharedUserSetting;

    move-object v4, v0

    .line 1042
    .local v4, sus:Lcom/android/server/PackageManagerService$SharedUserSetting;
    iget-object v6, v4, Lcom/android/server/PackageManagerService$SharedUserSetting;->grantedPermissions:Ljava/util/HashSet;

    invoke-virtual {v6, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_45

    .line 1043
    monitor-exit v5

    move v5, v7

    .line 1058
    .end local v4           #sus:Lcom/android/server/PackageManagerService$SharedUserSetting;
    :goto_1e
    return v5

    .line 1045
    :cond_1f
    instance-of v6, v1, Lcom/android/server/PackageManagerService$PackageSetting;

    if-eqz v6, :cond_45

    .line 1046
    move-object v0, v1

    check-cast v0, Lcom/android/server/PackageManagerService$PackageSetting;

    move-object v3, v0

    .line 1047
    .local v3, ps:Lcom/android/server/PackageManagerService$PackageSetting;
    iget-object v6, v3, Lcom/android/server/PackageManagerService$PackageSetting;->grantedPermissions:Ljava/util/HashSet;

    invoke-virtual {v6, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_45

    .line 1048
    monitor-exit v5

    move v5, v7

    goto :goto_1e

    .line 1052
    .end local v3           #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_32
    iget-object v6, p0, Lcom/android/server/PackageManagerService;->mSystemPermissions:Landroid/util/SparseArray;

    invoke-virtual {v6, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    .line 1053
    .local v2, perms:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v2, :cond_45

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_45

    .line 1054
    monitor-exit v5

    move v5, v7

    goto :goto_1e

    .line 1057
    .end local v2           #perms:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_45
    monitor-exit v5

    .line 1058
    const/4 v5, -0x1

    goto :goto_1e

    .line 1057
    .end local v1           #obj:Ljava/lang/Object;
    :catchall_48
    move-exception v6

    monitor-exit v5
    :try_end_4a
    .catchall {:try_start_4 .. :try_end_4a} :catchall_48

    throw v6
.end method

.method cleanupInstallFailedPackage(Ljava/lang/String;)V
    .registers 8
    .parameter "packageName"

    .prologue
    .line 539
    iget-object v3, p0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    if-eqz v3, :cond_34

    .line 540
    iget-object v3, p0, Lcom/android/server/PackageManagerService;->mInstaller:Lcom/android/server/Installer;

    invoke-virtual {v3, p1}, Lcom/android/server/Installer;->remove(Ljava/lang/String;)I

    move-result v2

    .line 541
    .local v2, retCode:I
    if-gez v2, :cond_2e

    .line 542
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t remove app data directory for package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", retcode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    .end local v2           #retCode:I
    :cond_2e
    :goto_2e
    iget-object v3, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    invoke-static {v3, p1}, Lcom/android/server/PackageManagerService$Settings;->access$200(Lcom/android/server/PackageManagerService$Settings;Ljava/lang/String;)I

    .line 552
    return-void

    .line 547
    :cond_34
    iget-object v3, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Package;

    .line 548
    .local v1, pkg:Landroid/content/pm/PackageParser$Package;
    new-instance v0, Ljava/io/File;

    iget-object v3, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 549
    .local v0, dataDir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_2e
.end method

.method public clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V
    .registers 6
    .parameter "packageName"
    .parameter "observer"

    .prologue
    .line 4393
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CLEAR_APP_USER_DATA"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4396
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/PackageManagerService$8;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/PackageManagerService$8;-><init>(Lcom/android/server/PackageManagerService;Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4420
    return-void
.end method

.method public clearPackagePreferredActivities(Ljava/lang/String;)V
    .registers 5
    .parameter "packageName"

    .prologue
    .line 4693
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.SET_PREFERRED_APPLICATIONS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4696
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v0

    .line 4697
    :try_start_b
    invoke-virtual {p0, p1}, Lcom/android/server/PackageManagerService;->clearPackagePreferredActivitiesLP(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 4698
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    invoke-virtual {v1}, Lcom/android/server/PackageManagerService$Settings;->writeLP()V

    .line 4700
    :cond_16
    monitor-exit v0

    .line 4701
    return-void

    .line 4700
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_b .. :try_end_1a} :catchall_18

    throw v1
.end method

.method clearPackagePreferredActivitiesLP(Ljava/lang/String;)Z
    .registers 6
    .parameter "packageName"

    .prologue
    .line 4704
    const/4 v0, 0x0

    .line 4705
    .local v0, changed:Z
    iget-object v3, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    invoke-static {v3}, Lcom/android/server/PackageManagerService$Settings;->access$600(Lcom/android/server/PackageManagerService$Settings;)Lcom/android/server/IntentResolver;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/IntentResolver;->filterIterator()Ljava/util/Iterator;

    move-result-object v1

    .line 4706
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/PackageManagerService$PreferredActivity;>;"
    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_28

    .line 4707
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/PackageManagerService$PreferredActivity;

    .line 4708
    .local v2, pa:Lcom/android/server/PackageManagerService$PreferredActivity;
    iget-object v3, v2, Lcom/android/server/PackageManagerService$PreferredActivity;->mActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 4709
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 4710
    const/4 v0, 0x1

    goto :goto_b

    .line 4713
    .end local v2           #pa:Lcom/android/server/PackageManagerService$PreferredActivity;
    :cond_28
    return v0
.end method

.method public deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V
    .registers 6
    .parameter "packageName"
    .parameter "observer"

    .prologue
    .line 4466
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DELETE_CACHE_FILES"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4469
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/PackageManagerService$9;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/PackageManagerService$9;-><init>(Lcom/android/server/PackageManagerService;Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4485
    return-void
.end method

.method public deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V
    .registers 7
    .parameter "packageName"
    .parameter "observer"
    .parameter "flags"

    .prologue
    .line 4105
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DELETE_PACKAGES"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4108
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/PackageManagerService$7;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/android/server/PackageManagerService$7;-><init>(Lcom/android/server/PackageManagerService;Ljava/lang/String;ILandroid/content/pm/IPackageDeleteObserver;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4121
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 14
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    const-string v7, " gids="

    const-string v7, ", "

    const-string v7, "  "

    const-string v7, "      "

    const-string v7, " "

    .line 4890
    iget-object v7, p0, Lcom/android/server/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v8, "android.permission.DUMP"

    invoke-virtual {v7, v8}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_49

    .line 4892
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Permission Denial: can\'t dump ActivityManager from from pid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", uid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " without permission "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "android.permission.DUMP"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5037
    :goto_48
    return-void

    .line 4900
    :cond_49
    iget-object v7, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v7

    .line 4901
    :try_start_4c
    const-string v8, "Activity Resolver Table:"

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4902
    iget-object v8, p0, Lcom/android/server/PackageManagerService;->mActivities:Lcom/android/server/PackageManagerService$ActivityIntentResolver;

    const-string v9, "  "

    invoke-virtual {v8, p2, v9}, Lcom/android/server/PackageManagerService$ActivityIntentResolver;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 4903
    const-string v8, " "

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4904
    const-string v8, "Receiver Resolver Table:"

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4905
    iget-object v8, p0, Lcom/android/server/PackageManagerService;->mReceivers:Lcom/android/server/PackageManagerService$ActivityIntentResolver;

    const-string v9, "  "

    invoke-virtual {v8, p2, v9}, Lcom/android/server/PackageManagerService$ActivityIntentResolver;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 4906
    const-string v8, " "

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4907
    const-string v8, "Service Resolver Table:"

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4908
    iget-object v8, p0, Lcom/android/server/PackageManagerService;->mServices:Lcom/android/server/PackageManagerService$ServiceIntentResolver;

    const-string v9, "  "

    invoke-virtual {v8, p2, v9}, Lcom/android/server/PackageManagerService$ServiceIntentResolver;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 4909
    const-string v8, " "

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4910
    const-string v8, "Preferred Activities:"

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4911
    iget-object v8, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    invoke-static {v8}, Lcom/android/server/PackageManagerService$Settings;->access$600(Lcom/android/server/PackageManagerService$Settings;)Lcom/android/server/IntentResolver;

    move-result-object v8

    const-string v9, "  "

    invoke-virtual {v8, p2, v9}, Lcom/android/server/IntentResolver;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 4912
    const-string v8, " "

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4913
    const-string v8, "Preferred Packages:"

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4915
    iget-object v8, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    invoke-static {v8}, Lcom/android/server/PackageManagerService$Settings;->access$900(Lcom/android/server/PackageManagerService$Settings;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_a3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_bd

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 4916
    .local v4, ps:Lcom/android/server/PackageManagerService$PackageSetting;
    const-string v8, "  "

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, v4, Lcom/android/server/PackageManagerService$PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_a3

    .line 5036
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v4           #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    :catchall_ba
    move-exception v8

    monitor-exit v7
    :try_end_bc
    .catchall {:try_start_4c .. :try_end_bc} :catchall_ba

    throw v8

    .line 4919
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_bd
    :try_start_bd
    const-string v8, " "

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4920
    const-string v8, "Permissions:"

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4922
    iget-object v8, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    iget-object v8, v8, Lcom/android/server/PackageManagerService$Settings;->mPermissions:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_12b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/PackageManagerService$BasePermission;

    .line 4923
    .local v3, p:Lcom/android/server/PackageManagerService$BasePermission;
    const-string v8, "  Permission ["

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, v3, Lcom/android/server/PackageManagerService$BasePermission;->name:Ljava/lang/String;

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "] ("

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4924
    invoke-static {v3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4925
    const-string v8, "):"

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4926
    const-string v8, "    sourcePackage="

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, v3, Lcom/android/server/PackageManagerService$BasePermission;->sourcePackage:Ljava/lang/String;

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4927
    const-string v8, "    uid="

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v8, v3, Lcom/android/server/PackageManagerService$BasePermission;->uid:I

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(I)V

    .line 4928
    const-string v8, " gids="

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, v3, Lcom/android/server/PackageManagerService$BasePermission;->gids:[I

    invoke-static {v8}, Lcom/android/server/PackageManagerService;->arrayToString([I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4929
    const-string v8, " type="

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v8, v3, Lcom/android/server/PackageManagerService$BasePermission;->type:I

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(I)V

    goto :goto_d3

    .line 4932
    .end local v3           #p:Lcom/android/server/PackageManagerService$BasePermission;
    :cond_12b
    const-string v8, " "

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4933
    const-string v8, "Packages:"

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4935
    iget-object v8, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    invoke-static {v8}, Lcom/android/server/PackageManagerService$Settings;->access$300(Lcom/android/server/PackageManagerService$Settings;)Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local v1           #i$:Ljava/util/Iterator;
    :cond_143
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_32e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 4936
    .restart local v4       #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    const-string v8, "  Package ["

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, v4, Lcom/android/server/PackageManagerService$PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "] ("

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4937
    invoke-static {v4}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4938
    const-string v8, "):"

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4939
    const-string v8, "    userId="

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v8, v4, Lcom/android/server/PackageManagerService$PackageSetting;->userId:I

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(I)V

    .line 4940
    const-string v8, " gids="

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, v4, Lcom/android/server/PackageManagerService$PackageSetting;->gids:[I

    invoke-static {v8}, Lcom/android/server/PackageManagerService;->arrayToString([I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4941
    const-string v8, "    sharedUser="

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, v4, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4942
    const-string v8, "    pkg="

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, v4, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4943
    const-string v8, "    codePath="

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, v4, Lcom/android/server/PackageManagerService$PackageSetting;->codePathString:Ljava/lang/String;

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4944
    const-string v8, "    resourcePath="

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, v4, Lcom/android/server/PackageManagerService$PackageSetting;->resourcePathString:Ljava/lang/String;

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4945
    iget-object v8, v4, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v8, :cond_247

    .line 4946
    const-string v8, "    dataDir="

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, v4, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4947
    const-string v8, "    targetSdk="

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, v4, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(I)V

    .line 4948
    const-string v8, "    supportsScreens=["

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4949
    const/4 v0, 0x1

    .line 4950
    .local v0, first:Z
    iget-object v8, v4, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v8, v8, 0x400

    if-eqz v8, :cond_1eb

    .line 4952
    if-nez v0, :cond_1e5

    const-string v8, ", "

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4953
    :cond_1e5
    const/4 v0, 0x0

    .line 4954
    const-string v8, "medium"

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4956
    :cond_1eb
    iget-object v8, v4, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v8, v8, 0x800

    if-eqz v8, :cond_202

    .line 4958
    if-nez v0, :cond_1fc

    const-string v8, ", "

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4959
    :cond_1fc
    const/4 v0, 0x0

    .line 4960
    const-string v8, "large"

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4962
    :cond_202
    iget-object v8, v4, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v8, v8, 0x200

    if-eqz v8, :cond_219

    .line 4964
    if-nez v0, :cond_213

    const-string v8, ", "

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4965
    :cond_213
    const/4 v0, 0x0

    .line 4966
    const-string v8, "small"

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4968
    :cond_219
    iget-object v8, v4, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v8, v8, 0x1000

    if-eqz v8, :cond_230

    .line 4970
    if-nez v0, :cond_22a

    const-string v8, ", "

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4971
    :cond_22a
    const/4 v0, 0x0

    .line 4972
    const-string v8, "resizeable"

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4974
    :cond_230
    iget-object v8, v4, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v8, v8, 0x2000

    if-eqz v8, :cond_247

    .line 4976
    if-nez v0, :cond_241

    const-string v8, ", "

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4977
    :cond_241
    const/4 v0, 0x0

    .line 4978
    const-string v8, "anyDensity"

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4981
    .end local v0           #first:Z
    :cond_247
    const-string v8, "]"

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4982
    const-string v8, "    timeStamp="

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/android/server/PackageManagerService$PackageSetting;->getTimeStampStr()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4983
    const-string v8, "    signatures="

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, v4, Lcom/android/server/PackageManagerService$PackageSetting;->signatures:Lcom/android/server/PackageManagerService$PackageSignatures;

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4984
    const-string v8, "    permissionsFixed="

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v8, v4, Lcom/android/server/PackageManagerService$PackageSetting;->permissionsFixed:Z

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Z)V

    .line 4985
    const-string v8, " pkgFlags=0x"

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v8, v4, Lcom/android/server/PackageManagerService$PackageSetting;->pkgFlags:I

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4986
    const-string v8, " installStatus="

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v8, v4, Lcom/android/server/PackageManagerService$PackageSetting;->installStatus:I

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(I)V

    .line 4987
    const-string v8, " enabled="

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v8, v4, Lcom/android/server/PackageManagerService$PackageSetting;->enabled:I

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(I)V

    .line 4988
    iget-object v8, v4, Lcom/android/server/PackageManagerService$PackageSetting;->disabledComponents:Ljava/util/HashSet;

    invoke-virtual {v8}, Ljava/util/HashSet;->size()I

    move-result v8

    if-lez v8, :cond_2b6

    .line 4989
    const-string v8, "    disabledComponents:"

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4990
    iget-object v8, v4, Lcom/android/server/PackageManagerService$PackageSetting;->disabledComponents:Ljava/util/HashSet;

    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_2a1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2b6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 4991
    .local v5, s:Ljava/lang/String;
    const-string v8, "      "

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2a1

    .line 4994
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v5           #s:Ljava/lang/String;
    :cond_2b6
    iget-object v8, v4, Lcom/android/server/PackageManagerService$PackageSetting;->enabledComponents:Ljava/util/HashSet;

    invoke-virtual {v8}, Ljava/util/HashSet;->size()I

    move-result v8

    if-lez v8, :cond_2de

    .line 4995
    const-string v8, "    enabledComponents:"

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4996
    iget-object v8, v4, Lcom/android/server/PackageManagerService$PackageSetting;->enabledComponents:Ljava/util/HashSet;

    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :goto_2c9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2de

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 4997
    .restart local v5       #s:Ljava/lang/String;
    const-string v8, "      "

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2c9

    .line 5000
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v5           #s:Ljava/lang/String;
    :cond_2de
    iget-object v8, v4, Lcom/android/server/PackageManagerService$PackageSetting;->grantedPermissions:Ljava/util/HashSet;

    invoke-virtual {v8}, Ljava/util/HashSet;->size()I

    move-result v8

    if-lez v8, :cond_306

    .line 5001
    const-string v8, "    grantedPermissions:"

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5002
    iget-object v8, v4, Lcom/android/server/PackageManagerService$PackageSetting;->grantedPermissions:Ljava/util/HashSet;

    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :goto_2f1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_306

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 5003
    .restart local v5       #s:Ljava/lang/String;
    const-string v8, "      "

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2f1

    .line 5006
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v5           #s:Ljava/lang/String;
    :cond_306
    iget-object v8, v4, Lcom/android/server/PackageManagerService$PackageSetting;->loadedPermissions:Ljava/util/HashSet;

    invoke-virtual {v8}, Ljava/util/HashSet;->size()I

    move-result v8

    if-lez v8, :cond_143

    .line 5007
    const-string v8, "    loadedPermissions:"

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5008
    iget-object v8, v4, Lcom/android/server/PackageManagerService$PackageSetting;->loadedPermissions:Ljava/util/HashSet;

    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :goto_319
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_143

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 5009
    .restart local v5       #s:Ljava/lang/String;
    const-string v8, "      "

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_319

    .line 5014
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    .end local v5           #s:Ljava/lang/String;
    :cond_32e
    const-string v8, " "

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5015
    const-string v8, "Shared Users:"

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5017
    iget-object v8, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    invoke-static {v8}, Lcom/android/server/PackageManagerService$Settings;->access$2100(Lcom/android/server/PackageManagerService$Settings;)Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_346
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3c9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/PackageManagerService$SharedUserSetting;

    .line 5018
    .local v6, su:Lcom/android/server/PackageManagerService$SharedUserSetting;
    const-string v8, "  SharedUser ["

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, v6, Lcom/android/server/PackageManagerService$SharedUserSetting;->name:Ljava/lang/String;

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "] ("

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5019
    invoke-static {v6}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5020
    const-string v8, "):"

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5021
    const-string v8, "    userId="

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v8, v6, Lcom/android/server/PackageManagerService$SharedUserSetting;->userId:I

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(I)V

    .line 5022
    const-string v8, " gids="

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, v6, Lcom/android/server/PackageManagerService$SharedUserSetting;->gids:[I

    invoke-static {v8}, Lcom/android/server/PackageManagerService;->arrayToString([I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5023
    const-string v8, "    grantedPermissions:"

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5024
    iget-object v8, v6, Lcom/android/server/PackageManagerService$SharedUserSetting;->grantedPermissions:Ljava/util/HashSet;

    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :goto_394
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3a9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 5025
    .restart local v5       #s:Ljava/lang/String;
    const-string v8, "      "

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_394

    .line 5027
    .end local v5           #s:Ljava/lang/String;
    :cond_3a9
    const-string v8, "    loadedPermissions:"

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5028
    iget-object v8, v6, Lcom/android/server/PackageManagerService$SharedUserSetting;->loadedPermissions:Ljava/util/HashSet;

    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3b4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_346

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 5029
    .restart local v5       #s:Ljava/lang/String;
    const-string v8, "      "

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3b4

    .line 5033
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v5           #s:Ljava/lang/String;
    .end local v6           #su:Lcom/android/server/PackageManagerService$SharedUserSetting;
    :cond_3c9
    const-string v8, " "

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5034
    const-string v8, "Settings parse messages:"

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5035
    iget-object v8, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    invoke-static {v8}, Lcom/android/server/PackageManagerService$Settings;->access$2200(Lcom/android/server/PackageManagerService$Settings;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5036
    monitor-exit v7
    :try_end_3e1
    .catchall {:try_start_bd .. :try_end_3e1} :catchall_ba

    goto/16 :goto_48
.end method

.method public enterSafeMode()V
    .registers 2

    .prologue
    .line 4849
    iget-boolean v0, p0, Lcom/android/server/PackageManagerService;->mSystemReady:Z

    if-nez v0, :cond_7

    .line 4850
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/PackageManagerService;->mSafeMode:Z

    .line 4852
    :cond_7
    return-void
.end method

.method findPreferredActivity(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Landroid/content/pm/ResolveInfo;
    .registers 23
    .parameter "intent"
    .parameter "resolvedType"
    .parameter "flags"
    .parameter
    .parameter "priority"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;I)",
            "Landroid/content/pm/ResolveInfo;"
        }
    .end annotation

    .prologue
    .line 1269
    .local p4, query:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object v13, v0

    monitor-enter v13

    .line 1271
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v14, v0

    invoke-static {v14}, Lcom/android/server/PackageManagerService$Settings;->access$600(Lcom/android/server/PackageManagerService$Settings;)Lcom/android/server/IntentResolver;

    move-result-object v14

    const/high16 v15, 0x1

    and-int v15, v15, p3

    if-eqz v15, :cond_42

    const/4 v15, 0x1

    :goto_16
    move-object v0, v14

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/IntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v11

    .line 1274
    .local v11, prefs:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/PackageManagerService$PreferredActivity;>;"
    if-eqz v11, :cond_d9

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_d9

    .line 1278
    const/4 v9, 0x0

    .line 1279
    .local v9, match:I
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v5

    .line 1281
    .local v5, N:I
    const/4 v8, 0x0

    .local v8, j:I
    :goto_2e
    if-ge v8, v5, :cond_44

    .line 1282
    move-object/from16 v0, p4

    move v1, v8

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/ResolveInfo;

    .line 1285
    .local v12, ri:Landroid/content/pm/ResolveInfo;
    iget v14, v12, Landroid/content/pm/ResolveInfo;->match:I

    if-le v14, v9, :cond_3f

    iget v9, v12, Landroid/content/pm/ResolveInfo;->match:I

    .line 1281
    :cond_3f
    add-int/lit8 v8, v8, 0x1

    goto :goto_2e

    .line 1271
    .end local v5           #N:I
    .end local v8           #j:I
    .end local v9           #match:I
    .end local v11           #prefs:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/PackageManagerService$PreferredActivity;>;"
    .end local v12           #ri:Landroid/content/pm/ResolveInfo;
    :cond_42
    const/4 v15, 0x0

    goto :goto_16

    .line 1289
    .restart local v5       #N:I
    .restart local v8       #j:I
    .restart local v9       #match:I
    .restart local v11       #prefs:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/PackageManagerService$PreferredActivity;>;"
    :cond_44
    const/high16 v14, 0xfff

    and-int/2addr v9, v14

    .line 1290
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v4

    .line 1291
    .local v4, M:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_4c
    if-ge v7, v4, :cond_d9

    .line 1292
    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/PackageManagerService$PreferredActivity;

    .line 1293
    .local v10, pa:Lcom/android/server/PackageManagerService$PreferredActivity;
    iget v14, v10, Lcom/android/server/PackageManagerService$PreferredActivity;->mMatch:I

    if-eq v14, v9, :cond_5b

    .line 1291
    :cond_58
    add-int/lit8 v7, v7, 0x1

    goto :goto_4c

    .line 1296
    :cond_5b
    iget-object v14, v10, Lcom/android/server/PackageManagerService$PreferredActivity;->mActivity:Landroid/content/ComponentName;

    move-object/from16 v0, p0

    move-object v1, v14

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/PackageManagerService;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v6

    .line 1301
    .local v6, ai:Landroid/content/pm/ActivityInfo;
    if-eqz v6, :cond_58

    .line 1302
    const/4 v8, 0x0

    :goto_69
    if-ge v8, v5, :cond_58

    .line 1303
    move-object/from16 v0, p4

    move v1, v8

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/ResolveInfo;

    .line 1304
    .restart local v12       #ri:Landroid/content/pm/ResolveInfo;
    iget-object v14, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v14, v14, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v15, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v15, v15, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_87

    .line 1302
    :cond_84
    add-int/lit8 v8, v8, 0x1

    goto :goto_69

    .line 1308
    :cond_87
    iget-object v14, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v15, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_84

    .line 1316
    move-object v0, v10

    move-object/from16 v1, p4

    move/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Lcom/android/server/PackageManagerService$PreferredActivity;->sameSet(Ljava/util/List;I)Z

    move-result v14

    if-nez v14, :cond_d6

    .line 1317
    const-string v14, "PackageManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Result set changed, dropping preferred activity for "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " type "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1319
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v14, v0

    invoke-static {v14}, Lcom/android/server/PackageManagerService$Settings;->access$600(Lcom/android/server/PackageManagerService$Settings;)Lcom/android/server/IntentResolver;

    move-result-object v14

    invoke-virtual {v14, v10}, Lcom/android/server/IntentResolver;->removeFilter(Landroid/content/IntentFilter;)V

    .line 1320
    const/4 v14, 0x0

    monitor-exit v13

    move-object v13, v14

    .line 1330
    .end local v4           #M:I
    .end local v5           #N:I
    .end local v6           #ai:Landroid/content/pm/ActivityInfo;
    .end local v7           #i:I
    .end local v8           #j:I
    .end local v9           #match:I
    .end local v10           #pa:Lcom/android/server/PackageManagerService$PreferredActivity;
    .end local v12           #ri:Landroid/content/pm/ResolveInfo;
    :goto_d5
    return-object v13

    .line 1324
    .restart local v4       #M:I
    .restart local v5       #N:I
    .restart local v6       #ai:Landroid/content/pm/ActivityInfo;
    .restart local v7       #i:I
    .restart local v8       #j:I
    .restart local v9       #match:I
    .restart local v10       #pa:Lcom/android/server/PackageManagerService$PreferredActivity;
    .restart local v12       #ri:Landroid/content/pm/ResolveInfo;
    :cond_d6
    monitor-exit v13

    move-object v13, v12

    goto :goto_d5

    .line 1329
    .end local v4           #M:I
    .end local v5           #N:I
    .end local v6           #ai:Landroid/content/pm/ActivityInfo;
    .end local v7           #i:I
    .end local v8           #j:I
    .end local v9           #match:I
    .end local v10           #pa:Lcom/android/server/PackageManagerService$PreferredActivity;
    .end local v12           #ri:Landroid/content/pm/ResolveInfo;
    :cond_d9
    monitor-exit v13

    .line 1330
    const/4 v13, 0x0

    goto :goto_d5

    .line 1329
    .end local v11           #prefs:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/PackageManagerService$PreferredActivity;>;"
    :catchall_dc
    move-exception v14

    monitor-exit v13
    :try_end_de
    .catchall {:try_start_6 .. :try_end_de} :catchall_dc

    throw v14
.end method

.method public freeStorage(JLandroid/content/IntentSender;)V
    .registers 7
    .parameter "freeStorageSize"
    .parameter "pi"

    .prologue
    .line 939
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CLEAR_APP_CACHE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 942
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/PackageManagerService$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/PackageManagerService$2;-><init>(Lcom/android/server/PackageManagerService;JLandroid/content/IntentSender;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 964
    return-void
.end method

.method public freeStorageAndNotify(JLandroid/content/pm/IPackageDataObserver;)V
    .registers 7
    .parameter "freeStorageSize"
    .parameter "observer"

    .prologue
    .line 914
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CLEAR_APP_CACHE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/PackageManagerService$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/PackageManagerService$1;-><init>(Lcom/android/server/PackageManagerService;JLandroid/content/pm/IPackageDataObserver;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 936
    return-void
.end method

.method generatePackageInfo(Landroid/content/pm/PackageParser$Package;I)Landroid/content/pm/PackageInfo;
    .registers 6
    .parameter "p"
    .parameter "flags"

    .prologue
    .line 759
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 760
    .local v1, ps:Lcom/android/server/PackageManagerService$PackageSetting;
    if-nez v1, :cond_8

    .line 761
    const/4 v2, 0x0

    .line 764
    :goto_7
    return-object v2

    .line 763
    :cond_8
    iget-object v2, v1, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    if-eqz v2, :cond_16

    iget-object v2, v1, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    move-object v0, v2

    .line 764
    .local v0, gp:Lcom/android/server/PackageManagerService$GrantedPermissions;
    :goto_f
    iget-object v2, v0, Lcom/android/server/PackageManagerService$GrantedPermissions;->gids:[I

    invoke-static {p1, v2, p2}, Landroid/content/pm/PackageParser;->generatePackageInfo(Landroid/content/pm/PackageParser$Package;[II)Landroid/content/pm/PackageInfo;

    move-result-object v2

    goto :goto_7

    .end local v0           #gp:Lcom/android/server/PackageManagerService$GrantedPermissions;
    :cond_16
    move-object v0, v1

    .line 763
    goto :goto_f
.end method

.method public getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    .registers 7
    .parameter "component"
    .parameter "flags"

    .prologue
    .line 967
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v1

    .line 968
    :try_start_3
    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mActivities:Lcom/android/server/PackageManagerService$ActivityIntentResolver;

    invoke-static {v2}, Lcom/android/server/PackageManagerService$ActivityIntentResolver;->access$400(Lcom/android/server/PackageManagerService$ActivityIntentResolver;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Activity;

    .line 971
    .local v0, a:Landroid/content/pm/PackageParser$Activity;
    if-eqz v0, :cond_22

    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    iget-object v3, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2, v3, p2}, Lcom/android/server/PackageManagerService$Settings;->isEnabledLP(Landroid/content/pm/ComponentInfo;I)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 972
    invoke-static {v0, p2}, Landroid/content/pm/PackageParser;->generateActivityInfo(Landroid/content/pm/PackageParser$Activity;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    monitor-exit v1

    move-object v1, v2

    .line 978
    :goto_21
    return-object v1

    .line 974
    :cond_22
    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mResolveComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 975
    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    monitor-exit v1

    move-object v1, v2

    goto :goto_21

    .line 977
    :cond_2f
    monitor-exit v1

    .line 978
    const/4 v1, 0x0

    goto :goto_21

    .line 977
    .end local v0           #a:Landroid/content/pm/PackageParser$Activity;
    :catchall_32
    move-exception v2

    monitor-exit v1
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_32

    throw v2
.end method

.method public getAllPermissionGroups(I)Ljava/util/List;
    .registers 8
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
    .line 854
    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v4

    .line 855
    :try_start_3
    iget-object v5, p0, Lcom/android/server/PackageManagerService;->mPermissionGroups:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v0

    .line 856
    .local v0, N:I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 858
    .local v2, out:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/PermissionGroupInfo;>;"
    iget-object v5, p0, Lcom/android/server/PackageManagerService;->mPermissionGroups:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$PermissionGroup;

    .line 859
    .local v3, pg:Landroid/content/pm/PackageParser$PermissionGroup;
    invoke-static {v3, p1}, Landroid/content/pm/PackageParser;->generatePermissionGroupInfo(Landroid/content/pm/PackageParser$PermissionGroup;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_18

    .line 862
    .end local v0           #N:I
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #out:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/PermissionGroupInfo;>;"
    .end local v3           #pg:Landroid/content/pm/PackageParser$PermissionGroup;
    :catchall_2c
    move-exception v5

    monitor-exit v4
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw v5

    .line 861
    .restart local v0       #N:I
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #out:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/PermissionGroupInfo;>;"
    :cond_2f
    :try_start_2f
    monitor-exit v4
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2c

    return-object v2
.end method

.method public getApplicationEnabledSetting(Ljava/lang/String;)I
    .registers 7
    .parameter "appPackageName"

    .prologue
    .line 4827
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v1

    .line 4828
    :try_start_3
    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    invoke-static {v2}, Lcom/android/server/PackageManagerService$Settings;->access$300(Lcom/android/server/PackageManagerService$Settings;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 4829
    .local v0, pkg:Lcom/android/server/PackageManagerService$PackageSetting;
    if-nez v0, :cond_2d

    .line 4830
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4833
    .end local v0           #pkg:Lcom/android/server/PackageManagerService$PackageSetting;
    :catchall_2a
    move-exception v2

    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2a

    throw v2

    .line 4832
    .restart local v0       #pkg:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_2d
    :try_start_2d
    iget v2, v0, Lcom/android/server/PackageManagerService$PackageSetting;->enabled:I

    monitor-exit v1
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_2a

    return v2
.end method

.method public getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    .registers 6
    .parameter "packageName"
    .parameter "flags"

    .prologue
    .line 893
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v1

    .line 894
    :try_start_3
    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Package;

    .line 898
    .local v0, p:Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_14

    .line 900
    invoke-static {v0, p2}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/PackageParser$Package;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    monitor-exit v1

    move-object v1, v2

    .line 909
    :goto_13
    return-object v1

    .line 902
    :cond_14
    const-string v2, "android"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    const-string v2, "system"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 903
    :cond_24
    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mAndroidApplication:Landroid/content/pm/ApplicationInfo;

    monitor-exit v1

    move-object v1, v2

    goto :goto_13

    .line 905
    :cond_29
    and-int/lit16 v2, p2, 0x2000

    if-eqz v2, :cond_34

    .line 906
    invoke-direct {p0, p1, p2}, Lcom/android/server/PackageManagerService;->generateApplicationInfoFromSettingsLP(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    monitor-exit v1

    move-object v1, v2

    goto :goto_13

    .line 908
    :cond_34
    monitor-exit v1

    .line 909
    const/4 v1, 0x0

    goto :goto_13

    .line 908
    .end local v0           #p:Landroid/content/pm/PackageParser$Package;
    :catchall_37
    move-exception v2

    monitor-exit v1
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_37

    throw v2
.end method

.method public getComponentEnabledSetting(Landroid/content/ComponentName;)I
    .registers 9
    .parameter "componentName"

    .prologue
    .line 4837
    iget-object v3, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v3

    .line 4838
    :try_start_3
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 4839
    .local v1, packageNameStr:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    invoke-static {v4}, Lcom/android/server/PackageManagerService$Settings;->access$300(Lcom/android/server/PackageManagerService$Settings;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 4840
    .local v2, pkg:Lcom/android/server/PackageManagerService$PackageSetting;
    if-nez v2, :cond_31

    .line 4841
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown component: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 4845
    .end local v1           #packageNameStr:Ljava/lang/String;
    .end local v2           #pkg:Lcom/android/server/PackageManagerService$PackageSetting;
    :catchall_2e
    move-exception v4

    monitor-exit v3
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_2e

    throw v4

    .line 4843
    .restart local v1       #packageNameStr:Ljava/lang/String;
    .restart local v2       #pkg:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_31
    :try_start_31
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 4844
    .local v0, classNameStr:Ljava/lang/String;
    invoke-virtual {v2, v0}, Lcom/android/server/PackageManagerService$PackageSetting;->currentEnabledStateLP(Ljava/lang/String;)I

    move-result v4

    monitor-exit v3
    :try_end_3a
    .catchall {:try_start_31 .. :try_end_3a} :catchall_2e

    return v4
.end method

.method public getInstalledApplications(I)Ljava/util/List;
    .registers 10
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
    .line 1626
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1627
    .local v1, finalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ApplicationInfo;>;"
    iget-object v6, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v6

    .line 1628
    and-int/lit16 v7, p1, 0x2000

    if-eqz v7, :cond_35

    .line 1629
    :try_start_c
    iget-object v7, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    invoke-static {v7}, Lcom/android/server/PackageManagerService$Settings;->access$300(Lcom/android/server/PackageManagerService$Settings;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1630
    .local v3, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/PackageManagerService$PackageSetting;>;"
    :cond_1a
    :goto_1a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_59

    .line 1631
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 1632
    .local v5, ps:Lcom/android/server/PackageManagerService$PackageSetting;
    iget-object v7, v5, Lcom/android/server/PackageManagerService$PackageSetting;->name:Ljava/lang/String;

    invoke-direct {p0, v7, p1}, Lcom/android/server/PackageManagerService;->generateApplicationInfoFromSettingsLP(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1633
    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_1a

    .line 1634
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    .line 1650
    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v3           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/PackageManagerService$PackageSetting;>;"
    .end local v5           #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    :catchall_32
    move-exception v7

    monitor-exit v6
    :try_end_34
    .catchall {:try_start_c .. :try_end_34} :catchall_32

    throw v7

    .line 1639
    :cond_35
    :try_start_35
    iget-object v7, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1640
    .local v2, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/pm/PackageParser$Package;>;"
    :cond_3f
    :goto_3f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_59

    .line 1641
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageParser$Package;

    .line 1642
    .local v4, p:Landroid/content/pm/PackageParser$Package;
    iget-object v7, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v7, :cond_3f

    .line 1643
    invoke-static {v4, p1}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/PackageParser$Package;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1644
    .restart local v0       #ai:Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_3f

    .line 1645
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3f

    .line 1650
    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v2           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/pm/PackageParser$Package;>;"
    .end local v4           #p:Landroid/content/pm/PackageParser$Package;
    :cond_59
    monitor-exit v6
    :try_end_5a
    .catchall {:try_start_35 .. :try_end_5a} :catchall_32

    .line 1651
    return-object v1
.end method

.method public getInstalledPackages(I)Ljava/util/List;
    .registers 11
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
    .line 1596
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1598
    .local v0, finalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    iget-object v7, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v7

    .line 1599
    and-int/lit16 v8, p1, 0x2000

    if-eqz v8, :cond_35

    .line 1600
    :try_start_c
    iget-object v8, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    invoke-static {v8}, Lcom/android/server/PackageManagerService$Settings;->access$300(Lcom/android/server/PackageManagerService$Settings;)Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1601
    .local v2, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/PackageManagerService$PackageSetting;>;"
    :cond_1a
    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_59

    .line 1602
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 1603
    .local v5, ps:Lcom/android/server/PackageManagerService$PackageSetting;
    iget-object v8, v5, Lcom/android/server/PackageManagerService$PackageSetting;->name:Ljava/lang/String;

    invoke-direct {p0, v8, p1}, Lcom/android/server/PackageManagerService;->generatePackageInfoFromSettingsLP(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 1604
    .local v6, psPkg:Landroid/content/pm/PackageInfo;
    if-eqz v6, :cond_1a

    .line 1605
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    .line 1621
    .end local v2           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/PackageManagerService$PackageSetting;>;"
    .end local v5           #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    .end local v6           #psPkg:Landroid/content/pm/PackageInfo;
    :catchall_32
    move-exception v8

    monitor-exit v7
    :try_end_34
    .catchall {:try_start_c .. :try_end_34} :catchall_32

    throw v8

    .line 1610
    :cond_35
    :try_start_35
    iget-object v8, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1611
    .local v1, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/pm/PackageParser$Package;>;"
    :cond_3f
    :goto_3f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_59

    .line 1612
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$Package;

    .line 1613
    .local v3, p:Landroid/content/pm/PackageParser$Package;
    iget-object v8, v3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v8, :cond_3f

    .line 1614
    invoke-virtual {p0, v3, p1}, Lcom/android/server/PackageManagerService;->generatePackageInfo(Landroid/content/pm/PackageParser$Package;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 1615
    .local v4, pi:Landroid/content/pm/PackageInfo;
    if-eqz v4, :cond_3f

    .line 1616
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3f

    .line 1621
    .end local v1           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/pm/PackageParser$Package;>;"
    .end local v3           #p:Landroid/content/pm/PackageParser$Package;
    .end local v4           #pi:Landroid/content/pm/PackageInfo;
    :cond_59
    monitor-exit v7
    :try_end_5a
    .catchall {:try_start_35 .. :try_end_5a} :catchall_32

    .line 1622
    return-object v0
.end method

.method public getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "packageName"

    .prologue
    .line 4817
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v1

    .line 4818
    :try_start_3
    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    invoke-static {v2}, Lcom/android/server/PackageManagerService$Settings;->access$300(Lcom/android/server/PackageManagerService$Settings;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 4819
    .local v0, pkg:Lcom/android/server/PackageManagerService$PackageSetting;
    if-nez v0, :cond_2d

    .line 4820
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4823
    .end local v0           #pkg:Lcom/android/server/PackageManagerService$PackageSetting;
    :catchall_2a
    move-exception v2

    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2a

    throw v2

    .line 4822
    .restart local v0       #pkg:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_2d
    :try_start_2d
    iget-object v2, v0, Lcom/android/server/PackageManagerService$PackageSetting;->installerPackageName:Ljava/lang/String;

    monitor-exit v1
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_2a

    return-object v2
.end method

.method public getInstrumentationInfo(Landroid/content/ComponentName;I)Landroid/content/pm/InstrumentationInfo;
    .registers 6
    .parameter "name"
    .parameter "flags"

    .prologue
    .line 1737
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v1

    .line 1738
    :try_start_3
    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mInstrumentation:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Instrumentation;

    .line 1739
    .local v0, i:Landroid/content/pm/PackageParser$Instrumentation;
    invoke-static {v0, p2}, Landroid/content/pm/PackageParser;->generateInstrumentationInfo(Landroid/content/pm/PackageParser$Instrumentation;I)Landroid/content/pm/InstrumentationInfo;

    move-result-object v2

    monitor-exit v1

    return-object v2

    .line 1740
    .end local v0           #i:Landroid/content/pm/PackageParser$Instrumentation;
    :catchall_11
    move-exception v2

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v2
.end method

.method public getNameForUid(I)Ljava/lang/String;
    .registers 9
    .parameter "uid"

    .prologue
    .line 1198
    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v4

    .line 1199
    :try_start_3
    iget-object v5, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    invoke-virtual {v5, p1}, Lcom/android/server/PackageManagerService$Settings;->getUserIdLP(I)Ljava/lang/Object;

    move-result-object v1

    .line 1200
    .local v1, obj:Ljava/lang/Object;
    instance-of v5, v1, Lcom/android/server/PackageManagerService$SharedUserSetting;

    if-eqz v5, :cond_2f

    .line 1201
    move-object v0, v1

    check-cast v0, Lcom/android/server/PackageManagerService$SharedUserSetting;

    move-object v3, v0

    .line 1202
    .local v3, sus:Lcom/android/server/PackageManagerService$SharedUserSetting;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v3, Lcom/android/server/PackageManagerService$SharedUserSetting;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/android/server/PackageManagerService$SharedUserSetting;->userId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    monitor-exit v4

    move-object v4, v5

    .line 1208
    .end local v3           #sus:Lcom/android/server/PackageManagerService$SharedUserSetting;
    :goto_2e
    return-object v4

    .line 1203
    :cond_2f
    instance-of v5, v1, Lcom/android/server/PackageManagerService$PackageSetting;

    if-eqz v5, :cond_3c

    .line 1204
    move-object v0, v1

    check-cast v0, Lcom/android/server/PackageManagerService$PackageSetting;

    move-object v2, v0

    .line 1205
    .local v2, ps:Lcom/android/server/PackageManagerService$PackageSetting;
    iget-object v5, v2, Lcom/android/server/PackageManagerService$PackageSetting;->name:Ljava/lang/String;

    monitor-exit v4

    move-object v4, v5

    goto :goto_2e

    .line 1207
    .end local v2           #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_3c
    monitor-exit v4

    .line 1208
    const/4 v4, 0x0

    goto :goto_2e

    .line 1207
    .end local v1           #obj:Ljava/lang/Object;
    :catchall_3f
    move-exception v5

    monitor-exit v4
    :try_end_41
    .catchall {:try_start_3 .. :try_end_41} :catchall_3f

    throw v5
.end method

.method public getPackageGids(Ljava/lang/String;)[I
    .registers 7
    .parameter "packageName"

    .prologue
    .line 799
    iget-object v3, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v3

    .line 800
    :try_start_3
    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Package;

    .line 804
    .local v0, p:Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_1d

    .line 805
    iget-object v1, v0, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 806
    .local v1, ps:Lcom/android/server/PackageManagerService$PackageSetting;
    iget-object v2, v1, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    .line 807
    .local v2, suid:Lcom/android/server/PackageManagerService$SharedUserSetting;
    if-eqz v2, :cond_1a

    iget-object v4, v2, Lcom/android/server/PackageManagerService$SharedUserSetting;->gids:[I

    :goto_17
    monitor-exit v3

    move-object v3, v4

    .line 811
    .end local v1           #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    .end local v2           #suid:Lcom/android/server/PackageManagerService$SharedUserSetting;
    :goto_19
    return-object v3

    .line 807
    .restart local v1       #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    .restart local v2       #suid:Lcom/android/server/PackageManagerService$SharedUserSetting;
    :cond_1a
    iget-object v4, v1, Lcom/android/server/PackageManagerService$PackageSetting;->gids:[I

    goto :goto_17

    .line 809
    .end local v1           #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    .end local v2           #suid:Lcom/android/server/PackageManagerService$SharedUserSetting;
    :cond_1d
    monitor-exit v3
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_22

    .line 811
    const/4 v3, 0x0

    new-array v3, v3, [I

    goto :goto_19

    .line 809
    .end local v0           #p:Landroid/content/pm/PackageParser$Package;
    :catchall_22
    move-exception v4

    :try_start_23
    monitor-exit v3
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v4
.end method

.method public getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .registers 6
    .parameter "packageName"
    .parameter "flags"

    .prologue
    .line 768
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v1

    .line 769
    :try_start_3
    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Package;

    .line 773
    .local v0, p:Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_14

    .line 774
    invoke-virtual {p0, v0, p2}, Lcom/android/server/PackageManagerService;->generatePackageInfo(Landroid/content/pm/PackageParser$Package;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    monitor-exit v1

    move-object v1, v2

    .line 780
    :goto_13
    return-object v1

    .line 776
    :cond_14
    and-int/lit16 v2, p2, 0x2000

    if-eqz v2, :cond_1f

    .line 777
    invoke-direct {p0, p1, p2}, Lcom/android/server/PackageManagerService;->generatePackageInfoFromSettingsLP(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    monitor-exit v1

    move-object v1, v2

    goto :goto_13

    .line 779
    :cond_1f
    monitor-exit v1

    .line 780
    const/4 v1, 0x0

    goto :goto_13

    .line 779
    .end local v0           #p:Landroid/content/pm/PackageParser$Package;
    :catchall_22
    move-exception v2

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw v2
.end method

.method public getPackageSizeInfo(Ljava/lang/String;Landroid/content/pm/IPackageStatsObserver;)V
    .registers 6
    .parameter "packageName"
    .parameter "observer"

    .prologue
    .line 4518
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.GET_PACKAGE_SIZE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4521
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/PackageManagerService$10;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/PackageManagerService$10;-><init>(Lcom/android/server/PackageManagerService;Ljava/lang/String;Landroid/content/pm/IPackageStatsObserver;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4538
    return-void
.end method

.method public getPackageUid(Ljava/lang/String;)I
    .registers 7
    .parameter "packageName"

    .prologue
    const/4 v4, -0x1

    .line 784
    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v2

    .line 785
    :try_start_4
    iget-object v3, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Package;

    .line 786
    .local v0, p:Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_15

    .line 787
    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    monitor-exit v2

    move v2, v3

    .line 794
    :goto_14
    return v2

    .line 789
    :cond_15
    iget-object v3, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    invoke-static {v3}, Lcom/android/server/PackageManagerService$Settings;->access$300(Lcom/android/server/PackageManagerService$Settings;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 790
    .local v1, ps:Lcom/android/server/PackageManagerService$PackageSetting;
    if-eqz v1, :cond_2d

    iget-object v3, v1, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v3, :cond_2d

    iget-object v3, v1, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v3, :cond_30

    .line 791
    :cond_2d
    monitor-exit v2

    move v2, v4

    goto :goto_14

    .line 793
    :cond_30
    iget-object v0, v1, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    .line 794
    if-eqz v0, :cond_3b

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    :goto_38
    monitor-exit v2

    move v2, v3

    goto :goto_14

    :cond_3b
    move v3, v4

    goto :goto_38

    .line 795
    .end local v0           #p:Landroid/content/pm/PackageParser$Package;
    .end local v1           #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    :catchall_3d
    move-exception v3

    monitor-exit v2
    :try_end_3f
    .catchall {:try_start_4 .. :try_end_3f} :catchall_3d

    throw v3
.end method

.method public getPackagesForUid(I)[Ljava/lang/String;
    .registers 15
    .parameter "uid"

    .prologue
    .line 1177
    iget-object v9, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v9

    .line 1178
    :try_start_3
    iget-object v10, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    invoke-virtual {v10, p1}, Lcom/android/server/PackageManagerService$Settings;->getUserIdLP(I)Ljava/lang/Object;

    move-result-object v5

    .line 1179
    .local v5, obj:Ljava/lang/Object;
    instance-of v10, v5, Lcom/android/server/PackageManagerService$SharedUserSetting;

    if-eqz v10, :cond_38

    .line 1180
    move-object v0, v5

    check-cast v0, Lcom/android/server/PackageManagerService$SharedUserSetting;

    move-object v8, v0

    .line 1181
    .local v8, sus:Lcom/android/server/PackageManagerService$SharedUserSetting;
    iget-object v10, v8, Lcom/android/server/PackageManagerService$SharedUserSetting;->packages:Ljava/util/HashSet;

    invoke-virtual {v10}, Ljava/util/HashSet;->size()I

    move-result v1

    .line 1182
    .local v1, N:I
    new-array v7, v1, [Ljava/lang/String;

    .line 1183
    .local v7, res:[Ljava/lang/String;
    iget-object v10, v8, Lcom/android/server/PackageManagerService$SharedUserSetting;->packages:Ljava/util/HashSet;

    invoke-virtual {v10}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1184
    .local v4, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/PackageManagerService$PackageSetting;>;"
    const/4 v2, 0x0

    .local v2, i:I
    move v3, v2

    .line 1185
    .end local v2           #i:I
    .end local p0
    .local v3, i:I
    :goto_21
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_35

    .line 1186
    add-int/lit8 v2, v3, 0x1

    .end local v3           #i:I
    .restart local v2       #i:I
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/PackageManagerService$PackageSetting;

    iget-object v10, p0, Lcom/android/server/PackageManagerService$PackageSetting;->name:Ljava/lang/String;

    aput-object v10, v7, v3

    move v3, v2

    .end local v2           #i:I
    .restart local v3       #i:I
    goto :goto_21

    .line 1188
    :cond_35
    monitor-exit v9

    move-object v9, v7

    .line 1194
    .end local v1           #N:I
    .end local v3           #i:I
    .end local v4           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/PackageManagerService$PackageSetting;>;"
    .end local v7           #res:[Ljava/lang/String;
    .end local v8           #sus:Lcom/android/server/PackageManagerService$SharedUserSetting;
    :goto_37
    return-object v9

    .line 1189
    .restart local p0
    :cond_38
    instance-of v10, v5, Lcom/android/server/PackageManagerService$PackageSetting;

    if-eqz v10, :cond_4b

    .line 1190
    move-object v0, v5

    check-cast v0, Lcom/android/server/PackageManagerService$PackageSetting;

    move-object v6, v0

    .line 1191
    .local v6, ps:Lcom/android/server/PackageManagerService$PackageSetting;
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    iget-object v12, v6, Lcom/android/server/PackageManagerService$PackageSetting;->name:Ljava/lang/String;

    aput-object v12, v10, v11

    monitor-exit v9

    move-object v9, v10

    goto :goto_37

    .line 1193
    .end local v6           #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_4b
    monitor-exit v9

    .line 1194
    const/4 v9, 0x0

    goto :goto_37

    .line 1193
    .end local v5           #obj:Ljava/lang/Object;
    .end local p0
    :catchall_4e
    move-exception v10

    monitor-exit v9
    :try_end_50
    .catchall {:try_start_3 .. :try_end_50} :catchall_4e

    throw v10
.end method

.method public getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;
    .registers 5
    .parameter "name"
    .parameter "flags"

    .prologue
    .line 847
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v0

    .line 848
    :try_start_3
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mPermissionGroups:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/content/pm/PackageParser$PermissionGroup;

    invoke-static {p0, p2}, Landroid/content/pm/PackageParser;->generatePermissionGroupInfo(Landroid/content/pm/PackageParser$PermissionGroup;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 850
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;
    .registers 6
    .parameter "name"
    .parameter "flags"

    .prologue
    .line 815
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v1

    .line 816
    :try_start_3
    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    iget-object v2, v2, Lcom/android/server/PackageManagerService$Settings;->mPermissions:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageManagerService$BasePermission;

    .line 817
    .local v0, p:Lcom/android/server/PackageManagerService$BasePermission;
    if-eqz v0, :cond_1c

    iget-object v2, v0, Lcom/android/server/PackageManagerService$BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    if-eqz v2, :cond_1c

    .line 818
    iget-object v2, v0, Lcom/android/server/PackageManagerService$BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    invoke-static {v2, p2}, Landroid/content/pm/PackageParser;->generatePermissionInfo(Landroid/content/pm/PackageParser$Permission;I)Landroid/content/pm/PermissionInfo;

    move-result-object v2

    monitor-exit v1

    move-object v1, v2

    .line 820
    :goto_1b
    return-object v1

    :cond_1c
    const/4 v2, 0x0

    monitor-exit v1

    move-object v1, v2

    goto :goto_1b

    .line 821
    .end local v0           #p:Lcom/android/server/PackageManagerService$BasePermission;
    :catchall_20
    move-exception v2

    monitor-exit v1
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v2
.end method

.method public getPersistentApplications(I)Ljava/util/List;
    .registers 7
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
    .line 1655
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1657
    .local v0, finalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ApplicationInfo;>;"
    iget-object v3, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v3

    .line 1658
    :try_start_8
    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1659
    .local v1, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/pm/PackageParser$Package;>;"
    :cond_12
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 1660
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Package;

    .line 1661
    .local v2, p:Landroid/content/pm/PackageParser$Package;
    iget-object v4, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_12

    iget-object v4, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_12

    iget-boolean v4, p0, Lcom/android/server/PackageManagerService;->mSafeMode:Z

    if-eqz v4, :cond_36

    iget-object v4, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_12

    .line 1665
    :cond_36
    iget-object v4, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 1668
    .end local v1           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/pm/PackageParser$Package;>;"
    .end local v2           #p:Landroid/content/pm/PackageParser$Package;
    :catchall_3c
    move-exception v4

    monitor-exit v3
    :try_end_3e
    .catchall {:try_start_8 .. :try_end_3e} :catchall_3c

    throw v4

    .restart local v1       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/pm/PackageParser$Package;>;"
    :cond_3f
    :try_start_3f
    monitor-exit v3
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3c

    .line 1670
    return-object v0
.end method

.method public getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I
    .registers 9
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
    .line 4719
    .local p1, outFilters:Ljava/util/List;,"Ljava/util/List<Landroid/content/IntentFilter;>;"
    .local p2, outActivities:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    const/4 v1, 0x0

    .line 4720
    .local v1, num:I
    iget-object v3, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v3

    .line 4721
    :try_start_4
    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    invoke-static {v4}, Lcom/android/server/PackageManagerService$Settings;->access$600(Lcom/android/server/PackageManagerService$Settings;)Lcom/android/server/IntentResolver;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/IntentResolver;->filterIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 4722
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/PackageManagerService$PreferredActivity;>;"
    :cond_e
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 4723
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/PackageManagerService$PreferredActivity;

    .line 4724
    .local v2, pa:Lcom/android/server/PackageManagerService$PreferredActivity;
    if-eqz p3, :cond_28

    iget-object v4, v2, Lcom/android/server/PackageManagerService$PreferredActivity;->mActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 4726
    :cond_28
    if-eqz p1, :cond_32

    .line 4727
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4, v2}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4729
    :cond_32
    if-eqz p2, :cond_e

    .line 4730
    iget-object v4, v2, Lcom/android/server/PackageManagerService$PreferredActivity;->mActivity:Landroid/content/ComponentName;

    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 4734
    .end local v0           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/PackageManagerService$PreferredActivity;>;"
    .end local v2           #pa:Lcom/android/server/PackageManagerService$PreferredActivity;
    :catchall_3a
    move-exception v4

    monitor-exit v3
    :try_end_3c
    .catchall {:try_start_4 .. :try_end_3c} :catchall_3a

    throw v4

    .restart local v0       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/PackageManagerService$PreferredActivity;>;"
    :cond_3d
    :try_start_3d
    monitor-exit v3
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3a

    .line 4736
    return v1
.end method

.method public getPreferredPackages(I)Ljava/util/List;
    .registers 8
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
    .line 4631
    iget-object v5, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v5

    .line 4632
    :try_start_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 4633
    .local v3, res:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    invoke-static {v4}, Lcom/android/server/PackageManagerService$Settings;->access$900(Lcom/android/server/PackageManagerService$Settings;)Ljava/util/ArrayList;

    move-result-object v2

    .line 4634
    .local v2, pref:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/PackageManagerService$PackageSetting;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4635
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_13
    if-ge v1, v0, :cond_27

    .line 4636
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/PackageManagerService$PackageSetting;

    iget-object v4, v4, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    invoke-virtual {p0, v4, p1}, Lcom/android/server/PackageManagerService;->generatePackageInfo(Landroid/content/pm/PackageParser$Package;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4635
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 4638
    :cond_27
    monitor-exit v5

    return-object v3

    .line 4639
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #pref:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/PackageManagerService$PackageSetting;>;"
    .end local v3           #res:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :catchall_29
    move-exception v4

    monitor-exit v5
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_29

    throw v4
.end method

.method public getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    .registers 7
    .parameter "component"
    .parameter "flags"

    .prologue
    .line 982
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v1

    .line 983
    :try_start_3
    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mReceivers:Lcom/android/server/PackageManagerService$ActivityIntentResolver;

    invoke-static {v2}, Lcom/android/server/PackageManagerService$ActivityIntentResolver;->access$400(Lcom/android/server/PackageManagerService$ActivityIntentResolver;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Activity;

    .line 986
    .local v0, a:Landroid/content/pm/PackageParser$Activity;
    if-eqz v0, :cond_22

    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    iget-object v3, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2, v3, p2}, Lcom/android/server/PackageManagerService$Settings;->isEnabledLP(Landroid/content/pm/ComponentInfo;I)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 987
    invoke-static {v0, p2}, Landroid/content/pm/PackageParser;->generateActivityInfo(Landroid/content/pm/PackageParser$Activity;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    monitor-exit v1

    move-object v1, v2

    .line 990
    :goto_21
    return-object v1

    .line 989
    :cond_22
    monitor-exit v1

    .line 990
    const/4 v1, 0x0

    goto :goto_21

    .line 989
    .end local v0           #a:Landroid/content/pm/PackageParser$Activity;
    :catchall_25
    move-exception v2

    monitor-exit v1
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw v2
.end method

.method public getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    .registers 7
    .parameter "component"
    .parameter "flags"

    .prologue
    .line 994
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v1

    .line 995
    :try_start_3
    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mServices:Lcom/android/server/PackageManagerService$ServiceIntentResolver;

    invoke-static {v2}, Lcom/android/server/PackageManagerService$ServiceIntentResolver;->access$500(Lcom/android/server/PackageManagerService$ServiceIntentResolver;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Service;

    .line 998
    .local v0, s:Landroid/content/pm/PackageParser$Service;
    if-eqz v0, :cond_22

    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    iget-object v3, v0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v2, v3, p2}, Lcom/android/server/PackageManagerService$Settings;->isEnabledLP(Landroid/content/pm/ComponentInfo;I)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 999
    invoke-static {v0, p2}, Landroid/content/pm/PackageParser;->generateServiceInfo(Landroid/content/pm/PackageParser$Service;I)Landroid/content/pm/ServiceInfo;

    move-result-object v2

    monitor-exit v1

    move-object v1, v2

    .line 1002
    :goto_21
    return-object v1

    .line 1001
    :cond_22
    monitor-exit v1

    .line 1002
    const/4 v1, 0x0

    goto :goto_21

    .line 1001
    .end local v0           #s:Landroid/content/pm/PackageParser$Service;
    :catchall_25
    move-exception v2

    monitor-exit v1
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw v2
.end method

.method public getSystemSharedLibraryNames()[Ljava/lang/String;
    .registers 6

    .prologue
    .line 1007
    iget-object v3, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v3

    .line 1008
    :try_start_3
    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mSharedLibraries:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 1009
    .local v0, libSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    monitor-exit v3
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_17

    .line 1010
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    .line 1011
    .local v2, size:I
    if-lez v2, :cond_1a

    .line 1012
    new-array v1, v2, [Ljava/lang/String;

    .line 1013
    .local v1, libs:[Ljava/lang/String;
    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-object v3, v1

    .line 1016
    .end local v1           #libs:[Ljava/lang/String;
    :goto_16
    return-object v3

    .line 1009
    .end local v0           #libSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v2           #size:I
    :catchall_17
    move-exception v4

    :try_start_18
    monitor-exit v3
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v4

    .line 1016
    .restart local v0       #libSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v2       #size:I
    :cond_1a
    const/4 v3, 0x0

    goto :goto_16
.end method

.method public getUidForSharedUser(Ljava/lang/String;)I
    .registers 8
    .parameter "sharedUserName"

    .prologue
    const/4 v5, -0x1

    .line 1212
    if-nez p1, :cond_5

    move v1, v5

    .line 1220
    :goto_4
    return v1

    .line 1215
    :cond_5
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v1

    .line 1216
    :try_start_8
    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/PackageManagerService$Settings;->getSharedUserLP(Ljava/lang/String;IZ)Lcom/android/server/PackageManagerService$SharedUserSetting;

    move-result-object v0

    .line 1217
    .local v0, suid:Lcom/android/server/PackageManagerService$SharedUserSetting;
    if-nez v0, :cond_15

    .line 1218
    monitor-exit v1

    move v1, v5

    goto :goto_4

    .line 1220
    :cond_15
    iget v2, v0, Lcom/android/server/PackageManagerService$SharedUserSetting;->userId:I

    monitor-exit v1

    move v1, v2

    goto :goto_4

    .line 1221
    .end local v0           #suid:Lcom/android/server/PackageManagerService$SharedUserSetting;
    :catchall_1a
    move-exception v2

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_1a

    throw v2
.end method

.method public hasSystemUidErrors()Z
    .registers 2

    .prologue
    .line 4872
    iget-boolean v0, p0, Lcom/android/server/PackageManagerService;->mHasSystemUidErrors:Z

    return v0
.end method

.method public installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;I)V
    .registers 5
    .parameter "packageURI"
    .parameter "observer"
    .parameter "flags"

    .prologue
    .line 3433
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/PackageManagerService;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V

    .line 3434
    return-void
.end method

.method public installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V
    .registers 12
    .parameter "packageURI"
    .parameter "observer"
    .parameter "flags"
    .parameter "installerPackageName"

    .prologue
    .line 3440
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INSTALL_PACKAGES"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3444
    iget-object v6, p0, Lcom/android/server/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/PackageManagerService$5;

    move-object v1, p0

    move-object v2, p1

    move v3, p3

    move-object v4, p4

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/PackageManagerService$5;-><init>(Lcom/android/server/PackageManagerService;Landroid/net/Uri;ILjava/lang/String;Landroid/content/pm/IPackageInstallObserver;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3480
    return-void
.end method

.method public isProtectedBroadcast(Ljava/lang/String;)Z
    .registers 4
    .parameter "actionName"

    .prologue
    .line 1133
    iget-object v0, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v0

    .line 1134
    :try_start_3
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mProtectedBroadcasts:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1135
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public isSafeMode()Z
    .registers 2

    .prologue
    .line 4868
    iget-boolean v0, p0, Lcom/android/server/PackageManagerService;->mSafeMode:Z

    return v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 529
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/content/pm/IPackageManager$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_5

    move-result v1

    return v1

    .line 530
    :catch_5
    move-exception v0

    .line 531
    .local v0, e:Ljava/lang/RuntimeException;
    instance-of v1, v0, Ljava/lang/SecurityException;

    if-nez v1, :cond_15

    instance-of v1, v0, Ljava/lang/IllegalArgumentException;

    if-nez v1, :cond_15

    .line 532
    const-string v1, "PackageManager"

    const-string v2, "Package Manager Crash"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 534
    :cond_15
    throw v0
.end method

.method public performDexOpt(Ljava/lang/String;)Z
    .registers 7
    .parameter "packageName"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1923
    iget-boolean v1, p0, Lcom/android/server/PackageManagerService;->mNoDexOpt:Z

    if-nez v1, :cond_8

    move v1, v3

    .line 1935
    :goto_7
    return v1

    .line 1928
    :cond_8
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v1

    .line 1929
    :try_start_b
    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Package;

    .line 1930
    .local v0, p:Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_19

    iget-boolean v2, v0, Landroid/content/pm/PackageParser$Package;->mDidDexOpt:Z

    if-eqz v2, :cond_1c

    .line 1931
    :cond_19
    monitor-exit v1

    move v1, v3

    goto :goto_7

    .line 1933
    :cond_1c
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_b .. :try_end_1d} :catchall_2b

    .line 1934
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1935
    const/4 v2, 0x0

    :try_start_21
    invoke-direct {p0, v0, v2}, Lcom/android/server/PackageManagerService;->performDexOptLI(Landroid/content/pm/PackageParser$Package;Z)I

    move-result v2

    if-ne v2, v4, :cond_2e

    move v2, v4

    :goto_28
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_21 .. :try_end_29} :catchall_30

    move v1, v2

    goto :goto_7

    .line 1933
    .end local v0           #p:Landroid/content/pm/PackageParser$Package;
    :catchall_2b
    move-exception v2

    :try_start_2c
    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw v2

    .restart local v0       #p:Landroid/content/pm/PackageParser$Package;
    :cond_2e
    move v2, v3

    .line 1935
    goto :goto_28

    .line 1936
    :catchall_30
    move-exception v2

    :try_start_31
    monitor-exit v1
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw v2
.end method

.method public queryContentProviders(Ljava/lang/String;II)Ljava/util/List;
    .registers 11
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
    .line 1706
    const/4 v0, 0x0

    .line 1708
    .local v0, finalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ProviderInfo;>;"
    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v4

    .line 1709
    :try_start_4
    iget-object v5, p0, Lcom/android/server/PackageManagerService;->mProvidersByComponent:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_67

    move-result-object v2

    .local v2, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/pm/PackageParser$Provider;>;"
    move-object v1, v0

    .line 1710
    .end local v0           #finalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ProviderInfo;>;"
    .local v1, finalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ProviderInfo;>;"
    :goto_f
    :try_start_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5e

    .line 1711
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$Provider;

    .line 1712
    .local v3, p:Landroid/content/pm/PackageParser$Provider;
    iget-object v5, v3, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    if-eqz v5, :cond_6f

    if-eqz p1, :cond_35

    iget-object v5, v3, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6f

    iget-object v5, v3, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v5, p2, :cond_6f

    :cond_35
    iget-object v5, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    iget-object v6, v3, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    invoke-virtual {v5, v6, p3}, Lcom/android/server/PackageManagerService$Settings;->isEnabledLP(Landroid/content/pm/ComponentInfo;I)Z

    move-result v5

    if-eqz v5, :cond_6f

    iget-boolean v5, p0, Lcom/android/server/PackageManagerService;->mSafeMode:Z

    if-eqz v5, :cond_4d

    iget-object v5, v3, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_6f

    .line 1719
    :cond_4d
    if-nez v1, :cond_6d

    .line 1720
    new-instance v0, Ljava/util/ArrayList;

    const/4 v5, 0x3

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_55
    .catchall {:try_start_f .. :try_end_55} :catchall_6a

    .line 1722
    .end local v1           #finalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ProviderInfo;>;"
    .restart local v0       #finalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ProviderInfo;>;"
    :goto_55
    :try_start_55
    invoke-static {v3, p3}, Landroid/content/pm/PackageParser;->generateProviderInfo(Landroid/content/pm/PackageParser$Provider;I)Landroid/content/pm/ProviderInfo;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5c
    .catchall {:try_start_55 .. :try_end_5c} :catchall_67

    :goto_5c
    move-object v1, v0

    .line 1725
    .end local v0           #finalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ProviderInfo;>;"
    .restart local v1       #finalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ProviderInfo;>;"
    goto :goto_f

    .line 1726
    .end local v3           #p:Landroid/content/pm/PackageParser$Provider;
    :cond_5e
    :try_start_5e
    monitor-exit v4
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_6a

    .line 1728
    if-eqz v1, :cond_66

    .line 1729
    sget-object v4, Lcom/android/server/PackageManagerService;->mProviderInitOrderSorter:Ljava/util/Comparator;

    invoke-static {v1, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1732
    :cond_66
    return-object v1

    .line 1726
    .end local v1           #finalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ProviderInfo;>;"
    .end local v2           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/pm/PackageParser$Provider;>;"
    .restart local v0       #finalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ProviderInfo;>;"
    :catchall_67
    move-exception v5

    :goto_68
    :try_start_68
    monitor-exit v4
    :try_end_69
    .catchall {:try_start_68 .. :try_end_69} :catchall_67

    throw v5

    .end local v0           #finalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ProviderInfo;>;"
    .restart local v1       #finalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ProviderInfo;>;"
    .restart local v2       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/pm/PackageParser$Provider;>;"
    :catchall_6a
    move-exception v5

    move-object v0, v1

    .end local v1           #finalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ProviderInfo;>;"
    .restart local v0       #finalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ProviderInfo;>;"
    goto :goto_68

    .end local v0           #finalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ProviderInfo;>;"
    .restart local v1       #finalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ProviderInfo;>;"
    .restart local v3       #p:Landroid/content/pm/PackageParser$Provider;
    :cond_6d
    move-object v0, v1

    .end local v1           #finalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ProviderInfo;>;"
    .restart local v0       #finalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ProviderInfo;>;"
    goto :goto_55

    .end local v0           #finalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ProviderInfo;>;"
    .restart local v1       #finalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ProviderInfo;>;"
    :cond_6f
    move-object v0, v1

    .end local v1           #finalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ProviderInfo;>;"
    .restart local v0       #finalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ProviderInfo;>;"
    goto :goto_5c
.end method

.method public queryInstrumentation(Ljava/lang/String;I)Ljava/util/List;
    .registers 8
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
    .line 1745
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1748
    .local v0, finalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/InstrumentationInfo;>;"
    iget-object v3, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v3

    .line 1749
    :try_start_8
    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mInstrumentation:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1750
    .local v1, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/pm/PackageParser$Instrumentation;>;"
    :cond_12
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_35

    .line 1751
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Instrumentation;

    .line 1752
    .local v2, p:Landroid/content/pm/PackageParser$Instrumentation;
    if-eqz p1, :cond_2a

    iget-object v4, v2, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    iget-object v4, v4, Landroid/content/pm/InstrumentationInfo;->targetPackage:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 1754
    :cond_2a
    invoke-static {v2, p2}, Landroid/content/pm/PackageParser;->generateInstrumentationInfo(Landroid/content/pm/PackageParser$Instrumentation;I)Landroid/content/pm/InstrumentationInfo;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 1758
    .end local v1           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/pm/PackageParser$Instrumentation;>;"
    .end local v2           #p:Landroid/content/pm/PackageParser$Instrumentation;
    :catchall_32
    move-exception v4

    monitor-exit v3
    :try_end_34
    .catchall {:try_start_8 .. :try_end_34} :catchall_32

    throw v4

    .restart local v1       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/pm/PackageParser$Instrumentation;>;"
    :cond_35
    :try_start_35
    monitor-exit v3
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_32

    .line 1760
    return-object v0
.end method

.method public queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;
    .registers 13
    .parameter "intent"
    .parameter "resolvedType"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1335
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 1336
    .local v1, comp:Landroid/content/ComponentName;
    if-eqz v1, :cond_1e

    .line 1337
    new-instance v2, Ljava/util/ArrayList;

    const/4 v6, 0x1

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 1338
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p0, v1, p3}, Lcom/android/server/PackageManagerService;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 1339
    .local v0, ai:Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_1c

    .line 1340
    new-instance v5, Landroid/content/pm/ResolveInfo;

    invoke-direct {v5}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 1341
    .local v5, ri:Landroid/content/pm/ResolveInfo;
    iput-object v0, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1342
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .end local v5           #ri:Landroid/content/pm/ResolveInfo;
    :cond_1c
    move-object v6, v2

    .line 1358
    .end local v0           #ai:Landroid/content/pm/ActivityInfo;
    .end local v2           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :goto_1d
    return-object v6

    .line 1347
    :cond_1e
    iget-object v6, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v6

    .line 1348
    :try_start_21
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v4

    .line 1349
    .local v4, pkgName:Ljava/lang/String;
    if-nez v4, :cond_30

    .line 1350
    iget-object v7, p0, Lcom/android/server/PackageManagerService;->mActivities:Lcom/android/server/PackageManagerService$ActivityIntentResolver;

    invoke-virtual {v7, p1, p2, p3}, Lcom/android/server/PackageManagerService$ActivityIntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v7

    monitor-exit v6

    move-object v6, v7

    goto :goto_1d

    .line 1353
    :cond_30
    iget-object v7, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$Package;

    .line 1354
    .local v3, pkg:Landroid/content/pm/PackageParser$Package;
    if-eqz v3, :cond_45

    .line 1355
    iget-object v7, p0, Lcom/android/server/PackageManagerService;->mActivities:Lcom/android/server/PackageManagerService$ActivityIntentResolver;

    iget-object v8, v3, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v7, p1, p2, p3, v8}, Lcom/android/server/PackageManagerService$ActivityIntentResolver;->queryIntentForPackage(Landroid/content/Intent;Ljava/lang/String;ILjava/util/ArrayList;)Ljava/util/List;

    move-result-object v7

    monitor-exit v6

    move-object v6, v7

    goto :goto_1d

    .line 1358
    :cond_45
    const/4 v7, 0x0

    monitor-exit v6

    move-object v6, v7

    goto :goto_1d

    .line 1359
    .end local v3           #pkg:Landroid/content/pm/PackageParser$Package;
    .end local v4           #pkgName:Ljava/lang/String;
    :catchall_49
    move-exception v7

    monitor-exit v6
    :try_end_4b
    .catchall {:try_start_21 .. :try_end_4b} :catchall_49

    throw v7
.end method

.method public queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;[Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;
    .registers 29
    .parameter "caller"
    .parameter "specifics"
    .parameter "specificTypes"
    .parameter "intent"
    .parameter "resolvedType"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "[",
            "Landroid/content/Intent;",
            "[",
            "Ljava/lang/String;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1365
    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    .line 1367
    .local v13, resultsAction:Ljava/lang/String;
    or-int/lit8 v20, p6, 0x40

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/PackageManagerService;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v12

    .line 1371
    .local v12, results:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/16 v18, 0x0

    .line 1382
    .local v18, specificsPos:I
    if-eqz p2, :cond_fc

    .line 1383
    const/4 v9, 0x0

    .local v9, i:I
    :goto_17
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v20, v0

    move v0, v9

    move/from16 v1, v20

    if-ge v0, v1, :cond_fc

    .line 1384
    aget-object v17, p2, v9

    .line 1385
    .local v17, sintent:Landroid/content/Intent;
    if-nez v17, :cond_28

    .line 1383
    :cond_25
    :goto_25
    add-int/lit8 v9, v9, 0x1

    goto :goto_17

    .line 1390
    :cond_28
    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    .line 1391
    .local v5, action:Ljava/lang/String;
    if-eqz v13, :cond_35

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_35

    .line 1394
    const/4 v5, 0x0

    .line 1396
    :cond_35
    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    .line 1397
    .local v8, comp:Landroid/content/ComponentName;
    const/4 v14, 0x0

    .line 1398
    .local v14, ri:Landroid/content/pm/ResolveInfo;
    const/4 v6, 0x0

    .line 1399
    .local v6, ai:Landroid/content/pm/ActivityInfo;
    if-nez v8, :cond_d9

    .line 1400
    if-eqz p3, :cond_d5

    aget-object v20, p3, v9

    :goto_41
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v20

    move/from16 v3, p6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/PackageManagerService;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object v14

    .line 1404
    if-eqz v14, :cond_25

    .line 1407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    move-object/from16 v20, v0

    move-object v0, v14

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_5a

    .line 1410
    :cond_5a
    iget-object v6, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1411
    new-instance v8, Landroid/content/ComponentName;

    .end local v8           #comp:Landroid/content/ComponentName;
    move-object v0, v6

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object v0, v6

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object v0, v8

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1423
    .restart local v8       #comp:Landroid/content/ComponentName;
    :cond_76
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v4

    .line 1425
    .local v4, N:I
    move/from16 v11, v18

    .local v11, j:I
    :goto_7c
    if-ge v11, v4, :cond_e6

    .line 1426
    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/content/pm/ResolveInfo;

    .line 1427
    .local v19, sri:Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_b6

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_c7

    :cond_b6
    if-eqz v5, :cond_d2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->matchAction(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_d2

    .line 1431
    :cond_c7
    invoke-interface {v12, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1435
    if-nez v14, :cond_ce

    .line 1436
    move-object/from16 v14, v19

    .line 1438
    :cond_ce
    add-int/lit8 v11, v11, -0x1

    .line 1439
    add-int/lit8 v4, v4, -0x1

    .line 1425
    :cond_d2
    add-int/lit8 v11, v11, 0x1

    goto :goto_7c

    .line 1400
    .end local v4           #N:I
    .end local v11           #j:I
    .end local v19           #sri:Landroid/content/pm/ResolveInfo;
    :cond_d5
    const/16 v20, 0x0

    goto/16 :goto_41

    .line 1414
    :cond_d9
    move-object/from16 v0, p0

    move-object v1, v8

    move/from16 v2, p6

    invoke-virtual {v0, v1, v2}, Lcom/android/server/PackageManagerService;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v6

    .line 1415
    if-nez v6, :cond_76

    goto/16 :goto_25

    .line 1444
    .restart local v4       #N:I
    .restart local v11       #j:I
    :cond_e6
    if-nez v14, :cond_ef

    .line 1445
    new-instance v14, Landroid/content/pm/ResolveInfo;

    .end local v14           #ri:Landroid/content/pm/ResolveInfo;
    invoke-direct {v14}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 1446
    .restart local v14       #ri:Landroid/content/pm/ResolveInfo;
    iput-object v6, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1448
    :cond_ef
    move-object v0, v12

    move/from16 v1, v18

    move-object v2, v14

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1449
    iput v9, v14, Landroid/content/pm/ResolveInfo;->specificIndex:I

    .line 1450
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_25

    .line 1456
    .end local v4           #N:I
    .end local v5           #action:Ljava/lang/String;
    .end local v6           #ai:Landroid/content/pm/ActivityInfo;
    .end local v8           #comp:Landroid/content/ComponentName;
    .end local v9           #i:I
    .end local v11           #j:I
    .end local v14           #ri:Landroid/content/pm/ResolveInfo;
    .end local v17           #sintent:Landroid/content/Intent;
    :cond_fc
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v4

    .line 1457
    .restart local v4       #N:I
    move/from16 v9, v18

    .restart local v9       #i:I
    :goto_102
    const/16 v20, 0x1

    sub-int v20, v4, v20

    move v0, v9

    move/from16 v1, v20

    if-ge v0, v1, :cond_171

    .line 1458
    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/ResolveInfo;

    .line 1459
    .local v15, rii:Landroid/content/pm/ResolveInfo;
    move-object v0, v15

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    move-object/from16 v20, v0

    if-nez v20, :cond_11b

    .line 1457
    :cond_118
    :goto_118
    add-int/lit8 v9, v9, 0x1

    goto :goto_102

    .line 1465
    :cond_11b
    move-object v0, v15

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object v10

    .line 1466
    .local v10, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    if-eqz v10, :cond_118

    .line 1469
    :cond_126
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_165

    .line 1470
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1471
    .restart local v5       #action:Ljava/lang/String;
    if-eqz v13, :cond_13a

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_126

    .line 1476
    :cond_13a
    add-int/lit8 v11, v9, 0x1

    .restart local v11       #j:I
    :goto_13c
    if-ge v11, v4, :cond_126

    .line 1477
    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/pm/ResolveInfo;

    .line 1478
    .local v16, rij:Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    move-object/from16 v20, v0

    if-eqz v20, :cond_162

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_162

    .line 1479
    invoke-interface {v12, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1483
    add-int/lit8 v11, v11, -0x1

    .line 1484
    add-int/lit8 v4, v4, -0x1

    .line 1476
    :cond_162
    add-int/lit8 v11, v11, 0x1

    goto :goto_13c

    .line 1491
    .end local v5           #action:Ljava/lang/String;
    .end local v11           #j:I
    .end local v16           #rij:Landroid/content/pm/ResolveInfo;
    :cond_165
    and-int/lit8 v20, p6, 0x40

    if-nez v20, :cond_118

    .line 1492
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object v1, v15

    iput-object v0, v1, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    goto :goto_118

    .line 1497
    .end local v10           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v15           #rii:Landroid/content/pm/ResolveInfo;
    :cond_171
    if-eqz p1, :cond_1ac

    .line 1498
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v4

    .line 1499
    const/4 v9, 0x0

    .end local p0
    :goto_178
    if-ge v9, v4, :cond_1ac

    .line 1500
    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object v7, v0

    .line 1501
    .local v7, ainfo:Landroid/content/pm/ActivityInfo;
    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v20

    move-object v0, v7

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1c8

    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v20

    move-object v0, v7

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1c8

    .line 1503
    invoke-interface {v12, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1512
    .end local v7           #ainfo:Landroid/content/pm/ActivityInfo;
    :cond_1ac
    and-int/lit8 v20, p6, 0x40

    if-nez v20, :cond_1cb

    .line 1513
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v4

    .line 1514
    const/4 v9, 0x0

    :goto_1b5
    if-ge v9, v4, :cond_1cb

    .line 1515
    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ResolveInfo;

    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 1514
    add-int/lit8 v9, v9, 0x1

    goto :goto_1b5

    .line 1499
    .restart local v7       #ainfo:Landroid/content/pm/ActivityInfo;
    :cond_1c8
    add-int/lit8 v9, v9, 0x1

    goto :goto_178

    .line 1520
    .end local v7           #ainfo:Landroid/content/pm/ActivityInfo;
    :cond_1cb
    return-object v12
.end method

.method public queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;
    .registers 13
    .parameter "intent"
    .parameter "resolvedType"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1525
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 1526
    .local v1, comp:Landroid/content/ComponentName;
    if-eqz v1, :cond_1e

    .line 1527
    new-instance v2, Ljava/util/ArrayList;

    const/4 v6, 0x1

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 1528
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p0, v1, p3}, Lcom/android/server/PackageManagerService;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 1529
    .local v0, ai:Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_1c

    .line 1530
    new-instance v5, Landroid/content/pm/ResolveInfo;

    invoke-direct {v5}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 1531
    .local v5, ri:Landroid/content/pm/ResolveInfo;
    iput-object v0, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1532
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .end local v5           #ri:Landroid/content/pm/ResolveInfo;
    :cond_1c
    move-object v6, v2

    .line 1548
    .end local v0           #ai:Landroid/content/pm/ActivityInfo;
    .end local v2           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :goto_1d
    return-object v6

    .line 1537
    :cond_1e
    iget-object v6, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v6

    .line 1538
    :try_start_21
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v4

    .line 1539
    .local v4, pkgName:Ljava/lang/String;
    if-nez v4, :cond_30

    .line 1540
    iget-object v7, p0, Lcom/android/server/PackageManagerService;->mReceivers:Lcom/android/server/PackageManagerService$ActivityIntentResolver;

    invoke-virtual {v7, p1, p2, p3}, Lcom/android/server/PackageManagerService$ActivityIntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v7

    monitor-exit v6

    move-object v6, v7

    goto :goto_1d

    .line 1543
    :cond_30
    iget-object v7, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$Package;

    .line 1544
    .local v3, pkg:Landroid/content/pm/PackageParser$Package;
    if-eqz v3, :cond_45

    .line 1545
    iget-object v7, p0, Lcom/android/server/PackageManagerService;->mReceivers:Lcom/android/server/PackageManagerService$ActivityIntentResolver;

    iget-object v8, v3, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v7, p1, p2, p3, v8}, Lcom/android/server/PackageManagerService$ActivityIntentResolver;->queryIntentForPackage(Landroid/content/Intent;Ljava/lang/String;ILjava/util/ArrayList;)Ljava/util/List;

    move-result-object v7

    monitor-exit v6

    move-object v6, v7

    goto :goto_1d

    .line 1548
    :cond_45
    const/4 v7, 0x0

    monitor-exit v6

    move-object v6, v7

    goto :goto_1d

    .line 1549
    .end local v3           #pkg:Landroid/content/pm/PackageParser$Package;
    .end local v4           #pkgName:Ljava/lang/String;
    :catchall_49
    move-exception v7

    monitor-exit v6
    :try_end_4b
    .catchall {:try_start_21 .. :try_end_4b} :catchall_49

    throw v7
.end method

.method public queryIntentServices(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;
    .registers 13
    .parameter "intent"
    .parameter "resolvedType"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1568
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 1569
    .local v0, comp:Landroid/content/ComponentName;
    if-eqz v0, :cond_1e

    .line 1570
    new-instance v1, Ljava/util/ArrayList;

    const/4 v6, 0x1

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 1571
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p0, v0, p3}, Lcom/android/server/PackageManagerService;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v5

    .line 1572
    .local v5, si:Landroid/content/pm/ServiceInfo;
    if-eqz v5, :cond_1c

    .line 1573
    new-instance v4, Landroid/content/pm/ResolveInfo;

    invoke-direct {v4}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 1574
    .local v4, ri:Landroid/content/pm/ResolveInfo;
    iput-object v5, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 1575
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .end local v4           #ri:Landroid/content/pm/ResolveInfo;
    :cond_1c
    move-object v6, v1

    .line 1591
    .end local v1           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v5           #si:Landroid/content/pm/ServiceInfo;
    :goto_1d
    return-object v6

    .line 1580
    :cond_1e
    iget-object v6, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v6

    .line 1581
    :try_start_21
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v3

    .line 1582
    .local v3, pkgName:Ljava/lang/String;
    if-nez v3, :cond_30

    .line 1583
    iget-object v7, p0, Lcom/android/server/PackageManagerService;->mServices:Lcom/android/server/PackageManagerService$ServiceIntentResolver;

    invoke-virtual {v7, p1, p2, p3}, Lcom/android/server/PackageManagerService$ServiceIntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v7

    monitor-exit v6

    move-object v6, v7

    goto :goto_1d

    .line 1586
    :cond_30
    iget-object v7, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Package;

    .line 1587
    .local v2, pkg:Landroid/content/pm/PackageParser$Package;
    if-eqz v2, :cond_45

    .line 1588
    iget-object v7, p0, Lcom/android/server/PackageManagerService;->mServices:Lcom/android/server/PackageManagerService$ServiceIntentResolver;

    iget-object v8, v2, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {v7, p1, p2, p3, v8}, Lcom/android/server/PackageManagerService$ServiceIntentResolver;->queryIntentForPackage(Landroid/content/Intent;Ljava/lang/String;ILjava/util/ArrayList;)Ljava/util/List;

    move-result-object v7

    monitor-exit v6

    move-object v6, v7

    goto :goto_1d

    .line 1591
    :cond_45
    const/4 v7, 0x0

    monitor-exit v6

    move-object v6, v7

    goto :goto_1d

    .line 1592
    .end local v2           #pkg:Landroid/content/pm/PackageParser$Package;
    .end local v3           #pkgName:Ljava/lang/String;
    :catchall_49
    move-exception v7

    monitor-exit v6
    :try_end_4b
    .catchall {:try_start_21 .. :try_end_4b} :catchall_49

    throw v7
.end method

.method public queryPermissionsByGroup(Ljava/lang/String;I)Ljava/util/List;
    .registers 8
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

    .prologue
    .line 825
    iget-object v3, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v3

    .line 826
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 827
    .local v1, out:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/PermissionInfo;>;"
    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    iget-object v4, v4, Lcom/android/server/PackageManagerService$Settings;->mPermissions:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_16
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/PackageManagerService$BasePermission;

    .line 828
    .local v2, p:Lcom/android/server/PackageManagerService$BasePermission;
    if-nez p1, :cond_39

    .line 829
    iget-object v4, v2, Lcom/android/server/PackageManagerService$BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v4, v4, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    if-nez v4, :cond_16

    .line 830
    iget-object v4, v2, Lcom/android/server/PackageManagerService$BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    invoke-static {v4, p2}, Landroid/content/pm/PackageParser;->generatePermissionInfo(Landroid/content/pm/PackageParser$Permission;I)Landroid/content/pm/PermissionInfo;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .line 843
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #out:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/PermissionInfo;>;"
    .end local v2           #p:Lcom/android/server/PackageManagerService$BasePermission;
    :catchall_36
    move-exception v4

    monitor-exit v3
    :try_end_38
    .catchall {:try_start_3 .. :try_end_38} :catchall_36

    throw v4

    .line 833
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v1       #out:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/PermissionInfo;>;"
    .restart local v2       #p:Lcom/android/server/PackageManagerService$BasePermission;
    :cond_39
    :try_start_39
    iget-object v4, v2, Lcom/android/server/PackageManagerService$BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v4, v4, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 834
    iget-object v4, v2, Lcom/android/server/PackageManagerService$BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    invoke-static {v4, p2}, Landroid/content/pm/PackageParser;->generatePermissionInfo(Landroid/content/pm/PackageParser$Permission;I)Landroid/content/pm/PermissionInfo;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .line 839
    .end local v2           #p:Lcom/android/server/PackageManagerService$BasePermission;
    :cond_4f
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_58

    .line 840
    monitor-exit v3

    move-object v3, v1

    .line 842
    :goto_57
    return-object v3

    :cond_58
    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mPermissionGroups:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_64

    move-object v4, v1

    :goto_61
    monitor-exit v3
    :try_end_62
    .catchall {:try_start_39 .. :try_end_62} :catchall_36

    move-object v3, v4

    goto :goto_57

    :cond_64
    const/4 v4, 0x0

    goto :goto_61
.end method

.method public querySyncProviders(Ljava/util/List;Ljava/util/List;)V
    .registers 8
    .parameter "outNames"
    .parameter "outInfo"

    .prologue
    .line 1686
    iget-object v3, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v3

    .line 1687
    :try_start_3
    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mProviders:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1690
    .local v1, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageParser$Provider;>;>;"
    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_44

    .line 1691
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1692
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageParser$Provider;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Provider;

    .line 1694
    .local v2, p:Landroid/content/pm/PackageParser$Provider;
    iget-boolean v4, v2, Landroid/content/pm/PackageParser$Provider;->syncable:Z

    if-eqz v4, :cond_d

    iget-boolean v4, p0, Lcom/android/server/PackageManagerService;->mSafeMode:Z

    if-eqz v4, :cond_31

    iget-object v4, v2, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_d

    .line 1697
    :cond_31
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1698
    const/4 v4, 0x0

    invoke-static {v2, v4}, Landroid/content/pm/PackageParser;->generateProviderInfo(Landroid/content/pm/PackageParser$Provider;I)Landroid/content/pm/ProviderInfo;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 1701
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageParser$Provider;>;"
    .end local v1           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageParser$Provider;>;>;"
    .end local v2           #p:Landroid/content/pm/PackageParser$Provider;
    :catchall_41
    move-exception v4

    monitor-exit v3
    :try_end_43
    .catchall {:try_start_3 .. :try_end_43} :catchall_41

    throw v4

    .restart local v1       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageParser$Provider;>;>;"
    :cond_44
    :try_start_44
    monitor-exit v3
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_41

    .line 1702
    return-void
.end method

.method readPermission(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .registers 15
    .parameter "parser"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x3

    const/4 v9, 0x1

    .line 700
    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2

    .line 702
    iget-object v6, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    iget-object v6, v6, Lcom/android/server/PackageManagerService$Settings;->mPermissions:Ljava/util/HashMap;

    invoke-virtual {v6, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageManagerService$BasePermission;

    .line 703
    .local v0, bp:Lcom/android/server/PackageManagerService$BasePermission;
    if-nez v0, :cond_1f

    .line 704
    new-instance v0, Lcom/android/server/PackageManagerService$BasePermission;

    .end local v0           #bp:Lcom/android/server/PackageManagerService$BasePermission;
    invoke-direct {v0, p2, v11, v9}, Lcom/android/server/PackageManagerService$BasePermission;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 705
    .restart local v0       #bp:Lcom/android/server/PackageManagerService$BasePermission;
    iget-object v6, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    iget-object v6, v6, Lcom/android/server/PackageManagerService$Settings;->mPermissions:Ljava/util/HashMap;

    invoke-virtual {v6, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 707
    :cond_1f
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 710
    .local v3, outerDepth:I
    :cond_23
    :goto_23
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    .local v5, type:I
    if-eq v5, v9, :cond_77

    if-ne v5, v10, :cond_31

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    if-le v6, v3, :cond_77

    .line 712
    :cond_31
    if-eq v5, v10, :cond_23

    const/4 v6, 0x4

    if-eq v5, v6, :cond_23

    .line 717
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 718
    .local v4, tagName:Ljava/lang/String;
    const-string v6, "group"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_56

    .line 719
    const-string v6, "gid"

    invoke-interface {p1, v11, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 720
    .local v2, gidStr:Ljava/lang/String;
    if-eqz v2, :cond_5a

    .line 721
    invoke-static {v2}, Landroid/os/Process;->getGidForName(Ljava/lang/String;)I

    move-result v1

    .line 722
    .local v1, gid:I
    iget-object v6, v0, Lcom/android/server/PackageManagerService$BasePermission;->gids:[I

    invoke-static {v6, v1}, Lcom/android/server/PackageManagerService;->appendInt([II)[I

    move-result-object v6

    iput-object v6, v0, Lcom/android/server/PackageManagerService$BasePermission;->gids:[I

    .line 728
    .end local v1           #gid:I
    .end local v2           #gidStr:Ljava/lang/String;
    :cond_56
    :goto_56
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_23

    .line 724
    .restart local v2       #gidStr:Ljava/lang/String;
    :cond_5a
    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<group> without gid at "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_56

    .line 730
    .end local v2           #gidStr:Ljava/lang/String;
    .end local v4           #tagName:Ljava/lang/String;
    :cond_77
    return-void
.end method

.method readPermissions()V
    .registers 12

    .prologue
    const-string v10, "etc/permissions/platform.xml"

    const-string v9, " cannot be read"

    const-string v8, "PackageManager"

    .line 556
    new-instance v4, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v6

    const-string v7, "etc/permissions"

    invoke-direct {v4, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 557
    .local v4, libraryDir:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1d

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_3c

    .line 558
    :cond_1d
    const-string v6, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No directory "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", skipping"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    :goto_3b
    return-void

    .line 561
    :cond_3c
    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v6

    if-nez v6, :cond_61

    .line 562
    const-string v6, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Directory "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " cannot be read"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3b

    .line 567
    :cond_61
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, arr$:[Ljava/io/File;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_67
    if-ge v2, v3, :cond_d8

    aget-object v1, v0, v2

    .line 569
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    const-string v7, "etc/permissions/platform.xml"

    invoke-virtual {v6, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7a

    .line 567
    :goto_77
    add-int/lit8 v2, v2, 0x1

    goto :goto_67

    .line 573
    :cond_7a
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".xml"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_af

    .line 574
    const-string v6, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Non-xml file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " directory, ignoring"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_77

    .line 577
    :cond_af
    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v6

    if-nez v6, :cond_d4

    .line 578
    const-string v6, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Permissions library file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " cannot be read"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_77

    .line 582
    :cond_d4
    invoke-direct {p0, v1}, Lcom/android/server/PackageManagerService;->readPermissionsFromXml(Ljava/io/File;)V

    goto :goto_77

    .line 586
    .end local v1           #f:Ljava/io/File;
    :cond_d8
    new-instance v5, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v6

    const-string v7, "etc/permissions/platform.xml"

    invoke-direct {v5, v6, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 588
    .local v5, permFile:Ljava/io/File;
    invoke-direct {p0, v5}, Lcom/android/server/PackageManagerService;->readPermissionsFromXml(Ljava/io/File;)V

    goto/16 :goto_3b
.end method

.method public removePackageFromPreferred(Ljava/lang/String;)V
    .registers 7
    .parameter "packageName"

    .prologue
    .line 4601
    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.SET_PREFERRED_APPLICATIONS"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4604
    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v2

    .line 4605
    :try_start_b
    iget-object v3, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Package;

    .line 4606
    .local v0, p:Landroid/content/pm/PackageParser$Package;
    if-nez v0, :cond_17

    .line 4607
    monitor-exit v2

    .line 4619
    :goto_16
    return-void

    .line 4609
    :cond_17
    iget v3, v0, Landroid/content/pm/PackageParser$Package;->mPreferredOrder:I

    if-lez v3, :cond_35

    .line 4610
    iget-object v1, v0, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 4611
    .local v1, ps:Lcom/android/server/PackageManagerService$PackageSetting;
    if-eqz v1, :cond_35

    .line 4612
    iget-object v3, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    invoke-static {v3}, Lcom/android/server/PackageManagerService$Settings;->access$900(Lcom/android/server/PackageManagerService$Settings;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4613
    const/4 v3, 0x0

    iput v3, v0, Landroid/content/pm/PackageParser$Package;->mPreferredOrder:I

    .line 4614
    invoke-direct {p0}, Lcom/android/server/PackageManagerService;->updatePreferredIndicesLP()V

    .line 4615
    iget-object v3, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    invoke-virtual {v3}, Lcom/android/server/PackageManagerService$Settings;->writeLP()V

    .line 4618
    .end local v1           #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_35
    monitor-exit v2

    goto :goto_16

    .end local v0           #p:Landroid/content/pm/PackageParser$Package;
    :catchall_37
    move-exception v3

    monitor-exit v2
    :try_end_39
    .catchall {:try_start_b .. :try_end_39} :catchall_37

    throw v3
.end method

.method removePackageLI(Landroid/content/pm/PackageParser$Package;Z)V
    .registers 21
    .parameter "pkg"
    .parameter "chatty"

    .prologue
    .line 2648
    if-eqz p2, :cond_21

    const-string v13, "PackageManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Removing package "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v15, v0

    iget-object v15, v15, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2651
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object v13, v0

    monitor-enter v13

    .line 2652
    :try_start_27
    move-object/from16 v0, p1

    iget v0, v0, Landroid/content/pm/PackageParser$Package;->mPreferredOrder:I

    move v14, v0

    if-lez v14, :cond_46

    .line 2653
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v14, v0

    invoke-static {v14}, Lcom/android/server/PackageManagerService$Settings;->access$900(Lcom/android/server/PackageManagerService$Settings;)Ljava/util/ArrayList;

    move-result-object v14

    move-object v0, v14

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2654
    const/4 v14, 0x0

    move v0, v14

    move-object/from16 v1, p1

    iput v0, v1, Landroid/content/pm/PackageParser$Package;->mPreferredOrder:I

    .line 2655
    invoke-direct/range {p0 .. p0}, Lcom/android/server/PackageManagerService;->updatePreferredIndicesLP()V

    .line 2658
    :cond_46
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object v14, v0

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-virtual {v0, v1}, Lcom/android/server/PackageManagerService;->clearPackagePreferredActivitiesLP(Ljava/lang/String;)Z

    .line 2660
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object v14, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v15, v0

    iget-object v15, v15, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2661
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mPath:Ljava/lang/String;

    move-object v14, v0

    if-eqz v14, :cond_74

    .line 2662
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mAppDirs:Ljava/util/HashMap;

    move-object v14, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mPath:Ljava/lang/String;

    move-object v15, v0

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2665
    :cond_74
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    move-object v9, v0

    check-cast v9, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 2666
    .local v9, ps:Lcom/android/server/PackageManagerService$PackageSetting;
    if-eqz v9, :cond_81

    iget-object v14, v9, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    if-eqz v14, :cond_81

    .line 2676
    :cond_81
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    move-object v14, v0

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2677
    .local v2, N:I
    const/4 v10, 0x0

    .line 2679
    .local v10, r:Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_8c
    if-ge v5, v2, :cond_150

    .line 2680
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    move-object v14, v0

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/PackageParser$Provider;

    .line 2681
    .local v8, p:Landroid/content/pm/PackageParser$Provider;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mProvidersByComponent:Ljava/util/HashMap;

    move-object v14, v0

    new-instance v15, Landroid/content/ComponentName;

    move-object v0, v8

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object v0, v8

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-direct/range {v15 .. v17}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2683
    iget-object v14, v8, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v14, v14, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    if-nez v14, :cond_c5

    .line 2679
    :cond_c2
    :goto_c2
    add-int/lit8 v5, v5, 0x1

    goto :goto_8c

    .line 2691
    :cond_c5
    iget-object v14, v8, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v14, v14, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    const-string v15, ";"

    invoke-virtual {v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 2692
    .local v7, names:[Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, j:I
    :goto_d0
    array-length v14, v7

    if-ge v6, v14, :cond_133

    .line 2693
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mProviders:Ljava/util/HashMap;

    move-object v14, v0

    aget-object v15, v7, v6

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-ne v14, v8, :cond_130

    .line 2694
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mProviders:Ljava/util/HashMap;

    move-object v14, v0

    aget-object v15, v7, v6

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2695
    if-eqz p2, :cond_130

    const-string v14, "PackageManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Unregistered content provider: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    aget-object v16, v7, v6

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", className = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v0, v8

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", isSyncable = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v0, v8

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-boolean v0, v0, Landroid/content/pm/ProviderInfo;->isSyncable:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2692
    :cond_130
    add-int/lit8 v6, v6, 0x1

    goto :goto_d0

    .line 2701
    :cond_133
    if-eqz p2, :cond_c2

    .line 2702
    if-nez v10, :cond_14a

    .line 2703
    new-instance v10, Ljava/lang/StringBuilder;

    .end local v10           #r:Ljava/lang/StringBuilder;
    const/16 v14, 0x100

    invoke-direct {v10, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2707
    .restart local v10       #r:Ljava/lang/StringBuilder;
    :goto_13e
    iget-object v14, v8, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v14, v14, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_c2

    .line 2819
    .end local v2           #N:I
    .end local v5           #i:I
    .end local v6           #j:I
    .end local v7           #names:[Ljava/lang/String;
    .end local v8           #p:Landroid/content/pm/PackageParser$Provider;
    .end local v9           #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    .end local v10           #r:Ljava/lang/StringBuilder;
    :catchall_147
    move-exception v14

    monitor-exit v13
    :try_end_149
    .catchall {:try_start_27 .. :try_end_149} :catchall_147

    throw v14

    .line 2705
    .restart local v2       #N:I
    .restart local v5       #i:I
    .restart local v6       #j:I
    .restart local v7       #names:[Ljava/lang/String;
    .restart local v8       #p:Landroid/content/pm/PackageParser$Provider;
    .restart local v9       #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    .restart local v10       #r:Ljava/lang/StringBuilder;
    :cond_14a
    const/16 v14, 0x20

    :try_start_14c
    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_13e

    .line 2710
    .end local v6           #j:I
    .end local v7           #names:[Ljava/lang/String;
    .end local v8           #p:Landroid/content/pm/PackageParser$Provider;
    :cond_150
    if-eqz v10, :cond_16a

    .line 2711
    const-string v14, "PackageManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "  Providers: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2714
    :cond_16a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    move-object v14, v0

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2715
    const/4 v10, 0x0

    .line 2716
    const/4 v5, 0x0

    :goto_175
    if-ge v5, v2, :cond_1a5

    .line 2717
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    move-object v14, v0

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/PackageParser$Service;

    .line 2718
    .local v11, s:Landroid/content/pm/PackageParser$Service;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mServices:Lcom/android/server/PackageManagerService$ServiceIntentResolver;

    move-object v14, v0

    invoke-virtual {v14, v11}, Lcom/android/server/PackageManagerService$ServiceIntentResolver;->removeService(Landroid/content/pm/PackageParser$Service;)V

    .line 2719
    if-eqz p2, :cond_19c

    .line 2720
    if-nez v10, :cond_19f

    .line 2721
    new-instance v10, Ljava/lang/StringBuilder;

    .end local v10           #r:Ljava/lang/StringBuilder;
    const/16 v14, 0x100

    invoke-direct {v10, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2725
    .restart local v10       #r:Ljava/lang/StringBuilder;
    :goto_195
    iget-object v14, v11, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget-object v14, v14, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2716
    :cond_19c
    add-int/lit8 v5, v5, 0x1

    goto :goto_175

    .line 2723
    :cond_19f
    const/16 v14, 0x20

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_195

    .line 2728
    .end local v11           #s:Landroid/content/pm/PackageParser$Service;
    :cond_1a5
    if-eqz v10, :cond_1bf

    .line 2729
    const-string v14, "PackageManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "  Services: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2732
    :cond_1bf
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    move-object v14, v0

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2733
    const/4 v10, 0x0

    .line 2734
    const/4 v5, 0x0

    :goto_1ca
    if-ge v5, v2, :cond_1fc

    .line 2735
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    move-object v14, v0

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$Activity;

    .line 2736
    .local v3, a:Landroid/content/pm/PackageParser$Activity;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mReceivers:Lcom/android/server/PackageManagerService$ActivityIntentResolver;

    move-object v14, v0

    const-string v15, "receiver"

    invoke-virtual {v14, v3, v15}, Lcom/android/server/PackageManagerService$ActivityIntentResolver;->removeActivity(Landroid/content/pm/PackageParser$Activity;Ljava/lang/String;)V

    .line 2737
    if-eqz p2, :cond_1f3

    .line 2738
    if-nez v10, :cond_1f6

    .line 2739
    new-instance v10, Ljava/lang/StringBuilder;

    .end local v10           #r:Ljava/lang/StringBuilder;
    const/16 v14, 0x100

    invoke-direct {v10, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2743
    .restart local v10       #r:Ljava/lang/StringBuilder;
    :goto_1ec
    iget-object v14, v3, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2734
    :cond_1f3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1ca

    .line 2741
    :cond_1f6
    const/16 v14, 0x20

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1ec

    .line 2746
    .end local v3           #a:Landroid/content/pm/PackageParser$Activity;
    :cond_1fc
    if-eqz v10, :cond_216

    .line 2747
    const-string v14, "PackageManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "  Receivers: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2750
    :cond_216
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    move-object v14, v0

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2751
    const/4 v10, 0x0

    .line 2752
    const/4 v5, 0x0

    :goto_221
    if-ge v5, v2, :cond_253

    .line 2753
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    move-object v14, v0

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$Activity;

    .line 2754
    .restart local v3       #a:Landroid/content/pm/PackageParser$Activity;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mActivities:Lcom/android/server/PackageManagerService$ActivityIntentResolver;

    move-object v14, v0

    const-string v15, "activity"

    invoke-virtual {v14, v3, v15}, Lcom/android/server/PackageManagerService$ActivityIntentResolver;->removeActivity(Landroid/content/pm/PackageParser$Activity;Ljava/lang/String;)V

    .line 2755
    if-eqz p2, :cond_24a

    .line 2756
    if-nez v10, :cond_24d

    .line 2757
    new-instance v10, Ljava/lang/StringBuilder;

    .end local v10           #r:Ljava/lang/StringBuilder;
    const/16 v14, 0x100

    invoke-direct {v10, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2761
    .restart local v10       #r:Ljava/lang/StringBuilder;
    :goto_243
    iget-object v14, v3, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2752
    :cond_24a
    add-int/lit8 v5, v5, 0x1

    goto :goto_221

    .line 2759
    :cond_24d
    const/16 v14, 0x20

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_243

    .line 2764
    .end local v3           #a:Landroid/content/pm/PackageParser$Activity;
    :cond_253
    if-eqz v10, :cond_26d

    .line 2765
    const-string v14, "PackageManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "  Activities: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2768
    :cond_26d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    move-object v14, v0

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2769
    const/4 v10, 0x0

    .line 2770
    const/4 v5, 0x0

    :goto_278
    if-ge v5, v2, :cond_2f4

    .line 2771
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    move-object v14, v0

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/PackageParser$Permission;

    .line 2772
    .local v8, p:Landroid/content/pm/PackageParser$Permission;
    const/4 v12, 0x0

    .line 2773
    .local v12, tree:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v14, v0

    iget-object v14, v14, Lcom/android/server/PackageManagerService$Settings;->mPermissions:Ljava/util/HashMap;

    iget-object v15, v8, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v15, v15, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/PackageManagerService$BasePermission;

    .line 2774
    .local v4, bp:Lcom/android/server/PackageManagerService$BasePermission;
    if-nez v4, :cond_2ab

    .line 2775
    const/4 v12, 0x1

    .line 2776
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v14, v0

    iget-object v14, v14, Lcom/android/server/PackageManagerService$Settings;->mPermissionTrees:Ljava/util/HashMap;

    iget-object v15, v8, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v15, v15, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #bp:Lcom/android/server/PackageManagerService$BasePermission;
    check-cast v4, Lcom/android/server/PackageManagerService$BasePermission;

    .line 2778
    .restart local v4       #bp:Lcom/android/server/PackageManagerService$BasePermission;
    :cond_2ab
    if-eqz v4, :cond_2d8

    iget-object v14, v4, Lcom/android/server/PackageManagerService$BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    if-ne v14, v8, :cond_2d8

    .line 2779
    iget v14, v4, Lcom/android/server/PackageManagerService$BasePermission;->type:I

    const/4 v15, 0x1

    if-eq v14, v15, :cond_2ea

    .line 2780
    if-eqz v12, :cond_2db

    .line 2781
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v14, v0

    iget-object v14, v14, Lcom/android/server/PackageManagerService$Settings;->mPermissionTrees:Ljava/util/HashMap;

    iget-object v15, v8, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v15, v15, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2788
    :goto_2c6
    if-eqz p2, :cond_2d8

    .line 2789
    if-nez v10, :cond_2ee

    .line 2790
    new-instance v10, Ljava/lang/StringBuilder;

    .end local v10           #r:Ljava/lang/StringBuilder;
    const/16 v14, 0x100

    invoke-direct {v10, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2794
    .restart local v10       #r:Ljava/lang/StringBuilder;
    :goto_2d1
    iget-object v14, v8, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v14, v14, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2770
    :cond_2d8
    add-int/lit8 v5, v5, 0x1

    goto :goto_278

    .line 2783
    :cond_2db
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object v14, v0

    iget-object v14, v14, Lcom/android/server/PackageManagerService$Settings;->mPermissions:Ljava/util/HashMap;

    iget-object v15, v8, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v15, v15, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2c6

    .line 2786
    :cond_2ea
    const/4 v14, 0x0

    iput-object v14, v4, Lcom/android/server/PackageManagerService$BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    goto :goto_2c6

    .line 2792
    :cond_2ee
    const/16 v14, 0x20

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2d1

    .line 2798
    .end local v4           #bp:Lcom/android/server/PackageManagerService$BasePermission;
    .end local v8           #p:Landroid/content/pm/PackageParser$Permission;
    .end local v12           #tree:Z
    :cond_2f4
    if-eqz v10, :cond_30e

    .line 2799
    const-string v14, "PackageManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "  Permissions: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2802
    :cond_30e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    move-object v14, v0

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2803
    const/4 v10, 0x0

    .line 2804
    const/4 v5, 0x0

    :goto_319
    if-ge v5, v2, :cond_34b

    .line 2805
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    move-object v14, v0

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$Instrumentation;

    .line 2806
    .local v3, a:Landroid/content/pm/PackageParser$Instrumentation;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mInstrumentation:Ljava/util/HashMap;

    move-object v14, v0

    iget-object v15, v3, Landroid/content/pm/PackageParser$Instrumentation;->component:Landroid/content/ComponentName;

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2807
    if-eqz p2, :cond_342

    .line 2808
    if-nez v10, :cond_345

    .line 2809
    new-instance v10, Ljava/lang/StringBuilder;

    .end local v10           #r:Ljava/lang/StringBuilder;
    const/16 v14, 0x100

    invoke-direct {v10, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2813
    .restart local v10       #r:Ljava/lang/StringBuilder;
    :goto_33b
    iget-object v14, v3, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    iget-object v14, v14, Landroid/content/pm/InstrumentationInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2804
    :cond_342
    add-int/lit8 v5, v5, 0x1

    goto :goto_319

    .line 2811
    :cond_345
    const/16 v14, 0x20

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_33b

    .line 2816
    .end local v3           #a:Landroid/content/pm/PackageParser$Instrumentation;
    :cond_34b
    if-eqz v10, :cond_365

    .line 2817
    const-string v14, "PackageManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "  Instrumentation: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2819
    :cond_365
    monitor-exit v13
    :try_end_366
    .catchall {:try_start_14c .. :try_end_366} :catchall_147

    .line 2820
    return-void
.end method

.method public removePermission(Ljava/lang/String;)V
    .registers 7
    .parameter "name"

    .prologue
    .line 1117
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v1

    .line 1118
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/PackageManagerService;->checkPermissionTreeLP(Ljava/lang/String;)Lcom/android/server/PackageManagerService$BasePermission;

    .line 1119
    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    iget-object v2, v2, Lcom/android/server/PackageManagerService$Settings;->mPermissions:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageManagerService$BasePermission;

    .line 1120
    .local v0, bp:Lcom/android/server/PackageManagerService$BasePermission;
    if-eqz v0, :cond_3f

    .line 1121
    iget v2, v0, Lcom/android/server/PackageManagerService$BasePermission;->type:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_33

    .line 1122
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not allowed to modify non-dynamic permission "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1129
    .end local v0           #bp:Lcom/android/server/PackageManagerService$BasePermission;
    :catchall_30
    move-exception v2

    monitor-exit v1
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_30

    throw v2

    .line 1126
    .restart local v0       #bp:Lcom/android/server/PackageManagerService$BasePermission;
    :cond_33
    :try_start_33
    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    iget-object v2, v2, Lcom/android/server/PackageManagerService$Settings;->mPermissions:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1127
    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    invoke-virtual {v2}, Lcom/android/server/PackageManagerService$Settings;->writeLP()V

    .line 1129
    :cond_3f
    monitor-exit v1
    :try_end_40
    .catchall {:try_start_33 .. :try_end_40} :catchall_30

    .line 1130
    return-void
.end method

.method public replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .registers 13
    .parameter "filter"
    .parameter "match"
    .parameter "set"
    .parameter "activity"

    .prologue
    const/4 v7, 0x1

    const-string v4, "PackageManager"

    .line 4658
    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.SET_PREFERRED_APPLICATIONS"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4660
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countActions()I

    move-result v4

    if-eq v4, v7, :cond_19

    .line 4661
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "replacePreferredActivity expects filter to have only 1 action."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 4664
    :cond_19
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countCategories()I

    move-result v4

    if-eq v4, v7, :cond_27

    .line 4665
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "replacePreferredActivity expects filter to have only 1 category."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 4668
    :cond_27
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataAuthorities()I

    move-result v4

    if-nez v4, :cond_3f

    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataPaths()I

    move-result v4

    if-nez v4, :cond_3f

    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v4

    if-nez v4, :cond_3f

    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataTypes()I

    move-result v4

    if-eqz v4, :cond_47

    .line 4672
    :cond_3f
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "replacePreferredActivity expects filter to have no data authorities, paths, schemes or types."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 4676
    :cond_47
    iget-object v4, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v4

    .line 4677
    :try_start_4a
    iget-object v5, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    invoke-static {v5}, Lcom/android/server/PackageManagerService$Settings;->access$600(Lcom/android/server/PackageManagerService$Settings;)Lcom/android/server/IntentResolver;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/IntentResolver;->filterIterator()Ljava/util/Iterator;

    move-result-object v2

    .line 4678
    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/PackageManagerService$PreferredActivity;>;"
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v0

    .line 4679
    .local v0, action:Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Landroid/content/IntentFilter;->getCategory(I)Ljava/lang/String;

    move-result-object v1

    .line 4680
    .local v1, category:Ljava/lang/String;
    :cond_5e
    :goto_5e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b4

    .line 4681
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/PackageManagerService$PreferredActivity;

    .line 4682
    .local v3, pa:Lcom/android/server/PackageManagerService$PreferredActivity;
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/android/server/PackageManagerService$PreferredActivity;->getAction(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5e

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/android/server/PackageManagerService$PreferredActivity;->getCategory(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5e

    .line 4683
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 4684
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removed preferred activity "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/android/server/PackageManagerService$PreferredActivity;->mActivity:Landroid/content/ComponentName;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4685
    new-instance v5, Landroid/util/LogPrinter;

    const/4 v6, 0x4

    const-string v7, "PackageManager"

    invoke-direct {v5, v6, v7}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;)V

    const-string v6, "  "

    invoke-virtual {p1, v5, v6}, Landroid/content/IntentFilter;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    goto :goto_5e

    .line 4689
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #category:Ljava/lang/String;
    .end local v2           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/PackageManagerService$PreferredActivity;>;"
    .end local v3           #pa:Lcom/android/server/PackageManagerService$PreferredActivity;
    :catchall_b1
    move-exception v5

    monitor-exit v4
    :try_end_b3
    .catchall {:try_start_4a .. :try_end_b3} :catchall_b1

    throw v5

    .line 4688
    .restart local v0       #action:Ljava/lang/String;
    .restart local v1       #category:Ljava/lang/String;
    .restart local v2       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/PackageManagerService$PreferredActivity;>;"
    :cond_b4
    :try_start_b4
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/PackageManagerService;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 4689
    monitor-exit v4
    :try_end_b8
    .catchall {:try_start_b4 .. :try_end_b8} :catchall_b1

    .line 4690
    return-void
.end method

.method public resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;
    .registers 7
    .parameter "name"
    .parameter "flags"

    .prologue
    .line 1674
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v1

    .line 1675
    :try_start_3
    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mProviders:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Provider;

    .line 1676
    .local v0, provider:Landroid/content/pm/PackageParser$Provider;
    if-eqz v0, :cond_2b

    iget-object v2, p0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    iget-object v3, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    invoke-virtual {v2, v3, p2}, Lcom/android/server/PackageManagerService$Settings;->isEnabledLP(Landroid/content/pm/ComponentInfo;I)Z

    move-result v2

    if-eqz v2, :cond_2b

    iget-boolean v2, p0, Lcom/android/server/PackageManagerService;->mSafeMode:Z

    if-eqz v2, :cond_25

    iget-object v2, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v2, v2, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2b

    :cond_25
    invoke-static {v0, p2}, Landroid/content/pm/PackageParser;->generateProviderInfo(Landroid/content/pm/PackageParser$Provider;I)Landroid/content/pm/ProviderInfo;

    move-result-object v2

    :goto_29
    monitor-exit v1

    return-object v2

    :cond_2b
    const/4 v2, 0x0

    goto :goto_29

    .line 1682
    .end local v0           #provider:Landroid/content/pm/PackageParser$Provider;
    :catchall_2d
    move-exception v2

    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw v2
.end method

.method public resolveIntent(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;
    .registers 6
    .parameter "intent"
    .parameter "resolvedType"
    .parameter "flags"

    .prologue
    .line 1226
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/PackageManagerService;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 1227
    .local v0, query:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/PackageManagerService;->chooseBestActivity(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    return-object v1
.end method

.method public resolveService(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;
    .registers 7
    .parameter "intent"
    .parameter "resolvedType"
    .parameter "flags"

    .prologue
    .line 1554
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/PackageManagerService;->queryIntentServices(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 1556
    .local v0, query:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_16

    .line 1557
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_16

    .line 1560
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/content/pm/ResolveInfo;

    move-object v1, p0

    .line 1563
    :goto_15
    return-object v1

    .restart local p0
    :cond_16
    const/4 v1, 0x0

    goto :goto_15
.end method

.method public setApplicationEnabledSetting(Ljava/lang/String;II)V
    .registers 5
    .parameter "appPackageName"
    .parameter "newState"
    .parameter "flags"

    .prologue
    .line 4741
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/server/PackageManagerService;->setEnabledSetting(Ljava/lang/String;Ljava/lang/String;II)V

    .line 4742
    return-void
.end method

.method public setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    .registers 6
    .parameter "componentName"
    .parameter "newState"
    .parameter "flags"

    .prologue
    .line 4746
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/android/server/PackageManagerService;->setEnabledSetting(Ljava/lang/String;Ljava/lang/String;II)V

    .line 4748
    return-void
.end method

.method public systemReady()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 4855
    iput-boolean v3, p0, Lcom/android/server/PackageManagerService;->mSystemReady:Z

    .line 4858
    iget-object v1, p0, Lcom/android/server/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "compatibility_mode"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_16

    move v0, v3

    .line 4861
    .local v0, compatibilityModeEnabled:Z
    :goto_12
    invoke-static {v0}, Landroid/content/pm/PackageParser;->setCompatibilityModeEnabled(Z)V

    .line 4865
    return-void

    .line 4858
    .end local v0           #compatibilityModeEnabled:Z
    :cond_16
    const/4 v1, 0x0

    move v0, v1

    goto :goto_12
.end method
