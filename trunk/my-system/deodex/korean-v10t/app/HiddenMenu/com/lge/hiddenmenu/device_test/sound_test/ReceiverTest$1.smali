.class Lcom/lge/hiddenmenu/device_test/sound_test/ReceiverTest$1;
.super Ljava/lang/Object;
.source "ReceiverTest.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/hiddenmenu/device_test/sound_test/ReceiverTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/hiddenmenu/device_test/sound_test/ReceiverTest;


# direct methods
.method constructor <init>(Lcom/lge/hiddenmenu/device_test/sound_test/ReceiverTest;)V
    .registers 2
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/lge/hiddenmenu/device_test/sound_test/ReceiverTest$1;->this$0:Lcom/lge/hiddenmenu/device_test/sound_test/ReceiverTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 4
    .parameter "bar"
    .parameter "progress"
    .parameter "fromtouch"

    .prologue
    .line 70
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2
    .parameter "bar"

    .prologue
    .line 67
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2
    .parameter "bar"

    .prologue
    .line 73
    return-void
.end method
