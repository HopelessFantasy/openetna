.class Lcom/lge/hiddenmenu/device_test/VibratorTest$2;
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
    .line 82
    iput-object p1, p0, Lcom/lge/hiddenmenu/device_test/VibratorTest$2;->this$0:Lcom/lge/hiddenmenu/device_test/VibratorTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/VibratorTest$2;->this$0:Lcom/lge/hiddenmenu/device_test/VibratorTest;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/lge/hiddenmenu/device_test/VibratorTest;->mContinueVibrating:Z

    .line 84
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/VibratorTest$2;->this$0:Lcom/lge/hiddenmenu/device_test/VibratorTest;

    iget-object v0, v0, Lcom/lge/hiddenmenu/device_test/VibratorTest;->mVibratorThread:Lcom/lge/hiddenmenu/device_test/VibratorTest$VibratorThread;

    if-nez v0, :cond_1e

    .line 85
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/VibratorTest$2;->this$0:Lcom/lge/hiddenmenu/device_test/VibratorTest;

    new-instance v1, Lcom/lge/hiddenmenu/device_test/VibratorTest$VibratorThread;

    iget-object v2, p0, Lcom/lge/hiddenmenu/device_test/VibratorTest$2;->this$0:Lcom/lge/hiddenmenu/device_test/VibratorTest;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/lge/hiddenmenu/device_test/VibratorTest$VibratorThread;-><init>(Lcom/lge/hiddenmenu/device_test/VibratorTest;Lcom/lge/hiddenmenu/device_test/VibratorTest$1;)V

    iput-object v1, v0, Lcom/lge/hiddenmenu/device_test/VibratorTest;->mVibratorThread:Lcom/lge/hiddenmenu/device_test/VibratorTest$VibratorThread;

    .line 86
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/VibratorTest$2;->this$0:Lcom/lge/hiddenmenu/device_test/VibratorTest;

    iget-object v0, v0, Lcom/lge/hiddenmenu/device_test/VibratorTest;->mVibratorThread:Lcom/lge/hiddenmenu/device_test/VibratorTest$VibratorThread;

    invoke-virtual {v0}, Lcom/lge/hiddenmenu/device_test/VibratorTest$VibratorThread;->start()V

    .line 88
    :cond_1e
    return-void
.end method
