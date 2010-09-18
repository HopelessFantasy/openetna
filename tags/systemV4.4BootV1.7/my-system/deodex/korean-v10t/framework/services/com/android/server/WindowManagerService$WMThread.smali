.class Lcom/android/server/WindowManagerService$WMThread;
.super Ljava/lang/Thread;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WMThread"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHaveInputMethods:Z

.field private final mPM:Lcom/android/server/PowerManagerService;

.field mService:Lcom/android/server/WindowManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/PowerManagerService;Z)V
    .registers 5
    .parameter "context"
    .parameter "pm"
    .parameter "haveInputMethods"

    .prologue
    .line 546
    const-string v0, "WindowManager"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 547
    iput-object p1, p0, Lcom/android/server/WindowManagerService$WMThread;->mContext:Landroid/content/Context;

    .line 548
    iput-object p2, p0, Lcom/android/server/WindowManagerService$WMThread;->mPM:Lcom/android/server/PowerManagerService;

    .line 549
    iput-boolean p3, p0, Lcom/android/server/WindowManagerService$WMThread;->mHaveInputMethods:Z

    .line 550
    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 553
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 554
    new-instance v0, Lcom/android/server/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/WindowManagerService$WMThread;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/WindowManagerService$WMThread;->mPM:Lcom/android/server/PowerManagerService;

    iget-boolean v3, p0, Lcom/android/server/WindowManagerService$WMThread;->mHaveInputMethods:Z

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/WindowManagerService;-><init>(Landroid/content/Context;Lcom/android/server/PowerManagerService;ZLcom/android/server/WindowManagerService$1;)V

    .line 556
    .local v0, s:Lcom/android/server/WindowManagerService;
    const/4 v1, -0x4

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 559
    monitor-enter p0

    .line 560
    :try_start_14
    iput-object v0, p0, Lcom/android/server/WindowManagerService$WMThread;->mService:Lcom/android/server/WindowManagerService;

    .line 561
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 562
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_1e

    .line 564
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 565
    return-void

    .line 562
    :catchall_1e
    move-exception v1

    :try_start_1f
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v1
.end method
