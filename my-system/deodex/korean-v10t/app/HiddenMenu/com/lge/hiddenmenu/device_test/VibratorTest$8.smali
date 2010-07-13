.class Lcom/lge/hiddenmenu/device_test/VibratorTest$8;
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
    .line 151
    iput-object p1, p0, Lcom/lge/hiddenmenu/device_test/VibratorTest$8;->this$0:Lcom/lge/hiddenmenu/device_test/VibratorTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/VibratorTest$8;->this$0:Lcom/lge/hiddenmenu/device_test/VibratorTest;

    const/16 v1, 0x3a98

    iput v1, v0, Lcom/lge/hiddenmenu/device_test/VibratorTest;->mVibDuration:I

    .line 153
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/VibratorTest$8;->this$0:Lcom/lge/hiddenmenu/device_test/VibratorTest;

    iget-object v0, v0, Lcom/lge/hiddenmenu/device_test/VibratorTest;->mVibrator:Landroid/os/Vibrator;

    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/VibratorTest$8;->this$0:Lcom/lge/hiddenmenu/device_test/VibratorTest;

    iget v1, v1, Lcom/lge/hiddenmenu/device_test/VibratorTest;->mVibDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 154
    return-void
.end method
