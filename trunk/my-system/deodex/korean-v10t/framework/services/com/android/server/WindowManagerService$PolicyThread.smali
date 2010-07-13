.class Lcom/android/server/WindowManagerService$PolicyThread;
.super Ljava/lang/Thread;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PolicyThread"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mPM:Lcom/android/server/PowerManagerService;

.field private final mPolicy:Landroid/view/WindowManagerPolicy;

.field mRunning:Z

.field private final mService:Lcom/android/server/WindowManagerService;


# direct methods
.method public constructor <init>(Landroid/view/WindowManagerPolicy;Lcom/android/server/WindowManagerService;Landroid/content/Context;Lcom/android/server/PowerManagerService;)V
    .registers 6
    .parameter "policy"
    .parameter "service"
    .parameter "context"
    .parameter "pm"

    .prologue
    .line 578
    const-string v0, "WindowManagerPolicy"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 573
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/WindowManagerService$PolicyThread;->mRunning:Z

    .line 579
    iput-object p1, p0, Lcom/android/server/WindowManagerService$PolicyThread;->mPolicy:Landroid/view/WindowManagerPolicy;

    .line 580
    iput-object p2, p0, Lcom/android/server/WindowManagerService$PolicyThread;->mService:Lcom/android/server/WindowManagerService;

    .line 581
    iput-object p3, p0, Lcom/android/server/WindowManagerService$PolicyThread;->mContext:Landroid/content/Context;

    .line 582
    iput-object p4, p0, Lcom/android/server/WindowManagerService$PolicyThread;->mPM:Lcom/android/server/PowerManagerService;

    .line 583
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 586
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 589
    const/4 v0, -0x2

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 591
    iget-object v0, p0, Lcom/android/server/WindowManagerService$PolicyThread;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v1, p0, Lcom/android/server/WindowManagerService$PolicyThread;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/WindowManagerService$PolicyThread;->mService:Lcom/android/server/WindowManagerService;

    iget-object v3, p0, Lcom/android/server/WindowManagerService$PolicyThread;->mPM:Lcom/android/server/PowerManagerService;

    invoke-interface {v0, v1, v2, v3}, Landroid/view/WindowManagerPolicy;->init(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/os/LocalPowerManager;)V

    .line 593
    monitor-enter p0

    .line 594
    const/4 v0, 0x1

    :try_start_14
    iput-boolean v0, p0, Lcom/android/server/WindowManagerService$PolicyThread;->mRunning:Z

    .line 595
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 596
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_1e

    .line 598
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 599
    return-void

    .line 596
    :catchall_1e
    move-exception v0

    :try_start_1f
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v0
.end method
