.class Lcom/android/server/BackupManagerService$RestoreSession;
.super Landroid/backup/IRestoreSession$Stub;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RestoreSession"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RestoreSession"


# instance fields
.field mRestoreSets:[Landroid/backup/RestoreSet;

.field private mRestoreTransport:Lcom/android/internal/backup/IBackupTransport;

.field final synthetic this$0:Lcom/android/server/BackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/BackupManagerService;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter "transport"

    .prologue
    const/4 v0, 0x0

    .line 1482
    iput-object p1, p0, Lcom/android/server/BackupManagerService$RestoreSession;->this$0:Lcom/android/server/BackupManagerService;

    invoke-direct {p0}, Landroid/backup/IRestoreSession$Stub;-><init>()V

    .line 1479
    iput-object v0, p0, Lcom/android/server/BackupManagerService$RestoreSession;->mRestoreTransport:Lcom/android/internal/backup/IBackupTransport;

    .line 1480
    iput-object v0, p0, Lcom/android/server/BackupManagerService$RestoreSession;->mRestoreSets:[Landroid/backup/RestoreSet;

    .line 1483
    invoke-static {p1, p2}, Lcom/android/server/BackupManagerService;->access$900(Lcom/android/server/BackupManagerService;Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/BackupManagerService$RestoreSession;->mRestoreTransport:Lcom/android/internal/backup/IBackupTransport;

    .line 1484
    return-void
.end method


# virtual methods
.method public endRestoreSession()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const-string v5, "endRestoreSession"

    const-string v4, "RestoreSession"

    .line 1528
    iget-object v0, p0, Lcom/android/server/BackupManagerService$RestoreSession;->this$0:Lcom/android/server/BackupManagerService;

    invoke-static {v0}, Lcom/android/server/BackupManagerService;->access$2200(Lcom/android/server/BackupManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.BACKUP"

    const-string v2, "endRestoreSession"

    invoke-virtual {v0, v1, v5}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1531
    const-string v0, "RestoreSession"

    const-string v0, "endRestoreSession"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1533
    iget-object v0, p0, Lcom/android/server/BackupManagerService$RestoreSession;->mRestoreTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v0}, Lcom/android/internal/backup/IBackupTransport;->finishRestore()V

    .line 1534
    iput-object v3, p0, Lcom/android/server/BackupManagerService$RestoreSession;->mRestoreTransport:Lcom/android/internal/backup/IBackupTransport;

    .line 1535
    iget-object v0, p0, Lcom/android/server/BackupManagerService$RestoreSession;->this$0:Lcom/android/server/BackupManagerService;

    monitor-enter v0

    .line 1536
    :try_start_23
    iget-object v1, p0, Lcom/android/server/BackupManagerService$RestoreSession;->this$0:Lcom/android/server/BackupManagerService;

    invoke-static {v1}, Lcom/android/server/BackupManagerService;->access$2300(Lcom/android/server/BackupManagerService;)Lcom/android/server/BackupManagerService$RestoreSession;

    move-result-object v1

    if-ne v1, p0, :cond_33

    .line 1537
    iget-object v1, p0, Lcom/android/server/BackupManagerService$RestoreSession;->this$0:Lcom/android/server/BackupManagerService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/BackupManagerService;->access$2302(Lcom/android/server/BackupManagerService;Lcom/android/server/BackupManagerService$RestoreSession;)Lcom/android/server/BackupManagerService$RestoreSession;

    .line 1541
    :goto_31
    monitor-exit v0

    .line 1542
    return-void

    .line 1539
    :cond_33
    const-string v1, "RestoreSession"

    const-string v2, "ending non-current restore session"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31

    .line 1541
    :catchall_3b
    move-exception v1

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_23 .. :try_end_3d} :catchall_3b

    throw v1
.end method

.method public getAvailableRestoreSets()[Landroid/backup/RestoreSet;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1488
    iget-object v1, p0, Lcom/android/server/BackupManagerService$RestoreSession;->this$0:Lcom/android/server/BackupManagerService;

    invoke-static {v1}, Lcom/android/server/BackupManagerService;->access$2200(Lcom/android/server/BackupManagerService;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.BACKUP"

    const-string v3, "getAvailableRestoreSets"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1492
    :try_start_d
    monitor-enter p0
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_e} :catch_21

    .line 1493
    :try_start_e
    iget-object v1, p0, Lcom/android/server/BackupManagerService$RestoreSession;->mRestoreSets:[Landroid/backup/RestoreSet;

    if-nez v1, :cond_1a

    .line 1494
    iget-object v1, p0, Lcom/android/server/BackupManagerService$RestoreSession;->mRestoreTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v1}, Lcom/android/internal/backup/IBackupTransport;->getAvailableRestoreSets()[Landroid/backup/RestoreSet;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/BackupManagerService$RestoreSession;->mRestoreSets:[Landroid/backup/RestoreSet;

    .line 1496
    :cond_1a
    iget-object v1, p0, Lcom/android/server/BackupManagerService$RestoreSession;->mRestoreSets:[Landroid/backup/RestoreSet;

    monitor-exit p0

    return-object v1

    .line 1497
    :catchall_1e
    move-exception v1

    monitor-exit p0
    :try_end_20
    .catchall {:try_start_e .. :try_end_20} :catchall_1e

    :try_start_20
    throw v1
    :try_end_21
    .catch Ljava/lang/RuntimeException; {:try_start_20 .. :try_end_21} :catch_21

    .line 1498
    :catch_21
    move-exception v1

    move-object v0, v1

    .line 1499
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "RestoreSession"

    const-string v2, "getAvailableRestoreSets exception"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1500
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 1501
    throw v0
.end method

.method public performRestore(JLandroid/backup/IRestoreObserver;)I
    .registers 12
    .parameter "token"
    .parameter "observer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v3, "RestoreSession"

    .line 1507
    iget-object v0, p0, Lcom/android/server/BackupManagerService$RestoreSession;->this$0:Lcom/android/server/BackupManagerService;

    invoke-static {v0}, Lcom/android/server/BackupManagerService;->access$2200(Lcom/android/server/BackupManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.BACKUP"

    const-string v2, "performRestore"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1509
    const-string v0, "RestoreSession"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "performRestore token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " observer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1511
    iget-object v0, p0, Lcom/android/server/BackupManagerService$RestoreSession;->mRestoreSets:[Landroid/backup/RestoreSet;

    if-eqz v0, :cond_74

    .line 1512
    const/4 v6, 0x0

    .local v6, i:I
    :goto_36
    iget-object v0, p0, Lcom/android/server/BackupManagerService$RestoreSession;->mRestoreSets:[Landroid/backup/RestoreSet;

    array-length v0, v0

    if-ge v6, v0, :cond_7b

    .line 1513
    iget-object v0, p0, Lcom/android/server/BackupManagerService$RestoreSession;->mRestoreSets:[Landroid/backup/RestoreSet;

    aget-object v0, v0, v6

    iget-wide v0, v0, Landroid/backup/RestoreSet;->token:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_71

    .line 1514
    iget-object v0, p0, Lcom/android/server/BackupManagerService$RestoreSession;->this$0:Lcom/android/server/BackupManagerService;

    invoke-static {v0}, Lcom/android/server/BackupManagerService;->access$300(Lcom/android/server/BackupManagerService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1515
    iget-object v0, p0, Lcom/android/server/BackupManagerService$RestoreSession;->this$0:Lcom/android/server/BackupManagerService;

    invoke-static {v0}, Lcom/android/server/BackupManagerService;->access$400(Lcom/android/server/BackupManagerService;)Lcom/android/server/BackupManagerService$BackupHandler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/BackupManagerService$BackupHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 1516
    .local v7, msg:Landroid/os/Message;
    new-instance v0, Lcom/android/server/BackupManagerService$RestoreParams;

    iget-object v1, p0, Lcom/android/server/BackupManagerService$RestoreSession;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v2, p0, Lcom/android/server/BackupManagerService$RestoreSession;->mRestoreTransport:Lcom/android/internal/backup/IBackupTransport;

    move-object v3, p3

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/BackupManagerService$RestoreParams;-><init>(Lcom/android/server/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Landroid/backup/IRestoreObserver;J)V

    iput-object v0, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1517
    iget-object v0, p0, Lcom/android/server/BackupManagerService$RestoreSession;->this$0:Lcom/android/server/BackupManagerService;

    invoke-static {v0}, Lcom/android/server/BackupManagerService;->access$400(Lcom/android/server/BackupManagerService;)Lcom/android/server/BackupManagerService$BackupHandler;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/android/server/BackupManagerService$BackupHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1518
    const/4 v0, 0x0

    .line 1524
    .end local v6           #i:I
    .end local v7           #msg:Landroid/os/Message;
    :goto_70
    return v0

    .line 1512
    .restart local v6       #i:I
    :cond_71
    add-int/lit8 v6, v6, 0x1

    goto :goto_36

    .line 1522
    .end local v6           #i:I
    :cond_74
    const-string v0, "RestoreSession"

    const-string v0, "No current restore set, not doing restore"

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1524
    :cond_7b
    const/4 v0, -0x1

    goto :goto_70
.end method
