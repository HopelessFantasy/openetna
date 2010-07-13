.class Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$1;
.super Landroid/os/Handler;
.source "GridTouchColorChange.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange;


# direct methods
.method constructor <init>(Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange;)V
    .registers 2
    .parameter

    .prologue
    .line 192
    iput-object p1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$1;->this$0:Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    .line 193
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_28

    .line 204
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 206
    :goto_8
    return-void

    .line 198
    :pswitch_9
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$1;->this$0:Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange;

    iget-object v0, v0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange;->mView:Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;

    invoke-virtual {v0}, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->fade()V

    .line 199
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$1;->this$0:Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange;

    invoke-static {v0}, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange;->access$100(Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$1;->this$0:Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange;

    invoke-static {v1}, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange;->access$100(Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_8

    .line 193
    nop

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_9
    .end packed-switch
.end method
