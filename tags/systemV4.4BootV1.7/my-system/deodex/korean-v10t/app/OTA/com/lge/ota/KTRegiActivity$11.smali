.class Lcom/lge/ota/KTRegiActivity$11;
.super Landroid/content/BroadcastReceiver;
.source "KTRegiActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/ota/KTRegiActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/ota/KTRegiActivity;


# direct methods
.method constructor <init>(Lcom/lge/ota/KTRegiActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 516
    iput-object p1, p0, Lcom/lge/ota/KTRegiActivity$11;->this$0:Lcom/lge/ota/KTRegiActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const-string v6, "[OTA]mBroadcastReceiver : "

    const-string v5, "KTRegiActivity"

    .line 518
    const-string v3, "KTRegiActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mBroadcastReceiver : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.REG_FAIL"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_56

    .line 523
    const-string v3, "KTRegiActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[OTA]mBroadcastReceiver : "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    iget-object v3, p0, Lcom/lge/ota/KTRegiActivity$11;->this$0:Lcom/lge/ota/KTRegiActivity;

    invoke-static {v3, v8}, Lcom/lge/ota/KTRegiActivity;->access$302(Lcom/lge/ota/KTRegiActivity;Z)Z

    .line 525
    iget-object v3, p0, Lcom/lge/ota/KTRegiActivity$11;->this$0:Lcom/lge/ota/KTRegiActivity;

    invoke-static {v3, v7}, Lcom/lge/ota/KTRegiActivity;->access$502(Lcom/lge/ota/KTRegiActivity;Z)Z

    .line 526
    iget-object v3, p0, Lcom/lge/ota/KTRegiActivity$11;->this$0:Lcom/lge/ota/KTRegiActivity;

    invoke-static {v3}, Lcom/lge/ota/KTRegiActivity;->access$200(Lcom/lge/ota/KTRegiActivity;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 614
    :cond_55
    :goto_55
    return-void

    .line 528
    :cond_56
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.REG_SUCCESS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_99

    .line 531
    const-string v3, "KTRegiActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[OTA]mBroadcastReceiver : "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    iget-object v3, p0, Lcom/lge/ota/KTRegiActivity$11;->this$0:Lcom/lge/ota/KTRegiActivity;

    invoke-static {v3, v7}, Lcom/lge/ota/KTRegiActivity;->access$302(Lcom/lge/ota/KTRegiActivity;Z)Z

    .line 533
    iget-object v3, p0, Lcom/lge/ota/KTRegiActivity$11;->this$0:Lcom/lge/ota/KTRegiActivity;

    invoke-static {v3, v7}, Lcom/lge/ota/KTRegiActivity;->access$502(Lcom/lge/ota/KTRegiActivity;Z)Z

    .line 534
    iget-object v3, p0, Lcom/lge/ota/KTRegiActivity$11;->this$0:Lcom/lge/ota/KTRegiActivity;

    iget-object v3, v3, Lcom/lge/ota/KTRegiActivity;->msgView:Landroid/widget/TextView;

    const v4, 0x7f030006

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 537
    iget-object v3, p0, Lcom/lge/ota/KTRegiActivity$11;->this$0:Lcom/lge/ota/KTRegiActivity;

    invoke-virtual {v3}, Lcom/lge/ota/KTRegiActivity;->sendKTOTAOpenModeMessage()V

    .line 540
    iget-object v3, p0, Lcom/lge/ota/KTRegiActivity$11;->this$0:Lcom/lge/ota/KTRegiActivity;

    invoke-virtual {v3}, Lcom/lge/ota/KTRegiActivity;->timer()V

    goto :goto_55

    .line 543
    :cond_99
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.KTOTA_WRITE_FAIL"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_dd

    .line 546
    const-string v3, "KTRegiActivity"

    const-string v3, "[RIAN][OTA]Fail to write OTA MSISDN to USIM"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    const-string v3, "KTRegiActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[OTA]mBroadcastReceiver : "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    iget-object v3, p0, Lcom/lge/ota/KTRegiActivity$11;->this$0:Lcom/lge/ota/KTRegiActivity;

    invoke-virtual {v3}, Lcom/lge/ota/KTRegiActivity;->stopTimer()V

    .line 549
    iget-object v3, p0, Lcom/lge/ota/KTRegiActivity$11;->this$0:Lcom/lge/ota/KTRegiActivity;

    iget-object v3, v3, Lcom/lge/ota/KTRegiActivity;->msgView:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 550
    iget-object v3, p0, Lcom/lge/ota/KTRegiActivity$11;->this$0:Lcom/lge/ota/KTRegiActivity;

    invoke-static {v3}, Lcom/lge/ota/KTRegiActivity;->access$200(Lcom/lge/ota/KTRegiActivity;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_55

    .line 552
    :cond_dd
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.KTOTA_WRITE_SUCCESS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14e

    .line 555
    const-string v3, "KTRegiActivity"

    const-string v3, "[RIAN][OTA]Success to write OTA MSISDN to USIM : Need to Phone Reset"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    const-string v3, "KTRegiActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[OTA]mBroadcastReceiver : "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    new-instance v0, Ljava/io/File;

    const-string v3, "/lgdrm/Openday"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 560
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_11a

    .line 562
    iget-object v3, p0, Lcom/lge/ota/KTRegiActivity$11;->this$0:Lcom/lge/ota/KTRegiActivity;

    invoke-static {v3}, Lcom/lge/ota/KTRegiActivity;->access$600(Lcom/lge/ota/KTRegiActivity;)V

    .line 564
    :cond_11a
    const-string v3, "phone"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 565
    .local v1, mTPM:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v2

    .line 566
    .local v2, msisdn:Ljava/lang/String;
    const-string v3, "KTRegiActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MSISDN : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    iget-object v3, p0, Lcom/lge/ota/KTRegiActivity$11;->this$0:Lcom/lge/ota/KTRegiActivity;

    invoke-virtual {v3}, Lcom/lge/ota/KTRegiActivity;->stopTimer()V

    .line 569
    iget-object v3, p0, Lcom/lge/ota/KTRegiActivity$11;->this$0:Lcom/lge/ota/KTRegiActivity;

    invoke-static {v3}, Lcom/lge/ota/KTRegiActivity;->access$700(Lcom/lge/ota/KTRegiActivity;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_55

    .line 571
    .end local v0           #file:Ljava/io/File;
    .end local v1           #mTPM:Landroid/telephony/TelephonyManager;
    .end local v2           #msisdn:Ljava/lang/String;
    :cond_14e
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.OTA_IN_SERVICE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a0

    .line 573
    const-string v3, "KTRegiActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[OTA]mBroadcastReceiver : "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    iget-object v3, p0, Lcom/lge/ota/KTRegiActivity$11;->this$0:Lcom/lge/ota/KTRegiActivity;

    invoke-static {v3}, Lcom/lge/ota/KTRegiActivity;->access$500(Lcom/lge/ota/KTRegiActivity;)Z

    move-result v3

    if-eqz v3, :cond_55

    .line 578
    iget-object v3, p0, Lcom/lge/ota/KTRegiActivity$11;->this$0:Lcom/lge/ota/KTRegiActivity;

    invoke-static {v3}, Lcom/lge/ota/KTRegiActivity;->access$300(Lcom/lge/ota/KTRegiActivity;)Z

    move-result v3

    if-nez v3, :cond_199

    .line 580
    iget-object v3, p0, Lcom/lge/ota/KTRegiActivity$11;->this$0:Lcom/lge/ota/KTRegiActivity;

    invoke-static {v3}, Lcom/lge/ota/KTRegiActivity;->access$400(Lcom/lge/ota/KTRegiActivity;)Landroid/app/AlertDialog;

    move-result-object v3

    if-eqz v3, :cond_199

    .line 582
    iget-object v3, p0, Lcom/lge/ota/KTRegiActivity$11;->this$0:Lcom/lge/ota/KTRegiActivity;

    invoke-static {v3}, Lcom/lge/ota/KTRegiActivity;->access$400(Lcom/lge/ota/KTRegiActivity;)Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    .line 583
    iget-object v3, p0, Lcom/lge/ota/KTRegiActivity$11;->this$0:Lcom/lge/ota/KTRegiActivity;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/lge/ota/KTRegiActivity;->access$402(Lcom/lge/ota/KTRegiActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 586
    :cond_199
    iget-object v3, p0, Lcom/lge/ota/KTRegiActivity$11;->this$0:Lcom/lge/ota/KTRegiActivity;

    invoke-static {v3, v7}, Lcom/lge/ota/KTRegiActivity;->access$302(Lcom/lge/ota/KTRegiActivity;Z)Z

    goto/16 :goto_55

    .line 589
    :cond_1a0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.OTA_NO_SERVICE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_55

    .line 591
    const-string v3, "KTRegiActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[OTA]mBroadcastReceiver : "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    iget-object v3, p0, Lcom/lge/ota/KTRegiActivity$11;->this$0:Lcom/lge/ota/KTRegiActivity;

    invoke-static {v3}, Lcom/lge/ota/KTRegiActivity;->access$500(Lcom/lge/ota/KTRegiActivity;)Z

    move-result v3

    if-eqz v3, :cond_55

    .line 596
    iget-object v3, p0, Lcom/lge/ota/KTRegiActivity$11;->this$0:Lcom/lge/ota/KTRegiActivity;

    invoke-static {v3}, Lcom/lge/ota/KTRegiActivity;->access$300(Lcom/lge/ota/KTRegiActivity;)Z

    move-result v3

    if-eqz v3, :cond_1f9

    .line 598
    iget-object v3, p0, Lcom/lge/ota/KTRegiActivity$11;->this$0:Lcom/lge/ota/KTRegiActivity;

    invoke-static {v3}, Lcom/lge/ota/KTRegiActivity;->access$400(Lcom/lge/ota/KTRegiActivity;)Landroid/app/AlertDialog;

    move-result-object v3

    if-nez v3, :cond_1f9

    .line 600
    iget-object v3, p0, Lcom/lge/ota/KTRegiActivity$11;->this$0:Lcom/lge/ota/KTRegiActivity;

    iget-object v4, p0, Lcom/lge/ota/KTRegiActivity$11;->this$0:Lcom/lge/ota/KTRegiActivity;

    invoke-static {v4}, Lcom/lge/ota/KTRegiActivity;->access$800(Lcom/lge/ota/KTRegiActivity;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/ota/KTRegiActivity;->access$402(Lcom/lge/ota/KTRegiActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 601
    iget-object v3, p0, Lcom/lge/ota/KTRegiActivity$11;->this$0:Lcom/lge/ota/KTRegiActivity;

    invoke-static {v3}, Lcom/lge/ota/KTRegiActivity;->access$400(Lcom/lge/ota/KTRegiActivity;)Landroid/app/AlertDialog;

    move-result-object v3

    new-instance v4, Lcom/lge/ota/KTRegiActivity$11$1;

    invoke-direct {v4, p0}, Lcom/lge/ota/KTRegiActivity$11$1;-><init>(Lcom/lge/ota/KTRegiActivity$11;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 611
    :cond_1f9
    iget-object v3, p0, Lcom/lge/ota/KTRegiActivity$11;->this$0:Lcom/lge/ota/KTRegiActivity;

    invoke-static {v3, v8}, Lcom/lge/ota/KTRegiActivity;->access$302(Lcom/lge/ota/KTRegiActivity;Z)Z

    goto/16 :goto_55
.end method
