.class Lcom/android/phone/CallBarringSetting$1;
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
    .line 172
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    .line 173
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_3c

    .line 198
    :goto_5
    return-void

    .line 178
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 180
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_21

    .line 184
    invoke-static {}, Lcom/android/phone/CallBarringSetting;->access$000()Lcom/android/phone/CallBarringSetting;

    move-result-object v1

    sget-object v2, Lcom/android/phone/CallBarringSetting$AppState;->NETWORK_ERROR:Lcom/android/phone/CallBarringSetting$AppState;

    const/16 v3, 0x4b0

    invoke-static {v1, v2, v3}, Lcom/android/phone/CallBarringSetting;->access$100(Lcom/android/phone/CallBarringSetting;Lcom/android/phone/CallBarringSetting$AppState;I)V

    .line 187
    invoke-static {}, Lcom/android/phone/CallBarringSetting;->access$000()Lcom/android/phone/CallBarringSetting;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/CallBarringSetting;->access$200(Lcom/android/phone/CallBarringSetting;)V

    goto :goto_5

    .line 190
    :cond_21
    invoke-static {}, Lcom/android/phone/CallBarringSetting;->access$000()Lcom/android/phone/CallBarringSetting;

    move-result-object v1

    sget-object v2, Lcom/android/phone/CallBarringSetting$AppState;->INPUT_READY:Lcom/android/phone/CallBarringSetting$AppState;

    invoke-static {v1, v2}, Lcom/android/phone/CallBarringSetting;->access$300(Lcom/android/phone/CallBarringSetting;Lcom/android/phone/CallBarringSetting$AppState;)V

    .line 191
    invoke-static {}, Lcom/android/phone/CallBarringSetting;->access$000()Lcom/android/phone/CallBarringSetting;

    move-result-object v1

    const v2, 0x7f0900a9

    invoke-static {v1, v2}, Lcom/android/phone/CallBarringSetting;->access$400(Lcom/android/phone/CallBarringSetting;I)V

    .line 192
    invoke-static {}, Lcom/android/phone/CallBarringSetting;->access$000()Lcom/android/phone/CallBarringSetting;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/CallBarringSetting;->access$200(Lcom/android/phone/CallBarringSetting;)V

    goto :goto_5

    .line 173
    :pswitch_data_3c
    .packed-switch 0x514
        :pswitch_6
    .end packed-switch
.end method
