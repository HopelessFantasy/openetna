.class Lcom/android/server/status/StatusBarPolicy$1;
.super Landroid/content/BroadcastReceiver;
.source "StatusBarPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/status/StatusBarPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/status/StatusBarPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/status/StatusBarPolicy;)V
    .registers 2
    .parameter

    .prologue
    .line 481
    iput-object p1, p0, Lcom/android/server/status/StatusBarPolicy$1;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 482
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 483
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 484
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy$1;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-static {v2}, Lcom/android/server/status/StatusBarPolicy;->access$100(Lcom/android/server/status/StatusBarPolicy;)V

    .line 550
    :cond_11
    :goto_11
    return-void

    .line 486
    :cond_12
    const-string v2, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 487
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy$1;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-static {v2}, Lcom/android/server/status/StatusBarPolicy;->access$100(Lcom/android/server/status/StatusBarPolicy;)V

    goto :goto_11

    .line 489
    :cond_20
    const-string v2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 490
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy$1;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-static {v2}, Lcom/android/server/status/StatusBarPolicy;->access$100(Lcom/android/server/status/StatusBarPolicy;)V

    goto :goto_11

    .line 492
    :cond_2e
    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 493
    const-string v2, "time-zone"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 494
    .local v1, tz:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy$1;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/status/StatusBarPolicy;->access$202(Lcom/android/server/status/StatusBarPolicy;Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 495
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy$1;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-static {v2}, Lcom/android/server/status/StatusBarPolicy;->access$100(Lcom/android/server/status/StatusBarPolicy;)V

    goto :goto_11

    .line 497
    .end local v1           #tz:Ljava/lang/String;
    :cond_4f
    const-string v2, "android.intent.action.ALARM_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 498
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy$1;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-static {v2, p2}, Lcom/android/server/status/StatusBarPolicy;->access$300(Lcom/android/server/status/StatusBarPolicy;Landroid/content/Intent;)V

    goto :goto_11

    .line 500
    :cond_5d
    const-string v2, "android.intent.action.SYNC_STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6b

    .line 501
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy$1;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-static {v2, p2}, Lcom/android/server/status/StatusBarPolicy;->access$400(Lcom/android/server/status/StatusBarPolicy;Landroid/content/Intent;)V

    goto :goto_11

    .line 503
    :cond_6b
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_79

    .line 504
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy$1;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-static {v2, p2}, Lcom/android/server/status/StatusBarPolicy;->access$500(Lcom/android/server/status/StatusBarPolicy;Landroid/content/Intent;)V

    goto :goto_11

    .line 511
    :cond_79
    const-string v2, "android.bluetooth.intent.action.BLUETOOTH_STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_99

    const-string v2, "android.bluetooth.intent.action.HEADSET_STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_99

    const-string v2, "android.bluetooth.a2dp.intent.action.SINK_STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_99

    const-string v2, "broadcom.android.bluetooth.intent.action.BT_SERVICE_CONNECTION"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a0

    .line 516
    :cond_99
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy$1;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-static {v2, p2}, Lcom/android/server/status/StatusBarPolicy;->access$600(Lcom/android/server/status/StatusBarPolicy;Landroid/content/Intent;)V

    goto/16 :goto_11

    .line 518
    :cond_a0
    const-string v2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b8

    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b8

    const-string v2, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_bf

    .line 521
    :cond_b8
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy$1;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-static {v2, p2}, Lcom/android/server/status/StatusBarPolicy;->access$700(Lcom/android/server/status/StatusBarPolicy;Landroid/content/Intent;)V

    goto/16 :goto_11

    .line 523
    :cond_bf
    const-string v2, "android.location.GPS_ENABLED_CHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_cf

    const-string v2, "android.location.GPS_FIX_CHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d6

    .line 525
    :cond_cf
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy$1;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-static {v2, p2}, Lcom/android/server/status/StatusBarPolicy;->access$800(Lcom/android/server/status/StatusBarPolicy;Landroid/content/Intent;)V

    goto/16 :goto_11

    .line 527
    :cond_d6
    const-string v2, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e6

    const-string v2, "android.media.VIBRATE_SETTING_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ed

    .line 529
    :cond_e6
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy$1;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-static {v2}, Lcom/android/server/status/StatusBarPolicy;->access$900(Lcom/android/server/status/StatusBarPolicy;)V

    goto/16 :goto_11

    .line 531
    :cond_ed
    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_fc

    .line 532
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy$1;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-static {v2, p2}, Lcom/android/server/status/StatusBarPolicy;->access$1000(Lcom/android/server/status/StatusBarPolicy;Landroid/content/Intent;)V

    goto/16 :goto_11

    .line 536
    :cond_fc
    const-string v2, "android.intent.action.THEME_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_118

    .line 537
    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy$1;->this$0:Lcom/android/server/status/StatusBarPolicy;

    const-string v2, "theme"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/android/server/status/StatusBarPolicy;->access$1102(Lcom/android/server/status/StatusBarPolicy;Ljava/lang/String;)Ljava/lang/String;

    .line 538
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy$1;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-static {v2}, Lcom/android/server/status/StatusBarPolicy;->access$1200(Lcom/android/server/status/StatusBarPolicy;)V

    goto/16 :goto_11

    .line 541
    :cond_118
    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_127

    .line 542
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy$1;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-static {v2, p2}, Lcom/android/server/status/StatusBarPolicy;->access$1300(Lcom/android/server/status/StatusBarPolicy;Landroid/content/Intent;)V

    goto/16 :goto_11

    .line 546
    :cond_127
    const-string v2, "com.android.internal.telephony.cdma.intent.action.TTY_ENABLED_CHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 547
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy$1;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-static {v2, p2}, Lcom/android/server/status/StatusBarPolicy;->access$1400(Lcom/android/server/status/StatusBarPolicy;Landroid/content/Intent;)V

    goto/16 :goto_11
.end method
