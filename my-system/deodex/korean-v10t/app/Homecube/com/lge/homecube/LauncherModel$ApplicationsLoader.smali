.class Lcom/lge/homecube/LauncherModel$ApplicationsLoader;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/homecube/LauncherModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ApplicationsLoader"
.end annotation


# instance fields
.field private final mLauncher:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/lge/homecube/Launcher;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mRunning:Z

.field private volatile mStopped:Z

.field final synthetic this$0:Lcom/lge/homecube/LauncherModel;


# direct methods
.method constructor <init>(Lcom/lge/homecube/LauncherModel;Lcom/lge/homecube/Launcher;)V
    .registers 4
    .parameter
    .parameter "launcher"

    .prologue
    .line 464
    iput-object p1, p0, Lcom/lge/homecube/LauncherModel$ApplicationsLoader;->this$0:Lcom/lge/homecube/LauncherModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 465
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/lge/homecube/LauncherModel$ApplicationsLoader;->mLauncher:Ljava/lang/ref/WeakReference;

    .line 466
    return-void
.end method


# virtual methods
.method isRunning()Z
    .registers 2

    .prologue
    .line 473
    iget-boolean v0, p0, Lcom/lge/homecube/LauncherModel$ApplicationsLoader;->mRunning:Z

    return v0
.end method

.method public run()V
    .registers 16

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x0

    .line 477
    iput-boolean v14, p0, Lcom/lge/homecube/LauncherModel$ApplicationsLoader;->mRunning:Z

    .line 479
    const/16 v11, 0xa

    invoke-static {v11}, Landroid/os/Process;->setThreadPriority(I)V

    .line 481
    new-instance v9, Landroid/content/Intent;

    const-string v11, "android.intent.action.MAIN"

    const/4 v12, 0x0

    invoke-direct {v9, v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 482
    .local v9, mainIntent:Landroid/content/Intent;
    const-string v11, "android.intent.category.LAUNCHER"

    invoke-virtual {v9, v11}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 484
    iget-object v11, p0, Lcom/lge/homecube/LauncherModel$ApplicationsLoader;->mLauncher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v11}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/lge/homecube/Launcher;

    .line 485
    .local v8, launcher:Lcom/lge/homecube/Launcher;
    invoke-virtual {v8}, Lcom/lge/homecube/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 486
    .local v10, manager:Landroid/content/pm/PackageManager;
    invoke-virtual {v10, v9, v13}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 488
    .local v4, apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v4, :cond_6a

    iget-boolean v11, p0, Lcom/lge/homecube/LauncherModel$ApplicationsLoader;->mStopped:Z

    if-nez v11, :cond_6a

    .line 489
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 492
    .local v5, count:I
    iget-object v11, p0, Lcom/lge/homecube/LauncherModel$ApplicationsLoader;->this$0:Lcom/lge/homecube/LauncherModel;

    invoke-static {v11}, Lcom/lge/homecube/LauncherModel;->access$100(Lcom/lge/homecube/LauncherModel;)Lcom/lge/homecube/ApplicationsAdapter;

    move-result-object v3

    .line 494
    .local v3, applicationList:Lcom/lge/homecube/ApplicationsAdapter;
    new-instance v0, Lcom/lge/homecube/LauncherModel$ChangeNotifier;

    invoke-direct {v0, v3, v14}, Lcom/lge/homecube/LauncherModel$ChangeNotifier;-><init>(Lcom/lge/homecube/ApplicationsAdapter;Z)V

    .line 495
    .local v0, action:Lcom/lge/homecube/LauncherModel$ChangeNotifier;
    iget-object v11, p0, Lcom/lge/homecube/LauncherModel$ApplicationsLoader;->this$0:Lcom/lge/homecube/LauncherModel;

    invoke-static {v11}, Lcom/lge/homecube/LauncherModel;->access$200(Lcom/lge/homecube/LauncherModel;)Ljava/util/HashMap;

    move-result-object v1

    .line 497
    .local v1, appInfoCache:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ComponentName;Lcom/lge/homecube/ApplicationInfo;>;"
    const/4 v6, 0x0

    .local v6, i:I
    :goto_42
    if-ge v6, v5, :cond_67

    iget-boolean v11, p0, Lcom/lge/homecube/LauncherModel$ApplicationsLoader;->mStopped:Z

    if-nez v11, :cond_67

    .line 498
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 499
    .local v7, info:Landroid/content/pm/ResolveInfo;
    invoke-static {v10, v1, v7}, Lcom/lge/homecube/LauncherModel;->access$300(Landroid/content/pm/PackageManager;Ljava/util/HashMap;Landroid/content/pm/ResolveInfo;)Lcom/lge/homecube/ApplicationInfo;

    move-result-object v2

    .line 502
    .local v2, application:Lcom/lge/homecube/ApplicationInfo;
    invoke-virtual {v0, v2}, Lcom/lge/homecube/LauncherModel$ChangeNotifier;->add(Lcom/lge/homecube/ApplicationInfo;)Z

    move-result v11

    if-eqz v11, :cond_64

    iget-boolean v11, p0, Lcom/lge/homecube/LauncherModel$ApplicationsLoader;->mStopped:Z

    if-nez v11, :cond_64

    .line 503
    invoke-virtual {v8, v0}, Lcom/lge/homecube/Launcher;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 504
    new-instance v0, Lcom/lge/homecube/LauncherModel$ChangeNotifier;

    .end local v0           #action:Lcom/lge/homecube/LauncherModel$ChangeNotifier;
    invoke-direct {v0, v3, v13}, Lcom/lge/homecube/LauncherModel$ChangeNotifier;-><init>(Lcom/lge/homecube/ApplicationsAdapter;Z)V

    .line 497
    .restart local v0       #action:Lcom/lge/homecube/LauncherModel$ChangeNotifier;
    :cond_64
    add-int/lit8 v6, v6, 0x1

    goto :goto_42

    .line 508
    .end local v2           #application:Lcom/lge/homecube/ApplicationInfo;
    .end local v7           #info:Landroid/content/pm/ResolveInfo;
    :cond_67
    invoke-virtual {v8, v0}, Lcom/lge/homecube/Launcher;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 511
    .end local v0           #action:Lcom/lge/homecube/LauncherModel$ChangeNotifier;
    .end local v1           #appInfoCache:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ComponentName;Lcom/lge/homecube/ApplicationInfo;>;"
    .end local v3           #applicationList:Lcom/lge/homecube/ApplicationsAdapter;
    .end local v5           #count:I
    .end local v6           #i:I
    :cond_6a
    iget-boolean v11, p0, Lcom/lge/homecube/LauncherModel$ApplicationsLoader;->mStopped:Z

    if-nez v11, :cond_73

    .line 512
    iget-object v11, p0, Lcom/lge/homecube/LauncherModel$ApplicationsLoader;->this$0:Lcom/lge/homecube/LauncherModel;

    invoke-static {v11, v14}, Lcom/lge/homecube/LauncherModel;->access$402(Lcom/lge/homecube/LauncherModel;Z)Z

    .line 514
    :cond_73
    iput-boolean v13, p0, Lcom/lge/homecube/LauncherModel$ApplicationsLoader;->mRunning:Z

    .line 515
    return-void
.end method

.method stop()V
    .registers 2

    .prologue
    .line 469
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/homecube/LauncherModel$ApplicationsLoader;->mStopped:Z

    .line 470
    return-void
.end method
