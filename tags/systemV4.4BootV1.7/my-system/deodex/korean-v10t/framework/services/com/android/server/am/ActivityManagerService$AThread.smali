.class Lcom/android/server/am/ActivityManagerService$AThread;
.super Ljava/lang/Thread;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AThread"
.end annotation


# instance fields
.field mReady:Z

.field mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 1288
    const-string v0, "ActivityManager"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 1285
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerService$AThread;->mReady:Z

    .line 1289
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1292
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 1294
    const/4 v1, -0x2

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1297
    new-instance v0, Lcom/android/server/am/ActivityManagerService;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/ActivityManagerService;-><init>(Lcom/android/server/am/ActivityManagerService$1;)V

    .line 1299
    .local v0, m:Lcom/android/server/am/ActivityManagerService;
    monitor-enter p0

    .line 1300
    :try_start_e
    iput-object v0, p0, Lcom/android/server/am/ActivityManagerService$AThread;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1301
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1302
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_e .. :try_end_14} :catchall_1f

    .line 1304
    monitor-enter p0

    .line 1305
    :goto_15
    :try_start_15
    iget-boolean v1, p0, Lcom/android/server/am/ActivityManagerService$AThread;->mReady:Z
    :try_end_17
    .catchall {:try_start_15 .. :try_end_17} :catchall_27

    if-nez v1, :cond_22

    .line 1307
    :try_start_19
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_27
    .catch Ljava/lang/InterruptedException; {:try_start_19 .. :try_end_1c} :catch_1d

    goto :goto_15

    .line 1308
    :catch_1d
    move-exception v1

    goto :goto_15

    .line 1302
    :catchall_1f
    move-exception v1

    :try_start_20
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v1

    .line 1311
    :cond_22
    :try_start_22
    monitor-exit p0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_27

    .line 1313
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 1314
    return-void

    .line 1311
    :catchall_27
    move-exception v1

    :try_start_28
    monitor-exit p0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw v1
.end method
