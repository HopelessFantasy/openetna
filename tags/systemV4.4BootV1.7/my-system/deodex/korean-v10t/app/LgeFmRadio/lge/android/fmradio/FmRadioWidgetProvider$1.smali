.class Llge/android/fmradio/FmRadioWidgetProvider$1;
.super Landroid/content/BroadcastReceiver;
.source "FmRadioWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llge/android/fmradio/FmRadioWidgetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llge/android/fmradio/FmRadioWidgetProvider;


# direct methods
.method constructor <init>(Llge/android/fmradio/FmRadioWidgetProvider;)V
    .registers 2
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Llge/android/fmradio/FmRadioWidgetProvider$1;->this$0:Llge/android/fmradio/FmRadioWidgetProvider;

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

    .line 58
    const-string v0, "FM RADIO"

    const-string v0, "[FmRadioWidgetProvider] onReceive"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lge.android.fmradio.intent.answerwarningwithoutheadset"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 61
    const-string v0, "FM RADIO"

    const-string v0, "[FmRadioWidgetProvider][onReceive] INTENT_DLG_ANSWER_WARNING_WITHOUT_HEADSET "

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_1c
    return-void
.end method
