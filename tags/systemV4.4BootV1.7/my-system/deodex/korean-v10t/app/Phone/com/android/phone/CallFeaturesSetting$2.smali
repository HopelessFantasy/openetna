.class Lcom/android/phone/CallFeaturesSetting$2;
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
    .line 338
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    .line 339
    const/4 v0, 0x0

    .line 340
    .local v0, bHandled:Z
    const/16 v1, 0x64

    .line 342
    .local v1, status:I
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_4e

    .line 376
    .end local p0
    :goto_8
    const/16 v2, 0x64

    if-eq v1, v2, :cond_42

    .line 379
    invoke-static {}, Lcom/android/phone/CallFeaturesSetting;->access$000()Lcom/android/phone/CallFeaturesSetting;

    move-result-object v2

    sget-object v3, Lcom/android/phone/CallFeaturesSetting$AppState;->NETWORK_ERROR:Lcom/android/phone/CallFeaturesSetting$AppState;

    invoke-static {v2, v3, v1}, Lcom/android/phone/CallFeaturesSetting;->access$800(Lcom/android/phone/CallFeaturesSetting;Lcom/android/phone/CallFeaturesSetting$AppState;I)V

    .line 389
    :cond_15
    :goto_15
    return-void

    .line 346
    .restart local p0
    :sswitch_16
    invoke-static {}, Lcom/android/phone/CallFeaturesSetting;->access$000()Lcom/android/phone/CallFeaturesSetting;

    move-result-object v2

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/os/AsyncResult;

    invoke-static {v2, p0}, Lcom/android/phone/CallFeaturesSetting;->access$500(Lcom/android/phone/CallFeaturesSetting;Landroid/os/AsyncResult;)I

    move-result v1

    .line 348
    const/4 v0, 0x1

    .line 350
    goto :goto_8

    .line 355
    .restart local p0
    :sswitch_24
    invoke-static {}, Lcom/android/phone/CallFeaturesSetting;->access$000()Lcom/android/phone/CallFeaturesSetting;

    move-result-object v2

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/os/AsyncResult;

    invoke-static {v2, p0}, Lcom/android/phone/CallFeaturesSetting;->access$600(Lcom/android/phone/CallFeaturesSetting;Landroid/os/AsyncResult;)I

    move-result v1

    .line 357
    const/4 v0, 0x1

    .line 359
    goto :goto_8

    .line 364
    .restart local p0
    :sswitch_32
    invoke-static {}, Lcom/android/phone/CallFeaturesSetting;->access$000()Lcom/android/phone/CallFeaturesSetting;

    move-result-object v2

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/os/AsyncResult;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v2, p0, v3}, Lcom/android/phone/CallFeaturesSetting;->access$700(Lcom/android/phone/CallFeaturesSetting;Landroid/os/AsyncResult;I)I

    move-result v1

    .line 367
    const/4 v0, 0x1

    .line 369
    goto :goto_8

    .line 382
    :cond_42
    if-eqz v0, :cond_15

    .line 385
    invoke-static {}, Lcom/android/phone/CallFeaturesSetting;->access$000()Lcom/android/phone/CallFeaturesSetting;

    move-result-object v2

    sget-object v3, Lcom/android/phone/CallFeaturesSetting$AppState;->INPUT_READY:Lcom/android/phone/CallFeaturesSetting$AppState;

    invoke-static {v2, v3}, Lcom/android/phone/CallFeaturesSetting;->access$900(Lcom/android/phone/CallFeaturesSetting;Lcom/android/phone/CallFeaturesSetting$AppState;)V

    goto :goto_15

    .line 342
    :sswitch_data_4e
    .sparse-switch
        0xc8 -> :sswitch_16
        0x12c -> :sswitch_24
        0x190 -> :sswitch_32
    .end sparse-switch
.end method
