.class Lcom/android/server/WifiService$WifiHandler;
.super Landroid/os/Handler;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WifiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WifiService;


# direct methods
.method public constructor <init>(Lcom/android/server/WifiService;Landroid/os/Looper;)V
    .registers 3
    .parameter
    .parameter "looper"

    .prologue
    .line 2337
    iput-object p1, p0, Lcom/android/server/WifiService$WifiHandler;->this$0:Lcom/android/server/WifiService;

    .line 2338
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2339
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 12
    .parameter "msg"

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x1

    const-string v8, "WifiService"

    .line 2343
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_10a

    .line 2429
    :goto_9
    return-void

    .line 2348
    :pswitch_a
    const-string v4, "WifiService"

    const-string v4, "MESSAGE_ENABLE_WIFI"

    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2350
    iget-object v4, p0, Lcom/android/server/WifiService$WifiHandler;->this$0:Lcom/android/server/WifiService;

    iget v5, p1, Landroid/os/Message;->arg1:I

    if-ne v5, v7, :cond_25

    move v5, v7

    :goto_18
    iget v6, p1, Landroid/os/Message;->arg2:I

    invoke-static {v4, v7, v5, v6}, Lcom/android/server/WifiService;->access$500(Lcom/android/server/WifiService;ZZI)Z

    .line 2351
    invoke-static {}, Lcom/android/server/WifiService;->access$1800()Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_9

    :cond_25
    move v5, v9

    .line 2350
    goto :goto_18

    .line 2357
    :pswitch_27
    const-string v4, "WifiService"

    const-string v4, "MESSAGE_START_WIFI"

    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2359
    iget-object v4, p0, Lcom/android/server/WifiService$WifiHandler;->this$0:Lcom/android/server/WifiService;

    invoke-static {v4}, Lcom/android/server/WifiService;->access$1100(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateTracker;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    if-eqz v5, :cond_4d

    move v5, v7

    :goto_39
    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiStateTracker;->setScanOnlyMode(Z)V

    .line 2360
    iget-object v4, p0, Lcom/android/server/WifiService$WifiHandler;->this$0:Lcom/android/server/WifiService;

    invoke-static {v4}, Lcom/android/server/WifiService;->access$1100(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateTracker;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiStateTracker;->restart()Z

    .line 2361
    invoke-static {}, Lcom/android/server/WifiService;->access$1800()Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_9

    :cond_4d
    move v5, v9

    .line 2359
    goto :goto_39

    .line 2369
    :pswitch_4f
    const-string v4, "WifiService"

    const-string v4, "MESSAGE_DISABLE_WIFI"

    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2371
    iget-object v4, p0, Lcom/android/server/WifiService$WifiHandler;->this$0:Lcom/android/server/WifiService;

    iget v5, p1, Landroid/os/Message;->arg1:I

    if-ne v5, v7, :cond_6a

    move v5, v7

    :goto_5d
    iget v6, p1, Landroid/os/Message;->arg2:I

    invoke-static {v4, v9, v5, v6}, Lcom/android/server/WifiService;->access$500(Lcom/android/server/WifiService;ZZI)Z

    .line 2372
    invoke-static {}, Lcom/android/server/WifiService;->access$1800()Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_9

    :cond_6a
    move v5, v9

    .line 2371
    goto :goto_5d

    .line 2378
    :pswitch_6c
    const-string v4, "WifiService"

    const-string v4, "MESSAGE_STOP_WIFI"

    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2380
    iget-object v4, p0, Lcom/android/server/WifiService$WifiHandler;->this$0:Lcom/android/server/WifiService;

    invoke-static {v4}, Lcom/android/server/WifiService;->access$1100(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateTracker;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiStateTracker;->disconnectAndStop()Z

    goto :goto_9

    .line 2387
    :pswitch_7d
    const-string v4, "WifiService"

    const-string v4, "MESSAGE_RELEASE_WAKELOCK"

    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2389
    invoke-static {}, Lcom/android/server/WifiService;->access$200()Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    monitor-enter v4

    .line 2390
    :try_start_89
    invoke-static {}, Lcom/android/server/WifiService;->access$200()Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v5

    if-eqz v5, :cond_9a

    .line 2391
    invoke-static {}, Lcom/android/server/WifiService;->access$200()Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2393
    :cond_9a
    monitor-exit v4

    goto/16 :goto_9

    :catchall_9d
    move-exception v5

    monitor-exit v4
    :try_end_9f
    .catchall {:try_start_89 .. :try_end_9f} :catchall_9d

    throw v5

    .line 2399
    :pswitch_a0
    const-string v4, "WifiService"

    const-string v4, "MESSAGE_CHECK_WIFISTATS"

    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2404
    iget-object v4, p0, Lcom/android/server/WifiService$WifiHandler;->this$0:Lcom/android/server/WifiService;

    invoke-static {v4}, Lcom/android/server/WifiService;->access$1000(Lcom/android/server/WifiService;)Z

    move-result v4

    if-nez v4, :cond_b8

    .line 2405
    const-string v4, "WifiService"

    const-string v4, "Screen is already on"

    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 2411
    :cond_b8
    iget-object v4, p0, Lcom/android/server/WifiService$WifiHandler;->this$0:Lcom/android/server/WifiService;

    invoke-static {v4}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "wifi_idle_ms"

    const-wide/16 v6, 0x0

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$Gservices;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 2413
    .local v0, idleMillis:J
    iget-object v4, p0, Lcom/android/server/WifiService$WifiHandler;->this$0:Lcom/android/server/WifiService;

    invoke-static {v4}, Lcom/android/server/WifiService;->access$1500(Lcom/android/server/WifiService;)V

    .line 2414
    iget-object v4, p0, Lcom/android/server/WifiService$WifiHandler;->this$0:Lcom/android/server/WifiService;

    invoke-static {v4}, Lcom/android/server/WifiService;->access$1900(Lcom/android/server/WifiService;)Z

    move-result v4

    if-nez v4, :cond_f5

    .line 2415
    const-string v4, "WifiService"

    const-string v4, "MESSAGE_CHECK_WIFISTATS : no wifi data"

    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2417
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long v2, v4, v0

    .line 2418
    .local v2, triggerTime:J
    iget-object v4, p0, Lcom/android/server/WifiService$WifiHandler;->this$0:Lcom/android/server/WifiService;

    invoke-static {v4}, Lcom/android/server/WifiService;->access$800(Lcom/android/server/WifiService;)Landroid/app/AlarmManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/WifiService$WifiHandler;->this$0:Lcom/android/server/WifiService;

    invoke-static {v5}, Lcom/android/server/WifiService;->access$700(Lcom/android/server/WifiService;)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v4, v9, v2, v3, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_9

    .line 2423
    .end local v2           #triggerTime:J
    :cond_f5
    const-string v4, "WifiService"

    const-string v4, "MESSAGE_CHECK_WIFISTATS : There are wifi data"

    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2424
    iget-object v4, p0, Lcom/android/server/WifiService$WifiHandler;->this$0:Lcom/android/server/WifiService;

    invoke-static {v4}, Lcom/android/server/WifiService;->access$100(Lcom/android/server/WifiService;)Lcom/android/server/WifiService$WifiHandler;

    move-result-object v4

    const/4 v5, 0x5

    const-wide/16 v6, 0x2710

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/WifiService$WifiHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_9

    .line 2343
    :pswitch_data_10a
    .packed-switch 0x0
        :pswitch_a
        :pswitch_4f
        :pswitch_6c
        :pswitch_27
        :pswitch_7d
        :pswitch_a0
    .end packed-switch
.end method
