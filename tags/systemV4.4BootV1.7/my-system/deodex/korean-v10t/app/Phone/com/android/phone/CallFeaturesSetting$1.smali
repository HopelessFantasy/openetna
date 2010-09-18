.class Lcom/android/phone/CallFeaturesSetting$1;
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
    .line 279
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 281
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_30

    .line 325
    .end local p0
    :goto_5
    :sswitch_5
    return-void

    .line 292
    .restart local p0
    :sswitch_6
    invoke-static {}, Lcom/android/phone/CallFeaturesSetting;->access$000()Lcom/android/phone/CallFeaturesSetting;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->access$100(Lcom/android/phone/CallFeaturesSetting;)V

    goto :goto_5

    .line 300
    :sswitch_e
    invoke-static {}, Lcom/android/phone/CallFeaturesSetting;->access$000()Lcom/android/phone/CallFeaturesSetting;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->access$200(Lcom/android/phone/CallFeaturesSetting;)V

    goto :goto_5

    .line 308
    :sswitch_16
    invoke-static {}, Lcom/android/phone/CallFeaturesSetting;->access$000()Lcom/android/phone/CallFeaturesSetting;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/os/AsyncResult;

    invoke-static {v0, v1, p0}, Lcom/android/phone/CallFeaturesSetting;->access$300(Lcom/android/phone/CallFeaturesSetting;ILandroid/os/AsyncResult;)V

    goto :goto_5

    .line 316
    .restart local p0
    :sswitch_24
    invoke-static {}, Lcom/android/phone/CallFeaturesSetting;->access$000()Lcom/android/phone/CallFeaturesSetting;

    move-result-object v0

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/os/AsyncResult;

    invoke-static {v0, p0}, Lcom/android/phone/CallFeaturesSetting;->access$400(Lcom/android/phone/CallFeaturesSetting;Landroid/os/AsyncResult;)V

    goto :goto_5

    .line 281
    :sswitch_data_30
    .sparse-switch
        0xc8 -> :sswitch_6
        0x12c -> :sswitch_e
        0x190 -> :sswitch_16
        0x1f4 -> :sswitch_24
        0x2bc -> :sswitch_5
    .end sparse-switch
.end method
