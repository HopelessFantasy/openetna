.class public Lcom/android/phone/FdnSetting;
.super Landroid/preference/PreferenceActivity;
.source "FdnSetting.java"

# interfaces
.implements Lcom/android/phone/EditPinPreference$OnPinEnteredListener;
.implements Landroid/content/DialogInterface$OnCancelListener;


# static fields
.field private static final BUTTON_CHANGE_PIN2_KEY:Ljava/lang/String; = "button_change_pin2_key"

.field private static final BUTTON_FDN_ENABLE_KEY:Ljava/lang/String; = "button_fdn_enable_key"

.field private static final DIALOG_MESSAGE_KEY:Ljava/lang/String; = "dialog_message_key"

.field private static final DIALOG_PIN_ENTRY_KEY:Ljava/lang/String; = "dialog_pin_entry_key"

.field private static final EVENT_PIN2_CHANGE_COMPLETE:I = 0xc8

.field private static final EVENT_PIN2_ENTRY_COMPLETE:I = 0x64

.field private static final LOG_TAG:Ljava/lang/String; = "FdnSetting"

.field private static final MAX_PIN_LENGTH:I = 0x8

.field private static final MIN_PIN_LENGTH:I = 0x4

.field private static final NEW_PIN_KEY:Ljava/lang/String; = "new_pin_key"

.field private static final OLD_PIN_KEY:Ljava/lang/String; = "old_pin_key"

.field private static final PIN_CHANGE_NEW:I = 0x1

.field private static final PIN_CHANGE_OLD:I = 0x0

.field private static final PIN_CHANGE_PUK:I = 0x3

.field private static final PIN_CHANGE_REENTER:I = 0x2

.field private static final PIN_CHANGE_STATE_KEY:Ljava/lang/String; = "pin_change_state_key"

.field private static final SKIP_OLD_PIN_KEY:Ljava/lang/String; = "skip_old_pin_key"


# instance fields
.field private mButtonChangePin2:Lcom/android/phone/EditPinPreference;

.field private mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

.field private mFDNHandler:Landroid/os/Handler;

.field private mNewPin:Ljava/lang/String;

.field private mOldPin:Ljava/lang/String;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPinChangeState:I

.field private mSkipOldPin:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 203
    new-instance v0, Lcom/android/phone/FdnSetting$1;

    invoke-direct {v0, p0}, Lcom/android/phone/FdnSetting$1;-><init>(Lcom/android/phone/FdnSetting;)V

    iput-object v0, p0, Lcom/android/phone/FdnSetting;->mFDNHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/FdnSetting;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/phone/FdnSetting;->displayMessage(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/FdnSetting;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->resetPinChangeStateForPUK2()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/FdnSetting;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->updateEnableFDN()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/FdnSetting;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/android/phone/FdnSetting;->mPinChangeState:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/phone/FdnSetting;)Lcom/android/internal/telephony/Phone;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/FdnSetting;)Lcom/android/phone/EditPinPreference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/FdnSetting;)Lcom/android/phone/EditPinPreference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/phone/FdnSetting;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/android/phone/FdnSetting;->mSkipOldPin:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/phone/FdnSetting;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/android/phone/FdnSetting;->mSkipOldPin:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/phone/FdnSetting;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->resetPinChangeState()V

    return-void
.end method

.method private checkPin2StatusAndUpdateFdnScreen()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const-string v1, "FdnSetting"

    .line 446
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getIccPuk2Blocked()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 447
    const-string v0, "FdnSetting"

    const-string v0, "PUK2 is Blocked.Disabling Enable FDN,Change PIN2"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    const v0, 0x7f09019a

    invoke-direct {p0, v0}, Lcom/android/phone/FdnSetting;->displayMessage(I)V

    .line 449
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v0, v2}, Lcom/android/phone/EditPinPreference;->setEnabled(Z)V

    .line 450
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v0, v2}, Lcom/android/phone/EditPinPreference;->setEnabled(Z)V

    .line 458
    :goto_26
    return-void

    .line 451
    :cond_27
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getIccPin2Blocked()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 452
    const-string v0, "FdnSetting"

    const-string v0, "PIN2 is Blocked"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->resetPinChangeStateForPUK2()V

    goto :goto_26

    .line 455
    :cond_3e
    const-string v0, "FdnSetting"

    const-string v0, "PUK2/PIN2 is not Blocked"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->resetPinChangeState()V

    goto :goto_26
.end method

.method private final displayMessage(I)V
    .registers 4
    .parameter "strId"

    .prologue
    .line 295
    invoke-virtual {p0, p1}, Lcom/android/phone/FdnSetting;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 297
    return-void
.end method

.method private final displayPinChangeDialog()V
    .registers 3

    .prologue
    .line 303
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/FdnSetting;->displayPinChangeDialog(IZ)V

    .line 304
    return-void
.end method

.method private final displayPinChangeDialog(IZ)V
    .registers 7
    .parameter "strId"
    .parameter "shouldDisplay"

    .prologue
    .line 308
    iget v1, p0, Lcom/android/phone/FdnSetting;->mPinChangeState:I

    packed-switch v1, :pswitch_data_48

    .line 320
    const v0, 0x7f090197

    .line 325
    .local v0, msgId:I
    :goto_8
    if-eqz p1, :cond_42

    .line 326
    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/phone/FdnSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/android/phone/FdnSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/phone/EditPinPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    .line 332
    :goto_2e
    if-eqz p2, :cond_35

    .line 333
    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v1}, Lcom/android/phone/EditPinPreference;->showPinDialog()V

    .line 335
    :cond_35
    return-void

    .line 310
    .end local v0           #msgId:I
    :pswitch_36
    const v0, 0x7f09018e

    .line 311
    .restart local v0       #msgId:I
    goto :goto_8

    .line 313
    .end local v0           #msgId:I
    :pswitch_3a
    const v0, 0x7f09018f

    .line 314
    .restart local v0       #msgId:I
    goto :goto_8

    .line 316
    .end local v0           #msgId:I
    :pswitch_3e
    const v0, 0x7f090190

    .line 317
    .restart local v0       #msgId:I
    goto :goto_8

    .line 328
    :cond_42
    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v1, v0}, Lcom/android/phone/EditPinPreference;->setDialogMessage(I)V

    goto :goto_2e

    .line 308
    :pswitch_data_48
    .packed-switch 0x0
        :pswitch_36
        :pswitch_3a
        :pswitch_3e
    .end packed-switch
.end method

.method private final resetPinChangeState()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 341
    iput v0, p0, Lcom/android/phone/FdnSetting;->mPinChangeState:I

    .line 342
    invoke-direct {p0, v0, v0}, Lcom/android/phone/FdnSetting;->displayPinChangeDialog(IZ)V

    .line 343
    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/FdnSetting;->mNewPin:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/FdnSetting;->mOldPin:Ljava/lang/String;

    .line 344
    return-void
.end method

.method private final resetPinChangeStateForPUK2()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 350
    iput v1, p0, Lcom/android/phone/FdnSetting;->mPinChangeState:I

    .line 351
    invoke-direct {p0, v0, v0}, Lcom/android/phone/FdnSetting;->displayPinChangeDialog(IZ)V

    .line 352
    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/FdnSetting;->mNewPin:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/FdnSetting;->mOldPin:Ljava/lang/String;

    .line 353
    iput-boolean v1, p0, Lcom/android/phone/FdnSetting;->mSkipOldPin:Z

    .line 354
    return-void
.end method

.method private toggleFDNEnable(Z)V
    .registers 8
    .parameter "positiveResult"

    .prologue
    const/4 v5, 0x0

    .line 97
    if-nez p1, :cond_4

    .line 116
    :goto_3
    return-void

    .line 102
    :cond_4
    iget-object v3, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v3}, Lcom/android/phone/EditPinPreference;->getText()Ljava/lang/String;

    move-result-object v2

    .line 103
    .local v2, password:Ljava/lang/String;
    invoke-direct {p0, v2, v5}, Lcom/android/phone/FdnSetting;->validatePin(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 105
    iget-object v3, p0, Lcom/android/phone/FdnSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/IccCard;->getIccFdnEnabled()Z

    move-result v0

    .line 106
    .local v0, isEnabled:Z
    iget-object v3, p0, Lcom/android/phone/FdnSetting;->mFDNHandler:Landroid/os/Handler;

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 109
    .local v1, onComplete:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/phone/FdnSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v3

    if-nez v0, :cond_36

    const/4 v4, 0x1

    :goto_2b
    invoke-interface {v3, v4, v2, v1}, Lcom/android/internal/telephony/IccCard;->setIccFdnEnabled(ZLjava/lang/String;Landroid/os/Message;)V

    .line 115
    .end local v0           #isEnabled:Z
    .end local v1           #onComplete:Landroid/os/Message;
    :goto_2e
    iget-object v3, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    const-string v4, ""

    invoke-virtual {v3, v4}, Lcom/android/phone/EditPinPreference;->setText(Ljava/lang/String;)V

    goto :goto_3

    .restart local v0       #isEnabled:Z
    .restart local v1       #onComplete:Landroid/os/Message;
    :cond_36
    move v4, v5

    .line 109
    goto :goto_2b

    .line 112
    .end local v0           #isEnabled:Z
    .end local v1           #onComplete:Landroid/os/Message;
    :cond_38
    const v3, 0x7f090194

    invoke-direct {p0, v3}, Lcom/android/phone/FdnSetting;->displayMessage(I)V

    goto :goto_2e
.end method

.method private updateEnableFDN()V
    .registers 3

    .prologue
    .line 380
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getIccFdnEnabled()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 381
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    const v1, 0x7f09015c

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPinPreference;->setTitle(I)V

    .line 382
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    const v1, 0x7f090157

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPinPreference;->setSummary(I)V

    .line 383
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    const v1, 0x7f09015a

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPinPreference;->setDialogTitle(I)V

    .line 389
    :goto_24
    return-void

    .line 385
    :cond_25
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    const v1, 0x7f09015d

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPinPreference;->setTitle(I)V

    .line 386
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    const v1, 0x7f090158

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPinPreference;->setSummary(I)V

    .line 387
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    const v1, 0x7f090159

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPinPreference;->setDialogTitle(I)V

    goto :goto_24
.end method

.method private updatePINChangeState(Z)V
    .registers 11
    .parameter "positiveResult"

    .prologue
    const v8, 0x7f090194

    const/16 v7, 0xc8

    const/4 v6, 0x0

    const/4 v4, 0x1

    const-string v5, ""

    .line 122
    if-nez p1, :cond_17

    .line 124
    iget-boolean v2, p0, Lcom/android/phone/FdnSetting;->mSkipOldPin:Z

    if-nez v2, :cond_13

    .line 125
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->resetPinChangeState()V

    .line 198
    :goto_12
    return-void

    .line 127
    :cond_13
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->resetPinChangeStateForPUK2()V

    goto :goto_12

    .line 141
    :cond_17
    iget v2, p0, Lcom/android/phone/FdnSetting;->mPinChangeState:I

    packed-switch v2, :pswitch_data_d4

    goto :goto_12

    .line 143
    :pswitch_1d
    iget-object v2, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v2}, Lcom/android/phone/EditPinPreference;->getText()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/FdnSetting;->mOldPin:Ljava/lang/String;

    .line 144
    iget-object v2, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    const-string v3, ""

    invoke-virtual {v2, v5}, Lcom/android/phone/EditPinPreference;->setText(Ljava/lang/String;)V

    .line 146
    iget-object v2, p0, Lcom/android/phone/FdnSetting;->mOldPin:Ljava/lang/String;

    invoke-direct {p0, v2, v6}, Lcom/android/phone/FdnSetting;->validatePin(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 147
    iput v4, p0, Lcom/android/phone/FdnSetting;->mPinChangeState:I

    .line 148
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->displayPinChangeDialog()V

    goto :goto_12

    .line 150
    :cond_3a
    invoke-direct {p0, v8, v4}, Lcom/android/phone/FdnSetting;->displayPinChangeDialog(IZ)V

    goto :goto_12

    .line 154
    :pswitch_3e
    iget-object v2, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v2}, Lcom/android/phone/EditPinPreference;->getText()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/FdnSetting;->mNewPin:Ljava/lang/String;

    .line 155
    iget-object v2, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    const-string v3, ""

    invoke-virtual {v2, v5}, Lcom/android/phone/EditPinPreference;->setText(Ljava/lang/String;)V

    .line 157
    iget-object v2, p0, Lcom/android/phone/FdnSetting;->mNewPin:Ljava/lang/String;

    invoke-direct {p0, v2, v6}, Lcom/android/phone/FdnSetting;->validatePin(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 158
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/phone/FdnSetting;->mPinChangeState:I

    .line 159
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->displayPinChangeDialog()V

    goto :goto_12

    .line 161
    :cond_5c
    invoke-direct {p0, v8, v4}, Lcom/android/phone/FdnSetting;->displayPinChangeDialog(IZ)V

    goto :goto_12

    .line 166
    :pswitch_60
    iget-object v2, p0, Lcom/android/phone/FdnSetting;->mNewPin:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v3}, Lcom/android/phone/EditPinPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7e

    .line 167
    iput v4, p0, Lcom/android/phone/FdnSetting;->mPinChangeState:I

    .line 168
    iget-object v2, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    const-string v3, ""

    invoke-virtual {v2, v5}, Lcom/android/phone/EditPinPreference;->setText(Ljava/lang/String;)V

    .line 169
    const v2, 0x7f090193

    invoke-direct {p0, v2, v4}, Lcom/android/phone/FdnSetting;->displayPinChangeDialog(IZ)V

    goto :goto_12

    .line 173
    :cond_7e
    iget-object v2, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    const-string v3, ""

    invoke-virtual {v2, v5}, Lcom/android/phone/EditPinPreference;->setText(Ljava/lang/String;)V

    .line 174
    iget-boolean v2, p0, Lcom/android/phone/FdnSetting;->mSkipOldPin:Z

    if-nez v2, :cond_9e

    .line 175
    iget-object v2, p0, Lcom/android/phone/FdnSetting;->mFDNHandler:Landroid/os/Handler;

    invoke-virtual {v2, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 176
    .local v0, onComplete:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/phone/FdnSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/FdnSetting;->mOldPin:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/phone/FdnSetting;->mNewPin:Ljava/lang/String;

    invoke-interface {v2, v3, v4, v0}, Lcom/android/internal/telephony/IccCard;->changeIccFdnPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_12

    .line 178
    .end local v0           #onComplete:Landroid/os/Message;
    :cond_9e
    const/4 v2, 0x3

    iput v2, p0, Lcom/android/phone/FdnSetting;->mPinChangeState:I

    .line 179
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->displayPinChangeDialog()V

    goto/16 :goto_12

    .line 186
    :pswitch_a6
    iget-object v2, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v2}, Lcom/android/phone/EditPinPreference;->getText()Ljava/lang/String;

    move-result-object v1

    .line 187
    .local v1, puk2:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    const-string v3, ""

    invoke-virtual {v2, v5}, Lcom/android/phone/EditPinPreference;->setText(Ljava/lang/String;)V

    .line 189
    invoke-direct {p0, v1, v4}, Lcom/android/phone/FdnSetting;->validatePin(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_cc

    .line 190
    iget-object v2, p0, Lcom/android/phone/FdnSetting;->mFDNHandler:Landroid/os/Handler;

    invoke-virtual {v2, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 191
    .restart local v0       #onComplete:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/phone/FdnSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/FdnSetting;->mNewPin:Ljava/lang/String;

    invoke-interface {v2, v1, v3, v0}, Lcom/android/internal/telephony/IccCard;->supplyPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_12

    .line 193
    .end local v0           #onComplete:Landroid/os/Message;
    :cond_cc
    const v2, 0x7f090195

    invoke-direct {p0, v2, v4}, Lcom/android/phone/FdnSetting;->displayPinChangeDialog(IZ)V

    goto/16 :goto_12

    .line 141
    :pswitch_data_d4
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_3e
        :pswitch_60
        :pswitch_a6
    .end packed-switch
.end method

.method private validatePin(Ljava/lang/String;Z)Z
    .registers 6
    .parameter "pin"
    .parameter "isPUK"

    .prologue
    const/16 v2, 0x8

    .line 366
    if-eqz p2, :cond_15

    move v0, v2

    .line 369
    .local v0, pinMinimum:I
    :goto_5
    if-eqz p1, :cond_13

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v0, :cond_13

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_18

    .line 370
    :cond_13
    const/4 v1, 0x0

    .line 372
    :goto_14
    return v1

    .line 366
    .end local v0           #pinMinimum:I
    :cond_15
    const/4 v1, 0x4

    move v0, v1

    goto :goto_5

    .line 372
    .restart local v0       #pinMinimum:I
    :cond_18
    const/4 v1, 0x1

    goto :goto_14
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "dialog"

    .prologue
    const/4 v1, 0x1

    .line 286
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/phone/FdnSetting;->mPinChangeState:I

    .line 287
    iput-boolean v1, p0, Lcom/android/phone/FdnSetting;->mSkipOldPin:Z

    .line 288
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/phone/FdnSetting;->displayPinChangeDialog(IZ)V

    .line 289
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "icicle"

    .prologue
    .line 393
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 395
    const v1, 0x7f050009

    invoke-virtual {p0, v1}, Lcom/android/phone/FdnSetting;->addPreferencesFromResource(I)V

    .line 397
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/FdnSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 400
    invoke-virtual {p0}, Lcom/android/phone/FdnSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 401
    .local v0, prefSet:Landroid/preference/PreferenceScreen;
    const-string v1, "button_fdn_enable_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/phone/EditPinPreference;

    iput-object v1, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    .line 402
    const-string v1, "button_change_pin2_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/phone/EditPinPreference;

    iput-object v1, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    .line 405
    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v1, p0}, Lcom/android/phone/EditPinPreference;->setOnPinEnteredListener(Lcom/android/phone/EditPinPreference$OnPinEnteredListener;)V

    .line 406
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->updateEnableFDN()V

    .line 408
    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v1, p0}, Lcom/android/phone/EditPinPreference;->setOnPinEnteredListener(Lcom/android/phone/EditPinPreference$OnPinEnteredListener;)V

    .line 411
    if-nez p1, :cond_3a

    .line 412
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->resetPinChangeState()V

    .line 421
    :goto_39
    return-void

    .line 414
    :cond_3a
    const-string v1, "skip_old_pin_key"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/phone/FdnSetting;->mSkipOldPin:Z

    .line 415
    const-string v1, "pin_change_state_key"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/phone/FdnSetting;->mPinChangeState:I

    .line 416
    const-string v1, "old_pin_key"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/FdnSetting;->mOldPin:Ljava/lang/String;

    .line 417
    const-string v1, "new_pin_key"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/FdnSetting;->mNewPin:Ljava/lang/String;

    .line 418
    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    const-string v2, "dialog_message_key"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/phone/EditPinPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    .line 419
    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    const-string v2, "dialog_pin_entry_key"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/phone/EditPinPreference;->setText(Ljava/lang/String;)V

    goto :goto_39
.end method

.method public onPinEntered(Lcom/android/phone/EditPinPreference;Z)V
    .registers 4
    .parameter "preference"
    .parameter "positiveResult"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    if-ne p1, v0, :cond_8

    .line 87
    invoke-direct {p0, p2}, Lcom/android/phone/FdnSetting;->toggleFDNEnable(Z)V

    .line 91
    :cond_7
    :goto_7
    return-void

    .line 88
    :cond_8
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    if-ne p1, v0, :cond_7

    .line 89
    invoke-direct {p0, p2}, Lcom/android/phone/FdnSetting;->updatePINChangeState(Z)V

    goto :goto_7
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 425
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 426
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/FdnSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 427
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->updateEnableFDN()V

    .line 428
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->checkPin2StatusAndUpdateFdnScreen()V

    .line 429
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "out"

    .prologue
    .line 436
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 437
    const-string v0, "skip_old_pin_key"

    iget-boolean v1, p0, Lcom/android/phone/FdnSetting;->mSkipOldPin:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 438
    const-string v0, "pin_change_state_key"

    iget v1, p0, Lcom/android/phone/FdnSetting;->mPinChangeState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 439
    const-string v0, "old_pin_key"

    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mOldPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    const-string v0, "new_pin_key"

    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mNewPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    const-string v0, "dialog_message_key"

    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v1}, Lcom/android/phone/EditPinPreference;->getDialogMessage()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    const-string v0, "dialog_pin_entry_key"

    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v1}, Lcom/android/phone/EditPinPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    return-void
.end method
