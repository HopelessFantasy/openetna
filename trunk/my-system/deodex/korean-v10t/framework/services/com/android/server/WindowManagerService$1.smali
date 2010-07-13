.class Lcom/android/server/WindowManagerService$1;
.super Landroid/os/TokenWatcher;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/WindowManagerService;Landroid/os/Handler;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 307
    iput-object p1, p0, Lcom/android/server/WindowManagerService$1;->this$0:Lcom/android/server/WindowManagerService;

    invoke-direct {p0, p2, p3}, Landroid/os/TokenWatcher;-><init>(Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public acquired()V
    .registers 3

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/server/WindowManagerService$1;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy;->enableKeyguard(Z)V

    .line 306
    return-void
.end method

.method public released()V
    .registers 4

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/server/WindowManagerService$1;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mKeyguardDisabled:Landroid/os/TokenWatcher;

    monitor-enter v0

    .line 309
    :try_start_5
    iget-object v1, p0, Lcom/android/server/WindowManagerService$1;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/WindowManagerPolicy;->enableKeyguard(Z)V

    .line 310
    iget-object v1, p0, Lcom/android/server/WindowManagerService$1;->this$0:Lcom/android/server/WindowManagerService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/WindowManagerService;->access$002(Lcom/android/server/WindowManagerService;Z)Z

    .line 311
    iget-object v1, p0, Lcom/android/server/WindowManagerService$1;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/WindowManagerService;->mKeyguardDisabled:Landroid/os/TokenWatcher;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 312
    monitor-exit v0

    .line 313
    return-void

    .line 312
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_1c

    throw v1
.end method
