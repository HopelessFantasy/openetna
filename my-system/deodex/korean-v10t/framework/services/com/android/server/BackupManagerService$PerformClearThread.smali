.class Lcom/android/server/BackupManagerService$PerformClearThread;
.super Ljava/lang/Thread;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PerformClearThread"
.end annotation


# instance fields
.field mPackage:Landroid/content/pm/PackageInfo;

.field mTransport:Lcom/android/internal/backup/IBackupTransport;

.field final synthetic this$0:Lcom/android/server/BackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Landroid/content/pm/PackageInfo;)V
    .registers 4
    .parameter
    .parameter "transport"
    .parameter "packageInfo"

    .prologue
    .line 1154
    iput-object p1, p0, Lcom/android/server/BackupManagerService$PerformClearThread;->this$0:Lcom/android/server/BackupManagerService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1155
    iput-object p2, p0, Lcom/android/server/BackupManagerService$PerformClearThread;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    .line 1156
    iput-object p3, p0, Lcom/android/server/BackupManagerService$PerformClearThread;->mPackage:Landroid/content/pm/PackageInfo;

    .line 1157
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 1163
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/BackupManagerService$PerformClearThread;->this$0:Lcom/android/server/BackupManagerService;

    invoke-static {v2}, Lcom/android/server/BackupManagerService;->access$1600(Lcom/android/server/BackupManagerService;)Ljava/io/File;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/BackupManagerService$PerformClearThread;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v3}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1164
    .local v0, stateDir:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/BackupManagerService$PerformClearThread;->mPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1165
    .local v1, stateFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1168
    iget-object v2, p0, Lcom/android/server/BackupManagerService$PerformClearThread;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    iget-object v3, p0, Lcom/android/server/BackupManagerService$PerformClearThread;->mPackage:Landroid/content/pm/PackageInfo;

    invoke-interface {v2, v3}, Lcom/android/internal/backup/IBackupTransport;->clearBackupData(Landroid/content/pm/PackageInfo;)Z
    :try_end_24
    .catchall {:try_start_0 .. :try_end_24} :catchall_43
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_24} :catch_33

    .line 1173
    :try_start_24
    iget-object v2, p0, Lcom/android/server/BackupManagerService$PerformClearThread;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v2}, Lcom/android/internal/backup/IBackupTransport;->finishBackup()Z
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_29} :catch_57

    .line 1179
    :goto_29
    iget-object v2, p0, Lcom/android/server/BackupManagerService$PerformClearThread;->this$0:Lcom/android/server/BackupManagerService;

    invoke-static {v2}, Lcom/android/server/BackupManagerService;->access$300(Lcom/android/server/BackupManagerService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1181
    .end local v0           #stateDir:Ljava/io/File;
    .end local v1           #stateFile:Ljava/io/File;
    :goto_32
    return-void

    .line 1169
    :catch_33
    move-exception v2

    .line 1173
    :try_start_34
    iget-object v2, p0, Lcom/android/server/BackupManagerService$PerformClearThread;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v2}, Lcom/android/internal/backup/IBackupTransport;->finishBackup()Z
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_39} :catch_55

    .line 1179
    :goto_39
    iget-object v2, p0, Lcom/android/server/BackupManagerService$PerformClearThread;->this$0:Lcom/android/server/BackupManagerService;

    invoke-static {v2}, Lcom/android/server/BackupManagerService;->access$300(Lcom/android/server/BackupManagerService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_32

    .line 1172
    :catchall_43
    move-exception v2

    .line 1173
    :try_start_44
    iget-object v3, p0, Lcom/android/server/BackupManagerService$PerformClearThread;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v3}, Lcom/android/internal/backup/IBackupTransport;->finishBackup()Z
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_49} :catch_53

    .line 1179
    :goto_49
    iget-object v3, p0, Lcom/android/server/BackupManagerService$PerformClearThread;->this$0:Lcom/android/server/BackupManagerService;

    invoke-static {v3}, Lcom/android/server/BackupManagerService;->access$300(Lcom/android/server/BackupManagerService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v2

    .line 1174
    :catch_53
    move-exception v3

    goto :goto_49

    :catch_55
    move-exception v2

    goto :goto_39

    .restart local v0       #stateDir:Ljava/io/File;
    .restart local v1       #stateFile:Ljava/io/File;
    :catch_57
    move-exception v2

    goto :goto_29
.end method
