.class Lcom/android/server/PackageManagerService$10;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/PackageManagerService;->getPackageSizeInfo(Ljava/lang/String;Landroid/content/pm/IPackageStatsObserver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PackageManagerService;

.field final synthetic val$observer:Landroid/content/pm/IPackageStatsObserver;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/PackageManagerService;Ljava/lang/String;Landroid/content/pm/IPackageStatsObserver;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4522
    iput-object p1, p0, Lcom/android/server/PackageManagerService$10;->this$0:Lcom/android/server/PackageManagerService;

    iput-object p2, p0, Lcom/android/server/PackageManagerService$10;->val$packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/PackageManagerService$10;->val$observer:Landroid/content/pm/IPackageStatsObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 4523
    iget-object v3, p0, Lcom/android/server/PackageManagerService$10;->this$0:Lcom/android/server/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/PackageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4524
    new-instance v1, Landroid/content/pm/PackageStats;

    iget-object v3, p0, Lcom/android/server/PackageManagerService$10;->val$packageName:Ljava/lang/String;

    invoke-direct {v1, v3}, Landroid/content/pm/PackageStats;-><init>(Ljava/lang/String;)V

    .line 4526
    .local v1, lStats:Landroid/content/pm/PackageStats;
    iget-object v3, p0, Lcom/android/server/PackageManagerService$10;->this$0:Lcom/android/server/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v3

    .line 4527
    :try_start_13
    iget-object v4, p0, Lcom/android/server/PackageManagerService$10;->this$0:Lcom/android/server/PackageManagerService;

    iget-object v5, p0, Lcom/android/server/PackageManagerService$10;->val$packageName:Ljava/lang/String;

    invoke-static {v4, v5, v1}, Lcom/android/server/PackageManagerService;->access$2000(Lcom/android/server/PackageManagerService;Ljava/lang/String;Landroid/content/pm/PackageStats;)Z

    move-result v2

    .line 4528
    .local v2, succeded:Z
    monitor-exit v3
    :try_end_1c
    .catchall {:try_start_13 .. :try_end_1c} :catchall_26

    .line 4529
    iget-object v3, p0, Lcom/android/server/PackageManagerService$10;->val$observer:Landroid/content/pm/IPackageStatsObserver;

    if-eqz v3, :cond_25

    .line 4531
    :try_start_20
    iget-object v3, p0, Lcom/android/server/PackageManagerService$10;->val$observer:Landroid/content/pm/IPackageStatsObserver;

    invoke-interface {v3, v1, v2}, Landroid/content/pm/IPackageStatsObserver;->onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_25} :catch_29

    .line 4536
    :cond_25
    :goto_25
    return-void

    .line 4528
    .end local v2           #succeded:Z
    :catchall_26
    move-exception v4

    :try_start_27
    monitor-exit v3
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw v4

    .line 4532
    .restart local v2       #succeded:Z
    :catch_29
    move-exception v3

    move-object v0, v3

    .line 4533
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "PackageManager"

    const-string v4, "Observer no longer exists."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25
.end method
