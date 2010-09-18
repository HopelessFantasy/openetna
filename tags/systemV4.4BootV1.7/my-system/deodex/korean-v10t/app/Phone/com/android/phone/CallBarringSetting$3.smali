.class Lcom/android/phone/CallBarringSetting$3;
.super Landroid/os/Handler;
.source "CallBarringSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallBarringSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 235
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 237
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_14

    .line 247
    .end local p0
    :goto_5
    return-void

    .line 239
    .restart local p0
    :pswitch_6
    invoke-static {}, Lcom/android/phone/CallBarringSetting;->access$000()Lcom/android/phone/CallBarringSetting;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/os/AsyncResult;

    invoke-static {v0, v1, p0}, Lcom/android/phone/CallBarringSetting;->access$1000(Lcom/android/phone/CallBarringSetting;ILandroid/os/AsyncResult;)V

    goto :goto_5

    .line 237
    :pswitch_data_14
    .packed-switch 0x4b0
        :pswitch_6
    .end packed-switch
.end method
