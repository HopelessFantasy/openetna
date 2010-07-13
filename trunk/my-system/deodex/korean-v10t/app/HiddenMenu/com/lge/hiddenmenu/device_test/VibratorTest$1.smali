.class Lcom/lge/hiddenmenu/device_test/VibratorTest$1;
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
    .line 69
    iput-object p1, p0, Lcom/lge/hiddenmenu/device_test/VibratorTest$1;->this$0:Lcom/lge/hiddenmenu/device_test/VibratorTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/VibratorTest$1;->this$0:Lcom/lge/hiddenmenu/device_test/VibratorTest;

    iget-object v0, v0, Lcom/lge/hiddenmenu/device_test/VibratorTest;->mVibratorThread:Lcom/lge/hiddenmenu/device_test/VibratorTest$VibratorThread;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/VibratorTest$1;->this$0:Lcom/lge/hiddenmenu/device_test/VibratorTest;

    iget-boolean v0, v0, Lcom/lge/hiddenmenu/device_test/VibratorTest;->mContinueVibrating:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1e

    .line 71
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/VibratorTest$1;->this$0:Lcom/lge/hiddenmenu/device_test/VibratorTest;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/lge/hiddenmenu/device_test/VibratorTest;->mContinueVibrating:Z

    .line 72
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/VibratorTest$1;->this$0:Lcom/lge/hiddenmenu/device_test/VibratorTest;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/lge/hiddenmenu/device_test/VibratorTest;->mVibratorThread:Lcom/lge/hiddenmenu/device_test/VibratorTest$VibratorThread;

    .line 73
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/VibratorTest$1;->this$0:Lcom/lge/hiddenmenu/device_test/VibratorTest;

    iget-object v0, v0, Lcom/lge/hiddenmenu/device_test/VibratorTest;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 75
    :cond_1e
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/VibratorTest$1;->this$0:Lcom/lge/hiddenmenu/device_test/VibratorTest;

    invoke-virtual {v0}, Lcom/lge/hiddenmenu/device_test/VibratorTest;->finish()V

    .line 76
    return-void
.end method
