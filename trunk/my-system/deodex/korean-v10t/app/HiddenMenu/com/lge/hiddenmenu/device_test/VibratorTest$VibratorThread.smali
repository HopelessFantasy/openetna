.class Lcom/lge/hiddenmenu/device_test/VibratorTest$VibratorThread;
.super Ljava/lang/Thread;
.source "VibratorTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/hiddenmenu/device_test/VibratorTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VibratorThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/hiddenmenu/device_test/VibratorTest;


# direct methods
.method private constructor <init>(Lcom/lge/hiddenmenu/device_test/VibratorTest;)V
    .registers 2
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/lge/hiddenmenu/device_test/VibratorTest$VibratorThread;->this$0:Lcom/lge/hiddenmenu/device_test/VibratorTest;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/hiddenmenu/device_test/VibratorTest;Lcom/lge/hiddenmenu/device_test/VibratorTest$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/lge/hiddenmenu/device_test/VibratorTest$VibratorThread;-><init>(Lcom/lge/hiddenmenu/device_test/VibratorTest;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const-wide/16 v1, 0x1388

    .line 45
    :goto_2
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/VibratorTest$VibratorThread;->this$0:Lcom/lge/hiddenmenu/device_test/VibratorTest;

    iget-boolean v0, v0, Lcom/lge/hiddenmenu/device_test/VibratorTest;->mContinueVibrating:Z

    if-eqz v0, :cond_13

    .line 46
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/VibratorTest$VibratorThread;->this$0:Lcom/lge/hiddenmenu/device_test/VibratorTest;

    iget-object v0, v0, Lcom/lge/hiddenmenu/device_test/VibratorTest;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 47
    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_2

    .line 51
    :cond_13
    return-void
.end method
