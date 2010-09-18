.class Lcom/android/server/WifiService$2;
.super Ljava/lang/Object;
.source "WifiService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/WifiService;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiStateTracker;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WifiService;


# direct methods
.method constructor <init>(Lcom/android/server/WifiService;)V
    .registers 2
    .parameter

    .prologue
    .line 278
    iput-object p1, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    invoke-static {v0}, Lcom/android/server/WifiService;->access$100(Lcom/android/server/WifiService;)Lcom/android/server/WifiService$WifiHandler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/WifiService$WifiHandler;->removeMessages(I)V

    .line 280
    invoke-static {}, Lcom/android/server/WifiService;->access$200()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    monitor-enter v0

    .line 281
    :try_start_f
    invoke-static {}, Lcom/android/server/WifiService;->access$200()Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 282
    invoke-static {}, Lcom/android/server/WifiService;->access$200()Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 284
    :cond_20
    monitor-exit v0

    .line 285
    return-void

    .line 284
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_f .. :try_end_24} :catchall_22

    throw v1
.end method
