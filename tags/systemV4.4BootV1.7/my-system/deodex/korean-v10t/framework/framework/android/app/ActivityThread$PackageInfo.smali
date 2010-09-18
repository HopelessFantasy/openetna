.class public final Landroid/app/ActivityThread$PackageInfo;
.super Ljava/lang/Object;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PackageInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;,
        Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;
    }
.end annotation


# instance fields
.field private final mActivityThread:Landroid/app/ActivityThread;

.field private final mAppDir:Ljava/lang/String;

.field private mApplication:Landroid/app/Application;

.field private final mApplicationInfo:Landroid/content/pm/ApplicationInfo;

.field private final mBaseClassLoader:Ljava/lang/ClassLoader;

.field private mClassLoader:Ljava/lang/ClassLoader;

.field mClientCount:I

.field private mCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

.field private final mDataDir:Ljava/lang/String;

.field private final mDataDirFile:Ljava/io/File;

.field private final mIncludeCode:Z

.field private final mPackageName:Ljava/lang/String;

.field private final mReceivers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/BroadcastReceiver;",
            "Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mResDir:Ljava/lang/String;

.field private mResources:Landroid/content/res/Resources;

.field private final mSecurityViolation:Z

.field private final mServices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ServiceConnection;",
            "Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mSharedLibraries:[Ljava/lang/String;

.field private final mUnboundServices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ServiceConnection;",
            "Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mUnregisteredReceivers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/BroadcastReceiver;",
            "Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/ActivityThread;Landroid/content/pm/ApplicationInfo;Landroid/app/ActivityThread;Ljava/lang/ClassLoader;ZZ)V
    .registers 10
    .parameter "activityThread"
    .parameter "aInfo"
    .parameter "mainThread"
    .parameter "baseLoader"
    .parameter "securityViolation"
    .parameter "includeCode"

    .prologue
    const/4 v2, 0x0

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 247
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread$PackageInfo;->mReceivers:Ljava/util/HashMap;

    .line 249
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread$PackageInfo;->mUnregisteredReceivers:Ljava/util/HashMap;

    .line 251
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread$PackageInfo;->mServices:Ljava/util/HashMap;

    .line 253
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread$PackageInfo;->mUnboundServices:Ljava/util/HashMap;

    .line 256
    iput v2, p0, Landroid/app/ActivityThread$PackageInfo;->mClientCount:I

    .line 261
    iput-object p1, p0, Landroid/app/ActivityThread$PackageInfo;->mActivityThread:Landroid/app/ActivityThread;

    .line 262
    iput-object p2, p0, Landroid/app/ActivityThread$PackageInfo;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 263
    iget-object v0, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/ActivityThread$PackageInfo;->mPackageName:Ljava/lang/String;

    .line 264
    iget-object v0, p2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/ActivityThread$PackageInfo;->mAppDir:Ljava/lang/String;

    .line 265
    iget v0, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-ne v0, v1, :cond_95

    iget-object v0, p2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    :goto_38
    iput-object v0, p0, Landroid/app/ActivityThread$PackageInfo;->mResDir:Ljava/lang/String;

    .line 267
    iget-object v0, p2, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    iput-object v0, p0, Landroid/app/ActivityThread$PackageInfo;->mSharedLibraries:[Ljava/lang/String;

    .line 268
    iget-object v0, p2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/ActivityThread$PackageInfo;->mDataDir:Ljava/lang/String;

    .line 269
    iget-object v0, p0, Landroid/app/ActivityThread$PackageInfo;->mDataDir:Ljava/lang/String;

    if-eqz v0, :cond_98

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/app/ActivityThread$PackageInfo;->mDataDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_4d
    iput-object v0, p0, Landroid/app/ActivityThread$PackageInfo;->mDataDirFile:Ljava/io/File;

    .line 270
    iput-object p4, p0, Landroid/app/ActivityThread$PackageInfo;->mBaseClassLoader:Ljava/lang/ClassLoader;

    .line 271
    iput-boolean p5, p0, Landroid/app/ActivityThread$PackageInfo;->mSecurityViolation:Z

    .line 272
    iput-boolean p6, p0, Landroid/app/ActivityThread$PackageInfo;->mIncludeCode:Z

    .line 273
    new-instance v0, Landroid/content/res/CompatibilityInfo;

    invoke-direct {v0, p2}, Landroid/content/res/CompatibilityInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    iput-object v0, p0, Landroid/app/ActivityThread$PackageInfo;->mCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    .line 275
    iget-object v0, p0, Landroid/app/ActivityThread$PackageInfo;->mAppDir:Ljava/lang/String;

    if-nez v0, :cond_94

    .line 276
    invoke-static {}, Landroid/app/ActivityThread;->access$100()Landroid/app/ApplicationContext;

    move-result-object v0

    if-nez v0, :cond_80

    .line 277
    invoke-static {p3}, Landroid/app/ApplicationContext;->createSystemContext(Landroid/app/ActivityThread;)Landroid/app/ApplicationContext;

    move-result-object v0

    invoke-static {v0}, Landroid/app/ActivityThread;->access$102(Landroid/app/ApplicationContext;)Landroid/app/ApplicationContext;

    .line 279
    invoke-static {}, Landroid/app/ActivityThread;->access$100()Landroid/app/ApplicationContext;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ApplicationContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p3}, Landroid/app/ActivityThread;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {p3, v2}, Landroid/app/ActivityThread;->getDisplayMetricsLocked(Z)Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 286
    :cond_80
    invoke-static {}, Landroid/app/ActivityThread;->access$100()Landroid/app/ApplicationContext;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ApplicationContext;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityThread$PackageInfo;->mClassLoader:Ljava/lang/ClassLoader;

    .line 287
    invoke-static {}, Landroid/app/ActivityThread;->access$100()Landroid/app/ApplicationContext;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ApplicationContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityThread$PackageInfo;->mResources:Landroid/content/res/Resources;

    .line 289
    :cond_94
    return-void

    .line 265
    :cond_95
    iget-object v0, p2, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    goto :goto_38

    .line 269
    :cond_98
    const/4 v0, 0x0

    goto :goto_4d
.end method

.method public constructor <init>(Landroid/app/ActivityThread;Ljava/lang/String;Landroid/content/Context;)V
    .registers 7
    .parameter "activityThread"
    .parameter "name"
    .parameter "systemContext"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 247
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread$PackageInfo;->mReceivers:Ljava/util/HashMap;

    .line 249
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread$PackageInfo;->mUnregisteredReceivers:Ljava/util/HashMap;

    .line 251
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread$PackageInfo;->mServices:Ljava/util/HashMap;

    .line 253
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread$PackageInfo;->mUnboundServices:Ljava/util/HashMap;

    .line 256
    iput v2, p0, Landroid/app/ActivityThread$PackageInfo;->mClientCount:I

    .line 293
    iput-object p1, p0, Landroid/app/ActivityThread$PackageInfo;->mActivityThread:Landroid/app/ActivityThread;

    .line 294
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0}, Landroid/content/pm/ApplicationInfo;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread$PackageInfo;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 295
    iget-object v0, p0, Landroid/app/ActivityThread$PackageInfo;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object p2, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 296
    iput-object p2, p0, Landroid/app/ActivityThread$PackageInfo;->mPackageName:Ljava/lang/String;

    .line 297
    iput-object v1, p0, Landroid/app/ActivityThread$PackageInfo;->mAppDir:Ljava/lang/String;

    .line 298
    iput-object v1, p0, Landroid/app/ActivityThread$PackageInfo;->mResDir:Ljava/lang/String;

    .line 299
    iput-object v1, p0, Landroid/app/ActivityThread$PackageInfo;->mSharedLibraries:[Ljava/lang/String;

    .line 300
    iput-object v1, p0, Landroid/app/ActivityThread$PackageInfo;->mDataDir:Ljava/lang/String;

    .line 301
    iput-object v1, p0, Landroid/app/ActivityThread$PackageInfo;->mDataDirFile:Ljava/io/File;

    .line 302
    iput-object v1, p0, Landroid/app/ActivityThread$PackageInfo;->mBaseClassLoader:Ljava/lang/ClassLoader;

    .line 303
    iput-boolean v2, p0, Landroid/app/ActivityThread$PackageInfo;->mSecurityViolation:Z

    .line 304
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityThread$PackageInfo;->mIncludeCode:Z

    .line 305
    invoke-virtual {p3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityThread$PackageInfo;->mClassLoader:Ljava/lang/ClassLoader;

    .line 306
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityThread$PackageInfo;->mResources:Landroid/content/res/Resources;

    .line 307
    new-instance v0, Landroid/content/res/CompatibilityInfo;

    iget-object v1, p0, Landroid/app/ActivityThread$PackageInfo;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0, v1}, Landroid/content/res/CompatibilityInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    iput-object v0, p0, Landroid/app/ActivityThread$PackageInfo;->mCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    .line 308
    return-void
.end method

.method static synthetic access$000(Landroid/app/ActivityThread$PackageInfo;)Landroid/content/res/CompatibilityInfo;
    .registers 2
    .parameter "x0"

    .prologue
    .line 229
    iget-object v0, p0, Landroid/app/ActivityThread$PackageInfo;->mCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    return-object v0
.end method

.method static synthetic access$4200(Landroid/app/ActivityThread$PackageInfo;)Landroid/content/res/Resources;
    .registers 2
    .parameter "x0"

    .prologue
    .line 229
    iget-object v0, p0, Landroid/app/ActivityThread$PackageInfo;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic access$4400(Landroid/app/ActivityThread$PackageInfo;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 229
    iget-object v0, p0, Landroid/app/ActivityThread$PackageInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method private static combineLibs([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .parameter "list1"
    .parameter "list2"

    .prologue
    const/16 v8, 0x3a

    .line 359
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v7, 0x12c

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 360
    .local v5, result:Ljava/lang/StringBuilder;
    const/4 v2, 0x1

    .line 362
    .local v2, first:Z
    if-eqz p0, :cond_20

    .line 363
    move-object v0, p0

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_f
    if-ge v3, v4, :cond_20

    aget-object v6, v0, v3

    .line 364
    .local v6, s:Ljava/lang/String;
    if-eqz v2, :cond_1c

    .line 365
    const/4 v2, 0x0

    .line 369
    :goto_16
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 367
    :cond_1c
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_16

    .line 374
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v6           #s:Ljava/lang/String;
    :cond_20
    if-nez v2, :cond_38

    const/4 v7, 0x1

    move v1, v7

    .line 376
    .local v1, dupCheck:Z
    :goto_24
    if-eqz p1, :cond_46

    .line 377
    move-object v0, p1

    .restart local v0       #arr$:[Ljava/lang/String;
    array-length v4, v0

    .restart local v4       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_29
    if-ge v3, v4, :cond_46

    aget-object v6, v0, v3

    .line 378
    .restart local v6       #s:Ljava/lang/String;
    if-eqz v1, :cond_3b

    invoke-static {p0, v6}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3b

    .line 377
    :goto_35
    add-int/lit8 v3, v3, 0x1

    goto :goto_29

    .line 374
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #dupCheck:Z
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v6           #s:Ljava/lang/String;
    :cond_38
    const/4 v7, 0x0

    move v1, v7

    goto :goto_24

    .line 382
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #dupCheck:Z
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    .restart local v6       #s:Ljava/lang/String;
    :cond_3b
    if-eqz v2, :cond_42

    .line 383
    const/4 v2, 0x0

    .line 387
    :goto_3e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_35

    .line 385
    :cond_42
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3e

    .line 391
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v6           #s:Ljava/lang/String;
    :cond_46
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method private static getLibrariesFor(Ljava/lang/String;)[Ljava/lang/String;
    .registers 5
    .parameter "packageName"

    .prologue
    .line 332
    const/4 v0, 0x0

    .line 334
    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    :try_start_1
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    const/16 v3, 0x400

    invoke-interface {v2, p0, v3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_f

    move-result-object v0

    .line 340
    if-nez v0, :cond_17

    .line 341
    const/4 v2, 0x0

    .line 344
    :goto_e
    return-object v2

    .line 336
    :catch_f
    move-exception v2

    move-object v1, v2

    .line 337
    .local v1, e:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 344
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_17
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    goto :goto_e
.end method


# virtual methods
.method public forgetReceiverDispatcher(Landroid/content/Context;Landroid/content/BroadcastReceiver;)Landroid/content/IIntentReceiver;
    .registers 11
    .parameter "context"
    .parameter "r"

    .prologue
    .line 594
    iget-object v4, p0, Landroid/app/ActivityThread$PackageInfo;->mReceivers:Ljava/util/HashMap;

    monitor-enter v4

    .line 595
    :try_start_3
    iget-object v5, p0, Landroid/app/ActivityThread$PackageInfo;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 596
    .local v2, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;>;"
    const/4 v3, 0x0

    .line 597
    .local v3, rd:Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;
    if-eqz v2, :cond_54

    .line 598
    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #rd:Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;
    check-cast v3, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;

    .line 599
    .restart local v3       #rd:Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;
    if-eqz v3, :cond_54

    .line 600
    invoke-virtual {v2, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v5

    if-nez v5, :cond_24

    .line 602
    iget-object v5, p0, Landroid/app/ActivityThread$PackageInfo;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    :cond_24
    invoke-virtual {p2}, Landroid/content/BroadcastReceiver;->getDebugUnregister()Z

    move-result v5

    if-eqz v5, :cond_4e

    .line 605
    iget-object v5, p0, Landroid/app/ActivityThread$PackageInfo;->mUnregisteredReceivers:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 607
    .local v1, holder:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;>;"
    if-nez v1, :cond_3e

    .line 608
    new-instance v1, Ljava/util/HashMap;

    .end local v1           #holder:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;>;"
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 609
    .restart local v1       #holder:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;>;"
    iget-object v5, p0, Landroid/app/ActivityThread$PackageInfo;->mUnregisteredReceivers:Ljava/util/HashMap;

    invoke-virtual {v5, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 611
    :cond_3e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v5, "Originally unregistered here:"

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 613
    .local v0, ex:Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 614
    invoke-virtual {v3, v0}, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;->setUnregisterLocation(Ljava/lang/RuntimeException;)V

    .line 615
    invoke-virtual {v1, p2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 617
    .end local v0           #ex:Ljava/lang/RuntimeException;
    .end local v1           #holder:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;>;"
    :cond_4e
    invoke-virtual {v3}, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;->getIIntentReceiver()Landroid/content/IIntentReceiver;

    move-result-object v5

    monitor-exit v4

    return-object v5

    .line 620
    :cond_54
    iget-object v5, p0, Landroid/app/ActivityThread$PackageInfo;->mUnregisteredReceivers:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 622
    .restart local v1       #holder:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;>;"
    if-eqz v1, :cond_8c

    .line 623
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #rd:Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;
    check-cast v3, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;

    .line 624
    .restart local v3       #rd:Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;
    if-eqz v3, :cond_8c

    .line 625
    invoke-virtual {v3}, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;->getUnregisterLocation()Ljava/lang/RuntimeException;

    move-result-object v0

    .line 626
    .restart local v0       #ex:Ljava/lang/RuntimeException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unregistering Receiver "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " that was already unregistered"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 638
    .end local v0           #ex:Ljava/lang/RuntimeException;
    .end local v1           #holder:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;>;"
    .end local v2           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;>;"
    .end local v3           #rd:Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;
    :catchall_89
    move-exception v5

    monitor-exit v4
    :try_end_8b
    .catchall {:try_start_3 .. :try_end_8b} :catchall_89

    throw v5

    .line 631
    .restart local v1       #holder:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;>;"
    .restart local v2       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;>;"
    .restart local v3       #rd:Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;
    :cond_8c
    if-nez p1, :cond_b1

    .line 632
    :try_start_8e
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unbinding Receiver "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " from Context that is no longer in use: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 635
    :cond_b1
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Receiver not registered: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_ca
    .catchall {:try_start_8e .. :try_end_ca} :catchall_89
.end method

.method public final forgetServiceDispatcher(Landroid/content/Context;Landroid/content/ServiceConnection;)Landroid/app/IServiceConnection;
    .registers 11
    .parameter "context"
    .parameter "c"

    .prologue
    const-string v4, "Unbinding Service "

    .line 837
    iget-object v4, p0, Landroid/app/ActivityThread$PackageInfo;->mServices:Ljava/util/HashMap;

    monitor-enter v4

    .line 838
    :try_start_5
    iget-object v5, p0, Landroid/app/ActivityThread$PackageInfo;->mServices:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 840
    .local v2, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ServiceConnection;Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;>;"
    const/4 v3, 0x0

    .line 841
    .local v3, sd:Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;
    if-eqz v2, :cond_5b

    .line 842
    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #sd:Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;
    check-cast v3, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;

    .line 843
    .restart local v3       #sd:Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;
    if-eqz v3, :cond_5b

    .line 844
    invoke-virtual {v2, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 845
    invoke-virtual {v3}, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;->doForget()V

    .line 846
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v5

    if-nez v5, :cond_29

    .line 847
    iget-object v5, p0, Landroid/app/ActivityThread$PackageInfo;->mServices:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 849
    :cond_29
    invoke-virtual {v3}, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;->getFlags()I

    move-result v5

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_55

    .line 850
    iget-object v5, p0, Landroid/app/ActivityThread$PackageInfo;->mUnboundServices:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 852
    .local v1, holder:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ServiceConnection;Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;>;"
    if-nez v1, :cond_45

    .line 853
    new-instance v1, Ljava/util/HashMap;

    .end local v1           #holder:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ServiceConnection;Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;>;"
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 854
    .restart local v1       #holder:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ServiceConnection;Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;>;"
    iget-object v5, p0, Landroid/app/ActivityThread$PackageInfo;->mUnboundServices:Ljava/util/HashMap;

    invoke-virtual {v5, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 856
    :cond_45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v5, "Originally unbound here:"

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 858
    .local v0, ex:Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 859
    invoke-virtual {v3, v0}, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;->setUnbindLocation(Ljava/lang/RuntimeException;)V

    .line 860
    invoke-virtual {v1, p2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 862
    .end local v0           #ex:Ljava/lang/RuntimeException;
    .end local v1           #holder:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ServiceConnection;Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;>;"
    :cond_55
    invoke-virtual {v3}, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;->getIServiceConnection()Landroid/app/IServiceConnection;

    move-result-object v5

    monitor-exit v4

    return-object v5

    .line 865
    :cond_5b
    iget-object v5, p0, Landroid/app/ActivityThread$PackageInfo;->mUnboundServices:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 867
    .restart local v1       #holder:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ServiceConnection;Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;>;"
    if-eqz v1, :cond_93

    .line 868
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #sd:Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;
    check-cast v3, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;

    .line 869
    .restart local v3       #sd:Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;
    if-eqz v3, :cond_93

    .line 870
    invoke-virtual {v3}, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;->getUnbindLocation()Ljava/lang/RuntimeException;

    move-result-object v0

    .line 871
    .restart local v0       #ex:Ljava/lang/RuntimeException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unbinding Service "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " that was already unbound"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 882
    .end local v0           #ex:Ljava/lang/RuntimeException;
    .end local v1           #holder:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ServiceConnection;Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;>;"
    .end local v2           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ServiceConnection;Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;>;"
    .end local v3           #sd:Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;
    :catchall_90
    move-exception v5

    monitor-exit v4
    :try_end_92
    .catchall {:try_start_5 .. :try_end_92} :catchall_90

    throw v5

    .line 876
    .restart local v1       #holder:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ServiceConnection;Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;>;"
    .restart local v2       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ServiceConnection;Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;>;"
    .restart local v3       #sd:Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;
    :cond_93
    if-nez p1, :cond_b8

    .line 877
    :try_start_95
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unbinding Service "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " from Context that is no longer in use: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 880
    :cond_b8
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Service not registered: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_d1
    .catchall {:try_start_95 .. :try_end_d1} :catchall_90
.end method

.method public getAppDir()Ljava/lang/String;
    .registers 2

    .prologue
    .line 458
    iget-object v0, p0, Landroid/app/ActivityThread$PackageInfo;->mAppDir:Ljava/lang/String;

    return-object v0
.end method

.method public getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .registers 2

    .prologue
    .line 315
    iget-object v0, p0, Landroid/app/ActivityThread$PackageInfo;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method public getAssets(Landroid/app/ActivityThread;)Landroid/content/res/AssetManager;
    .registers 3
    .parameter "mainThread"

    .prologue
    .line 474
    invoke-virtual {p0, p1}, Landroid/app/ActivityThread$PackageInfo;->getResources(Landroid/app/ActivityThread;)Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .registers 9

    .prologue
    .line 395
    monitor-enter p0

    .line 396
    :try_start_1
    iget-object v5, p0, Landroid/app/ActivityThread$PackageInfo;->mClassLoader:Ljava/lang/ClassLoader;

    if-eqz v5, :cond_9

    .line 397
    iget-object v5, p0, Landroid/app/ActivityThread$PackageInfo;->mClassLoader:Ljava/lang/ClassLoader;

    monitor-exit p0

    .line 453
    :goto_8
    return-object v5

    .line 400
    :cond_9
    iget-boolean v5, p0, Landroid/app/ActivityThread$PackageInfo;->mIncludeCode:Z

    if-eqz v5, :cond_90

    iget-object v5, p0, Landroid/app/ActivityThread$PackageInfo;->mPackageName:Ljava/lang/String;

    const-string v6, "android"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_90

    .line 401
    iget-object v4, p0, Landroid/app/ActivityThread$PackageInfo;->mAppDir:Ljava/lang/String;

    .line 412
    .local v4, zip:Ljava/lang/String;
    iget-object v5, p0, Landroid/app/ActivityThread$PackageInfo;->mActivityThread:Landroid/app/ActivityThread;

    iget-object v0, v5, Landroid/app/ActivityThread;->mInstrumentationAppDir:Ljava/lang/String;

    .line 414
    .local v0, instrumentationAppDir:Ljava/lang/String;
    iget-object v5, p0, Landroid/app/ActivityThread$PackageInfo;->mActivityThread:Landroid/app/ActivityThread;

    iget-object v1, v5, Landroid/app/ActivityThread;->mInstrumentationAppPackage:Ljava/lang/String;

    .line 416
    .local v1, instrumentationAppPackage:Ljava/lang/String;
    iget-object v5, p0, Landroid/app/ActivityThread$PackageInfo;->mActivityThread:Landroid/app/ActivityThread;

    iget-object v3, v5, Landroid/app/ActivityThread;->mInstrumentedAppDir:Ljava/lang/String;

    .line 418
    .local v3, instrumentedAppDir:Ljava/lang/String;
    const/4 v2, 0x0

    .line 420
    .local v2, instrumentationLibs:[Ljava/lang/String;
    iget-object v5, p0, Landroid/app/ActivityThread$PackageInfo;->mAppDir:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_36

    iget-object v5, p0, Landroid/app/ActivityThread$PackageInfo;->mAppDir:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_57

    .line 422
    :cond_36
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 423
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_57

    .line 424
    invoke-static {v1}, Landroid/app/ActivityThread$PackageInfo;->getLibrariesFor(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 429
    :cond_57
    iget-object v5, p0, Landroid/app/ActivityThread$PackageInfo;->mSharedLibraries:[Ljava/lang/String;

    if-nez v5, :cond_5d

    if-eqz v2, :cond_7a

    .line 431
    :cond_5d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Landroid/app/ActivityThread$PackageInfo;->mSharedLibraries:[Ljava/lang/String;

    invoke-static {v6, v2}, Landroid/app/ActivityThread$PackageInfo;->combineLibs([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x3a

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 443
    :cond_7a
    invoke-static {}, Landroid/app/ApplicationLoaders;->getDefault()Landroid/app/ApplicationLoaders;

    move-result-object v5

    iget-object v6, p0, Landroid/app/ActivityThread$PackageInfo;->mDataDir:Ljava/lang/String;

    iget-object v7, p0, Landroid/app/ActivityThread$PackageInfo;->mBaseClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v5, v4, v6, v7}, Landroid/app/ApplicationLoaders;->getClassLoader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object v5

    iput-object v5, p0, Landroid/app/ActivityThread$PackageInfo;->mClassLoader:Ljava/lang/ClassLoader;

    .line 453
    .end local v0           #instrumentationAppDir:Ljava/lang/String;
    .end local v1           #instrumentationAppPackage:Ljava/lang/String;
    .end local v2           #instrumentationLibs:[Ljava/lang/String;
    .end local v3           #instrumentedAppDir:Ljava/lang/String;
    .end local v4           #zip:Ljava/lang/String;
    :goto_88
    iget-object v5, p0, Landroid/app/ActivityThread$PackageInfo;->mClassLoader:Ljava/lang/ClassLoader;

    monitor-exit p0

    goto/16 :goto_8

    .line 454
    :catchall_8d
    move-exception v5

    monitor-exit p0
    :try_end_8f
    .catchall {:try_start_1 .. :try_end_8f} :catchall_8d

    throw v5

    .line 447
    :cond_90
    :try_start_90
    iget-object v5, p0, Landroid/app/ActivityThread$PackageInfo;->mBaseClassLoader:Ljava/lang/ClassLoader;

    if-nez v5, :cond_9b

    .line 448
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    iput-object v5, p0, Landroid/app/ActivityThread$PackageInfo;->mClassLoader:Ljava/lang/ClassLoader;

    goto :goto_88

    .line 450
    :cond_9b
    iget-object v5, p0, Landroid/app/ActivityThread$PackageInfo;->mBaseClassLoader:Ljava/lang/ClassLoader;

    iput-object v5, p0, Landroid/app/ActivityThread$PackageInfo;->mClassLoader:Ljava/lang/ClassLoader;
    :try_end_9f
    .catchall {:try_start_90 .. :try_end_9f} :catchall_8d

    goto :goto_88
.end method

.method public getDataDir()Ljava/lang/String;
    .registers 2

    .prologue
    .line 466
    iget-object v0, p0, Landroid/app/ActivityThread$PackageInfo;->mDataDir:Ljava/lang/String;

    return-object v0
.end method

.method public getDataDirFile()Ljava/io/File;
    .registers 2

    .prologue
    .line 470
    iget-object v0, p0, Landroid/app/ActivityThread$PackageInfo;->mDataDirFile:Ljava/io/File;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 311
    iget-object v0, p0, Landroid/app/ActivityThread$PackageInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getReceiverDispatcher(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/os/Handler;Landroid/app/Instrumentation;Z)Landroid/content/IIntentReceiver;
    .registers 17
    .parameter "r"
    .parameter "context"
    .parameter "handler"
    .parameter "instrumentation"
    .parameter "registered"

    .prologue
    .line 566
    iget-object v10, p0, Landroid/app/ActivityThread$PackageInfo;->mReceivers:Ljava/util/HashMap;

    monitor-enter v10

    .line 567
    const/4 v1, 0x0

    .line 568
    .local v1, rd:Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;
    const/4 v7, 0x0

    .line 569
    .local v7, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;>;"
    if-eqz p5, :cond_55

    .line 570
    :try_start_7
    iget-object v2, p0, Landroid/app/ActivityThread$PackageInfo;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/util/HashMap;

    move-object v7, v0

    .line 571
    if-eqz v7, :cond_55

    .line 572
    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;

    move-object v1, v0
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_47

    move-object v8, v7

    .end local v7           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;>;"
    .local v8, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;>;"
    move-object v9, v1

    .line 575
    .end local v1           #rd:Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;
    .local v9, rd:Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;
    :goto_1d
    if-nez v9, :cond_41

    .line 576
    :try_start_1f
    new-instance v1, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;-><init>(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/os/Handler;Landroid/app/Instrumentation;Z)V
    :try_end_2a
    .catchall {:try_start_1f .. :try_end_2a} :catchall_4a

    .line 578
    .end local v9           #rd:Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;
    .restart local v1       #rd:Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;
    if-eqz p5, :cond_53

    .line 579
    if-nez v8, :cond_51

    .line 580
    :try_start_2e
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V
    :try_end_33
    .catchall {:try_start_2e .. :try_end_33} :catchall_4e

    .line 581
    .end local v8           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;>;"
    .restart local v7       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;>;"
    :try_start_33
    iget-object v2, p0, Landroid/app/ActivityThread$PackageInfo;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v2, p2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    :goto_38
    invoke-virtual {v7, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    :goto_3b
    invoke-virtual {v1}, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;->getIIntentReceiver()Landroid/content/IIntentReceiver;

    move-result-object v2

    monitor-exit v10
    :try_end_40
    .catchall {:try_start_33 .. :try_end_40} :catchall_47

    return-object v2

    .line 586
    .end local v1           #rd:Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;
    .end local v7           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;>;"
    .restart local v8       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;>;"
    .restart local v9       #rd:Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;
    :cond_41
    :try_start_41
    invoke-virtual {v9, p2, p3}, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;->validate(Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_4a

    move-object v7, v8

    .end local v8           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;>;"
    .restart local v7       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;>;"
    move-object v1, v9

    .end local v9           #rd:Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;
    .restart local v1       #rd:Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;
    goto :goto_3b

    .line 589
    :catchall_47
    move-exception v2

    :goto_48
    :try_start_48
    monitor-exit v10
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    throw v2

    .end local v1           #rd:Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;
    .end local v7           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;>;"
    .restart local v8       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;>;"
    .restart local v9       #rd:Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;
    :catchall_4a
    move-exception v2

    move-object v7, v8

    .end local v8           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;>;"
    .restart local v7       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;>;"
    move-object v1, v9

    .end local v9           #rd:Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;
    .restart local v1       #rd:Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;
    goto :goto_48

    .end local v7           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;>;"
    .restart local v8       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;>;"
    :catchall_4e
    move-exception v2

    move-object v7, v8

    .end local v8           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;>;"
    .restart local v7       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;>;"
    goto :goto_48

    .end local v7           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;>;"
    .restart local v8       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;>;"
    :cond_51
    move-object v7, v8

    .end local v8           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;>;"
    .restart local v7       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;>;"
    goto :goto_38

    .end local v7           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;>;"
    .restart local v8       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;>;"
    :cond_53
    move-object v7, v8

    .end local v8           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;>;"
    .restart local v7       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;>;"
    goto :goto_3b

    :cond_55
    move-object v8, v7

    .end local v7           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;>;"
    .restart local v8       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;>;"
    move-object v9, v1

    .end local v1           #rd:Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;
    .restart local v9       #rd:Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;
    goto :goto_1d
.end method

.method public getResDir()Ljava/lang/String;
    .registers 2

    .prologue
    .line 462
    iget-object v0, p0, Landroid/app/ActivityThread$PackageInfo;->mResDir:Ljava/lang/String;

    return-object v0
.end method

.method public getResources(Landroid/app/ActivityThread;)Landroid/content/res/Resources;
    .registers 3
    .parameter "mainThread"

    .prologue
    .line 478
    iget-object v0, p0, Landroid/app/ActivityThread$PackageInfo;->mResources:Landroid/content/res/Resources;

    if-nez v0, :cond_c

    .line 479
    iget-object v0, p0, Landroid/app/ActivityThread$PackageInfo;->mResDir:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Landroid/app/ActivityThread;->getTopLevelResources(Ljava/lang/String;Landroid/app/ActivityThread$PackageInfo;)Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityThread$PackageInfo;->mResources:Landroid/content/res/Resources;

    .line 481
    :cond_c
    iget-object v0, p0, Landroid/app/ActivityThread$PackageInfo;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public final getServiceDispatcher(Landroid/content/ServiceConnection;Landroid/content/Context;Landroid/os/Handler;I)Landroid/app/IServiceConnection;
    .registers 11
    .parameter "c"
    .parameter "context"
    .parameter "handler"
    .parameter "flags"

    .prologue
    .line 815
    iget-object v5, p0, Landroid/app/ActivityThread$PackageInfo;->mServices:Ljava/util/HashMap;

    monitor-enter v5

    .line 816
    const/4 v2, 0x0

    .line 817
    .local v2, sd:Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;
    :try_start_4
    iget-object v4, p0, Landroid/app/ActivityThread$PackageInfo;->mServices:Ljava/util/HashMap;

    invoke-virtual {v4, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 818
    .local v1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ServiceConnection;Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;>;"
    if-eqz v1, :cond_3e

    .line 819
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;

    move-object v2, v0
    :try_end_16
    .catchall {:try_start_4 .. :try_end_16} :catchall_38

    move-object v3, v2

    .line 821
    .end local v2           #sd:Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;
    .local v3, sd:Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;
    :goto_17
    if-nez v3, :cond_33

    .line 822
    :try_start_19
    new-instance v2, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;

    invoke-direct {v2, p1, p2, p3, p4}, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;-><init>(Landroid/content/ServiceConnection;Landroid/content/Context;Landroid/os/Handler;I)V
    :try_end_1e
    .catchall {:try_start_19 .. :try_end_1e} :catchall_3b

    .line 823
    .end local v3           #sd:Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;
    .restart local v2       #sd:Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;
    if-nez v1, :cond_2a

    .line 824
    :try_start_20
    new-instance v1, Ljava/util/HashMap;

    .end local v1           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ServiceConnection;Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;>;"
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 825
    .restart local v1       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ServiceConnection;Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;>;"
    iget-object v4, p0, Landroid/app/ActivityThread$PackageInfo;->mServices:Ljava/util/HashMap;

    invoke-virtual {v4, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 827
    :cond_2a
    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 831
    :goto_2d
    invoke-virtual {v2}, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;->getIServiceConnection()Landroid/app/IServiceConnection;

    move-result-object v4

    monitor-exit v5
    :try_end_32
    .catchall {:try_start_20 .. :try_end_32} :catchall_38

    return-object v4

    .line 829
    .end local v2           #sd:Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;
    .restart local v3       #sd:Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;
    :cond_33
    :try_start_33
    invoke-virtual {v3, p2, p3}, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;->validate(Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_3b

    move-object v2, v3

    .end local v3           #sd:Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;
    .restart local v2       #sd:Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;
    goto :goto_2d

    .line 832
    .end local v1           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ServiceConnection;Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;>;"
    :catchall_38
    move-exception v4

    :goto_39
    :try_start_39
    monitor-exit v5
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw v4

    .end local v2           #sd:Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;
    .restart local v1       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ServiceConnection;Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;>;"
    .restart local v3       #sd:Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;
    :catchall_3b
    move-exception v4

    move-object v2, v3

    .end local v3           #sd:Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;
    .restart local v2       #sd:Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;
    goto :goto_39

    :cond_3e
    move-object v3, v2

    .end local v2           #sd:Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;
    .restart local v3       #sd:Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;
    goto :goto_17
.end method

.method public isSecurityViolation()Z
    .registers 2

    .prologue
    .line 319
    iget-boolean v0, p0, Landroid/app/ActivityThread$PackageInfo;->mSecurityViolation:Z

    return v0
.end method

.method public makeApplication(Z)Landroid/app/Application;
    .registers 10
    .parameter "forceDefaultAppClass"

    .prologue
    .line 485
    iget-object v5, p0, Landroid/app/ActivityThread$PackageInfo;->mApplication:Landroid/app/Application;

    if-eqz v5, :cond_7

    .line 486
    iget-object v5, p0, Landroid/app/ActivityThread$PackageInfo;->mApplication:Landroid/app/Application;

    .line 511
    :goto_6
    return-object v5

    .line 489
    :cond_7
    const/4 v0, 0x0

    .line 491
    .local v0, app:Landroid/app/Application;
    iget-object v5, p0, Landroid/app/ActivityThread$PackageInfo;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v5, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    .line 492
    .local v1, appClass:Ljava/lang/String;
    if-nez p1, :cond_10

    if-nez v1, :cond_12

    .line 493
    :cond_10
    const-string v1, "android.app.Application"

    .line 497
    :cond_12
    :try_start_12
    invoke-virtual {p0}, Landroid/app/ActivityThread$PackageInfo;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 498
    .local v3, cl:Ljava/lang/ClassLoader;
    new-instance v2, Landroid/app/ApplicationContext;

    invoke-direct {v2}, Landroid/app/ApplicationContext;-><init>()V

    .line 499
    .local v2, appContext:Landroid/app/ApplicationContext;
    const/4 v5, 0x0

    iget-object v6, p0, Landroid/app/ActivityThread$PackageInfo;->mActivityThread:Landroid/app/ActivityThread;

    invoke-virtual {v2, p0, v5, v6}, Landroid/app/ApplicationContext;->init(Landroid/app/ActivityThread$PackageInfo;Landroid/os/IBinder;Landroid/app/ActivityThread;)V

    .line 500
    iget-object v5, p0, Landroid/app/ActivityThread$PackageInfo;->mActivityThread:Landroid/app/ActivityThread;

    iget-object v5, v5, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v5, v3, v1, v2}, Landroid/app/Instrumentation;->newApplication(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Context;)Landroid/app/Application;

    move-result-object v0

    .line 502
    invoke-virtual {v2, v0}, Landroid/app/ApplicationContext;->setOuterContext(Landroid/content/Context;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_2c} :catch_37

    .line 510
    .end local v2           #appContext:Landroid/app/ApplicationContext;
    .end local v3           #cl:Ljava/lang/ClassLoader;
    :cond_2c
    iget-object v5, p0, Landroid/app/ActivityThread$PackageInfo;->mActivityThread:Landroid/app/ActivityThread;

    iget-object v5, v5, Landroid/app/ActivityThread;->mAllApplications:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 511
    iput-object v0, p0, Landroid/app/ActivityThread$PackageInfo;->mApplication:Landroid/app/Application;

    move-object v5, v0

    goto :goto_6

    .line 503
    :catch_37
    move-exception v5

    move-object v4, v5

    .line 504
    .local v4, e:Ljava/lang/Exception;
    iget-object v5, p0, Landroid/app/ActivityThread$PackageInfo;->mActivityThread:Landroid/app/ActivityThread;

    iget-object v5, v5, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v5, v0, v4}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v5

    if-nez v5, :cond_2c

    .line 505
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to instantiate application "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method public removeContextRegistrations(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15
    .parameter "context"
    .parameter "who"
    .parameter "what"

    .prologue
    const-string v10, "ActivityThread"

    const-string v9, " "

    .line 516
    iget-object v7, p0, Landroid/app/ActivityThread$PackageInfo;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    .line 518
    .local v4, rmap:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/BroadcastReceiver;Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;>;"
    if-eqz v4, :cond_80

    .line 519
    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 520
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;>;"
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_80

    .line 521
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;

    .line 522
    .local v3, rd:Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;
    new-instance v2, Landroid/app/IntentReceiverLeaked;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " has leaked IntentReceiver "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;->getIntentReceiver()Landroid/content/BroadcastReceiver;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " that was "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "originally registered here. Are you missing a "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "call to unregisterReceiver()?"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Landroid/app/IntentReceiverLeaked;-><init>(Ljava/lang/String;)V

    .line 527
    .local v2, leak:Landroid/app/IntentReceiverLeaked;
    invoke-virtual {v3}, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;->getLocation()Landroid/app/IntentReceiverLeaked;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/IntentReceiverLeaked;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/app/IntentReceiverLeaked;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 528
    const-string v7, "ActivityThread"

    invoke-virtual {v2}, Landroid/app/IntentReceiverLeaked;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 530
    :try_start_72
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v7

    invoke-virtual {v3}, Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;->getIIntentReceiver()Landroid/content/IIntentReceiver;

    move-result-object v8

    invoke-interface {v7, v8}, Landroid/app/IActivityManager;->unregisterReceiver(Landroid/content/IIntentReceiver;)V
    :try_end_7d
    .catch Landroid/os/RemoteException; {:try_start_72 .. :try_end_7d} :catch_7e

    goto :goto_16

    .line 532
    :catch_7e
    move-exception v7

    goto :goto_16

    .line 537
    .end local v0           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;>;"
    .end local v2           #leak:Landroid/app/IntentReceiverLeaked;
    .end local v3           #rd:Landroid/app/ActivityThread$PackageInfo$ReceiverDispatcher;
    :cond_80
    iget-object v7, p0, Landroid/app/ActivityThread$PackageInfo;->mUnregisteredReceivers:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    iget-object v7, p0, Landroid/app/ActivityThread$PackageInfo;->mServices:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    .line 541
    .local v6, smap:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ServiceConnection;Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;>;"
    if-eqz v6, :cond_f6

    .line 542
    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 543
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;>;"
    :goto_97
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_f6

    .line 544
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;

    .line 545
    .local v5, sd:Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;
    new-instance v2, Landroid/app/ServiceConnectionLeaked;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " has leaked ServiceConnection "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;->getServiceConnection()Landroid/content/ServiceConnection;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " that was originally bound here"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Landroid/app/ServiceConnectionLeaked;-><init>(Ljava/lang/String;)V

    .line 548
    .local v2, leak:Landroid/app/ServiceConnectionLeaked;
    invoke-virtual {v5}, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;->getLocation()Landroid/app/ServiceConnectionLeaked;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/ServiceConnectionLeaked;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/app/ServiceConnectionLeaked;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 549
    const-string v7, "ActivityThread"

    invoke-virtual {v2}, Landroid/app/ServiceConnectionLeaked;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 551
    :try_start_e7
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v7

    invoke-virtual {v5}, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;->getIServiceConnection()Landroid/app/IServiceConnection;

    move-result-object v8

    invoke-interface {v7, v8}, Landroid/app/IActivityManager;->unbindService(Landroid/app/IServiceConnection;)Z
    :try_end_f2
    .catch Landroid/os/RemoteException; {:try_start_e7 .. :try_end_f2} :catch_fc

    .line 556
    :goto_f2
    invoke-virtual {v5}, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;->doForget()V

    goto :goto_97

    .line 559
    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;>;"
    .end local v2           #leak:Landroid/app/ServiceConnectionLeaked;
    .end local v5           #sd:Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;
    :cond_f6
    iget-object v7, p0, Landroid/app/ActivityThread$PackageInfo;->mUnboundServices:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    return-void

    .line 553
    .restart local v1       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;>;"
    .restart local v2       #leak:Landroid/app/ServiceConnectionLeaked;
    .restart local v5       #sd:Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;
    :catch_fc
    move-exception v7

    goto :goto_f2
.end method
