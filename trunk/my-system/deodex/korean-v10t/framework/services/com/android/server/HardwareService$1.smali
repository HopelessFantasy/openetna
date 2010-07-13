.class Lcom/android/server/HardwareService$1;
.super Landroid/os/Handler;
.source "HardwareService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/HardwareService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/HardwareService;


# direct methods
.method constructor <init>(Lcom/android/server/HardwareService;)V
    .registers 2
    .parameter

    .prologue
    .line 331
    iput-object p1, p0, Lcom/android/server/HardwareService$1;->this$0:Lcom/android/server/HardwareService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    .line 332
    monitor-enter p0

    .line 336
    :try_start_2
    iget-object v0, p0, Lcom/android/server/HardwareService$1;->this$0:Lcom/android/server/HardwareService;

    invoke-static {v0}, Lcom/android/server/HardwareService;->access$000(Lcom/android/server/HardwareService;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 337
    iget-object v0, p0, Lcom/android/server/HardwareService$1;->this$0:Lcom/android/server/HardwareService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/HardwareService;->access$002(Lcom/android/server/HardwareService;Z)Z

    .line 338
    iget-object v0, p0, Lcom/android/server/HardwareService$1;->this$0:Lcom/android/server/HardwareService;

    invoke-static {v0}, Lcom/android/server/HardwareService;->access$100(Lcom/android/server/HardwareService;)I

    move-result v0

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/android/server/HardwareService$1;->this$0:Lcom/android/server/HardwareService;

    invoke-static {v2}, Lcom/android/server/HardwareService;->access$200(Lcom/android/server/HardwareService;)Z

    move-result v2

    if-eqz v2, :cond_28

    const/4 v2, -0x1

    :goto_20
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/android/server/HardwareService;->access$300(IIIIII)V

    .line 342
    :cond_26
    monitor-exit p0

    .line 343
    return-void

    :cond_28
    move v2, v3

    .line 338
    goto :goto_20

    .line 342
    :catchall_2a
    move-exception v0

    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_2 .. :try_end_2c} :catchall_2a

    throw v0
.end method
