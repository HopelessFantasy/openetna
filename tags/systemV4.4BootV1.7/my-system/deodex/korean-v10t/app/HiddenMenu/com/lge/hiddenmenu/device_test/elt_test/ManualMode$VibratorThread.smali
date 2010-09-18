.class Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$VibratorThread;
.super Ljava/lang/Thread;
.source "ManualMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VibratorThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;


# direct methods
.method private constructor <init>(Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;)V
    .registers 2
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$VibratorThread;->this$0:Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$VibratorThread;-><init>(Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 70
    :goto_0
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$VibratorThread;->this$0:Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;

    iget-boolean v0, v0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;->mContinueVibrating:Z

    if-eqz v0, :cond_1c

    .line 71
    const-string v0, "ELT Test : Manual"

    const-string v1, "vibrator start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$VibratorThread;->this$0:Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;

    iget-object v0, v0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 73
    const-wide/16 v0, 0xbb8

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    .line 75
    :cond_1c
    return-void
.end method
