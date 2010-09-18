.class public Llge/android/fmradio/FmRadioView$UpdateHandler;
.super Landroid/os/Handler;
.source "FmRadioView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llge/android/fmradio/FmRadioView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "UpdateHandler"
.end annotation


# instance fields
.field cView:Landroid/content/Context;

.field final synthetic this$0:Llge/android/fmradio/FmRadioView;


# direct methods
.method constructor <init>(Llge/android/fmradio/FmRadioView;Landroid/content/Context;)V
    .registers 4
    .parameter
    .parameter "c"

    .prologue
    .line 3057
    iput-object p1, p0, Llge/android/fmradio/FmRadioView$UpdateHandler;->this$0:Llge/android/fmradio/FmRadioView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 3055
    const/4 v0, 0x0

    iput-object v0, p0, Llge/android/fmradio/FmRadioView$UpdateHandler;->cView:Landroid/content/Context;

    .line 3058
    iput-object p2, p0, Llge/android/fmradio/FmRadioView$UpdateHandler;->cView:Landroid/content/Context;

    .line 3059
    return-void
.end method

.method private updateAutoScanFrequency(I)V
    .registers 5
    .parameter "freq"

    .prologue
    .line 3088
    const-string v0, "FM RADIO"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[UpdateHandler] updateAutoScanFrequency"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3089
    iget-object v0, p0, Llge/android/fmradio/FmRadioView$UpdateHandler;->this$0:Llge/android/fmradio/FmRadioView;

    invoke-static {v0, p1}, Llge/android/fmradio/FmRadioView;->access$5102(Llge/android/fmradio/FmRadioView;I)I

    .line 3090
    iget-object v0, p0, Llge/android/fmradio/FmRadioView$UpdateHandler;->this$0:Llge/android/fmradio/FmRadioView;

    invoke-static {v0, p1}, Llge/android/fmradio/FmRadioView;->access$5000(Llge/android/fmradio/FmRadioView;I)V

    .line 3092
    iget-object v0, p0, Llge/android/fmradio/FmRadioView$UpdateHandler;->this$0:Llge/android/fmradio/FmRadioView;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Llge/android/fmradio/FmRadioView;->showDialog(I)V

    .line 3093
    return-void
.end method

.method private updateCompleteAutoScan()V
    .registers 4

    .prologue
    .line 3096
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Llge/android/fmradio/FmRadioView$UpdateHandler;->this$0:Llge/android/fmradio/FmRadioView;

    invoke-virtual {v1}, Llge/android/fmradio/FmRadioView;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Llge/android/fmradio/DialogAutoScanComplete;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3097
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_15

    .line 3100
    iget-object v1, p0, Llge/android/fmradio/FmRadioView$UpdateHandler;->this$0:Llge/android/fmradio/FmRadioView;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Llge/android/fmradio/FmRadioView;->startActivityForResult(Landroid/content/Intent;I)V

    .line 3102
    :cond_15
    const-string v1, "FM RADIO"

    const-string v2, "[UpdateHandler] updateCompleteAutoScan"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3103
    return-void
.end method

.method private updateFrequency(I)V
    .registers 5
    .parameter "freq"

    .prologue
    .line 3083
    const-string v0, "FM RADIO"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[UpdateHandler] updateFrequency"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3084
    iget-object v0, p0, Llge/android/fmradio/FmRadioView$UpdateHandler;->this$0:Llge/android/fmradio/FmRadioView;

    invoke-static {v0, p1}, Llge/android/fmradio/FmRadioView;->access$5000(Llge/android/fmradio/FmRadioView;I)V

    .line 3085
    return-void
.end method

.method private updateInitDisplay(I)V
    .registers 4
    .parameter "arg"

    .prologue
    .line 3062
    const-string v0, "FM RADIO"

    const-string v1, "[UpdateHandler] updateInitDisplay"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3063
    iget-object v0, p0, Llge/android/fmradio/FmRadioView$UpdateHandler;->this$0:Llge/android/fmradio/FmRadioView;

    invoke-static {v0}, Llge/android/fmradio/FmRadioView;->access$4900(Llge/android/fmradio/FmRadioView;)V

    .line 3064
    return-void
.end method

.method private updateSignalStrength(I)V
    .registers 4
    .parameter "rssi"

    .prologue
    .line 3074
    const-string v0, "FM RADIO"

    const-string v1, "[UpdateHandler] updateSignalStrength"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3075
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 3112
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_22

    .line 3124
    :goto_5
    :sswitch_5
    return-void

    .line 3113
    :sswitch_6
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Llge/android/fmradio/FmRadioView$UpdateHandler;->updateInitDisplay(I)V

    goto :goto_5

    .line 3114
    :sswitch_c
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Llge/android/fmradio/FmRadioView$UpdateHandler;->updateSignalStrength(I)V

    goto :goto_5

    .line 3116
    :sswitch_12
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Llge/android/fmradio/FmRadioView$UpdateHandler;->updateFrequency(I)V

    goto :goto_5

    .line 3117
    :sswitch_18
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Llge/android/fmradio/FmRadioView$UpdateHandler;->updateAutoScanFrequency(I)V

    goto :goto_5

    .line 3119
    :sswitch_1e
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView$UpdateHandler;->updateCompleteAutoScan()V

    goto :goto_5

    .line 3112
    :sswitch_data_22
    .sparse-switch
        0x1 -> :sswitch_6
        0x2 -> :sswitch_c
        0x5 -> :sswitch_12
        0xe -> :sswitch_1e
        0xf -> :sswitch_18
        0x14 -> :sswitch_5
    .end sparse-switch
.end method
