.class Lcom/lge/ota/KTRegiActivity$8;
.super Landroid/content/BroadcastReceiver;
.source "KTRegiActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/ota/KTRegiActivity;->sendKTOTAOpenModeMessage()V
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
    .line 351
    iput-object p1, p0, Lcom/lge/ota/KTRegiActivity$8;->this$0:Lcom/lge/ota/KTRegiActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const-string v2, "Submit-Report for KT OTA OpenMode is RADIO OFF Error"

    const-string v1, "KTRegiActivity"

    .line 353
    invoke-virtual {p0}, Lcom/lge/ota/KTRegiActivity$8;->getResultCode()I

    move-result v0

    packed-switch v0, :pswitch_data_4c

    .line 382
    :goto_b
    :pswitch_b
    return-void

    .line 356
    :pswitch_c
    const-string v0, "KTRegiActivity"

    const-string v0, "Submit-Report for KT OTA OpenMode is ACK OK"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 361
    :pswitch_14
    const-string v0, "KTRegiActivity"

    const-string v0, "Submit-Report for KT OTA OpenMode is RP-Error"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    iget-object v0, p0, Lcom/lge/ota/KTRegiActivity$8;->this$0:Lcom/lge/ota/KTRegiActivity;

    invoke-virtual {v0}, Lcom/lge/ota/KTRegiActivity;->stopTimer()V

    .line 363
    iget-object v0, p0, Lcom/lge/ota/KTRegiActivity$8;->this$0:Lcom/lge/ota/KTRegiActivity;

    iget-object v0, v0, Lcom/lge/ota/KTRegiActivity;->msgView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 364
    iget-object v0, p0, Lcom/lge/ota/KTRegiActivity$8;->this$0:Lcom/lge/ota/KTRegiActivity;

    invoke-static {v0}, Lcom/lge/ota/KTRegiActivity;->access$200(Lcom/lge/ota/KTRegiActivity;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_b

    .line 367
    :pswitch_33
    const-string v0, "KTRegiActivity"

    const-string v0, "Submit-Report for KT OTA OpenMode is RADIO OFF Error"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 372
    :pswitch_3b
    const-string v0, "KTRegiActivity"

    const-string v0, "Submit-Report for KT OTA OpenMode is NULL PDU Error"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 377
    :pswitch_43
    const-string v0, "KTRegiActivity"

    const-string v0, "Submit-Report for KT OTA OpenMode is RADIO OFF Error"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 353
    nop

    :pswitch_data_4c
    .packed-switch -0x1
        :pswitch_c
        :pswitch_b
        :pswitch_14
        :pswitch_43
        :pswitch_3b
        :pswitch_33
    .end packed-switch
.end method
