.class Lcom/android/server/WifiService$5;
.super Landroid/content/BroadcastReceiver;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WifiService;
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
    .line 2166
    iput-object p1, p0, Lcom/android/server/WifiService$5;->this$0:Lcom/android/server/WifiService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private shouldDeviceStayAwake(II)Z
    .registers 4
    .parameter "stayAwakeConditions"
    .parameter "pluggedType"

    .prologue
    .line 2167
    and-int v0, p1, p2

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private shouldWifiStayAwake(II)Z
    .registers 6
    .parameter "stayAwakeConditions"
    .parameter "pluggedType"

    .prologue
    const/4 v2, 0x1

    .line 2136
    const/4 v0, 0x1

    .line 2139
    .local v0, wifiSleepPolicy:I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    move v1, v2

    .line 2148
    :goto_6
    return v1

    .line 2142
    :cond_7
    if-ne v0, v2, :cond_d

    if-eqz p2, :cond_d

    move v1, v2

    .line 2145
    goto :goto_6

    .line 2148
    :cond_d
    invoke-direct {p0, p1, p2}, Lcom/android/server/WifiService$5;->shouldDeviceStayAwake(II)Z

    move-result v1

    goto :goto_6
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 14
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 2013
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2016
    .local v0, action:Ljava/lang/String;
    const-string v7, "WifiService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "BroadcastReceiver : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2019
    iget-object v7, p0, Lcom/android/server/WifiService$5;->this$0:Lcom/android/server/WifiService;

    invoke-static {v7}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "wifi_idle_ms"

    const-wide/16 v9, 0x0

    invoke-static {v7, v8, v9, v10}, Landroid/provider/Settings$Gservices;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v1

    .line 2021
    .local v1, idleMillis:J
    iget-object v7, p0, Lcom/android/server/WifiService$5;->this$0:Lcom/android/server/WifiService;

    invoke-static {v7}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "stay_on_while_plugged_in"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 2024
    .local v6, stayAwakeConditions:I
    const-string v7, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7e

    .line 2025
    const-string v7, "WifiService"

    const-string v8, "ACTION_SCREEN_ON"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2026
    iget-object v7, p0, Lcom/android/server/WifiService$5;->this$0:Lcom/android/server/WifiService;

    invoke-static {v7}, Lcom/android/server/WifiService;->access$800(Lcom/android/server/WifiService;)Landroid/app/AlarmManager;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/WifiService$5;->this$0:Lcom/android/server/WifiService;

    invoke-static {v8}, Lcom/android/server/WifiService;->access$700(Lcom/android/server/WifiService;)Landroid/app/PendingIntent;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 2027
    iget-object v7, p0, Lcom/android/server/WifiService$5;->this$0:Lcom/android/server/WifiService;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/android/server/WifiService;->access$902(Lcom/android/server/WifiService;Z)Z

    .line 2028
    iget-object v7, p0, Lcom/android/server/WifiService$5;->this$0:Lcom/android/server/WifiService;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/android/server/WifiService;->access$1002(Lcom/android/server/WifiService;Z)Z

    .line 2029
    iget-object v7, p0, Lcom/android/server/WifiService$5;->this$0:Lcom/android/server/WifiService;

    invoke-static {v7}, Lcom/android/server/WifiService;->access$1100(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateTracker;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/net/wifi/WifiStateTracker;->enableRssiPolling(Z)V

    .line 2033
    iget-object v7, p0, Lcom/android/server/WifiService$5;->this$0:Lcom/android/server/WifiService;

    invoke-static {v7}, Lcom/android/server/WifiService;->access$1200(Lcom/android/server/WifiService;)V

    .line 2122
    :goto_78
    iget-object v7, p0, Lcom/android/server/WifiService$5;->this$0:Lcom/android/server/WifiService;

    invoke-static {v7}, Lcom/android/server/WifiService;->access$300(Lcom/android/server/WifiService;)V

    .line 2123
    :cond_7d
    :goto_7d
    return-void

    .line 2036
    :cond_7e
    const-string v7, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e7

    .line 2037
    const-string v7, "WifiService"

    const-string v8, "ACTION_SCREEN_OFF"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2038
    iget-object v7, p0, Lcom/android/server/WifiService$5;->this$0:Lcom/android/server/WifiService;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/android/server/WifiService;->access$1002(Lcom/android/server/WifiService;Z)Z

    .line 2039
    iget-object v7, p0, Lcom/android/server/WifiService$5;->this$0:Lcom/android/server/WifiService;

    invoke-static {v7}, Lcom/android/server/WifiService;->access$1100(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateTracker;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/net/wifi/WifiStateTracker;->enableRssiPolling(Z)V

    .line 2046
    iget-object v7, p0, Lcom/android/server/WifiService$5;->this$0:Lcom/android/server/WifiService;

    invoke-static {v7}, Lcom/android/server/WifiService;->access$1300(Lcom/android/server/WifiService;)I

    move-result v7

    invoke-direct {p0, v6, v7}, Lcom/android/server/WifiService$5;->shouldWifiStayAwake(II)Z

    move-result v7

    if-nez v7, :cond_7d

    .line 2047
    iget-object v7, p0, Lcom/android/server/WifiService$5;->this$0:Lcom/android/server/WifiService;

    invoke-static {v7}, Lcom/android/server/WifiService;->access$1100(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateTracker;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/wifi/WifiStateTracker;->requestConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    .line 2048
    .local v3, info:Landroid/net/wifi/WifiInfo;
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v7

    sget-object v8, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    if-eq v7, v8, :cond_c7

    .line 2050
    iget-object v7, p0, Lcom/android/server/WifiService$5;->this$0:Lcom/android/server/WifiService;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/android/server/WifiService;->access$902(Lcom/android/server/WifiService;Z)Z

    .line 2051
    iget-object v7, p0, Lcom/android/server/WifiService$5;->this$0:Lcom/android/server/WifiService;

    invoke-static {v7}, Lcom/android/server/WifiService;->access$300(Lcom/android/server/WifiService;)V

    goto :goto_7d

    .line 2059
    :cond_c7
    const-string v7, "WifiService"

    const-string v8, "ACTION_SCREEN_OFF : USB is unpluged"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2060
    invoke-static {}, Lcom/android/server/WifiService;->access$1400()Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2061
    iget-object v7, p0, Lcom/android/server/WifiService$5;->this$0:Lcom/android/server/WifiService;

    invoke-static {v7}, Lcom/android/server/WifiService;->access$1500(Lcom/android/server/WifiService;)V

    .line 2062
    iget-object v7, p0, Lcom/android/server/WifiService$5;->this$0:Lcom/android/server/WifiService;

    invoke-static {v7}, Lcom/android/server/WifiService;->access$100(Lcom/android/server/WifiService;)Lcom/android/server/WifiService$WifiHandler;

    move-result-object v7

    const/4 v8, 0x5

    const-wide/16 v9, 0x2710

    invoke-virtual {v7, v8, v9, v10}, Lcom/android/server/WifiService$WifiHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_7d

    .line 2069
    .end local v3           #info:Landroid/net/wifi/WifiInfo;
    :cond_e7
    const-string v7, "com.android.server.WifiManager.action.DEVICE_IDLE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10f

    .line 2070
    const-string v7, "WifiService"

    const-string v8, "got ACTION_DEVICE_IDLE"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2075
    iget-object v7, p0, Lcom/android/server/WifiService$5;->this$0:Lcom/android/server/WifiService;

    invoke-static {v7}, Lcom/android/server/WifiService;->access$1000(Lcom/android/server/WifiService;)Z

    move-result v7

    if-nez v7, :cond_107

    .line 2076
    const-string v7, "WifiService"

    const-string v8, "Screen is already on"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7d

    .line 2082
    :cond_107
    iget-object v7, p0, Lcom/android/server/WifiService$5;->this$0:Lcom/android/server/WifiService;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/android/server/WifiService;->access$902(Lcom/android/server/WifiService;Z)Z

    goto/16 :goto_78

    .line 2083
    :cond_10f
    const-string v7, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_17d

    .line 2091
    const-string v7, "plugged"

    const/4 v8, 0x0

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 2092
    .local v5, pluggedType:I
    const-string v7, "WifiService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ACTION_BATTERY_CHANGED pluggedType: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2093
    iget-object v7, p0, Lcom/android/server/WifiService$5;->this$0:Lcom/android/server/WifiService;

    invoke-static {v7}, Lcom/android/server/WifiService;->access$1000(Lcom/android/server/WifiService;)Z

    move-result v7

    if-eqz v7, :cond_176

    iget-object v7, p0, Lcom/android/server/WifiService$5;->this$0:Lcom/android/server/WifiService;

    invoke-static {v7}, Lcom/android/server/WifiService;->access$1300(Lcom/android/server/WifiService;)I

    move-result v7

    invoke-direct {p0, v6, v7}, Lcom/android/server/WifiService$5;->shouldWifiStayAwake(II)Z

    move-result v7

    if-eqz v7, :cond_176

    invoke-direct {p0, v6, v5}, Lcom/android/server/WifiService$5;->shouldWifiStayAwake(II)Z

    move-result v7

    if-nez v7, :cond_176

    .line 2102
    const-string v7, "WifiService"

    const-string v8, "ACTION_BATTERY_CHANGED : USB is unpluged"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2103
    invoke-static {}, Lcom/android/server/WifiService;->access$1400()Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2104
    iget-object v7, p0, Lcom/android/server/WifiService$5;->this$0:Lcom/android/server/WifiService;

    invoke-static {v7}, Lcom/android/server/WifiService;->access$1500(Lcom/android/server/WifiService;)V

    .line 2105
    iget-object v7, p0, Lcom/android/server/WifiService$5;->this$0:Lcom/android/server/WifiService;

    invoke-static {v7}, Lcom/android/server/WifiService;->access$100(Lcom/android/server/WifiService;)Lcom/android/server/WifiService$WifiHandler;

    move-result-object v7

    const/4 v8, 0x5

    const-wide/16 v9, 0x2710

    invoke-virtual {v7, v8, v9, v10}, Lcom/android/server/WifiService$WifiHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 2108
    iget-object v7, p0, Lcom/android/server/WifiService$5;->this$0:Lcom/android/server/WifiService;

    invoke-static {v7, v5}, Lcom/android/server/WifiService;->access$1302(Lcom/android/server/WifiService;I)I

    goto/16 :goto_7d

    .line 2111
    :cond_176
    iget-object v7, p0, Lcom/android/server/WifiService$5;->this$0:Lcom/android/server/WifiService;

    invoke-static {v7, v5}, Lcom/android/server/WifiService;->access$1302(Lcom/android/server/WifiService;I)I

    goto/16 :goto_78

    .line 2112
    .end local v5           #pluggedType:I
    :cond_17d
    const-string v7, "android.bluetooth.a2dp.intent.action.SINK_STATE_CHANGED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7d

    .line 2113
    const-string v7, "android.bluetooth.a2dp.intent.SINK_STATE"

    const/4 v8, 0x0

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_19c

    const/4 v7, 0x1

    move v4, v7

    .line 2117
    .local v4, isBluetoothPlaying:Z
    :goto_191
    iget-object v7, p0, Lcom/android/server/WifiService$5;->this$0:Lcom/android/server/WifiService;

    invoke-static {v7}, Lcom/android/server/WifiService;->access$1100(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateTracker;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/net/wifi/WifiStateTracker;->setBluetoothScanMode(Z)V

    goto/16 :goto_78

    .line 2113
    .end local v4           #isBluetoothPlaying:Z
    :cond_19c
    const/4 v7, 0x0

    move v4, v7

    goto :goto_191
.end method
