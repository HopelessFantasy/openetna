.class public Lcom/android/phone/CallCostsSetting;
.super Landroid/preference/PreferenceActivity;
.source "CallCostsSetting.java"

# interfaces
.implements Lcom/android/phone/EditPinPreference$OnPinEnteredListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallCostsSetting$AppState;
    }
.end annotation


# static fields
.field private static final APP_STATE_KEY:Ljava/lang/String; = "app_state_key"

.field private static final BUSY_DIALOG:I = 0x44c

.field private static final BUTTON_CB_EXPAND_KEY:Ljava/lang/String; = "button_cb_expand_key"

.field private static final BUTTON_COST_ALL_KEY:Ljava/lang/String; = "button_cost_all_key"

.field private static final BUTTON_COST_LAST_KEY:Ljava/lang/String; = "button_cost_last_key"

.field private static final BUTTON_COST_LIMIT_KEY:Ljava/lang/String; = "button_cost_limit_key"

.field private static final BUTTON_COST_SET_KEY:Ljava/lang/String; = "button_cost_set_key"

.field private static final DBG:Z = false

.field private static final DIALOG_MESSAGE_KEY:Ljava/lang/String; = "dialog_message_key"

.field private static final DIALOG_PWD_ENTRY_KEY:Ljava/lang/String; = "dialog_pwd_entry_key"

.field private static final DISPLAY_MODE_KEY:Ljava/lang/String; = "display_mode_key"

.field private static final DISP_MODE_CB:I = -0x1

.field private static final EVENT_ALL_CALL_COMPLETE:I = 0xc8

.field private static final EVENT_CC_RESET:I = 0xc8

.field private static final EVENT_CC_SET_ACMMAX:I = 0x12c

.field private static final EVENT_CC_SET_CALL:I = 0x64

.field private static final EVENT_CC_SET_LIMIT:I = 0xc8

.field private static final EVENT_CC_SET_PUCT:I = 0x190

.field private static final EVENT_CC_UPDATE_AOC:I = 0x64

.field private static final EVENT_LAST_CALL_COMPLETE:I = 0x64

.field private static final EVENT_LIMIT_CALL_COMPLETE:I = 0x190

.field private static final EVENT_SET_CALL_COMPLETE:I = 0x12c

.field private static final EXCEPTION_ERROR:I = 0x4b0

.field private static final INITIAL_BUSY_DIALOG:I = 0x5dc

.field private static final LOG_TAG:Ljava/lang/String; = "call cost settings"

.field private static final MAX_PIN_LENGTH:I = 0x8

.field private static final MIN_PIN_LENGTH:I = 0x4

.field private static final MSG_EXCEPTION:I = 0x4b0

.field private static final MSG_OK:I = 0x44c

.field private static final MSG_RADIO_OFF:I = 0x578

.field private static final MSG_UNEXPECTED_RESPONSE:I = 0x514

.field private static final NEW_PWD_KEY:Ljava/lang/String; = "new_pwd_key"

.field private static final OLD_PWD_KEY:Ljava/lang/String; = "old_pwd_key"

.field private static final PWD_CHANGE_NEW:I = 0x1

.field private static final PWD_CHANGE_OLD:I = 0x0

.field private static final PWD_CHANGE_REENTER:I = 0x2

.field private static final PWD_CHANGE_STATE_KEY:Ljava/lang/String; = "pwd_change_state_key"

.field private static final RADIO_OFF_ERROR:I = 0x578

.field private static final RESPONSE_ERROR:I = 0x514

.field private static final SRC_TAGS:[Ljava/lang/String;

.field private static mButton:Z

.field private static mCBDataStale:Z

.field private static mIsActiveBAIC:Z

.field private static mIsActiveBICr:Z

.field private static mIsActiveBOIC:Z

.field private static mIsActiveBOICxH:Z


# instance fields
.field private mAcm:I

.field private mAcmMax:I

.field private mAppState:Lcom/android/phone/CallCostsSetting$AppState;

.field private mButtonAllCall:Lcom/android/phone/EditPinPreference;

.field private mButtonLastCall:Lcom/android/phone/EditPinPreference;

.field private mButtonLimitCall:Lcom/android/phone/EditPinPreference;

.field private mButtonSetCall:Lcom/android/phone/EditPinPreference;

.field private mCcm:I

.field private mDisplayMode:I

.field private mFDNHandler:Landroid/os/Handler;

.field private mIsBusyDialogAvailable:Z

.field private mNewPwd:Ljava/lang/String;

.field private mOldPwd:Ljava/lang/String;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPuctCurrency:Ljava/lang/String;

.field private mPuctPrice:I

.field private mPwdChangeState:I

.field private mQueryAoCComplete:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    .line 67
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "{0}"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/CallCostsSetting;->SRC_TAGS:[Ljava/lang/String;

    .line 102
    sput-boolean v3, Lcom/android/phone/CallCostsSetting;->mCBDataStale:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 128
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/CallCostsSetting;->mIsBusyDialogAvailable:Z

    .line 145
    new-instance v0, Lcom/android/phone/CallCostsSetting$1;

    invoke-direct {v0, p0}, Lcom/android/phone/CallCostsSetting$1;-><init>(Lcom/android/phone/CallCostsSetting;)V

    iput-object v0, p0, Lcom/android/phone/CallCostsSetting;->mFDNHandler:Landroid/os/Handler;

    .line 204
    new-instance v0, Lcom/android/phone/CallCostsSetting$2;

    invoke-direct {v0, p0}, Lcom/android/phone/CallCostsSetting$2;-><init>(Lcom/android/phone/CallCostsSetting;)V

    iput-object v0, p0, Lcom/android/phone/CallCostsSetting;->mQueryAoCComplete:Landroid/os/Handler;

    .line 518
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/CallCostsSetting;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/phone/CallCostsSetting;->clearLastCallMeter()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/phone/CallCostsSetting;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput p1, p0, Lcom/android/phone/CallCostsSetting;->mCcm:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/phone/CallCostsSetting;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/phone/CallCostsSetting;->clearAllCallMeter()V

    return-void
.end method

.method static synthetic access$302(Lcom/android/phone/CallCostsSetting;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput p1, p0, Lcom/android/phone/CallCostsSetting;->mAcm:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/phone/CallCostsSetting;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget v0, p0, Lcom/android/phone/CallCostsSetting;->mPuctPrice:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/phone/CallCostsSetting;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/phone/CallCostsSetting;->mPuctCurrency:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/CallCostsSetting;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget v0, p0, Lcom/android/phone/CallCostsSetting;->mAcmMax:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/phone/CallCostsSetting;Landroid/os/AsyncResult;)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/phone/CallCostsSetting;->handleUpdateAOC(Landroid/os/AsyncResult;)I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/phone/CallCostsSetting;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/phone/CallCostsSetting;->syncCCUIState()V

    return-void
.end method

.method private adjustCallCost(Lcom/android/phone/EditPinPreference;ILjava/lang/String;)V
    .registers 9
    .parameter "button"
    .parameter "price"
    .parameter "currency"

    .prologue
    .line 378
    if-nez p2, :cond_11

    .line 379
    const v3, 0x7f0900b1

    invoke-virtual {p0, v3}, Lcom/android/phone/CallCostsSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 388
    .local v2, values:Ljava/lang/String;
    :goto_d
    invoke-virtual {p1, v2}, Lcom/android/phone/EditPinPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 389
    return-void

    .line 381
    .end local v2           #values:Ljava/lang/String;
    :cond_11
    div-int/lit8 v1, p2, 0x64

    .line 382
    .local v1, realNum:I
    rem-int/lit8 v0, p2, 0x64

    .line 383
    .local v0, decNum:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2       #values:Ljava/lang/String;
    goto :goto_d
.end method

.method private adjustCallLimit(Lcom/android/phone/EditPinPreference;I)V
    .registers 5
    .parameter "button"
    .parameter "acmMax"

    .prologue
    .line 394
    if-nez p2, :cond_11

    .line 395
    const v1, 0x7f0900c4

    invoke-virtual {p0, v1}, Lcom/android/phone/CallCostsSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 401
    .local v0, values:Ljava/lang/String;
    :goto_d
    invoke-virtual {p1, v0}, Lcom/android/phone/EditPinPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 402
    return-void

    .line 397
    .end local v0           #values:Ljava/lang/String;
    :cond_11
    const v1, 0x7f0900c3

    invoke-virtual {p0, v1}, Lcom/android/phone/CallCostsSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #values:Ljava/lang/String;
    goto :goto_d
.end method

.method private adjustCallMeter(Lcom/android/phone/EditPinPreference;ILjava/lang/String;I)V
    .registers 11
    .parameter "button"
    .parameter "price"
    .parameter "currency"
    .parameter "meter"

    .prologue
    const-string v5, " "

    .line 360
    if-nez p2, :cond_2a

    .line 361
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f0900b4

    invoke-virtual {p0, v4}, Lcom/android/phone/CallCostsSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 371
    .local v2, values:Ljava/lang/String;
    :goto_26
    invoke-virtual {p1, v2}, Lcom/android/phone/EditPinPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 372
    return-void

    .line 364
    .end local v2           #values:Ljava/lang/String;
    :cond_2a
    mul-int v3, p2, p4

    div-int/lit8 v1, v3, 0x64

    .line 365
    .local v1, realNum:I
    mul-int v3, p2, p4

    rem-int/lit8 v0, v3, 0x64

    .line 366
    .local v0, decNum:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2       #values:Ljava/lang/String;
    goto :goto_26
.end method

.method private clearACM()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 457
    const/4 v0, 0x1

    .line 459
    .local v0, action:I
    iget-object v1, p0, Lcom/android/phone/CallCostsSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/CallCostsSetting;->mQueryAoCComplete:Landroid/os/Handler;

    const/16 v3, 0xc8

    invoke-static {v2, v3, v0, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v0, v4, v2}, Lcom/android/internal/telephony/Phone;->setCallCost(IILandroid/os/Message;)V

    .line 461
    return-void
.end method

.method private clearAllCallMeter()V
    .registers 1

    .prologue
    .line 323
    invoke-direct {p0}, Lcom/android/phone/CallCostsSetting;->clearACM()V

    .line 324
    return-void
.end method

.method private clearCCM()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 450
    const/4 v0, 0x0

    .line 452
    .local v0, action:I
    iget-object v1, p0, Lcom/android/phone/CallCostsSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/CallCostsSetting;->mQueryAoCComplete:Landroid/os/Handler;

    const/16 v3, 0xc8

    invoke-static {v2, v3, v0, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v0, v4, v2}, Lcom/android/internal/telephony/Phone;->setCallCost(IILandroid/os/Message;)V

    .line 454
    return-void
.end method

.method private clearLastCallMeter()V
    .registers 1

    .prologue
    .line 319
    invoke-direct {p0}, Lcom/android/phone/CallCostsSetting;->clearCCM()V

    .line 320
    return-void
.end method

.method private final displayMessage(I)V
    .registers 4
    .parameter "strId"

    .prologue
    .line 288
    invoke-virtual {p0, p1}, Lcom/android/phone/CallCostsSetting;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 289
    return-void
.end method

.method private handleUpdateAOC(Landroid/os/AsyncResult;)I
    .registers 5
    .parameter "ar"

    .prologue
    .line 336
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_7

    .line 337
    const/16 v1, 0x4b0

    .line 352
    :goto_6
    return v1

    .line 338
    :cond_7
    iget-object v1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/Throwable;

    if-eqz v1, :cond_10

    .line 342
    const/16 v1, 0x514

    goto :goto_6

    .line 344
    :cond_10
    const-string v1, "nodebug"

    const-string v2, "CCS>handleUpdateAOC3"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/gsm/CallCostInfo;

    .line 348
    .local v0, CCInfo:Lcom/android/internal/telephony/gsm/CallCostInfo;
    invoke-direct {p0, v0}, Lcom/android/phone/CallCostsSetting;->storeCCInfo(Lcom/android/internal/telephony/gsm/CallCostInfo;)V

    .line 350
    invoke-direct {p0}, Lcom/android/phone/CallCostsSetting;->syncCCUIState()V

    .line 352
    const/16 v1, 0x44c

    goto :goto_6
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 513
    const-string v0, "call cost settings"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    return-void
.end method

.method private requestPinValiditytoSIM(Lcom/android/phone/EditPinPreference;ZI)V
    .registers 9
    .parameter "preference"
    .parameter "positiveResult"
    .parameter "event"

    .prologue
    .line 252
    if-nez p2, :cond_3

    .line 272
    :goto_2
    return-void

    .line 257
    :cond_3
    invoke-virtual {p1}, Lcom/android/phone/EditPinPreference;->getText()Ljava/lang/String;

    move-result-object v1

    .line 259
    .local v1, password:Ljava/lang/String;
    const-string v2, "nodebug"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CCS>requestPinValiditytoSIM: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/phone/CallCostsSetting;->validatePin(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 264
    iget-object v2, p0, Lcom/android/phone/CallCostsSetting;->mFDNHandler:Landroid/os/Handler;

    invoke-virtual {v2, p3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 265
    .local v0, onComplete:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/phone/CallCostsSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lcom/android/internal/telephony/IccCard;->supplyPin2(Ljava/lang/String;Landroid/os/Message;)V

    .line 271
    .end local v0           #onComplete:Landroid/os/Message;
    :goto_3f
    const-string v2, ""

    invoke-virtual {p1, v2}, Lcom/android/phone/EditPinPreference;->setText(Ljava/lang/String;)V

    goto :goto_2

    .line 268
    :cond_45
    const v2, 0x7f090194

    invoke-direct {p0, v2}, Lcom/android/phone/CallCostsSetting;->displayMessage(I)V

    goto :goto_3f
.end method

.method private setACMMAX(I)V
    .registers 6
    .parameter "value"

    .prologue
    .line 464
    const/4 v0, 0x2

    .line 466
    .local v0, action:I
    iget-object v1, p0, Lcom/android/phone/CallCostsSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/CallCostsSetting;->mQueryAoCComplete:Landroid/os/Handler;

    const/16 v3, 0x12c

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v0, p1, v2}, Lcom/android/internal/telephony/Phone;->setCallCost(IILandroid/os/Message;)V

    .line 468
    return-void
.end method

.method private setCallMeter()V
    .registers 3

    .prologue
    .line 327
    iget v0, p0, Lcom/android/phone/CallCostsSetting;->mPuctPrice:I

    iget-object v1, p0, Lcom/android/phone/CallCostsSetting;->mPuctCurrency:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/phone/CallCostsSetting;->setPUCT(ILjava/lang/String;)V

    .line 328
    return-void
.end method

.method private setCallMeterLimit()V
    .registers 2

    .prologue
    .line 331
    iget v0, p0, Lcom/android/phone/CallCostsSetting;->mAcmMax:I

    invoke-direct {p0, v0}, Lcom/android/phone/CallCostsSetting;->setACMMAX(I)V

    .line 332
    return-void
.end method

.method private setPUCT(ILjava/lang/String;)V
    .registers 6
    .parameter "price"
    .parameter "currency"

    .prologue
    .line 471
    iget-object v0, p0, Lcom/android/phone/CallCostsSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/CallCostsSetting;->mQueryAoCComplete:Landroid/os/Handler;

    const/16 v2, 0x190

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Lcom/android/internal/telephony/Phone;->setCallCostPuct(ILjava/lang/String;Landroid/os/Message;)V

    .line 481
    return-void
.end method

.method private storeCCInfo(Lcom/android/internal/telephony/gsm/CallCostInfo;)V
    .registers 6
    .parameter "aocInfo"

    .prologue
    const-string v3, ":"

    .line 405
    const-string v0, "nodebug"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CCS>storeCCInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/internal/telephony/gsm/CallCostInfo;->ccm:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/internal/telephony/gsm/CallCostInfo;->acm:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/internal/telephony/gsm/CallCostInfo;->acmMax:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/internal/telephony/gsm/CallCostInfo;->puctPrice:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/internal/telephony/gsm/CallCostInfo;->puctCurrency:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    iget v0, p1, Lcom/android/internal/telephony/gsm/CallCostInfo;->ccm:I

    iput v0, p0, Lcom/android/phone/CallCostsSetting;->mCcm:I

    .line 411
    iget v0, p1, Lcom/android/internal/telephony/gsm/CallCostInfo;->acm:I

    iput v0, p0, Lcom/android/phone/CallCostsSetting;->mAcm:I

    .line 413
    iget v0, p1, Lcom/android/internal/telephony/gsm/CallCostInfo;->acmMax:I

    iget v1, p1, Lcom/android/internal/telephony/gsm/CallCostInfo;->acm:I

    if-ge v0, v1, :cond_6b

    iget v0, p1, Lcom/android/internal/telephony/gsm/CallCostInfo;->acmMax:I

    if-eqz v0, :cond_6b

    .line 414
    iget v0, p1, Lcom/android/internal/telephony/gsm/CallCostInfo;->acm:I

    iput v0, p0, Lcom/android/phone/CallCostsSetting;->mAcmMax:I

    .line 419
    :goto_62
    iget v0, p1, Lcom/android/internal/telephony/gsm/CallCostInfo;->puctPrice:I

    iput v0, p0, Lcom/android/phone/CallCostsSetting;->mPuctPrice:I

    .line 420
    iget-object v0, p1, Lcom/android/internal/telephony/gsm/CallCostInfo;->puctCurrency:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/CallCostsSetting;->mPuctCurrency:Ljava/lang/String;

    .line 433
    return-void

    .line 416
    :cond_6b
    iget v0, p1, Lcom/android/internal/telephony/gsm/CallCostInfo;->acmMax:I

    iput v0, p0, Lcom/android/phone/CallCostsSetting;->mAcmMax:I

    goto :goto_62
.end method

.method private syncCCUIState()V
    .registers 5

    .prologue
    .line 436
    iget-object v0, p0, Lcom/android/phone/CallCostsSetting;->mButtonLastCall:Lcom/android/phone/EditPinPreference;

    iget v1, p0, Lcom/android/phone/CallCostsSetting;->mPuctPrice:I

    iget-object v2, p0, Lcom/android/phone/CallCostsSetting;->mPuctCurrency:Ljava/lang/String;

    iget v3, p0, Lcom/android/phone/CallCostsSetting;->mCcm:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/phone/CallCostsSetting;->adjustCallMeter(Lcom/android/phone/EditPinPreference;ILjava/lang/String;I)V

    .line 438
    iget-object v0, p0, Lcom/android/phone/CallCostsSetting;->mButtonAllCall:Lcom/android/phone/EditPinPreference;

    iget v1, p0, Lcom/android/phone/CallCostsSetting;->mPuctPrice:I

    iget-object v2, p0, Lcom/android/phone/CallCostsSetting;->mPuctCurrency:Ljava/lang/String;

    iget v3, p0, Lcom/android/phone/CallCostsSetting;->mAcm:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/phone/CallCostsSetting;->adjustCallMeter(Lcom/android/phone/EditPinPreference;ILjava/lang/String;I)V

    .line 440
    iget-object v0, p0, Lcom/android/phone/CallCostsSetting;->mButtonSetCall:Lcom/android/phone/EditPinPreference;

    iget v1, p0, Lcom/android/phone/CallCostsSetting;->mPuctPrice:I

    iget-object v2, p0, Lcom/android/phone/CallCostsSetting;->mPuctCurrency:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/phone/CallCostsSetting;->adjustCallCost(Lcom/android/phone/EditPinPreference;ILjava/lang/String;)V

    .line 442
    iget-object v0, p0, Lcom/android/phone/CallCostsSetting;->mButtonLimitCall:Lcom/android/phone/EditPinPreference;

    iget v1, p0, Lcom/android/phone/CallCostsSetting;->mAcmMax:I

    invoke-direct {p0, v0, v1}, Lcom/android/phone/CallCostsSetting;->adjustCallLimit(Lcom/android/phone/EditPinPreference;I)V

    .line 443
    return-void
.end method

.method private updateAOC()V
    .registers 4

    .prologue
    .line 446
    iget-object v0, p0, Lcom/android/phone/CallCostsSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/CallCostsSetting;->mQueryAoCComplete:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getCallCost(Landroid/os/Message;)V

    .line 447
    return-void
.end method

.method private validatePin(Ljava/lang/String;Z)Z
    .registers 6
    .parameter "pin"
    .parameter "isPUK"

    .prologue
    const/16 v2, 0x8

    .line 276
    if-eqz p2, :cond_15

    move v0, v2

    .line 279
    .local v0, pinMinimum:I
    :goto_5
    if-eqz p1, :cond_13

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v0, :cond_13

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_18

    .line 281
    :cond_13
    const/4 v1, 0x0

    .line 283
    :goto_14
    return v1

    .line 276
    .end local v0           #pinMinimum:I
    :cond_15
    const/4 v1, 0x4

    move v0, v1

    goto :goto_5

    .line 283
    .restart local v0       #pinMinimum:I
    :cond_18
    const/4 v1, 0x1

    goto :goto_14
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 7
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v1, 0x0

    .line 294
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 296
    const/4 v0, -0x1

    if-ne p2, v0, :cond_44

    .line 297
    const/16 v0, 0x64

    if-ne p1, v0, :cond_45

    .line 298
    const-string v0, "unit_price"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/CallCostsSetting;->mPuctPrice:I

    .line 299
    const-string v0, "unit_currency"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallCostsSetting;->mPuctCurrency:Ljava/lang/String;

    .line 301
    const-string v0, "nodebug"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CCS>Result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/CallCostsSetting;->mPuctPrice:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CallCostsSetting;->mPuctCurrency:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    invoke-direct {p0}, Lcom/android/phone/CallCostsSetting;->setCallMeter()V

    .line 316
    :cond_44
    :goto_44
    return-void

    .line 308
    :cond_45
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_44

    .line 309
    const-string v0, "unit_limit"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/CallCostsSetting;->mAcmMax:I

    .line 311
    invoke-direct {p0}, Lcom/android/phone/CallCostsSetting;->setCallMeterLimit()V

    goto :goto_44
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "icicle"

    .prologue
    .line 485
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 487
    const v1, 0x7f050001

    invoke-virtual {p0, v1}, Lcom/android/phone/CallCostsSetting;->addPreferencesFromResource(I)V

    .line 489
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CallCostsSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 492
    invoke-virtual {p0}, Lcom/android/phone/CallCostsSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 493
    .local v0, prefSet:Landroid/preference/PreferenceScreen;
    const-string v1, "button_cost_last_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/phone/EditPinPreference;

    iput-object v1, p0, Lcom/android/phone/CallCostsSetting;->mButtonLastCall:Lcom/android/phone/EditPinPreference;

    .line 494
    const-string v1, "button_cost_all_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/phone/EditPinPreference;

    iput-object v1, p0, Lcom/android/phone/CallCostsSetting;->mButtonAllCall:Lcom/android/phone/EditPinPreference;

    .line 495
    const-string v1, "button_cost_set_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/phone/EditPinPreference;

    iput-object v1, p0, Lcom/android/phone/CallCostsSetting;->mButtonSetCall:Lcom/android/phone/EditPinPreference;

    .line 496
    const-string v1, "button_cost_limit_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/phone/EditPinPreference;

    iput-object v1, p0, Lcom/android/phone/CallCostsSetting;->mButtonLimitCall:Lcom/android/phone/EditPinPreference;

    .line 499
    iget-object v1, p0, Lcom/android/phone/CallCostsSetting;->mButtonLastCall:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v1, p0}, Lcom/android/phone/EditPinPreference;->setOnPinEnteredListener(Lcom/android/phone/EditPinPreference$OnPinEnteredListener;)V

    .line 500
    iget-object v1, p0, Lcom/android/phone/CallCostsSetting;->mButtonAllCall:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v1, p0}, Lcom/android/phone/EditPinPreference;->setOnPinEnteredListener(Lcom/android/phone/EditPinPreference$OnPinEnteredListener;)V

    .line 501
    iget-object v1, p0, Lcom/android/phone/CallCostsSetting;->mButtonSetCall:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v1, p0}, Lcom/android/phone/EditPinPreference;->setOnPinEnteredListener(Lcom/android/phone/EditPinPreference$OnPinEnteredListener;)V

    .line 502
    iget-object v1, p0, Lcom/android/phone/CallCostsSetting;->mButtonLimitCall:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v1, p0}, Lcom/android/phone/EditPinPreference;->setOnPinEnteredListener(Lcom/android/phone/EditPinPreference$OnPinEnteredListener;)V

    .line 504
    invoke-direct {p0}, Lcom/android/phone/CallCostsSetting;->updateAOC()V

    .line 507
    if-nez p1, :cond_54

    .line 510
    :cond_54
    return-void
.end method

.method public onPinEntered(Lcom/android/phone/EditPinPreference;Z)V
    .registers 4
    .parameter "preference"
    .parameter "positiveResult"

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/phone/CallCostsSetting;->mButtonLastCall:Lcom/android/phone/EditPinPreference;

    if-ne p1, v0, :cond_a

    .line 236
    const/16 v0, 0x64

    invoke-direct {p0, p1, p2, v0}, Lcom/android/phone/CallCostsSetting;->requestPinValiditytoSIM(Lcom/android/phone/EditPinPreference;ZI)V

    .line 248
    :cond_9
    :goto_9
    return-void

    .line 238
    :cond_a
    iget-object v0, p0, Lcom/android/phone/CallCostsSetting;->mButtonAllCall:Lcom/android/phone/EditPinPreference;

    if-ne p1, v0, :cond_14

    .line 239
    const/16 v0, 0xc8

    invoke-direct {p0, p1, p2, v0}, Lcom/android/phone/CallCostsSetting;->requestPinValiditytoSIM(Lcom/android/phone/EditPinPreference;ZI)V

    goto :goto_9

    .line 241
    :cond_14
    iget-object v0, p0, Lcom/android/phone/CallCostsSetting;->mButtonSetCall:Lcom/android/phone/EditPinPreference;

    if-ne p1, v0, :cond_1e

    .line 242
    const/16 v0, 0x12c

    invoke-direct {p0, p1, p2, v0}, Lcom/android/phone/CallCostsSetting;->requestPinValiditytoSIM(Lcom/android/phone/EditPinPreference;ZI)V

    goto :goto_9

    .line 244
    :cond_1e
    iget-object v0, p0, Lcom/android/phone/CallCostsSetting;->mButtonLimitCall:Lcom/android/phone/EditPinPreference;

    if-ne p1, v0, :cond_9

    .line 245
    const/16 v0, 0x190

    invoke-direct {p0, p1, p2, v0}, Lcom/android/phone/CallCostsSetting;->requestPinValiditytoSIM(Lcom/android/phone/EditPinPreference;ZI)V

    goto :goto_9
.end method
