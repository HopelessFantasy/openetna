.class Lcom/android/server/PackageManagerService$5;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/PackageManagerService;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PackageManagerService;

.field final synthetic val$flags:I

.field final synthetic val$installerPackageName:Ljava/lang/String;

.field final synthetic val$observer:Landroid/content/pm/IPackageInstallObserver;

.field final synthetic val$packageURI:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/server/PackageManagerService;Landroid/net/Uri;ILjava/lang/String;Landroid/content/pm/IPackageInstallObserver;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3445
    iput-object p1, p0, Lcom/android/server/PackageManagerService$5;->this$0:Lcom/android/server/PackageManagerService;

    iput-object p2, p0, Lcom/android/server/PackageManagerService$5;->val$packageURI:Landroid/net/Uri;

    iput p3, p0, Lcom/android/server/PackageManagerService$5;->val$flags:I

    iput-object p4, p0, Lcom/android/server/PackageManagerService$5;->val$installerPackageName:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/PackageManagerService$5;->val$observer:Landroid/content/pm/IPackageInstallObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 3446
    iget-object v4, p0, Lcom/android/server/PackageManagerService$5;->this$0:Lcom/android/server/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/PackageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3448
    iget-object v4, p0, Lcom/android/server/PackageManagerService$5;->this$0:Lcom/android/server/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v4

    .line 3449
    :try_start_e
    iget-object v5, p0, Lcom/android/server/PackageManagerService$5;->this$0:Lcom/android/server/PackageManagerService;

    iget-object v6, p0, Lcom/android/server/PackageManagerService$5;->val$packageURI:Landroid/net/Uri;

    iget v7, p0, Lcom/android/server/PackageManagerService$5;->val$flags:I

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/android/server/PackageManagerService$5;->val$installerPackageName:Ljava/lang/String;

    invoke-static {v5, v6, v7, v8, v9}, Lcom/android/server/PackageManagerService;->access$1500(Lcom/android/server/PackageManagerService;Landroid/net/Uri;IZLjava/lang/String;)Lcom/android/server/PackageManagerService$PackageInstalledInfo;

    move-result-object v2

    .line 3450
    .local v2, res:Lcom/android/server/PackageManagerService$PackageInstalledInfo;
    monitor-exit v4
    :try_end_1c
    .catchall {:try_start_e .. :try_end_1c} :catchall_6c

    .line 3451
    iget-object v4, p0, Lcom/android/server/PackageManagerService$5;->val$observer:Landroid/content/pm/IPackageInstallObserver;

    if-eqz v4, :cond_29

    .line 3453
    :try_start_20
    iget-object v4, p0, Lcom/android/server/PackageManagerService$5;->val$observer:Landroid/content/pm/IPackageInstallObserver;

    iget-object v5, v2, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->name:Ljava/lang/String;

    iget v6, v2, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->returnCode:I

    invoke-interface {v4, v5, v6}, Landroid/content/pm/IPackageInstallObserver;->packageInstalled(Ljava/lang/String;I)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_29} :catch_6f

    .line 3460
    :cond_29
    :goto_29
    iget v4, v2, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->returnCode:I

    if-ne v4, v10, :cond_64

    .line 3461
    iget-object v4, v2, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/PackageManagerService$PackageRemovedInfo;

    invoke-virtual {v4, v11, v10}, Lcom/android/server/PackageManagerService$PackageRemovedInfo;->sendBroadcast(ZZ)V

    .line 3462
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, v10}, Landroid/os/Bundle;-><init>(I)V

    .line 3463
    .local v1, extras:Landroid/os/Bundle;
    const-string v4, "android.intent.extra.UID"

    iget v5, v2, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->uid:I

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3464
    iget-object v4, v2, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/PackageManagerService$PackageRemovedInfo;

    iget-object v4, v4, Lcom/android/server/PackageManagerService$PackageRemovedInfo;->removedPackage:Ljava/lang/String;

    if-eqz v4, :cond_79

    move v3, v10

    .line 3465
    .local v3, update:Z
    :goto_45
    if-eqz v3, :cond_4c

    .line 3466
    const-string v4, "android.intent.extra.REPLACING"

    invoke-virtual {v1, v4, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3468
    :cond_4c
    const-string v4, "android.intent.action.PACKAGE_ADDED"

    iget-object v5, v2, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v5, v5, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v4, v5, v1}, Lcom/android/server/PackageManagerService;->access$1400(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3471
    if-eqz v3, :cond_64

    .line 3472
    const-string v4, "android.intent.action.PACKAGE_REPLACED"

    iget-object v5, v2, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v5, v5, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v4, v5, v1}, Lcom/android/server/PackageManagerService;->access$1400(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3477
    .end local v1           #extras:Landroid/os/Bundle;
    .end local v3           #update:Z
    :cond_64
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Runtime;->gc()V

    .line 3478
    return-void

    .line 3450
    .end local v2           #res:Lcom/android/server/PackageManagerService$PackageInstalledInfo;
    :catchall_6c
    move-exception v5

    :try_start_6d
    monitor-exit v4
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_6c

    throw v5

    .line 3454
    .restart local v2       #res:Lcom/android/server/PackageManagerService$PackageInstalledInfo;
    :catch_6f
    move-exception v4

    move-object v0, v4

    .line 3455
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "PackageManager"

    const-string v5, "Observer no longer exists."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29

    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v1       #extras:Landroid/os/Bundle;
    :cond_79
    move v3, v11

    .line 3464
    goto :goto_45
.end method
