.class Lcom/android/server/BackupManagerService$BackupHandler;
.super Landroid/os/Handler;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackupHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BackupManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/BackupManagerService;)V
    .registers 2
    .parameter

    .prologue
    .line 389
    iput-object p1, p0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/BackupManagerService;Lcom/android/server/BackupManagerService$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 389
    invoke-direct {p0, p1}, Lcom/android/server/BackupManagerService$BackupHandler;-><init>(Lcom/android/server/BackupManagerService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 14
    .parameter "msg"

    .prologue
    const-string v2, "BackupManagerService"

    .line 392
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_f0

    .line 457
    :goto_7
    :pswitch_7
    return-void

    .line 395
    :pswitch_8
    iget-object v0, p0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v1, p0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    invoke-static {v1}, Lcom/android/server/BackupManagerService;->access$800(Lcom/android/server/BackupManagerService;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/BackupManagerService;->access$900(Lcom/android/server/BackupManagerService;Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v11

    .line 396
    .local v11, transport:Lcom/android/internal/backup/IBackupTransport;
    if-nez v11, :cond_27

    .line 397
    const-string v0, "BackupManagerService"

    const-string v0, "Backup requested but no transport available"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    iget-object v0, p0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    invoke-static {v0}, Lcom/android/server/BackupManagerService;->access$300(Lcom/android/server/BackupManagerService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_7

    .line 403
    :cond_27
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 404
    .local v10, queue:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/BackupManagerService$BackupRequest;>;"
    iget-object v0, p0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    invoke-static {v0}, Lcom/android/server/BackupManagerService;->access$1000(Lcom/android/server/BackupManagerService;)Ljava/io/File;

    move-result-object v8

    .line 405
    .local v8, oldJournal:Ljava/io/File;
    iget-object v0, p0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    invoke-static {v0}, Lcom/android/server/BackupManagerService;->access$200(Lcom/android/server/BackupManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 407
    :try_start_39
    iget-object v1, p0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    invoke-static {v1}, Lcom/android/server/BackupManagerService;->access$1100(Lcom/android/server/BackupManagerService;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_99

    .line 408
    iget-object v1, p0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    invoke-static {v1}, Lcom/android/server/BackupManagerService;->access$1100(Lcom/android/server/BackupManagerService;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_53
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_66

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/BackupManagerService$BackupRequest;

    .line 409
    .local v6, b:Lcom/android/server/BackupManagerService$BackupRequest;
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_53

    .line 434
    .end local v6           #b:Lcom/android/server/BackupManagerService$BackupRequest;
    .end local v7           #i$:Ljava/util/Iterator;
    :catchall_63
    move-exception v1

    monitor-exit v0
    :try_end_65
    .catchall {:try_start_39 .. :try_end_65} :catchall_63

    throw v1

    .line 411
    .restart local v7       #i$:Ljava/util/Iterator;
    :cond_66
    :try_start_66
    const-string v1, "BackupManagerService"

    const-string v2, "clearing pending backups"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    iget-object v1, p0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    invoke-static {v1}, Lcom/android/server/BackupManagerService;->access$1100(Lcom/android/server/BackupManagerService;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 415
    iget-object v1, p0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    invoke-static {v1}, Lcom/android/server/BackupManagerService;->access$1200(Lcom/android/server/BackupManagerService;)Ljava/io/RandomAccessFile;
    :try_end_7b
    .catchall {:try_start_66 .. :try_end_7b} :catchall_63

    move-result-object v1

    if-eqz v1, :cond_8c

    .line 417
    :try_start_7e
    iget-object v1, p0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    invoke-static {v1}, Lcom/android/server/BackupManagerService;->access$1200(Lcom/android/server/BackupManagerService;)Ljava/io/RandomAccessFile;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_87
    .catchall {:try_start_7e .. :try_end_87} :catchall_63
    .catch Ljava/io/IOException; {:try_start_7e .. :try_end_87} :catch_ee

    .line 421
    :goto_87
    :try_start_87
    iget-object v1, p0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    invoke-static {v1}, Lcom/android/server/BackupManagerService;->access$1300(Lcom/android/server/BackupManagerService;)V

    .line 429
    :cond_8c
    new-instance v1, Lcom/android/server/BackupManagerService$PerformBackupThread;

    iget-object v2, p0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    invoke-direct {v1, v2, v11, v10, v8}, Lcom/android/server/BackupManagerService$PerformBackupThread;-><init>(Lcom/android/server/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Ljava/util/ArrayList;Ljava/io/File;)V

    invoke-virtual {v1}, Lcom/android/server/BackupManagerService$PerformBackupThread;->start()V

    .line 434
    .end local v7           #i$:Ljava/util/Iterator;
    :goto_96
    monitor-exit v0

    goto/16 :goto_7

    .line 431
    :cond_99
    const-string v1, "BackupManagerService"

    const-string v2, "Backup requested but nothing pending"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    iget-object v1, p0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    invoke-static {v1}, Lcom/android/server/BackupManagerService;->access$300(Lcom/android/server/BackupManagerService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_a9
    .catchall {:try_start_87 .. :try_end_a9} :catchall_63

    goto :goto_96

    .line 443
    .end local v8           #oldJournal:Ljava/io/File;
    .end local v10           #queue:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/BackupManagerService$BackupRequest;>;"
    .end local v11           #transport:Lcom/android/internal/backup/IBackupTransport;
    :pswitch_aa
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Lcom/android/server/BackupManagerService$RestoreParams;

    .line 444
    .local v9, params:Lcom/android/server/BackupManagerService$RestoreParams;
    const-string v0, "BackupManagerService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MSG_RUN_RESTORE observer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v9, Lcom/android/server/BackupManagerService$RestoreParams;->observer:Landroid/backup/IRestoreObserver;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    new-instance v0, Lcom/android/server/BackupManagerService$PerformRestoreThread;

    iget-object v1, p0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v2, v9, Lcom/android/server/BackupManagerService$RestoreParams;->transport:Lcom/android/internal/backup/IBackupTransport;

    iget-object v3, v9, Lcom/android/server/BackupManagerService$RestoreParams;->observer:Landroid/backup/IRestoreObserver;

    iget-wide v4, v9, Lcom/android/server/BackupManagerService$RestoreParams;->token:J

    invoke-direct/range {v0 .. v5}, Lcom/android/server/BackupManagerService$PerformRestoreThread;-><init>(Lcom/android/server/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Landroid/backup/IRestoreObserver;J)V

    invoke-virtual {v0}, Lcom/android/server/BackupManagerService$PerformRestoreThread;->start()V

    goto/16 :goto_7

    .line 452
    .end local v9           #params:Lcom/android/server/BackupManagerService$RestoreParams;
    :pswitch_da
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Lcom/android/server/BackupManagerService$ClearParams;

    .line 453
    .local v9, params:Lcom/android/server/BackupManagerService$ClearParams;
    new-instance v0, Lcom/android/server/BackupManagerService$PerformClearThread;

    iget-object v1, p0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v2, v9, Lcom/android/server/BackupManagerService$ClearParams;->transport:Lcom/android/internal/backup/IBackupTransport;

    iget-object v3, v9, Lcom/android/server/BackupManagerService$ClearParams;->packageInfo:Landroid/content/pm/PackageInfo;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/BackupManagerService$PerformClearThread;-><init>(Lcom/android/server/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Landroid/content/pm/PackageInfo;)V

    invoke-virtual {v0}, Lcom/android/server/BackupManagerService$PerformClearThread;->start()V

    goto/16 :goto_7

    .line 418
    .end local v9           #params:Lcom/android/server/BackupManagerService$ClearParams;
    .restart local v7       #i$:Ljava/util/Iterator;
    .restart local v8       #oldJournal:Ljava/io/File;
    .restart local v10       #queue:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/BackupManagerService$BackupRequest;>;"
    .restart local v11       #transport:Lcom/android/internal/backup/IBackupTransport;
    :catch_ee
    move-exception v1

    goto :goto_87

    .line 392
    :pswitch_data_f0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_aa
        :pswitch_da
    .end packed-switch
.end method
