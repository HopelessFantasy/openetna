.class public final Landroid/app/ActivityThread;
.super Ljava/lang/Object;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ActivityThread$1;,
        Landroid/app/ActivityThread$ProviderRefCount;,
        Landroid/app/ActivityThread$StopInfo;,
        Landroid/app/ActivityThread$ResourcesKey;,
        Landroid/app/ActivityThread$GcIdler;,
        Landroid/app/ActivityThread$Idler;,
        Landroid/app/ActivityThread$H;,
        Landroid/app/ActivityThread$ApplicationThread;,
        Landroid/app/ActivityThread$ProfilerControlData;,
        Landroid/app/ActivityThread$ContextCleanupInfo;,
        Landroid/app/ActivityThread$ResultData;,
        Landroid/app/ActivityThread$DumpServiceInfo;,
        Landroid/app/ActivityThread$AppBindData;,
        Landroid/app/ActivityThread$ServiceArgsData;,
        Landroid/app/ActivityThread$BindServiceData;,
        Landroid/app/ActivityThread$CreateServiceData;,
        Landroid/app/ActivityThread$CreateBackupAgentData;,
        Landroid/app/ActivityThread$ReceiverData;,
        Landroid/app/ActivityThread$NewIntentData;,
        Landroid/app/ActivityThread$ProviderRecord;,
        Landroid/app/ActivityThread$ActivityRecord;,
        Landroid/app/ActivityThread$PackageInfo;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEBUG_BACKUP:Z = true

.field private static final DEBUG_BROADCAST:Z = false

.field private static final DEBUG_RESULTS:Z = false

.field private static final LOG_ON_PAUSE_CALLED:I = 0x7545

.field private static final LOG_ON_RESUME_CALLED:I = 0x7546

.field private static final MIN_TIME_BETWEEN_GCS:J = 0x1388L

.field private static final PATTERN_SEMICOLON:Ljava/util/regex/Pattern; = null

.field private static final SQLITE_MEM_RELEASED_EVENT_LOG_TAG:I = 0x124fb

.field private static final TAG:Ljava/lang/String; = "ActivityThread"

.field private static final localLOGV:Z

.field private static mSystemContext:Landroid/app/ApplicationContext;

.field static sPackageManager:Landroid/content/pm/IPackageManager;

.field static final sThreadLocal:Ljava/lang/ThreadLocal;


# instance fields
.field mActiveResources:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/app/ActivityThread$ResourcesKey;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/res/Resources;",
            ">;>;"
        }
    .end annotation
.end field

.field final mActivities:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Landroid/app/ActivityThread$ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mAllApplications:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Application;",
            ">;"
        }
    .end annotation
.end field

.field final mAppThread:Landroid/app/ActivityThread$ApplicationThread;

.field final mBackupAgents:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/BackupAgent;",
            ">;"
        }
    .end annotation
.end field

.field mBoundApplication:Landroid/app/ActivityThread$AppBindData;

.field mConfiguration:Landroid/content/res/Configuration;

.field mDisplay:Landroid/view/Display;

.field mDisplayMetrics:Landroid/util/DisplayMetrics;

.field final mGcIdler:Landroid/app/ActivityThread$GcIdler;

.field mGcIdlerScheduled:Z

.field final mH:Landroid/app/ActivityThread$H;

.field mInitialApplication:Landroid/app/Application;

.field mInstrumentation:Landroid/app/Instrumentation;

.field mInstrumentationAppDir:Ljava/lang/String;

.field mInstrumentationAppPackage:Ljava/lang/String;

.field mInstrumentedAppDir:Ljava/lang/String;

.field final mLocalProviders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Landroid/app/ActivityThread$ProviderRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mLooper:Landroid/os/Looper;

.field mNewActivities:Landroid/app/ActivityThread$ActivityRecord;

.field mNumVisibleActivities:I

.field final mPackages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/ActivityThread$PackageInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field mPendingConfiguration:Landroid/content/res/Configuration;

.field final mProviderMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/ActivityThread$ProviderRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mProviderRefCountMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Landroid/app/ActivityThread$ProviderRefCount;",
            ">;"
        }
    .end annotation
.end field

.field final mRelaunchingActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/ActivityThread$ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mResourcePackages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/ActivityThread$PackageInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field final mServices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Landroid/app/Service;",
            ">;"
        }
    .end annotation
.end field

.field mSystemThread:Z

.field private mThumbnailHeight:I

.field private mThumbnailWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 124
    const-string v0, ";"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/app/ActivityThread;->PATTERN_SEMICOLON:Ljava/util/regex/Pattern;

    .line 1098
    const/4 v0, 0x0

    sput-object v0, Landroid/app/ActivityThread;->mSystemContext:Landroid/app/ApplicationContext;

    .line 1976
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/app/ActivityThread;->sThreadLocal:Ljava/lang/ThreadLocal;

    return-void
.end method

.method constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 2126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1957
    new-instance v0, Landroid/app/ActivityThread$ApplicationThread;

    invoke-direct {v0, p0, v1}, Landroid/app/ActivityThread$ApplicationThread;-><init>(Landroid/app/ActivityThread;Landroid/app/ActivityThread$1;)V

    iput-object v0, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    .line 1958
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityThread;->mLooper:Landroid/os/Looper;

    .line 1959
    new-instance v0, Landroid/app/ActivityThread$H;

    invoke-direct {v0, p0, v1}, Landroid/app/ActivityThread$H;-><init>(Landroid/app/ActivityThread;Landroid/app/ActivityThread$1;)V

    iput-object v0, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    .line 1960
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mActivities:Ljava/util/HashMap;

    .line 1964
    iput-object v1, p0, Landroid/app/ActivityThread;->mNewActivities:Landroid/app/ActivityThread$ActivityRecord;

    .line 1966
    iput v2, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    .line 1967
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mServices:Ljava/util/HashMap;

    .line 1972
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mAllApplications:Ljava/util/ArrayList;

    .line 1975
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mBackupAgents:Ljava/util/HashMap;

    .line 1978
    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentationAppDir:Ljava/lang/String;

    .line 1979
    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentationAppPackage:Ljava/lang/String;

    .line 1980
    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentedAppDir:Ljava/lang/String;

    .line 1981
    iput-boolean v2, p0, Landroid/app/ActivityThread;->mSystemThread:Z

    .line 1987
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mRelaunchingActivities:Ljava/util/ArrayList;

    .line 1989
    iput-object v1, p0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    .line 1994
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mPackages:Ljava/util/HashMap;

    .line 1996
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mResourcePackages:Ljava/util/HashMap;

    .line 1998
    iput-object v1, p0, Landroid/app/ActivityThread;->mDisplay:Landroid/view/Display;

    .line 1999
    iput-object v1, p0, Landroid/app/ActivityThread;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 2000
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mActiveResources:Ljava/util/HashMap;

    .line 2004
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mProviderMap:Ljava/util/HashMap;

    .line 2006
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Ljava/util/HashMap;

    .line 2008
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mLocalProviders:Ljava/util/HashMap;

    .line 2011
    new-instance v0, Landroid/app/ActivityThread$GcIdler;

    invoke-direct {v0, p0}, Landroid/app/ActivityThread$GcIdler;-><init>(Landroid/app/ActivityThread;)V

    iput-object v0, p0, Landroid/app/ActivityThread;->mGcIdler:Landroid/app/ActivityThread$GcIdler;

    .line 2012
    iput-boolean v2, p0, Landroid/app/ActivityThread;->mGcIdlerScheduled:Z

    .line 2950
    iput v3, p0, Landroid/app/ActivityThread;->mThumbnailWidth:I

    .line 2951
    iput v3, p0, Landroid/app/ActivityThread;->mThumbnailHeight:I

    .line 2127
    return-void
.end method

.method static synthetic access$100()Landroid/app/ApplicationContext;
    .registers 1

    .prologue
    .line 116
    sget-object v0, Landroid/app/ActivityThread;->mSystemContext:Landroid/app/ApplicationContext;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/app/ActivityThread;ILjava/lang/Object;I)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 116
    invoke-direct {p0, p1, p2, p3}, Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;I)V

    return-void
.end method

.method static synthetic access$102(Landroid/app/ApplicationContext;)Landroid/app/ApplicationContext;
    .registers 1
    .parameter "x0"

    .prologue
    .line 116
    sput-object p0, Landroid/app/ActivityThread;->mSystemContext:Landroid/app/ApplicationContext;

    return-object p0
.end method

.method static synthetic access$2100(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ActivityRecord;Landroid/content/Intent;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 116
    invoke-direct {p0, p1, p2}, Landroid/app/ActivityThread;->handleLaunchActivity(Landroid/app/ActivityThread$ActivityRecord;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$2200(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ActivityRecord;I)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 116
    invoke-direct {p0, p1, p2}, Landroid/app/ActivityThread;->handleRelaunchActivity(Landroid/app/ActivityThread$ActivityRecord;I)V

    return-void
.end method

.method static synthetic access$2300(Landroid/app/ActivityThread;Landroid/os/IBinder;ZZI)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 116
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/ActivityThread;->handlePauseActivity(Landroid/os/IBinder;ZZI)V

    return-void
.end method

.method static synthetic access$2400(Landroid/app/ActivityThread;Landroid/os/IBinder;ZI)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 116
    invoke-direct {p0, p1, p2, p3}, Landroid/app/ActivityThread;->handleStopActivity(Landroid/os/IBinder;ZI)V

    return-void
.end method

.method static synthetic access$2500(Landroid/app/ActivityThread;Landroid/os/IBinder;Z)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 116
    invoke-direct {p0, p1, p2}, Landroid/app/ActivityThread;->handleWindowVisibility(Landroid/os/IBinder;Z)V

    return-void
.end method

.method static synthetic access$2600(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ResultData;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleSendResult(Landroid/app/ActivityThread$ResultData;)V

    return-void
.end method

.method static synthetic access$2700(Landroid/app/ActivityThread;Landroid/os/IBinder;ZIZ)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 116
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/ActivityThread;->handleDestroyActivity(Landroid/os/IBinder;ZIZ)V

    return-void
.end method

.method static synthetic access$2800(Landroid/app/ActivityThread;Landroid/app/ActivityThread$AppBindData;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleBindApplication(Landroid/app/ActivityThread$AppBindData;)V

    return-void
.end method

.method static synthetic access$2900(Landroid/app/ActivityThread;Landroid/app/ActivityThread$NewIntentData;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleNewIntent(Landroid/app/ActivityThread$NewIntentData;)V

    return-void
.end method

.method static synthetic access$3000(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ReceiverData;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleReceiver(Landroid/app/ActivityThread$ReceiverData;)V

    return-void
.end method

.method static synthetic access$3100(Landroid/app/ActivityThread;Landroid/app/ActivityThread$CreateServiceData;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleCreateService(Landroid/app/ActivityThread$CreateServiceData;)V

    return-void
.end method

.method static synthetic access$3200(Landroid/app/ActivityThread;Landroid/app/ActivityThread$BindServiceData;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleBindService(Landroid/app/ActivityThread$BindServiceData;)V

    return-void
.end method

.method static synthetic access$3300(Landroid/app/ActivityThread;Landroid/app/ActivityThread$BindServiceData;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleUnbindService(Landroid/app/ActivityThread$BindServiceData;)V

    return-void
.end method

.method static synthetic access$3400(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ServiceArgsData;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleServiceArgs(Landroid/app/ActivityThread$ServiceArgsData;)V

    return-void
.end method

.method static synthetic access$3500(Landroid/app/ActivityThread;Landroid/os/IBinder;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleStopService(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$3600(Landroid/app/ActivityThread;Landroid/os/IBinder;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleRequestThumbnail(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$3700(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpServiceInfo;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleDumpService(Landroid/app/ActivityThread$DumpServiceInfo;)V

    return-void
.end method

.method static synthetic access$3800(Landroid/app/ActivityThread;Landroid/app/ActivityThread$CreateBackupAgentData;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleCreateBackupAgent(Landroid/app/ActivityThread$CreateBackupAgentData;)V

    return-void
.end method

.method static synthetic access$3900(Landroid/app/ActivityThread;Landroid/app/ActivityThread$CreateBackupAgentData;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleDestroyBackupAgent(Landroid/app/ActivityThread$CreateBackupAgentData;)V

    return-void
.end method

.method static synthetic access$800(Landroid/app/ActivityThread;ILjava/lang/Object;II)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 116
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;II)V

    return-void
.end method

.method static synthetic access$900(Landroid/app/ActivityThread;ILjava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 116
    invoke-direct {p0, p1, p2}, Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method private final attach(Z)V
    .registers 9
    .parameter "system"

    .prologue
    .line 4146
    sget-object v4, Landroid/app/ActivityThread;->sThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v4, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 4147
    iput-boolean p1, p0, Landroid/app/ActivityThread;->mSystemThread:Z

    .line 4148
    const/4 v4, 0x1

    invoke-static {v4}, Landroid/net/http/AndroidHttpClient;->setThreadBlocked(Z)V

    .line 4149
    if-nez p1, :cond_25

    .line 4150
    const-string v4, "<pre-initialized>"

    invoke-static {v4}, Landroid/ddm/DdmHandleAppName;->setAppName(Ljava/lang/String;)V

    .line 4151
    iget-object v4, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    invoke-virtual {v4}, Landroid/app/ActivityThread$ApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/os/RuntimeInit;->setApplicationObject(Landroid/os/IBinder;)V

    .line 4152
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    .line 4154
    .local v3, mgr:Landroid/app/IActivityManager;
    :try_start_1f
    iget-object v4, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    invoke-interface {v3, v4}, Landroid/app/IActivityManager;->attachApplication(Landroid/app/IApplicationThread;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_24} :catch_70

    .line 4174
    .end local v3           #mgr:Landroid/app/IActivityManager;
    :goto_24
    return-void

    .line 4160
    :cond_25
    const-string v4, "system_process"

    invoke-static {v4}, Landroid/ddm/DdmHandleAppName;->setAppName(Ljava/lang/String;)V

    .line 4162
    :try_start_2a
    new-instance v4, Landroid/app/Instrumentation;

    invoke-direct {v4}, Landroid/app/Instrumentation;-><init>()V

    iput-object v4, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    .line 4163
    new-instance v1, Landroid/app/ApplicationContext;

    invoke-direct {v1}, Landroid/app/ApplicationContext;-><init>()V

    .line 4164
    .local v1, context:Landroid/app/ApplicationContext;
    invoke-virtual {p0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ApplicationContext;

    move-result-object v4

    iget-object v4, v4, Landroid/app/ApplicationContext;->mPackageInfo:Landroid/app/ActivityThread$PackageInfo;

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5, p0}, Landroid/app/ApplicationContext;->init(Landroid/app/ActivityThread$PackageInfo;Landroid/os/IBinder;Landroid/app/ActivityThread;)V

    .line 4165
    const-class v4, Landroid/app/Application;

    invoke-static {v4, v1}, Landroid/app/Instrumentation;->newApplication(Ljava/lang/Class;Landroid/content/Context;)Landroid/app/Application;

    move-result-object v0

    .line 4166
    .local v0, app:Landroid/app/Application;
    iget-object v4, p0, Landroid/app/ActivityThread;->mAllApplications:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4167
    iput-object v0, p0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    .line 4168
    invoke-virtual {v0}, Landroid/app/Application;->onCreate()V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_50} :catch_51

    goto :goto_24

    .line 4169
    .end local v0           #app:Landroid/app/Application;
    .end local v1           #context:Landroid/app/ApplicationContext;
    :catch_51
    move-exception v4

    move-object v2, v4

    .line 4170
    .local v2, e:Ljava/lang/Exception;
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to instantiate Application():"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 4155
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v3       #mgr:Landroid/app/IActivityManager;
    :catch_70
    move-exception v4

    goto :goto_24
.end method

.method private final createThumbnailBitmap(Landroid/app/ActivityThread$ActivityRecord;)Landroid/graphics/Bitmap;
    .registers 11
    .parameter "r"

    .prologue
    .line 2954
    const/4 v4, 0x0

    .line 2956
    .local v4, thumbnail:Landroid/graphics/Bitmap;
    :try_start_1
    iget v5, p0, Landroid/app/ActivityThread;->mThumbnailWidth:I

    .line 2958
    .local v5, w:I
    if-gez v5, :cond_36

    .line 2959
    iget-object v6, p1, Landroid/app/ActivityThread$ActivityRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 2960
    .local v3, res:Landroid/content/res/Resources;
    const v6, 0x1050001

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .local v2, h:I
    iput v2, p0, Landroid/app/ActivityThread;->mThumbnailHeight:I

    .line 2963
    const v6, 0x1050002

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Landroid/app/ActivityThread;->mThumbnailWidth:I

    .line 2970
    .end local v3           #res:Landroid/content/res/Resources;
    :goto_1d
    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v2, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 2971
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 2972
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2973
    .local v0, cv:Landroid/graphics/Canvas;
    iget-object v6, p1, Landroid/app/ActivityThread$ActivityRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v6, v4, v0}, Landroid/app/Activity;->onCreateThumbnail(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)Z

    move-result v6

    if-nez v6, :cond_35

    .line 2974
    const/4 v4, 0x0

    .line 2986
    .end local v0           #cv:Landroid/graphics/Canvas;
    .end local v2           #h:I
    .end local v5           #w:I
    :cond_35
    :goto_35
    return-object v4

    .line 2966
    .restart local v5       #w:I
    :cond_36
    iget v2, p0, Landroid/app/ActivityThread;->mThumbnailHeight:I
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_38} :catch_39

    .restart local v2       #h:I
    goto :goto_1d

    .line 2976
    .end local v2           #h:I
    .end local v5           #w:I
    :catch_39
    move-exception v6

    move-object v1, v6

    .line 2977
    .local v1, e:Ljava/lang/Exception;
    iget-object v6, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v7, p1, Landroid/app/ActivityThread$ActivityRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v6, v7, v1}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v6

    if-nez v6, :cond_76

    .line 2978
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to create thumbnail of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Landroid/app/ActivityThread$ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 2983
    :cond_76
    const/4 v4, 0x0

    goto :goto_35
.end method

.method public static final currentActivityThread()Landroid/app/ActivityThread;
    .registers 1

    .prologue
    .line 131
    sget-object v0, Landroid/app/ActivityThread;->sThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread;

    return-object v0
.end method

.method public static final currentPackageName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 136
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    .line 137
    .local v0, am:Landroid/app/ActivityThread;
    if-eqz v0, :cond_f

    iget-object v1, v0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    if-eqz v1, :cond_f

    iget-object v1, v0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v1, v1, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method private final deliverNewIntents(Landroid/app/ActivityThread$ActivityRecord;Ljava/util/List;)V
    .registers 8
    .parameter "r"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ActivityThread$ActivityRecord;",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2467
    .local p2, intents:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 2468
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    if-ge v1, v0, :cond_20

    .line 2469
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 2470
    .local v2, intent:Landroid/content/Intent;
    iget-object v3, p1, Landroid/app/ActivityThread$ActivityRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 2471
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v4, p1, Landroid/app/ActivityThread$ActivityRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v3, v4, v2}, Landroid/app/Instrumentation;->callActivityOnNewIntent(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 2468
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 2473
    .end local v2           #intent:Landroid/content/Intent;
    :cond_20
    return-void
.end method

.method private final deliverResults(Landroid/app/ActivityThread$ActivityRecord;Ljava/util/List;)V
    .registers 12
    .parameter "r"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ActivityThread$ActivityRecord;",
            "Ljava/util/List",
            "<",
            "Landroid/app/ResultInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3211
    .local p2, results:Ljava/util/List;,"Ljava/util/List<Landroid/app/ResultInfo;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 3212
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_5
    if-ge v2, v0, :cond_73

    .line 3213
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ResultInfo;

    .line 3215
    .local v3, ri:Landroid/app/ResultInfo;
    :try_start_d
    iget-object v4, v3, Landroid/app/ResultInfo;->mData:Landroid/content/Intent;

    if-eqz v4, :cond_1c

    .line 3216
    iget-object v4, v3, Landroid/app/ResultInfo;->mData:Landroid/content/Intent;

    iget-object v5, p1, Landroid/app/ActivityThread$ActivityRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 3220
    :cond_1c
    iget-object v4, p1, Landroid/app/ActivityThread$ActivityRecord;->activity:Landroid/app/Activity;

    iget-object v5, v3, Landroid/app/ResultInfo;->mResultWho:Ljava/lang/String;

    iget v6, v3, Landroid/app/ResultInfo;->mRequestCode:I

    iget v7, v3, Landroid/app/ResultInfo;->mResultCode:I

    iget-object v8, v3, Landroid/app/ResultInfo;->mData:Landroid/content/Intent;

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/app/Activity;->dispatchActivityResult(Ljava/lang/String;IILandroid/content/Intent;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_29} :catch_2c

    .line 3212
    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 3222
    :catch_2c
    move-exception v4

    move-object v1, v4

    .line 3223
    .local v1, e:Ljava/lang/Exception;
    iget-object v4, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v5, p1, Landroid/app/ActivityThread$ActivityRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v4, v5, v1}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v4

    if-nez v4, :cond_29

    .line 3224
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failure delivering result "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to activity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/app/ActivityThread$ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 3231
    .end local v1           #e:Ljava/lang/Exception;
    .end local v3           #ri:Landroid/app/ResultInfo;
    :cond_73
    return-void
.end method

.method private final detach()V
    .registers 3

    .prologue
    .line 4178
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/net/http/AndroidHttpClient;->setThreadBlocked(Z)V

    .line 4179
    sget-object v0, Landroid/app/ActivityThread;->sThreadLocal:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 4180
    return-void
.end method

.method private final getPackageInfo(Landroid/content/pm/ApplicationInfo;Ljava/lang/ClassLoader;ZZ)Landroid/app/ActivityThread$PackageInfo;
    .registers 14
    .parameter "aInfo"
    .parameter "baseLoader"
    .parameter "securityViolation"
    .parameter "includeCode"

    .prologue
    .line 2080
    iget-object v8, p0, Landroid/app/ActivityThread;->mPackages:Ljava/util/HashMap;

    monitor-enter v8

    .line 2082
    if-eqz p4, :cond_52

    .line 2083
    :try_start_5
    iget-object v1, p0, Landroid/app/ActivityThread;->mPackages:Ljava/util/HashMap;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/ref/WeakReference;

    .line 2087
    .local v7, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/app/ActivityThread$PackageInfo;>;"
    :goto_f
    if-eqz v7, :cond_5d

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityThread$PackageInfo;

    move-object v0, v1

    .line 2088
    .local v0, packageInfo:Landroid/app/ActivityThread$PackageInfo;
    :goto_18
    if-eqz v0, :cond_2e

    invoke-static {v0}, Landroid/app/ActivityThread$PackageInfo;->access$4200(Landroid/app/ActivityThread$PackageInfo;)Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v1, :cond_50

    invoke-static {v0}, Landroid/app/ActivityThread$PackageInfo;->access$4200(Landroid/app/ActivityThread$PackageInfo;)Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/AssetManager;->isUpToDate()Z

    move-result v1

    if-nez v1, :cond_50

    .line 2095
    :cond_2e
    new-instance v0, Landroid/app/ActivityThread$PackageInfo;

    .end local v0           #packageInfo:Landroid/app/ActivityThread$PackageInfo;
    if-eqz p4, :cond_60

    iget v1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_60

    const/4 v1, 0x1

    move v6, v1

    :goto_3a
    move-object v1, p0

    move-object v2, p1

    move-object v3, p0

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v6}, Landroid/app/ActivityThread$PackageInfo;-><init>(Landroid/app/ActivityThread;Landroid/content/pm/ApplicationInfo;Landroid/app/ActivityThread;Ljava/lang/ClassLoader;ZZ)V

    .line 2099
    .restart local v0       #packageInfo:Landroid/app/ActivityThread$PackageInfo;
    if-eqz p4, :cond_63

    .line 2100
    iget-object v1, p0, Landroid/app/ActivityThread;->mPackages:Ljava/util/HashMap;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2107
    :cond_50
    :goto_50
    monitor-exit v8

    return-object v0

    .line 2085
    .end local v0           #packageInfo:Landroid/app/ActivityThread$PackageInfo;
    .end local v7           #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/app/ActivityThread$PackageInfo;>;"
    :cond_52
    iget-object v1, p0, Landroid/app/ActivityThread;->mResourcePackages:Ljava/util/HashMap;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/ref/WeakReference;

    .restart local v7       #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/app/ActivityThread$PackageInfo;>;"
    goto :goto_f

    .line 2087
    :cond_5d
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_18

    .line 2095
    :cond_60
    const/4 v1, 0x0

    move v6, v1

    goto :goto_3a

    .line 2103
    .restart local v0       #packageInfo:Landroid/app/ActivityThread$PackageInfo;
    :cond_63
    iget-object v1, p0, Landroid/app/ActivityThread;->mResourcePackages:Ljava/util/HashMap;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_50

    .line 2108
    .end local v0           #packageInfo:Landroid/app/ActivityThread$PackageInfo;
    .end local v7           #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/app/ActivityThread$PackageInfo;>;"
    :catchall_70
    move-exception v1

    monitor-exit v8
    :try_end_72
    .catchall {:try_start_5 .. :try_end_72} :catchall_70

    throw v1
.end method

.method public static getPackageManager()Landroid/content/pm/IPackageManager;
    .registers 2

    .prologue
    .line 142
    sget-object v1, Landroid/app/ActivityThread;->sPackageManager:Landroid/content/pm/IPackageManager;

    if-eqz v1, :cond_7

    .line 144
    sget-object v1, Landroid/app/ActivityThread;->sPackageManager:Landroid/content/pm/IPackageManager;

    .line 150
    :goto_6
    return-object v1

    .line 146
    :cond_7
    const-string v1, "package"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 148
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v1

    sput-object v1, Landroid/app/ActivityThread;->sPackageManager:Landroid/content/pm/IPackageManager;

    .line 150
    sget-object v1, Landroid/app/ActivityThread;->sPackageManager:Landroid/content/pm/IPackageManager;

    goto :goto_6
.end method

.method private final getProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;
    .registers 11
    .parameter "context"
    .parameter "name"

    .prologue
    .line 3929
    iget-object v3, p0, Landroid/app/ActivityThread;->mProviderMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 3930
    :try_start_3
    iget-object v4, p0, Landroid/app/ActivityThread;->mProviderMap:Ljava/util/HashMap;

    invoke-virtual {v4, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityThread$ProviderRecord;

    .line 3931
    .local v1, pr:Landroid/app/ActivityThread$ProviderRecord;
    if-eqz v1, :cond_12

    .line 3932
    iget-object v4, v1, Landroid/app/ActivityThread$ProviderRecord;->mProvider:Landroid/content/IContentProvider;

    monitor-exit v3

    move-object v3, v4

    .line 3963
    :goto_11
    return-object v3

    .line 3934
    :cond_12
    monitor-exit v3
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_3c

    .line 3936
    const/4 v0, 0x0

    .line 3938
    .local v0, holder:Landroid/app/IActivityManager$ContentProviderHolder;
    :try_start_14
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-virtual {p0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v4

    invoke-interface {v3, v4, p2}, Landroid/app/IActivityManager;->getContentProvider(Landroid/app/IApplicationThread;Ljava/lang/String;)Landroid/app/IActivityManager$ContentProviderHolder;
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_1f} :catch_92

    move-result-object v0

    .line 3942
    :goto_20
    if-nez v0, :cond_3f

    .line 3943
    const-string v3, "ActivityThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to find provider info for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3944
    const/4 v3, 0x0

    goto :goto_11

    .line 3934
    .end local v0           #holder:Landroid/app/IActivityManager$ContentProviderHolder;
    .end local v1           #pr:Landroid/app/ActivityThread$ProviderRecord;
    :catchall_3c
    move-exception v4

    :try_start_3d
    monitor-exit v3
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    throw v4

    .line 3946
    .restart local v0       #holder:Landroid/app/IActivityManager$ContentProviderHolder;
    .restart local v1       #pr:Landroid/app/ActivityThread$ProviderRecord;
    :cond_3f
    iget-object v3, v0, Landroid/app/IActivityManager$ContentProviderHolder;->permissionFailure:Ljava/lang/String;

    if-eqz v3, :cond_68

    .line 3947
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Permission "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/app/IActivityManager$ContentProviderHolder;->permissionFailure:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " required for provider "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3951
    :cond_68
    iget-object v3, v0, Landroid/app/IActivityManager$ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    iget-object v4, v0, Landroid/app/IActivityManager$ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    const/4 v5, 0x1

    invoke-direct {p0, p1, v3, v4, v5}, Landroid/app/ActivityThread;->installProvider(Landroid/content/Context;Landroid/content/IContentProvider;Landroid/content/pm/ProviderInfo;Z)Landroid/content/IContentProvider;

    move-result-object v2

    .line 3954
    .local v2, prov:Landroid/content/IContentProvider;
    iget-boolean v3, v0, Landroid/app/IActivityManager$ContentProviderHolder;->noReleaseNeeded:Z

    if-nez v3, :cond_79

    iget-object v3, v0, Landroid/app/IActivityManager$ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    if-nez v3, :cond_8d

    .line 3959
    :cond_79
    iget-object v3, p0, Landroid/app/ActivityThread;->mProviderMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 3960
    :try_start_7c
    iget-object v4, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Ljava/util/HashMap;

    invoke-interface {v2}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    new-instance v6, Landroid/app/ActivityThread$ProviderRefCount;

    const/16 v7, 0x2710

    invoke-direct {v6, p0, v7}, Landroid/app/ActivityThread$ProviderRefCount;-><init>(Landroid/app/ActivityThread;I)V

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3961
    monitor-exit v3

    :cond_8d
    move-object v3, v2

    .line 3963
    goto :goto_11

    .line 3961
    :catchall_8f
    move-exception v4

    monitor-exit v3
    :try_end_91
    .catchall {:try_start_7c .. :try_end_91} :catchall_8f

    throw v4

    .line 3940
    .end local v2           #prov:Landroid/content/IContentProvider;
    :catch_92
    move-exception v3

    goto :goto_20
.end method

.method private final handleBindApplication(Landroid/app/ActivityThread$AppBindData;)V
    .registers 22
    .parameter "data"

    .prologue
    .line 3732
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    .line 3733
    new-instance v5, Landroid/content/res/Configuration;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$AppBindData;->config:Landroid/content/res/Configuration;

    move-object v6, v0

    invoke-direct {v5, v6}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    .line 3740
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    move-object v5, v0

    invoke-static {v5}, Landroid/ddm/DdmHandleAppName;->setAppName(Ljava/lang/String;)V

    .line 3748
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/util/TimeZone;->setDefault(Ljava/util/TimeZone;)V

    .line 3753
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$AppBindData;->config:Landroid/content/res/Configuration;

    move-object v5, v0

    iget-object v5, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v5}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 3760
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 3762
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/app/ActivityThread;->getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;)Landroid/app/ActivityThread$PackageInfo;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p1

    iput-object v0, v1, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/ActivityThread$PackageInfo;

    .line 3767
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    move-object v5, v0

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v5, v5, 0x2000

    if-nez v5, :cond_59

    .line 3769
    const/16 v5, 0xa0

    invoke-static {v5}, Landroid/graphics/Bitmap;->setDefaultDensity(I)V

    .line 3772
    :cond_59
    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/ActivityThread$AppBindData;->debugMode:I

    move v5, v0

    if-eqz v5, :cond_b5

    .line 3774
    const/16 v5, 0x1fa4

    invoke-static {v5}, Landroid/os/Debug;->changeDebugPort(I)V

    .line 3775
    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/ActivityThread$AppBindData;->debugMode:I

    move v5, v0

    const/4 v6, 0x2

    if-ne v5, v6, :cond_fe

    .line 3776
    const-string v5, "ActivityThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Application "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/ActivityThread$PackageInfo;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/app/ActivityThread$PackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is waiting for the debugger on port 8100..."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3779
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v17

    .line 3781
    .local v17, mgr:Landroid/app/IActivityManager;
    :try_start_98
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    move-object v5, v0

    const/4 v6, 0x1

    move-object/from16 v0, v17

    move-object v1, v5

    move v2, v6

    invoke-interface {v0, v1, v2}, Landroid/app/IActivityManager;->showWaitingForDebugger(Landroid/app/IApplicationThread;Z)V
    :try_end_a5
    .catch Landroid/os/RemoteException; {:try_start_98 .. :try_end_a5} :catch_2c5

    .line 3785
    :goto_a5
    invoke-static {}, Landroid/os/Debug;->waitForDebugger()V

    .line 3788
    :try_start_a8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, v17

    move-object v1, v5

    move v2, v6

    invoke-interface {v0, v1, v2}, Landroid/app/IActivityManager;->showWaitingForDebugger(Landroid/app/IApplicationThread;Z)V
    :try_end_b5
    .catch Landroid/os/RemoteException; {:try_start_a8 .. :try_end_b5} :catch_2c2

    .line 3798
    .end local v17           #mgr:Landroid/app/IActivityManager;
    :cond_b5
    :goto_b5
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    move-object v5, v0

    if-eqz v5, :cond_277

    .line 3799
    new-instance v8, Landroid/app/ApplicationContext;

    invoke-direct {v8}, Landroid/app/ApplicationContext;-><init>()V

    .line 3800
    .local v8, appContext:Landroid/app/ApplicationContext;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/ActivityThread$PackageInfo;

    move-object v5, v0

    const/4 v6, 0x0

    move-object v0, v8

    move-object v1, v5

    move-object v2, v6

    move-object/from16 v3, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ApplicationContext;->init(Landroid/app/ActivityThread$PackageInfo;Landroid/os/IBinder;Landroid/app/ActivityThread;)V

    .line 3801
    const/4 v15, 0x0

    .line 3803
    .local v15, ii:Landroid/content/pm/InstrumentationInfo;
    :try_start_d0
    invoke-virtual {v8}, Landroid/app/ApplicationContext;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getInstrumentationInfo(Landroid/content/ComponentName;I)Landroid/content/pm/InstrumentationInfo;
    :try_end_dd
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d0 .. :try_end_dd} :catch_2bf

    move-result-object v15

    .line 3807
    :goto_de
    if-nez v15, :cond_126

    .line 3808
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to find instrumentation info for: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3793
    .end local v8           #appContext:Landroid/app/ApplicationContext;
    .end local v15           #ii:Landroid/content/pm/InstrumentationInfo;
    :cond_fe
    const-string v5, "ActivityThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Application "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/ActivityThread$PackageInfo;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/app/ActivityThread$PackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " can be debugged on port 8100..."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b5

    .line 3813
    .restart local v8       #appContext:Landroid/app/ApplicationContext;
    .restart local v15       #ii:Landroid/content/pm/InstrumentationInfo;
    :cond_126
    iget-object v5, v15, Landroid/content/pm/InstrumentationInfo;->sourceDir:Ljava/lang/String;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/app/ActivityThread;->mInstrumentationAppDir:Ljava/lang/String;

    .line 3814
    iget-object v5, v15, Landroid/content/pm/InstrumentationInfo;->packageName:Ljava/lang/String;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/app/ActivityThread;->mInstrumentationAppPackage:Ljava/lang/String;

    .line 3815
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/ActivityThread$PackageInfo;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/app/ActivityThread$PackageInfo;->getAppDir()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/app/ActivityThread;->mInstrumentedAppDir:Ljava/lang/String;

    .line 3817
    new-instance v16, Landroid/content/pm/ApplicationInfo;

    invoke-direct/range {v16 .. v16}, Landroid/content/pm/ApplicationInfo;-><init>()V

    .line 3818
    .local v16, instrApp:Landroid/content/pm/ApplicationInfo;
    iget-object v5, v15, Landroid/content/pm/InstrumentationInfo;->packageName:Ljava/lang/String;

    move-object v0, v5

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 3819
    iget-object v5, v15, Landroid/content/pm/InstrumentationInfo;->sourceDir:Ljava/lang/String;

    move-object v0, v5

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 3820
    iget-object v5, v15, Landroid/content/pm/InstrumentationInfo;->publicSourceDir:Ljava/lang/String;

    move-object v0, v5

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 3821
    iget-object v5, v15, Landroid/content/pm/InstrumentationInfo;->dataDir:Ljava/lang/String;

    move-object v0, v5

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 3822
    invoke-virtual {v8}, Landroid/app/ApplicationContext;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object v2, v5

    move v3, v6

    move v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/ActivityThread;->getPackageInfo(Landroid/content/pm/ApplicationInfo;Ljava/lang/ClassLoader;ZZ)Landroid/app/ActivityThread$PackageInfo;

    move-result-object v18

    .line 3824
    .local v18, pi:Landroid/app/ActivityThread$PackageInfo;
    new-instance v7, Landroid/app/ApplicationContext;

    invoke-direct {v7}, Landroid/app/ApplicationContext;-><init>()V

    .line 3825
    .local v7, instrContext:Landroid/app/ApplicationContext;
    const/4 v5, 0x0

    move-object v0, v7

    move-object/from16 v1, v18

    move-object v2, v5

    move-object/from16 v3, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ApplicationContext;->init(Landroid/app/ActivityThread$PackageInfo;Landroid/os/IBinder;Landroid/app/ActivityThread;)V

    .line 3828
    :try_start_183
    invoke-virtual {v7}, Landroid/app/ApplicationContext;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v12

    .line 3829
    .local v12, cl:Ljava/lang/ClassLoader;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/Instrumentation;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;
    :try_end_19f
    .catch Ljava/lang/Exception; {:try_start_183 .. :try_end_19f} :catch_21b

    .line 3837
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    move-object v5, v0

    new-instance v9, Landroid/content/ComponentName;

    iget-object v6, v15, Landroid/content/pm/InstrumentationInfo;->packageName:Ljava/lang/String;

    iget-object v10, v15, Landroid/content/pm/InstrumentationInfo;->name:Ljava/lang/String;

    invoke-direct {v9, v6, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$AppBindData;->instrumentationWatcher:Landroid/app/IInstrumentationWatcher;

    move-object v10, v0

    move-object/from16 v6, p0

    invoke-virtual/range {v5 .. v10}, Landroid/app/Instrumentation;->init(Landroid/app/ActivityThread;Landroid/content/Context;Landroid/content/Context;Landroid/content/ComponentName;Landroid/app/IInstrumentationWatcher;)V

    .line 3840
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$AppBindData;->profileFile:Ljava/lang/String;

    move-object v5, v0

    if-eqz v5, :cond_1e2

    iget-boolean v5, v15, Landroid/content/pm/InstrumentationInfo;->handleProfiling:Z

    if-nez v5, :cond_1e2

    .line 3841
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p1

    iput-boolean v0, v1, Landroid/app/ActivityThread$AppBindData;->handlingProfiling:Z

    .line 3842
    new-instance v14, Ljava/io/File;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$AppBindData;->profileFile:Ljava/lang/String;

    move-object v5, v0

    invoke-direct {v14, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3843
    .local v14, file:Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 3844
    invoke-virtual {v14}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    const/high16 v6, 0x80

    invoke-static {v5, v6}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;I)V

    .line 3848
    .end local v14           #file:Ljava/io/File;
    :cond_1e2
    :try_start_1e2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    move-object v5, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$AppBindData;->instrumentationArgs:Landroid/os/Bundle;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/app/Instrumentation;->onCreate(Landroid/os/Bundle;)V
    :try_end_1ef
    .catch Ljava/lang/Exception; {:try_start_1e2 .. :try_end_1ef} :catch_249

    .line 3862
    .end local v7           #instrContext:Landroid/app/ApplicationContext;
    .end local v8           #appContext:Landroid/app/ApplicationContext;
    .end local v12           #cl:Ljava/lang/ClassLoader;
    .end local v15           #ii:Landroid/content/pm/InstrumentationInfo;
    .end local v16           #instrApp:Landroid/content/pm/ApplicationInfo;
    .end local v18           #pi:Landroid/app/ActivityThread$PackageInfo;
    :goto_1ef
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/ActivityThread$PackageInfo;

    move-object v5, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/app/ActivityThread$AppBindData;->restrictedBackupMode:Z

    move v6, v0

    invoke-virtual {v5, v6}, Landroid/app/ActivityThread$PackageInfo;->makeApplication(Z)Landroid/app/Application;

    move-result-object v11

    .line 3863
    .local v11, app:Landroid/app/Application;
    move-object v0, v11

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    .line 3865
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$AppBindData;->providers:Ljava/util/List;

    move-object/from16 v19, v0

    .line 3866
    .local v19, providers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    if-eqz v19, :cond_212

    .line 3867
    move-object/from16 v0, p0

    move-object v1, v11

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/app/ActivityThread;->installContentProviders(Landroid/content/Context;Ljava/util/List;)V

    .line 3871
    :cond_212
    :try_start_212
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    move-object v5, v0

    invoke-virtual {v5, v11}, Landroid/app/Instrumentation;->callApplicationOnCreate(Landroid/app/Application;)V
    :try_end_21a
    .catch Ljava/lang/Exception; {:try_start_212 .. :try_end_21a} :catch_283

    .line 3879
    :cond_21a
    return-void

    .line 3831
    .end local v11           #app:Landroid/app/Application;
    .end local v19           #providers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    .restart local v7       #instrContext:Landroid/app/ApplicationContext;
    .restart local v8       #appContext:Landroid/app/ApplicationContext;
    .restart local v15       #ii:Landroid/content/pm/InstrumentationInfo;
    .restart local v16       #instrApp:Landroid/content/pm/ApplicationInfo;
    .restart local v18       #pi:Landroid/app/ActivityThread$PackageInfo;
    :catch_21b
    move-exception v5

    move-object v13, v5

    .line 3832
    .local v13, e:Ljava/lang/Exception;
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to instantiate instrumentation "

    .end local v7           #instrContext:Landroid/app/ApplicationContext;
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v13}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 3850
    .end local v13           #e:Ljava/lang/Exception;
    .restart local v7       #instrContext:Landroid/app/ApplicationContext;
    .restart local v12       #cl:Ljava/lang/ClassLoader;
    :catch_249
    move-exception v5

    move-object v13, v5

    .line 3851
    .restart local v13       #e:Ljava/lang/Exception;
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception thrown in onCreate() of "

    .end local v7           #instrContext:Landroid/app/ApplicationContext;
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v13}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 3857
    .end local v8           #appContext:Landroid/app/ApplicationContext;
    .end local v12           #cl:Ljava/lang/ClassLoader;
    .end local v13           #e:Ljava/lang/Exception;
    .end local v15           #ii:Landroid/content/pm/InstrumentationInfo;
    .end local v16           #instrApp:Landroid/content/pm/ApplicationInfo;
    .end local v18           #pi:Landroid/app/ActivityThread$PackageInfo;
    :cond_277
    new-instance v5, Landroid/app/Instrumentation;

    invoke-direct {v5}, Landroid/app/Instrumentation;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    goto/16 :goto_1ef

    .line 3872
    .restart local v11       #app:Landroid/app/Application;
    .restart local v19       #providers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    :catch_283
    move-exception v5

    move-object v13, v5

    .line 3873
    .restart local v13       #e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    move-object v5, v0

    invoke-virtual {v5, v11, v13}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v5

    if-nez v5, :cond_21a

    .line 3874
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to create application "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v13}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 3805
    .end local v11           #app:Landroid/app/Application;
    .end local v13           #e:Ljava/lang/Exception;
    .end local v19           #providers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    .restart local v8       #appContext:Landroid/app/ApplicationContext;
    .restart local v15       #ii:Landroid/content/pm/InstrumentationInfo;
    :catch_2bf
    move-exception v5

    goto/16 :goto_de

    .line 3789
    .end local v8           #appContext:Landroid/app/ApplicationContext;
    .end local v15           #ii:Landroid/content/pm/InstrumentationInfo;
    .restart local v17       #mgr:Landroid/app/IActivityManager;
    :catch_2c2
    move-exception v5

    goto/16 :goto_b5

    .line 3782
    :catch_2c5
    move-exception v5

    goto/16 :goto_a5
.end method

.method private final handleBindService(Landroid/app/ActivityThread$BindServiceData;)V
    .registers 8
    .parameter "data"

    .prologue
    .line 2701
    iget-object v3, p0, Landroid/app/ActivityThread;->mServices:Ljava/util/HashMap;

    iget-object v4, p1, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Service;

    .line 2702
    .local v2, s:Landroid/app/Service;
    if-eqz v2, :cond_2a

    .line 2704
    :try_start_c
    iget-object v3, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/app/Service;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_15} :catch_3c

    .line 2706
    :try_start_15
    iget-boolean v3, p1, Landroid/app/ActivityThread$BindServiceData;->rebind:Z

    if-nez v3, :cond_2b

    .line 2707
    iget-object v3, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/app/Service;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v0

    .line 2708
    .local v0, binder:Landroid/os/IBinder;
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    iget-object v4, p1, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    iget-object v5, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-interface {v3, v4, v5, v0}, Landroid/app/IActivityManager;->publishService(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/IBinder;)V

    .line 2725
    .end local v0           #binder:Landroid/os/IBinder;
    :cond_2a
    :goto_2a
    return-void

    .line 2711
    :cond_2b
    iget-object v3, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/app/Service;->onRebind(Landroid/content/Intent;)V

    .line 2712
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    iget-object v4, p1, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    invoke-interface {v3, v4}, Landroid/app/IActivityManager;->serviceDoneExecuting(Landroid/os/IBinder;)V
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_39} :catch_3a
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_39} :catch_3c

    goto :goto_2a

    .line 2715
    :catch_3a
    move-exception v3

    goto :goto_2a

    .line 2717
    :catch_3c
    move-exception v3

    move-object v1, v3

    .line 2718
    .local v1, e:Ljava/lang/Exception;
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v3, v2, v1}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_2a

    .line 2719
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to bind to service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private final handleCreateBackupAgent(Landroid/app/ActivityThread$CreateBackupAgentData;)V
    .registers 14
    .parameter "data"

    .prologue
    const-string v11, "ActivityThread"

    .line 2571
    const-string v9, "ActivityThread"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handleCreateBackupAgent: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2574
    invoke-virtual {p0}, Landroid/app/ActivityThread;->unscheduleGcIdler()V

    .line 2577
    iget-object v9, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, v9}, Landroid/app/ActivityThread;->getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;)Landroid/app/ActivityThread$PackageInfo;

    move-result-object v7

    .line 2578
    .local v7, packageInfo:Landroid/app/ActivityThread$PackageInfo;
    invoke-static {v7}, Landroid/app/ActivityThread$PackageInfo;->access$4400(Landroid/app/ActivityThread$PackageInfo;)Ljava/lang/String;

    move-result-object v8

    .line 2579
    .local v8, packageName:Ljava/lang/String;
    iget-object v9, p0, Landroid/app/ActivityThread;->mBackupAgents:Ljava/util/HashMap;

    invoke-virtual {v9, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_4e

    .line 2580
    const-string v9, "ActivityThread"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "BackupAgent   for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " already exists"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2633
    :goto_4d
    return-void

    .line 2585
    :cond_4e
    const/4 v1, 0x0

    .line 2586
    .local v1, agent:Landroid/app/BackupAgent;
    iget-object v9, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v9, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    .line 2587
    .local v4, classname:Ljava/lang/String;
    if-nez v4, :cond_74

    .line 2588
    iget v9, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->backupMode:I

    if-nez v9, :cond_72

    .line 2589
    const-string v9, "ActivityThread"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Attempted incremental backup but no defined agent for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4d

    .line 2593
    :cond_72
    const-string v4, "android.app.FullBackupAgent"

    .line 2596
    :cond_74
    const/4 v2, 0x0

    .line 2598
    .local v2, binder:Landroid/os/IBinder;
    :try_start_75
    invoke-virtual {v7}, Landroid/app/ActivityThread$PackageInfo;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 2599
    .local v3, cl:Ljava/lang/ClassLoader;
    iget-object v9, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Landroid/app/BackupAgent;

    move-object v1, v0

    .line 2602
    const-string v9, "ActivityThread"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Initializing BackupAgent "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2605
    new-instance v5, Landroid/app/ApplicationContext;

    invoke-direct {v5}, Landroid/app/ApplicationContext;-><init>()V

    .line 2606
    .local v5, context:Landroid/app/ApplicationContext;
    const/4 v9, 0x0

    invoke-virtual {v5, v7, v9, p0}, Landroid/app/ApplicationContext;->init(Landroid/app/ActivityThread$PackageInfo;Landroid/os/IBinder;Landroid/app/ActivityThread;)V

    .line 2607
    invoke-virtual {v5, v1}, Landroid/app/ApplicationContext;->setOuterContext(Landroid/content/Context;)V

    .line 2608
    invoke-virtual {v1, v5}, Landroid/app/BackupAgent;->attach(Landroid/content/Context;)V

    .line 2610
    invoke-virtual {v1}, Landroid/app/BackupAgent;->onCreate()V

    .line 2611
    invoke-virtual {v1}, Landroid/app/BackupAgent;->onBind()Landroid/os/IBinder;

    move-result-object v2

    .line 2612
    iget-object v9, p0, Landroid/app/ActivityThread;->mBackupAgents:Ljava/util/HashMap;

    invoke-virtual {v9, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c0
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_c0} :catch_ca

    .line 2625
    .end local v3           #cl:Ljava/lang/ClassLoader;
    .end local v5           #context:Landroid/app/ApplicationContext;
    :cond_c0
    :try_start_c0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v9

    invoke-interface {v9, v8, v2}, Landroid/app/IActivityManager;->backupAgentCreated(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_c7
    .catch Landroid/os/RemoteException; {:try_start_c0 .. :try_end_c7} :catch_c8
    .catch Ljava/lang/Exception; {:try_start_c0 .. :try_end_c7} :catch_ea

    goto :goto_4d

    .line 2626
    :catch_c8
    move-exception v9

    goto :goto_4d

    .line 2613
    :catch_ca
    move-exception v9

    move-object v6, v9

    .line 2616
    .local v6, e:Ljava/lang/Exception;
    :try_start_cc
    const-string v9, "ActivityThread"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Agent threw during creation: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2617
    iget v9, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->backupMode:I

    const/4 v10, 0x2

    if-eq v9, v10, :cond_c0

    .line 2618
    throw v6
    :try_end_ea
    .catch Ljava/lang/Exception; {:try_start_cc .. :try_end_ea} :catch_ea

    .line 2629
    .end local v6           #e:Ljava/lang/Exception;
    :catch_ea
    move-exception v9

    move-object v6, v9

    .line 2630
    .restart local v6       #e:Ljava/lang/Exception;
    new-instance v9, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to create BackupAgent "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9
.end method

.method private final handleCreateService(Landroid/app/ActivityThread$CreateServiceData;)V
    .registers 14
    .parameter "data"

    .prologue
    const-string v11, ": "

    .line 2658
    invoke-virtual {p0}, Landroid/app/ActivityThread;->unscheduleGcIdler()V

    .line 2660
    iget-object v3, p1, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, v3}, Landroid/app/ActivityThread;->getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;)Landroid/app/ActivityThread$PackageInfo;

    move-result-object v10

    .line 2662
    .local v10, packageInfo:Landroid/app/ActivityThread$PackageInfo;
    const/4 v1, 0x0

    .line 2664
    .local v1, service:Landroid/app/Service;
    :try_start_e
    invoke-virtual {v10}, Landroid/app/ActivityThread$PackageInfo;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    .line 2665
    .local v8, cl:Ljava/lang/ClassLoader;
    iget-object v3, p1, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/app/Service;

    move-object v1, v0
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_22} :catch_55

    .line 2677
    .end local v8           #cl:Ljava/lang/ClassLoader;
    :cond_22
    :try_start_22
    new-instance v2, Landroid/app/ApplicationContext;

    invoke-direct {v2}, Landroid/app/ApplicationContext;-><init>()V

    .line 2678
    .local v2, context:Landroid/app/ApplicationContext;
    const/4 v3, 0x0

    invoke-virtual {v2, v10, v3, p0}, Landroid/app/ApplicationContext;->init(Landroid/app/ActivityThread$PackageInfo;Landroid/os/IBinder;Landroid/app/ActivityThread;)V

    .line 2680
    const/4 v3, 0x0

    invoke-virtual {v10, v3}, Landroid/app/ActivityThread$PackageInfo;->makeApplication(Z)Landroid/app/Application;

    move-result-object v6

    .line 2681
    .local v6, app:Landroid/app/Application;
    invoke-virtual {v2, v1}, Landroid/app/ApplicationContext;->setOuterContext(Landroid/content/Context;)V

    .line 2682
    iget-object v3, p1, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    iget-object v4, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    iget-object v5, p1, Landroid/app/ActivityThread$CreateServiceData;->token:Landroid/os/IBinder;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v7

    move-object v3, p0

    invoke-virtual/range {v1 .. v7}, Landroid/app/Service;->attach(Landroid/content/Context;Landroid/app/ActivityThread;Ljava/lang/String;Landroid/os/IBinder;Landroid/app/Application;Ljava/lang/Object;)V

    .line 2684
    invoke-virtual {v1}, Landroid/app/Service;->onCreate()V

    .line 2685
    iget-object v3, p0, Landroid/app/ActivityThread;->mServices:Ljava/util/HashMap;

    iget-object v4, p1, Landroid/app/ActivityThread$CreateServiceData;->token:Landroid/os/IBinder;

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_4b} :catch_8a

    .line 2687
    :try_start_4b
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    iget-object v4, p1, Landroid/app/ActivityThread$CreateServiceData;->token:Landroid/os/IBinder;

    invoke-interface {v3, v4}, Landroid/app/IActivityManager;->serviceDoneExecuting(Landroid/os/IBinder;)V
    :try_end_54
    .catch Landroid/os/RemoteException; {:try_start_4b .. :try_end_54} :catch_bf
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_54} :catch_8a

    .line 2698
    .end local v2           #context:Landroid/app/ApplicationContext;
    .end local v6           #app:Landroid/app/Application;
    :cond_54
    :goto_54
    return-void

    .line 2666
    :catch_55
    move-exception v3

    move-object v9, v3

    .line 2667
    .local v9, e:Ljava/lang/Exception;
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v3, v1, v9}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_22

    .line 2668
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to instantiate service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 2691
    .end local v9           #e:Ljava/lang/Exception;
    :catch_8a
    move-exception v3

    move-object v9, v3

    .line 2692
    .restart local v9       #e:Ljava/lang/Exception;
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v3, v1, v9}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_54

    .line 2693
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to create service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 2688
    .end local v9           #e:Ljava/lang/Exception;
    .restart local v2       #context:Landroid/app/ApplicationContext;
    .restart local v6       #app:Landroid/app/Application;
    :catch_bf
    move-exception v3

    goto :goto_54
.end method

.method private final handleDestroyActivity(Landroid/os/IBinder;ZIZ)V
    .registers 14
    .parameter "token"
    .parameter "finishing"
    .parameter "configChanges"
    .parameter "getNonConfigInstance"

    .prologue
    const-string v8, "Activity"

    .line 3382
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/ActivityThread;->performDestroyActivity(Landroid/os/IBinder;ZIZ)Landroid/app/ActivityThread$ActivityRecord;

    move-result-object v1

    .line 3384
    .local v1, r:Landroid/app/ActivityThread$ActivityRecord;
    if-eqz v1, :cond_75

    .line 3385
    iget-object v5, v1, Landroid/app/ActivityThread$ActivityRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    .line 3386
    .local v3, wm:Landroid/view/WindowManager;
    iget-object v5, v1, Landroid/app/ActivityThread$ActivityRecord;->activity:Landroid/app/Activity;

    iget-object v2, v5, Landroid/app/Activity;->mDecor:Landroid/view/View;

    .line 3387
    .local v2, v:Landroid/view/View;
    if-eqz v2, :cond_47

    .line 3388
    iget-object v5, v1, Landroid/app/ActivityThread$ActivityRecord;->activity:Landroid/app/Activity;

    iget-boolean v5, v5, Landroid/app/Activity;->mVisibleFromServer:Z

    if-eqz v5, :cond_20

    .line 3389
    iget v5, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    iput v5, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    .line 3391
    :cond_20
    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    .line 3392
    .local v4, wtoken:Landroid/os/IBinder;
    iget-object v5, v1, Landroid/app/ActivityThread$ActivityRecord;->activity:Landroid/app/Activity;

    iget-boolean v5, v5, Landroid/app/Activity;->mWindowAdded:Z

    if-eqz v5, :cond_2d

    .line 3393
    invoke-interface {v3, v2}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 3395
    :cond_2d
    if-eqz v4, :cond_42

    .line 3396
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v5

    iget-object v6, v1, Landroid/app/ActivityThread$ActivityRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Activity"

    invoke-virtual {v5, v4, v6, v8}, Landroid/view/WindowManagerImpl;->closeAll(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V

    .line 3399
    :cond_42
    iget-object v5, v1, Landroid/app/ActivityThread$ActivityRecord;->activity:Landroid/app/Activity;

    const/4 v6, 0x0

    iput-object v6, v5, Landroid/app/Activity;->mDecor:Landroid/view/View;

    .line 3401
    .end local v4           #wtoken:Landroid/os/IBinder;
    :cond_47
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v5

    iget-object v6, v1, Landroid/app/ActivityThread$ActivityRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Activity"

    invoke-virtual {v5, p1, v6, v8}, Landroid/view/WindowManagerImpl;->closeAll(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V

    .line 3408
    iget-object v5, v1, Landroid/app/ActivityThread$ActivityRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 3409
    .local v0, c:Landroid/content/Context;
    instance-of v5, v0, Landroid/app/ApplicationContext;

    if-eqz v5, :cond_75

    .line 3410
    check-cast v0, Landroid/app/ApplicationContext;

    .end local v0           #c:Landroid/content/Context;
    iget-object v5, v1, Landroid/app/ActivityThread$ActivityRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Activity"

    invoke-virtual {v0, v5, v8}, Landroid/app/ApplicationContext;->scheduleFinalCleanup(Ljava/lang/String;Ljava/lang/String;)V

    .line 3414
    .end local v2           #v:Landroid/view/View;
    .end local v3           #wm:Landroid/view/WindowManager;
    :cond_75
    if-eqz p2, :cond_7e

    .line 3416
    :try_start_77
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5, p1}, Landroid/app/IActivityManager;->activityDestroyed(Landroid/os/IBinder;)V
    :try_end_7e
    .catch Landroid/os/RemoteException; {:try_start_77 .. :try_end_7e} :catch_7f

    .line 3421
    :cond_7e
    :goto_7e
    return-void

    .line 3417
    :catch_7f
    move-exception v5

    goto :goto_7e
.end method

.method private final handleDestroyBackupAgent(Landroid/app/ActivityThread$CreateBackupAgentData;)V
    .registers 9
    .parameter "data"

    .prologue
    const-string v6, "ActivityThread"

    .line 2637
    const-string v4, "ActivityThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleDestroyBackupAgent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2639
    iget-object v4, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, v4}, Landroid/app/ActivityThread;->getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;)Landroid/app/ActivityThread$PackageInfo;

    move-result-object v2

    .line 2640
    .local v2, packageInfo:Landroid/app/ActivityThread$PackageInfo;
    invoke-static {v2}, Landroid/app/ActivityThread$PackageInfo;->access$4400(Landroid/app/ActivityThread$PackageInfo;)Ljava/lang/String;

    move-result-object v3

    .line 2641
    .local v3, packageName:Ljava/lang/String;
    iget-object v4, p0, Landroid/app/ActivityThread;->mBackupAgents:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/BackupAgent;

    .line 2642
    .local v0, agent:Landroid/app/BackupAgent;
    if-eqz v0, :cond_56

    .line 2644
    :try_start_2e
    invoke-virtual {v0}, Landroid/app/BackupAgent;->onDestroy()V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_31} :catch_37

    .line 2649
    :goto_31
    iget-object v4, p0, Landroid/app/ActivityThread;->mBackupAgents:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2653
    :goto_36
    return-void

    .line 2645
    :catch_37
    move-exception v1

    .line 2646
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "ActivityThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception thrown in onDestroy by backup agent of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2647
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_31

    .line 2651
    .end local v1           #e:Ljava/lang/Exception;
    :cond_56
    const-string v4, "ActivityThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempt to destroy unknown backup agent "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36
.end method

.method private handleDumpService(Landroid/app/ActivityThread$DumpServiceInfo;)V
    .registers 6
    .parameter "info"

    .prologue
    .line 2755
    :try_start_0
    iget-object v2, p0, Landroid/app/ActivityThread;->mServices:Ljava/util/HashMap;

    iget-object v3, p1, Landroid/app/ActivityThread$DumpServiceInfo;->service:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Service;

    .line 2756
    .local v1, s:Landroid/app/Service;
    if-eqz v1, :cond_22

    .line 2757
    new-instance v0, Ljava/io/PrintWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p1, Landroid/app/ActivityThread$DumpServiceInfo;->fd:Ljava/io/FileDescriptor;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v0, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 2758
    .local v0, pw:Ljava/io/PrintWriter;
    iget-object v2, p1, Landroid/app/ActivityThread$DumpServiceInfo;->fd:Ljava/io/FileDescriptor;

    iget-object v3, p1, Landroid/app/ActivityThread$DumpServiceInfo;->args:[Ljava/lang/String;

    invoke-virtual {v1, v2, v0, v3}, Landroid/app/Service;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2759
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V
    :try_end_22
    .catchall {:try_start_0 .. :try_end_22} :catchall_2e

    .line 2762
    .end local v0           #pw:Ljava/io/PrintWriter;
    :cond_22
    monitor-enter p1

    .line 2763
    const/4 v2, 0x1

    :try_start_24
    iput-boolean v2, p1, Landroid/app/ActivityThread$DumpServiceInfo;->dumped:Z

    .line 2764
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 2765
    monitor-exit p1

    .line 2767
    return-void

    .line 2765
    :catchall_2b
    move-exception v2

    monitor-exit p1
    :try_end_2d
    .catchall {:try_start_24 .. :try_end_2d} :catchall_2b

    throw v2

    .line 2762
    .end local v1           #s:Landroid/app/Service;
    :catchall_2e
    move-exception v2

    monitor-enter p1

    .line 2763
    const/4 v3, 0x1

    :try_start_31
    iput-boolean v3, p1, Landroid/app/ActivityThread$DumpServiceInfo;->dumped:Z

    .line 2764
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 2765
    monitor-exit p1
    :try_end_37
    .catchall {:try_start_31 .. :try_end_37} :catchall_38

    throw v2

    :catchall_38
    move-exception v2

    :try_start_39
    monitor-exit p1
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw v2
.end method

.method private final handleLaunchActivity(Landroid/app/ActivityThread$ActivityRecord;Landroid/content/Intent;)V
    .registers 9
    .parameter "r"
    .parameter "customIntent"

    .prologue
    const/4 v4, 0x0

    .line 2413
    invoke-virtual {p0}, Landroid/app/ActivityThread;->unscheduleGcIdler()V

    .line 2417
    invoke-direct {p0, p1, p2}, Landroid/app/ActivityThread;->performLaunchActivity(Landroid/app/ActivityThread$ActivityRecord;Landroid/content/Intent;)Landroid/app/Activity;

    move-result-object v0

    .line 2419
    .local v0, a:Landroid/app/Activity;
    if-eqz v0, :cond_9a

    .line 2420
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityRecord;->token:Landroid/os/IBinder;

    iget-boolean v3, p1, Landroid/app/ActivityThread$ActivityRecord;->isForward:Z

    invoke-virtual {p0, v2, v4, v3}, Landroid/app/ActivityThread;->handleResumeActivity(Landroid/os/IBinder;ZZ)V

    .line 2422
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityRecord;->activity:Landroid/app/Activity;

    iget-boolean v2, v2, Landroid/app/Activity;->mFinished:Z

    if-nez v2, :cond_99

    iget-boolean v2, p1, Landroid/app/ActivityThread$ActivityRecord;->startsNotResumed:Z

    if-eqz v2, :cond_99

    .line 2433
    :try_start_1b
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityRecord;->activity:Landroid/app/Activity;

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/app/Activity;->mCalled:Z

    .line 2434
    iget-object v2, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v3, p1, Landroid/app/ActivityThread$ActivityRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Landroid/app/Instrumentation;->callActivityOnPause(Landroid/app/Activity;)V

    .line 2435
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityRecord;->activity:Landroid/app/Activity;

    iget-boolean v2, v2, Landroid/app/Activity;->mCalled:Z

    if-nez v2, :cond_96

    .line 2436
    new-instance v2, Landroid/app/SuperNotCalledException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/app/ActivityThread$ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " did not call through to super.onPause()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_56
    .catch Landroid/app/SuperNotCalledException; {:try_start_1b .. :try_end_56} :catch_56
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_56} :catch_59

    .line 2441
    :catch_56
    move-exception v2

    move-object v1, v2

    .line 2442
    .local v1, e:Landroid/app/SuperNotCalledException;
    throw v1

    .line 2444
    .end local v1           #e:Landroid/app/SuperNotCalledException;
    :catch_59
    move-exception v2

    move-object v1, v2

    .line 2445
    .local v1, e:Ljava/lang/Exception;
    iget-object v2, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v3, p1, Landroid/app/ActivityThread$ActivityRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v3, v1}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_96

    .line 2446
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to pause activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/app/ActivityThread$ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 2452
    .end local v1           #e:Ljava/lang/Exception;
    :cond_96
    const/4 v2, 0x1

    iput-boolean v2, p1, Landroid/app/ActivityThread$ActivityRecord;->paused:Z

    .line 2463
    :cond_99
    :goto_99
    return-void

    .line 2458
    :cond_9a
    :try_start_9a
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v3, p1, Landroid/app/ActivityThread$ActivityRecord;->token:Landroid/os/IBinder;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/app/IActivityManager;->finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;)Z
    :try_end_a5
    .catch Landroid/os/RemoteException; {:try_start_9a .. :try_end_a5} :catch_a6

    goto :goto_99

    .line 2460
    :catch_a6
    move-exception v2

    goto :goto_99
.end method

.method private final handleNewIntent(Landroid/app/ActivityThread$NewIntentData;)V
    .registers 4
    .parameter "data"

    .prologue
    .line 2491
    iget-object v0, p1, Landroid/app/ActivityThread$NewIntentData;->token:Landroid/os/IBinder;

    iget-object v1, p1, Landroid/app/ActivityThread$NewIntentData;->intents:Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Landroid/app/ActivityThread;->performNewIntents(Landroid/os/IBinder;Ljava/util/List;)V

    .line 2492
    return-void
.end method

.method private final handlePauseActivity(Landroid/os/IBinder;ZZI)V
    .registers 9
    .parameter "token"
    .parameter "finished"
    .parameter "userLeaving"
    .parameter "configChanges"

    .prologue
    .line 2991
    iget-object v2, p0, Landroid/app/ActivityThread;->mActivities:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityRecord;

    .line 2992
    .local v0, r:Landroid/app/ActivityThread$ActivityRecord;
    if-eqz v0, :cond_22

    .line 2994
    if-eqz p3, :cond_f

    .line 2995
    invoke-virtual {p0, v0}, Landroid/app/ActivityThread;->performUserLeavingActivity(Landroid/app/ActivityThread$ActivityRecord;)V

    .line 2998
    :cond_f
    iget-object v2, v0, Landroid/app/ActivityThread$ActivityRecord;->activity:Landroid/app/Activity;

    iget v3, v2, Landroid/app/Activity;->mConfigChangeFlags:I

    or-int/2addr v3, p4

    iput v3, v2, Landroid/app/Activity;->mConfigChangeFlags:I

    .line 2999
    const/4 v2, 0x1

    invoke-virtual {p0, p1, p2, v2}, Landroid/app/ActivityThread;->performPauseActivity(Landroid/os/IBinder;ZZ)Landroid/os/Bundle;

    move-result-object v1

    .line 3003
    .local v1, state:Landroid/os/Bundle;
    :try_start_1b
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Landroid/app/IActivityManager;->activityPaused(Landroid/os/IBinder;Landroid/os/Bundle;)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_22} :catch_23

    .line 3007
    .end local v1           #state:Landroid/os/Bundle;
    :cond_22
    :goto_22
    return-void

    .line 3004
    .restart local v1       #state:Landroid/os/Bundle;
    :catch_23
    move-exception v2

    goto :goto_22
.end method

.method private final handleReceiver(Landroid/app/ActivityThread$ReceiverData;)V
    .registers 16
    .parameter "data"

    .prologue
    const-string v13, ": "

    .line 2497
    invoke-virtual {p0}, Landroid/app/ActivityThread;->unscheduleGcIdler()V

    .line 2499
    iget-object v1, p1, Landroid/app/ActivityThread$ReceiverData;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    .line 2501
    .local v8, component:Ljava/lang/String;
    iget-object v1, p1, Landroid/app/ActivityThread$ReceiverData;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, v1}, Landroid/app/ActivityThread;->getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;)Landroid/app/ActivityThread$PackageInfo;

    move-result-object v11

    .line 2504
    .local v11, packageInfo:Landroid/app/ActivityThread$PackageInfo;
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 2506
    .local v0, mgr:Landroid/app/IActivityManager;
    const/4 v12, 0x0

    .line 2508
    .local v12, receiver:Landroid/content/BroadcastReceiver;
    :try_start_1c
    invoke-virtual {v11}, Landroid/app/ActivityThread$PackageInfo;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    .line 2509
    .local v7, cl:Ljava/lang/ClassLoader;
    iget-object v1, p1, Landroid/app/ActivityThread$ReceiverData;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 2510
    iget-object v1, p1, Landroid/app/ActivityThread$ReceiverData;->resultExtras:Landroid/os/Bundle;

    if-eqz v1, :cond_2e

    .line 2511
    iget-object v1, p1, Landroid/app/ActivityThread$ReceiverData;->resultExtras:Landroid/os/Bundle;

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 2513
    :cond_2e
    invoke-virtual {v7, v8}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v12

    .end local v12           #receiver:Landroid/content/BroadcastReceiver;
    check-cast v12, Landroid/content/BroadcastReceiver;
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_38} :catch_7d

    .line 2526
    .restart local v12       #receiver:Landroid/content/BroadcastReceiver;
    const/4 v1, 0x0

    :try_start_39
    invoke-virtual {v11, v1}, Landroid/app/ActivityThread$PackageInfo;->makeApplication(Z)Landroid/app/Application;

    move-result-object v6

    .line 2536
    .local v6, app:Landroid/app/Application;
    invoke-virtual {v6}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v9

    check-cast v9, Landroid/app/ApplicationContext;

    .line 2537
    .local v9, context:Landroid/app/ApplicationContext;
    const/4 v1, 0x1

    invoke-virtual {v12, v1}, Landroid/content/BroadcastReceiver;->setOrderedHint(Z)V

    .line 2538
    iget v1, p1, Landroid/app/ActivityThread$ReceiverData;->resultCode:I

    iget-object v2, p1, Landroid/app/ActivityThread$ReceiverData;->resultData:Ljava/lang/String;

    iget-object v3, p1, Landroid/app/ActivityThread$ReceiverData;->resultExtras:Landroid/os/Bundle;

    invoke-virtual {v12, v1, v2, v3}, Landroid/content/BroadcastReceiver;->setResult(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 2540
    iget-boolean v1, p1, Landroid/app/ActivityThread$ReceiverData;->sync:Z

    invoke-virtual {v12, v1}, Landroid/content/BroadcastReceiver;->setOrderedHint(Z)V

    .line 2541
    invoke-virtual {v9}, Landroid/app/ApplicationContext;->getReceiverRestrictedContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p1, Landroid/app/ActivityThread$ReceiverData;->intent:Landroid/content/Intent;

    invoke-virtual {v12, v1, v2}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_5e} :catch_b7

    .line 2557
    .end local v6           #app:Landroid/app/Application;
    .end local v9           #context:Landroid/app/ApplicationContext;
    :cond_5e
    :try_start_5e
    iget-boolean v1, p1, Landroid/app/ActivityThread$ReceiverData;->sync:Z

    if-eqz v1, :cond_f9

    .line 2558
    iget-object v1, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread$ApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v12}, Landroid/content/BroadcastReceiver;->getResultCode()I

    move-result v2

    invoke-virtual {v12}, Landroid/content/BroadcastReceiver;->getResultData()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v12, v4}, Landroid/content/BroadcastReceiver;->getResultExtras(Z)Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v12}, Landroid/content/BroadcastReceiver;->getAbortBroadcast()Z

    move-result v5

    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->finishReceiver(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/Bundle;Z)V
    :try_end_7c
    .catch Landroid/os/RemoteException; {:try_start_5e .. :try_end_7c} :catch_108

    .line 2567
    :goto_7c
    return-void

    .line 2514
    .end local v7           #cl:Ljava/lang/ClassLoader;
    .end local v12           #receiver:Landroid/content/BroadcastReceiver;
    :catch_7d
    move-exception v1

    move-object v10, v1

    .line 2516
    .local v10, e:Ljava/lang/Exception;
    :try_start_7f
    iget-object v1, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread$ApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget v2, p1, Landroid/app/ActivityThread$ReceiverData;->resultCode:I

    iget-object v3, p1, Landroid/app/ActivityThread$ReceiverData;->resultData:Ljava/lang/String;

    iget-object v4, p1, Landroid/app/ActivityThread$ReceiverData;->resultExtras:Landroid/os/Bundle;

    iget-boolean v5, p1, Landroid/app/ActivityThread$ReceiverData;->resultAbort:Z

    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->finishReceiver(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/Bundle;Z)V
    :try_end_90
    .catch Landroid/os/RemoteException; {:try_start_7f .. :try_end_90} :catch_10d

    .line 2520
    :goto_90
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to instantiate receiver "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 2543
    .end local v10           #e:Ljava/lang/Exception;
    .restart local v7       #cl:Ljava/lang/ClassLoader;
    .restart local v12       #receiver:Landroid/content/BroadcastReceiver;
    :catch_b7
    move-exception v1

    move-object v10, v1

    .line 2545
    .restart local v10       #e:Ljava/lang/Exception;
    :try_start_b9
    iget-object v1, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread$ApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget v2, p1, Landroid/app/ActivityThread$ReceiverData;->resultCode:I

    iget-object v3, p1, Landroid/app/ActivityThread$ReceiverData;->resultData:Ljava/lang/String;

    iget-object v4, p1, Landroid/app/ActivityThread$ReceiverData;->resultExtras:Landroid/os/Bundle;

    iget-boolean v5, p1, Landroid/app/ActivityThread$ReceiverData;->resultAbort:Z

    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->finishReceiver(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/Bundle;Z)V
    :try_end_ca
    .catch Landroid/os/RemoteException; {:try_start_b9 .. :try_end_ca} :catch_10b

    .line 2549
    :goto_ca
    iget-object v1, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v1, v12, v10}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_5e

    .line 2550
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to start receiver "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 2563
    .end local v10           #e:Ljava/lang/Exception;
    :cond_f9
    :try_start_f9
    iget-object v1, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread$ApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->finishReceiver(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/Bundle;Z)V
    :try_end_106
    .catch Landroid/os/RemoteException; {:try_start_f9 .. :try_end_106} :catch_108

    goto/16 :goto_7c

    .line 2565
    :catch_108
    move-exception v1

    goto/16 :goto_7c

    .line 2547
    .restart local v10       #e:Ljava/lang/Exception;
    :catch_10b
    move-exception v1

    goto :goto_ca

    .line 2518
    .end local v7           #cl:Ljava/lang/ClassLoader;
    .end local v12           #receiver:Landroid/content/BroadcastReceiver;
    :catch_10d
    move-exception v1

    goto :goto_90
.end method

.method private final handleRelaunchActivity(Landroid/app/ActivityThread$ActivityRecord;I)V
    .registers 15
    .parameter "tmp"
    .parameter "configChanges"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 3426
    invoke-virtual {p0}, Landroid/app/ActivityThread;->unscheduleGcIdler()V

    .line 3428
    const/4 v1, 0x0

    .line 3433
    .local v1, changedConfig:Landroid/content/res/Configuration;
    iget-object v7, p0, Landroid/app/ActivityThread;->mRelaunchingActivities:Ljava/util/ArrayList;

    monitor-enter v7

    .line 3434
    :try_start_a
    iget-object v8, p0, Landroid/app/ActivityThread;->mRelaunchingActivities:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3435
    .local v0, N:I
    iget-object v6, p1, Landroid/app/ActivityThread$ActivityRecord;->token:Landroid/os/IBinder;

    .line 3436
    .local v6, token:Landroid/os/IBinder;
    const/4 p1, 0x0

    .line 3437
    const/4 v3, 0x0

    .local v3, i:I
    :goto_14
    if-ge v3, v0, :cond_2f

    .line 3438
    iget-object v8, p0, Landroid/app/ActivityThread;->mRelaunchingActivities:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityThread$ActivityRecord;

    .line 3439
    .local v4, r:Landroid/app/ActivityThread$ActivityRecord;
    iget-object v8, v4, Landroid/app/ActivityThread$ActivityRecord;->token:Landroid/os/IBinder;

    if-ne v8, v6, :cond_2c

    .line 3440
    move-object p1, v4

    .line 3441
    iget-object v8, p0, Landroid/app/ActivityThread;->mRelaunchingActivities:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3442
    add-int/lit8 v3, v3, -0x1

    .line 3443
    add-int/lit8 v0, v0, -0x1

    .line 3437
    :cond_2c
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 3447
    .end local v4           #r:Landroid/app/ActivityThread$ActivityRecord;
    :cond_2f
    if-nez p1, :cond_33

    .line 3448
    monitor-exit v7

    .line 3503
    :cond_32
    :goto_32
    return-void

    .line 3451
    :cond_33
    iget-object v8, p0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    if-eqz v8, :cond_3c

    .line 3452
    iget-object v1, p0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    .line 3453
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    .line 3455
    :cond_3c
    monitor-exit v7
    :try_end_3d
    .catchall {:try_start_a .. :try_end_3d} :catchall_95

    .line 3458
    if-eqz v1, :cond_42

    .line 3459
    invoke-virtual {p0, v1}, Landroid/app/ActivityThread;->handleConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3462
    :cond_42
    iget-object v7, p0, Landroid/app/ActivityThread;->mActivities:Ljava/util/HashMap;

    iget-object v8, p1, Landroid/app/ActivityThread$ActivityRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityThread$ActivityRecord;

    .line 3464
    .restart local v4       #r:Landroid/app/ActivityThread$ActivityRecord;
    if-eqz v4, :cond_32

    .line 3468
    iget-object v7, v4, Landroid/app/ActivityThread$ActivityRecord;->activity:Landroid/app/Activity;

    iget v8, v7, Landroid/app/Activity;->mConfigChangeFlags:I

    or-int/2addr v8, p2

    iput v8, v7, Landroid/app/Activity;->mConfigChangeFlags:I

    .line 3469
    iget-object v7, v4, Landroid/app/ActivityThread$ActivityRecord;->activity:Landroid/app/Activity;

    iget-object v2, v7, Landroid/app/Activity;->mIntent:Landroid/content/Intent;

    .line 3471
    .local v2, currentIntent:Landroid/content/Intent;
    const/4 v5, 0x0

    .line 3472
    .local v5, savedState:Landroid/os/Bundle;
    iget-boolean v7, v4, Landroid/app/ActivityThread$ActivityRecord;->paused:Z

    if-nez v7, :cond_64

    .line 3473
    iget-object v7, v4, Landroid/app/ActivityThread$ActivityRecord;->token:Landroid/os/IBinder;

    invoke-virtual {p0, v7, v10, v11}, Landroid/app/ActivityThread;->performPauseActivity(Landroid/os/IBinder;ZZ)Landroid/os/Bundle;

    move-result-object v5

    .line 3476
    :cond_64
    iget-object v7, v4, Landroid/app/ActivityThread$ActivityRecord;->token:Landroid/os/IBinder;

    invoke-direct {p0, v7, v10, p2, v11}, Landroid/app/ActivityThread;->handleDestroyActivity(Landroid/os/IBinder;ZIZ)V

    .line 3478
    iput-object v9, v4, Landroid/app/ActivityThread$ActivityRecord;->activity:Landroid/app/Activity;

    .line 3479
    iput-object v9, v4, Landroid/app/ActivityThread$ActivityRecord;->window:Landroid/view/Window;

    .line 3480
    iput-boolean v10, v4, Landroid/app/ActivityThread$ActivityRecord;->hideForNow:Z

    .line 3481
    iput-object v9, v4, Landroid/app/ActivityThread$ActivityRecord;->nextIdle:Landroid/app/ActivityThread$ActivityRecord;

    .line 3483
    iget-object v7, p1, Landroid/app/ActivityThread$ActivityRecord;->pendingResults:Ljava/util/List;

    if-eqz v7, :cond_7d

    .line 3484
    iget-object v7, v4, Landroid/app/ActivityThread$ActivityRecord;->pendingResults:Ljava/util/List;

    if-nez v7, :cond_98

    .line 3485
    iget-object v7, p1, Landroid/app/ActivityThread$ActivityRecord;->pendingResults:Ljava/util/List;

    iput-object v7, v4, Landroid/app/ActivityThread$ActivityRecord;->pendingResults:Ljava/util/List;

    .line 3490
    :cond_7d
    :goto_7d
    iget-object v7, p1, Landroid/app/ActivityThread$ActivityRecord;->pendingIntents:Ljava/util/List;

    if-eqz v7, :cond_89

    .line 3491
    iget-object v7, v4, Landroid/app/ActivityThread$ActivityRecord;->pendingIntents:Ljava/util/List;

    if-nez v7, :cond_a0

    .line 3492
    iget-object v7, p1, Landroid/app/ActivityThread$ActivityRecord;->pendingIntents:Ljava/util/List;

    iput-object v7, v4, Landroid/app/ActivityThread$ActivityRecord;->pendingIntents:Ljava/util/List;

    .line 3497
    :cond_89
    :goto_89
    iget-boolean v7, p1, Landroid/app/ActivityThread$ActivityRecord;->startsNotResumed:Z

    iput-boolean v7, v4, Landroid/app/ActivityThread$ActivityRecord;->startsNotResumed:Z

    .line 3498
    if-eqz v5, :cond_91

    .line 3499
    iput-object v5, v4, Landroid/app/ActivityThread$ActivityRecord;->state:Landroid/os/Bundle;

    .line 3502
    :cond_91
    invoke-direct {p0, v4, v2}, Landroid/app/ActivityThread;->handleLaunchActivity(Landroid/app/ActivityThread$ActivityRecord;Landroid/content/Intent;)V

    goto :goto_32

    .line 3455
    .end local v0           #N:I
    .end local v2           #currentIntent:Landroid/content/Intent;
    .end local v3           #i:I
    .end local v4           #r:Landroid/app/ActivityThread$ActivityRecord;
    .end local v5           #savedState:Landroid/os/Bundle;
    .end local v6           #token:Landroid/os/IBinder;
    :catchall_95
    move-exception v8

    :try_start_96
    monitor-exit v7
    :try_end_97
    .catchall {:try_start_96 .. :try_end_97} :catchall_95

    throw v8

    .line 3487
    .restart local v0       #N:I
    .restart local v2       #currentIntent:Landroid/content/Intent;
    .restart local v3       #i:I
    .restart local v4       #r:Landroid/app/ActivityThread$ActivityRecord;
    .restart local v5       #savedState:Landroid/os/Bundle;
    .restart local v6       #token:Landroid/os/IBinder;
    :cond_98
    iget-object v7, v4, Landroid/app/ActivityThread$ActivityRecord;->pendingResults:Ljava/util/List;

    iget-object v8, p1, Landroid/app/ActivityThread$ActivityRecord;->pendingResults:Ljava/util/List;

    invoke-interface {v7, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_7d

    .line 3494
    :cond_a0
    iget-object v7, v4, Landroid/app/ActivityThread$ActivityRecord;->pendingIntents:Ljava/util/List;

    iget-object v8, p1, Landroid/app/ActivityThread$ActivityRecord;->pendingIntents:Ljava/util/List;

    invoke-interface {v7, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_89
.end method

.method private final handleRequestThumbnail(Landroid/os/IBinder;)V
    .registers 9
    .parameter "token"

    .prologue
    .line 3506
    iget-object v4, p0, Landroid/app/ActivityThread;->mActivities:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityThread$ActivityRecord;

    .line 3507
    .local v2, r:Landroid/app/ActivityThread$ActivityRecord;
    invoke-direct {p0, v2}, Landroid/app/ActivityThread;->createThumbnailBitmap(Landroid/app/ActivityThread$ActivityRecord;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 3508
    .local v3, thumbnail:Landroid/graphics/Bitmap;
    const/4 v0, 0x0

    .line 3510
    .local v0, description:Ljava/lang/CharSequence;
    :try_start_d
    iget-object v4, v2, Landroid/app/ActivityThread$ActivityRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->onCreateDescription()Ljava/lang/CharSequence;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_12} :catch_1b

    move-result-object v0

    .line 3521
    :cond_13
    :try_start_13
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4, p1, v3, v0}, Landroid/app/IActivityManager;->reportThumbnail(Landroid/os/IBinder;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_1a} :catch_58

    .line 3525
    :goto_1a
    return-void

    .line 3511
    :catch_1b
    move-exception v4

    move-object v1, v4

    .line 3512
    .local v1, e:Ljava/lang/Exception;
    iget-object v4, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v5, v2, Landroid/app/ActivityThread$ActivityRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v4, v5, v1}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v4

    if-nez v4, :cond_13

    .line 3513
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to create description of activity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Landroid/app/ActivityThread$ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 3523
    .end local v1           #e:Ljava/lang/Exception;
    :catch_58
    move-exception v4

    goto :goto_1a
.end method

.method private final handleSendResult(Landroid/app/ActivityThread$ResultData;)V
    .registers 9
    .parameter "res"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 3234
    iget-object v3, p0, Landroid/app/ActivityThread;->mActivities:Ljava/util/HashMap;

    iget-object v4, p1, Landroid/app/ActivityThread$ResultData;->token:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityThread$ActivityRecord;

    .line 3236
    .local v1, r:Landroid/app/ActivityThread$ActivityRecord;
    if-eqz v1, :cond_b5

    .line 3237
    iget-boolean v3, v1, Landroid/app/ActivityThread$ActivityRecord;->paused:Z

    if-nez v3, :cond_68

    move v2, v6

    .line 3238
    .local v2, resumed:Z
    :goto_13
    iget-object v3, v1, Landroid/app/ActivityThread$ActivityRecord;->activity:Landroid/app/Activity;

    iget-boolean v3, v3, Landroid/app/Activity;->mFinished:Z

    if-nez v3, :cond_28

    iget-object v3, v1, Landroid/app/ActivityThread$ActivityRecord;->activity:Landroid/app/Activity;

    iget-object v3, v3, Landroid/app/Activity;->mDecor:Landroid/view/View;

    if-eqz v3, :cond_28

    iget-boolean v3, v1, Landroid/app/ActivityThread$ActivityRecord;->hideForNow:Z

    if-eqz v3, :cond_28

    if-eqz v2, :cond_28

    .line 3243
    invoke-direct {p0, v1, v6}, Landroid/app/ActivityThread;->updateVisibility(Landroid/app/ActivityThread$ActivityRecord;Z)V

    .line 3245
    :cond_28
    if-eqz v2, :cond_a7

    .line 3248
    :try_start_2a
    iget-object v3, v1, Landroid/app/ActivityThread$ActivityRecord;->activity:Landroid/app/Activity;

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/app/Activity;->mCalled:Z

    .line 3249
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v4, v1, Landroid/app/ActivityThread$ActivityRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v3, v4}, Landroid/app/Instrumentation;->callActivityOnPause(Landroid/app/Activity;)V

    .line 3250
    iget-object v3, v1, Landroid/app/ActivityThread$ActivityRecord;->activity:Landroid/app/Activity;

    iget-boolean v3, v3, Landroid/app/Activity;->mCalled:Z

    if-nez v3, :cond_a7

    .line 3251
    new-instance v3, Landroid/app/SuperNotCalledException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Landroid/app/ActivityThread$ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " did not call through to super.onPause()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_65
    .catch Landroid/app/SuperNotCalledException; {:try_start_2a .. :try_end_65} :catch_65
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_65} :catch_6a

    .line 3255
    :catch_65
    move-exception v3

    move-object v0, v3

    .line 3256
    .local v0, e:Landroid/app/SuperNotCalledException;
    throw v0

    .end local v0           #e:Landroid/app/SuperNotCalledException;
    .end local v2           #resumed:Z
    :cond_68
    move v2, v5

    .line 3237
    goto :goto_13

    .line 3257
    .restart local v2       #resumed:Z
    :catch_6a
    move-exception v3

    move-object v0, v3

    .line 3258
    .local v0, e:Ljava/lang/Exception;
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v4, v1, Landroid/app/ActivityThread$ActivityRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v3, v4, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_a7

    .line 3259
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to pause activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Landroid/app/ActivityThread$ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 3266
    .end local v0           #e:Ljava/lang/Exception;
    :cond_a7
    iget-object v3, p1, Landroid/app/ActivityThread$ResultData;->results:Ljava/util/List;

    invoke-direct {p0, v1, v3}, Landroid/app/ActivityThread;->deliverResults(Landroid/app/ActivityThread$ActivityRecord;Ljava/util/List;)V

    .line 3267
    if-eqz v2, :cond_b5

    .line 3268
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v4, v1, Landroid/app/ActivityThread$ActivityRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v3, v4}, Landroid/app/Instrumentation;->callActivityOnResume(Landroid/app/Activity;)V

    .line 3271
    .end local v2           #resumed:Z
    :cond_b5
    return-void
.end method

.method private final handleServiceArgs(Landroid/app/ActivityThread$ServiceArgsData;)V
    .registers 7
    .parameter "data"

    .prologue
    .line 2770
    iget-object v2, p0, Landroid/app/ActivityThread;->mServices:Ljava/util/HashMap;

    iget-object v3, p1, Landroid/app/ActivityThread$ServiceArgsData;->token:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Service;

    .line 2771
    .local v1, s:Landroid/app/Service;
    if-eqz v1, :cond_29

    .line 2773
    :try_start_c
    iget-object v2, p1, Landroid/app/ActivityThread$ServiceArgsData;->args:Landroid/content/Intent;

    if-eqz v2, :cond_19

    .line 2774
    iget-object v2, p1, Landroid/app/ActivityThread$ServiceArgsData;->args:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/app/Service;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 2776
    :cond_19
    iget-object v2, p1, Landroid/app/ActivityThread$ServiceArgsData;->args:Landroid/content/Intent;

    iget v3, p1, Landroid/app/ActivityThread$ServiceArgsData;->startId:I

    invoke-virtual {v1, v2, v3}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_20} :catch_2a

    .line 2778
    :try_start_20
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v3, p1, Landroid/app/ActivityThread$ServiceArgsData;->token:Landroid/os/IBinder;

    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->serviceDoneExecuting(Landroid/os/IBinder;)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_29} :catch_67
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_29} :catch_2a

    .line 2790
    :cond_29
    :goto_29
    return-void

    .line 2782
    :catch_2a
    move-exception v2

    move-object v0, v2

    .line 2783
    .local v0, e:Ljava/lang/Exception;
    iget-object v2, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v2, v1, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_29

    .line 2784
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to start service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/app/ActivityThread$ServiceArgsData;->args:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 2779
    .end local v0           #e:Ljava/lang/Exception;
    :catch_67
    move-exception v2

    goto :goto_29
.end method

.method private final handleStopActivity(Landroid/os/IBinder;ZI)V
    .registers 10
    .parameter "token"
    .parameter "show"
    .parameter "configChanges"

    .prologue
    .line 3163
    iget-object v2, p0, Landroid/app/ActivityThread;->mActivities:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityThread$ActivityRecord;

    .line 3164
    .local v1, r:Landroid/app/ActivityThread$ActivityRecord;
    iget-object v2, v1, Landroid/app/ActivityThread$ActivityRecord;->activity:Landroid/app/Activity;

    iget v3, v2, Landroid/app/Activity;->mConfigChangeFlags:I

    or-int/2addr v3, p3

    iput v3, v2, Landroid/app/Activity;->mConfigChangeFlags:I

    .line 3166
    new-instance v0, Landroid/app/ActivityThread$StopInfo;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Landroid/app/ActivityThread$StopInfo;-><init>(Landroid/app/ActivityThread$1;)V

    .line 3167
    .local v0, info:Landroid/app/ActivityThread$StopInfo;
    invoke-direct {p0, v1, v0, p2}, Landroid/app/ActivityThread;->performStopActivityInner(Landroid/app/ActivityThread$ActivityRecord;Landroid/app/ActivityThread$StopInfo;Z)V

    .line 3173
    invoke-direct {p0, v1, p2}, Landroid/app/ActivityThread;->updateVisibility(Landroid/app/ActivityThread$ActivityRecord;Z)V

    .line 3177
    :try_start_1b
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v3, v1, Landroid/app/ActivityThread$ActivityRecord;->token:Landroid/os/IBinder;

    iget-object v4, v0, Landroid/app/ActivityThread$StopInfo;->thumbnail:Landroid/graphics/Bitmap;

    iget-object v5, v0, Landroid/app/ActivityThread$StopInfo;->description:Ljava/lang/CharSequence;

    invoke-interface {v2, v3, v4, v5}, Landroid/app/IActivityManager;->activityStopped(Landroid/os/IBinder;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_28} :catch_29

    .line 3181
    :goto_28
    return-void

    .line 3179
    :catch_29
    move-exception v2

    goto :goto_28
.end method

.method private final handleStopService(Landroid/os/IBinder;)V
    .registers 9
    .parameter "token"

    .prologue
    .line 2793
    iget-object v4, p0, Landroid/app/ActivityThread;->mServices:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Service;

    .line 2794
    .local v2, s:Landroid/app/Service;
    if-eqz v2, :cond_27

    .line 2797
    :try_start_a
    invoke-virtual {v2}, Landroid/app/Service;->onDestroy()V

    .line 2798
    invoke-virtual {v2}, Landroid/app/Service;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 2799
    .local v0, context:Landroid/content/Context;
    instance-of v4, v0, Landroid/app/ApplicationContext;

    if-eqz v4, :cond_20

    .line 2800
    invoke-virtual {v2}, Landroid/app/Service;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 2801
    .local v3, who:Ljava/lang/String;
    check-cast v0, Landroid/app/ApplicationContext;

    .end local v0           #context:Landroid/content/Context;
    const-string v4, "Service"

    invoke-virtual {v0, v3, v4}, Landroid/app/ApplicationContext;->scheduleFinalCleanup(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_20} :catch_28

    .line 2804
    .end local v3           #who:Ljava/lang/String;
    :cond_20
    :try_start_20
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4, p1}, Landroid/app/IActivityManager;->serviceDoneExecuting(Landroid/os/IBinder;)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_27} :catch_59
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_27} :catch_28

    .line 2817
    :cond_27
    :goto_27
    return-void

    .line 2808
    :catch_28
    move-exception v4

    move-object v1, v4

    .line 2809
    .local v1, e:Ljava/lang/Exception;
    iget-object v4, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v4, v2, v1}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v4

    if-nez v4, :cond_27

    .line 2810
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to stop service "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 2805
    .end local v1           #e:Ljava/lang/Exception;
    :catch_59
    move-exception v4

    goto :goto_27
.end method

.method private final handleUnbindService(Landroid/app/ActivityThread$BindServiceData;)V
    .registers 8
    .parameter "data"

    .prologue
    .line 2728
    iget-object v3, p0, Landroid/app/ActivityThread;->mServices:Ljava/util/HashMap;

    iget-object v4, p1, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Service;

    .line 2729
    .local v2, s:Landroid/app/Service;
    if-eqz v2, :cond_28

    .line 2731
    :try_start_c
    iget-object v3, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/app/Service;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 2732
    iget-object v3, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1a} :catch_35

    move-result v0

    .line 2734
    .local v0, doRebind:Z
    if-eqz v0, :cond_29

    .line 2735
    :try_start_1d
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    iget-object v4, p1, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    iget-object v5, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-interface {v3, v4, v5, v0}, Landroid/app/IActivityManager;->unbindFinished(Landroid/os/IBinder;Landroid/content/Intent;Z)V

    .line 2751
    .end local v0           #doRebind:Z
    :cond_28
    :goto_28
    return-void

    .line 2738
    .restart local v0       #doRebind:Z
    :cond_29
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    iget-object v4, p1, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    invoke-interface {v3, v4}, Landroid/app/IActivityManager;->serviceDoneExecuting(Landroid/os/IBinder;)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_32} :catch_33
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_32} :catch_35

    goto :goto_28

    .line 2741
    :catch_33
    move-exception v3

    goto :goto_28

    .line 2743
    .end local v0           #doRebind:Z
    :catch_35
    move-exception v3

    move-object v1, v3

    .line 2744
    .local v1, e:Ljava/lang/Exception;
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v3, v2, v1}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_28

    .line 2745
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to unbind to service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private final handleWindowVisibility(Landroid/os/IBinder;Z)V
    .registers 5
    .parameter "token"
    .parameter "show"

    .prologue
    .line 3192
    iget-object v1, p0, Landroid/app/ActivityThread;->mActivities:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityRecord;

    .line 3193
    .local v0, r:Landroid/app/ActivityThread$ActivityRecord;
    if-nez p2, :cond_1c

    iget-boolean v1, v0, Landroid/app/ActivityThread$ActivityRecord;->stopped:Z

    if-nez v1, :cond_1c

    .line 3194
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p2}, Landroid/app/ActivityThread;->performStopActivityInner(Landroid/app/ActivityThread$ActivityRecord;Landroid/app/ActivityThread$StopInfo;Z)V

    .line 3203
    :cond_12
    :goto_12
    iget-object v1, v0, Landroid/app/ActivityThread$ActivityRecord;->activity:Landroid/app/Activity;

    iget-object v1, v1, Landroid/app/Activity;->mDecor:Landroid/view/View;

    if-eqz v1, :cond_1b

    .line 3206
    invoke-direct {p0, v0, p2}, Landroid/app/ActivityThread;->updateVisibility(Landroid/app/ActivityThread$ActivityRecord;Z)V

    .line 3208
    :cond_1b
    return-void

    .line 3195
    :cond_1c
    if-eqz p2, :cond_12

    iget-boolean v1, v0, Landroid/app/ActivityThread$ActivityRecord;->stopped:Z

    if-eqz v1, :cond_12

    .line 3198
    invoke-virtual {p0}, Landroid/app/ActivityThread;->unscheduleGcIdler()V

    .line 3200
    iget-object v1, v0, Landroid/app/ActivityThread$ActivityRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->performRestart()V

    .line 3201
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/app/ActivityThread$ActivityRecord;->stopped:Z

    goto :goto_12
.end method

.method private final installContentProviders(Landroid/content/Context;Ljava/util/List;)V
    .registers 14
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ProviderInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3896
    .local p2, providers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3899
    .local v5, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/IActivityManager$ContentProviderHolder;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 3900
    .local v4, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/pm/ProviderInfo;>;"
    :cond_9
    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_63

    .line 3901
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ProviderInfo;

    .line 3902
    .local v3, cpi:Landroid/content/pm/ProviderInfo;
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v6, 0x80

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3903
    .local v0, buf:Ljava/lang/StringBuilder;
    const-string v6, "Publishing provider "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3904
    iget-object v6, v3, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3905
    const-string v6, ": "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3906
    iget-object v6, v3, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3907
    const-string v6, "ActivityThread"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3908
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {p0, p1, v6, v3, v7}, Landroid/app/ActivityThread;->installProvider(Landroid/content/Context;Landroid/content/IContentProvider;Landroid/content/pm/ProviderInfo;Z)Landroid/content/IContentProvider;

    move-result-object v1

    .line 3909
    .local v1, cp:Landroid/content/IContentProvider;
    if-eqz v1, :cond_9

    .line 3910
    new-instance v2, Landroid/app/IActivityManager$ContentProviderHolder;

    invoke-direct {v2, v3}, Landroid/app/IActivityManager$ContentProviderHolder;-><init>(Landroid/content/pm/ProviderInfo;)V

    .line 3912
    .local v2, cph:Landroid/app/IActivityManager$ContentProviderHolder;
    iput-object v1, v2, Landroid/app/IActivityManager$ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    .line 3913
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3915
    iget-object v6, p0, Landroid/app/ActivityThread;->mProviderMap:Ljava/util/HashMap;

    monitor-enter v6

    .line 3916
    :try_start_4e
    iget-object v7, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Ljava/util/HashMap;

    invoke-interface {v1}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    new-instance v9, Landroid/app/ActivityThread$ProviderRefCount;

    const/16 v10, 0x2710

    invoke-direct {v9, p0, v10}, Landroid/app/ActivityThread$ProviderRefCount;-><init>(Landroid/app/ActivityThread;I)V

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3917
    monitor-exit v6

    goto :goto_9

    :catchall_60
    move-exception v7

    monitor-exit v6
    :try_end_62
    .catchall {:try_start_4e .. :try_end_62} :catchall_60

    throw v7

    .line 3922
    .end local v0           #buf:Ljava/lang/StringBuilder;
    .end local v1           #cp:Landroid/content/IContentProvider;
    .end local v2           #cph:Landroid/app/IActivityManager$ContentProviderHolder;
    .end local v3           #cpi:Landroid/content/pm/ProviderInfo;
    :cond_63
    :try_start_63
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v6

    invoke-virtual {p0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v7

    invoke-interface {v6, v7, v5}, Landroid/app/IActivityManager;->publishContentProviders(Landroid/app/IApplicationThread;Ljava/util/List;)V
    :try_end_6e
    .catch Landroid/os/RemoteException; {:try_start_63 .. :try_end_6e} :catch_6f

    .line 3926
    :goto_6e
    return-void

    .line 3924
    :catch_6f
    move-exception v6

    goto :goto_6e
.end method

.method private final installProvider(Landroid/content/Context;Landroid/content/IContentProvider;Landroid/content/pm/ProviderInfo;Z)Landroid/content/IContentProvider;
    .registers 23
    .parameter "context"
    .parameter "provider"
    .parameter "info"
    .parameter "noisy"

    .prologue
    .line 4068
    const/4 v10, 0x0

    .line 4069
    .local v10, localProvider:Landroid/content/ContentProvider;
    if-nez p2, :cond_ee

    .line 4070
    if-eqz p4, :cond_31

    .line 4071
    const-string v13, "ActivityThread"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Loading provider "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    move-object v15, v0

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ": "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    move-object v15, v0

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4074
    :cond_31
    const/4 v6, 0x0

    .line 4075
    .local v6, c:Landroid/content/Context;
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v5, v0

    .line 4076
    .local v5, ai:Landroid/content/pm/ApplicationInfo;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    iget-object v14, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_72

    .line 4077
    move-object/from16 v6, p1

    .line 4088
    :goto_45
    if-nez v6, :cond_9c

    .line 4089
    const-string v13, "ActivityThread"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unable to get context for package "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " while loading content provider "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    move-object v15, v0

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4093
    const/4 v13, 0x0

    .line 4142
    .end local v5           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v6           #c:Landroid/content/Context;
    :goto_71
    return-object v13

    .line 4078
    .restart local v5       #ai:Landroid/content/pm/ApplicationInfo;
    .restart local v6       #c:Landroid/content/Context;
    :cond_72
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    move-object v13, v0

    if-eqz v13, :cond_90

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    move-object v13, v0

    invoke-virtual {v13}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v13

    iget-object v14, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_90

    .line 4080
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    move-object v6, v0

    goto :goto_45

    .line 4083
    :cond_90
    :try_start_90
    iget-object v13, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v14, 0x1

    move-object/from16 v0, p1

    move-object v1, v13

    move v2, v14

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_9a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_90 .. :try_end_9a} :catch_190

    move-result-object v6

    goto :goto_45

    .line 4096
    :cond_9c
    :try_start_9c
    invoke-virtual {v6}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    .line 4097
    .local v7, cl:Ljava/lang/ClassLoader;
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    move-object v13, v0

    invoke-virtual {v7, v13}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Landroid/content/ContentProvider;

    move-object v10, v0

    .line 4099
    invoke-virtual {v10}, Landroid/content/ContentProvider;->getIContentProvider()Landroid/content/IContentProvider;

    move-result-object p2

    .line 4100
    if-nez p2, :cond_e7

    .line 4101
    const-string v13, "ActivityThread"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Failed to instantiate class "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    move-object v15, v0

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " from sourceDir "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v15, v0

    iget-object v15, v15, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4104
    const/4 v13, 0x0

    goto :goto_71

    .line 4109
    :cond_e7
    move-object v0, v10

    move-object v1, v6

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    :try_end_ee
    .catch Ljava/lang/Exception; {:try_start_9c .. :try_end_ee} :catch_126

    .line 4123
    .end local v5           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v6           #c:Landroid/content/Context;
    .end local v7           #cl:Ljava/lang/ClassLoader;
    :cond_ee
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ActivityThread;->mProviderMap:Ljava/util/HashMap;

    move-object v13, v0

    monitor-enter v13

    .line 4125
    :try_start_f4
    sget-object v14, Landroid/app/ActivityThread;->PATTERN_SEMICOLON:Ljava/util/regex/Pattern;

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    move-object v15, v0

    invoke-virtual {v14, v15}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v11

    .line 4126
    .local v11, names:[Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_100
    array-length v14, v11

    if-ge v9, v14, :cond_16a

    .line 4127
    new-instance v12, Landroid/app/ActivityThread$ProviderRecord;

    aget-object v14, v11, v9

    move-object v0, v12

    move-object/from16 v1, p0

    move-object v2, v14

    move-object/from16 v3, p2

    move-object v4, v10

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/ActivityThread$ProviderRecord;-><init>(Landroid/app/ActivityThread;Ljava/lang/String;Landroid/content/IContentProvider;Landroid/content/ContentProvider;)V
    :try_end_111
    .catchall {:try_start_f4 .. :try_end_111} :catchall_18d

    .line 4130
    .local v12, pr:Landroid/app/ActivityThread$ProviderRecord;
    :try_start_111
    invoke-interface/range {p2 .. p2}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v14, v12, v15}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 4131
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ActivityThread;->mProviderMap:Ljava/util/HashMap;

    move-object v14, v0

    aget-object v15, v11, v9

    invoke-virtual {v14, v15, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_123
    .catchall {:try_start_111 .. :try_end_123} :catchall_18d
    .catch Landroid/os/RemoteException; {:try_start_111 .. :try_end_123} :catch_163

    .line 4126
    add-int/lit8 v9, v9, 0x1

    goto :goto_100

    .line 4110
    .end local v9           #i:I
    .end local v11           #names:[Ljava/lang/String;
    .end local v12           #pr:Landroid/app/ActivityThread$ProviderRecord;
    .restart local v5       #ai:Landroid/content/pm/ApplicationInfo;
    .restart local v6       #c:Landroid/content/Context;
    :catch_126
    move-exception v13

    move-object v8, v13

    .line 4111
    .local v8, e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    move-object v13, v0

    const/4 v14, 0x0

    invoke-virtual {v13, v14, v8}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v13

    if-nez v13, :cond_160

    .line 4112
    new-instance v13, Ljava/lang/RuntimeException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unable to get provider "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    move-object v15, v0

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ": "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v13

    .line 4116
    :cond_160
    const/4 v13, 0x0

    goto/16 :goto_71

    .line 4132
    .end local v5           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v6           #c:Landroid/content/Context;
    .end local v8           #e:Ljava/lang/Exception;
    .restart local v9       #i:I
    .restart local v11       #names:[Ljava/lang/String;
    .restart local v12       #pr:Landroid/app/ActivityThread$ProviderRecord;
    :catch_163
    move-exception v14

    move-object v8, v14

    .line 4133
    .local v8, e:Landroid/os/RemoteException;
    const/4 v14, 0x0

    :try_start_166
    monitor-exit v13

    move-object v13, v14

    goto/16 :goto_71

    .line 4136
    .end local v8           #e:Landroid/os/RemoteException;
    .end local v12           #pr:Landroid/app/ActivityThread$ProviderRecord;
    :cond_16a
    if-eqz v10, :cond_188

    .line 4137
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ActivityThread;->mLocalProviders:Ljava/util/HashMap;

    move-object v14, v0

    invoke-interface/range {p2 .. p2}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v15

    new-instance v16, Landroid/app/ActivityThread$ProviderRecord;

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    move-object/from16 v3, p2

    move-object v4, v10

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/ActivityThread$ProviderRecord;-><init>(Landroid/app/ActivityThread;Ljava/lang/String;Landroid/content/IContentProvider;Landroid/content/ContentProvider;)V

    invoke-virtual/range {v14 .. v16}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4140
    :cond_188
    monitor-exit v13

    move-object/from16 v13, p2

    .line 4142
    goto/16 :goto_71

    .line 4140
    .end local v9           #i:I
    .end local v11           #names:[Ljava/lang/String;
    :catchall_18d
    move-exception v14

    monitor-exit v13
    :try_end_18f
    .catchall {:try_start_166 .. :try_end_18f} :catchall_18d

    throw v14

    .line 4085
    .restart local v5       #ai:Landroid/content/pm/ApplicationInfo;
    .restart local v6       #c:Landroid/content/Context;
    :catch_190
    move-exception v13

    goto/16 :goto_45
.end method

.method public static final main([Ljava/lang/String;)V
    .registers 6
    .parameter "args"

    .prologue
    .line 4196
    const-string v2, "<pre-initialized>"

    invoke-static {v2}, Landroid/os/Process;->setArgV0(Ljava/lang/String;)V

    .line 4198
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    .line 4200
    new-instance v1, Landroid/app/ActivityThread;

    invoke-direct {v1}, Landroid/app/ActivityThread;-><init>()V

    .line 4201
    .local v1, thread:Landroid/app/ActivityThread;
    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/app/ActivityThread;->attach(Z)V

    .line 4203
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 4205
    invoke-static {}, Landroid/os/Process;->supportsProcesses()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 4206
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Main thread loop unexpectedly exited"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4209
    :cond_22
    invoke-direct {v1}, Landroid/app/ActivityThread;->detach()V

    .line 4211
    iget-object v2, v1, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    if-eqz v2, :cond_4e

    iget-object v2, v1, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 4213
    .local v0, name:Ljava/lang/String;
    :goto_2f
    const-string v2, "ActivityThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Main thread of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is now exiting"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4214
    return-void

    .line 4212
    .end local v0           #name:Ljava/lang/String;
    :cond_4e
    const-string v0, "<unknown>"

    .restart local v0       #name:Ljava/lang/String;
    goto :goto_2f
.end method

.method private final performConfigurationChanged(Landroid/content/ComponentCallbacks;Landroid/content/res/Configuration;)V
    .registers 10
    .parameter "cb"
    .parameter "config"

    .prologue
    const/4 v5, 0x0

    .line 3581
    instance-of v4, p1, Landroid/app/Activity;

    if-eqz v4, :cond_44

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    move-object v4, v0

    move-object v1, v4

    .line 3582
    .local v1, activity:Landroid/app/Activity;
    :goto_a
    if-eqz v1, :cond_e

    .line 3583
    iput-boolean v5, v1, Landroid/app/Activity;->mCalled:Z

    .line 3586
    :cond_e
    const/4 v3, 0x0

    .line 3587
    .local v3, shouldChangeConfig:Z
    if-eqz v1, :cond_15

    iget-object v4, v1, Landroid/app/Activity;->mCurrentConfig:Landroid/content/res/Configuration;

    if-nez v4, :cond_47

    .line 3588
    :cond_15
    const/4 v3, 0x1

    .line 3606
    :cond_16
    :goto_16
    if-eqz v3, :cond_63

    .line 3607
    invoke-interface {p1, p2}, Landroid/content/ComponentCallbacks;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3609
    if-eqz v1, :cond_63

    .line 3610
    iget-boolean v4, v1, Landroid/app/Activity;->mCalled:Z

    if-nez v4, :cond_5a

    .line 3611
    new-instance v4, Landroid/app/SuperNotCalledException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Activity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " did not call through to super.onConfigurationChanged()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3581
    .end local v1           #activity:Landroid/app/Activity;
    .end local v3           #shouldChangeConfig:Z
    :cond_44
    const/4 v4, 0x0

    move-object v1, v4

    goto :goto_a

    .line 3594
    .restart local v1       #activity:Landroid/app/Activity;
    .restart local v3       #shouldChangeConfig:Z
    :cond_47
    iget-object v4, v1, Landroid/app/Activity;->mCurrentConfig:Landroid/content/res/Configuration;

    invoke-virtual {v4, p2}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v2

    .line 3595
    .local v2, diff:I
    if-eqz v2, :cond_16

    .line 3600
    iget-object v4, v1, Landroid/app/Activity;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->configChanges:I

    xor-int/lit8 v4, v4, -0x1

    and-int/2addr v4, v2

    if-nez v4, :cond_16

    .line 3601
    const/4 v3, 0x1

    goto :goto_16

    .line 3615
    .end local v2           #diff:I
    :cond_5a
    iput v5, v1, Landroid/app/Activity;->mConfigChangeFlags:I

    .line 3616
    new-instance v4, Landroid/content/res/Configuration;

    invoke-direct {v4, p2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v4, v1, Landroid/app/Activity;->mCurrentConfig:Landroid/content/res/Configuration;

    .line 3619
    :cond_63
    return-void
.end method

.method private final performDestroyActivity(Landroid/os/IBinder;ZIZ)Landroid/app/ActivityThread$ActivityRecord;
    .registers 12
    .parameter "token"
    .parameter "finishing"
    .parameter "configChanges"
    .parameter "getNonConfigInstance"

    .prologue
    const/4 v6, 0x1

    const-string v2, "Activity "

    const-string v5, ": "

    .line 3279
    iget-object v2, p0, Landroid/app/ActivityThread;->mActivities:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityThread$ActivityRecord;

    .line 3281
    .local v1, r:Landroid/app/ActivityThread$ActivityRecord;
    if-eqz v1, :cond_1b4

    .line 3282
    iget-object v2, v1, Landroid/app/ActivityThread$ActivityRecord;->activity:Landroid/app/Activity;

    iget v3, v2, Landroid/app/Activity;->mConfigChangeFlags:I

    or-int/2addr v3, p3

    iput v3, v2, Landroid/app/Activity;->mConfigChangeFlags:I

    .line 3283
    if-eqz p2, :cond_1c

    .line 3284
    iget-object v2, v1, Landroid/app/ActivityThread$ActivityRecord;->activity:Landroid/app/Activity;

    iput-boolean v6, v2, Landroid/app/Activity;->mFinished:Z

    .line 3286
    :cond_1c
    iget-boolean v2, v1, Landroid/app/ActivityThread$ActivityRecord;->paused:Z

    if-nez v2, :cond_a4

    .line 3288
    :try_start_20
    iget-object v2, v1, Landroid/app/ActivityThread$ActivityRecord;->activity:Landroid/app/Activity;

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/app/Activity;->mCalled:Z

    .line 3289
    iget-object v2, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v3, v1, Landroid/app/ActivityThread$ActivityRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Landroid/app/Instrumentation;->callActivityOnPause(Landroid/app/Activity;)V

    .line 3290
    const/16 v2, 0x7545

    iget-object v3, v1, Landroid/app/ActivityThread$ActivityRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 3292
    iget-object v2, v1, Landroid/app/ActivityThread$ActivityRecord;->activity:Landroid/app/Activity;

    iget-boolean v2, v2, Landroid/app/Activity;->mCalled:Z

    if-nez v2, :cond_a2

    .line 3293
    new-instance v2, Landroid/app/SuperNotCalledException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/app/ActivityThread$ActivityRecord;->intent:Landroid/content/Intent;

    invoke-static {v4}, Landroid/app/ActivityThread;->safeToComponentShortString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " did not call through to super.onPause()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_66
    .catch Landroid/app/SuperNotCalledException; {:try_start_20 .. :try_end_66} :catch_66
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_66} :catch_69

    .line 3297
    :catch_66
    move-exception v2

    move-object v0, v2

    .line 3298
    .local v0, e:Landroid/app/SuperNotCalledException;
    throw v0

    .line 3299
    .end local v0           #e:Landroid/app/SuperNotCalledException;
    :catch_69
    move-exception v2

    move-object v0, v2

    .line 3300
    .local v0, e:Ljava/lang/Exception;
    iget-object v2, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v3, v1, Landroid/app/ActivityThread$ActivityRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v3, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_a2

    .line 3301
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to pause activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/app/ActivityThread$ActivityRecord;->intent:Landroid/content/Intent;

    invoke-static {v4}, Landroid/app/ActivityThread;->safeToComponentShortString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 3307
    .end local v0           #e:Ljava/lang/Exception;
    :cond_a2
    iput-boolean v6, v1, Landroid/app/ActivityThread$ActivityRecord;->paused:Z

    .line 3309
    :cond_a4
    iget-boolean v2, v1, Landroid/app/ActivityThread$ActivityRecord;->stopped:Z

    if-nez v2, :cond_af

    .line 3311
    :try_start_a8
    iget-object v2, v1, Landroid/app/ActivityThread$ActivityRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->performStop()V
    :try_end_ad
    .catch Landroid/app/SuperNotCalledException; {:try_start_a8 .. :try_end_ad} :catch_f9
    .catch Ljava/lang/Exception; {:try_start_a8 .. :try_end_ad} :catch_fc

    .line 3322
    :cond_ad
    iput-boolean v6, v1, Landroid/app/ActivityThread$ActivityRecord;->stopped:Z

    .line 3324
    :cond_af
    if-eqz p4, :cond_c1

    .line 3326
    :try_start_b1
    iget-object v2, v1, Landroid/app/ActivityThread$ActivityRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->onRetainNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v1, Landroid/app/ActivityThread$ActivityRecord;->lastNonConfigurationInstance:Ljava/lang/Object;
    :try_end_b9
    .catch Ljava/lang/Exception; {:try_start_b1 .. :try_end_b9} :catch_135

    .line 3337
    :cond_b9
    :try_start_b9
    iget-object v2, v1, Landroid/app/ActivityThread$ActivityRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->onRetainNonConfigurationChildInstances()Ljava/util/HashMap;

    move-result-object v2

    iput-object v2, v1, Landroid/app/ActivityThread$ActivityRecord;->lastNonConfigurationChildInstances:Ljava/util/HashMap;
    :try_end_c1
    .catch Ljava/lang/Exception; {:try_start_b9 .. :try_end_c1} :catch_172

    .line 3350
    :cond_c1
    :try_start_c1
    iget-object v2, v1, Landroid/app/ActivityThread$ActivityRecord;->activity:Landroid/app/Activity;

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/app/Activity;->mCalled:Z

    .line 3351
    iget-object v2, v1, Landroid/app/ActivityThread$ActivityRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->onDestroy()V

    .line 3352
    iget-object v2, v1, Landroid/app/ActivityThread$ActivityRecord;->activity:Landroid/app/Activity;

    iget-boolean v2, v2, Landroid/app/Activity;->mCalled:Z

    if-nez v2, :cond_1ab

    .line 3353
    new-instance v2, Landroid/app/SuperNotCalledException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/app/ActivityThread$ActivityRecord;->intent:Landroid/content/Intent;

    invoke-static {v4}, Landroid/app/ActivityThread;->safeToComponentShortString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " did not call through to super.onDestroy()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_f6
    .catch Landroid/app/SuperNotCalledException; {:try_start_c1 .. :try_end_f6} :catch_f6
    .catch Ljava/lang/Exception; {:try_start_c1 .. :try_end_f6} :catch_1ba

    .line 3360
    :catch_f6
    move-exception v2

    move-object v0, v2

    .line 3361
    .local v0, e:Landroid/app/SuperNotCalledException;
    throw v0

    .line 3312
    .end local v0           #e:Landroid/app/SuperNotCalledException;
    :catch_f9
    move-exception v2

    move-object v0, v2

    .line 3313
    .restart local v0       #e:Landroid/app/SuperNotCalledException;
    throw v0

    .line 3314
    .end local v0           #e:Landroid/app/SuperNotCalledException;
    :catch_fc
    move-exception v2

    move-object v0, v2

    .line 3315
    .local v0, e:Ljava/lang/Exception;
    iget-object v2, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v3, v1, Landroid/app/ActivityThread$ActivityRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v3, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_ad

    .line 3316
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to stop activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/app/ActivityThread$ActivityRecord;->intent:Landroid/content/Intent;

    invoke-static {v4}, Landroid/app/ActivityThread;->safeToComponentShortString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 3328
    .end local v0           #e:Ljava/lang/Exception;
    :catch_135
    move-exception v2

    move-object v0, v2

    .line 3329
    .restart local v0       #e:Ljava/lang/Exception;
    iget-object v2, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v3, v1, Landroid/app/ActivityThread$ActivityRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v3, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_b9

    .line 3330
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to retain activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/app/ActivityThread$ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 3339
    .end local v0           #e:Ljava/lang/Exception;
    :catch_172
    move-exception v2

    move-object v0, v2

    .line 3340
    .restart local v0       #e:Ljava/lang/Exception;
    iget-object v2, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v3, v1, Landroid/app/ActivityThread$ActivityRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v3, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_c1

    .line 3341
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to retain child activities "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/app/ActivityThread$ActivityRecord;->intent:Landroid/content/Intent;

    invoke-static {v4}, Landroid/app/ActivityThread;->safeToComponentShortString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 3357
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1ab
    :try_start_1ab
    iget-object v2, v1, Landroid/app/ActivityThread$ActivityRecord;->window:Landroid/view/Window;

    if-eqz v2, :cond_1b4

    .line 3358
    iget-object v2, v1, Landroid/app/ActivityThread$ActivityRecord;->window:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->closeAllPanels()V
    :try_end_1b4
    .catch Landroid/app/SuperNotCalledException; {:try_start_1ab .. :try_end_1b4} :catch_f6
    .catch Ljava/lang/Exception; {:try_start_1ab .. :try_end_1b4} :catch_1ba

    .line 3370
    :cond_1b4
    iget-object v2, p0, Landroid/app/ActivityThread;->mActivities:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3372
    return-object v1

    .line 3362
    :catch_1ba
    move-exception v2

    move-object v0, v2

    .line 3363
    .restart local v0       #e:Ljava/lang/Exception;
    iget-object v2, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v3, v1, Landroid/app/ActivityThread$ActivityRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v3, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_1b4

    .line 3364
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to destroy activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/app/ActivityThread$ActivityRecord;->intent:Landroid/content/Intent;

    invoke-static {v4}, Landroid/app/ActivityThread;->safeToComponentShortString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private final performLaunchActivity(Landroid/app/ActivityThread$ActivityRecord;Landroid/content/Intent;)Landroid/app/Activity;
    .registers 27
    .parameter "r"
    .parameter "customIntent"

    .prologue
    .line 2295
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$ActivityRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v19, v0

    .line 2296
    .local v19, aInfo:Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$ActivityRecord;->packageInfo:Landroid/app/ActivityThread$PackageInfo;

    move-object v6, v0

    if-nez v6, :cond_20

    .line 2297
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v6, v0

    const/4 v7, 0x1

    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityThread;->getPackageInfo(Landroid/content/pm/ApplicationInfo;I)Landroid/app/ActivityThread$PackageInfo;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p1

    iput-object v0, v1, Landroid/app/ActivityThread$ActivityRecord;->packageInfo:Landroid/app/ActivityThread$PackageInfo;

    .line 2301
    :cond_20
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$ActivityRecord;->intent:Landroid/content/Intent;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v21

    .line 2302
    .local v21, component:Landroid/content/ComponentName;
    if-nez v21, :cond_48

    .line 2303
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$ActivityRecord;->intent:Landroid/content/Intent;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v21

    .line 2305
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$ActivityRecord;->intent:Landroid/content/Intent;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2308
    :cond_48
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$ActivityRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    if-eqz v6, :cond_68

    .line 2309
    new-instance v21, Landroid/content/ComponentName;

    .end local v21           #component:Landroid/content/ComponentName;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$ActivityRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$ActivityRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object v7, v0

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    move-object/from16 v0, v21

    move-object v1, v6

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2313
    .restart local v21       #component:Landroid/content/ComponentName;
    :cond_68
    const/4 v4, 0x0

    .line 2315
    .local v4, activity:Landroid/app/Activity;
    :try_start_69
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$ActivityRecord;->packageInfo:Landroid/app/ActivityThread$PackageInfo;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/app/ActivityThread$PackageInfo;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v20

    .line 2316
    .local v20, cl:Ljava/lang/ClassLoader;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    move-object v6, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$ActivityRecord;->intent:Landroid/content/Intent;

    move-object v8, v0

    move-object v0, v6

    move-object/from16 v1, v20

    move-object v2, v7

    move-object v3, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/Instrumentation;->newActivity(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Activity;

    move-result-object v4

    .line 2318
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$ActivityRecord;->intent:Landroid/content/Intent;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 2319
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$ActivityRecord;->state:Landroid/os/Bundle;

    move-object v6, v0

    if-eqz v6, :cond_a6

    .line 2320
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$ActivityRecord;->state:Landroid/os/Bundle;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_a6} :catch_184

    .line 2331
    .end local v20           #cl:Ljava/lang/ClassLoader;
    :cond_a6
    :try_start_a6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$ActivityRecord;->packageInfo:Landroid/app/ActivityThread$PackageInfo;

    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/app/ActivityThread$PackageInfo;->makeApplication(Z)Landroid/app/Application;

    move-result-object v10

    .line 2341
    .local v10, app:Landroid/app/Application;
    if-eqz v4, :cond_28d

    .line 2342
    new-instance v5, Landroid/app/ApplicationContext;

    invoke-direct {v5}, Landroid/app/ApplicationContext;-><init>()V

    .line 2343
    .local v5, appContext:Landroid/app/ApplicationContext;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$ActivityRecord;->packageInfo:Landroid/app/ActivityThread$PackageInfo;

    move-object v6, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$ActivityRecord;->token:Landroid/os/IBinder;

    move-object v7, v0

    move-object v0, v5

    move-object v1, v6

    move-object v2, v7

    move-object/from16 v3, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ApplicationContext;->init(Landroid/app/ActivityThread$PackageInfo;Landroid/os/IBinder;Landroid/app/ActivityThread;)V

    .line 2344
    invoke-virtual {v5, v4}, Landroid/app/ApplicationContext;->setOuterContext(Landroid/content/Context;)V

    .line 2345
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$ActivityRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object v6, v0

    invoke-virtual {v5}, Landroid/app/ApplicationContext;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v13

    .line 2346
    .local v13, title:Ljava/lang/CharSequence;
    new-instance v18, Landroid/content/res/Configuration;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    move-object v6, v0

    move-object/from16 v0, v18

    move-object v1, v6

    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 2347
    .local v18, config:Landroid/content/res/Configuration;
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityThread;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v7

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$ActivityRecord;->token:Landroid/os/IBinder;

    move-object v8, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/ActivityThread$ActivityRecord;->ident:I

    move v9, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$ActivityRecord;->intent:Landroid/content/Intent;

    move-object v11, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$ActivityRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object v12, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$ActivityRecord;->parent:Landroid/app/Activity;

    move-object v14, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$ActivityRecord;->embeddedID:Ljava/lang/String;

    move-object v15, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$ActivityRecord;->lastNonConfigurationInstance:Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$ActivityRecord;->lastNonConfigurationChildInstances:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v6, p0

    invoke-virtual/range {v4 .. v18}, Landroid/app/Activity;->attach(Landroid/content/Context;Landroid/app/ActivityThread;Landroid/app/Instrumentation;Landroid/os/IBinder;ILandroid/app/Application;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;Ljava/util/HashMap;Landroid/content/res/Configuration;)V

    .line 2352
    if-eqz p2, :cond_120

    .line 2353
    move-object/from16 v0, p2

    move-object v1, v4

    iput-object v0, v1, Landroid/app/Activity;->mIntent:Landroid/content/Intent;

    .line 2355
    :cond_120
    const/4 v6, 0x0

    move-object v0, v6

    move-object/from16 v1, p1

    iput-object v0, v1, Landroid/app/ActivityThread$ActivityRecord;->lastNonConfigurationInstance:Ljava/lang/Object;

    .line 2356
    const/4 v6, 0x0

    move-object v0, v6

    move-object/from16 v1, p1

    iput-object v0, v1, Landroid/app/ActivityThread$ActivityRecord;->lastNonConfigurationChildInstances:Ljava/util/HashMap;

    .line 2357
    const/4 v6, 0x0

    iput-boolean v6, v4, Landroid/app/Activity;->mStartedActivity:Z

    .line 2358
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$ActivityRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/content/pm/ActivityInfo;->getThemeResource()I

    move-result v23

    .line 2359
    .local v23, theme:I
    if-eqz v23, :cond_140

    .line 2360
    move-object v0, v4

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTheme(I)V

    .line 2363
    :cond_140
    const/4 v6, 0x0

    iput-boolean v6, v4, Landroid/app/Activity;->mCalled:Z

    .line 2364
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    move-object v6, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$ActivityRecord;->state:Landroid/os/Bundle;

    move-object v7, v0

    invoke-virtual {v6, v4, v7}, Landroid/app/Instrumentation;->callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 2365
    iget-boolean v6, v4, Landroid/app/Activity;->mCalled:Z

    if-nez v6, :cond_1c4

    .line 2366
    new-instance v6, Landroid/app/SuperNotCalledException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Activity "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$ActivityRecord;->intent:Landroid/content/Intent;

    move-object v8, v0

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " did not call through to super.onCreate()"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_180
    .catch Landroid/app/SuperNotCalledException; {:try_start_a6 .. :try_end_180} :catch_180
    .catch Ljava/lang/Exception; {:try_start_a6 .. :try_end_180} :catch_247

    .line 2396
    .end local v5           #appContext:Landroid/app/ApplicationContext;
    .end local v10           #app:Landroid/app/Application;
    .end local v13           #title:Ljava/lang/CharSequence;
    .end local v18           #config:Landroid/content/res/Configuration;
    .end local v23           #theme:I
    :catch_180
    move-exception v6

    move-object/from16 v22, v6

    .line 2397
    .local v22, e:Landroid/app/SuperNotCalledException;
    throw v22

    .line 2322
    .end local v22           #e:Landroid/app/SuperNotCalledException;
    :catch_184
    move-exception v6

    move-object/from16 v22, v6

    .line 2323
    .local v22, e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v4

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v6

    if-nez v6, :cond_a6

    .line 2324
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to instantiate activity "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 2370
    .end local v22           #e:Ljava/lang/Exception;
    .restart local v5       #appContext:Landroid/app/ApplicationContext;
    .restart local v10       #app:Landroid/app/Application;
    .restart local v13       #title:Ljava/lang/CharSequence;
    .restart local v18       #config:Landroid/content/res/Configuration;
    .restart local v23       #theme:I
    :cond_1c4
    :try_start_1c4
    move-object v0, v4

    move-object/from16 v1, p1

    iput-object v0, v1, Landroid/app/ActivityThread$ActivityRecord;->activity:Landroid/app/Activity;

    .line 2371
    const/4 v6, 0x1

    move v0, v6

    move-object/from16 v1, p1

    iput-boolean v0, v1, Landroid/app/ActivityThread$ActivityRecord;->stopped:Z

    .line 2372
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$ActivityRecord;->activity:Landroid/app/Activity;

    move-object v6, v0

    iget-boolean v6, v6, Landroid/app/Activity;->mFinished:Z

    if-nez v6, :cond_1e1

    .line 2373
    invoke-virtual {v4}, Landroid/app/Activity;->performStart()V

    .line 2374
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p1

    iput-boolean v0, v1, Landroid/app/ActivityThread$ActivityRecord;->stopped:Z

    .line 2376
    :cond_1e1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$ActivityRecord;->activity:Landroid/app/Activity;

    move-object v6, v0

    iget-boolean v6, v6, Landroid/app/Activity;->mFinished:Z

    if-nez v6, :cond_1fe

    .line 2377
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$ActivityRecord;->state:Landroid/os/Bundle;

    move-object v6, v0

    if-eqz v6, :cond_1fe

    .line 2378
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    move-object v6, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$ActivityRecord;->state:Landroid/os/Bundle;

    move-object v7, v0

    invoke-virtual {v6, v4, v7}, Landroid/app/Instrumentation;->callActivityOnRestoreInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 2381
    :cond_1fe
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$ActivityRecord;->activity:Landroid/app/Activity;

    move-object v6, v0

    iget-boolean v6, v6, Landroid/app/Activity;->mFinished:Z

    if-nez v6, :cond_287

    .line 2382
    const/4 v6, 0x0

    iput-boolean v6, v4, Landroid/app/Activity;->mCalled:Z

    .line 2383
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    move-object v6, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$ActivityRecord;->state:Landroid/os/Bundle;

    move-object v7, v0

    invoke-virtual {v6, v4, v7}, Landroid/app/Instrumentation;->callActivityOnPostCreate(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 2384
    iget-boolean v6, v4, Landroid/app/Activity;->mCalled:Z

    if-nez v6, :cond_287

    .line 2385
    new-instance v6, Landroid/app/SuperNotCalledException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Activity "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$ActivityRecord;->intent:Landroid/content/Intent;

    move-object v8, v0

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " did not call through to super.onPostCreate()"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_247
    .catch Landroid/app/SuperNotCalledException; {:try_start_1c4 .. :try_end_247} :catch_180
    .catch Ljava/lang/Exception; {:try_start_1c4 .. :try_end_247} :catch_247

    .line 2399
    .end local v5           #appContext:Landroid/app/ApplicationContext;
    .end local v10           #app:Landroid/app/Application;
    .end local v13           #title:Ljava/lang/CharSequence;
    .end local v18           #config:Landroid/content/res/Configuration;
    .end local v23           #theme:I
    :catch_247
    move-exception v6

    move-object/from16 v22, v6

    .line 2400
    .restart local v22       #e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v4

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v6

    if-nez v6, :cond_2a4

    .line 2401
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to start activity "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 2390
    .end local v22           #e:Ljava/lang/Exception;
    .restart local v5       #appContext:Landroid/app/ApplicationContext;
    .restart local v10       #app:Landroid/app/Application;
    .restart local v13       #title:Ljava/lang/CharSequence;
    .restart local v18       #config:Landroid/content/res/Configuration;
    .restart local v23       #theme:I
    :cond_287
    const/4 v6, 0x0

    :try_start_288
    move-object v0, v6

    move-object/from16 v1, p1

    iput-object v0, v1, Landroid/app/ActivityThread$ActivityRecord;->state:Landroid/os/Bundle;

    .line 2392
    .end local v5           #appContext:Landroid/app/ApplicationContext;
    .end local v13           #title:Ljava/lang/CharSequence;
    .end local v18           #config:Landroid/content/res/Configuration;
    .end local v23           #theme:I
    :cond_28d
    const/4 v6, 0x1

    move v0, v6

    move-object/from16 v1, p1

    iput-boolean v0, v1, Landroid/app/ActivityThread$ActivityRecord;->paused:Z

    .line 2394
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ActivityThread;->mActivities:Ljava/util/HashMap;

    move-object v6, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$ActivityRecord;->token:Landroid/os/IBinder;

    move-object v7, v0

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2a4
    .catch Landroid/app/SuperNotCalledException; {:try_start_288 .. :try_end_2a4} :catch_180
    .catch Ljava/lang/Exception; {:try_start_288 .. :try_end_2a4} :catch_247

    .line 2407
    .end local v10           #app:Landroid/app/Application;
    :cond_2a4
    return-object v4
.end method

.method private final performStopActivityInner(Landroid/app/ActivityThread$ActivityRecord;Landroid/app/ActivityThread$StopInfo;Z)V
    .registers 9
    .parameter "r"
    .parameter "info"
    .parameter "keepShown"

    .prologue
    const/4 v3, 0x1

    const-string v4, ": "

    .line 3089
    if-eqz p1, :cond_11

    .line 3090
    if-nez p3, :cond_3d

    iget-boolean v1, p1, Landroid/app/ActivityThread$ActivityRecord;->stopped:Z

    if-eqz v1, :cond_3d

    .line 3091
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityRecord;->activity:Landroid/app/Activity;

    iget-boolean v1, v1, Landroid/app/Activity;->mFinished:Z

    if-eqz v1, :cond_12

    .line 3135
    :cond_11
    :goto_11
    return-void

    .line 3097
    :cond_12
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Performing stop of activity that is not resumed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 3100
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "ActivityThread"

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3103
    .end local v0           #e:Ljava/lang/RuntimeException;
    :cond_3d
    if-eqz p2, :cond_47

    .line 3107
    :try_start_3f
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->onCreateDescription()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p2, Landroid/app/ActivityThread$StopInfo;->description:Ljava/lang/CharSequence;
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_47} :catch_53

    .line 3118
    :cond_47
    if-nez p3, :cond_50

    .line 3121
    :try_start_49
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->performStop()V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_4e} :catch_90

    .line 3130
    :cond_4e
    iput-boolean v3, p1, Landroid/app/ActivityThread$ActivityRecord;->stopped:Z

    .line 3133
    :cond_50
    iput-boolean v3, p1, Landroid/app/ActivityThread$ActivityRecord;->paused:Z

    goto :goto_11

    .line 3108
    :catch_53
    move-exception v1

    move-object v0, v1

    .line 3109
    .local v0, e:Ljava/lang/Exception;
    iget-object v1, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v2, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_47

    .line 3110
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to save state of activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/app/ActivityThread$ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 3122
    .end local v0           #e:Ljava/lang/Exception;
    :catch_90
    move-exception v1

    move-object v0, v1

    .line 3123
    .restart local v0       #e:Ljava/lang/Exception;
    iget-object v1, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v2, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_4e

    .line 3124
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to stop activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/app/ActivityThread$ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private final queueOrSendMessage(ILjava/lang/Object;)V
    .registers 4
    .parameter "what"
    .parameter "obj"

    .prologue
    const/4 v0, 0x0

    .line 2262
    invoke-direct {p0, p1, p2, v0, v0}, Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;II)V

    .line 2263
    return-void
.end method

.method private final queueOrSendMessage(ILjava/lang/Object;I)V
    .registers 5
    .parameter "what"
    .parameter "obj"
    .parameter "arg1"

    .prologue
    .line 2266
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;II)V

    .line 2267
    return-void
.end method

.method private final queueOrSendMessage(ILjava/lang/Object;II)V
    .registers 7
    .parameter "what"
    .parameter "obj"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 2270
    monitor-enter p0

    .line 2274
    :try_start_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2275
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 2276
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2277
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 2278
    iput p4, v0, Landroid/os/Message;->arg2:I

    .line 2279
    iget-object v1, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    invoke-virtual {v1, v0}, Landroid/app/ActivityThread$H;->sendMessage(Landroid/os/Message;)Z

    .line 2280
    monitor-exit p0

    .line 2281
    return-void

    .line 2280
    .end local v0           #msg:Landroid/os/Message;
    :catchall_14
    move-exception v1

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_14

    throw v1
.end method

.method private static safeToComponentShortString(Landroid/content/Intent;)Ljava/lang/String;
    .registers 3
    .parameter "intent"

    .prologue
    .line 3376
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 3377
    .local v0, component:Landroid/content/ComponentName;
    if-nez v0, :cond_9

    const-string v1, "[Unknown]"

    :goto_8
    return-object v1

    :cond_9
    invoke-virtual {v0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v1

    goto :goto_8
.end method

.method public static final systemMain()Landroid/app/ActivityThread;
    .registers 2

    .prologue
    .line 4183
    new-instance v0, Landroid/app/ActivityThread;

    invoke-direct {v0}, Landroid/app/ActivityThread;-><init>()V

    .line 4184
    .local v0, thread:Landroid/app/ActivityThread;
    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/app/ActivityThread;->attach(Z)V

    .line 4185
    return-object v0
.end method

.method private final updateVisibility(Landroid/app/ActivityThread$ActivityRecord;Z)V
    .registers 7
    .parameter "r"
    .parameter "show"

    .prologue
    const/4 v3, 0x1

    .line 3138
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityRecord;->activity:Landroid/app/Activity;

    iget-object v0, v1, Landroid/app/Activity;->mDecor:Landroid/view/View;

    .line 3139
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_32

    .line 3140
    if-eqz p2, :cond_33

    .line 3141
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityRecord;->activity:Landroid/app/Activity;

    iget-boolean v1, v1, Landroid/app/Activity;->mVisibleFromServer:Z

    if-nez v1, :cond_24

    .line 3142
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityRecord;->activity:Landroid/app/Activity;

    iput-boolean v3, v1, Landroid/app/Activity;->mVisibleFromServer:Z

    .line 3143
    iget v1, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    .line 3144
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityRecord;->activity:Landroid/app/Activity;

    iget-boolean v1, v1, Landroid/app/Activity;->mVisibleFromClient:Z

    if-eqz v1, :cond_24

    .line 3145
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->makeVisible()V

    .line 3148
    :cond_24
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityRecord;->newConfig:Landroid/content/res/Configuration;

    if-eqz v1, :cond_32

    .line 3149
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityRecord;->activity:Landroid/app/Activity;

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityRecord;->newConfig:Landroid/content/res/Configuration;

    invoke-direct {p0, v1, v2}, Landroid/app/ActivityThread;->performConfigurationChanged(Landroid/content/ComponentCallbacks;Landroid/content/res/Configuration;)V

    .line 3150
    const/4 v1, 0x0

    iput-object v1, p1, Landroid/app/ActivityThread$ActivityRecord;->newConfig:Landroid/content/res/Configuration;

    .line 3160
    :cond_32
    :goto_32
    return-void

    .line 3153
    :cond_33
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityRecord;->activity:Landroid/app/Activity;

    iget-boolean v1, v1, Landroid/app/Activity;->mVisibleFromServer:Z

    if-eqz v1, :cond_32

    .line 3154
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityRecord;->activity:Landroid/app/Activity;

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/app/Activity;->mVisibleFromServer:Z

    .line 3155
    iget v1, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    sub-int/2addr v1, v3

    iput v1, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    .line 3156
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_32
.end method


# virtual methods
.method public final acquireProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;
    .registers 10
    .parameter "c"
    .parameter "name"

    .prologue
    .line 3967
    invoke-direct {p0, p1, p2}, Landroid/app/ActivityThread;->getProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v2

    .line 3968
    .local v2, provider:Landroid/content/IContentProvider;
    if-nez v2, :cond_8

    .line 3969
    const/4 v3, 0x0

    .line 3979
    :goto_7
    return-object v3

    .line 3970
    :cond_8
    invoke-interface {v2}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 3971
    .local v0, jBinder:Landroid/os/IBinder;
    iget-object v3, p0, Landroid/app/ActivityThread;->mProviderMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 3972
    :try_start_f
    iget-object v4, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityThread$ProviderRefCount;

    .line 3973
    .local v1, prc:Landroid/app/ActivityThread$ProviderRefCount;
    if-nez v1, :cond_27

    .line 3974
    iget-object v4, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Ljava/util/HashMap;

    new-instance v5, Landroid/app/ActivityThread$ProviderRefCount;

    const/4 v6, 0x1

    invoke-direct {v5, p0, v6}, Landroid/app/ActivityThread$ProviderRefCount;-><init>(Landroid/app/ActivityThread;I)V

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3978
    :goto_24
    monitor-exit v3

    move-object v3, v2

    .line 3979
    goto :goto_7

    .line 3976
    :cond_27
    iget v4, v1, Landroid/app/ActivityThread$ProviderRefCount;->count:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v1, Landroid/app/ActivityThread$ProviderRefCount;->count:I

    goto :goto_24

    .line 3978
    .end local v1           #prc:Landroid/app/ActivityThread$ProviderRefCount;
    :catchall_2e
    move-exception v4

    monitor-exit v3
    :try_end_30
    .catchall {:try_start_f .. :try_end_30} :catchall_2e

    throw v4
.end method

.method collectComponentCallbacksLocked(ZLandroid/content/res/Configuration;)Ljava/util/ArrayList;
    .registers 13
    .parameter "allActivities"
    .parameter "newConfig"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/content/res/Configuration;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentCallbacks;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3529
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3532
    .local v3, callbacks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ComponentCallbacks;>;"
    iget-object v8, p0, Landroid/app/ActivityThread;->mActivities:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    if-lez v8, :cond_3e

    .line 3533
    iget-object v8, p0, Landroid/app/ActivityThread;->mActivities:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 3534
    .local v5, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/app/ActivityThread$ActivityRecord;>;"
    :cond_17
    :goto_17
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3e

    .line 3535
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityThread$ActivityRecord;

    .line 3536
    .local v2, ar:Landroid/app/ActivityThread$ActivityRecord;
    iget-object v1, v2, Landroid/app/ActivityThread$ActivityRecord;->activity:Landroid/app/Activity;

    .line 3537
    .local v1, a:Landroid/app/Activity;
    if-eqz v1, :cond_17

    .line 3538
    iget-object v8, v2, Landroid/app/ActivityThread$ActivityRecord;->activity:Landroid/app/Activity;

    iget-boolean v8, v8, Landroid/app/Activity;->mFinished:Z

    if-nez v8, :cond_39

    if-nez p1, :cond_35

    if-eqz v1, :cond_39

    iget-boolean v8, v2, Landroid/app/ActivityThread$ActivityRecord;->paused:Z

    if-nez v8, :cond_39

    .line 3542
    :cond_35
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_17

    .line 3543
    :cond_39
    if-eqz p2, :cond_17

    .line 3549
    iput-object p2, v2, Landroid/app/ActivityThread$ActivityRecord;->newConfig:Landroid/content/res/Configuration;

    goto :goto_17

    .line 3554
    .end local v1           #a:Landroid/app/Activity;
    .end local v2           #ar:Landroid/app/ActivityThread$ActivityRecord;
    .end local v5           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/app/ActivityThread$ActivityRecord;>;"
    :cond_3e
    iget-object v8, p0, Landroid/app/ActivityThread;->mServices:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    if-lez v8, :cond_5e

    .line 3555
    iget-object v8, p0, Landroid/app/ActivityThread;->mServices:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 3556
    .local v7, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/app/Service;>;"
    :goto_50
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5e

    .line 3557
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_50

    .line 3560
    .end local v7           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/app/Service;>;"
    :cond_5e
    iget-object v9, p0, Landroid/app/ActivityThread;->mProviderMap:Ljava/util/HashMap;

    monitor-enter v9

    .line 3561
    :try_start_61
    iget-object v8, p0, Landroid/app/ActivityThread;->mLocalProviders:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    if-lez v8, :cond_88

    .line 3562
    iget-object v8, p0, Landroid/app/ActivityThread;->mLocalProviders:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 3563
    .local v6, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/app/ActivityThread$ProviderRecord;>;"
    :goto_73
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_88

    .line 3564
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityThread$ProviderRecord;

    iget-object v8, v8, Landroid/app/ActivityThread$ProviderRecord;->mLocalProvider:Landroid/content/ContentProvider;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_73

    .line 3567
    .end local v6           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/app/ActivityThread$ProviderRecord;>;"
    :catchall_85
    move-exception v8

    monitor-exit v9
    :try_end_87
    .catchall {:try_start_61 .. :try_end_87} :catchall_85

    throw v8

    :cond_88
    :try_start_88
    monitor-exit v9
    :try_end_89
    .catchall {:try_start_88 .. :try_end_89} :catchall_85

    .line 3568
    iget-object v8, p0, Landroid/app/ActivityThread;->mAllApplications:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3569
    .local v0, N:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_90
    if-ge v4, v0, :cond_9e

    .line 3570
    iget-object v8, p0, Landroid/app/ActivityThread;->mAllApplications:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3569
    add-int/lit8 v4, v4, 0x1

    goto :goto_90

    .line 3573
    :cond_9e
    return-object v3
.end method

.method doGcIfNeeded()V
    .registers 7

    .prologue
    .line 2197
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/app/ActivityThread;->mGcIdlerScheduled:Z

    .line 2198
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2201
    .local v0, now:J
    invoke-static {}, Lcom/android/internal/os/BinderInternal;->getLastGcTime()J

    move-result-wide v2

    const-wide/16 v4, 0x1388

    add-long/2addr v2, v4

    cmp-long v2, v2, v0

    if-gez v2, :cond_17

    .line 2203
    const-string v2, "bg"

    invoke-static {v2}, Lcom/android/internal/os/BinderInternal;->forceGc(Ljava/lang/String;)V

    .line 2205
    :cond_17
    return-void
.end method

.method final finishInstrumentation(ILandroid/os/Bundle;)V
    .registers 5
    .parameter "resultCode"
    .parameter "results"

    .prologue
    .line 3882
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 3883
    .local v0, am:Landroid/app/IActivityManager;
    iget-object v1, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v1, v1, Landroid/app/ActivityThread$AppBindData;->profileFile:Ljava/lang/String;

    if-eqz v1, :cond_13

    iget-object v1, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-boolean v1, v1, Landroid/app/ActivityThread$AppBindData;->handlingProfiling:Z

    if-eqz v1, :cond_13

    .line 3884
    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    .line 3889
    :cond_13
    :try_start_13
    iget-object v1, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    invoke-interface {v0, v1, p1, p2}, Landroid/app/IActivityManager;->finishInstrumentation(Landroid/app/IApplicationThread;ILandroid/os/Bundle;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_18} :catch_19

    .line 3892
    :goto_18
    return-void

    .line 3890
    :catch_19
    move-exception v1

    goto :goto_18
.end method

.method public final getActivity(Landroid/os/IBinder;)Landroid/app/Activity;
    .registers 3
    .parameter "token"

    .prologue
    .line 2246
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/app/ActivityThread$ActivityRecord;

    iget-object v0, p0, Landroid/app/ActivityThread$ActivityRecord;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method public getApplication()Landroid/app/Application;
    .registers 2

    .prologue
    .line 2156
    iget-object v0, p0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    return-object v0
.end method

.method public getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;
    .registers 2

    .prologue
    .line 2131
    iget-object v0, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    return-object v0
.end method

.method public getConfiguration()Landroid/content/res/Configuration;
    .registers 2

    .prologue
    .line 2140
    iget-object v0, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method getDisplayMetricsLocked(Z)Landroid/util/DisplayMetrics;
    .registers 5
    .parameter "forceUpdate"

    .prologue
    .line 154
    iget-object v2, p0, Landroid/app/ActivityThread;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    if-eqz v2, :cond_9

    if-nez p1, :cond_9

    .line 155
    iget-object v2, p0, Landroid/app/ActivityThread;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 166
    :goto_8
    return-object v2

    .line 157
    :cond_9
    iget-object v2, p0, Landroid/app/ActivityThread;->mDisplay:Landroid/view/Display;

    if-nez v2, :cond_17

    .line 158
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v1

    .line 159
    .local v1, wm:Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    iput-object v2, p0, Landroid/app/ActivityThread;->mDisplay:Landroid/view/Display;

    .line 161
    .end local v1           #wm:Landroid/view/WindowManager;
    :cond_17
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 162
    .local v0, metrics:Landroid/util/DisplayMetrics;
    iget-object v2, p0, Landroid/app/ActivityThread;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    move-object v2, v0

    .line 166
    goto :goto_8
.end method

.method final getHandler()Landroid/os/Handler;
    .registers 2

    .prologue
    .line 226
    iget-object v0, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    return-object v0
.end method

.method public getInstrumentation()Landroid/app/Instrumentation;
    .registers 2

    .prologue
    .line 2136
    iget-object v0, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    return-object v0
.end method

.method public getLooper()Landroid/os/Looper;
    .registers 2

    .prologue
    .line 2152
    iget-object v0, p0, Landroid/app/ActivityThread;->mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method public final getPackageInfo(Landroid/content/pm/ApplicationInfo;I)Landroid/app/ActivityThread$PackageInfo;
    .registers 12
    .parameter "ai"
    .parameter "flags"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const-string v8, ")"

    const-string v7, " (with uid "

    .line 2053
    and-int/lit8 v3, p2, 0x1

    if-eqz v3, :cond_8e

    move v0, v5

    .line 2054
    .local v0, includeCode:Z
    :goto_b
    if-eqz v0, :cond_91

    iget v3, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eqz v3, :cond_91

    iget v3, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v4, 0x3e8

    if-eq v3, v4, :cond_91

    iget-object v3, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    if-eqz v3, :cond_25

    iget v3, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v4, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v4, v4, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v3, v4, :cond_91

    :cond_25
    move v2, v5

    .line 2057
    .local v2, securityViolation:Z
    :goto_26
    and-int/lit8 v3, p2, 0x3

    if-ne v3, v5, :cond_93

    .line 2060
    if-eqz v2, :cond_93

    .line 2061
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Requesting code from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (with uid "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2063
    .local v1, msg:Ljava/lang/String;
    iget-object v3, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    if-eqz v3, :cond_88

    .line 2064
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to be run in process "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v4, v4, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (with uid "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v4, v4, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2068
    :cond_88
    new-instance v3, Ljava/lang/SecurityException;

    invoke-direct {v3, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .end local v0           #includeCode:Z
    .end local v1           #msg:Ljava/lang/String;
    .end local v2           #securityViolation:Z
    :cond_8e
    move v0, v6

    .line 2053
    goto/16 :goto_b

    .restart local v0       #includeCode:Z
    :cond_91
    move v2, v6

    .line 2054
    goto :goto_26

    .line 2071
    .restart local v2       #securityViolation:Z
    :cond_93
    const/4 v3, 0x0

    invoke-direct {p0, p1, v3, v2, v0}, Landroid/app/ActivityThread;->getPackageInfo(Landroid/content/pm/ApplicationInfo;Ljava/lang/ClassLoader;ZZ)Landroid/app/ActivityThread$PackageInfo;

    move-result-object v3

    return-object v3
.end method

.method public final getPackageInfo(Ljava/lang/String;I)Landroid/app/ActivityThread$PackageInfo;
    .registers 10
    .parameter "packageName"
    .parameter "flags"

    .prologue
    const/4 v5, 0x0

    .line 2015
    iget-object v4, p0, Landroid/app/ActivityThread;->mPackages:Ljava/util/HashMap;

    monitor-enter v4

    .line 2017
    and-int/lit8 v3, p2, 0x1

    if-eqz v3, :cond_73

    .line 2018
    :try_start_8
    iget-object v3, p0, Landroid/app/ActivityThread;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 2022
    .local v2, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/app/ActivityThread$PackageInfo;>;"
    :goto_10
    if-eqz v2, :cond_7c

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityThread$PackageInfo;

    move-object v1, v3

    .line 2024
    .local v1, packageInfo:Landroid/app/ActivityThread$PackageInfo;
    :goto_19
    if-eqz v1, :cond_81

    invoke-static {v1}, Landroid/app/ActivityThread$PackageInfo;->access$4200(Landroid/app/ActivityThread$PackageInfo;)Landroid/content/res/Resources;

    move-result-object v3

    if-eqz v3, :cond_2f

    invoke-static {v1}, Landroid/app/ActivityThread$PackageInfo;->access$4200(Landroid/app/ActivityThread$PackageInfo;)Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/AssetManager;->isUpToDate()Z

    move-result v3

    if-eqz v3, :cond_81

    .line 2026
    :cond_2f
    invoke-virtual {v1}, Landroid/app/ActivityThread$PackageInfo;->isSecurityViolation()Z

    move-result v3

    if-eqz v3, :cond_7e

    and-int/lit8 v3, p2, 0x2

    if-nez v3, :cond_7e

    .line 2028
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Requesting code from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to be run in process "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v6, v6, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v6, v6, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2036
    .end local v1           #packageInfo:Landroid/app/ActivityThread$PackageInfo;
    .end local v2           #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/app/ActivityThread$PackageInfo;>;"
    :catchall_70
    move-exception v3

    monitor-exit v4
    :try_end_72
    .catchall {:try_start_8 .. :try_end_72} :catchall_70

    throw v3

    .line 2020
    :cond_73
    :try_start_73
    iget-object v3, p0, Landroid/app/ActivityThread;->mResourcePackages:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .restart local v2       #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/app/ActivityThread$PackageInfo;>;"
    goto :goto_10

    :cond_7c
    move-object v1, v5

    .line 2022
    goto :goto_19

    .line 2034
    .restart local v1       #packageInfo:Landroid/app/ActivityThread$PackageInfo;
    :cond_7e
    monitor-exit v4

    move-object v3, v1

    .line 2049
    :goto_80
    return-object v3

    .line 2036
    :cond_81
    monitor-exit v4
    :try_end_82
    .catchall {:try_start_73 .. :try_end_82} :catchall_70

    .line 2038
    const/4 v0, 0x0

    .line 2040
    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    :try_start_83
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    const/16 v4, 0x400

    invoke-interface {v3, p1, v4}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_8c
    .catch Landroid/os/RemoteException; {:try_start_83 .. :try_end_8c} :catch_96

    move-result-object v0

    .line 2045
    :goto_8d
    if-eqz v0, :cond_94

    .line 2046
    invoke-virtual {p0, v0, p2}, Landroid/app/ActivityThread;->getPackageInfo(Landroid/content/pm/ApplicationInfo;I)Landroid/app/ActivityThread$PackageInfo;

    move-result-object v3

    goto :goto_80

    :cond_94
    move-object v3, v5

    .line 2049
    goto :goto_80

    .line 2042
    :catch_96
    move-exception v3

    goto :goto_8d
.end method

.method public final getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;)Landroid/app/ActivityThread$PackageInfo;
    .registers 5
    .parameter "ai"

    .prologue
    .line 2075
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/app/ActivityThread;->getPackageInfo(Landroid/content/pm/ApplicationInfo;Ljava/lang/ClassLoader;ZZ)Landroid/app/ActivityThread$PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method public getProcessName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2160
    iget-object v0, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v0, v0, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileFilePath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2148
    iget-object v0, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v0, v0, Landroid/app/ActivityThread$AppBindData;->profileFile:Ljava/lang/String;

    return-object v0
.end method

.method public getSystemContext()Landroid/app/ApplicationContext;
    .registers 6

    .prologue
    .line 2164
    monitor-enter p0

    .line 2165
    :try_start_1
    sget-object v2, Landroid/app/ActivityThread;->mSystemContext:Landroid/app/ApplicationContext;

    if-nez v2, :cond_26

    .line 2166
    invoke-static {p0}, Landroid/app/ApplicationContext;->createSystemContext(Landroid/app/ActivityThread;)Landroid/app/ApplicationContext;

    move-result-object v0

    .line 2168
    .local v0, context:Landroid/app/ApplicationContext;
    new-instance v1, Landroid/app/ActivityThread$PackageInfo;

    const-string v2, "android"

    invoke-direct {v1, p0, v2, v0}, Landroid/app/ActivityThread$PackageInfo;-><init>(Landroid/app/ActivityThread;Ljava/lang/String;Landroid/content/Context;)V

    .line 2169
    .local v1, info:Landroid/app/ActivityThread$PackageInfo;
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/ApplicationContext;->init(Landroid/app/ActivityThread$PackageInfo;Landroid/os/IBinder;Landroid/app/ActivityThread;)V

    .line 2170
    invoke-virtual {v0}, Landroid/app/ApplicationContext;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/ActivityThread;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Landroid/app/ActivityThread;->getDisplayMetricsLocked(Z)Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 2172
    sput-object v0, Landroid/app/ActivityThread;->mSystemContext:Landroid/app/ApplicationContext;

    .line 2176
    .end local v0           #context:Landroid/app/ApplicationContext;
    .end local v1           #info:Landroid/app/ActivityThread$PackageInfo;
    :cond_26
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_2a

    .line 2177
    sget-object v2, Landroid/app/ActivityThread;->mSystemContext:Landroid/app/ApplicationContext;

    return-object v2

    .line 2176
    :catchall_2a
    move-exception v2

    :try_start_2b
    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw v2
.end method

.method getTopLevelResources(Ljava/lang/String;Landroid/app/ActivityThread$PackageInfo;)Landroid/content/res/Resources;
    .registers 4
    .parameter "resDir"
    .parameter "pkgInfo"

    .prologue
    .line 222
    invoke-static {p2}, Landroid/app/ActivityThread$PackageInfo;->access$000(Landroid/app/ActivityThread$PackageInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/app/ActivityThread;->getTopLevelResources(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;)Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method getTopLevelResources(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;)Landroid/content/res/Resources;
    .registers 11
    .parameter "resDir"
    .parameter "compInfo"

    .prologue
    const/4 v7, 0x0

    .line 177
    iget-object v6, p0, Landroid/app/ActivityThread;->mPackages:Ljava/util/HashMap;

    monitor-enter v6

    .line 179
    :try_start_4
    new-instance v1, Landroid/app/ActivityThread$ResourcesKey;

    iget v5, p2, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-direct {v1, p1, v5}, Landroid/app/ActivityThread$ResourcesKey;-><init>(Ljava/lang/String;F)V

    .line 184
    .local v1, key:Landroid/app/ActivityThread$ResourcesKey;
    iget-object v5, p0, Landroid/app/ActivityThread;->mActiveResources:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    .line 185
    .local v4, wr:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    if-eqz v4, :cond_2b

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/res/Resources;

    move-object v3, v5

    .line 186
    .local v3, r:Landroid/content/res/Resources;
    :goto_1c
    if-eqz v3, :cond_2d

    invoke-virtual {v3}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/AssetManager;->isUpToDate()Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 191
    monitor-exit v6

    move-object v5, v3

    .line 214
    :goto_2a
    return-object v5

    .end local v3           #r:Landroid/content/res/Resources;
    :cond_2b
    move-object v3, v7

    .line 185
    goto :goto_1c

    .line 199
    .restart local v3       #r:Landroid/content/res/Resources;
    :cond_2d
    new-instance v0, Landroid/content/res/AssetManager;

    invoke-direct {v0}, Landroid/content/res/AssetManager;-><init>()V

    .line 200
    .local v0, assets:Landroid/content/res/AssetManager;
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_3b

    .line 201
    monitor-exit v6

    move-object v5, v7

    goto :goto_2a

    .line 205
    :cond_3b
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Landroid/app/ActivityThread;->getDisplayMetricsLocked(Z)Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 206
    .local v2, metrics:Landroid/util/DisplayMetrics;
    new-instance v3, Landroid/content/res/Resources;

    .end local v3           #r:Landroid/content/res/Resources;
    invoke-virtual {p0}, Landroid/app/ActivityThread;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-direct {v3, v0, v2, v5, p2}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    .line 213
    .restart local v3       #r:Landroid/content/res/Resources;
    iget-object v5, p0, Landroid/app/ActivityThread;->mActiveResources:Ljava/util/HashMap;

    new-instance v7, Ljava/lang/ref/WeakReference;

    invoke-direct {v7, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v5, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    monitor-exit v6

    move-object v5, v3

    goto :goto_2a

    .line 215
    .end local v0           #assets:Landroid/content/res/AssetManager;
    .end local v1           #key:Landroid/app/ActivityThread$ResourcesKey;
    .end local v2           #metrics:Landroid/util/DisplayMetrics;
    .end local v3           #r:Landroid/content/res/Resources;
    .end local v4           #wr:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    :catchall_56
    move-exception v5

    monitor-exit v6
    :try_end_58
    .catchall {:try_start_4 .. :try_end_58} :catchall_56

    throw v5
.end method

.method final handleActivityConfigurationChanged(Landroid/os/IBinder;)V
    .registers 5
    .parameter "token"

    .prologue
    .line 3678
    iget-object v1, p0, Landroid/app/ActivityThread;->mActivities:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityRecord;

    .line 3679
    .local v0, r:Landroid/app/ActivityThread$ActivityRecord;
    if-eqz v0, :cond_e

    iget-object v1, v0, Landroid/app/ActivityThread$ActivityRecord;->activity:Landroid/app/Activity;

    if-nez v1, :cond_f

    .line 3684
    :cond_e
    :goto_e
    return-void

    .line 3683
    :cond_f
    iget-object v1, v0, Landroid/app/ActivityThread$ActivityRecord;->activity:Landroid/app/Activity;

    iget-object v2, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    invoke-direct {p0, v1, v2}, Landroid/app/ActivityThread;->performConfigurationChanged(Landroid/content/ComponentCallbacks;Landroid/content/res/Configuration;)V

    goto :goto_e
.end method

.method final handleConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 11
    .parameter "config"

    .prologue
    .line 3623
    iget-object v7, p0, Landroid/app/ActivityThread;->mRelaunchingActivities:Ljava/util/ArrayList;

    monitor-enter v7

    .line 3624
    :try_start_3
    iget-object v8, p0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    if-eqz v8, :cond_c

    .line 3625
    iget-object p1, p0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    .line 3626
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    .line 3628
    :cond_c
    monitor-exit v7
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_5e

    .line 3630
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3633
    .local v1, callbacks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ComponentCallbacks;>;"
    iget-object v7, p0, Landroid/app/ActivityThread;->mPackages:Ljava/util/HashMap;

    monitor-enter v7

    .line 3634
    :try_start_15
    iget-object v8, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    if-nez v8, :cond_20

    .line 3635
    new-instance v8, Landroid/content/res/Configuration;

    invoke-direct {v8}, Landroid/content/res/Configuration;-><init>()V

    iput-object v8, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    .line 3637
    :cond_20
    iget-object v8, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v8, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 3638
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Landroid/app/ActivityThread;->getDisplayMetricsLocked(Z)Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 3641
    .local v2, dm:Landroid/util/DisplayMetrics;
    iget-object v8, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v8, :cond_33

    .line 3642
    iget-object v8, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v8}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 3645
    :cond_33
    invoke-static {p1, v2}, Landroid/content/res/Resources;->updateSystemConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 3647
    invoke-static {}, Landroid/app/ApplicationContext$ApplicationPackageManager;->configurationChanged()V

    .line 3650
    iget-object v8, p0, Landroid/app/ActivityThread;->mActiveResources:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 3654
    .local v4, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;>;"
    :goto_43
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_65

    .line 3655
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ref/WeakReference;

    .line 3656
    .local v6, v:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/res/Resources;

    .line 3657
    .local v5, r:Landroid/content/res/Resources;
    if-eqz v5, :cond_61

    .line 3658
    invoke-virtual {v5, p1, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    goto :goto_43

    .line 3669
    .end local v2           #dm:Landroid/util/DisplayMetrics;
    .end local v4           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;>;"
    .end local v5           #r:Landroid/content/res/Resources;
    .end local v6           #v:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    :catchall_5b
    move-exception v8

    monitor-exit v7
    :try_end_5d
    .catchall {:try_start_15 .. :try_end_5d} :catchall_5b

    throw v8

    .line 3628
    .end local v1           #callbacks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ComponentCallbacks;>;"
    :catchall_5e
    move-exception v8

    :try_start_5f
    monitor-exit v7
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5e

    throw v8

    .line 3663
    .restart local v1       #callbacks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ComponentCallbacks;>;"
    .restart local v2       #dm:Landroid/util/DisplayMetrics;
    .restart local v4       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;>;"
    .restart local v5       #r:Landroid/content/res/Resources;
    .restart local v6       #v:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    :cond_61
    :try_start_61
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_43

    .line 3668
    .end local v5           #r:Landroid/content/res/Resources;
    .end local v6           #v:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    :cond_65
    const/4 v8, 0x0

    invoke-virtual {p0, v8, p1}, Landroid/app/ActivityThread;->collectComponentCallbacksLocked(ZLandroid/content/res/Configuration;)Ljava/util/ArrayList;

    move-result-object v1

    .line 3669
    monitor-exit v7
    :try_end_6b
    .catchall {:try_start_61 .. :try_end_6b} :catchall_5b

    .line 3671
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3672
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_70
    if-ge v3, v0, :cond_7e

    .line 3673
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentCallbacks;

    invoke-direct {p0, v7, p1}, Landroid/app/ActivityThread;->performConfigurationChanged(Landroid/content/ComponentCallbacks;Landroid/content/res/Configuration;)V

    .line 3672
    add-int/lit8 v3, v3, 0x1

    goto :goto_70

    .line 3675
    :cond_7e
    return-void
.end method

.method final handleLowMemory()V
    .registers 8

    .prologue
    .line 3707
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3710
    .local v1, callbacks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ComponentCallbacks;>;"
    iget-object v4, p0, Landroid/app/ActivityThread;->mPackages:Ljava/util/HashMap;

    monitor-enter v4

    .line 3711
    const/4 v5, 0x1

    const/4 v6, 0x0

    :try_start_a
    invoke-virtual {p0, v5, v6}, Landroid/app/ActivityThread;->collectComponentCallbacksLocked(ZLandroid/content/res/Configuration;)Ljava/util/ArrayList;

    move-result-object v1

    .line 3712
    monitor-exit v4
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_22

    .line 3714
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3715
    .local v0, N:I
    const/4 v2, 0x0

    .end local p0
    .local v2, i:I
    :goto_14
    if-ge v2, v0, :cond_25

    .line 3716
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/ComponentCallbacks;

    invoke-interface {p0}, Landroid/content/ComponentCallbacks;->onLowMemory()V

    .line 3715
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 3712
    .end local v0           #N:I
    .end local v2           #i:I
    .restart local p0
    :catchall_22
    move-exception v5

    :try_start_23
    monitor-exit v4
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v5

    .line 3720
    .end local p0
    .restart local v0       #N:I
    .restart local v2       #i:I
    :cond_25
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    const/16 v5, 0x3e8

    if-eq v4, v5, :cond_37

    .line 3721
    invoke-static {}, Landroid/database/sqlite/SQLiteDatabase;->releaseMemory()I

    move-result v3

    .line 3722
    .local v3, sqliteReleased:I
    const v4, 0x124fb

    invoke-static {v4, v3}, Landroid/util/EventLog;->writeEvent(II)I

    .line 3726
    .end local v3           #sqliteReleased:I
    :cond_37
    invoke-static {}, Landroid/graphics/Canvas;->freeCaches()V

    .line 3728
    const-string v4, "mem"

    invoke-static {v4}, Lcom/android/internal/os/BinderInternal;->forceGc(Ljava/lang/String;)V

    .line 3729
    return-void
.end method

.method final handleProfilerControl(ZLandroid/app/ActivityThread$ProfilerControlData;)V
    .registers 10
    .parameter "start"
    .parameter "pcd"

    .prologue
    const-string v6, "Failure closing profile fd"

    const-string v5, "ActivityThread"

    .line 3687
    if-eqz p1, :cond_67

    .line 3689
    :try_start_6
    iget-object v1, p2, Landroid/app/ActivityThread$ProfilerControlData;->path:Ljava/lang/String;

    iget-object v2, p2, Landroid/app/ActivityThread$ProfilerControlData;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    const/high16 v3, 0x80

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;Ljava/io/FileDescriptor;II)V
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_56
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_14} :catch_24

    .line 3696
    :try_start_14
    iget-object v1, p2, Landroid/app/ActivityThread$ProfilerControlData;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_19} :catch_1a

    .line 3704
    :goto_19
    return-void

    .line 3697
    :catch_1a
    move-exception v1

    move-object v0, v1

    .line 3698
    .local v0, e:Ljava/io/IOException;
    const-string v1, "ActivityThread"

    const-string v1, "Failure closing profile fd"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_19

    .line 3691
    .end local v0           #e:Ljava/io/IOException;
    :catch_24
    move-exception v1

    move-object v0, v1

    .line 3692
    .local v0, e:Ljava/lang/RuntimeException;
    :try_start_26
    const-string v1, "ActivityThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Profiling failed on path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Landroid/app/ActivityThread$ProfilerControlData;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -- can the process access this path?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_46
    .catchall {:try_start_26 .. :try_end_46} :catchall_56

    .line 3696
    :try_start_46
    iget-object v1, p2, Landroid/app/ActivityThread$ProfilerControlData;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_4b} :catch_4c

    goto :goto_19

    .line 3697
    :catch_4c
    move-exception v1

    move-object v0, v1

    .line 3698
    .local v0, e:Ljava/io/IOException;
    const-string v1, "ActivityThread"

    const-string v1, "Failure closing profile fd"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_19

    .line 3695
    .end local v0           #e:Ljava/io/IOException;
    :catchall_56
    move-exception v1

    .line 3696
    :try_start_57
    iget-object v2, p2, Landroid/app/ActivityThread$ProfilerControlData;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5c} :catch_5d

    .line 3699
    :goto_5c
    throw v1

    .line 3697
    :catch_5d
    move-exception v2

    move-object v0, v2

    .line 3698
    .restart local v0       #e:Ljava/io/IOException;
    const-string v2, "ActivityThread"

    const-string v2, "Failure closing profile fd"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5c

    .line 3702
    .end local v0           #e:Ljava/io/IOException;
    :cond_67
    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    goto :goto_19
.end method

.method final handleResumeActivity(Landroid/os/IBinder;ZZ)V
    .registers 14
    .parameter "token"
    .parameter "clearHide"
    .parameter "isForward"

    .prologue
    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 2864
    invoke-virtual {p0}, Landroid/app/ActivityThread;->unscheduleGcIdler()V

    .line 2866
    invoke-virtual {p0, p1, p2}, Landroid/app/ActivityThread;->performResumeActivity(Landroid/os/IBinder;Z)Landroid/app/ActivityThread$ActivityRecord;

    move-result-object v4

    .line 2868
    .local v4, r:Landroid/app/ActivityThread$ActivityRecord;
    if-eqz v4, :cond_bc

    .line 2869
    iget-object v0, v4, Landroid/app/ActivityThread$ActivityRecord;->activity:Landroid/app/Activity;

    .line 2876
    .local v0, a:Landroid/app/Activity;
    if-eqz p3, :cond_b2

    const/16 v6, 0x100

    move v2, v6

    .line 2882
    .local v2, forwardBit:I
    :goto_13
    iget-object v6, v4, Landroid/app/ActivityThread$ActivityRecord;->window:Landroid/view/Window;

    if-nez v6, :cond_b5

    iget-boolean v6, v0, Landroid/app/Activity;->mFinished:Z

    if-nez v6, :cond_b5

    iget-boolean v6, v0, Landroid/app/Activity;->mStartedActivity:Z

    if-nez v6, :cond_b5

    .line 2883
    iget-object v6, v4, Landroid/app/ActivityThread$ActivityRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    iput-object v6, v4, Landroid/app/ActivityThread$ActivityRecord;->window:Landroid/view/Window;

    .line 2884
    iget-object v6, v4, Landroid/app/ActivityThread$ActivityRecord;->window:Landroid/view/Window;

    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 2885
    .local v1, decor:Landroid/view/View;
    const/4 v6, 0x4

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2886
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    .line 2887
    .local v5, wm:Landroid/view/ViewManager;
    iget-object v6, v4, Landroid/app/ActivityThread$ActivityRecord;->window:Landroid/view/Window;

    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 2888
    .local v3, l:Landroid/view/WindowManager$LayoutParams;
    iput-object v1, v0, Landroid/app/Activity;->mDecor:Landroid/view/View;

    .line 2889
    iput v8, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 2890
    iget v6, v3, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    or-int/2addr v6, v2

    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 2891
    iget-boolean v6, v0, Landroid/app/Activity;->mVisibleFromClient:Z

    if-eqz v6, :cond_4d

    .line 2892
    iput-boolean v8, v0, Landroid/app/Activity;->mWindowAdded:Z

    .line 2893
    invoke-interface {v5, v1, v3}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2907
    .end local v1           #decor:Landroid/view/View;
    .end local v3           #l:Landroid/view/WindowManager$LayoutParams;
    .end local v5           #wm:Landroid/view/ViewManager;
    :cond_4d
    :goto_4d
    iget-object v6, v4, Landroid/app/ActivityThread$ActivityRecord;->activity:Landroid/app/Activity;

    iget-boolean v6, v6, Landroid/app/Activity;->mFinished:Z

    if-nez v6, :cond_9f

    iget-object v6, v4, Landroid/app/ActivityThread$ActivityRecord;->activity:Landroid/app/Activity;

    iget-object v6, v6, Landroid/app/Activity;->mDecor:Landroid/view/View;

    if-eqz v6, :cond_9f

    iget-boolean v6, v4, Landroid/app/ActivityThread$ActivityRecord;->hideForNow:Z

    if-nez v6, :cond_9f

    .line 2909
    iget-object v6, v4, Landroid/app/ActivityThread$ActivityRecord;->newConfig:Landroid/content/res/Configuration;

    if-eqz v6, :cond_6a

    .line 2910
    iget-object v6, v4, Landroid/app/ActivityThread$ActivityRecord;->activity:Landroid/app/Activity;

    iget-object v7, v4, Landroid/app/ActivityThread$ActivityRecord;->newConfig:Landroid/content/res/Configuration;

    invoke-direct {p0, v6, v7}, Landroid/app/ActivityThread;->performConfigurationChanged(Landroid/content/ComponentCallbacks;Landroid/content/res/Configuration;)V

    .line 2911
    iput-object v9, v4, Landroid/app/ActivityThread$ActivityRecord;->newConfig:Landroid/content/res/Configuration;

    .line 2915
    :cond_6a
    iget-object v6, v4, Landroid/app/ActivityThread$ActivityRecord;->window:Landroid/view/Window;

    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 2916
    .restart local v3       #l:Landroid/view/WindowManager$LayoutParams;
    iget v6, v3, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v6, v6, 0x100

    if-eq v6, v2, :cond_8a

    .line 2919
    iget v6, v3, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v6, v6, -0x101

    or-int/2addr v6, v2

    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 2922
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    .line 2923
    .restart local v5       #wm:Landroid/view/ViewManager;
    iget-object v6, v4, Landroid/app/ActivityThread$ActivityRecord;->window:Landroid/view/Window;

    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 2924
    .restart local v1       #decor:Landroid/view/View;
    invoke-interface {v5, v1, v3}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2926
    .end local v1           #decor:Landroid/view/View;
    .end local v5           #wm:Landroid/view/ViewManager;
    :cond_8a
    iget-object v6, v4, Landroid/app/ActivityThread$ActivityRecord;->activity:Landroid/app/Activity;

    iput-boolean v8, v6, Landroid/app/Activity;->mVisibleFromServer:Z

    .line 2927
    iget v6, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    .line 2928
    iget-object v6, v4, Landroid/app/ActivityThread$ActivityRecord;->activity:Landroid/app/Activity;

    iget-boolean v6, v6, Landroid/app/Activity;->mVisibleFromClient:Z

    if-eqz v6, :cond_9f

    .line 2929
    iget-object v6, v4, Landroid/app/ActivityThread$ActivityRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->makeVisible()V

    .line 2933
    .end local v3           #l:Landroid/view/WindowManager$LayoutParams;
    :cond_9f
    iget-object v6, p0, Landroid/app/ActivityThread;->mNewActivities:Landroid/app/ActivityThread$ActivityRecord;

    iput-object v6, v4, Landroid/app/ActivityThread$ActivityRecord;->nextIdle:Landroid/app/ActivityThread$ActivityRecord;

    .line 2934
    iput-object v4, p0, Landroid/app/ActivityThread;->mNewActivities:Landroid/app/ActivityThread$ActivityRecord;

    .line 2937
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v6

    new-instance v7, Landroid/app/ActivityThread$Idler;

    invoke-direct {v7, p0, v9}, Landroid/app/ActivityThread$Idler;-><init>(Landroid/app/ActivityThread;Landroid/app/ActivityThread$1;)V

    invoke-virtual {v6, v7}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 2948
    .end local v0           #a:Landroid/app/Activity;
    .end local v2           #forwardBit:I
    :goto_b1
    return-void

    .restart local v0       #a:Landroid/app/Activity;
    :cond_b2
    move v2, v6

    .line 2876
    goto/16 :goto_13

    .line 2899
    .restart local v2       #forwardBit:I
    :cond_b5
    iget-boolean v6, v0, Landroid/app/Activity;->mStartedActivity:Z

    if-eqz v6, :cond_4d

    .line 2902
    iput-boolean v8, v4, Landroid/app/ActivityThread$ActivityRecord;->hideForNow:Z

    goto :goto_4d

    .line 2943
    .end local v0           #a:Landroid/app/Activity;
    .end local v2           #forwardBit:I
    :cond_bc
    :try_start_bc
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface {v6, p1, v7, v8}, Landroid/app/IActivityManager;->finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;)Z
    :try_end_c5
    .catch Landroid/os/RemoteException; {:try_start_bc .. :try_end_c5} :catch_c6

    goto :goto_b1

    .line 2945
    :catch_c6
    move-exception v6

    goto :goto_b1
.end method

.method public final hasPackageInfo(Ljava/lang/String;)Z
    .registers 6
    .parameter "packageName"

    .prologue
    const/4 v3, 0x1

    .line 2112
    iget-object v1, p0, Landroid/app/ActivityThread;->mPackages:Ljava/util/HashMap;

    monitor-enter v1

    .line 2114
    :try_start_4
    iget-object v2, p0, Landroid/app/ActivityThread;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 2115
    .local v0, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/app/ActivityThread$PackageInfo;>;"
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_17

    .line 2116
    monitor-exit v1

    move v1, v3

    .line 2122
    :goto_16
    return v1

    .line 2118
    :cond_17
    iget-object v2, p0, Landroid/app/ActivityThread;->mResourcePackages:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/app/ActivityThread$PackageInfo;>;"
    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 2119
    .restart local v0       #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/app/ActivityThread$PackageInfo;>;"
    if-eqz v0, :cond_2a

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2a

    .line 2120
    monitor-exit v1

    move v1, v3

    goto :goto_16

    .line 2122
    :cond_2a
    const/4 v2, 0x0

    monitor-exit v1

    move v1, v2

    goto :goto_16

    .line 2123
    .end local v0           #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/app/ActivityThread$PackageInfo;>;"
    :catchall_2e
    move-exception v2

    monitor-exit v1
    :try_end_30
    .catchall {:try_start_4 .. :try_end_30} :catchall_2e

    throw v2
.end method

.method public final installSystemProviders(Ljava/util/List;)V
    .registers 3
    .parameter "providers"

    .prologue
    .line 4189
    if-eqz p1, :cond_7

    .line 4190
    iget-object v0, p0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    invoke-direct {p0, v0, p1}, Landroid/app/ActivityThread;->installContentProviders(Landroid/content/Context;Ljava/util/List;)V

    .line 4193
    :cond_7
    return-void
.end method

.method public isProfiling()Z
    .registers 2

    .prologue
    .line 2144
    iget-object v0, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v0, v0, Landroid/app/ActivityThread$AppBindData;->profileFile:Ljava/lang/String;

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public final performDestroyActivity(Landroid/os/IBinder;Z)Landroid/app/ActivityThread$ActivityRecord;
    .registers 4
    .parameter "token"
    .parameter "finishing"

    .prologue
    const/4 v0, 0x0

    .line 3274
    invoke-direct {p0, p1, p2, v0, v0}, Landroid/app/ActivityThread;->performDestroyActivity(Landroid/os/IBinder;ZIZ)Landroid/app/ActivityThread$ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method public final performNewIntents(Landroid/os/IBinder;Ljava/util/List;)V
    .registers 7
    .parameter "token"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2477
    .local p2, intents:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    iget-object v2, p0, Landroid/app/ActivityThread;->mActivities:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityRecord;

    .line 2478
    .local v0, r:Landroid/app/ActivityThread$ActivityRecord;
    if-eqz v0, :cond_25

    .line 2479
    iget-boolean v2, v0, Landroid/app/ActivityThread$ActivityRecord;->paused:Z

    if-nez v2, :cond_26

    const/4 v2, 0x1

    move v1, v2

    .line 2480
    .local v1, resumed:Z
    :goto_10
    if-eqz v1, :cond_19

    .line 2481
    iget-object v2, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v3, v0, Landroid/app/ActivityThread$ActivityRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Landroid/app/Instrumentation;->callActivityOnPause(Landroid/app/Activity;)V

    .line 2483
    :cond_19
    invoke-direct {p0, v0, p2}, Landroid/app/ActivityThread;->deliverNewIntents(Landroid/app/ActivityThread$ActivityRecord;Ljava/util/List;)V

    .line 2484
    if-eqz v1, :cond_25

    .line 2485
    iget-object v2, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v3, v0, Landroid/app/ActivityThread$ActivityRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Landroid/app/Instrumentation;->callActivityOnResume(Landroid/app/Activity;)V

    .line 2488
    .end local v1           #resumed:Z
    :cond_25
    return-void

    .line 2479
    :cond_26
    const/4 v2, 0x0

    move v1, v2

    goto :goto_10
.end method

.method final performPauseActivity(Landroid/app/ActivityThread$ActivityRecord;ZZ)Landroid/os/Bundle;
    .registers 11
    .parameter "r"
    .parameter "finished"
    .parameter "saveState"

    .prologue
    const/4 v6, 0x1

    .line 3021
    iget-boolean v3, p1, Landroid/app/ActivityThread$ActivityRecord;->paused:Z

    if-eqz v3, :cond_38

    .line 3022
    iget-object v3, p1, Landroid/app/ActivityThread$ActivityRecord;->activity:Landroid/app/Activity;

    iget-boolean v3, v3, Landroid/app/Activity;->mFinished:Z

    if-eqz v3, :cond_d

    .line 3026
    const/4 v3, 0x0

    .line 3066
    :goto_c
    return-object v3

    .line 3028
    :cond_d
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Performing pause of activity that is not resumed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/app/ActivityThread$ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 3031
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v3, "ActivityThread"

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3033
    .end local v0           #e:Ljava/lang/RuntimeException;
    :cond_38
    const/4 v1, 0x0

    .line 3034
    .local v1, state:Landroid/os/Bundle;
    if-eqz p2, :cond_3f

    .line 3035
    iget-object v3, p1, Landroid/app/ActivityThread$ActivityRecord;->activity:Landroid/app/Activity;

    iput-boolean v6, v3, Landroid/app/Activity;->mFinished:Z

    .line 3039
    :cond_3f
    :try_start_3f
    iget-object v3, p1, Landroid/app/ActivityThread$ActivityRecord;->activity:Landroid/app/Activity;

    iget-boolean v3, v3, Landroid/app/Activity;->mFinished:Z

    if-nez v3, :cond_56

    if-eqz p3, :cond_56

    .line 3040
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V
    :try_end_4c
    .catch Landroid/app/SuperNotCalledException; {:try_start_3f .. :try_end_4c} :catch_a0
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_4c} :catch_a3

    .line 3041
    .end local v1           #state:Landroid/os/Bundle;
    .local v2, state:Landroid/os/Bundle;
    :try_start_4c
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v4, p1, Landroid/app/ActivityThread$ActivityRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v3, v4, v2}, Landroid/app/Instrumentation;->callActivityOnSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 3042
    iput-object v2, p1, Landroid/app/ActivityThread$ActivityRecord;->state:Landroid/os/Bundle;
    :try_end_55
    .catch Landroid/app/SuperNotCalledException; {:try_start_4c .. :try_end_55} :catch_e9
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_55} :catch_e5

    move-object v1, v2

    .line 3045
    .end local v2           #state:Landroid/os/Bundle;
    .restart local v1       #state:Landroid/os/Bundle;
    :cond_56
    :try_start_56
    iget-object v3, p1, Landroid/app/ActivityThread$ActivityRecord;->activity:Landroid/app/Activity;

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/app/Activity;->mCalled:Z

    .line 3046
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v4, p1, Landroid/app/ActivityThread$ActivityRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v3, v4}, Landroid/app/Instrumentation;->callActivityOnPause(Landroid/app/Activity;)V

    .line 3047
    const/16 v3, 0x7545

    iget-object v4, p1, Landroid/app/ActivityThread$ActivityRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 3048
    iget-object v3, p1, Landroid/app/ActivityThread$ActivityRecord;->activity:Landroid/app/Activity;

    iget-boolean v3, v3, Landroid/app/Activity;->mCalled:Z

    if-nez v3, :cond_e0

    .line 3049
    new-instance v3, Landroid/app/SuperNotCalledException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/app/ActivityThread$ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " did not call through to super.onPause()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_a0
    .catch Landroid/app/SuperNotCalledException; {:try_start_56 .. :try_end_a0} :catch_a0
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_a0} :catch_a3

    .line 3054
    :catch_a0
    move-exception v3

    move-object v0, v3

    .line 3055
    .local v0, e:Landroid/app/SuperNotCalledException;
    :goto_a2
    throw v0

    .line 3057
    .end local v0           #e:Landroid/app/SuperNotCalledException;
    :catch_a3
    move-exception v3

    move-object v0, v3

    .line 3058
    .local v0, e:Ljava/lang/Exception;
    :goto_a5
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v4, p1, Landroid/app/ActivityThread$ActivityRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v3, v4, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_e0

    .line 3059
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to pause activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/app/ActivityThread$ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 3065
    .end local v0           #e:Ljava/lang/Exception;
    :cond_e0
    iput-boolean v6, p1, Landroid/app/ActivityThread$ActivityRecord;->paused:Z

    move-object v3, v1

    .line 3066
    goto/16 :goto_c

    .line 3057
    .end local v1           #state:Landroid/os/Bundle;
    .restart local v2       #state:Landroid/os/Bundle;
    :catch_e5
    move-exception v3

    move-object v0, v3

    move-object v1, v2

    .end local v2           #state:Landroid/os/Bundle;
    .restart local v1       #state:Landroid/os/Bundle;
    goto :goto_a5

    .line 3054
    .end local v1           #state:Landroid/os/Bundle;
    .restart local v2       #state:Landroid/os/Bundle;
    :catch_e9
    move-exception v3

    move-object v0, v3

    move-object v1, v2

    .end local v2           #state:Landroid/os/Bundle;
    .restart local v1       #state:Landroid/os/Bundle;
    goto :goto_a2
.end method

.method final performPauseActivity(Landroid/os/IBinder;ZZ)Landroid/os/Bundle;
    .registers 6
    .parameter "token"
    .parameter "finished"
    .parameter "saveState"

    .prologue
    .line 3015
    iget-object v1, p0, Landroid/app/ActivityThread;->mActivities:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityRecord;

    .line 3016
    .local v0, r:Landroid/app/ActivityThread$ActivityRecord;
    if-eqz v0, :cond_f

    invoke-virtual {p0, v0, p2, p3}, Landroid/app/ActivityThread;->performPauseActivity(Landroid/app/ActivityThread$ActivityRecord;ZZ)Landroid/os/Bundle;

    move-result-object v1

    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method final performRestartActivity(Landroid/os/IBinder;)V
    .registers 4
    .parameter "token"

    .prologue
    .line 3184
    iget-object v1, p0, Landroid/app/ActivityThread;->mActivities:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityRecord;

    .line 3185
    .local v0, r:Landroid/app/ActivityThread$ActivityRecord;
    iget-boolean v1, v0, Landroid/app/ActivityThread$ActivityRecord;->stopped:Z

    if-eqz v1, :cond_14

    .line 3186
    iget-object v1, v0, Landroid/app/ActivityThread$ActivityRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->performRestart()V

    .line 3187
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/app/ActivityThread$ActivityRecord;->stopped:Z

    .line 3189
    :cond_14
    return-void
.end method

.method public final performResumeActivity(Landroid/os/IBinder;Z)Landroid/app/ActivityThread$ActivityRecord;
    .registers 8
    .parameter "token"
    .parameter "clearHide"

    .prologue
    const/4 v3, 0x0

    .line 2821
    iget-object v2, p0, Landroid/app/ActivityThread;->mActivities:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityThread$ActivityRecord;

    .line 2824
    .local v1, r:Landroid/app/ActivityThread$ActivityRecord;
    if-eqz v1, :cond_57

    iget-object v2, v1, Landroid/app/ActivityThread$ActivityRecord;->activity:Landroid/app/Activity;

    iget-boolean v2, v2, Landroid/app/Activity;->mFinished:Z

    if-nez v2, :cond_57

    .line 2825
    if-eqz p2, :cond_19

    .line 2826
    iput-boolean v3, v1, Landroid/app/ActivityThread$ActivityRecord;->hideForNow:Z

    .line 2827
    iget-object v2, v1, Landroid/app/ActivityThread$ActivityRecord;->activity:Landroid/app/Activity;

    iput-boolean v3, v2, Landroid/app/Activity;->mStartedActivity:Z

    .line 2830
    :cond_19
    :try_start_19
    iget-object v2, v1, Landroid/app/ActivityThread$ActivityRecord;->pendingIntents:Ljava/util/List;

    if-eqz v2, :cond_25

    .line 2831
    iget-object v2, v1, Landroid/app/ActivityThread$ActivityRecord;->pendingIntents:Ljava/util/List;

    invoke-direct {p0, v1, v2}, Landroid/app/ActivityThread;->deliverNewIntents(Landroid/app/ActivityThread$ActivityRecord;Ljava/util/List;)V

    .line 2832
    const/4 v2, 0x0

    iput-object v2, v1, Landroid/app/ActivityThread$ActivityRecord;->pendingIntents:Ljava/util/List;

    .line 2834
    :cond_25
    iget-object v2, v1, Landroid/app/ActivityThread$ActivityRecord;->pendingResults:Ljava/util/List;

    if-eqz v2, :cond_31

    .line 2835
    iget-object v2, v1, Landroid/app/ActivityThread$ActivityRecord;->pendingResults:Ljava/util/List;

    invoke-direct {p0, v1, v2}, Landroid/app/ActivityThread;->deliverResults(Landroid/app/ActivityThread$ActivityRecord;Ljava/util/List;)V

    .line 2836
    const/4 v2, 0x0

    iput-object v2, v1, Landroid/app/ActivityThread$ActivityRecord;->pendingResults:Ljava/util/List;

    .line 2838
    :cond_31
    iget-object v2, v1, Landroid/app/ActivityThread$ActivityRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->performResume()V

    .line 2840
    const/16 v2, 0x7546

    iget-object v3, v1, Landroid/app/ActivityThread$ActivityRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 2843
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/app/ActivityThread$ActivityRecord;->paused:Z

    .line 2844
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/app/ActivityThread$ActivityRecord;->stopped:Z

    .line 2845
    iget-object v2, v1, Landroid/app/ActivityThread$ActivityRecord;->activity:Landroid/app/Activity;

    iget-boolean v2, v2, Landroid/app/Activity;->mStartedActivity:Z

    if-eqz v2, :cond_54

    .line 2846
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/app/ActivityThread$ActivityRecord;->hideForNow:Z

    .line 2848
    :cond_54
    const/4 v2, 0x0

    iput-object v2, v1, Landroid/app/ActivityThread$ActivityRecord;->state:Landroid/os/Bundle;
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_57} :catch_58

    .line 2858
    :cond_57
    return-object v1

    .line 2849
    :catch_58
    move-exception v2

    move-object v0, v2

    .line 2850
    .local v0, e:Ljava/lang/Exception;
    iget-object v2, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v3, v1, Landroid/app/ActivityThread$ActivityRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v3, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_57

    .line 2851
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to resume activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/app/ActivityThread$ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method final performStopActivity(Landroid/os/IBinder;)V
    .registers 5
    .parameter "token"

    .prologue
    .line 3070
    iget-object v1, p0, Landroid/app/ActivityThread;->mActivities:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityRecord;

    .line 3071
    .local v0, r:Landroid/app/ActivityThread$ActivityRecord;
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/app/ActivityThread;->performStopActivityInner(Landroid/app/ActivityThread$ActivityRecord;Landroid/app/ActivityThread$StopInfo;Z)V

    .line 3072
    return-void
.end method

.method final performUserLeavingActivity(Landroid/app/ActivityThread$ActivityRecord;)V
    .registers 4
    .parameter "r"

    .prologue
    .line 3010
    iget-object v0, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->callActivityOnUserLeaving(Landroid/app/Activity;)V

    .line 3011
    return-void
.end method

.method public final releaseProvider(Landroid/content/IContentProvider;)Z
    .registers 8
    .parameter "provider"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3983
    if-nez p1, :cond_6

    move v2, v4

    .line 4001
    :goto_5
    return v2

    .line 3986
    :cond_6
    invoke-interface {p1}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 3987
    .local v0, jBinder:Landroid/os/IBinder;
    iget-object v2, p0, Landroid/app/ActivityThread;->mProviderMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 3988
    :try_start_d
    iget-object v3, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityThread$ProviderRefCount;

    .line 3989
    .local v1, prc:Landroid/app/ActivityThread$ProviderRefCount;
    if-nez v1, :cond_1a

    .line 3991
    monitor-exit v2

    move v2, v4

    goto :goto_5

    .line 3993
    :cond_1a
    iget v3, v1, Landroid/app/ActivityThread$ProviderRefCount;->count:I

    sub-int/2addr v3, v5

    iput v3, v1, Landroid/app/ActivityThread$ProviderRefCount;->count:I

    .line 3994
    iget v3, v1, Landroid/app/ActivityThread$ProviderRefCount;->count:I

    if-nez v3, :cond_2b

    .line 3995
    iget-object v3, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3997
    invoke-virtual {p0, p1}, Landroid/app/ActivityThread;->removeProviderLocked(Landroid/content/IContentProvider;)V

    .line 4000
    :cond_2b
    monitor-exit v2

    move v2, v5

    .line 4001
    goto :goto_5

    .line 4000
    .end local v1           #prc:Landroid/app/ActivityThread$ProviderRefCount;
    :catchall_2e
    move-exception v3

    monitor-exit v2
    :try_end_30
    .catchall {:try_start_d .. :try_end_30} :catchall_2e

    throw v3
.end method

.method final removeDeadProvider(Ljava/lang/String;Landroid/content/IContentProvider;)V
    .registers 9
    .parameter "name"
    .parameter "provider"

    .prologue
    .line 4043
    iget-object v2, p0, Landroid/app/ActivityThread;->mProviderMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 4044
    :try_start_3
    iget-object v3, p0, Landroid/app/ActivityThread;->mProviderMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ProviderRecord;

    .line 4045
    .local v0, pr:Landroid/app/ActivityThread$ProviderRecord;
    iget-object v3, v0, Landroid/app/ActivityThread$ProviderRecord;->mProvider:Landroid/content/IContentProvider;

    invoke-interface {v3}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p2}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    if-ne v3, v4, :cond_43

    .line 4046
    const-string v3, "ActivityThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removing dead content provider: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4047
    iget-object v3, p0, Landroid/app/ActivityThread;->mProviderMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityThread$ProviderRecord;

    .line 4048
    .local v1, removed:Landroid/app/ActivityThread$ProviderRecord;
    if-eqz v1, :cond_43

    .line 4049
    iget-object v3, v1, Landroid/app/ActivityThread$ProviderRecord;->mProvider:Landroid/content/IContentProvider;

    invoke-interface {v3}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v1, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 4052
    .end local v1           #removed:Landroid/app/ActivityThread$ProviderRecord;
    :cond_43
    monitor-exit v2

    .line 4053
    return-void

    .line 4052
    .end local v0           #pr:Landroid/app/ActivityThread$ProviderRecord;
    :catchall_45
    move-exception v3

    monitor-exit v2
    :try_end_47
    .catchall {:try_start_3 .. :try_end_47} :catchall_45

    throw v3
.end method

.method final removeDeadProviderLocked(Ljava/lang/String;Landroid/content/IContentProvider;)V
    .registers 8
    .parameter "name"
    .parameter "provider"

    .prologue
    .line 4056
    iget-object v2, p0, Landroid/app/ActivityThread;->mProviderMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ProviderRecord;

    .line 4057
    .local v0, pr:Landroid/app/ActivityThread$ProviderRecord;
    iget-object v2, v0, Landroid/app/ActivityThread$ProviderRecord;->mProvider:Landroid/content/IContentProvider;

    invoke-interface {v2}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {p2}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    if-ne v2, v3, :cond_40

    .line 4058
    const-string v2, "ActivityThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removing dead content provider: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4059
    iget-object v2, p0, Landroid/app/ActivityThread;->mProviderMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityThread$ProviderRecord;

    .line 4060
    .local v1, removed:Landroid/app/ActivityThread$ProviderRecord;
    if-eqz v1, :cond_40

    .line 4061
    iget-object v2, v1, Landroid/app/ActivityThread$ProviderRecord;->mProvider:Landroid/content/IContentProvider;

    invoke-interface {v2}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 4064
    .end local v1           #removed:Landroid/app/ActivityThread$ProviderRecord;
    :cond_40
    return-void
.end method

.method public final removeProviderLocked(Landroid/content/IContentProvider;)V
    .registers 10
    .parameter "provider"

    .prologue
    .line 4005
    if-nez p1, :cond_3

    .line 4040
    :cond_2
    return-void

    .line 4008
    :cond_3
    invoke-interface {p1}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 4009
    .local v4, providerBinder:Landroid/os/IBinder;
    const/4 v0, 0x0

    .line 4012
    .local v0, amRemoveFlag:Z
    iget-object v5, p0, Landroid/app/ActivityThread;->mProviderMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 4013
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/app/ActivityThread$ProviderRecord;>;"
    :cond_12
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 4014
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityThread$ProviderRecord;

    .line 4015
    .local v3, pr:Landroid/app/ActivityThread$ProviderRecord;
    iget-object v5, v3, Landroid/app/ActivityThread$ProviderRecord;->mProvider:Landroid/content/IContentProvider;

    invoke-interface {v5}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 4016
    .local v2, myBinder:Landroid/os/IBinder;
    if-ne v2, v4, :cond_12

    .line 4018
    iget-object v5, v3, Landroid/app/ActivityThread$ProviderRecord;->mLocalProvider:Landroid/content/ContentProvider;

    if-nez v5, :cond_2

    .line 4025
    const/4 v5, 0x0

    invoke-interface {v2, v3, v5}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 4026
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 4028
    if-nez v0, :cond_12

    .line 4032
    :try_start_33
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-virtual {p0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v6

    iget-object v7, v3, Landroid/app/ActivityThread$ProviderRecord;->mName:Ljava/lang/String;

    invoke-interface {v5, v6, v7}, Landroid/app/IActivityManager;->removeContentProvider(Landroid/app/IApplicationThread;Ljava/lang/String;)V
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_40} :catch_42

    .line 4033
    const/4 v0, 0x1

    goto :goto_12

    .line 4034
    :catch_42
    move-exception v5

    goto :goto_12
.end method

.method public final resolveActivityInfo(Landroid/content/Intent;)Landroid/content/pm/ActivityInfo;
    .registers 5
    .parameter "intent"

    .prologue
    .line 2208
    iget-object v1, p0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x400

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 2210
    .local v0, aInfo:Landroid/content/pm/ActivityInfo;
    if-nez v0, :cond_12

    .line 2212
    const/4 v1, -0x2

    invoke-static {v1, p1}, Landroid/app/Instrumentation;->checkStartActivityResult(ILandroid/content/Intent;)V

    .line 2215
    :cond_12
    return-object v0
.end method

.method final scheduleContextCleanup(Landroid/app/ApplicationContext;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "context"
    .parameter "who"
    .parameter "what"

    .prologue
    .line 2285
    new-instance v0, Landroid/app/ActivityThread$ContextCleanupInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/app/ActivityThread$ContextCleanupInfo;-><init>(Landroid/app/ActivityThread$1;)V

    .line 2286
    .local v0, cci:Landroid/app/ActivityThread$ContextCleanupInfo;
    iput-object p1, v0, Landroid/app/ActivityThread$ContextCleanupInfo;->context:Landroid/app/ApplicationContext;

    .line 2287
    iput-object p2, v0, Landroid/app/ActivityThread$ContextCleanupInfo;->who:Ljava/lang/String;

    .line 2288
    iput-object p3, v0, Landroid/app/ActivityThread$ContextCleanupInfo;->what:Ljava/lang/String;

    .line 2289
    const/16 v1, 0x77

    invoke-direct {p0, v1, v0}, Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V

    .line 2290
    return-void
.end method

.method scheduleGcIdler()V
    .registers 3

    .prologue
    .line 2181
    iget-boolean v0, p0, Landroid/app/ActivityThread;->mGcIdlerScheduled:Z

    if-nez v0, :cond_10

    .line 2182
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityThread;->mGcIdlerScheduled:Z

    .line 2183
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityThread;->mGcIdler:Landroid/app/ActivityThread$GcIdler;

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 2185
    :cond_10
    iget-object v0, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Landroid/app/ActivityThread$H;->removeMessages(I)V

    .line 2186
    return-void
.end method

.method public final sendActivityResult(Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/Intent;)V
    .registers 8
    .parameter "token"
    .parameter "id"
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 2254
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2255
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    new-instance v1, Landroid/app/ResultInfo;

    invoke-direct {v1, p2, p3, p4, p5}, Landroid/app/ResultInfo;-><init>(Ljava/lang/String;IILandroid/content/Intent;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2256
    iget-object v1, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    invoke-virtual {v1, p1, v0}, Landroid/app/ActivityThread$ApplicationThread;->scheduleSendResult(Landroid/os/IBinder;Ljava/util/List;)V

    .line 2257
    return-void
.end method

.method public final startActivityNow(Landroid/app/Activity;Ljava/lang/String;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;Landroid/os/Bundle;Ljava/lang/Object;)Landroid/app/Activity;
    .registers 10
    .parameter "parent"
    .parameter "id"
    .parameter "intent"
    .parameter "activityInfo"
    .parameter "token"
    .parameter "state"
    .parameter "lastNonConfigurationInstance"

    .prologue
    .line 2221
    new-instance v0, Landroid/app/ActivityThread$ActivityRecord;

    invoke-direct {v0}, Landroid/app/ActivityThread$ActivityRecord;-><init>()V

    .line 2222
    .local v0, r:Landroid/app/ActivityThread$ActivityRecord;
    iput-object p5, v0, Landroid/app/ActivityThread$ActivityRecord;->token:Landroid/os/IBinder;

    .line 2223
    const/4 v1, 0x0

    iput v1, v0, Landroid/app/ActivityThread$ActivityRecord;->ident:I

    .line 2224
    iput-object p3, v0, Landroid/app/ActivityThread$ActivityRecord;->intent:Landroid/content/Intent;

    .line 2225
    iput-object p6, v0, Landroid/app/ActivityThread$ActivityRecord;->state:Landroid/os/Bundle;

    .line 2226
    iput-object p1, v0, Landroid/app/ActivityThread$ActivityRecord;->parent:Landroid/app/Activity;

    .line 2227
    iput-object p2, v0, Landroid/app/ActivityThread$ActivityRecord;->embeddedID:Ljava/lang/String;

    .line 2228
    iput-object p4, v0, Landroid/app/ActivityThread$ActivityRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 2229
    iput-object p7, v0, Landroid/app/ActivityThread$ActivityRecord;->lastNonConfigurationInstance:Ljava/lang/Object;

    .line 2242
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/app/ActivityThread;->performLaunchActivity(Landroid/app/ActivityThread$ActivityRecord;Landroid/content/Intent;)Landroid/app/Activity;

    move-result-object v1

    return-object v1
.end method

.method unscheduleGcIdler()V
    .registers 3

    .prologue
    .line 2189
    iget-boolean v0, p0, Landroid/app/ActivityThread;->mGcIdlerScheduled:Z

    if-eqz v0, :cond_10

    .line 2190
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/ActivityThread;->mGcIdlerScheduled:Z

    .line 2191
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityThread;->mGcIdler:Landroid/app/ActivityThread$GcIdler;

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 2193
    :cond_10
    iget-object v0, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Landroid/app/ActivityThread$H;->removeMessages(I)V

    .line 2194
    return-void
.end method
