.class Lcom/android/phone/CallFeaturesSetting$4;
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
    .line 472
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 11
    .parameter "msg"

    .prologue
    const/4 v8, 0x0

    .line 473
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 474
    .local v0, ar:Landroid/os/AsyncResult;
    const/16 v4, 0x64

    .line 477
    .local v4, status:I
    const/4 v3, 0x0

    .line 480
    .local v3, para:Ljava/lang/String;
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_9c

    .line 590
    :cond_d
    :goto_d
    return-void

    .line 484
    :pswitch_e
    invoke-static {}, Lcom/android/phone/CallFeaturesSetting;->access$000()Lcom/android/phone/CallFeaturesSetting;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-static {v5, v0, v6}, Lcom/android/phone/CallFeaturesSetting;->access$700(Lcom/android/phone/CallFeaturesSetting;Landroid/os/AsyncResult;I)I

    move-result v4

    .line 487
    const/4 v2, -0x1

    .line 489
    .local v2, nextReason:I
    iget v5, p1, Landroid/os/Message;->arg1:I

    packed-switch v5, :pswitch_data_a2

    .line 546
    :goto_1e
    const/16 v5, 0x64

    if-eq v4, v5, :cond_4d

    .line 549
    invoke-static {}, Lcom/android/phone/CallFeaturesSetting;->access$000()Lcom/android/phone/CallFeaturesSetting;

    move-result-object v5

    sget-object v6, Lcom/android/phone/CallFeaturesSetting$AppState;->NETWORK_ERROR:Lcom/android/phone/CallFeaturesSetting$AppState;

    invoke-static {v5, v6, v4}, Lcom/android/phone/CallFeaturesSetting;->access$800(Lcom/android/phone/CallFeaturesSetting;Lcom/android/phone/CallFeaturesSetting$AppState;I)V

    goto :goto_d

    .line 493
    :pswitch_2c
    const-string v5, "mGetAllOptionsComplete: CFU query done, querying CFB."

    invoke-static {v5}, Lcom/android/phone/CallFeaturesSetting;->access$1000(Ljava/lang/String;)V

    .line 497
    const/4 v2, 0x1

    .line 499
    const-string v3, "67"

    .line 502
    goto :goto_1e

    .line 507
    :pswitch_35
    const-string v5, "mGetAllOptionsComplete: CFB query done, querying CFNRy."

    invoke-static {v5}, Lcom/android/phone/CallFeaturesSetting;->access$1000(Ljava/lang/String;)V

    .line 511
    const/4 v2, 0x2

    .line 513
    const-string v3, "61"

    .line 516
    goto :goto_1e

    .line 521
    :pswitch_3e
    const-string v5, "mGetAllOptionsComplete: CFNRy query done, querying CFNRc."

    invoke-static {v5}, Lcom/android/phone/CallFeaturesSetting;->access$1000(Ljava/lang/String;)V

    .line 525
    const/4 v2, 0x3

    .line 527
    const-string v3, "62"

    .line 530
    goto :goto_1e

    .line 535
    :pswitch_47
    const-string v5, "mGetAllOptionsComplete: CFNRc query done, querying CLIR."

    invoke-static {v5}, Lcom/android/phone/CallFeaturesSetting;->access$1000(Ljava/lang/String;)V

    goto :goto_1e

    .line 553
    :cond_4d
    const/4 v5, -0x1

    if-eq v2, v5, :cond_89

    .line 560
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "*#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 562
    .local v1, mmi:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/CallFeaturesSetting;->access$000()Lcom/android/phone/CallFeaturesSetting;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/android/phone/CallFeaturesSetting;->checkFdn(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 567
    invoke-static {}, Lcom/android/phone/CallFeaturesSetting;->access$000()Lcom/android/phone/CallFeaturesSetting;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/CallFeaturesSetting;->access$1500(Lcom/android/phone/CallFeaturesSetting;)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-static {}, Lcom/android/phone/CallFeaturesSetting;->access$1700()Landroid/os/Handler;

    move-result-object v6

    const/16 v7, 0x190

    invoke-static {v6, v7, v2, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v5, v2, v6}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILandroid/os/Message;)V

    goto :goto_d

    .line 575
    .end local v1           #mmi:Ljava/lang/String;
    :cond_89
    invoke-static {}, Lcom/android/phone/CallFeaturesSetting;->access$000()Lcom/android/phone/CallFeaturesSetting;

    move-result-object v5

    invoke-static {v5, v8}, Lcom/android/phone/CallFeaturesSetting;->access$1802(Lcom/android/phone/CallFeaturesSetting;Z)Z

    .line 577
    invoke-static {}, Lcom/android/phone/CallFeaturesSetting;->access$000()Lcom/android/phone/CallFeaturesSetting;

    move-result-object v5

    sget-object v6, Lcom/android/phone/CallFeaturesSetting$AppState;->INPUT_READY:Lcom/android/phone/CallFeaturesSetting$AppState;

    invoke-static {v5, v6}, Lcom/android/phone/CallFeaturesSetting;->access$900(Lcom/android/phone/CallFeaturesSetting;Lcom/android/phone/CallFeaturesSetting$AppState;)V

    goto/16 :goto_d

    .line 480
    nop

    :pswitch_data_9c
    .packed-switch 0x190
        :pswitch_e
    .end packed-switch

    .line 489
    :pswitch_data_a2
    .packed-switch 0x0
        :pswitch_2c
        :pswitch_35
        :pswitch_3e
        :pswitch_47
    .end packed-switch
.end method
