.class Lcom/lge/hiddenmenu/fmradiotest/fmradiotest$1;
.super Landroid/content/BroadcastReceiver;
.source "fmradiotest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/hiddenmenu/fmradiotest/fmradiotest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/hiddenmenu/fmradiotest/fmradiotest;


# direct methods
.method constructor <init>(Lcom/lge/hiddenmenu/fmradiotest/fmradiotest;)V
    .registers 2
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/lge/hiddenmenu/fmradiotest/fmradiotest$1;->this$0:Lcom/lge/hiddenmenu/fmradiotest/fmradiotest;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const-string v2, "FM RADIO"

    .line 43
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, action:Ljava/lang/String;
    const-string v1, "lge.android.fmradio.updatefreq"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 47
    const-string v1, "FM RADIO"

    const-string v1, "[FmRadioView][BroadcastReceiver] NOTIFY_UI_MSG_UPDATE_FREQ"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget-object v1, p0, Lcom/lge/hiddenmenu/fmradiotest/fmradiotest$1;->this$0:Lcom/lge/hiddenmenu/fmradiotest/fmradiotest;

    invoke-static {v1}, Lcom/lge/hiddenmenu/fmradiotest/fmradiotest;->access$000(Lcom/lge/hiddenmenu/fmradiotest/fmradiotest;)V

    .line 69
    :cond_1a
    :goto_1a
    return-void

    .line 50
    :cond_1b
    const-string v1, "lge.android.fmradio.updaterssi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 52
    const-string v1, "FM RADIO"

    const-string v1, "[FmRadioView][BroadcastReceiver] NOTIFY_UI_MSG_UPDATE_RSSI"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iget-object v1, p0, Lcom/lge/hiddenmenu/fmradiotest/fmradiotest$1;->this$0:Lcom/lge/hiddenmenu/fmradiotest/fmradiotest;

    invoke-static {v1}, Lcom/lge/hiddenmenu/fmradiotest/fmradiotest;->access$100(Lcom/lge/hiddenmenu/fmradiotest/fmradiotest;)V

    goto :goto_1a

    .line 56
    :cond_30
    const-string v1, "lge.android.fmradio.poweron"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 58
    const-string v1, "FM RADIO"

    const-string v1, "[FmRadioView][BroadcastReceiver] NOTIFY_UI_MSG_POWER_ON"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a

    .line 62
    :cond_40
    const-string v1, "lge.android.fmradio.poweroff"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 64
    const-string v1, "FM RADIO"

    const-string v1, "[FmRadioView][BroadcastReceiver] NOTIFY_UI_MSG_POWER_OFF"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a
.end method
