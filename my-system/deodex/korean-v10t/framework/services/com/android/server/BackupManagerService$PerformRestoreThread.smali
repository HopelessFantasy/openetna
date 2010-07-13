.class Lcom/android/server/BackupManagerService$PerformRestoreThread;
.super Ljava/lang/Thread;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PerformRestoreThread"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/BackupManagerService$PerformRestoreThread$RestoreRequest;
    }
.end annotation


# instance fields
.field private mImage:Landroid/backup/RestoreSet;

.field private mObserver:Landroid/backup/IRestoreObserver;

.field private mStateDir:Ljava/io/File;

.field private mToken:J

.field private mTransport:Lcom/android/internal/backup/IBackupTransport;

.field final synthetic this$0:Lcom/android/server/BackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Landroid/backup/IRestoreObserver;J)V
    .registers 9
    .parameter
    .parameter "transport"
    .parameter "observer"
    .parameter "restoreSetToken"

    .prologue
    .line 895
    iput-object p1, p0, Lcom/android/server/BackupManagerService$PerformRestoreThread;->this$0:Lcom/android/server/BackupManagerService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 896
    iput-object p2, p0, Lcom/android/server/BackupManagerService$PerformRestoreThread;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    .line 897
    const-string v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PerformRestoreThread mObserver="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/BackupManagerService$PerformRestoreThread;->mObserver:Landroid/backup/IRestoreObserver;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    iput-object p3, p0, Lcom/android/server/BackupManagerService$PerformRestoreThread;->mObserver:Landroid/backup/IRestoreObserver;

    .line 899
    iput-wide p4, p0, Lcom/android/server/BackupManagerService$PerformRestoreThread;->mToken:J

    .line 902
    :try_start_25
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Lcom/android/server/BackupManagerService;->access$1600(Lcom/android/server/BackupManagerService;)Ljava/io/File;

    move-result-object v1

    invoke-interface {p2}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/BackupManagerService$PerformRestoreThread;->mStateDir:Ljava/io/File;
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_34} :catch_3a

    .line 906
    :goto_34
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformRestoreThread;->mStateDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 907
    return-void

    .line 903
    :catch_3a
    move-exception v0

    goto :goto_34
.end method


# virtual methods
.method processOneRestore(Landroid/content/pm/PackageInfo;ILandroid/app/IBackupAgent;)V
    .registers 15
    .parameter "app"
    .parameter "appVersionCode"
    .parameter "agent"

    .prologue
    const-string v10, "BackupManagerService"

    .line 1099
    iget-object v5, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 1101
    .local v5, packageName:Ljava/lang/String;
    const-string v7, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "processOneRestore packageName="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    new-instance v1, Ljava/io/File;

    iget-object v7, p0, Lcom/android/server/BackupManagerService$PerformRestoreThread;->this$0:Lcom/android/server/BackupManagerService;

    invoke-static {v7}, Lcom/android/server/BackupManagerService;->access$2000(Lcom/android/server/BackupManagerService;)Ljava/io/File;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".restore"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1105
    .local v1, backupDataName:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1107
    const/high16 v7, 0x3800

    :try_start_3f
    invoke-static {v1, v7}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_42} :catch_a4

    move-result-object v0

    .line 1115
    .local v0, backupData:Landroid/os/ParcelFileDescriptor;
    :try_start_43
    iget-object v7, p0, Lcom/android/server/BackupManagerService$PerformRestoreThread;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v7, v0}, Lcom/android/internal/backup/IBackupTransport;->getRestoreData(Landroid/os/ParcelFileDescriptor;)Z

    move-result v7

    if-nez v7, :cond_67

    .line 1117
    const-string v7, "BackupManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error getting restore data for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_63
    .catchall {:try_start_43 .. :try_end_63} :catchall_bf

    .line 1121
    :try_start_63
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 1147
    .end local v0           #backupData:Landroid/os/ParcelFileDescriptor;
    :goto_66
    return-void

    .line 1121
    .restart local v0       #backupData:Landroid/os/ParcelFileDescriptor;
    :cond_67
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 1125
    new-instance v4, Ljava/io/File;

    iget-object v7, p0, Lcom/android/server/BackupManagerService$PerformRestoreThread;->mStateDir:Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".new"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1126
    .local v4, newStateName:Ljava/io/File;
    const/high16 v7, 0x3800

    invoke-static {v4, v7}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 1131
    .local v3, newState:Landroid/os/ParcelFileDescriptor;
    const/high16 v7, 0x1000

    invoke-static {v1, v7}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_8f} :catch_a4

    move-result-object v0

    .line 1135
    :try_start_90
    invoke-interface {p3, v0, p2, v3}, Landroid/app/IBackupAgent;->doRestore(Landroid/os/ParcelFileDescriptor;ILandroid/os/ParcelFileDescriptor;)V
    :try_end_93
    .catchall {:try_start_90 .. :try_end_93} :catchall_c4

    .line 1137
    :try_start_93
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 1138
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 1142
    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/android/server/BackupManagerService$PerformRestoreThread;->mStateDir:Ljava/io/File;

    invoke-direct {v6, v7, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1143
    .local v6, savedStateName:Ljava/io/File;
    invoke-virtual {v4, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_a3} :catch_a4

    goto :goto_66

    .line 1144
    .end local v0           #backupData:Landroid/os/ParcelFileDescriptor;
    .end local v3           #newState:Landroid/os/ParcelFileDescriptor;
    .end local v4           #newStateName:Ljava/io/File;
    .end local v6           #savedStateName:Ljava/io/File;
    :catch_a4
    move-exception v7

    move-object v2, v7

    .line 1145
    .local v2, e:Ljava/lang/Exception;
    const-string v7, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error restoring data for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_66

    .line 1121
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v0       #backupData:Landroid/os/ParcelFileDescriptor;
    :catchall_bf
    move-exception v7

    :try_start_c0
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    throw v7

    .line 1137
    .restart local v3       #newState:Landroid/os/ParcelFileDescriptor;
    .restart local v4       #newStateName:Ljava/io/File;
    :catchall_c4
    move-exception v7

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 1138
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    throw v7
    :try_end_cc
    .catch Ljava/lang/Exception; {:try_start_c0 .. :try_end_cc} :catch_a4
.end method

.method public run()V
    .registers 22

    .prologue
    .line 911
    const-string v17, "BackupManagerService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Beginning restore process mTransport="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreThread;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " mObserver="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreThread;->mObserver:Landroid/backup/IRestoreObserver;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " mToken="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreThread;->mToken:J

    move-wide/from16 v19, v0

    invoke-virtual/range {v18 .. v20}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    const/4 v8, -0x1

    .line 932
    .local v8, error:I
    :try_start_3f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreThread;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/android/internal/backup/IBackupTransport;->getAvailableRestoreSets()[Landroid/backup/RestoreSet;

    move-result-object v10

    .line 933
    .local v10, images:[Landroid/backup/RestoreSet;
    if-nez v10, :cond_b6

    .line 935
    const-string v17, "BackupManagerService"

    const-string v18, "Error getting restore sets"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_52
    .catchall {:try_start_3f .. :try_end_52} :catchall_5ff
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3f .. :try_end_52} :catch_1fb
    .catch Landroid/os/RemoteException; {:try_start_3f .. :try_end_52} :catch_592

    .line 1076
    :try_start_52
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreThread;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/android/internal/backup/IBackupTransport;->finishRestore()V
    :try_end_5b
    .catch Landroid/os/RemoteException; {:try_start_52 .. :try_end_5b} :catch_9b

    .line 1081
    :goto_5b
    const-string v17, "BackupManagerService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "finishing restore mObserver="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreThread;->mObserver:Landroid/backup/IRestoreObserver;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreThread;->mObserver:Landroid/backup/IRestoreObserver;

    move-object/from16 v17, v0

    if-eqz v17, :cond_8d

    .line 1085
    :try_start_81
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreThread;->mObserver:Landroid/backup/IRestoreObserver;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move v1, v8

    invoke-interface {v0, v1}, Landroid/backup/IRestoreObserver;->restoreFinished(I)V
    :try_end_8d
    .catch Landroid/os/RemoteException; {:try_start_81 .. :try_end_8d} :catch_ab

    .line 1092
    :cond_8d
    :goto_8d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreThread;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/BackupManagerService;->access$300(Lcom/android/server/BackupManagerService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1094
    .end local v10           #images:[Landroid/backup/RestoreSet;
    :goto_9a
    return-void

    .line 1077
    .restart local v10       #images:[Landroid/backup/RestoreSet;
    :catch_9b
    move-exception v17

    move-object/from16 v7, v17

    .line 1078
    .local v7, e:Landroid/os/RemoteException;
    const-string v17, "BackupManagerService"

    const-string v18, "Error finishing restore"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object v2, v7

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5b

    .line 1086
    .end local v7           #e:Landroid/os/RemoteException;
    :catch_ab
    move-exception v17

    move-object/from16 v7, v17

    .line 1087
    .restart local v7       #e:Landroid/os/RemoteException;
    const-string v17, "BackupManagerService"

    const-string v18, "Restore observer died at restoreFinished"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8d

    .line 939
    .end local v7           #e:Landroid/os/RemoteException;
    :cond_b6
    :try_start_b6
    move-object v0, v10

    array-length v0, v0

    move/from16 v17, v0

    if-nez v17, :cond_127

    .line 940
    const-string v17, "BackupManagerService"

    const-string v18, "No restore sets available"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c3
    .catchall {:try_start_b6 .. :try_end_c3} :catchall_5ff
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b6 .. :try_end_c3} :catch_1fb
    .catch Landroid/os/RemoteException; {:try_start_b6 .. :try_end_c3} :catch_592

    .line 1076
    :try_start_c3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreThread;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/android/internal/backup/IBackupTransport;->finishRestore()V
    :try_end_cc
    .catch Landroid/os/RemoteException; {:try_start_c3 .. :try_end_cc} :catch_10c

    .line 1081
    :goto_cc
    const-string v17, "BackupManagerService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "finishing restore mObserver="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreThread;->mObserver:Landroid/backup/IRestoreObserver;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreThread;->mObserver:Landroid/backup/IRestoreObserver;

    move-object/from16 v17, v0

    if-eqz v17, :cond_fe

    .line 1085
    :try_start_f2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreThread;->mObserver:Landroid/backup/IRestoreObserver;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move v1, v8

    invoke-interface {v0, v1}, Landroid/backup/IRestoreObserver;->restoreFinished(I)V
    :try_end_fe
    .catch Landroid/os/RemoteException; {:try_start_f2 .. :try_end_fe} :catch_11c

    .line 1092
    :cond_fe
    :goto_fe
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreThread;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/BackupManagerService;->access$300(Lcom/android/server/BackupManagerService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_9a

    .line 1077
    :catch_10c
    move-exception v17

    move-object/from16 v7, v17

    .line 1078
    .restart local v7       #e:Landroid/os/RemoteException;
    const-string v17, "BackupManagerService"

    const-string v18, "Error finishing restore"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object v2, v7

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_cc

    .line 1086
    .end local v7           #e:Landroid/os/RemoteException;
    :catch_11c
    move-exception v17

    move-object/from16 v7, v17

    .line 1087
    .restart local v7       #e:Landroid/os/RemoteException;
    const-string v17, "BackupManagerService"

    const-string v18, "Restore observer died at restoreFinished"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_fe

    .line 944
    .end local v7           #e:Landroid/os/RemoteException;
    :cond_127
    const/16 v17, 0x0

    :try_start_129
    aget-object v17, v10, v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService$PerformRestoreThread;->mImage:Landroid/backup/RestoreSet;

    .line 948
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 949
    .local v16, restorePackages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    new-instance v12, Landroid/content/pm/PackageInfo;

    invoke-direct {v12}, Landroid/content/pm/PackageInfo;-><init>()V

    .line 950
    .local v12, omPackage:Landroid/content/pm/PackageInfo;
    const-string v17, "@pm@"

    move-object/from16 v0, v17

    move-object v1, v12

    iput-object v0, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 951
    move-object/from16 v0, v16

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 953
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreThread;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/BackupManagerService;->access$1800(Lcom/android/server/BackupManagerService;)Ljava/util/List;

    move-result-object v5

    .line 954
    .local v5, agentPackages:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 957
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreThread;->mObserver:Landroid/backup/IRestoreObserver;

    move-object/from16 v17, v0
    :try_end_15e
    .catchall {:try_start_129 .. :try_end_15e} :catchall_5ff
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_129 .. :try_end_15e} :catch_1fb
    .catch Landroid/os/RemoteException; {:try_start_129 .. :try_end_15e} :catch_592

    if-eqz v17, :cond_16d

    .line 961
    :try_start_160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreThread;->mObserver:Landroid/backup/IRestoreObserver;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v18

    invoke-interface/range {v17 .. v18}, Landroid/backup/IRestoreObserver;->restoreStarting(I)V
    :try_end_16d
    .catchall {:try_start_160 .. :try_end_16d} :catchall_5ff
    .catch Landroid/os/RemoteException; {:try_start_160 .. :try_end_16d} :catch_1e7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_160 .. :try_end_16d} :catch_1fb

    .line 968
    :cond_16d
    :goto_16d
    :try_start_16d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreThread;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreThread;->mToken:J

    move-wide/from16 v18, v0

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Landroid/content/pm/PackageInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/content/pm/PackageInfo;

    move-object/from16 v0, v17

    move-wide/from16 v1, v18

    move-object v3, v4

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/backup/IBackupTransport;->startRestore(J[Landroid/content/pm/PackageInfo;)Z

    move-result v17

    if-nez v17, :cond_271

    .line 970
    const-string v17, "BackupManagerService"

    const-string v18, "Error starting restore operation"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19d
    .catchall {:try_start_16d .. :try_end_19d} :catchall_5ff
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_16d .. :try_end_19d} :catch_1fb
    .catch Landroid/os/RemoteException; {:try_start_16d .. :try_end_19d} :catch_592

    .line 1076
    :try_start_19d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreThread;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/android/internal/backup/IBackupTransport;->finishRestore()V
    :try_end_1a6
    .catch Landroid/os/RemoteException; {:try_start_19d .. :try_end_1a6} :catch_254

    .line 1081
    :goto_1a6
    const-string v17, "BackupManagerService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "finishing restore mObserver="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreThread;->mObserver:Landroid/backup/IRestoreObserver;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreThread;->mObserver:Landroid/backup/IRestoreObserver;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1d8

    .line 1085
    :try_start_1cc
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreThread;->mObserver:Landroid/backup/IRestoreObserver;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move v1, v8

    invoke-interface {v0, v1}, Landroid/backup/IRestoreObserver;->restoreFinished(I)V
    :try_end_1d8
    .catch Landroid/os/RemoteException; {:try_start_1cc .. :try_end_1d8} :catch_265

    .line 1092
    :cond_1d8
    :goto_1d8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreThread;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/BackupManagerService;->access$300(Lcom/android/server/BackupManagerService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_9a

    .line 962
    :catch_1e7
    move-exception v17

    move-object/from16 v7, v17

    .line 963
    .restart local v7       #e:Landroid/os/RemoteException;
    :try_start_1ea
    const-string v17, "BackupManagerService"

    const-string v18, "Restore observer died at restoreStarting"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService$PerformRestoreThread;->mObserver:Landroid/backup/IRestoreObserver;
    :try_end_1f9
    .catchall {:try_start_1ea .. :try_end_1f9} :catchall_5ff
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1ea .. :try_end_1f9} :catch_1fb
    .catch Landroid/os/RemoteException; {:try_start_1ea .. :try_end_1f9} :catch_592

    goto/16 :goto_16d

    .line 1068
    .end local v5           #agentPackages:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v7           #e:Landroid/os/RemoteException;
    .end local v10           #images:[Landroid/backup/RestoreSet;
    .end local v12           #omPackage:Landroid/content/pm/PackageInfo;
    .end local v16           #restorePackages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :catch_1fb
    move-exception v17

    move-object/from16 v7, v17

    .line 1070
    .local v7, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_1fe
    const-string v17, "BackupManagerService"

    const-string v18, "Invalid paackage restoring data"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object v2, v7

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_20a
    .catchall {:try_start_1fe .. :try_end_20a} :catchall_5ff

    .line 1076
    :try_start_20a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreThread;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/android/internal/backup/IBackupTransport;->finishRestore()V
    :try_end_213
    .catch Landroid/os/RemoteException; {:try_start_20a .. :try_end_213} :catch_7af

    .line 1081
    .end local v7           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_213
    const-string v17, "BackupManagerService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "finishing restore mObserver="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreThread;->mObserver:Landroid/backup/IRestoreObserver;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreThread;->mObserver:Landroid/backup/IRestoreObserver;

    move-object/from16 v17, v0

    if-eqz v17, :cond_245

    .line 1085
    :try_start_239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreThread;->mObserver:Landroid/backup/IRestoreObserver;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move v1, v8

    invoke-interface {v0, v1}, Landroid/backup/IRestoreObserver;->restoreFinished(I)V
    :try_end_245
    .catch Landroid/os/RemoteException; {:try_start_239 .. :try_end_245} :catch_7c0

    .line 1092
    :cond_245
    :goto_245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreThread;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/BackupManagerService;->access$300(Lcom/android/server/BackupManagerService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_9a

    .line 1077
    .restart local v5       #agentPackages:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v10       #images:[Landroid/backup/RestoreSet;
    .restart local v12       #omPackage:Landroid/content/pm/PackageInfo;
    .restart local v16       #restorePackages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :catch_254
    move-exception v17

    move-object/from16 v7, v17

    .line 1078
    .local v7, e:Landroid/os/RemoteException;
    const-string v17, "BackupManagerService"

    const-string v18, "Error finishing restore"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object v2, v7

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1a6

    .line 1086
    .end local v7           #e:Landroid/os/RemoteException;
    :catch_265
    move-exception v17

    move-object/from16 v7, v17

    .line 1087
    .restart local v7       #e:Landroid/os/RemoteException;
    const-string v17, "BackupManagerService"

    const-string v18, "Restore observer died at restoreFinished"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1d8

    .line 974
    .end local v7           #e:Landroid/os/RemoteException;
    :cond_271
    :try_start_271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreThread;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/android/internal/backup/IBackupTransport;->nextRestorePackage()Ljava/lang/String;

    move-result-object v14

    .line 975
    .local v14, packageName:Ljava/lang/String;
    if-nez v14, :cond_2e9

    .line 977
    const-string v17, "BackupManagerService"

    const-string v18, "Error getting first restore package"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_284
    .catchall {:try_start_271 .. :try_end_284} :catchall_5ff
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_271 .. :try_end_284} :catch_1fb
    .catch Landroid/os/RemoteException; {:try_start_271 .. :try_end_284} :catch_592

    .line 1076
    :try_start_284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreThread;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/android/internal/backup/IBackupTransport;->finishRestore()V
    :try_end_28d
    .catch Landroid/os/RemoteException; {:try_start_284 .. :try_end_28d} :catch_2ce

    .line 1081
    :goto_28d
    const-string v17, "BackupManagerService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "finishing restore mObserver="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreThread;->mObserver:Landroid/backup/IRestoreObserver;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreThread;->mObserver:Landroid/backup/IRestoreObserver;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2bf

    .line 1085
    :try_start_2b3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreThread;->mObserver:Landroid/backup/IRestoreObserver;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move v1, v8

    invoke-interface {v0, v1}, Landroid/backup/IRestoreObserver;->restoreFinished(I)V
    :try_end_2bf
    .catch Landroid/os/RemoteException; {:try_start_2b3 .. :try_end_2bf} :catch_2de

    .line 1092
    :cond_2bf
    :goto_2bf
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreThread;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/BackupManagerService;->access$300(Lcom/android/server/BackupManagerService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_9a

    .line 1077
    :catch_2ce
    move-exception v17

    move-object/from16 v7, v17

    .line 1078
    .restart local v7       #e:Landroid/os/RemoteException;
    const-string v17, "BackupManagerService"

    const-string v18, "Error finishing restore"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object v2, v7

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_28d

    .line 1086
    .end local v7           #e:Landroid/os/RemoteException;
    :catch_2de
    move-exception v17

    move-object/from16 v7, v17

    .line 1087
    .restart local v7       #e:Landroid/os/RemoteException;
    const-string v17, "BackupManagerService"

    const-string v18, "Restore observer died at restoreFinished"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2bf

    .line 979
    .end local v7           #e:Landroid/os/RemoteException;
    :cond_2e9
    :try_start_2e9
    const-string v17, ""

    move-object v0, v14

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_360

    .line 980
    const-string v17, "BackupManagerService"

    const-string v18, "No restore data available"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2fb
    .catchall {:try_start_2e9 .. :try_end_2fb} :catchall_5ff
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2e9 .. :try_end_2fb} :catch_1fb
    .catch Landroid/os/RemoteException; {:try_start_2e9 .. :try_end_2fb} :catch_592

    .line 1076
    :try_start_2fb
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreThread;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/android/internal/backup/IBackupTransport;->finishRestore()V
    :try_end_304
    .catch Landroid/os/RemoteException; {:try_start_2fb .. :try_end_304} :catch_345

    .line 1081
    :goto_304
    const-string v17, "BackupManagerService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "finishing restore mObserver="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreThread;->mObserver:Landroid/backup/IRestoreObserver;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreThread;->mObserver:Landroid/backup/IRestoreObserver;

    move-object/from16 v17, v0

    if-eqz v17, :cond_336

    .line 1085
    :try_start_32a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreThread;->mObserver:Landroid/backup/IRestoreObserver;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move v1, v8

    invoke-interface {v0, v1}, Landroid/backup/IRestoreObserver;->restoreFinished(I)V
    :try_end_336
    .catch Landroid/os/RemoteException; {:try_start_32a .. :try_end_336} :catch_355

    .line 1092
    :cond_336
    :goto_336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreThread;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/BackupManagerService;->access$300(Lcom/android/server/BackupManagerService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_9a

    .line 1077
    :catch_345
    move-exception v17

    move-object/from16 v7, v17

    .line 1078
    .restart local v7       #e:Landroid/os/RemoteException;
    const-string v17, "BackupManagerService"

    const-string v18, "Error finishing restore"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object v2, v7

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_304

    .line 1086
    .end local v7           #e:Landroid/os/RemoteException;
    :catch_355
    move-exception v17

    move-object/from16 v7, v17

    .line 1087
    .restart local v7       #e:Landroid/os/RemoteException;
    const-string v17, "BackupManagerService"

    const-string v18, "Restore observer died at restoreFinished"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_336

    .line 982
    .end local v7           #e:Landroid/os/RemoteException;
    :cond_360
    :try_start_360
    const-string v17, "@pm@"

    move-object v0, v14

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_3f1

    .line 983
    const-string v17, "BackupManagerService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Expected restore data for \"@pm@\", found only \""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_38c
    .catchall {:try_start_360 .. :try_end_38c} :catchall_5ff
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_360 .. :try_end_38c} :catch_1fb
    .catch Landroid/os/RemoteException; {:try_start_360 .. :try_end_38c} :catch_592

    .line 1076
    :try_start_38c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreThread;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/android/internal/backup/IBackupTransport;->finishRestore()V
    :try_end_395
    .catch Landroid/os/RemoteException; {:try_start_38c .. :try_end_395} :catch_3d6

    .line 1081
    :goto_395
    const-string v17, "BackupManagerService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "finishing restore mObserver="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreThread;->mObserver:Landroid/backup/IRestoreObserver;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreThread;->mObserver:Landroid/backup/IRestoreObserver;

    move-object/from16 v17, v0

    if-eqz v17, :cond_3c7

    .line 1085
    :try_start_3bb
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreThread;->mObserver:Landroid/backup/IRestoreObserver;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move v1, v8

    invoke-interface {v0, v1}, Landroid/backup/IRestoreObserver;->restoreFinished(I)V
    :try_end_3c7
    .catch Landroid/os/RemoteException; {:try_start_3bb .. :try_end_3c7} :catch_3e6

    .line 1092
    :cond_3c7
    :goto_3c7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreThread;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/BackupManagerService;->access$300(Lcom/android/server/BackupManagerService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_9a

    .line 1077
    :catch_3d6
    move-exception v17

    move-object/from16 v7, v17

    .line 1078
    .restart local v7       #e:Landroid/os/RemoteException;
    const-string v17, "BackupManagerService"

    const-string v18, "Error finishing restore"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object v2, v7

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_395

    .line 1086
    .end local v7           #e:Landroid/os/RemoteException;
    :catch_3e6
    move-exception v17

    move-object/from16 v7, v17

    .line 1087
    .restart local v7       #e:Landroid/os/RemoteException;
    const-string v17, "BackupManagerService"

    const-string v18, "Restore observer died at restoreFinished"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c7

    .line 989
    .end local v7           #e:Landroid/os/RemoteException;
    :cond_3f1
    :try_start_3f1
    new-instance v15, Lcom/android/server/PackageManagerBackupAgent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreThread;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/BackupManagerService;->access$1700(Lcom/android/server/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v17

    move-object v0, v15

    move-object/from16 v1, v17

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/server/PackageManagerBackupAgent;-><init>(Landroid/content/pm/PackageManager;Ljava/util/List;)V

    .line 991
    .local v15, pmAgent:Lcom/android/server/PackageManagerBackupAgent;
    const/16 v17, 0x0

    invoke-virtual {v15}, Lcom/android/server/PackageManagerBackupAgent;->onBind()Landroid/os/IBinder;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/app/IBackupAgent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IBackupAgent;

    move-result-object v18

    move-object/from16 v0, p0

    move-object v1, v12

    move/from16 v2, v17

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/BackupManagerService$PerformRestoreThread;->processOneRestore(Landroid/content/pm/PackageInfo;ILandroid/app/IBackupAgent;)V

    .line 996
    invoke-virtual {v15}, Lcom/android/server/PackageManagerBackupAgent;->hasMetadata()Z

    move-result v17

    if-nez v17, :cond_48a

    .line 997
    const-string v17, "BackupManagerService"

    const-string v18, "No restore metadata available, so not restoring settings"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_425
    .catchall {:try_start_3f1 .. :try_end_425} :catchall_5ff
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3f1 .. :try_end_425} :catch_1fb
    .catch Landroid/os/RemoteException; {:try_start_3f1 .. :try_end_425} :catch_592

    .line 1076
    :try_start_425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreThread;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/android/internal/backup/IBackupTransport;->finishRestore()V
    :try_end_42e
    .catch Landroid/os/RemoteException; {:try_start_425 .. :try_end_42e} :catch_46f

    .line 1081
    :goto_42e
    const-string v17, "BackupManagerService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "finishing restore mObserver="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreThread;->mObserver:Landroid/backup/IRestoreObserver;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreThread;->mObserver:Landroid/backup/IRestoreObserver;

    move-object/from16 v17, v0

    if-eqz v17, :cond_460

    .line 1085
    :try_start_454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreThread;->mObserver:Landroid/backup/IRestoreObserver;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move v1, v8

    invoke-interface {v0, v1}, Landroid/backup/IRestoreObserver;->restoreFinished(I)V
    :try_end_460
    .catch Landroid/os/RemoteException; {:try_start_454 .. :try_end_460} :catch_47f

    .line 1092
    :cond_460
    :goto_460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreThread;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/BackupManagerService;->access$300(Lcom/android/server/BackupManagerService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_9a

    .line 1077
    :catch_46f
    move-exception v17

    move-object/from16 v7, v17

    .line 1078
    .restart local v7       #e:Landroid/os/RemoteException;
    const-string v17, "BackupManagerService"

    const-string v18, "Error finishing restore"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object v2, v7

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_42e

    .line 1086
    .end local v7           #e:Landroid/os/RemoteException;
    :catch_47f
    move-exception v17

    move-object/from16 v7, v17

    .line 1087
    .restart local v7       #e:Landroid/os/RemoteException;
    const-string v17, "BackupManagerService"

    const-string v18, "Restore observer died at restoreFinished"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_460

    .line 1001
    .end local v7           #e:Landroid/os/RemoteException;
    :cond_48a
    const/4 v6, 0x0

    .line 1003
    .local v6, count:I
    :goto_48b
    :try_start_48b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreThread;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/android/internal/backup/IBackupTransport;->nextRestorePackage()Ljava/lang/String;

    move-result-object v14

    .line 1004
    if-nez v14, :cond_503

    .line 1006
    const-string v17, "BackupManagerService"

    const-string v18, "Error getting next restore package"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_49e
    .catchall {:try_start_48b .. :try_end_49e} :catchall_5ff
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_48b .. :try_end_49e} :catch_1fb
    .catch Landroid/os/RemoteException; {:try_start_48b .. :try_end_49e} :catch_592

    .line 1076
    :try_start_49e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreThread;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/android/internal/backup/IBackupTransport;->finishRestore()V
    :try_end_4a7
    .catch Landroid/os/RemoteException; {:try_start_49e .. :try_end_4a7} :catch_4e8

    .line 1081
    :goto_4a7
    const-string v17, "BackupManagerService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "finishing restore mObserver="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreThread;->mObserver:Landroid/backup/IRestoreObserver;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreThread;->mObserver:Landroid/backup/IRestoreObserver;

    move-object/from16 v17, v0

    if-eqz v17, :cond_4d9

    .line 1085
    :try_start_4cd
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreThread;->mObserver:Landroid/backup/IRestoreObserver;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move v1, v8

    invoke-interface {v0, v1}, Landroid/backup/IRestoreObserver;->restoreFinished(I)V
    :try_end_4d9
    .catch Landroid/os/RemoteException; {:try_start_4cd .. :try_end_4d9} :catch_4f8

    .line 1092
    :cond_4d9
    :goto_4d9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreThread;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/BackupManagerService;->access$300(Lcom/android/server/BackupManagerService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_9a

    .line 1077
    :catch_4e8
    move-exception v17

    move-object/from16 v7, v17

    .line 1078
    .restart local v7       #e:Landroid/os/RemoteException;
    const-string v17, "BackupManagerService"

    const-string v18, "Error finishing restore"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object v2, v7

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4a7

    .line 1086
    .end local v7           #e:Landroid/os/RemoteException;
    :catch_4f8
    move-exception v17

    move-object/from16 v7, v17

    .line 1087
    .restart local v7       #e:Landroid/os/RemoteException;
    const-string v17, "BackupManagerService"

    const-string v18, "Restore observer died at restoreFinished"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4d9

    .line 1008
    .end local v7           #e:Landroid/os/RemoteException;
    :cond_503
    :try_start_503
    const-string v17, ""

    move-object v0, v14

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_50b
    .catchall {:try_start_503 .. :try_end_50b} :catchall_5ff
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_503 .. :try_end_50b} :catch_1fb
    .catch Landroid/os/RemoteException; {:try_start_503 .. :try_end_50b} :catch_592

    move-result v17

    if-eqz v17, :cond_559

    .line 1067
    const/4 v8, 0x0

    .line 1076
    :try_start_50f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreThread;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/android/internal/backup/IBackupTransport;->finishRestore()V
    :try_end_518
    .catch Landroid/os/RemoteException; {:try_start_50f .. :try_end_518} :catch_792

    .line 1081
    :goto_518
    const-string v17, "BackupManagerService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "finishing restore mObserver="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreThread;->mObserver:Landroid/backup/IRestoreObserver;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreThread;->mObserver:Landroid/backup/IRestoreObserver;

    move-object/from16 v17, v0

    if-eqz v17, :cond_54a

    .line 1085
    :try_start_53e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreThread;->mObserver:Landroid/backup/IRestoreObserver;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move v1, v8

    invoke-interface {v0, v1}, Landroid/backup/IRestoreObserver;->restoreFinished(I)V
    :try_end_54a
    .catch Landroid/os/RemoteException; {:try_start_53e .. :try_end_54a} :catch_7a3

    .line 1092
    :cond_54a
    :goto_54a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreThread;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/BackupManagerService;->access$300(Lcom/android/server/BackupManagerService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_9a

    .line 1012
    :cond_559
    :try_start_559
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreThread;->mObserver:Landroid/backup/IRestoreObserver;

    move-object/from16 v17, v0
    :try_end_55f
    .catchall {:try_start_559 .. :try_end_55f} :catchall_5ff
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_559 .. :try_end_55f} :catch_1fb
    .catch Landroid/os/RemoteException; {:try_start_559 .. :try_end_55f} :catch_592

    if-eqz v17, :cond_56f

    .line 1013
    add-int/lit8 v6, v6, 0x1

    .line 1015
    :try_start_563
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreThread;->mObserver:Landroid/backup/IRestoreObserver;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move v1, v6

    invoke-interface {v0, v1}, Landroid/backup/IRestoreObserver;->onUpdate(I)V
    :try_end_56f
    .catchall {:try_start_563 .. :try_end_56f} :catchall_5ff
    .catch Landroid/os/RemoteException; {:try_start_563 .. :try_end_56f} :catch_5eb
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_563 .. :try_end_56f} :catch_1fb

    .line 1022
    :cond_56f
    :goto_56f
    :try_start_56f
    invoke-virtual {v15, v14}, Lcom/android/server/PackageManagerBackupAgent;->getRestoredMetadata(Ljava/lang/String;)Lcom/android/server/PackageManagerBackupAgent$Metadata;

    move-result-object v11

    .line 1023
    .local v11, metaInfo:Lcom/android/server/PackageManagerBackupAgent$Metadata;
    if-nez v11, :cond_649

    .line 1024
    const-string v17, "BackupManagerService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Missing metadata for "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_590
    .catchall {:try_start_56f .. :try_end_590} :catchall_5ff
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_56f .. :try_end_590} :catch_1fb
    .catch Landroid/os/RemoteException; {:try_start_56f .. :try_end_590} :catch_592

    goto/16 :goto_48b

    .line 1071
    .end local v5           #agentPackages:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v6           #count:I
    .end local v10           #images:[Landroid/backup/RestoreSet;
    .end local v11           #metaInfo:Lcom/android/server/PackageManagerBackupAgent$Metadata;
    .end local v12           #omPackage:Landroid/content/pm/PackageInfo;
    .end local v14           #packageName:Ljava/lang/String;
    .end local v15           #pmAgent:Lcom/android/server/PackageManagerBackupAgent;
    .end local v16           #restorePackages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :catch_592
    move-exception v17

    move-object/from16 v7, v17

    .line 1073
    .restart local v7       #e:Landroid/os/RemoteException;
    :try_start_595
    const-string v17, "BackupManagerService"

    const-string v18, "Error restoring data"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object v2, v7

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5a1
    .catchall {:try_start_595 .. :try_end_5a1} :catchall_5ff

    .line 1076
    :try_start_5a1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreThread;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/android/internal/backup/IBackupTransport;->finishRestore()V
    :try_end_5aa
    .catch Landroid/os/RemoteException; {:try_start_5a1 .. :try_end_5aa} :catch_7cc

    .line 1081
    :goto_5aa
    const-string v17, "BackupManagerService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "finishing restore mObserver="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreThread;->mObserver:Landroid/backup/IRestoreObserver;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreThread;->mObserver:Landroid/backup/IRestoreObserver;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5dc

    .line 1085
    :try_start_5d0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreThread;->mObserver:Landroid/backup/IRestoreObserver;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move v1, v8

    invoke-interface {v0, v1}, Landroid/backup/IRestoreObserver;->restoreFinished(I)V
    :try_end_5dc
    .catch Landroid/os/RemoteException; {:try_start_5d0 .. :try_end_5dc} :catch_7dd

    .line 1092
    :cond_5dc
    :goto_5dc
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreThread;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/BackupManagerService;->access$300(Lcom/android/server/BackupManagerService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_9a

    .line 1016
    .end local v7           #e:Landroid/os/RemoteException;
    .restart local v5       #agentPackages:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v6       #count:I
    .restart local v10       #images:[Landroid/backup/RestoreSet;
    .restart local v12       #omPackage:Landroid/content/pm/PackageInfo;
    .restart local v14       #packageName:Ljava/lang/String;
    .restart local v15       #pmAgent:Lcom/android/server/PackageManagerBackupAgent;
    .restart local v16       #restorePackages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :catch_5eb
    move-exception v17

    move-object/from16 v7, v17

    .line 1017
    .restart local v7       #e:Landroid/os/RemoteException;
    :try_start_5ee
    const-string v17, "BackupManagerService"

    const-string v18, "Restore observer died in onUpdate"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService$PerformRestoreThread;->mObserver:Landroid/backup/IRestoreObserver;
    :try_end_5fd
    .catchall {:try_start_5ee .. :try_end_5fd} :catchall_5ff
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5ee .. :try_end_5fd} :catch_1fb
    .catch Landroid/os/RemoteException; {:try_start_5ee .. :try_end_5fd} :catch_592

    goto/16 :goto_56f

    .line 1075
    .end local v5           #agentPackages:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v6           #count:I
    .end local v7           #e:Landroid/os/RemoteException;
    .end local v10           #images:[Landroid/backup/RestoreSet;
    .end local v12           #omPackage:Landroid/content/pm/PackageInfo;
    .end local v14           #packageName:Ljava/lang/String;
    .end local v15           #pmAgent:Lcom/android/server/PackageManagerBackupAgent;
    .end local v16           #restorePackages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :catchall_5ff
    move-exception v17

    .line 1076
    :try_start_600
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreThread;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/android/internal/backup/IBackupTransport;->finishRestore()V
    :try_end_609
    .catch Landroid/os/RemoteException; {:try_start_600 .. :try_end_609} :catch_7e9

    .line 1081
    :goto_609
    const-string v18, "BackupManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "finishing restore mObserver="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreThread;->mObserver:Landroid/backup/IRestoreObserver;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreThread;->mObserver:Landroid/backup/IRestoreObserver;

    move-object/from16 v18, v0

    if-eqz v18, :cond_63b

    .line 1085
    :try_start_62f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreThread;->mObserver:Landroid/backup/IRestoreObserver;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move v1, v8

    invoke-interface {v0, v1}, Landroid/backup/IRestoreObserver;->restoreFinished(I)V
    :try_end_63b
    .catch Landroid/os/RemoteException; {:try_start_62f .. :try_end_63b} :catch_7fa

    .line 1092
    :cond_63b
    :goto_63b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreThread;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/server/BackupManagerService;->access$300(Lcom/android/server/BackupManagerService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v17

    .line 1028
    .restart local v5       #agentPackages:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v6       #count:I
    .restart local v10       #images:[Landroid/backup/RestoreSet;
    .restart local v11       #metaInfo:Lcom/android/server/PackageManagerBackupAgent$Metadata;
    .restart local v12       #omPackage:Landroid/content/pm/PackageInfo;
    .restart local v14       #packageName:Ljava/lang/String;
    .restart local v15       #pmAgent:Lcom/android/server/PackageManagerBackupAgent;
    .restart local v16       #restorePackages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :cond_649
    const/16 v9, 0x40

    .line 1029
    .local v9, flags:I
    :try_start_64b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreThread;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/BackupManagerService;->access$1700(Lcom/android/server/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v14

    move v2, v9

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v13

    .line 1030
    .local v13, packageInfo:Landroid/content/pm/PackageInfo;
    move-object v0, v11

    iget v0, v0, Lcom/android/server/PackageManagerBackupAgent$Metadata;->versionCode:I

    move/from16 v17, v0

    move-object v0, v13

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_6ae

    .line 1031
    const-string v17, "BackupManagerService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Package "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " restore version ["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object v0, v11

    iget v0, v0, Lcom/android/server/PackageManagerBackupAgent$Metadata;->versionCode:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "] is too new for installed version ["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object v0, v13

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "]"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_48b

    .line 1038
    :cond_6ae
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreThread;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v17, v0

    move-object v0, v11

    iget-object v0, v0, Lcom/android/server/PackageManagerBackupAgent$Metadata;->signatures:[Landroid/content/pm/Signature;

    move-object/from16 v18, v0

    move-object v0, v13

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    move-object/from16 v19, v0

    invoke-static/range {v17 .. v19}, Lcom/android/server/BackupManagerService;->access$2100(Lcom/android/server/BackupManagerService;[Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z

    move-result v17

    if-nez v17, :cond_6e1

    .line 1039
    const-string v17, "BackupManagerService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Signature mismatch restoring "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_48b

    .line 1043
    :cond_6e1
    const-string v17, "BackupManagerService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Package "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " restore version ["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object v0, v11

    iget v0, v0, Lcom/android/server/PackageManagerBackupAgent$Metadata;->versionCode:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "] is compatible with installed version ["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object v0, v13

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "]"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreThread;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v14

    invoke-virtual {v0, v1}, Lcom/android/server/BackupManagerService;->clearApplicationDataSynchronous(Ljava/lang/String;)V

    .line 1050
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreThread;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v17, v0

    move-object v0, v13

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    const/16 v19, 0x2

    invoke-virtual/range {v17 .. v19}, Lcom/android/server/BackupManagerService;->bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;I)Landroid/app/IBackupAgent;

    move-result-object v4

    .line 1053
    .local v4, agent:Landroid/app/IBackupAgent;
    if-nez v4, :cond_75c

    .line 1054
    const-string v17, "BackupManagerService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Can\'t find backup agent for "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_75a
    .catchall {:try_start_64b .. :try_end_75a} :catchall_5ff
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_64b .. :try_end_75a} :catch_1fb
    .catch Landroid/os/RemoteException; {:try_start_64b .. :try_end_75a} :catch_592

    goto/16 :goto_48b

    .line 1059
    :cond_75c
    :try_start_75c
    move-object v0, v11

    iget v0, v0, Lcom/android/server/PackageManagerBackupAgent$Metadata;->versionCode:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move-object v1, v13

    move/from16 v2, v17

    move-object v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/BackupManagerService$PerformRestoreThread;->processOneRestore(Landroid/content/pm/PackageInfo;ILandroid/app/IBackupAgent;)V
    :try_end_76a
    .catchall {:try_start_75c .. :try_end_76a} :catchall_77e

    .line 1062
    :try_start_76a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreThread;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/BackupManagerService;->access$1900(Lcom/android/server/BackupManagerService;)Landroid/app/IActivityManager;

    move-result-object v17

    move-object v0, v13

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    invoke-interface/range {v17 .. v18}, Landroid/app/IActivityManager;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V

    goto/16 :goto_48b

    :catchall_77e
    move-exception v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreThread;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/server/BackupManagerService;->access$1900(Lcom/android/server/BackupManagerService;)Landroid/app/IActivityManager;

    move-result-object v18

    move-object v0, v13

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    invoke-interface/range {v18 .. v19}, Landroid/app/IActivityManager;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V

    throw v17
    :try_end_792
    .catchall {:try_start_76a .. :try_end_792} :catchall_5ff
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_76a .. :try_end_792} :catch_1fb
    .catch Landroid/os/RemoteException; {:try_start_76a .. :try_end_792} :catch_592

    .line 1077
    .end local v4           #agent:Landroid/app/IBackupAgent;
    .end local v9           #flags:I
    .end local v11           #metaInfo:Lcom/android/server/PackageManagerBackupAgent$Metadata;
    .end local v13           #packageInfo:Landroid/content/pm/PackageInfo;
    :catch_792
    move-exception v17

    move-object/from16 v7, v17

    .line 1078
    .restart local v7       #e:Landroid/os/RemoteException;
    const-string v17, "BackupManagerService"

    const-string v18, "Error finishing restore"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object v2, v7

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_518

    .line 1086
    .end local v7           #e:Landroid/os/RemoteException;
    :catch_7a3
    move-exception v17

    move-object/from16 v7, v17

    .line 1087
    .restart local v7       #e:Landroid/os/RemoteException;
    const-string v17, "BackupManagerService"

    const-string v18, "Restore observer died at restoreFinished"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_54a

    .line 1077
    .end local v5           #agentPackages:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v6           #count:I
    .end local v10           #images:[Landroid/backup/RestoreSet;
    .end local v12           #omPackage:Landroid/content/pm/PackageInfo;
    .end local v14           #packageName:Ljava/lang/String;
    .end local v15           #pmAgent:Lcom/android/server/PackageManagerBackupAgent;
    .end local v16           #restorePackages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .local v7, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_7af
    move-exception v17

    move-object/from16 v7, v17

    .line 1078
    .local v7, e:Landroid/os/RemoteException;
    const-string v17, "BackupManagerService"

    const-string v18, "Error finishing restore"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object v2, v7

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_213

    .line 1086
    .end local v7           #e:Landroid/os/RemoteException;
    :catch_7c0
    move-exception v17

    move-object/from16 v7, v17

    .line 1087
    .restart local v7       #e:Landroid/os/RemoteException;
    const-string v17, "BackupManagerService"

    const-string v18, "Restore observer died at restoreFinished"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_245

    .line 1077
    :catch_7cc
    move-exception v17

    move-object/from16 v7, v17

    .line 1078
    const-string v17, "BackupManagerService"

    const-string v18, "Error finishing restore"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object v2, v7

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5aa

    .line 1086
    :catch_7dd
    move-exception v17

    move-object/from16 v7, v17

    .line 1087
    const-string v17, "BackupManagerService"

    const-string v18, "Restore observer died at restoreFinished"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5dc

    .line 1077
    .end local v7           #e:Landroid/os/RemoteException;
    :catch_7e9
    move-exception v18

    move-object/from16 v7, v18

    .line 1078
    .restart local v7       #e:Landroid/os/RemoteException;
    const-string v18, "BackupManagerService"

    const-string v19, "Error finishing restore"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object v2, v7

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_609

    .line 1086
    .end local v7           #e:Landroid/os/RemoteException;
    :catch_7fa
    move-exception v18

    move-object/from16 v7, v18

    .line 1087
    .restart local v7       #e:Landroid/os/RemoteException;
    const-string v18, "BackupManagerService"

    const-string v19, "Restore observer died at restoreFinished"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_63b
.end method
