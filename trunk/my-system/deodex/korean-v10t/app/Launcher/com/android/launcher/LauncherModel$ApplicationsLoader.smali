.class Lcom/android/launcher/LauncherModel$ApplicationsLoader;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/LauncherModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ApplicationsLoader"
.end annotation


# instance fields
.field private final mId:I

.field private final mIsLaunching:Z

.field private final mLauncher:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/launcher/Launcher;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mRunning:Z

.field private volatile mStopped:Z

.field final synthetic this$0:Lcom/android/launcher/LauncherModel;


# direct methods
.method constructor <init>(Lcom/android/launcher/LauncherModel;Lcom/android/launcher/Launcher;Z)V
    .registers 5
    .parameter
    .parameter "launcher"
    .parameter "isLaunching"

    .prologue
    .line 491
    iput-object p1, p0, Lcom/android/launcher/LauncherModel$ApplicationsLoader;->this$0:Lcom/android/launcher/LauncherModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 492
    iput-boolean p3, p0, Lcom/android/launcher/LauncherModel$ApplicationsLoader;->mIsLaunching:Z

    .line 493
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/launcher/LauncherModel$ApplicationsLoader;->mLauncher:Ljava/lang/ref/WeakReference;

    .line 494
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher/LauncherModel$ApplicationsLoader;->mRunning:Z

    .line 495
    invoke-static {}, Lcom/android/launcher/LauncherModel;->access$100()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, p0, Lcom/android/launcher/LauncherModel$ApplicationsLoader;->mId:I

    .line 496
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher/LauncherModel$ApplicationsLoader;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 483
    iget v0, p0, Lcom/android/launcher/LauncherModel$ApplicationsLoader;->mId:I

    return v0
.end method


# virtual methods
.method isRunning()Z
    .registers 2

    .prologue
    .line 503
    iget-boolean v0, p0, Lcom/android/launcher/LauncherModel$ApplicationsLoader;->mRunning:Z

    return v0
.end method

.method public run()V
    .registers 15

    .prologue
    .line 507
    const-string v11, "HomeLoaders"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  ----> running applications loader ("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/launcher/LauncherModel$ApplicationsLoader;->mId:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    iget-boolean v11, p0, Lcom/android/launcher/LauncherModel$ApplicationsLoader;->mIsLaunching:Z

    if-eqz v11, :cond_89

    const/4 v11, 0x0

    :goto_25
    invoke-static {v11}, Landroid/os/Process;->setThreadPriority(I)V

    .line 514
    new-instance v9, Landroid/content/Intent;

    const-string v11, "android.intent.action.MAIN"

    const/4 v12, 0x0

    invoke-direct {v9, v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 515
    .local v9, mainIntent:Landroid/content/Intent;
    const-string v11, "android.intent.category.LAUNCHER"

    invoke-virtual {v9, v11}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 517
    iget-object v11, p0, Lcom/android/launcher/LauncherModel$ApplicationsLoader;->mLauncher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v11}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher/Launcher;

    .line 518
    .local v8, launcher:Lcom/android/launcher/Launcher;
    invoke-virtual {v8}, Lcom/android/launcher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 519
    .local v10, manager:Landroid/content/pm/PackageManager;
    const/4 v11, 0x0

    invoke-virtual {v10, v9, v11}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 521
    .local v4, apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v4, :cond_8f

    iget-boolean v11, p0, Lcom/android/launcher/LauncherModel$ApplicationsLoader;->mStopped:Z

    if-nez v11, :cond_8f

    .line 522
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 525
    .local v5, count:I
    iget-object v11, p0, Lcom/android/launcher/LauncherModel$ApplicationsLoader;->this$0:Lcom/android/launcher/LauncherModel;

    invoke-static {v11}, Lcom/android/launcher/LauncherModel;->access$200(Lcom/android/launcher/LauncherModel;)Lcom/android/launcher/ApplicationsAdapter;

    move-result-object v3

    .line 527
    .local v3, applicationList:Lcom/android/launcher/ApplicationsAdapter;
    new-instance v0, Lcom/android/launcher/LauncherModel$ChangeNotifier;

    const/4 v11, 0x1

    invoke-direct {v0, v3, v11}, Lcom/android/launcher/LauncherModel$ChangeNotifier;-><init>(Lcom/android/launcher/ApplicationsAdapter;Z)V

    .line 528
    .local v0, action:Lcom/android/launcher/LauncherModel$ChangeNotifier;
    iget-object v11, p0, Lcom/android/launcher/LauncherModel$ApplicationsLoader;->this$0:Lcom/android/launcher/LauncherModel;

    invoke-static {v11}, Lcom/android/launcher/LauncherModel;->access$300(Lcom/android/launcher/LauncherModel;)Ljava/util/HashMap;

    move-result-object v1

    .line 530
    .local v1, appInfoCache:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ComponentName;Lcom/android/launcher/ApplicationInfo;>;"
    const/4 v6, 0x0

    .local v6, i:I
    :goto_63
    if-ge v6, v5, :cond_8c

    iget-boolean v11, p0, Lcom/android/launcher/LauncherModel$ApplicationsLoader;->mStopped:Z

    if-nez v11, :cond_8c

    .line 531
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 532
    .local v7, info:Landroid/content/pm/ResolveInfo;
    invoke-static {v10, v1, v7, v8}, Lcom/android/launcher/LauncherModel;->access$400(Landroid/content/pm/PackageManager;Ljava/util/HashMap;Landroid/content/pm/ResolveInfo;Landroid/content/Context;)Lcom/android/launcher/ApplicationInfo;

    move-result-object v2

    .line 535
    .local v2, application:Lcom/android/launcher/ApplicationInfo;
    invoke-virtual {v0, v2}, Lcom/android/launcher/LauncherModel$ChangeNotifier;->add(Lcom/android/launcher/ApplicationInfo;)Z

    move-result v11

    if-eqz v11, :cond_86

    iget-boolean v11, p0, Lcom/android/launcher/LauncherModel$ApplicationsLoader;->mStopped:Z

    if-nez v11, :cond_86

    .line 536
    invoke-virtual {v8, v0}, Lcom/android/launcher/Launcher;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 537
    new-instance v0, Lcom/android/launcher/LauncherModel$ChangeNotifier;

    .end local v0           #action:Lcom/android/launcher/LauncherModel$ChangeNotifier;
    const/4 v11, 0x0

    invoke-direct {v0, v3, v11}, Lcom/android/launcher/LauncherModel$ChangeNotifier;-><init>(Lcom/android/launcher/ApplicationsAdapter;Z)V

    .line 530
    .restart local v0       #action:Lcom/android/launcher/LauncherModel$ChangeNotifier;
    :cond_86
    add-int/lit8 v6, v6, 0x1

    goto :goto_63

    .line 511
    .end local v0           #action:Lcom/android/launcher/LauncherModel$ChangeNotifier;
    .end local v1           #appInfoCache:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ComponentName;Lcom/android/launcher/ApplicationInfo;>;"
    .end local v2           #application:Lcom/android/launcher/ApplicationInfo;
    .end local v3           #applicationList:Lcom/android/launcher/ApplicationsAdapter;
    .end local v4           #apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v5           #count:I
    .end local v6           #i:I
    .end local v7           #info:Landroid/content/pm/ResolveInfo;
    .end local v8           #launcher:Lcom/android/launcher/Launcher;
    .end local v9           #mainIntent:Landroid/content/Intent;
    .end local v10           #manager:Landroid/content/pm/PackageManager;
    :cond_89
    const/16 v11, 0xa

    goto :goto_25

    .line 541
    .restart local v0       #action:Lcom/android/launcher/LauncherModel$ChangeNotifier;
    .restart local v1       #appInfoCache:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ComponentName;Lcom/android/launcher/ApplicationInfo;>;"
    .restart local v3       #applicationList:Lcom/android/launcher/ApplicationsAdapter;
    .restart local v4       #apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v5       #count:I
    .restart local v6       #i:I
    .restart local v8       #launcher:Lcom/android/launcher/Launcher;
    .restart local v9       #mainIntent:Landroid/content/Intent;
    .restart local v10       #manager:Landroid/content/pm/PackageManager;
    :cond_8c
    invoke-virtual {v8, v0}, Lcom/android/launcher/Launcher;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 544
    .end local v0           #action:Lcom/android/launcher/LauncherModel$ChangeNotifier;
    .end local v1           #appInfoCache:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ComponentName;Lcom/android/launcher/ApplicationInfo;>;"
    .end local v3           #applicationList:Lcom/android/launcher/ApplicationsAdapter;
    .end local v5           #count:I
    .end local v6           #i:I
    :cond_8f
    iget-boolean v11, p0, Lcom/android/launcher/LauncherModel$ApplicationsLoader;->mStopped:Z

    if-nez v11, :cond_9d

    .line 545
    iget-object v11, p0, Lcom/android/launcher/LauncherModel$ApplicationsLoader;->this$0:Lcom/android/launcher/LauncherModel;

    const/4 v12, 0x1

    invoke-static {v11, v12}, Lcom/android/launcher/LauncherModel;->access$502(Lcom/android/launcher/LauncherModel;Z)Z

    .line 549
    :goto_99
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/launcher/LauncherModel$ApplicationsLoader;->mRunning:Z

    .line 550
    return-void

    .line 547
    :cond_9d
    const-string v11, "HomeLoaders"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  ----> applications loader stopped ("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/launcher/LauncherModel$ApplicationsLoader;->mId:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_99
.end method

.method stop()V
    .registers 2

    .prologue
    .line 499
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher/LauncherModel$ApplicationsLoader;->mStopped:Z

    .line 500
    return-void
.end method
