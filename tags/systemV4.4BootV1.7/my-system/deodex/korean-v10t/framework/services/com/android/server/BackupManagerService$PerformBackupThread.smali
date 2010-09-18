.class Lcom/android/server/BackupManagerService$PerformBackupThread;
.super Ljava/lang/Thread;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PerformBackupThread"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PerformBackupThread"


# instance fields
.field mJournal:Ljava/io/File;

.field mQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/BackupManagerService$BackupRequest;",
            ">;"
        }
    .end annotation
.end field

.field mStateDir:Ljava/io/File;

.field mTransport:Lcom/android/internal/backup/IBackupTransport;

.field final synthetic this$0:Lcom/android/server/BackupManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Ljava/util/ArrayList;Ljava/io/File;)V
    .registers 8
    .parameter
    .parameter "transport"
    .parameter
    .parameter "journal"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/backup/IBackupTransport;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/BackupManagerService$BackupRequest;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .prologue
    .line 675
    .local p3, queue:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/BackupManagerService$BackupRequest;>;"
    iput-object p1, p0, Lcom/android/server/BackupManagerService$PerformBackupThread;->this$0:Lcom/android/server/BackupManagerService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 676
    iput-object p2, p0, Lcom/android/server/BackupManagerService$PerformBackupThread;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    .line 677
    iput-object p3, p0, Lcom/android/server/BackupManagerService$PerformBackupThread;->mQueue:Ljava/util/ArrayList;

    .line 678
    iput-object p4, p0, Lcom/android/server/BackupManagerService$PerformBackupThread;->mJournal:Ljava/io/File;

    .line 681
    :try_start_b
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Lcom/android/server/BackupManagerService;->access$1600(Lcom/android/server/BackupManagerService;)Ljava/io/File;

    move-result-object v1

    invoke-interface {p2}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/BackupManagerService$PerformBackupThread;->mStateDir:Ljava/io/File;
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_1a} :catch_20

    .line 685
    :goto_1a
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformBackupThread;->mStateDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 686
    return-void

    .line 682
    :catch_20
    move-exception v0

    goto :goto_1a
.end method

.method private doQueuedBackups(Lcom/android/internal/backup/IBackupTransport;)V
    .registers 11
    .parameter "transport"

    .prologue
    const-string v8, "PerformBackupThread"

    .line 730
    iget-object v6, p0, Lcom/android/server/BackupManagerService$PerformBackupThread;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_66

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/BackupManagerService$BackupRequest;

    .line 731
    .local v5, request:Lcom/android/server/BackupManagerService$BackupRequest;
    const-string v6, "PerformBackupThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "starting agent for backup of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    const/4 v0, 0x0

    .line 734
    .local v0, agent:Landroid/app/IBackupAgent;
    iget-boolean v6, v5, Lcom/android/server/BackupManagerService$BackupRequest;->fullBackup:Z

    if-eqz v6, :cond_56

    const/4 v6, 0x1

    move v4, v6

    .line 738
    .local v4, mode:I
    :goto_33
    :try_start_33
    iget-object v6, p0, Lcom/android/server/BackupManagerService$PerformBackupThread;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v7, v5, Lcom/android/server/BackupManagerService$BackupRequest;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v6, v7, v4}, Lcom/android/server/BackupManagerService;->bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;I)Landroid/app/IBackupAgent;

    move-result-object v0

    .line 739
    if-eqz v0, :cond_40

    .line 740
    invoke-virtual {p0, v5, v0, p1}, Lcom/android/server/BackupManagerService$PerformBackupThread;->processOneBackup(Lcom/android/server/BackupManagerService$BackupRequest;Landroid/app/IBackupAgent;Lcom/android/internal/backup/IBackupTransport;)V

    .line 744
    :cond_40
    iget-object v6, p0, Lcom/android/server/BackupManagerService$PerformBackupThread;->this$0:Lcom/android/server/BackupManagerService;

    invoke-static {v6}, Lcom/android/server/BackupManagerService;->access$1900(Lcom/android/server/BackupManagerService;)Landroid/app/IActivityManager;

    move-result-object v6

    iget-object v7, v5, Lcom/android/server/BackupManagerService$BackupRequest;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-interface {v6, v7}, Landroid/app/IActivityManager;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V
    :try_end_4b
    .catch Ljava/lang/SecurityException; {:try_start_33 .. :try_end_4b} :catch_4c
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_4b} :catch_59

    goto :goto_8

    .line 745
    :catch_4c
    move-exception v6

    move-object v2, v6

    .line 747
    .local v2, ex:Ljava/lang/SecurityException;
    const-string v6, "PerformBackupThread"

    const-string v6, "error in bind/backup"

    invoke-static {v8, v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 734
    .end local v2           #ex:Ljava/lang/SecurityException;
    .end local v4           #mode:I
    :cond_56
    const/4 v6, 0x0

    move v4, v6

    goto :goto_33

    .line 748
    .restart local v4       #mode:I
    :catch_59
    move-exception v6

    move-object v1, v6

    .line 749
    .local v1, e:Landroid/os/RemoteException;
    const-string v6, "PerformBackupThread"

    const-string v6, "bind/backup threw"

    invoke-static {v8, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_8

    .line 754
    .end local v0           #agent:Landroid/app/IBackupAgent;
    .end local v1           #e:Landroid/os/RemoteException;
    .end local v4           #mode:I
    .end local v5           #request:Lcom/android/server/BackupManagerService$BackupRequest;
    :cond_66
    return-void
.end method


# virtual methods
.method processOneBackup(Lcom/android/server/BackupManagerService$BackupRequest;Landroid/app/IBackupAgent;Lcom/android/internal/backup/IBackupTransport;)V
    .registers 22
    .parameter "request"
    .parameter "agent"
    .parameter "transport"

    .prologue
    .line 757
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/BackupManagerService$BackupRequest;->appInfo:Landroid/content/pm/ApplicationInfo;

    move-object v14, v0

    iget-object v10, v14, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 758
    .local v10, packageName:Ljava/lang/String;
    const-string v14, "PerformBackupThread"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "processOneBackup doBackup() on "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    :try_start_1f
    const-string v14, "@pm@"

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d7

    .line 767
    new-instance v9, Landroid/content/pm/PackageInfo;

    invoke-direct {v9}, Landroid/content/pm/PackageInfo;-><init>()V

    .line 768
    .local v9, packInfo:Landroid/content/pm/PackageInfo;
    iput-object v10, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 775
    :goto_2e
    new-instance v12, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformBackupThread;->mStateDir:Ljava/io/File;

    move-object v14, v0

    invoke-direct {v12, v14, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 776
    .local v12, savedStateName:Ljava/io/File;
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformBackupThread;->this$0:Lcom/android/server/BackupManagerService;

    move-object v14, v0

    invoke-static {v14}, Lcom/android/server/BackupManagerService;->access$2000(Lcom/android/server/BackupManagerService;)Ljava/io/File;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ".data"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v5, v14, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 777
    .local v5, backupDataName:Ljava/io/File;
    new-instance v8, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformBackupThread;->mStateDir:Ljava/io/File;

    move-object v14, v0

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ".new"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v8, v14, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 781
    .local v8, newStateName:Ljava/io/File;
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/server/BackupManagerService$BackupRequest;->fullBackup:Z

    move v14, v0

    if-eqz v14, :cond_e8

    const/4 v14, 0x0

    move-object v11, v14

    .line 786
    .local v11, savedState:Landroid/os/ParcelFileDescriptor;
    :goto_7f
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 787
    const/high16 v14, 0x3800

    invoke-static {v5, v14}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    .line 792
    .local v4, backupData:Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 793
    const/high16 v14, 0x3800

    invoke-static {v8, v14}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_90} :catch_fd

    move-result-object v7

    .line 799
    .local v7, newState:Landroid/os/ParcelFileDescriptor;
    const/4 v13, 0x0

    .line 801
    .local v13, success:Z
    :try_start_92
    move-object/from16 v0, p2

    move-object v1, v11

    move-object v2, v4

    move-object v3, v7

    invoke-interface {v0, v1, v2, v3}, Landroid/app/IBackupAgent;->doBackup(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;)V
    :try_end_9a
    .catchall {:try_start_92 .. :try_end_9a} :catchall_f0

    .line 802
    const/4 v13, 0x1

    .line 804
    if-eqz v11, :cond_a0

    .line 805
    :try_start_9d
    invoke-virtual {v11}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 807
    :cond_a0
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 808
    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 812
    if-eqz v13, :cond_d6

    .line 813
    const-string v14, "PerformBackupThread"

    const-string v15, "doBackup() success"

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-lez v14, :cond_118

    .line 815
    const/high16 v14, 0x1000

    invoke-static {v5, v14}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    .line 818
    move-object/from16 v0, p3

    move-object v1, v9

    move-object v2, v4

    invoke-interface {v0, v1, v2}, Lcom/android/internal/backup/IBackupTransport;->performBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;)Z

    move-result v14

    if-nez v14, :cond_d0

    .line 820
    const-string v14, "PerformBackupThread"

    const-string v15, "Backup failure in performBackup()"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    :cond_d0
    :goto_d0
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 832
    invoke-virtual {v8, v12}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 837
    .end local v4           #backupData:Landroid/os/ParcelFileDescriptor;
    .end local v5           #backupDataName:Ljava/io/File;
    .end local v7           #newState:Landroid/os/ParcelFileDescriptor;
    .end local v8           #newStateName:Ljava/io/File;
    .end local v9           #packInfo:Landroid/content/pm/PackageInfo;
    .end local v11           #savedState:Landroid/os/ParcelFileDescriptor;
    .end local v12           #savedStateName:Ljava/io/File;
    .end local v13           #success:Z
    :cond_d6
    :goto_d6
    return-void

    .line 770
    :cond_d7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformBackupThread;->this$0:Lcom/android/server/BackupManagerService;

    move-object v14, v0

    invoke-static {v14}, Lcom/android/server/BackupManagerService;->access$1700(Lcom/android/server/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v14

    const/16 v15, 0x40

    invoke-virtual {v14, v10, v15}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9

    .restart local v9       #packInfo:Landroid/content/pm/PackageInfo;
    goto/16 :goto_2e

    .line 781
    .restart local v5       #backupDataName:Ljava/io/File;
    .restart local v8       #newStateName:Ljava/io/File;
    .restart local v12       #savedStateName:Ljava/io/File;
    :cond_e8
    const/high16 v14, 0x1800

    invoke-static {v12, v14}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v14

    move-object v11, v14

    goto :goto_7f

    .line 804
    .restart local v4       #backupData:Landroid/os/ParcelFileDescriptor;
    .restart local v7       #newState:Landroid/os/ParcelFileDescriptor;
    .restart local v11       #savedState:Landroid/os/ParcelFileDescriptor;
    .restart local v13       #success:Z
    :catchall_f0
    move-exception v14

    if-eqz v11, :cond_f6

    .line 805
    invoke-virtual {v11}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 807
    :cond_f6
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 808
    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->close()V

    throw v14
    :try_end_fd
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_fd} :catch_fd

    .line 834
    .end local v4           #backupData:Landroid/os/ParcelFileDescriptor;
    .end local v5           #backupDataName:Ljava/io/File;
    .end local v7           #newState:Landroid/os/ParcelFileDescriptor;
    .end local v8           #newStateName:Ljava/io/File;
    .end local v9           #packInfo:Landroid/content/pm/PackageInfo;
    .end local v11           #savedState:Landroid/os/ParcelFileDescriptor;
    .end local v12           #savedStateName:Ljava/io/File;
    .end local v13           #success:Z
    :catch_fd
    move-exception v14

    move-object v6, v14

    .line 835
    .local v6, e:Ljava/lang/Exception;
    const-string v14, "PerformBackupThread"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Error backing up "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d6

    .line 824
    .end local v6           #e:Ljava/lang/Exception;
    .restart local v4       #backupData:Landroid/os/ParcelFileDescriptor;
    .restart local v5       #backupDataName:Ljava/io/File;
    .restart local v7       #newState:Landroid/os/ParcelFileDescriptor;
    .restart local v8       #newStateName:Ljava/io/File;
    .restart local v9       #packInfo:Landroid/content/pm/PackageInfo;
    .restart local v11       #savedState:Landroid/os/ParcelFileDescriptor;
    .restart local v12       #savedStateName:Ljava/io/File;
    .restart local v13       #success:Z
    :cond_118
    :try_start_118
    const-string v14, "PerformBackupThread"

    const-string v15, "no backup data written; not calling transport"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11f
    .catch Ljava/lang/Exception; {:try_start_118 .. :try_end_11f} :catch_fd

    goto :goto_d0
.end method

.method public run()V
    .registers 8

    .prologue
    const-string v6, "PerformBackupThread"

    .line 690
    const-string v3, "PerformBackupThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Beginning backup of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/BackupManagerService$PerformBackupThread;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " targets"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    const/16 v3, 0xa

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 700
    new-instance v1, Lcom/android/server/PackageManagerBackupAgent;

    iget-object v3, p0, Lcom/android/server/BackupManagerService$PerformBackupThread;->this$0:Lcom/android/server/BackupManagerService;

    invoke-static {v3}, Lcom/android/server/BackupManagerService;->access$1700(Lcom/android/server/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/BackupManagerService$PerformBackupThread;->this$0:Lcom/android/server/BackupManagerService;

    invoke-static {v4}, Lcom/android/server/BackupManagerService;->access$1800(Lcom/android/server/BackupManagerService;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/android/server/PackageManagerBackupAgent;-><init>(Landroid/content/pm/PackageManager;Ljava/util/List;)V

    .line 702
    .local v1, pmAgent:Lcom/android/server/PackageManagerBackupAgent;
    new-instance v2, Lcom/android/server/BackupManagerService$BackupRequest;

    iget-object v3, p0, Lcom/android/server/BackupManagerService$PerformBackupThread;->this$0:Lcom/android/server/BackupManagerService;

    new-instance v4, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v4}, Landroid/content/pm/ApplicationInfo;-><init>()V

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/android/server/BackupManagerService$BackupRequest;-><init>(Lcom/android/server/BackupManagerService;Landroid/content/pm/ApplicationInfo;Z)V

    .line 703
    .local v2, pmRequest:Lcom/android/server/BackupManagerService$BackupRequest;
    iget-object v3, v2, Lcom/android/server/BackupManagerService$BackupRequest;->appInfo:Landroid/content/pm/ApplicationInfo;

    const-string v4, "@pm@"

    iput-object v4, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 704
    invoke-virtual {v1}, Lcom/android/server/PackageManagerBackupAgent;->onBind()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/IBackupAgent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IBackupAgent;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/BackupManagerService$PerformBackupThread;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/server/BackupManagerService$PerformBackupThread;->processOneBackup(Lcom/android/server/BackupManagerService$BackupRequest;Landroid/app/IBackupAgent;Lcom/android/internal/backup/IBackupTransport;)V

    .line 709
    iget-object v3, p0, Lcom/android/server/BackupManagerService$PerformBackupThread;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-direct {p0, v3}, Lcom/android/server/BackupManagerService$PerformBackupThread;->doQueuedBackups(Lcom/android/internal/backup/IBackupTransport;)V

    .line 713
    :try_start_61
    iget-object v3, p0, Lcom/android/server/BackupManagerService$PerformBackupThread;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v3}, Lcom/android/internal/backup/IBackupTransport;->finishBackup()Z

    move-result v3

    if-nez v3, :cond_70

    .line 715
    const-string v3, "PerformBackupThread"

    const-string v4, "Backup failure in finishBackup()"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_70
    .catch Landroid/os/RemoteException; {:try_start_61 .. :try_end_70} :catch_a0

    .line 721
    :cond_70
    :goto_70
    iget-object v3, p0, Lcom/android/server/BackupManagerService$PerformBackupThread;->mJournal:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_96

    .line 722
    const-string v3, "PerformBackupThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to remove backup journal file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/BackupManagerService$PerformBackupThread;->mJournal:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    :cond_96
    iget-object v3, p0, Lcom/android/server/BackupManagerService$PerformBackupThread;->this$0:Lcom/android/server/BackupManagerService;

    invoke-static {v3}, Lcom/android/server/BackupManagerService;->access$300(Lcom/android/server/BackupManagerService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 727
    return-void

    .line 717
    :catch_a0
    move-exception v3

    move-object v0, v3

    .line 718
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "PerformBackupThread"

    const-string v3, "Error in finishBackup()"

    invoke-static {v6, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_70
.end method
