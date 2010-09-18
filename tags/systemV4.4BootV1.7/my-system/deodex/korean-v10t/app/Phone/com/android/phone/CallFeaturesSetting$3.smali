.class Lcom/android/phone/CallFeaturesSetting$3;
.super Landroid/os/Handler;
.source "CallFeaturesSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallFeaturesSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 407
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 408
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_52

    .line 463
    .end local p0
    :cond_5
    :goto_5
    return-void

    .line 410
    .restart local p0
    :sswitch_6
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/os/AsyncResult;

    iget-object v0, p0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Landroid/telephony/ServiceState;

    .line 412
    .local v0, state:Landroid/telephony/ServiceState;
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-nez v1, :cond_5

    .line 414
    const-string v1, "mNetworkServiceHandler: network available for queries."

    invoke-static {v1}, Lcom/android/phone/CallFeaturesSetting;->access$1000(Ljava/lang/String;)V

    .line 421
    invoke-static {}, Lcom/android/phone/CallFeaturesSetting;->access$000()Lcom/android/phone/CallFeaturesSetting;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/CallFeaturesSetting;->access$1100(Lcom/android/phone/CallFeaturesSetting;)I

    move-result v1

    packed-switch v1, :pswitch_data_5c

    .line 442
    :goto_24
    invoke-static {}, Lcom/android/phone/CallFeaturesSetting;->access$000()Lcom/android/phone/CallFeaturesSetting;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/CallFeaturesSetting;->access$1500(Lcom/android/phone/CallFeaturesSetting;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-static {}, Lcom/android/phone/CallFeaturesSetting;->access$1400()Landroid/os/Handler;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    goto :goto_5

    .line 426
    :pswitch_34
    invoke-static {}, Lcom/android/phone/CallFeaturesSetting;->access$000()Lcom/android/phone/CallFeaturesSetting;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/CallFeaturesSetting;->access$1200(Lcom/android/phone/CallFeaturesSetting;)V

    goto :goto_24

    .line 434
    :pswitch_3c
    invoke-static {}, Lcom/android/phone/CallFeaturesSetting;->access$000()Lcom/android/phone/CallFeaturesSetting;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/CallFeaturesSetting;->access$1300(Lcom/android/phone/CallFeaturesSetting;)V

    goto :goto_24

    .line 453
    .end local v0           #state:Landroid/telephony/ServiceState;
    .restart local p0
    :sswitch_44
    const-string v1, "mNetworkServiceHandler: cancel query requested."

    invoke-static {v1}, Lcom/android/phone/CallFeaturesSetting;->access$1000(Ljava/lang/String;)V

    .line 458
    invoke-static {}, Lcom/android/phone/CallFeaturesSetting;->access$000()Lcom/android/phone/CallFeaturesSetting;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/CallFeaturesSetting;->access$1600(Lcom/android/phone/CallFeaturesSetting;)V

    goto :goto_5

    .line 408
    nop

    :sswitch_data_52
    .sparse-switch
        0x64 -> :sswitch_6
        0x258 -> :sswitch_44
    .end sparse-switch

    .line 421
    :pswitch_data_5c
    .packed-switch -0x3
        :pswitch_3c
        :pswitch_34
    .end packed-switch
.end method
