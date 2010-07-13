.class Lcom/android/server/BackupManagerService$ClearDataObserver;
.super Landroid/content/pm/IPackageDataObserver$Stub;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ClearDataObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/BackupManagerService;)V
    .registers 2
    .parameter

    .prologue
    .line 655
    iput-object p1, p0, Lcom/android/server/BackupManagerService$ClearDataObserver;->this$0:Lcom/android/server/BackupManagerService;

    invoke-direct {p0}, Landroid/content/pm/IPackageDataObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemoveCompleted(Ljava/lang/String;Z)V
    .registers 6
    .parameter "packageName"
    .parameter "succeeded"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 658
    iget-object v0, p0, Lcom/android/server/BackupManagerService$ClearDataObserver;->this$0:Lcom/android/server/BackupManagerService;

    invoke-static {v0}, Lcom/android/server/BackupManagerService;->access$1400(Lcom/android/server/BackupManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 659
    :try_start_7
    iget-object v1, p0, Lcom/android/server/BackupManagerService$ClearDataObserver;->this$0:Lcom/android/server/BackupManagerService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/BackupManagerService;->access$1502(Lcom/android/server/BackupManagerService;Z)Z

    .line 660
    iget-object v1, p0, Lcom/android/server/BackupManagerService$ClearDataObserver;->this$0:Lcom/android/server/BackupManagerService;

    invoke-static {v1}, Lcom/android/server/BackupManagerService;->access$1400(Lcom/android/server/BackupManagerService;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 661
    monitor-exit v0

    .line 662
    return-void

    .line 661
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_18

    throw v1
.end method
