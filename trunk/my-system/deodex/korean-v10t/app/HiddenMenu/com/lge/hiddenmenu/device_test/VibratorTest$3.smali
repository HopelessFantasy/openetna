.class Lcom/lge/hiddenmenu/device_test/VibratorTest$3;
.super Ljava/lang/Object;
.source "VibratorTest.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/hiddenmenu/device_test/VibratorTest;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/hiddenmenu/device_test/VibratorTest;


# direct methods
.method constructor <init>(Lcom/lge/hiddenmenu/device_test/VibratorTest;)V
    .registers 2
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/lge/hiddenmenu/device_test/VibratorTest$3;->this$0:Lcom/lge/hiddenmenu/device_test/VibratorTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/VibratorTest$3;->this$0:Lcom/lge/hiddenmenu/device_test/VibratorTest;

    iget-object v0, v0, Lcom/lge/hiddenmenu/device_test/VibratorTest;->mVibratorThread:Lcom/lge/hiddenmenu/device_test/VibratorTest$VibratorThread;

    if-eqz v0, :cond_17

    .line 97
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/VibratorTest$3;->this$0:Lcom/lge/hiddenmenu/device_test/VibratorTest;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/lge/hiddenmenu/device_test/VibratorTest;->mContinueVibrating:Z

    .line 98
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/VibratorTest$3;->this$0:Lcom/lge/hiddenmenu/device_test/VibratorTest;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/lge/hiddenmenu/device_test/VibratorTest;->mVibratorThread:Lcom/lge/hiddenmenu/device_test/VibratorTest$VibratorThread;

    .line 99
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/VibratorTest$3;->this$0:Lcom/lge/hiddenmenu/device_test/VibratorTest;

    iget-object v0, v0, Lcom/lge/hiddenmenu/device_test/VibratorTest;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 101
    :cond_17
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/VibratorTest$3;->this$0:Lcom/lge/hiddenmenu/device_test/VibratorTest;

    iget-object v0, v0, Lcom/lge/hiddenmenu/device_test/VibratorTest;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 102
    return-void
.end method
