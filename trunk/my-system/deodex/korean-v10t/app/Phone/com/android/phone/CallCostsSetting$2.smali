.class Lcom/android/phone/CallCostsSetting$2;
.super Landroid/os/Handler;
.source "CallCostsSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallCostsSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallCostsSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/CallCostsSetting;)V
    .registers 2
    .parameter

    .prologue
    .line 206
    iput-object p1, p0, Lcom/android/phone/CallCostsSetting$2;->this$0:Lcom/android/phone/CallCostsSetting;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 207
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 209
    .local v0, ar:Landroid/os/AsyncResult;
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_22

    .line 230
    :goto_9
    return-void

    .line 211
    :sswitch_a
    iget-object v1, p0, Lcom/android/phone/CallCostsSetting$2;->this$0:Lcom/android/phone/CallCostsSetting;

    invoke-static {v1, v0}, Lcom/android/phone/CallCostsSetting;->access$700(Lcom/android/phone/CallCostsSetting;Landroid/os/AsyncResult;)I

    goto :goto_9

    .line 216
    :sswitch_10
    iget-object v1, p0, Lcom/android/phone/CallCostsSetting$2;->this$0:Lcom/android/phone/CallCostsSetting;

    invoke-static {v1}, Lcom/android/phone/CallCostsSetting;->access$800(Lcom/android/phone/CallCostsSetting;)V

    goto :goto_9

    .line 221
    :sswitch_16
    iget-object v1, p0, Lcom/android/phone/CallCostsSetting$2;->this$0:Lcom/android/phone/CallCostsSetting;

    invoke-static {v1}, Lcom/android/phone/CallCostsSetting;->access$800(Lcom/android/phone/CallCostsSetting;)V

    goto :goto_9

    .line 226
    :sswitch_1c
    iget-object v1, p0, Lcom/android/phone/CallCostsSetting$2;->this$0:Lcom/android/phone/CallCostsSetting;

    invoke-static {v1}, Lcom/android/phone/CallCostsSetting;->access$800(Lcom/android/phone/CallCostsSetting;)V

    goto :goto_9

    .line 209
    :sswitch_data_22
    .sparse-switch
        0x64 -> :sswitch_a
        0xc8 -> :sswitch_10
        0x12c -> :sswitch_16
        0x190 -> :sswitch_1c
    .end sparse-switch
.end method
