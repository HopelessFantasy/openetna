.class Lcom/android/phone/IccPinUnlockPanel$3;
.super Ljava/lang/Object;
.source "IccPinUnlockPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/IccPinUnlockPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/IccPinUnlockPanel;


# direct methods
.method constructor <init>(Lcom/android/phone/IccPinUnlockPanel;)V
    .registers 2
    .parameter

    .prologue
    .line 309
    iput-object p1, p0, Lcom/android/phone/IccPinUnlockPanel$3;->this$0:Lcom/android/phone/IccPinUnlockPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .parameter "v"

    .prologue
    .line 310
    iget-object v4, p0, Lcom/android/phone/IccPinUnlockPanel$3;->this$0:Lcom/android/phone/IccPinUnlockPanel;

    invoke-static {v4}, Lcom/android/phone/IccPinUnlockPanel;->access$000(Lcom/android/phone/IccPinUnlockPanel;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 312
    .local v2, code:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 360
    :cond_14
    :goto_14
    return-void

    .line 316
    :cond_15
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 317
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v4, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v3

    .line 318
    .local v3, iccCardInterface:Lcom/android/internal/telephony/IccCard;
    if-eqz v3, :cond_14

    .line 319
    iget-object v4, p0, Lcom/android/phone/IccPinUnlockPanel$3;->this$0:Lcom/android/phone/IccPinUnlockPanel;

    invoke-static {v4}, Lcom/android/phone/IccPinUnlockPanel;->access$100(Lcom/android/phone/IccPinUnlockPanel;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x64

    invoke-static {v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 322
    .local v1, callBack:Landroid/os/Message;
    sget-object v4, Lcom/android/phone/IccPinUnlockPanel$5;->$SwitchMap$com$android$phone$IccPinUnlockPanel$IccLockState:[I

    iget-object v5, p0, Lcom/android/phone/IccPinUnlockPanel$3;->this$0:Lcom/android/phone/IccPinUnlockPanel;

    invoke-static {v5}, Lcom/android/phone/IccPinUnlockPanel;->access$200(Lcom/android/phone/IccPinUnlockPanel;)Lcom/android/phone/IccPinUnlockPanel$IccLockState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/IccPinUnlockPanel$IccLockState;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_98

    goto :goto_14

    .line 326
    :pswitch_3f
    iget-object v4, p0, Lcom/android/phone/IccPinUnlockPanel$3;->this$0:Lcom/android/phone/IccPinUnlockPanel;

    invoke-virtual {v4}, Lcom/android/phone/IccPinUnlockPanel;->showUnlockInProgress()V

    .line 327
    invoke-interface {v3, v2, v1}, Lcom/android/internal/telephony/IccCard;->supplyPin(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_14

    .line 332
    :pswitch_48
    iget-object v4, p0, Lcom/android/phone/IccPinUnlockPanel$3;->this$0:Lcom/android/phone/IccPinUnlockPanel;

    invoke-static {v4, v2}, Lcom/android/phone/IccPinUnlockPanel;->access$302(Lcom/android/phone/IccPinUnlockPanel;Ljava/lang/String;)Ljava/lang/String;

    .line 333
    iget-object v4, p0, Lcom/android/phone/IccPinUnlockPanel$3;->this$0:Lcom/android/phone/IccPinUnlockPanel;

    sget-object v5, Lcom/android/phone/IccPinUnlockPanel$IccLockState;->REQUIRE_NEW_PIN:Lcom/android/phone/IccPinUnlockPanel$IccLockState;

    invoke-virtual {v4, v5}, Lcom/android/phone/IccPinUnlockPanel;->setState(Lcom/android/phone/IccPinUnlockPanel$IccLockState;)V

    .line 334
    iget-object v4, p0, Lcom/android/phone/IccPinUnlockPanel$3;->this$0:Lcom/android/phone/IccPinUnlockPanel;

    invoke-virtual {v4}, Lcom/android/phone/IccPinUnlockPanel;->updateView()V

    goto :goto_14

    .line 339
    :pswitch_5a
    iget-object v4, p0, Lcom/android/phone/IccPinUnlockPanel$3;->this$0:Lcom/android/phone/IccPinUnlockPanel;

    invoke-static {v4, v2}, Lcom/android/phone/IccPinUnlockPanel;->access$402(Lcom/android/phone/IccPinUnlockPanel;Ljava/lang/String;)Ljava/lang/String;

    .line 340
    iget-object v4, p0, Lcom/android/phone/IccPinUnlockPanel$3;->this$0:Lcom/android/phone/IccPinUnlockPanel;

    sget-object v5, Lcom/android/phone/IccPinUnlockPanel$IccLockState;->VERIFY_NEW_PIN:Lcom/android/phone/IccPinUnlockPanel$IccLockState;

    invoke-virtual {v4, v5}, Lcom/android/phone/IccPinUnlockPanel;->setState(Lcom/android/phone/IccPinUnlockPanel$IccLockState;)V

    .line 341
    iget-object v4, p0, Lcom/android/phone/IccPinUnlockPanel$3;->this$0:Lcom/android/phone/IccPinUnlockPanel;

    invoke-virtual {v4}, Lcom/android/phone/IccPinUnlockPanel;->updateView()V

    goto :goto_14

    .line 347
    :pswitch_6c
    iget-object v4, p0, Lcom/android/phone/IccPinUnlockPanel$3;->this$0:Lcom/android/phone/IccPinUnlockPanel;

    invoke-static {v4, v2}, Lcom/android/phone/IccPinUnlockPanel;->access$500(Lcom/android/phone/IccPinUnlockPanel;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_89

    .line 349
    iget-object v4, p0, Lcom/android/phone/IccPinUnlockPanel$3;->this$0:Lcom/android/phone/IccPinUnlockPanel;

    invoke-virtual {v4}, Lcom/android/phone/IccPinUnlockPanel;->showUnlockInProgress()V

    .line 350
    iget-object v4, p0, Lcom/android/phone/IccPinUnlockPanel$3;->this$0:Lcom/android/phone/IccPinUnlockPanel;

    invoke-static {v4}, Lcom/android/phone/IccPinUnlockPanel;->access$300(Lcom/android/phone/IccPinUnlockPanel;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/IccPinUnlockPanel$3;->this$0:Lcom/android/phone/IccPinUnlockPanel;

    invoke-static {v5}, Lcom/android/phone/IccPinUnlockPanel;->access$400(Lcom/android/phone/IccPinUnlockPanel;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5, v1}, Lcom/android/internal/telephony/IccCard;->supplyPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_14

    .line 353
    :cond_89
    iget-object v4, p0, Lcom/android/phone/IccPinUnlockPanel$3;->this$0:Lcom/android/phone/IccPinUnlockPanel;

    sget-object v5, Lcom/android/phone/IccPinUnlockPanel$IccLockState;->VERIFY_NEW_PIN_FAILED:Lcom/android/phone/IccPinUnlockPanel$IccLockState;

    invoke-virtual {v4, v5}, Lcom/android/phone/IccPinUnlockPanel;->setState(Lcom/android/phone/IccPinUnlockPanel$IccLockState;)V

    .line 354
    iget-object v4, p0, Lcom/android/phone/IccPinUnlockPanel$3;->this$0:Lcom/android/phone/IccPinUnlockPanel;

    invoke-virtual {v4}, Lcom/android/phone/IccPinUnlockPanel;->updateView()V

    goto/16 :goto_14

    .line 322
    nop

    :pswitch_data_98
    .packed-switch 0x1
        :pswitch_3f
        :pswitch_48
        :pswitch_5a
        :pswitch_6c
    .end packed-switch
.end method
