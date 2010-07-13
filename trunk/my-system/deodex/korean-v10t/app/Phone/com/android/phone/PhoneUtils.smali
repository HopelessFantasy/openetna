.class public Lcom/android/phone/PhoneUtils;
.super Ljava/lang/Object;
.source "PhoneUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/PhoneUtils$6;,
        Lcom/android/phone/PhoneUtils$CallerInfoToken;,
        Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException;,
        Lcom/android/phone/PhoneUtils$ConnectionHandler;
    }
.end annotation


# static fields
.field static final ADD_CALL_MODE_KEY:Ljava/lang/String; = "add_call_mode"

.field static final AUDIO_IDLE:I = 0x0

.field static final AUDIO_OFFHOOK:I = 0x2

.field static final AUDIO_RINGING:I = 0x1

.field static final CALL_STATUS_DIALED:I = 0x0

.field static final CALL_STATUS_DIALED_MMI:I = 0x1

.field static final CALL_STATUS_FAILED:I = 0x2

.field static final CALL_STATUS_FAILED_ECALL:I = 0x3

.field static final CALL_STATUS_FDN_BLOCKED:I = 0x4

.field private static final DBG:Z = false

.field private static final DBG_SETAUDIOMODE_STACK:Z = false

.field private static ExtendedNetworkServiceConnection:Landroid/content/ServiceConnection; = null

.field private static final LOG_TAG:Ljava/lang/String; = "PhoneUtils"

.field private static final PHONE_STATE_CHANGED:I = -0x1

.field private static final QUERY_TOKEN:I = -0x1

.field private static mConnectionHandler:Lcom/android/phone/PhoneUtils$ConnectionHandler;

.field private static mMmiTimeoutCbMsg:Landroid/os/Message;

.field private static mNwService:Lcom/android/internal/telephony/IExtendedNetworkService;

.field private static sAudioBehaviourState:I

.field static sCallerInfoQueryListener:Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;

.field private static sConnectionMuteTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static sIsSpeakerEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 88
    sput v0, Lcom/android/phone/PhoneUtils;->sAudioBehaviourState:I

    .line 91
    sput-boolean v0, Lcom/android/phone/PhoneUtils;->sIsSpeakerEnabled:Z

    .line 94
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/phone/PhoneUtils;->sConnectionMuteTable:Ljava/util/Hashtable;

    .line 104
    sput-object v1, Lcom/android/phone/PhoneUtils;->mNwService:Lcom/android/internal/telephony/IExtendedNetworkService;

    .line 106
    sput-object v1, Lcom/android/phone/PhoneUtils;->mMmiTimeoutCbMsg:Landroid/os/Message;

    .line 168
    new-instance v0, Lcom/android/phone/PhoneUtils$1;

    invoke-direct {v0}, Lcom/android/phone/PhoneUtils$1;-><init>()V

    sput-object v0, Lcom/android/phone/PhoneUtils;->ExtendedNetworkServiceConnection:Landroid/content/ServiceConnection;

    .line 1185
    new-instance v0, Lcom/android/phone/PhoneUtils$4;

    invoke-direct {v0}, Lcom/android/phone/PhoneUtils$4;-><init>()V

    sput-object v0, Lcom/android/phone/PhoneUtils;->sCallerInfoQueryListener:Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    return-void
.end method

.method static synthetic access$000()Ljava/util/Hashtable;
    .registers 1

    .prologue
    .line 65
    sget-object v0, Lcom/android/phone/PhoneUtils;->sConnectionMuteTable:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/IExtendedNetworkService;)Lcom/android/internal/telephony/IExtendedNetworkService;
    .registers 1
    .parameter "x0"

    .prologue
    .line 65
    sput-object p0, Lcom/android/phone/PhoneUtils;->mNwService:Lcom/android/internal/telephony/IExtendedNetworkService;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/Phone;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 65
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->internalStartNewCall(Lcom/android/internal/telephony/Phone;)V

    return-void
.end method

.method static answerAndEndActive(Lcom/android/internal/telephony/Phone;)Z
    .registers 3
    .parameter "phone"

    .prologue
    .line 405
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 406
    .local v0, rc:Lcom/android/internal/telephony/Connection;
    if-eqz v0, :cond_d

    .line 407
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->disableRinger()V

    .line 410
    :cond_d
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->hangupActiveCall(Lcom/android/internal/telephony/Phone;)Z

    move-result v1

    return v1
.end method

.method static answerAndEndActiveForBT(Lcom/android/internal/telephony/Phone;)Z
    .registers 7
    .parameter "phone"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v5, "PhoneUtils"

    .line 416
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 417
    .local v1, RingingCall:Lcom/android/internal/telephony/Call;
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 419
    .local v0, BackgroundCall:Lcom/android/internal/telephony/Call;
    if-eqz v1, :cond_2d

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 420
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->hangupActiveCall(Lcom/android/internal/telephony/Phone;)Z

    move-result v2

    if-nez v2, :cond_23

    .line 421
    const-string v2, "PhoneUtils"

    const-string v2, "end active failed!"

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 437
    :goto_22
    return v2

    .line 425
    :cond_23
    const-wide/16 v2, 0xfa

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 426
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Phone;)Z

    move-result v2

    goto :goto_22

    .line 427
    :cond_2d
    if-eqz v0, :cond_49

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v2

    if-nez v2, :cond_49

    .line 430
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Phone;)V

    .line 431
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->hangupHoldingCall(Lcom/android/internal/telephony/Phone;)Z

    move-result v2

    if-nez v2, :cond_47

    .line 432
    const-string v2, "PhoneUtils"

    const-string v2, "end hold failed!"

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 433
    goto :goto_22

    :cond_47
    move v2, v4

    .line 435
    goto :goto_22

    :cond_49
    move v2, v4

    .line 437
    goto :goto_22
.end method

.method static answerAndEndHolding(Lcom/android/internal/telephony/Phone;)Z
    .registers 3
    .parameter "phone"

    .prologue
    .line 385
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->hangupHoldingCall(Lcom/android/internal/telephony/Phone;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 386
    const-string v0, "PhoneUtils"

    const-string v1, "end holding failed!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    const/4 v0, 0x0

    .line 391
    :goto_e
    return v0

    :cond_f
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Phone;)Z

    move-result v0

    goto :goto_e
.end method

.method static answerCall(Lcom/android/internal/telephony/Phone;)Z
    .registers 7
    .parameter "phone"

    .prologue
    const/4 v4, 0x2

    .line 220
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->getRinger()Lcom/android/phone/Ringer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/Ringer;->stopRing()V

    .line 222
    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->setAudioControlState(I)V

    .line 224
    const/4 v0, 0x0

    .line 225
    .local v0, answered:Z
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 227
    .local v1, call:Lcom/android/internal/telephony/Call;
    if-eqz v1, :cond_28

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v3

    if-eqz v3, :cond_28

    .line 231
    :try_start_1c
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->acceptCall()V

    .line 232
    const/4 v0, 0x1

    .line 233
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v3, v4}, Lcom/android/phone/PhoneUtils;->setAudioMode(Landroid/content/Context;I)V
    :try_end_28
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1c .. :try_end_28} :catch_29

    .line 238
    :cond_28
    :goto_28
    return v0

    .line 234
    :catch_29
    move-exception v3

    move-object v2, v3

    .line 235
    .local v2, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v3, "PhoneUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "answerCall: caught "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_28
.end method

.method private static audioModeToString(I)Ljava/lang/String;
    .registers 2
    .parameter "mode"

    .prologue
    .line 1544
    packed-switch p0, :pswitch_data_18

    .line 1550
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_7
    return-object v0

    .line 1545
    :pswitch_8
    const-string v0, "MODE_INVALID"

    goto :goto_7

    .line 1546
    :pswitch_b
    const-string v0, "MODE_CURRENT"

    goto :goto_7

    .line 1547
    :pswitch_e
    const-string v0, "MODE_NORMAL"

    goto :goto_7

    .line 1548
    :pswitch_11
    const-string v0, "MODE_RINGTONE"

    goto :goto_7

    .line 1549
    :pswitch_14
    const-string v0, "MODE_IN_CALL"

    goto :goto_7

    .line 1544
    nop

    :pswitch_data_18
    .packed-switch -0x2
        :pswitch_8
        :pswitch_b
        :pswitch_e
        :pswitch_11
        :pswitch_14
    .end packed-switch
.end method

.method static cancelMmiCode(Lcom/android/internal/telephony/Phone;)Z
    .registers 8
    .parameter "phone"

    .prologue
    const/4 v6, 0x0

    .line 910
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPendingMmiCodes()Ljava/util/List;

    move-result-object v4

    .line 911
    .local v4, pendingMmis:Ljava/util/List;,"Ljava/util/List<+Lcom/android/internal/telephony/MmiCode;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    .line 914
    .local v1, count:I
    const/4 v0, 0x0

    .line 915
    .local v0, canceled:Z
    if-lez v1, :cond_1d

    .line 920
    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/MmiCode;

    .line 921
    .local v3, mmiCode:Lcom/android/internal/telephony/MmiCode;
    invoke-interface {v3}, Lcom/android/internal/telephony/MmiCode;->isCancelable()Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 922
    invoke-interface {v3}, Lcom/android/internal/telephony/MmiCode;->cancel()V

    .line 923
    const/4 v0, 0x1

    .line 928
    .end local v3           #mmiCode:Lcom/android/internal/telephony/MmiCode;
    :cond_1d
    sget-object v5, Lcom/android/phone/PhoneUtils;->mNwService:Lcom/android/internal/telephony/IExtendedNetworkService;

    if-eqz v5, :cond_26

    .line 930
    :try_start_21
    sget-object v5, Lcom/android/phone/PhoneUtils;->mNwService:Lcom/android/internal/telephony/IExtendedNetworkService;

    invoke-interface {v5}, Lcom/android/internal/telephony/IExtendedNetworkService;->clearMmiString()V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_26} :catch_2d

    .line 935
    :cond_26
    :goto_26
    sget-object v5, Lcom/android/phone/PhoneUtils;->mMmiTimeoutCbMsg:Landroid/os/Message;

    if-eqz v5, :cond_2c

    .line 936
    sput-object v6, Lcom/android/phone/PhoneUtils;->mMmiTimeoutCbMsg:Landroid/os/Message;

    .line 938
    :cond_2c
    return v0

    .line 931
    :catch_2d
    move-exception v5

    move-object v2, v5

    .line 932
    .local v2, e:Landroid/os/RemoteException;
    sput-object v6, Lcom/android/phone/PhoneUtils;->mNwService:Lcom/android/internal/telephony/IExtendedNetworkService;

    goto :goto_26
.end method

.method static displayMMIComplete(Lcom/android/internal/telephony/Phone;Landroid/content/Context;Lcom/android/internal/telephony/MmiCode;Landroid/os/Message;Landroid/app/AlertDialog;)V
    .registers 8
    .parameter "phone"
    .parameter "context"
    .parameter "mmiCode"
    .parameter "dismissCallbackMessage"
    .parameter "previousAlert"

    .prologue
    .line 702
    const/4 v1, 0x0

    .line 703
    .local v1, title:I
    invoke-interface {p2}, Lcom/android/internal/telephony/MmiCode;->getState()Lcom/android/internal/telephony/MmiCode$State;

    move-result-object v0

    .line 707
    .local v0, state:Lcom/android/internal/telephony/MmiCode$State;
    sget-object p3, Lcom/android/phone/PhoneUtils;->mMmiTimeoutCbMsg:Landroid/os/Message;

    .end local p3
    if-eqz p3, :cond_19

    .line 709
    :try_start_9
    sget-object p3, Lcom/android/phone/PhoneUtils;->mMmiTimeoutCbMsg:Landroid/os/Message;

    invoke-virtual {p3}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object p3

    sget-object v2, Lcom/android/phone/PhoneUtils;->mMmiTimeoutCbMsg:Landroid/os/Message;

    iget v2, v2, Landroid/os/Message;->what:I

    invoke-virtual {p3, v2}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_16
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_16} :catch_15f

    .line 713
    :goto_16
    const/4 p3, 0x0

    sput-object p3, Lcom/android/phone/PhoneUtils;->mMmiTimeoutCbMsg:Landroid/os/Message;

    .line 717
    :cond_19
    sget-object p3, Lcom/android/phone/PhoneUtils$6;->$SwitchMap$com$android$internal$telephony$MmiCode$State:[I

    invoke-virtual {v0}, Lcom/android/internal/telephony/MmiCode$State;->ordinal()I

    move-result v2

    aget p3, p3, v2

    packed-switch p3, :pswitch_data_166

    .line 743
    new-instance p0, Ljava/lang/IllegalStateException;

    .end local p0
    new-instance p1, Ljava/lang/StringBuilder;

    .end local p1
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unexpected MmiCode state: "

    .end local p2
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 720
    .restart local p0
    .restart local p1
    .restart local p2
    :pswitch_3d
    invoke-interface {p2}, Lcom/android/internal/telephony/MmiCode;->getMessage()Ljava/lang/CharSequence;

    move-result-object p3

    .local p3, text:Ljava/lang/CharSequence;
    move v2, v1

    .end local v1           #title:I
    .local v2, title:I
    move-object v1, p3

    .line 746
    .end local p3           #text:Ljava/lang/CharSequence;
    .local v1, text:Ljava/lang/CharSequence;
    :goto_43
    if-eqz p4, :cond_48

    .line 747
    invoke-virtual {p4}, Landroid/app/AlertDialog;->dismiss()V

    .line 752
    :cond_48
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object p3

    .line 753
    .local p3, app:Lcom/android/phone/PhoneApp;
    invoke-virtual {p3}, Lcom/android/phone/PhoneApp;->getPUKEntryActivity()Landroid/app/Activity;

    move-result-object p4

    .end local p4
    if-eqz p4, :cond_aa

    sget-object p4, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    if-ne v0, p4, :cond_aa

    .line 758
    new-instance p0, Landroid/app/ProgressDialog;

    .end local p0
    invoke-direct {p0, p3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 759
    .local p0, pd:Landroid/app/ProgressDialog;
    invoke-virtual {p0, v2}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 760
    invoke-virtual {p0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 761
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 762
    .end local p1
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 763
    invoke-virtual {p0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 p2, 0x7d8

    invoke-virtual {p1, p2}, Landroid/view/Window;->setType(I)V

    .line 764
    .end local p2
    invoke-virtual {p0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/view/Window;->addFlags(I)V

    .line 767
    invoke-virtual {p0}, Landroid/app/ProgressDialog;->show()V

    .line 771
    invoke-virtual {p3, p0}, Lcom/android/phone/PhoneApp;->setPukEntryProgressDialog(Landroid/app/ProgressDialog;)V

    move-object p0, v1

    .line 899
    .end local v0           #state:Lcom/android/internal/telephony/MmiCode$State;
    .end local v1           #text:Ljava/lang/CharSequence;
    .end local p3           #app:Lcom/android/phone/PhoneApp;
    .local p0, text:Ljava/lang/CharSequence;
    :cond_81
    :goto_81
    return-void

    .line 724
    .end local v2           #title:I
    .restart local v0       #state:Lcom/android/internal/telephony/MmiCode$State;
    .local v1, title:I
    .local p0, phone:Lcom/android/internal/telephony/Phone;
    .restart local p1
    .restart local p2
    .restart local p4
    :pswitch_82
    const p3, 0x7f090028

    invoke-virtual {p1, p3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p3

    .local p3, text:Ljava/lang/CharSequence;
    move v2, v1

    .end local v1           #title:I
    .restart local v2       #title:I
    move-object v1, p3

    .line 725
    .end local p3           #text:Ljava/lang/CharSequence;
    .local v1, text:Ljava/lang/CharSequence;
    goto :goto_43

    .line 727
    .end local v2           #title:I
    .local v1, title:I
    :pswitch_8c
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/phone/PhoneApp;->getPUKEntryActivity()Landroid/app/Activity;

    move-result-object p3

    if-eqz p3, :cond_a3

    .line 730
    const v1, 0x1040034

    .line 731
    const p3, 0x7f090051

    invoke-virtual {p1, p3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p3

    .restart local p3       #text:Ljava/lang/CharSequence;
    move v2, v1

    .end local v1           #title:I
    .restart local v2       #title:I
    move-object v1, p3

    .line 732
    .end local p3           #text:Ljava/lang/CharSequence;
    .local v1, text:Ljava/lang/CharSequence;
    goto :goto_43

    .line 739
    .end local v2           #title:I
    .local v1, title:I
    :cond_a3
    :pswitch_a3
    invoke-interface {p2}, Lcom/android/internal/telephony/MmiCode;->getMessage()Ljava/lang/CharSequence;

    move-result-object p3

    .restart local p3       #text:Ljava/lang/CharSequence;
    move v2, v1

    .end local v1           #title:I
    .restart local v2       #title:I
    move-object v1, p3

    .line 741
    .end local p3           #text:Ljava/lang/CharSequence;
    .local v1, text:Ljava/lang/CharSequence;
    goto :goto_43

    .line 776
    .end local p4
    .local p3, app:Lcom/android/phone/PhoneApp;
    :cond_aa
    invoke-virtual {p3}, Lcom/android/phone/PhoneApp;->getPUKEntryActivity()Landroid/app/Activity;

    move-result-object p4

    if-eqz p4, :cond_b4

    .line 777
    const/4 p4, 0x0

    invoke-virtual {p3, p4}, Lcom/android/phone/PhoneApp;->setPukEntryActivity(Landroid/app/Activity;)V

    .line 782
    :cond_b4
    sget-object p3, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    .end local p3           #app:Lcom/android/phone/PhoneApp;
    if-eq v0, p3, :cond_fb

    .line 786
    sget-object p0, Lcom/android/phone/PhoneUtils;->mNwService:Lcom/android/internal/telephony/IExtendedNetworkService;

    .end local p0           #phone:Lcom/android/internal/telephony/Phone;
    if-eqz p0, :cond_162

    .line 788
    :try_start_bc
    sget-object p0, Lcom/android/phone/PhoneUtils;->mNwService:Lcom/android/internal/telephony/IExtendedNetworkService;

    invoke-interface {p0, v1}, Lcom/android/internal/telephony/IExtendedNetworkService;->getUserMessage(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    :try_end_c1
    .catch Landroid/os/RemoteException; {:try_start_bc .. :try_end_c1} :catch_f5

    move-result-object p0

    .line 793
    .end local v1           #text:Ljava/lang/CharSequence;
    .local p0, text:Ljava/lang/CharSequence;
    :goto_c2
    if-eqz p0, :cond_81

    move-object p2, p0

    .line 800
    .end local p0           #text:Ljava/lang/CharSequence;
    .local p2, text:Ljava/lang/CharSequence;
    :goto_c5
    new-instance p0, Landroid/app/AlertDialog$Builder;

    invoke-direct {p0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x7f09003d

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .end local p1
    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    .line 806
    .local p0, newDialog:Landroid/app/AlertDialog;
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 p3, 0x7d8

    invoke-virtual {p1, p3}, Landroid/view/Window;->setType(I)V

    .line 808
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 p3, 0x2

    invoke-virtual {p1, p3}, Landroid/view/Window;->addFlags(I)V

    .line 811
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    move-object p0, p2

    .line 812
    .end local p2           #text:Ljava/lang/CharSequence;
    .local p0, text:Ljava/lang/CharSequence;
    goto :goto_81

    .line 789
    .end local p0           #text:Ljava/lang/CharSequence;
    .restart local v1       #text:Ljava/lang/CharSequence;
    .restart local p1
    .local p2, mmiCode:Lcom/android/internal/telephony/MmiCode;
    :catch_f5
    move-exception p0

    .line 790
    .local p0, e:Landroid/os/RemoteException;
    const/4 p0, 0x0

    sput-object p0, Lcom/android/phone/PhoneUtils;->mNwService:Lcom/android/internal/telephony/IExtendedNetworkService;

    .end local p0           #e:Landroid/os/RemoteException;
    move-object p0, v1

    .end local v1           #text:Ljava/lang/CharSequence;
    .local p0, text:Ljava/lang/CharSequence;
    goto :goto_c2

    .line 838
    .restart local v1       #text:Ljava/lang/CharSequence;
    .local p0, phone:Lcom/android/internal/telephony/Phone;
    :cond_fb
    const-string p3, "layout_inflater"

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/LayoutInflater;

    .line 840
    .local p3, inflater:Landroid/view/LayoutInflater;
    const p4, 0x7f030009

    const/4 v0, 0x0

    invoke-virtual {p3, p4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .end local v0           #state:Lcom/android/internal/telephony/MmiCode$State;
    move-result-object p3

    .line 843
    .local p3, dialogView:Landroid/view/View;
    const p4, 0x7f06003b

    invoke-virtual {p3, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/EditText;

    .line 846
    .local p4, inputText:Landroid/widget/EditText;
    new-instance v0, Lcom/android/phone/PhoneUtils$2;

    invoke-direct {v0, p0, p4, p2}, Lcom/android/phone/PhoneUtils$2;-><init>(Lcom/android/internal/telephony/Phone;Landroid/widget/EditText;Lcom/android/internal/telephony/MmiCode;)V

    .line 863
    .local v0, mUSSDDialogListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance p2, Landroid/app/AlertDialog$Builder;

    .end local p2           #mmiCode:Lcom/android/internal/telephony/MmiCode;
    invoke-direct {p2, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .end local p1
    invoke-virtual {p1, p3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f090043

    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f090029

    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p2

    .line 873
    .local p2, newDialog:Landroid/app/AlertDialog;
    new-instance p1, Lcom/android/phone/PhoneUtils$3;

    invoke-direct {p1, p0, p4, p2}, Lcom/android/phone/PhoneUtils$3;-><init>(Lcom/android/internal/telephony/Phone;Landroid/widget/EditText;Landroid/app/AlertDialog;)V

    .line 886
    .local p1, mUSSDDialogInputListener:Landroid/view/View$OnKeyListener;
    invoke-virtual {p4, p1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 887
    invoke-virtual {p4}, Landroid/widget/EditText;->requestFocus()Z

    .line 890
    invoke-virtual {p2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    .end local p0           #phone:Lcom/android/internal/telephony/Phone;
    const/16 p1, 0x7d8

    invoke-virtual {p0, p1}, Landroid/view/Window;->setType(I)V

    .line 892
    .end local p1           #mUSSDDialogInputListener:Landroid/view/View$OnKeyListener;
    invoke-virtual {p2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/view/Window;->addFlags(I)V

    .line 896
    invoke-virtual {p2}, Landroid/app/AlertDialog;->show()V

    move-object p0, v1

    .end local v1           #text:Ljava/lang/CharSequence;
    .local p0, text:Ljava/lang/CharSequence;
    goto/16 :goto_81

    .line 711
    .end local v2           #title:I
    .end local p3           #dialogView:Landroid/view/View;
    .local v0, state:Lcom/android/internal/telephony/MmiCode$State;
    .local v1, title:I
    .local p0, phone:Lcom/android/internal/telephony/Phone;
    .local p1, context:Landroid/content/Context;
    .local p2, mmiCode:Lcom/android/internal/telephony/MmiCode;
    .local p4, previousAlert:Landroid/app/AlertDialog;
    :catch_15f
    move-exception p3

    goto/16 :goto_16

    .end local p0           #phone:Lcom/android/internal/telephony/Phone;
    .end local p4           #previousAlert:Landroid/app/AlertDialog;
    .local v1, text:Ljava/lang/CharSequence;
    .restart local v2       #title:I
    :cond_162
    move-object p2, v1

    .end local v1           #text:Ljava/lang/CharSequence;
    .local p2, text:Ljava/lang/CharSequence;
    goto/16 :goto_c5

    .line 717
    nop

    :pswitch_data_166
    .packed-switch 0x1
        :pswitch_3d
        :pswitch_82
        :pswitch_8c
        :pswitch_a3
    .end packed-switch
.end method

.method static displayMMIInitiate(Landroid/content/Context;Lcom/android/internal/telephony/MmiCode;Landroid/os/Message;Landroid/app/Dialog;)Landroid/app/Dialog;
    .registers 15
    .parameter "context"
    .parameter "mmiCode"
    .parameter "buttonCallbackMessage"
    .parameter "previousAlert"

    .prologue
    const v10, 0x7f090027

    const/4 v9, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v6, 0x0

    .line 594
    if-eqz p3, :cond_c

    .line 595
    invoke-virtual {p3}, Landroid/app/Dialog;->dismiss()V

    .line 627
    :cond_c
    sget-object v5, Lcom/android/phone/PhoneUtils;->mNwService:Lcom/android/internal/telephony/IExtendedNetworkService;

    if-eqz v5, :cond_56

    .line 630
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-direct {v2, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 631
    .local v2, pd:Landroid/app/ProgressDialog;
    const-string v4, ""

    .line 633
    .local v4, textmsg:Ljava/lang/CharSequence;
    :try_start_17
    sget-object v5, Lcom/android/phone/PhoneUtils;->mNwService:Lcom/android/internal/telephony/IExtendedNetworkService;

    invoke-interface {v5}, Lcom/android/internal/telephony/IExtendedNetworkService;->getMmiRunningText()Ljava/lang/CharSequence;
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1c} :catch_48

    move-result-object v4

    .line 640
    :goto_1d
    invoke-virtual {v2, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 641
    invoke-virtual {v2, v6}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 642
    invoke-virtual {v2, v7}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 643
    invoke-virtual {v2}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/view/Window;->addFlags(I)V

    .line 644
    invoke-virtual {v2}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7d8

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    .line 645
    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    .line 647
    sput-object p2, Lcom/android/phone/PhoneUtils;->mMmiTimeoutCbMsg:Landroid/os/Message;

    .line 649
    :try_start_3b
    sget-object v5, Lcom/android/phone/PhoneUtils;->mMmiTimeoutCbMsg:Landroid/os/Message;

    invoke-virtual {v5}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v5

    const-wide/16 v6, 0x3a98

    invoke-virtual {v5, p2, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_46
    .catch Ljava/lang/NullPointerException; {:try_start_3b .. :try_end_46} :catch_51

    :goto_46
    move-object v5, v2

    .line 685
    .end local v2           #pd:Landroid/app/ProgressDialog;
    .end local v4           #textmsg:Ljava/lang/CharSequence;
    :goto_47
    return-object v5

    .line 635
    .restart local v2       #pd:Landroid/app/ProgressDialog;
    .restart local v4       #textmsg:Ljava/lang/CharSequence;
    :catch_48
    move-exception v5

    move-object v0, v5

    .line 636
    .local v0, e:Landroid/os/RemoteException;
    sput-object v8, Lcom/android/phone/PhoneUtils;->mNwService:Lcom/android/internal/telephony/IExtendedNetworkService;

    .line 637
    invoke-virtual {p0, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_1d

    .line 650
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_51
    move-exception v5

    move-object v0, v5

    .line 651
    .local v0, e:Ljava/lang/NullPointerException;
    sput-object v8, Lcom/android/phone/PhoneUtils;->mMmiTimeoutCbMsg:Landroid/os/Message;

    goto :goto_46

    .line 656
    .end local v0           #e:Ljava/lang/NullPointerException;
    .end local v2           #pd:Landroid/app/ProgressDialog;
    .end local v4           #textmsg:Ljava/lang/CharSequence;
    :cond_56
    if-eqz p1, :cond_71

    invoke-interface {p1}, Lcom/android/internal/telephony/MmiCode;->isCancelable()Z

    move-result v5

    if-eqz v5, :cond_71

    move v1, v7

    .line 658
    .local v1, isCancelable:Z
    :goto_5f
    if-nez v1, :cond_73

    .line 660
    const v5, 0x7f090026

    invoke-virtual {p0, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 661
    .local v3, text:Ljava/lang/CharSequence;
    invoke-static {p0, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    move-object v5, v8

    .line 663
    goto :goto_47

    .end local v1           #isCancelable:Z
    .end local v3           #text:Ljava/lang/CharSequence;
    :cond_71
    move v1, v6

    .line 656
    goto :goto_5f

    .line 668
    .restart local v1       #isCancelable:Z
    :cond_73
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-direct {v2, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 669
    .restart local v2       #pd:Landroid/app/ProgressDialog;
    invoke-virtual {p0, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 670
    invoke-virtual {v2, v6}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 671
    invoke-virtual {v2, v7}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 672
    invoke-virtual {v2}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/view/Window;->addFlags(I)V

    .line 674
    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    .line 678
    sput-object p2, Lcom/android/phone/PhoneUtils;->mMmiTimeoutCbMsg:Landroid/os/Message;

    .line 680
    :try_start_91
    sget-object v5, Lcom/android/phone/PhoneUtils;->mMmiTimeoutCbMsg:Landroid/os/Message;

    invoke-virtual {v5}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v5

    const-wide/16 v6, 0x3a98

    invoke-virtual {v5, p2, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_9c
    .catch Ljava/lang/NullPointerException; {:try_start_91 .. :try_end_9c} :catch_9e

    :goto_9c
    move-object v5, v2

    .line 685
    goto :goto_47

    .line 681
    :catch_9e
    move-exception v5

    move-object v0, v5

    .line 682
    .restart local v0       #e:Ljava/lang/NullPointerException;
    sput-object v8, Lcom/android/phone/PhoneUtils;->mMmiTimeoutCbMsg:Landroid/os/Message;

    goto :goto_9c
.end method

.method static dumpCallState(Lcom/android/internal/telephony/Phone;)V
    .registers 16
    .parameter "phone"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const-string v14, "-  hasConnections: "

    const-string v13, "-"

    const-string v10, "PhoneUtils"

    .line 1739
    const-string v8, "PhoneUtils"

    const-string v8, "##### dumpCallState()"

    invoke-static {v10, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1740
    const-string v8, "PhoneUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "- Phone: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", state = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1741
    const-string v8, "PhoneUtils"

    const-string v8, "-"

    invoke-static {v10, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1743
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 1744
    .local v2, fgCall:Lcom/android/internal/telephony/Call;
    const-string v8, "PhoneUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "- FG call: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1745
    const-string v8, "PhoneUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "-  state: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1746
    const-string v8, "PhoneUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "-  isAlive(): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1747
    const-string v8, "PhoneUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "-  isRinging(): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1748
    const-string v8, "PhoneUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "-  isDialing(): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1749
    const-string v8, "PhoneUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "-  isIdle(): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1750
    const-string v8, "PhoneUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "-  hasConnections: "

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->hasConnections()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1751
    const-string v8, "PhoneUtils"

    const-string v8, "-"

    invoke-static {v10, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1753
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 1754
    .local v1, bgCall:Lcom/android/internal/telephony/Call;
    const-string v8, "PhoneUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "- BG call: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1755
    const-string v8, "PhoneUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "-  state: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1756
    const-string v8, "PhoneUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "-  isAlive(): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1757
    const-string v8, "PhoneUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "-  isRinging(): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1758
    const-string v8, "PhoneUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "-  isDialing(): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1759
    const-string v8, "PhoneUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "-  isIdle(): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1760
    const-string v8, "PhoneUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "-  hasConnections: "

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->hasConnections()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1761
    const-string v8, "PhoneUtils"

    const-string v8, "-"

    invoke-static {v10, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1763
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    .line 1764
    .local v7, ringingCall:Lcom/android/internal/telephony/Call;
    const-string v8, "PhoneUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "- RINGING call: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1765
    const-string v8, "PhoneUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "-  state: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1766
    const-string v8, "PhoneUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "-  isAlive(): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1767
    const-string v8, "PhoneUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "-  isRinging(): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1768
    const-string v8, "PhoneUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "-  isDialing(): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1769
    const-string v8, "PhoneUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "-  isIdle(): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1770
    const-string v8, "PhoneUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "-  hasConnections: "

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->hasConnections()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1771
    const-string v8, "PhoneUtils"

    const-string v8, "-"

    invoke-static {v10, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1773
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v8

    if-nez v8, :cond_373

    move v5, v12

    .line 1774
    .local v5, hasRingingCall:Z
    :goto_2cc
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v8

    if-nez v8, :cond_376

    move v3, v12

    .line 1775
    .local v3, hasActiveCall:Z
    :goto_2d7
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v8

    if-nez v8, :cond_379

    move v4, v12

    .line 1776
    .local v4, hasHoldingCall:Z
    :goto_2e2
    if-eqz v3, :cond_37c

    if-eqz v4, :cond_37c

    move v0, v12

    .line 1777
    .local v0, allLinesTaken:Z
    :goto_2e7
    const-string v8, "PhoneUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "- hasRingingCall: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1778
    const-string v8, "PhoneUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "- hasActiveCall: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1779
    const-string v8, "PhoneUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "- hasHoldingCall: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1780
    const-string v8, "PhoneUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "- allLinesTaken: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1785
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/phone/PhoneApp;->getRinger()Lcom/android/phone/Ringer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/phone/Ringer;->isRinging()Z

    move-result v6

    .line 1786
    .local v6, ringing:Z
    const-string v8, "PhoneUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "- ringing (Ringer manager state): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1787
    const-string v8, "PhoneUtils"

    const-string v8, "-----"

    invoke-static {v10, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1788
    return-void

    .end local v0           #allLinesTaken:Z
    .end local v3           #hasActiveCall:Z
    .end local v4           #hasHoldingCall:Z
    .end local v5           #hasRingingCall:Z
    .end local v6           #ringing:Z
    :cond_373
    move v5, v11

    .line 1773
    goto/16 :goto_2cc

    .restart local v5       #hasRingingCall:Z
    :cond_376
    move v3, v11

    .line 1774
    goto/16 :goto_2d7

    .restart local v3       #hasActiveCall:Z
    :cond_379
    move v4, v11

    .line 1775
    goto/16 :goto_2e2

    .restart local v4       #hasHoldingCall:Z
    :cond_37c
    move v0, v11

    .line 1776
    goto/16 :goto_2e7
.end method

.method static getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;
    .registers 7
    .parameter "context"
    .parameter "c"

    .prologue
    .line 1002
    const/4 v1, 0x0

    .line 1004
    .local v1, info:Lcom/android/internal/telephony/CallerInfo;
    if-eqz p1, :cond_16

    .line 1008
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v3

    .line 1009
    .local v3, userDataObject:Ljava/lang/Object;
    instance-of v4, v3, Landroid/net/Uri;

    if-eqz v4, :cond_17

    .line 1010
    check-cast v3, Landroid/net/Uri;

    .end local v3           #userDataObject:Ljava/lang/Object;
    invoke-static {p0, v3}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v1

    .line 1011
    if-eqz v1, :cond_16

    .line 1012
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/Connection;->setUserData(Ljava/lang/Object;)V

    .line 1038
    :cond_16
    :goto_16
    return-object v1

    .line 1015
    .restart local v3       #userDataObject:Ljava/lang/Object;
    :cond_17
    instance-of v4, v3, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v4, :cond_35

    .line 1017
    check-cast v3, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local v3           #userDataObject:Ljava/lang/Object;
    iget-object v1, v3, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 1022
    :goto_1f
    if-nez v1, :cond_16

    .line 1025
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 1029
    .local v2, number:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_16

    .line 1030
    invoke-static {p0, v2}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v1

    .line 1031
    if-eqz v1, :cond_16

    .line 1032
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/Connection;->setUserData(Ljava/lang/Object;)V

    goto :goto_16

    .line 1020
    .end local v2           #number:Ljava/lang/String;
    .restart local v3       #userDataObject:Ljava/lang/Object;
    :cond_35
    move-object v0, v3

    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    move-object v1, v0

    goto :goto_1f
.end method

.method static getCompactName(Landroid/content/Context;Lcom/android/internal/telephony/Call;)Ljava/lang/String;
    .registers 4
    .parameter "context"
    .parameter "call"

    .prologue
    .line 1240
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1241
    const v1, 0x7f090024

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1244
    :goto_d
    return-object v1

    .line 1243
    :cond_e
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 1244
    .local v0, conn:Lcom/android/internal/telephony/Connection;
    invoke-static {p0, v0}, Lcom/android/phone/PhoneUtils;->getCompactName(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Ljava/lang/String;

    move-result-object v1

    goto :goto_d
.end method

.method static getCompactName(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Ljava/lang/String;
    .registers 5
    .parameter "context"
    .parameter "conn"

    .prologue
    .line 1211
    invoke-static {p0, p1}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v1

    .line 1214
    .local v1, info:Lcom/android/internal/telephony/CallerInfo;
    const/4 v0, 0x0

    .line 1215
    .local v0, compactName:Ljava/lang/String;
    if-eqz v1, :cond_d

    .line 1216
    iget-object v0, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 1217
    if-nez v0, :cond_d

    .line 1218
    iget-object v0, v1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 1222
    :cond_d
    if-nez v0, :cond_16

    .line 1223
    const v2, 0x7f090007

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1225
    :cond_16
    return-object v0
.end method

.method static getCompactNameFromCallerInfo(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .parameter "ci"
    .parameter "context"

    .prologue
    .line 1253
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/phone/PhoneUtils;->getCompactNameFromCallerInfo(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getCompactNameFromCallerInfo(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "ci"
    .parameter "context"
    .parameter "cnap"

    .prologue
    .line 1259
    const/4 v0, 0x0

    .line 1260
    .local v0, compactName:Ljava/lang/String;
    if-eqz p0, :cond_c

    .line 1261
    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 1262
    if-nez v0, :cond_c

    .line 1264
    move-object v0, p2

    .line 1265
    if-nez v0, :cond_c

    .line 1267
    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 1271
    :cond_c
    if-nez v0, :cond_15

    .line 1272
    const v1, 0x7f090007

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1274
    :cond_15
    return-object v0
.end method

.method static getMute(Lcom/android/internal/telephony/Phone;)Z
    .registers 4
    .parameter "phone"

    .prologue
    .line 1500
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1501
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->isMicrophoneMute()Z

    move-result v1

    return v1
.end method

.method static getNumberFromIntent(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Landroid/content/Intent;)Ljava/lang/String;
    .registers 6
    .parameter "context"
    .parameter "phone"
    .parameter "intent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException;
        }
    .end annotation

    .prologue
    .line 974
    invoke-static {p2, p0}, Landroid/telephony/PhoneNumberUtils;->getNumberFromIntent(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 978
    .local v0, number:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "voicemail"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    if-eqz v0, :cond_1c

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 980
    :cond_1c
    new-instance v1, Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException;

    invoke-direct {v1}, Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException;-><init>()V

    throw v1

    .line 982
    :cond_22
    return-object v0
.end method

.method static getRingtoneVolume(Landroid/content/Context;)I
    .registers 3
    .parameter "context"

    .prologue
    .line 1556
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1558
    .local v0, audioManager:Landroid/media/AudioManager;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    return v1
.end method

.method static handleHeadsetHook(Lcom/android/internal/telephony/Phone;)Z
    .registers 8
    .parameter "phone"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1582
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v3, v4, :cond_c

    move v3, v5

    .line 1639
    :goto_b
    return v3

    .line 1594
    :cond_c
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v3

    if-nez v3, :cond_38

    move v2, v6

    .line 1595
    .local v2, hasRingingCall:Z
    :goto_17
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v3

    if-nez v3, :cond_3a

    move v0, v6

    .line 1596
    .local v0, hasActiveCall:Z
    :goto_22
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v3

    if-nez v3, :cond_3c

    move v1, v6

    .line 1598
    .local v1, hasHoldingCall:Z
    :goto_2d
    if-eqz v2, :cond_42

    .line 1601
    if-eqz v0, :cond_3e

    if-eqz v1, :cond_3e

    .line 1603
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->answerAndEndActive(Lcom/android/internal/telephony/Phone;)Z

    :cond_36
    :goto_36
    move v3, v6

    .line 1639
    goto :goto_b

    .end local v0           #hasActiveCall:Z
    .end local v1           #hasHoldingCall:Z
    .end local v2           #hasRingingCall:Z
    :cond_38
    move v2, v5

    .line 1594
    goto :goto_17

    .restart local v2       #hasRingingCall:Z
    :cond_3a
    move v0, v5

    .line 1595
    goto :goto_22

    .restart local v0       #hasActiveCall:Z
    :cond_3c
    move v1, v5

    .line 1596
    goto :goto_2d

    .line 1606
    .restart local v1       #hasHoldingCall:Z
    :cond_3e
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Phone;)Z

    goto :goto_36

    .line 1622
    :cond_42
    if-eqz v0, :cond_48

    .line 1623
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->hangupActiveCall(Lcom/android/internal/telephony/Phone;)Z

    goto :goto_36

    .line 1624
    :cond_48
    if-eqz v1, :cond_36

    .line 1625
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->hangupHoldingCall(Lcom/android/internal/telephony/Phone;)Z

    goto :goto_36
.end method

.method static hangup(Lcom/android/internal/telephony/Connection;)V
    .registers 5
    .parameter "c"

    .prologue
    .line 344
    if-eqz p0, :cond_5

    .line 345
    :try_start_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->hangup()V
    :try_end_5
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_2 .. :try_end_5} :catch_6

    .line 350
    :cond_5
    :goto_5
    return-void

    .line 347
    :catch_6
    move-exception v0

    .line 348
    .local v0, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v1, "PhoneUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connection hangup: caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method static hangup(Lcom/android/internal/telephony/Call;)Z
    .registers 5
    .parameter "call"

    .prologue
    .line 322
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->hangup()V
    :try_end_3
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_3} :catch_5

    .line 323
    const/4 v1, 0x1

    .line 328
    :goto_4
    return v1

    .line 324
    :catch_5
    move-exception v0

    .line 325
    .local v0, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v1, "PhoneUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Call hangup: caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 328
    const/4 v1, 0x0

    goto :goto_4
.end method

.method static hangup(Lcom/android/internal/telephony/Phone;)Z
    .registers 6
    .parameter "phone"

    .prologue
    .line 254
    const/4 v2, 0x0

    .line 255
    .local v2, hungup:Z
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 256
    .local v3, ringing:Lcom/android/internal/telephony/Call;
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 257
    .local v1, fg:Lcom/android/internal/telephony/Call;
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 259
    .local v0, bg:Lcom/android/internal/telephony/Call;
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-nez v4, :cond_18

    .line 261
    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    .line 272
    :cond_17
    :goto_17
    return v2

    .line 262
    :cond_18
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-nez v4, :cond_23

    .line 264
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    goto :goto_17

    .line 265
    :cond_23
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-nez v4, :cond_17

    .line 267
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    goto :goto_17
.end method

.method static hangupActiveCall(Lcom/android/internal/telephony/Call;)Z
    .registers 5
    .parameter "call"

    .prologue
    .line 333
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->hangupActiveMenu()V
    :try_end_3
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_3} :catch_5

    .line 334
    const/4 v1, 0x1

    .line 339
    :goto_4
    return v1

    .line 335
    :catch_5
    move-exception v0

    .line 336
    .local v0, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v1, "PhoneUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Call hangupActiveMenu: caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 339
    const/4 v1, 0x0

    goto :goto_4
.end method

.method static hangupActiveCall(Lcom/android/internal/telephony/Phone;)Z
    .registers 2
    .parameter "phone"

    .prologue
    .line 312
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    return v0
.end method

.method static hangupActiveMenu(Lcom/android/internal/telephony/Phone;)Z
    .registers 7
    .parameter "phone"

    .prologue
    .line 276
    const/4 v3, 0x0

    .line 277
    .local v3, hungup:Z
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    .line 278
    .local v4, ringing:Lcom/android/internal/telephony/Call;
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 279
    .local v2, fg:Lcom/android/internal/telephony/Call;
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 281
    .local v0, bg:Lcom/android/internal/telephony/Call;
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v5

    if-nez v5, :cond_18

    .line 283
    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    move-result v3

    .line 302
    :cond_17
    :goto_17
    return v3

    .line 284
    :cond_18
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v5

    if-nez v5, :cond_26

    .line 289
    :try_start_1e
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->hangupNotResume()V
    :try_end_21
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1e .. :try_end_21} :catch_23

    .line 291
    const/4 v3, 0x1

    goto :goto_17

    .line 292
    :catch_23
    move-exception v1

    .line 293
    .local v1, ex:Lcom/android/internal/telephony/CallStateException;
    const/4 v3, 0x0

    .line 294
    goto :goto_17

    .line 295
    .end local v1           #ex:Lcom/android/internal/telephony/CallStateException;
    :cond_26
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v5

    if-nez v5, :cond_17

    .line 297
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    move-result v3

    goto :goto_17
.end method

.method static hangupAllCall(Lcom/android/internal/telephony/Phone;)Z
    .registers 10
    .parameter "phone"

    .prologue
    const/4 v8, 0x1

    .line 353
    const/4 v2, 0x0

    .line 354
    .local v2, hungup:Z
    const/4 v3, 0x0

    .line 355
    .local v3, hungup1:Z
    const/4 v4, 0x0

    .line 356
    .local v4, hungup2:Z
    const/4 v5, 0x0

    .line 357
    .local v5, hungup3:Z
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    .line 358
    .local v6, ringing:Lcom/android/internal/telephony/Call;
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 359
    .local v1, fg:Lcom/android/internal/telephony/Call;
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 361
    .local v0, bg:Lcom/android/internal/telephony/Call;
    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v7

    if-nez v7, :cond_1b

    .line 363
    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    move-result v3

    .line 365
    :cond_1b
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v7

    if-nez v7, :cond_25

    .line 367
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->hangupActiveCall(Lcom/android/internal/telephony/Call;)Z

    move-result v4

    .line 369
    :cond_25
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v7

    if-nez v7, :cond_2f

    .line 371
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    move-result v5

    .line 376
    :cond_2f
    if-eq v3, v8, :cond_35

    if-eq v4, v8, :cond_35

    if-ne v5, v8, :cond_36

    .line 377
    :cond_35
    const/4 v2, 0x1

    .line 379
    :cond_36
    return v2
.end method

.method static hangupHoldingCall(Lcom/android/internal/telephony/Phone;)Z
    .registers 2
    .parameter "phone"

    .prologue
    .line 317
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    return v0
.end method

.method static hangupRingingCall(Lcom/android/internal/telephony/Phone;)Z
    .registers 2
    .parameter "phone"

    .prologue
    .line 307
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    return v0
.end method

.method private static final hasDisconnectedConnections(Lcom/android/internal/telephony/Call;)Z
    .registers 4
    .parameter "call"

    .prologue
    .line 1665
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 1666
    .local v0, c:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isAlive()Z

    move-result v2

    if-nez v2, :cond_8

    .line 1667
    const/4 v2, 0x1

    .line 1670
    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    :goto_1b
    return v2

    :cond_1c
    const/4 v2, 0x0

    goto :goto_1b
.end method

.method static hasDisconnectedConnections(Lcom/android/internal/telephony/Phone;)Z
    .registers 2
    .parameter "phone"

    .prologue
    .line 1650
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hasDisconnectedConnections(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hasDisconnectedConnections(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hasDisconnectedConnections(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_1e
    const/4 v0, 0x1

    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method public static initializeConnectionHandler(Lcom/android/internal/telephony/Phone;)V
    .registers 5
    .parameter "phone"

    .prologue
    .line 184
    sget-object v1, Lcom/android/phone/PhoneUtils;->mConnectionHandler:Lcom/android/phone/PhoneUtils$ConnectionHandler;

    if-nez v1, :cond_c

    .line 185
    new-instance v1, Lcom/android/phone/PhoneUtils$ConnectionHandler;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/phone/PhoneUtils$ConnectionHandler;-><init>(Lcom/android/phone/PhoneUtils$1;)V

    sput-object v1, Lcom/android/phone/PhoneUtils;->mConnectionHandler:Lcom/android/phone/PhoneUtils$ConnectionHandler;

    .line 188
    :cond_c
    sget-object v1, Lcom/android/phone/PhoneUtils;->mConnectionHandler:Lcom/android/phone/PhoneUtils$ConnectionHandler;

    const/4 v2, -0x1

    invoke-interface {p0, v1, v2, p0}, Lcom/android/internal/telephony/Phone;->registerForPhoneStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 190
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.ussd.IExtendedNetworkService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 191
    .local v0, intent:Landroid/content/Intent;
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/android/phone/PhoneUtils;->ExtendedNetworkServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 195
    return-void
.end method

.method private static internalStartNewCall(Lcom/android/internal/telephony/Phone;)V
    .registers 4
    .parameter "phone"

    .prologue
    const/4 v2, 0x1

    .line 1338
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->okToAddCall(Lcom/android/internal/telephony/Phone;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 1339
    const-string v1, "PhoneUtils"

    const-string v2, "startNewCall: can\'t add a new call in the current state"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1340
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->dumpCallState(Lcom/android/internal/telephony/Phone;)V

    .line 1363
    :goto_11
    return-void

    .line 1345
    :cond_12
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v1

    if-nez v1, :cond_23

    .line 1351
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/phone/PhoneApp;->setRestoreMuteOnInCallResume(Z)V

    .line 1354
    :cond_23
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1355
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1360
    const-string v1, "add_call_mode"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1362
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/phone/PhoneApp;->startActivity(Landroid/content/Intent;)V

    goto :goto_11
.end method

.method static isConferenceCall(Lcom/android/internal/telephony/Call;)Z
    .registers 4
    .parameter "call"

    .prologue
    const/4 v2, 0x1

    .line 1291
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v0

    .line 1292
    .local v0, connections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    if-eqz v0, :cond_f

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v2, :cond_f

    move v1, v2

    .line 1295
    :goto_e
    return v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method static isSpeakerOn(Landroid/content/Context;)Z
    .registers 3
    .parameter "context"

    .prologue
    .line 1460
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1461
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v1

    return v1
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 1791
    const-string v0, "PhoneUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1792
    return-void
.end method

.method static mergeCalls(Lcom/android/internal/telephony/Phone;)V
    .registers 5
    .parameter "phone"

    .prologue
    .line 552
    :try_start_0
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->conference()V
    :try_end_3
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_3} :catch_4

    .line 556
    :goto_3
    return-void

    .line 553
    :catch_4
    move-exception v0

    .line 554
    .local v0, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v1, "PhoneUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mergeCalls: caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method static okToAddCall(Lcom/android/internal/telephony/Phone;)Z
    .registers 9
    .parameter "phone"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1720
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v5

    if-nez v5, :cond_42

    move v4, v7

    .line 1721
    .local v4, hasRingingCall:Z
    :goto_d
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v5

    if-nez v5, :cond_44

    move v2, v7

    .line 1722
    .local v2, hasActiveCall:Z
    :goto_18
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v5

    if-nez v5, :cond_46

    move v3, v7

    .line 1723
    .local v3, hasHoldingCall:Z
    :goto_23
    if-eqz v2, :cond_48

    if-eqz v3, :cond_48

    move v0, v7

    .line 1724
    .local v0, allLinesTaken:Z
    :goto_28
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 1726
    .local v1, fgCallState:Lcom/android/internal/telephony/Call$State;
    if-nez v4, :cond_4a

    if-nez v0, :cond_4a

    sget-object v5, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v5, :cond_40

    sget-object v5, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v5, :cond_40

    sget-object v5, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v5, :cond_4a

    :cond_40
    move v5, v7

    :goto_41
    return v5

    .end local v0           #allLinesTaken:Z
    .end local v1           #fgCallState:Lcom/android/internal/telephony/Call$State;
    .end local v2           #hasActiveCall:Z
    .end local v3           #hasHoldingCall:Z
    .end local v4           #hasRingingCall:Z
    :cond_42
    move v4, v6

    .line 1720
    goto :goto_d

    .restart local v4       #hasRingingCall:Z
    :cond_44
    move v2, v6

    .line 1721
    goto :goto_18

    .restart local v2       #hasActiveCall:Z
    :cond_46
    move v3, v6

    .line 1722
    goto :goto_23

    .restart local v3       #hasHoldingCall:Z
    :cond_48
    move v0, v6

    .line 1723
    goto :goto_28

    .restart local v0       #allLinesTaken:Z
    .restart local v1       #fgCallState:Lcom/android/internal/telephony/Call$State;
    :cond_4a
    move v5, v6

    .line 1726
    goto :goto_41
.end method

.method static okToMergeCalls(Lcom/android/internal/telephony/Phone;)Z
    .registers 2
    .parameter "phone"

    .prologue
    .line 1700
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->canConference()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method static okToSwapCalls(Lcom/android/internal/telephony/Phone;)Z
    .registers 3
    .parameter "phone"

    .prologue
    .line 1687
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_24

    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_24

    const/4 v0, 0x1

    :goto_23
    return v0

    :cond_24
    const/4 v0, 0x0

    goto :goto_23
.end method

.method static okToTransferCall(Lcom/android/internal/telephony/Phone;)Z
    .registers 2
    .parameter "phone"

    .prologue
    .line 1705
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->canTransfer()Z

    move-result v0

    return v0
.end method

.method static placeCall(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;)I
    .registers 11
    .parameter "phone"
    .parameter "number"
    .parameter "contactRef"

    .prologue
    .line 450
    const/4 v4, 0x0

    .line 454
    .local v4, status:I
    :try_start_1
    invoke-interface {p0, p1}, Lcom/android/internal/telephony/Phone;->checkFdn(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 455
    const/4 v6, 0x4

    .line 511
    :goto_8
    return v6

    .line 460
    :cond_9
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v6, v7, :cond_26

    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->isEmergency()Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_26

    .line 461
    const/4 v6, 0x3

    goto :goto_8

    .line 464
    :cond_26
    invoke-interface {p0, p1}, Lcom/android/internal/telephony/Phone;->dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 468
    .local v0, cn:Lcom/android/internal/telephony/Connection;
    if-nez v0, :cond_49

    .line 470
    const/4 v4, 0x1

    .line 472
    sget-object v6, Lcom/android/phone/PhoneUtils;->mNwService:Lcom/android/internal/telephony/IExtendedNetworkService;
    :try_end_2f
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_2f} :catch_3e

    if-eqz v6, :cond_36

    .line 474
    :try_start_31
    sget-object v6, Lcom/android/phone/PhoneUtils;->mNwService:Lcom/android/internal/telephony/IExtendedNetworkService;

    invoke-interface {v6, p1}, Lcom/android/internal/telephony/IExtendedNetworkService;->setMmiString(Ljava/lang/String;)V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_36} :catch_38
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_31 .. :try_end_36} :catch_3e

    .end local v0           #cn:Lcom/android/internal/telephony/Connection;
    :cond_36
    :goto_36
    move v6, v4

    .line 511
    goto :goto_8

    .line 476
    .restart local v0       #cn:Lcom/android/internal/telephony/Connection;
    :catch_38
    move-exception v6

    move-object v2, v6

    .line 477
    .local v2, e:Landroid/os/RemoteException;
    const/4 v6, 0x0

    :try_start_3b
    sput-object v6, Lcom/android/phone/PhoneUtils;->mNwService:Lcom/android/internal/telephony/IExtendedNetworkService;
    :try_end_3d
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_3b .. :try_end_3d} :catch_3e

    goto :goto_36

    .line 506
    .end local v0           #cn:Lcom/android/internal/telephony/Connection;
    .end local v2           #e:Landroid/os/RemoteException;
    :catch_3e
    move-exception v6

    move-object v3, v6

    .line 507
    .local v3, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v6, "PhoneUtils"

    const-string v7, "PhoneUtils: Exception from phone.dial()"

    invoke-static {v6, v7, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 508
    const/4 v4, 0x2

    goto :goto_36

    .line 483
    .end local v3           #ex:Lcom/android/internal/telephony/CallStateException;
    .restart local v0       #cn:Lcom/android/internal/telephony/Connection;
    :cond_49
    const/4 v6, 0x2

    :try_start_4a
    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->setAudioControlState(I)V

    .line 490
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    const-string v1, "content"

    .line 491
    .local v1, content:Ljava/lang/String;
    if-eqz p2, :cond_6b

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6b

    .line 492
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v5

    .line 493
    .local v5, userDataObject:Ljava/lang/Object;
    if-nez v5, :cond_74

    .line 494
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/Connection;->setUserData(Ljava/lang/Object;)V

    .line 504
    .end local v5           #userDataObject:Ljava/lang/Object;
    :cond_6b
    :goto_6b
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x2

    invoke-static {v6, v7}, Lcom/android/phone/PhoneUtils;->setAudioMode(Landroid/content/Context;I)V

    goto :goto_36

    .line 496
    .restart local v5       #userDataObject:Ljava/lang/Object;
    :cond_74
    instance-of v6, v5, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v6, :cond_7d

    .line 497
    check-cast v5, Lcom/android/internal/telephony/CallerInfo;

    .end local v5           #userDataObject:Ljava/lang/Object;
    iput-object p2, v5, Lcom/android/internal/telephony/CallerInfo;->contactRefUri:Landroid/net/Uri;

    goto :goto_6b

    .line 499
    .restart local v5       #userDataObject:Ljava/lang/Object;
    :cond_7d
    check-cast v5, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local v5           #userDataObject:Ljava/lang/Object;
    iget-object v6, v5, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iput-object p2, v6, Lcom/android/internal/telephony/CallerInfo;->contactRefUri:Landroid/net/Uri;
    :try_end_83
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_4a .. :try_end_83} :catch_3e

    goto :goto_6b
.end method

.method static restoreMuteState(Lcom/android/internal/telephony/Phone;)Ljava/lang/Boolean;
    .registers 5
    .parameter "phone"

    .prologue
    .line 529
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 532
    .local v0, c:Lcom/android/internal/telephony/Connection;
    if-eqz v0, :cond_27

    .line 535
    sget-object v2, Lcom/android/phone/PhoneUtils;->sConnectionMuteTable:Ljava/util/Hashtable;

    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 537
    .local v1, shouldMute:Ljava/lang/Boolean;
    if-nez v1, :cond_1e

    .line 539
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 543
    :cond_1e
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {p0, v2}, Lcom/android/phone/PhoneUtils;->setMute(Lcom/android/internal/telephony/Phone;Z)V

    move-object v2, v1

    .line 546
    .end local v1           #shouldMute:Ljava/lang/Boolean;
    :goto_26
    return-object v2

    :cond_27
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->getMute(Lcom/android/internal/telephony/Phone;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_26
.end method

.method static restoreSpeakerMode(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 1453
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v0

    sget-boolean v1, Lcom/android/phone/PhoneUtils;->sIsSpeakerEnabled:Z

    if-eq v0, v1, :cond_13

    .line 1454
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/android/phone/PhoneUtils;->sIsSpeakerEnabled:Z

    .line 1455
    sget-boolean v0, Lcom/android/phone/PhoneUtils;->sIsSpeakerEnabled:Z

    invoke-static {p0, v0}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;Z)V

    .line 1457
    :cond_13
    return-void
.end method

.method static saveToContact(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .parameter "context"
    .parameter "number"

    .prologue
    .line 1195
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    sget-object v2, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1197
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "phone"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1198
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1199
    return-void
.end method

.method static separateCall(Lcom/android/internal/telephony/Connection;)V
    .registers 5
    .parameter "c"

    .prologue
    .line 573
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->separate()V
    :try_end_3
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_3} :catch_4

    .line 577
    :goto_3
    return-void

    .line 574
    :catch_4
    move-exception v0

    .line 575
    .local v0, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v1, "PhoneUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "separateCall: caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method static setAudioControlState(I)V
    .registers 1
    .parameter "newState"

    .prologue
    .line 203
    sput p0, Lcom/android/phone/PhoneUtils;->sAudioBehaviourState:I

    .line 204
    return-void
.end method

.method static setAudioMode(Landroid/content/Context;I)V
    .registers 8
    .parameter "context"
    .parameter "mode"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1517
    const/4 v1, 0x0

    .line 1519
    .local v1, ignore:Z
    sget v2, Lcom/android/phone/PhoneUtils;->sAudioBehaviourState:I

    packed-switch v2, :pswitch_data_2c

    .line 1528
    if-ne p1, v5, :cond_2a

    move v1, v3

    .line 1532
    :goto_c
    if-nez v1, :cond_19

    .line 1533
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1537
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setMode(I)V

    .line 1542
    .end local v0           #audioManager:Landroid/media/AudioManager;
    :cond_19
    return-void

    .line 1521
    :pswitch_1a
    if-eqz p1, :cond_1e

    if-ne p1, v5, :cond_20

    :cond_1e
    move v1, v3

    .line 1522
    :goto_1f
    goto :goto_c

    :cond_20
    move v1, v4

    .line 1521
    goto :goto_1f

    .line 1524
    :pswitch_22
    if-eqz p1, :cond_26

    if-ne p1, v3, :cond_28

    :cond_26
    move v1, v3

    .line 1525
    :goto_27
    goto :goto_c

    :cond_28
    move v1, v4

    .line 1524
    goto :goto_27

    :cond_2a
    move v1, v4

    .line 1528
    goto :goto_c

    .line 1519
    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_22
    .end packed-switch
.end method

.method static setMute(Lcom/android/internal/telephony/Phone;Z)V
    .registers 6
    .parameter "phone"
    .parameter "muted"

    .prologue
    .line 1473
    invoke-static {p0, p1}, Lcom/android/phone/PhoneUtils;->setMuteInternal(Lcom/android/internal/telephony/Phone;Z)V

    .line 1477
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 1478
    .local v0, cn:Lcom/android/internal/telephony/Connection;
    sget-object v2, Lcom/android/phone/PhoneUtils;->sConnectionMuteTable:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_23

    .line 1481
    :cond_23
    sget-object v2, Lcom/android/phone/PhoneUtils;->sConnectionMuteTable:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    .line 1483
    .end local v0           #cn:Lcom/android/internal/telephony/Connection;
    :cond_2d
    return-void
.end method

.method static setMuteInternal(Lcom/android/internal/telephony/Phone;Z)V
    .registers 5
    .parameter "phone"
    .parameter "muted"

    .prologue
    .line 1490
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1491
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setMicrophoneMute(Z)V

    .line 1492
    if-eqz p1, :cond_19

    .line 1493
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/NotificationMgr;->notifyMute()V

    .line 1497
    :goto_18
    return-void

    .line 1495
    :cond_19
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/NotificationMgr;->cancelMute()V

    goto :goto_18
.end method

.method static setRingtoneVolume(Landroid/content/Context;I)V
    .registers 5
    .parameter "context"
    .parameter "volume"

    .prologue
    .line 1562
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1563
    .local v0, audioManager:Landroid/media/AudioManager;
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 1564
    return-void
.end method

.method static showIncomingCallUi()V
    .registers 3

    .prologue
    .line 1376
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 1380
    .local v0, app:Lcom/android/phone/PhoneApp;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->sendBroadcast(Landroid/content/Intent;)V

    .line 1415
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->preventScreenOn(Z)V

    .line 1416
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->disableKeyguard()V

    .line 1418
    sget-object v1, Lcom/android/phone/PhoneApp$WakeState;->FULL:Lcom/android/phone/PhoneApp$WakeState;

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->requestWakeState(Lcom/android/phone/PhoneApp$WakeState;)V

    .line 1421
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->displayCallScreen()V

    .line 1422
    return-void
.end method

.method static startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .registers 6
    .parameter "context"
    .parameter "call"
    .parameter "listener"
    .parameter "cookie"

    .prologue
    .line 1059
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 1060
    .local v0, conn:Lcom/android/internal/telephony/Connection;
    invoke-static {p0, v0, p2, p3}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v1

    return-object v1
.end method

.method static startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .registers 14
    .parameter "context"
    .parameter "c"
    .parameter "listener"
    .parameter "cookie"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 1071
    if-nez p1, :cond_f

    .line 1073
    new-instance v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    invoke-direct {v1}, Lcom/android/phone/PhoneUtils$CallerInfoToken;-><init>()V

    .line 1074
    .local v1, cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    iput-object v9, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->asyncQuery:Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    move-object v2, v1

    .line 1177
    .end local v1           #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .local v2, cit:Ljava/lang/Object;
    :goto_e
    return-object v2

    .line 1107
    .end local v2           #cit:Ljava/lang/Object;
    :cond_f
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v4

    .line 1108
    .local v4, userDataObject:Ljava/lang/Object;
    instance-of v5, v4, Landroid/net/Uri;

    if-eqz v5, :cond_39

    .line 1110
    new-instance v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    invoke-direct {v1}, Lcom/android/phone/PhoneUtils$CallerInfoToken;-><init>()V

    .line 1111
    .restart local v1       #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    new-instance v5, Lcom/android/internal/telephony/CallerInfo;

    invoke-direct {v5}, Lcom/android/internal/telephony/CallerInfo;-><init>()V

    iput-object v5, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 1112
    check-cast v4, Landroid/net/Uri;

    .end local v4           #userDataObject:Ljava/lang/Object;
    sget-object v5, Lcom/android/phone/PhoneUtils;->sCallerInfoQueryListener:Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;

    invoke-static {v6, p0, v4, v5, p1}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->startQuery(ILandroid/content/Context;Landroid/net/Uri;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    move-result-object v5

    iput-object v5, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->asyncQuery:Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    .line 1114
    iget-object v5, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->asyncQuery:Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    invoke-virtual {v5, v6, p2, p3}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->addQueryListener(ILcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)V

    .line 1115
    iput-boolean v8, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    .line 1117
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/Connection;->setUserData(Ljava/lang/Object;)V

    :goto_37
    move-object v2, v1

    .line 1177
    .restart local v2       #cit:Ljava/lang/Object;
    goto :goto_e

    .line 1121
    .end local v1           #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .end local v2           #cit:Ljava/lang/Object;
    .restart local v4       #userDataObject:Ljava/lang/Object;
    :cond_39
    if-nez v4, :cond_6b

    .line 1124
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v3

    .line 1126
    .local v3, number:Ljava/lang/String;
    new-instance v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    invoke-direct {v1}, Lcom/android/phone/PhoneUtils$CallerInfoToken;-><init>()V

    .line 1127
    .restart local v1       #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    new-instance v5, Lcom/android/internal/telephony/CallerInfo;

    invoke-direct {v5}, Lcom/android/internal/telephony/CallerInfo;-><init>()V

    iput-object v5, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 1132
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_68

    .line 1133
    iget-object v5, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iput-object v3, v5, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 1134
    sget-object v5, Lcom/android/phone/PhoneUtils;->sCallerInfoQueryListener:Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;

    invoke-static {v6, p0, v3, v5, p1}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->startQuery(ILandroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    move-result-object v5

    iput-object v5, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->asyncQuery:Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    .line 1136
    iget-object v5, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->asyncQuery:Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    invoke-virtual {v5, v6, p2, p3}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->addQueryListener(ILcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)V

    .line 1137
    iput-boolean v8, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    .line 1148
    :goto_64
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/Connection;->setUserData(Ljava/lang/Object;)V

    goto :goto_37

    .line 1145
    :cond_68
    iput-boolean v7, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    goto :goto_64

    .line 1152
    .end local v1           #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .end local v3           #number:Ljava/lang/String;
    :cond_6b
    instance-of v5, v4, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v5, :cond_8b

    .line 1154
    move-object v0, v4

    check-cast v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-object v1, v0

    .line 1157
    .restart local v1       #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    iget-object v5, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->asyncQuery:Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    if-eqz v5, :cond_7d

    .line 1158
    iget-object v5, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->asyncQuery:Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    invoke-virtual {v5, v6, p2, p3}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->addQueryListener(ILcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)V

    goto :goto_37

    .line 1164
    :cond_7d
    iget-object v5, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    if-nez v5, :cond_88

    .line 1165
    new-instance v5, Lcom/android/internal/telephony/CallerInfo;

    invoke-direct {v5}, Lcom/android/internal/telephony/CallerInfo;-><init>()V

    iput-object v5, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 1167
    :cond_88
    iput-boolean v7, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    goto :goto_37

    .line 1170
    .end local v1           #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :cond_8b
    new-instance v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    invoke-direct {v1}, Lcom/android/phone/PhoneUtils$CallerInfoToken;-><init>()V

    .line 1171
    .restart local v1       #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    check-cast v4, Lcom/android/internal/telephony/CallerInfo;

    .end local v4           #userDataObject:Ljava/lang/Object;
    iput-object v4, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 1172
    iput-object v9, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->asyncQuery:Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    .line 1173
    iput-boolean v7, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    goto :goto_37
.end method

.method static startNewCall(Lcom/android/internal/telephony/Phone;)V
    .registers 3
    .parameter "phone"

    .prologue
    .line 1322
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v0

    .line 1323
    .local v0, keyguardManager:Landroid/app/KeyguardManager;
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    if-nez v1, :cond_12

    .line 1324
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->internalStartNewCall(Lcom/android/internal/telephony/Phone;)V

    .line 1334
    :goto_11
    return-void

    .line 1326
    :cond_12
    new-instance v1, Lcom/android/phone/PhoneUtils$5;

    invoke-direct {v1, p0}, Lcom/android/phone/PhoneUtils$5;-><init>(Lcom/android/internal/telephony/Phone;)V

    invoke-virtual {v0, v1}, Landroid/app/KeyguardManager;->exitKeyguardSecurely(Landroid/app/KeyguardManager$OnKeyguardExitResult;)V

    goto :goto_11
.end method

.method static switchHoldingAndActive(Lcom/android/internal/telephony/Phone;)V
    .registers 5
    .parameter "phone"

    .prologue
    .line 517
    :try_start_0
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V
    :try_end_3
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_3} :catch_4

    .line 521
    :goto_3
    return-void

    .line 518
    :catch_4
    move-exception v0

    .line 519
    .local v0, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v1, "PhoneUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "switchHoldingAndActive: caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method static transferCall(Lcom/android/internal/telephony/Phone;)V
    .registers 5
    .parameter "phone"

    .prologue
    .line 563
    :try_start_0
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->explicitCallTransfer()V
    :try_end_3
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_3} :catch_4

    .line 567
    :goto_3
    return-void

    .line 564
    :catch_4
    move-exception v0

    .line 565
    .local v0, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v1, "PhoneUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "transferCall: caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method static turnOnSpeaker(Landroid/content/Context;Z)V
    .registers 5
    .parameter "context"
    .parameter "flag"

    .prologue
    .line 1426
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 1428
    .local v1, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v1, p1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 1430
    sput-boolean p1, Lcom/android/phone/PhoneUtils;->sIsSpeakerEnabled:Z

    .line 1431
    if-eqz p1, :cond_1e

    .line 1432
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/NotificationMgr;->notifySpeakerphone()V

    .line 1441
    :goto_16
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 1442
    .local v0, app:Lcom/android/phone/PhoneApp;
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->updateWakeState()V

    .line 1443
    return-void

    .line 1434
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    :cond_1e
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/NotificationMgr;->cancelSpeakerphone()V

    goto :goto_16
.end method
