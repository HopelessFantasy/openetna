.class Lcom/android/phone/CallBarringSetting$2;
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
    .line 204
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 205
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_40

    .line 229
    .end local p0
    :cond_5
    :goto_5
    return-void

    .line 207
    .restart local p0
    :sswitch_6
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/os/AsyncResult;

    iget-object v0, p0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Landroid/telephony/ServiceState;

    .line 209
    .local v0, state:Landroid/telephony/ServiceState;
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-nez v1, :cond_5

    .line 211
    invoke-static {}, Lcom/android/phone/CallBarringSetting;->access$000()Lcom/android/phone/CallBarringSetting;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/CallBarringSetting;->access$500(Lcom/android/phone/CallBarringSetting;)I

    move-result v1

    packed-switch v1, :pswitch_data_4a

    .line 218
    :goto_1f
    invoke-static {}, Lcom/android/phone/CallBarringSetting;->access$000()Lcom/android/phone/CallBarringSetting;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/CallBarringSetting;->access$800(Lcom/android/phone/CallBarringSetting;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-static {}, Lcom/android/phone/CallBarringSetting;->access$700()Landroid/os/Handler;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    goto :goto_5

    .line 213
    :pswitch_2f
    invoke-static {}, Lcom/android/phone/CallBarringSetting;->access$000()Lcom/android/phone/CallBarringSetting;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/CallBarringSetting;->access$600(Lcom/android/phone/CallBarringSetting;)V

    goto :goto_1f

    .line 225
    .end local v0           #state:Landroid/telephony/ServiceState;
    .restart local p0
    :sswitch_37
    invoke-static {}, Lcom/android/phone/CallBarringSetting;->access$000()Lcom/android/phone/CallBarringSetting;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/CallBarringSetting;->access$900(Lcom/android/phone/CallBarringSetting;)V

    goto :goto_5

    .line 205
    nop

    :sswitch_data_40
    .sparse-switch
        0x44c -> :sswitch_6
        0x578 -> :sswitch_37
    .end sparse-switch

    .line 211
    :pswitch_data_4a
    .packed-switch -0x1
        :pswitch_2f
    .end packed-switch
.end method
