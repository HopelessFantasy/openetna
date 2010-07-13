.class Llge/android/fmradio/FmRadioControlService$4;
.super Landroid/content/BroadcastReceiver;
.source "FmRadioControlService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llge/android/fmradio/FmRadioControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llge/android/fmradio/FmRadioControlService;


# direct methods
.method constructor <init>(Llge/android/fmradio/FmRadioControlService;)V
    .registers 2
    .parameter

    .prologue
    .line 582
    iput-object p1, p0, Llge/android/fmradio/FmRadioControlService$4;->this$0:Llge/android/fmradio/FmRadioControlService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v7, 0x3e9

    const/4 v6, 0x0

    const-string v8, "lge.android.fmradio.outputsound"

    const-string v4, "appWidgetIds"

    const-string v5, "FM RADIO"

    .line 583
    const-string v3, "FM RADIO"

    const-string v3, "[FmRadioControlService] onReceive"

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 586
    .local v0, action:Ljava/lang/String;
    const-string v3, "command"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 587
    .local v2, cmd:Ljava/lang/String;
    const-string v3, "next"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    const-string v3, "com.android.music.musicservicecommand.next"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 658
    :cond_2a
    :goto_2a
    return-void

    .line 589
    :cond_2b
    const-string v3, "previous"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    const-string v3, "com.android.music.musicservicecommand.previous"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    .line 591
    const-string v3, "togglepause"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    const-string v3, "com.android.music.musicservicecommand.togglepause"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    .line 593
    const-string v3, "pause"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5b

    const-string v3, "com.android.music.musicservicecommand.pause"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_61

    .line 594
    :cond_5b
    iget-object v3, p0, Llge/android/fmradio/FmRadioControlService$4;->this$0:Llge/android/fmradio/FmRadioControlService;

    invoke-virtual {v3}, Llge/android/fmradio/FmRadioControlService;->Stop()V

    goto :goto_2a

    .line 595
    :cond_61
    const-string v3, "stop"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    .line 597
    const-string v3, "appwidgetupdate"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_83

    .line 600
    const-string v3, "appWidgetIds"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v1

    .line 601
    .local v1, appWidgetIds:[I
    iget-object v3, p0, Llge/android/fmradio/FmRadioControlService$4;->this$0:Llge/android/fmradio/FmRadioControlService;

    invoke-static {v3}, Llge/android/fmradio/FmRadioControlService;->access$1200(Llge/android/fmradio/FmRadioControlService;)Llge/android/fmradio/FmRadioWidgetProvider;

    move-result-object v3

    iget-object v4, p0, Llge/android/fmradio/FmRadioControlService$4;->this$0:Llge/android/fmradio/FmRadioControlService;

    invoke-virtual {v3, v4, v1}, Llge/android/fmradio/FmRadioWidgetProvider;->performUpdate(Llge/android/fmradio/FmRadioControlService;[I)V

    goto :goto_2a

    .line 603
    .end local v1           #appWidgetIds:[I
    :cond_83
    const-string v3, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e2

    .line 604
    const-string v3, "FM RADIO"

    const-string v3, "[FmRadioControlService][onReceive] Intent.ACTION_HEADSET_PLUG"

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    const-string v3, "state"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_d0

    .line 609
    iget-object v3, p0, Llge/android/fmradio/FmRadioControlService$4;->this$0:Llge/android/fmradio/FmRadioControlService;

    const-string v4, "lge.android.fmradio.withoutheadset"

    invoke-static {v3, v4}, Llge/android/fmradio/FmRadioControlService;->access$1300(Llge/android/fmradio/FmRadioControlService;Ljava/lang/String;)V

    .line 612
    const-string v3, "FM RADIO"

    const-string v3, "[FmRadioView][BroadcastReceiver] Intent.ACTION_HEADSET_PLUG : unplug"

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    iget-object v3, p0, Llge/android/fmradio/FmRadioControlService$4;->this$0:Llge/android/fmradio/FmRadioControlService;

    const/16 v4, 0x64

    const-string v5, "lge.android.fmradio.outputsound"

    invoke-static {v3, v4, v8}, Llge/android/fmradio/FmRadioControlService;->access$1400(Llge/android/fmradio/FmRadioControlService;ILjava/lang/String;)V

    .line 615
    iget-object v3, p0, Llge/android/fmradio/FmRadioControlService$4;->this$0:Llge/android/fmradio/FmRadioControlService;

    invoke-static {v3}, Llge/android/fmradio/FmRadioControlService;->access$1500(Llge/android/fmradio/FmRadioControlService;)Llge/android/fmradio/IFmRadioControlService$Stub;

    move-result-object v3

    if-eqz v3, :cond_2a

    iget-object v3, p0, Llge/android/fmradio/FmRadioControlService$4;->this$0:Llge/android/fmradio/FmRadioControlService;

    invoke-virtual {v3}, Llge/android/fmradio/FmRadioControlService;->GetSystemState()I

    move-result v3

    if-ne v3, v7, :cond_2a

    iget-object v3, p0, Llge/android/fmradio/FmRadioControlService$4;->this$0:Llge/android/fmradio/FmRadioControlService;

    invoke-static {v3}, Llge/android/fmradio/FmRadioControlService;->access$1600(Llge/android/fmradio/FmRadioControlService;)Z

    move-result v3

    if-nez v3, :cond_2a

    .line 617
    iget-object v3, p0, Llge/android/fmradio/FmRadioControlService$4;->this$0:Llge/android/fmradio/FmRadioControlService;

    invoke-virtual {v3}, Llge/android/fmradio/FmRadioControlService;->Stop()V

    goto/16 :goto_2a

    .line 621
    :cond_d0
    const-string v3, "FM RADIO"

    const-string v3, "[FmRadioView][BroadcastReceiver] Intent.ACTION_HEADSET_PLUG : plug"

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    iget-object v3, p0, Llge/android/fmradio/FmRadioControlService$4;->this$0:Llge/android/fmradio/FmRadioControlService;

    const/16 v4, 0xc8

    const-string v5, "lge.android.fmradio.outputsound"

    invoke-static {v3, v4, v8}, Llge/android/fmradio/FmRadioControlService;->access$1400(Llge/android/fmradio/FmRadioControlService;ILjava/lang/String;)V

    goto/16 :goto_2a

    .line 624
    :cond_e2
    const-string v3, "android.bluetooth.intent.action.REMOTE_DEVICE_CONNECTED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_108

    .line 625
    const-string v3, "FM RADIO"

    const-string v3, "[FmRadioControlService][onReceive] Intent.FMRADIO_ACTION_BLUETOOTH_ENABLE"

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    iget-object v3, p0, Llge/android/fmradio/FmRadioControlService$4;->this$0:Llge/android/fmradio/FmRadioControlService;

    invoke-static {v3}, Llge/android/fmradio/FmRadioControlService;->access$1500(Llge/android/fmradio/FmRadioControlService;)Llge/android/fmradio/IFmRadioControlService$Stub;

    move-result-object v3

    if-eqz v3, :cond_2a

    iget-object v3, p0, Llge/android/fmradio/FmRadioControlService$4;->this$0:Llge/android/fmradio/FmRadioControlService;

    invoke-virtual {v3}, Llge/android/fmradio/FmRadioControlService;->GetSystemState()I

    move-result v3

    if-ne v3, v7, :cond_2a

    .line 631
    iget-object v3, p0, Llge/android/fmradio/FmRadioControlService$4;->this$0:Llge/android/fmradio/FmRadioControlService;

    invoke-virtual {v3}, Llge/android/fmradio/FmRadioControlService;->Stop()V

    goto/16 :goto_2a

    .line 633
    :cond_108
    const-string v3, "android.bluetooth.intent.action.REMOTE_DEVICE_DISCONNECTED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_119

    .line 634
    const-string v3, "FM RADIO"

    const-string v3, "[FmRadioControlService][onReceive] Intent.FMRADIO_ACTION_BLUETOOTH_DISABLE"

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2a

    .line 635
    :cond_119
    const-string v3, "lge.android.fmradio.power"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_134

    .line 636
    const-string v3, "appWidgetIds"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v1

    .line 637
    .restart local v1       #appWidgetIds:[I
    iget-object v3, p0, Llge/android/fmradio/FmRadioControlService$4;->this$0:Llge/android/fmradio/FmRadioControlService;

    invoke-static {v3}, Llge/android/fmradio/FmRadioControlService;->access$1200(Llge/android/fmradio/FmRadioControlService;)Llge/android/fmradio/FmRadioWidgetProvider;

    move-result-object v3

    iget-object v4, p0, Llge/android/fmradio/FmRadioControlService$4;->this$0:Llge/android/fmradio/FmRadioControlService;

    invoke-virtual {v3, v4, v1}, Llge/android/fmradio/FmRadioWidgetProvider;->performUpdate(Llge/android/fmradio/FmRadioControlService;[I)V

    goto/16 :goto_2a

    .line 639
    .end local v1           #appWidgetIds:[I
    :cond_134
    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16a

    .line 641
    const-string v3, "FM RADIO"

    const-string v3, "[FmRadioControlService][onReceive] Intent.ACTION_AIRPLANE_MODE_CHANGED"

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    const-string v3, "state"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2a

    .line 644
    const-string v3, "FM RADIO"

    const-string v3, "[FmRadioView][BroadcastReceiver] Intent.ACTION_AIRPLANE_MODE_CHANGED : true"

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    iget-object v3, p0, Llge/android/fmradio/FmRadioControlService$4;->this$0:Llge/android/fmradio/FmRadioControlService;

    invoke-static {v3}, Llge/android/fmradio/FmRadioControlService;->access$1500(Llge/android/fmradio/FmRadioControlService;)Llge/android/fmradio/IFmRadioControlService$Stub;

    move-result-object v3

    if-eqz v3, :cond_2a

    iget-object v3, p0, Llge/android/fmradio/FmRadioControlService$4;->this$0:Llge/android/fmradio/FmRadioControlService;

    invoke-virtual {v3}, Llge/android/fmradio/FmRadioControlService;->GetSystemState()I

    move-result v3

    if-ne v3, v7, :cond_2a

    .line 650
    iget-object v3, p0, Llge/android/fmradio/FmRadioControlService$4;->this$0:Llge/android/fmradio/FmRadioControlService;

    invoke-virtual {v3}, Llge/android/fmradio/FmRadioControlService;->Stop()V

    goto/16 :goto_2a

    .line 654
    :cond_16a
    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 655
    iget-object v3, p0, Llge/android/fmradio/FmRadioControlService$4;->this$0:Llge/android/fmradio/FmRadioControlService;

    const-string v4, "plugged"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v3, v4}, Llge/android/fmradio/FmRadioControlService;->access$1702(Llge/android/fmradio/FmRadioControlService;I)I

    goto/16 :goto_2a
.end method
