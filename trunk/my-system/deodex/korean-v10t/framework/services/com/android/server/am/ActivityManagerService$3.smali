.class Lcom/android/server/am/ActivityManagerService$3;
.super Ljava/lang/Thread;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 1485
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .prologue
    .line 1489
    :goto_0
    :try_start_0
    monitor-enter p0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_1} :catch_3b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1} :catch_2e

    .line 1490
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 1491
    .local v5, now:J
    iget-object v7, p0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-wide v7, v7, Lcom/android/server/am/ActivityManagerService;->mLastCpuTime:J

    const-wide/32 v9, 0xfffffff

    add-long/2addr v7, v9

    sub-long v1, v7, v5

    .line 1492
    .local v1, nextCpuDelay:J
    iget-object v7, p0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-wide v7, v7, Lcom/android/server/am/ActivityManagerService;->mLastWriteTime:J

    const-wide/32 v9, 0x1b7740

    add-long/2addr v7, v9

    sub-long v3, v7, v5

    .line 1495
    .local v3, nextWriteDelay:J
    cmp-long v7, v3, v1

    if-gez v7, :cond_1e

    .line 1496
    move-wide v1, v3

    .line 1498
    :cond_1e
    const-wide/16 v7, 0x0

    cmp-long v7, v1, v7

    if-lez v7, :cond_27

    .line 1499
    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V

    .line 1501
    :cond_27
    monitor-exit p0
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_38

    .line 1505
    .end local v1           #nextCpuDelay:J
    .end local v3           #nextWriteDelay:J
    .end local v5           #now:J
    :goto_28
    :try_start_28
    iget-object v7, p0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->updateCpuStatsNow()V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_2d} :catch_2e

    goto :goto_0

    .line 1506
    :catch_2e
    move-exception v7

    move-object v0, v7

    .line 1507
    .local v0, e:Ljava/lang/Exception;
    const-string v7, "ActivityManager"

    const-string v8, "Unexpected exception collecting process stats"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1501
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_38
    move-exception v7

    :try_start_39
    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    :try_start_3a
    throw v7
    :try_end_3b
    .catch Ljava/lang/InterruptedException; {:try_start_3a .. :try_end_3b} :catch_3b
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3b} :catch_2e

    .line 1502
    :catch_3b
    move-exception v7

    goto :goto_28
.end method
