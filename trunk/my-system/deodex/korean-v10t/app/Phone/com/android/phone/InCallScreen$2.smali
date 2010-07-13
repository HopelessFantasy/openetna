.class Lcom/android/phone/InCallScreen$2;
.super Landroid/os/Handler;
.source "InCallScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InCallScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InCallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/InCallScreen;)V
    .registers 2
    .parameter

    .prologue
    .line 394
    iput-object p1, p0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10
    .parameter "msg"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 395
    iget-object v3, p0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    invoke-static {v3}, Lcom/android/phone/InCallScreen;->access$000(Lcom/android/phone/InCallScreen;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 396
    invoke-static {}, Lcom/android/phone/InCallScreen;->access$100()Z

    move-result v3

    if-eqz v3, :cond_2e

    iget-object v3, p0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Handler: ignoring message "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; we\'re destroyed!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/InCallScreen;->access$200(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 559
    .end local p0
    :cond_2e
    :goto_2e
    return-void

    .line 399
    .restart local p0
    :cond_2f
    iget-object v3, p0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    invoke-static {v3}, Lcom/android/phone/InCallScreen;->access$300(Lcom/android/phone/InCallScreen;)Z

    move-result v3

    if-nez v3, :cond_5b

    .line 400
    invoke-static {}, Lcom/android/phone/InCallScreen;->access$100()Z

    move-result v3

    if-eqz v3, :cond_5b

    iget-object v3, p0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Handler: handling message "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " while not in foreground"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/InCallScreen;->access$200(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 408
    :cond_5b
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 409
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_188

    goto :goto_2e

    .line 442
    :sswitch_65
    iget-object v3, p0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/os/AsyncResult;

    invoke-static {v3, p0}, Lcom/android/phone/InCallScreen;->access$700(Lcom/android/phone/InCallScreen;Landroid/os/AsyncResult;)V

    goto :goto_2e

    .line 411
    .restart local p0
    :sswitch_6f
    iget-object v3, p0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/os/AsyncResult;

    invoke-virtual {v3, p0}, Lcom/android/phone/InCallScreen;->onSuppServiceFailed(Landroid/os/AsyncResult;)V

    goto :goto_2e

    .line 415
    .restart local p0
    :sswitch_79
    iget-object v3, p0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/os/AsyncResult;

    invoke-static {v3, p0}, Lcom/android/phone/InCallScreen;->access$400(Lcom/android/phone/InCallScreen;Landroid/os/AsyncResult;)V

    goto :goto_2e

    .line 419
    .restart local p0
    :sswitch_83
    iget-object v3, p0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/os/AsyncResult;

    invoke-static {v3, p0}, Lcom/android/phone/InCallScreen;->access$500(Lcom/android/phone/InCallScreen;Landroid/os/AsyncResult;)V

    goto :goto_2e

    .line 431
    .restart local p0
    :sswitch_8d
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eq v3, v6, :cond_a2

    iget-object v3, p0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    invoke-virtual {v3}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnected()Z

    move-result v3

    if-nez v3, :cond_a2

    .line 436
    iget-object v3, p0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    invoke-virtual {v3}, Lcom/android/phone/InCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->restoreSpeakerMode(Landroid/content/Context;)V

    .line 438
    :cond_a2
    iget-object v3, p0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    invoke-static {v3}, Lcom/android/phone/InCallScreen;->access$600(Lcom/android/phone/InCallScreen;)V

    goto :goto_2e

    .line 446
    :sswitch_a8
    iget-object v3, p0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    invoke-static {v3}, Lcom/android/phone/InCallScreen;->access$800(Lcom/android/phone/InCallScreen;)V

    goto :goto_2e

    .line 457
    :sswitch_ae
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    iget-object v1, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/MmiCode;

    .line 458
    .local v1, mmiCode:Lcom/android/internal/telephony/MmiCode;
    invoke-interface {v1}, Lcom/android/internal/telephony/MmiCode;->getState()Lcom/android/internal/telephony/MmiCode$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    if-eq v3, v4, :cond_2e

    .line 459
    invoke-static {}, Lcom/android/phone/InCallScreen;->access$100()Z

    move-result v3

    if-eqz v3, :cond_cb

    iget-object v3, p0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    const-string v4, "Got MMI_COMPLETE, finishing..."

    invoke-static {v3, v4}, Lcom/android/phone/InCallScreen;->access$200(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 460
    :cond_cb
    iget-object v3, p0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    invoke-virtual {v3}, Lcom/android/phone/InCallScreen;->finish()V

    goto/16 :goto_2e

    .line 465
    .end local v1           #mmiCode:Lcom/android/internal/telephony/MmiCode;
    :sswitch_d2
    iget-object v3, p0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/os/AsyncResult;

    iget v4, p1, Landroid/os/Message;->arg1:I

    int-to-char v4, v4

    invoke-static {v3, p0, v4}, Lcom/android/phone/InCallScreen;->access$900(Lcom/android/phone/InCallScreen;Landroid/os/AsyncResult;C)V

    goto/16 :goto_2e

    .line 469
    .restart local p0
    :sswitch_e0
    iget-object v3, p0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    invoke-static {v3}, Lcom/android/phone/InCallScreen;->access$1000(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_2e

    .line 473
    :sswitch_e7
    iget-object v3, p0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    invoke-static {v3}, Lcom/android/phone/InCallScreen;->access$1100(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_2e

    .line 477
    :sswitch_ee
    iget-object v3, p0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    invoke-static {v3}, Lcom/android/phone/InCallScreen;->access$1200(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_2e

    .line 482
    :sswitch_f5
    iget-object v3, p0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    invoke-virtual {v3, v6}, Lcom/android/phone/InCallScreen;->dismissMenu(Z)V

    goto/16 :goto_2e

    .line 491
    :sswitch_fc
    invoke-virtual {v0, v7}, Lcom/android/phone/PhoneApp;->preventScreenOn(Z)V

    goto/16 :goto_2e

    .line 496
    :sswitch_101
    iget-object v3, p0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    invoke-static {v3}, Lcom/android/phone/InCallScreen;->access$1300(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_2e

    .line 506
    :sswitch_108
    iget-object v3, p0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    invoke-static {v3}, Lcom/android/phone/InCallScreen;->access$600(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_2e

    .line 511
    :sswitch_10f
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    iget-object v2, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    .line 513
    .local v2, not:Lcom/android/internal/telephony/gsm/SuppServiceNotification;
    const-string v3, "nodebug"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "InCallScreen>EVENT_SSN: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->notificationType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->code:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    iget v3, v2, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->notificationType:I

    if-eqz v3, :cond_2e

    .line 525
    iget v3, v2, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->notificationType:I

    if-ne v3, v6, :cond_2e

    .line 526
    iget v3, v2, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->code:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_154

    .line 527
    iget-object v3, p0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    const v4, 0x7f0901be

    invoke-static {v3, v4}, Lcom/android/phone/InCallScreen;->access$1400(Lcom/android/phone/InCallScreen;I)V

    goto/16 :goto_2e

    .line 528
    :cond_154
    iget v3, v2, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->code:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2e

    .line 529
    iget-object v3, p0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    const v4, 0x7f0901e0

    invoke-static {v3, v4}, Lcom/android/phone/InCallScreen;->access$1400(Lcom/android/phone/InCallScreen;I)V

    goto/16 :goto_2e

    .line 537
    .end local v2           #not:Lcom/android/internal/telephony/gsm/SuppServiceNotification;
    :sswitch_163
    iget-object v3, p0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    invoke-static {v3, v7}, Lcom/android/phone/InCallScreen;->access$1502(Lcom/android/phone/InCallScreen;Z)Z

    goto/16 :goto_2e

    .line 540
    :sswitch_16a
    iget-object v3, p0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    invoke-virtual {v3}, Lcom/android/phone/InCallScreen;->hangupAllCallStep2()V

    goto/16 :goto_2e

    .line 543
    :sswitch_171
    iget-object v3, p0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    invoke-virtual {v3}, Lcom/android/phone/InCallScreen;->hangupAllCallStep3()V

    goto/16 :goto_2e

    .line 549
    :sswitch_178
    iget-object v3, p0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    invoke-virtual {v3}, Lcom/android/phone/InCallScreen;->AnswerAndEndHoldCallStep2()V

    goto/16 :goto_2e

    .line 555
    :sswitch_17f
    iget-object v3, p0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    sget-object v4, Lcom/android/phone/InCallScreen$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-static {v3, v4}, Lcom/android/phone/InCallScreen;->access$1600(Lcom/android/phone/InCallScreen;Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    goto/16 :goto_2e

    .line 409
    :sswitch_data_188
    .sparse-switch
        0x33 -> :sswitch_65
        0x34 -> :sswitch_ae
        0x35 -> :sswitch_a8
        0x65 -> :sswitch_79
        0x66 -> :sswitch_83
        0x67 -> :sswitch_8d
        0x68 -> :sswitch_d2
        0x6a -> :sswitch_e0
        0x6b -> :sswitch_e7
        0x6c -> :sswitch_ee
        0x6e -> :sswitch_6f
        0x6f -> :sswitch_f5
        0x70 -> :sswitch_fc
        0x71 -> :sswitch_101
        0x72 -> :sswitch_108
        0x73 -> :sswitch_10f
        0x74 -> :sswitch_163
        0x75 -> :sswitch_16a
        0x76 -> :sswitch_171
        0x79 -> :sswitch_178
        0x7a -> :sswitch_17f
    .end sparse-switch
.end method
