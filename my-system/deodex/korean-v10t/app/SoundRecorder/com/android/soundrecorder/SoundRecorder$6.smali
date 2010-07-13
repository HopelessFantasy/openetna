.class Lcom/android/soundrecorder/SoundRecorder$6;
.super Landroid/content/BroadcastReceiver;
.source "SoundRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/soundrecorder/SoundRecorder;->registerLCDOnOffListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/soundrecorder/SoundRecorder;


# direct methods
.method constructor <init>(Lcom/android/soundrecorder/SoundRecorder;)V
    .registers 2
    .parameter

    .prologue
    .line 1131
    iput-object p1, p0, Lcom/android/soundrecorder/SoundRecorder$6;->this$0:Lcom/android/soundrecorder/SoundRecorder;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const-string v2, "SoundRecorder"

    .line 1132
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1133
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1134
    const-string v1, "SoundRecorder"

    const-string v1, "registerLCDOnOffListener ACTION_SCREEN_ON"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    :cond_15
    :goto_15
    return-void

    .line 1135
    :cond_16
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1136
    const-string v1, "SoundRecorder"

    const-string v1, "registerLCDOnOffListener ACTION_SCREEN_OFF"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder$6;->this$0:Lcom/android/soundrecorder/SoundRecorder;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/soundrecorder/SoundRecorder;->bLCDevent:Z

    goto :goto_15
.end method
