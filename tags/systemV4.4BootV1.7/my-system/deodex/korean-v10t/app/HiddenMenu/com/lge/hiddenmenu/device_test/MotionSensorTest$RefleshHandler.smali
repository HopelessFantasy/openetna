.class Lcom/lge/hiddenmenu/device_test/MotionSensorTest$RefleshHandler;
.super Landroid/os/Handler;
.source "MotionSensorTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/hiddenmenu/device_test/MotionSensorTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RefleshHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/hiddenmenu/device_test/MotionSensorTest;


# direct methods
.method constructor <init>(Lcom/lge/hiddenmenu/device_test/MotionSensorTest;)V
    .registers 2
    .parameter

    .prologue
    .line 436
    iput-object p1, p0, Lcom/lge/hiddenmenu/device_test/MotionSensorTest$RefleshHandler;->this$0:Lcom/lge/hiddenmenu/device_test/MotionSensorTest;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 439
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_9

    .line 440
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/MotionSensorTest$RefleshHandler;->this$0:Lcom/lge/hiddenmenu/device_test/MotionSensorTest;

    invoke-static {v0}, Lcom/lge/hiddenmenu/device_test/MotionSensorTest;->access$000(Lcom/lge/hiddenmenu/device_test/MotionSensorTest;)V

    .line 442
    :cond_9
    return-void
.end method

.method public sleep(J)V
    .registers 4
    .parameter "delayMillis"

    .prologue
    const/4 v0, 0x0

    .line 445
    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/device_test/MotionSensorTest$RefleshHandler;->removeMessages(I)V

    .line 446
    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/device_test/MotionSensorTest$RefleshHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/lge/hiddenmenu/device_test/MotionSensorTest$RefleshHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 447
    return-void
.end method
