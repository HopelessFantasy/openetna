.class final Lcom/android/server/PowerManagerService$BatteryReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BatteryReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PowerManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/PowerManagerService;)V
    .registers 2
    .parameter

    .prologue
    .line 331
    iput-object p1, p0, Lcom/android/server/PowerManagerService$BatteryReceiver;->this$0:Lcom/android/server/PowerManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/PowerManagerService;Lcom/android/server/PowerManagerService$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 331
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService$BatteryReceiver;-><init>(Lcom/android/server/PowerManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 334
    iget-object v2, p0, Lcom/android/server/PowerManagerService$BatteryReceiver;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$500(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$LockList;

    move-result-object v2

    monitor-enter v2

    .line 335
    :try_start_7
    iget-object v3, p0, Lcom/android/server/PowerManagerService$BatteryReceiver;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$600(Lcom/android/server/PowerManagerService;)Z

    move-result v1

    .line 336
    .local v1, wasPowered:Z
    iget-object v3, p0, Lcom/android/server/PowerManagerService$BatteryReceiver;->this$0:Lcom/android/server/PowerManagerService;

    iget-object v4, p0, Lcom/android/server/PowerManagerService$BatteryReceiver;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$700(Lcom/android/server/PowerManagerService;)Lcom/android/server/BatteryService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/BatteryService;->isPowered()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/android/server/PowerManagerService;->access$602(Lcom/android/server/PowerManagerService;Z)Z

    .line 338
    iget-object v3, p0, Lcom/android/server/PowerManagerService$BatteryReceiver;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$600(Lcom/android/server/PowerManagerService;)Z

    move-result v3

    if-eq v3, v1, :cond_53

    .line 340
    iget-object v3, p0, Lcom/android/server/PowerManagerService$BatteryReceiver;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$800(Lcom/android/server/PowerManagerService;)V

    .line 347
    iget-object v3, p0, Lcom/android/server/PowerManagerService$BatteryReceiver;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$500(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$LockList;

    move-result-object v3

    monitor-enter v3
    :try_end_30
    .catchall {:try_start_7 .. :try_end_30} :catchall_58

    .line 348
    :try_start_30
    iget-object v4, p0, Lcom/android/server/PowerManagerService$BatteryReceiver;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$900(Lcom/android/server/PowerManagerService;)Z

    move-result v0

    .line 349
    .local v0, savedActivityAllowed:Z
    iget-object v4, p0, Lcom/android/server/PowerManagerService$BatteryReceiver;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/android/server/PowerManagerService;->access$902(Lcom/android/server/PowerManagerService;Z)Z

    .line 350
    const-string v4, "PowerManagerService"

    const-string v5, "BatteryReceiver"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    iget-object v4, p0, Lcom/android/server/PowerManagerService$BatteryReceiver;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/PowerManagerService;->userActivity(JZ)V

    .line 352
    iget-object v4, p0, Lcom/android/server/PowerManagerService$BatteryReceiver;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v4, v0}, Lcom/android/server/PowerManagerService;->access$902(Lcom/android/server/PowerManagerService;Z)Z

    .line 353
    monitor-exit v3
    :try_end_53
    .catchall {:try_start_30 .. :try_end_53} :catchall_55

    .line 355
    .end local v0           #savedActivityAllowed:Z
    :cond_53
    :try_start_53
    monitor-exit v2
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_58

    .line 356
    return-void

    .line 353
    :catchall_55
    move-exception v4

    :try_start_56
    monitor-exit v3
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_55

    :try_start_57
    throw v4

    .line 355
    .end local v1           #wasPowered:Z
    :catchall_58
    move-exception v3

    monitor-exit v2
    :try_end_5a
    .catchall {:try_start_57 .. :try_end_5a} :catchall_58

    throw v3
.end method
