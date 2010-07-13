.class Lcom/android/server/HardwareService$Death;
.super Ljava/lang/Object;
.source "HardwareService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/HardwareService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Death"
.end annotation


# instance fields
.field mMe:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/android/server/HardwareService;


# direct methods
.method constructor <init>(Lcom/android/server/HardwareService;Landroid/os/IBinder;)V
    .registers 3
    .parameter
    .parameter "me"

    .prologue
    .line 443
    iput-object p1, p0, Lcom/android/server/HardwareService$Death;->this$0:Lcom/android/server/HardwareService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 444
    iput-object p2, p0, Lcom/android/server/HardwareService$Death;->mMe:Landroid/os/IBinder;

    .line 445
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    .prologue
    .line 448
    iget-object v0, p0, Lcom/android/server/HardwareService$Death;->this$0:Lcom/android/server/HardwareService;

    monitor-enter v0

    .line 449
    :try_start_3
    iget-object v1, p0, Lcom/android/server/HardwareService$Death;->mMe:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/android/server/HardwareService$Death;->this$0:Lcom/android/server/HardwareService;

    iget-object v2, v2, Lcom/android/server/HardwareService;->mToken:Landroid/os/IBinder;

    if-ne v1, v2, :cond_10

    .line 450
    iget-object v1, p0, Lcom/android/server/HardwareService$Death;->this$0:Lcom/android/server/HardwareService;

    invoke-static {v1}, Lcom/android/server/HardwareService;->access$500(Lcom/android/server/HardwareService;)V

    .line 452
    :cond_10
    monitor-exit v0

    .line 453
    return-void

    .line 452
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method
