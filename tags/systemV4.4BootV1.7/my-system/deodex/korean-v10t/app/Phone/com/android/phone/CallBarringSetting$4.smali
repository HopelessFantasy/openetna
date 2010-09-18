.class Lcom/android/phone/CallBarringSetting$4;
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
    .line 253
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    .line 254
    const/4 v0, 0x0

    .line 255
    .local v0, bHandled:Z
    const/16 v1, 0x44c

    .line 257
    .local v1, status:I
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_32

    .line 270
    .end local p0
    :goto_8
    const/16 v2, 0x44c

    if-eq v1, v2, :cond_26

    .line 271
    invoke-static {}, Lcom/android/phone/CallBarringSetting;->access$000()Lcom/android/phone/CallBarringSetting;

    move-result-object v2

    sget-object v3, Lcom/android/phone/CallBarringSetting$AppState;->NETWORK_ERROR:Lcom/android/phone/CallBarringSetting$AppState;

    invoke-static {v2, v3, v1}, Lcom/android/phone/CallBarringSetting;->access$100(Lcom/android/phone/CallBarringSetting;Lcom/android/phone/CallBarringSetting$AppState;I)V

    .line 275
    :cond_15
    :goto_15
    return-void

    .line 259
    .restart local p0
    :pswitch_16
    invoke-static {}, Lcom/android/phone/CallBarringSetting;->access$000()Lcom/android/phone/CallBarringSetting;

    move-result-object v2

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/os/AsyncResult;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v2, p0, v3}, Lcom/android/phone/CallBarringSetting;->access$1100(Lcom/android/phone/CallBarringSetting;Landroid/os/AsyncResult;I)I

    move-result v1

    .line 261
    const/4 v0, 0x1

    .line 263
    goto :goto_8

    .line 272
    :cond_26
    if-eqz v0, :cond_15

    .line 273
    invoke-static {}, Lcom/android/phone/CallBarringSetting;->access$000()Lcom/android/phone/CallBarringSetting;

    move-result-object v2

    sget-object v3, Lcom/android/phone/CallBarringSetting$AppState;->INPUT_READY:Lcom/android/phone/CallBarringSetting$AppState;

    invoke-static {v2, v3}, Lcom/android/phone/CallBarringSetting;->access$300(Lcom/android/phone/CallBarringSetting;Lcom/android/phone/CallBarringSetting$AppState;)V

    goto :goto_15

    .line 257
    :pswitch_data_32
    .packed-switch 0x4b0
        :pswitch_16
    .end packed-switch
.end method
