.class Lcom/android/server/HardwareService$VibrateThread;
.super Ljava/lang/Thread;
.source "HardwareService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/HardwareService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VibrateThread"
.end annotation


# instance fields
.field mDone:Z

.field mPattern:[J

.field mRepeat:I

.field final synthetic this$0:Lcom/android/server/HardwareService;


# direct methods
.method constructor <init>(Lcom/android/server/HardwareService;[JI)V
    .registers 5
    .parameter
    .parameter "pattern"
    .parameter "repeat"

    .prologue
    .line 364
    iput-object p1, p0, Lcom/android/server/HardwareService$VibrateThread;->this$0:Lcom/android/server/HardwareService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 365
    iput-object p2, p0, Lcom/android/server/HardwareService$VibrateThread;->mPattern:[J

    .line 366
    iput p3, p0, Lcom/android/server/HardwareService$VibrateThread;->mRepeat:I

    .line 367
    invoke-static {p1}, Lcom/android/server/HardwareService;->access$400(Lcom/android/server/HardwareService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 368
    return-void
.end method

.method private delay(J)V
    .registers 9
    .parameter "duration"

    .prologue
    const-wide/16 v4, 0x0

    .line 371
    cmp-long v2, p1, v4

    if-lez v2, :cond_11

    .line 372
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 375
    .local v0, bedtime:J
    :cond_a
    :try_start_a
    invoke-virtual {p0, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_d} :catch_1f

    .line 379
    :goto_d
    iget-boolean v2, p0, Lcom/android/server/HardwareService$VibrateThread;->mDone:Z

    if-eqz v2, :cond_12

    .line 386
    .end local v0           #bedtime:J
    :cond_11
    :goto_11
    return-void

    .line 382
    .restart local v0       #bedtime:J
    :cond_12
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long v2, p1, v2

    sub-long p1, v2, v0

    .line 384
    cmp-long v2, p1, v4

    if-gtz v2, :cond_a

    goto :goto_11

    .line 377
    :catch_1f
    move-exception v2

    goto :goto_d
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    .line 389
    const/4 v6, -0x8

    invoke-static {v6}, Landroid/os/Process;->setThreadPriority(I)V

    .line 390
    monitor-enter p0

    .line 391
    const/4 v2, 0x0

    .line 392
    .local v2, index:I
    :try_start_6
    iget-object v5, p0, Lcom/android/server/HardwareService$VibrateThread;->mPattern:[J

    .line 393
    .local v5, pattern:[J
    array-length v4, v5
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_62

    .line 394
    .local v4, len:I
    const-wide/16 v0, 0x0

    .local v0, duration:J
    move v3, v2

    .line 396
    .end local v2           #index:I
    .local v3, index:I
    :goto_c
    :try_start_c
    iget-boolean v6, p0, Lcom/android/server/HardwareService$VibrateThread;->mDone:Z
    :try_end_e
    .catchall {:try_start_c .. :try_end_e} :catchall_68

    if-nez v6, :cond_6d

    .line 398
    if-ge v3, v4, :cond_18

    .line 399
    add-int/lit8 v2, v3, 0x1

    .end local v3           #index:I
    .restart local v2       #index:I
    :try_start_14
    aget-wide v6, v5, v3
    :try_end_16
    .catchall {:try_start_14 .. :try_end_16} :catchall_62

    add-long/2addr v0, v6

    move v3, v2

    .line 403
    .end local v2           #index:I
    .restart local v3       #index:I
    :cond_18
    :try_start_18
    invoke-direct {p0, v0, v1}, Lcom/android/server/HardwareService$VibrateThread;->delay(J)V

    .line 404
    iget-boolean v6, p0, Lcom/android/server/HardwareService$VibrateThread;->mDone:Z
    :try_end_1d
    .catchall {:try_start_18 .. :try_end_1d} :catchall_68

    if-eqz v6, :cond_43

    move v2, v3

    .line 424
    .end local v3           #index:I
    .restart local v2       #index:I
    :goto_20
    :try_start_20
    iget-boolean v6, p0, Lcom/android/server/HardwareService$VibrateThread;->mDone:Z

    if-eqz v6, :cond_29

    .line 428
    iget-object v6, p0, Lcom/android/server/HardwareService$VibrateThread;->this$0:Lcom/android/server/HardwareService;

    invoke-static {}, Lcom/android/server/HardwareService;->vibratorOff()V

    .line 430
    :cond_29
    iget-object v6, p0, Lcom/android/server/HardwareService$VibrateThread;->this$0:Lcom/android/server/HardwareService;

    invoke-static {v6}, Lcom/android/server/HardwareService;->access$400(Lcom/android/server/HardwareService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 431
    monitor-exit p0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_62

    .line 432
    iget-object v6, p0, Lcom/android/server/HardwareService$VibrateThread;->this$0:Lcom/android/server/HardwareService;

    monitor-enter v6

    .line 433
    :try_start_36
    iget-object v7, p0, Lcom/android/server/HardwareService$VibrateThread;->this$0:Lcom/android/server/HardwareService;

    iget-object v7, v7, Lcom/android/server/HardwareService;->mThread:Lcom/android/server/HardwareService$VibrateThread;

    if-ne v7, p0, :cond_41

    .line 434
    iget-object v7, p0, Lcom/android/server/HardwareService$VibrateThread;->this$0:Lcom/android/server/HardwareService;

    const/4 v8, 0x0

    iput-object v8, v7, Lcom/android/server/HardwareService;->mThread:Lcom/android/server/HardwareService$VibrateThread;

    .line 436
    :cond_41
    monitor-exit v6
    :try_end_42
    .catchall {:try_start_36 .. :try_end_42} :catchall_65

    .line 437
    return-void

    .line 408
    .end local v2           #index:I
    .restart local v3       #index:I
    :cond_43
    if-ge v3, v4, :cond_56

    .line 411
    add-int/lit8 v2, v3, 0x1

    .end local v3           #index:I
    .restart local v2       #index:I
    :try_start_47
    aget-wide v0, v5, v3

    .line 412
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-lez v6, :cond_6b

    .line 413
    iget-object v6, p0, Lcom/android/server/HardwareService$VibrateThread;->this$0:Lcom/android/server/HardwareService;

    invoke-static {v0, v1}, Lcom/android/server/HardwareService;->vibratorOn(J)V
    :try_end_54
    .catchall {:try_start_47 .. :try_end_54} :catchall_62

    move v3, v2

    .end local v2           #index:I
    .restart local v3       #index:I
    goto :goto_c

    .line 416
    :cond_56
    :try_start_56
    iget v6, p0, Lcom/android/server/HardwareService$VibrateThread;->mRepeat:I

    if-gez v6, :cond_5c

    move v2, v3

    .line 417
    .end local v3           #index:I
    .restart local v2       #index:I
    goto :goto_20

    .line 419
    .end local v2           #index:I
    .restart local v3       #index:I
    :cond_5c
    iget v2, p0, Lcom/android/server/HardwareService$VibrateThread;->mRepeat:I
    :try_end_5e
    .catchall {:try_start_56 .. :try_end_5e} :catchall_68

    .line 420
    .end local v3           #index:I
    .restart local v2       #index:I
    const-wide/16 v0, 0x0

    move v3, v2

    .end local v2           #index:I
    .restart local v3       #index:I
    goto :goto_c

    .line 431
    .end local v0           #duration:J
    .end local v3           #index:I
    .end local v4           #len:I
    .end local v5           #pattern:[J
    .restart local v2       #index:I
    :catchall_62
    move-exception v6

    :goto_63
    :try_start_63
    monitor-exit p0
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_62

    throw v6

    .line 436
    .restart local v0       #duration:J
    .restart local v4       #len:I
    .restart local v5       #pattern:[J
    :catchall_65
    move-exception v7

    :try_start_66
    monitor-exit v6
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_65

    throw v7

    .line 431
    .end local v2           #index:I
    .restart local v3       #index:I
    :catchall_68
    move-exception v6

    move v2, v3

    .end local v3           #index:I
    .restart local v2       #index:I
    goto :goto_63

    :cond_6b
    move v3, v2

    .end local v2           #index:I
    .restart local v3       #index:I
    goto :goto_c

    :cond_6d
    move v2, v3

    .end local v3           #index:I
    .restart local v2       #index:I
    goto :goto_20
.end method
