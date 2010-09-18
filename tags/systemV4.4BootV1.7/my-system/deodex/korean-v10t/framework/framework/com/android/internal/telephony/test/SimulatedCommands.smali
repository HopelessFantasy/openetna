.class public final Lcom/android/internal/telephony/test/SimulatedCommands;
.super Lcom/android/internal/telephony/BaseCommands;
.source "SimulatedCommands.java"

# interfaces
.implements Lcom/android/internal/telephony/CommandsInterface;
.implements Lcom/android/internal/telephony/test/SimulatedRadioControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/test/SimulatedCommands$1;,
        Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;,
        Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;
    }
.end annotation


# static fields
.field private static final DEFAULT_SIM_PIN2_CODE:Ljava/lang/String; = "5678"

.field private static final DEFAULT_SIM_PIN_CODE:Ljava/lang/String; = "1234"

.field private static final INITIAL_FDN_STATE:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState; = null

.field private static final INITIAL_LOCK_STATE:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState; = null

.field private static final LOG_TAG:Ljava/lang/String; = "SIM"

.field private static final SIM_PUK2_CODE:Ljava/lang/String; = "87654321"

.field private static final SIM_PUK_CODE:Ljava/lang/String; = "12345678"


# instance fields
.field mHandlerThread:Landroid/os/HandlerThread;

.field mNetworkType:I

.field mPin2Code:Ljava/lang/String;

.field mPin2UnlockAttempts:I

.field mPinCode:Ljava/lang/String;

.field mPinUnlockAttempts:I

.field mPuk2UnlockAttempts:I

.field mPukUnlockAttempts:I

.field mSimFdnEnabled:Z

.field mSimFdnEnabledState:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

.field mSimLockEnabled:Z

.field mSimLockedState:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

.field mSsnNotifyOn:Z

.field nextCallFailCause:I

.field pausedResponseCount:I

.field pausedResponses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 56
    sget-object v0, Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;->NONE:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    sput-object v0, Lcom/android/internal/telephony/test/SimulatedCommands;->INITIAL_LOCK_STATE:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    .line 59
    sget-object v0, Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;->NONE:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    sput-object v0, Lcom/android/internal/telephony/test/SimulatedCommands;->INITIAL_FDN_STATE:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 89
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/BaseCommands;-><init>(Landroid/content/Context;)V

    .line 78
    iput-boolean v3, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSsnNotifyOn:Z

    .line 81
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->pausedResponses:Ljava/util/ArrayList;

    .line 83
    const/16 v1, 0x10

    iput v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->nextCallFailCause:I

    .line 90
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "SimulatedCommands"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mHandlerThread:Landroid/os/HandlerThread;

    .line 91
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 92
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 94
    .local v0, looper:Landroid/os/Looper;
    new-instance v1, Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    .line 96
    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V

    .line 97
    sget-object v1, Lcom/android/internal/telephony/test/SimulatedCommands;->INITIAL_LOCK_STATE:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    iput-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimLockedState:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    .line 98
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimLockedState:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    sget-object v2, Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;->NONE:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    if-eq v1, v2, :cond_56

    move v1, v4

    :goto_3e
    iput-boolean v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimLockEnabled:Z

    .line 99
    const-string v1, "1234"

    iput-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPinCode:Ljava/lang/String;

    .line 100
    sget-object v1, Lcom/android/internal/telephony/test/SimulatedCommands;->INITIAL_FDN_STATE:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    iput-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimFdnEnabledState:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    .line 101
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimFdnEnabledState:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    sget-object v2, Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;->NONE:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    if-eq v1, v2, :cond_58

    move v1, v4

    :goto_4f
    iput-boolean v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimFdnEnabled:Z

    .line 102
    const-string v1, "5678"

    iput-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPin2Code:Ljava/lang/String;

    .line 103
    return-void

    :cond_56
    move v1, v3

    .line 98
    goto :goto_3e

    :cond_58
    move v1, v3

    .line 101
    goto :goto_4f
.end method

.method private isSimLocked()Z
    .registers 3

    .prologue
    .line 1241
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimLockedState:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    sget-object v1, Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;->NONE:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    if-eq v0, v1, :cond_8

    .line 1242
    const/4 v0, 0x1

    .line 1244
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private resultFail(Landroid/os/Message;Ljava/lang/Throwable;)V
    .registers 4
    .parameter "result"
    .parameter "tr"

    .prologue
    .line 1609
    if-eqz p1, :cond_11

    .line 1610
    invoke-static {p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    iput-object p2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1611
    iget v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->pausedResponseCount:I

    if-lez v0, :cond_12

    .line 1612
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->pausedResponses:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1617
    :cond_11
    :goto_11
    return-void

    .line 1614
    :cond_12
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_11
.end method

.method private resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V
    .registers 4
    .parameter "result"
    .parameter "ret"

    .prologue
    .line 1598
    if-eqz p1, :cond_11

    .line 1599
    invoke-static {p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    iput-object p2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 1600
    iget v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->pausedResponseCount:I

    if-lez v0, :cond_12

    .line 1601
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->pausedResponses:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1606
    :cond_11
    :goto_11
    return-void

    .line 1603
    :cond_12
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_11
.end method

.method private returnSimLockedStatus(Landroid/os/Message;)V
    .registers 5
    .parameter "result"

    .prologue
    const-string v2, "SIM"

    .line 124
    sget-object v0, Lcom/android/internal/telephony/test/SimulatedCommands$1;->$SwitchMap$com$android$internal$telephony$test$SimulatedCommands$SimLockState:[I

    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimLockedState:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_32

    .line 136
    const-string v0, "SIM"

    const-string v0, "[SimCmd] returnSimLockedStatus: mSimLockedState==NONE !?"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :goto_16
    return-void

    .line 126
    :pswitch_17
    const-string v0, "SIM"

    const-string v0, "[SimCmd] returnSimLockedStatus: ICC_PIN"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$IccStatus;->ICC_PIN:Lcom/android/internal/telephony/CommandsInterface$IccStatus;

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    goto :goto_16

    .line 131
    :pswitch_24
    const-string v0, "SIM"

    const-string v0, "[SimCmd] returnSimLockedStatus: ICC_PUK"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$IccStatus;->ICC_PUK:Lcom/android/internal/telephony/CommandsInterface$IccStatus;

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    goto :goto_16

    .line 124
    nop

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_17
        :pswitch_24
    .end packed-switch
.end method

.method private unimplemented(Landroid/os/Message;)V
    .registers 5
    .parameter "result"

    .prologue
    .line 1585
    if-eqz p1, :cond_18

    .line 1586
    invoke-static {p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unimplemented"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1589
    iget v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->pausedResponseCount:I

    if-lez v0, :cond_19

    .line 1590
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->pausedResponses:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1595
    :cond_18
    :goto_18
    return-void

    .line 1592
    :cond_19
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_18
.end method


# virtual methods
.method public acceptCall(Landroid/os/Message;)V
    .registers 5
    .parameter "result"

    .prologue
    .line 855
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->onAnswer()Z

    move-result v0

    .line 857
    .local v0, success:Z
    if-nez v0, :cond_13

    .line 858
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Hangup Error"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultFail(Landroid/os/Message;Ljava/lang/Throwable;)V

    .line 862
    :goto_12
    return-void

    .line 860
    :cond_13
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    goto :goto_12
.end method

.method public acknowledgeLastIncomingCdmaSms(ZILandroid/os/Message;)V
    .registers 4
    .parameter "success"
    .parameter "cause"
    .parameter "result"

    .prologue
    .line 1281
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1282
    return-void
.end method

.method public acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V
    .registers 4
    .parameter "success"
    .parameter "cause"
    .parameter "result"

    .prologue
    .line 1277
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1278
    return-void
.end method

.method public broadcastActivation(ILandroid/os/Message;)V
    .registers 6
    .parameter "prefMode"
    .parameter "response"

    .prologue
    .line 1169
    const-string v0, "SIM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set broadcastActivation with prefMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1171
    return-void
.end method

.method public cancelManualSearchingRequest(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 1625
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public cancelPendingUssd(Landroid/os/Message;)V
    .registers 3
    .parameter "response"

    .prologue
    .line 1456
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1457
    return-void
.end method

.method public changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 5
    .parameter "facility"
    .parameter "oldPwd"
    .parameter "newPwd"
    .parameter "result"

    .prologue
    .line 354
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 355
    return-void
.end method

.method public changeIccPin(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 8
    .parameter "oldPin"
    .parameter "newPin"
    .parameter "result"

    .prologue
    const/4 v3, 0x0

    .line 309
    if-eqz p1, :cond_16

    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPinCode:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 310
    iput-object p2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPinCode:Ljava/lang/String;

    .line 311
    if-eqz p3, :cond_15

    .line 312
    invoke-static {p3, v3, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 313
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 327
    :cond_15
    :goto_15
    return-void

    .line 319
    :cond_16
    if-eqz p3, :cond_15

    .line 320
    const-string v1, "SIM"

    const-string v2, "[SimCmd] changeIccPin: pin failed!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 324
    .local v0, ex:Lcom/android/internal/telephony/CommandException;
    invoke-static {p3, v3, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 325
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_15
.end method

.method public changeIccPin2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 8
    .parameter "oldPin2"
    .parameter "newPin2"
    .parameter "result"

    .prologue
    const/4 v3, 0x0

    .line 330
    if-eqz p1, :cond_16

    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPin2Code:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 331
    iput-object p2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPin2Code:Ljava/lang/String;

    .line 332
    if-eqz p3, :cond_15

    .line 333
    invoke-static {p3, v3, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 334
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 348
    :cond_15
    :goto_15
    return-void

    .line 340
    :cond_16
    if-eqz p3, :cond_15

    .line 341
    const-string v1, "SIM"

    const-string v2, "[SimCmd] changeIccPin2: pin2 failed!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 345
    .local v0, ex:Lcom/android/internal/telephony/CommandException;
    invoke-static {p3, v3, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 346
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_15
.end method

.method public checkFdnAllowed(Ljava/lang/String;Landroid/os/Message;)V
    .registers 4
    .parameter "number"
    .parameter "response"

    .prologue
    .line 978
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 979
    return-void
.end method

.method public conference(Landroid/os/Message;)V
    .registers 6
    .parameter "result"

    .prologue
    .line 799
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    const/16 v2, 0x33

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->onChld(CC)Z

    move-result v0

    .line 801
    .local v0, success:Z
    if-nez v0, :cond_16

    .line 802
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Hangup Error"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultFail(Landroid/os/Message;Ljava/lang/Throwable;)V

    .line 806
    :goto_15
    return-void

    .line 804
    :cond_16
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    goto :goto_15
.end method

.method public deactivateDataCall(ILandroid/os/Message;)V
    .registers 3
    .parameter "cid"
    .parameter "result"

    .prologue
    .line 1191
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public deactivateDefaultPDP(ILandroid/os/Message;)V
    .registers 3
    .parameter "cid"
    .parameter "result"

    .prologue
    .line 1196
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public deleteSmsOnRuim(ILandroid/os/Message;)V
    .registers 6
    .parameter "index"
    .parameter "response"

    .prologue
    .line 1130
    const-string v0, "SIM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Delete RUIM message at index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1132
    return-void
.end method

.method public deleteSmsOnSim(ILandroid/os/Message;)V
    .registers 6
    .parameter "index"
    .parameter "response"

    .prologue
    .line 1125
    const-string v0, "SIM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Delete message at index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1127
    return-void
.end method

.method public dial(ILjava/lang/String;ILandroid/os/Message;)V
    .registers 6
    .parameter "whichLine"
    .parameter "address"
    .parameter "clirMode"
    .parameter "result"

    .prologue
    .line 532
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->onDial(Ljava/lang/String;)Z

    .line 534
    const/4 v0, 0x0

    invoke-direct {p0, p4, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 535
    return-void
.end method

.method public dial(Ljava/lang/String;ILandroid/os/Message;)V
    .registers 5
    .parameter "address"
    .parameter "clirMode"
    .parameter "result"

    .prologue
    .line 522
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->onDial(Ljava/lang/String;)Z

    .line 524
    const/4 v0, 0x0

    invoke-direct {p0, p3, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 525
    return-void
.end method

.method public exitEmergencyCallbackMode(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 1372
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public explicitCallTransfer(Landroid/os/Message;)V
    .registers 6
    .parameter "result"

    .prologue
    .line 819
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    const/16 v2, 0x34

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->onChld(CC)Z

    move-result v0

    .line 821
    .local v0, success:Z
    if-nez v0, :cond_16

    .line 822
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Hangup Error"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultFail(Landroid/os/Message;Ljava/lang/Throwable;)V

    .line 826
    :goto_15
    return-void

    .line 824
    :cond_16
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    goto :goto_15
.end method

.method public factoryReset(Landroid/os/Message;)V
    .registers 3
    .parameter "result"

    .prologue
    .line 697
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 698
    return-void
.end method

.method public forceDataDormancy(Landroid/os/Message;)V
    .registers 2
    .parameter "response"

    .prologue
    .line 1730
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1731
    return-void
.end method

.method public getAllSimPinStatus(Landroid/os/Message;)V
    .registers 3
    .parameter "response"

    .prologue
    .line 983
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 984
    return-void
.end method

.method public getAvailableNetworks(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 1402
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public getBasebandVersion(Landroid/os/Message;)V
    .registers 3
    .parameter "result"

    .prologue
    .line 1405
    const-string v0, "SimulatedCommands"

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1406
    return-void
.end method

.method public getCDMASubscription(Landroid/os/Message;)V
    .registers 4
    .parameter "response"

    .prologue
    .line 1639
    const-string v0, "SIM"

    const-string v1, "CDMA not implemented in SimulatedCommands"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1640
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1641
    return-void
.end method

.method public getCLIR(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 1319
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public getCallCost(Landroid/os/Message;)V
    .registers 2
    .parameter "response"

    .prologue
    .line 1439
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public getCdmaBroadcastConfig(Landroid/os/Message;)V
    .registers 2
    .parameter "response"

    .prologue
    .line 1720
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1722
    return-void
.end method

.method public getCurrentCalls(Landroid/os/Message;)V
    .registers 4
    .parameter "result"

    .prologue
    .line 481
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioState;->SIM_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v0, v1, :cond_10

    .line 483
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    invoke-virtual {v0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->getDriverCalls()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 490
    :goto_f
    return-void

    .line 486
    :cond_10
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultFail(Landroid/os/Message;Ljava/lang/Throwable;)V

    goto :goto_f
.end method

.method public getDataCallList(Landroid/os/Message;)V
    .registers 4
    .parameter "result"

    .prologue
    .line 507
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 508
    return-void
.end method

.method public getDeviceIdentity(Landroid/os/Message;)V
    .registers 4
    .parameter "response"

    .prologue
    .line 1633
    const-string v0, "SIM"

    const-string v1, "CDMA not implemented in SimulatedCommands"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1634
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1635
    return-void
.end method

.method public getEmodeInfoPage(I)Ljava/lang/String;
    .registers 5
    .parameter "EngIndex"

    .prologue
    .line 650
    const-string v0, "SIM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Hidden] GSMPhone.java : getEmodeInfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    const-string v0, "Emode Info"

    return-object v0
.end method

.method public getEngineeringModeInfo(ILandroid/os/Message;)I
    .registers 6
    .parameter "data"
    .parameter "result"

    .prologue
    .line 644
    const-string v0, "SIM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Hidden] EngMode.java : getEngineeringModeInfo : request page is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    const-string v0, "OK"

    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 646
    const/4 v0, 0x0

    return v0
.end method

.method public getFactoryVersion(Landroid/os/Message;)V
    .registers 3
    .parameter "result"

    .prologue
    .line 692
    const-string v0, "Factory Ver."

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 693
    return-void
.end method

.method public getGPRSRegistrationState(Landroid/os/Message;)V
    .registers 6
    .parameter "result"

    .prologue
    const/4 v3, 0x0

    .line 1048
    const/4 v1, 0x4

    new-array v0, v1, [Ljava/lang/String;

    .line 1050
    .local v0, ret:[Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, "5"

    aput-object v2, v0, v1

    .line 1051
    const/4 v1, 0x1

    aput-object v3, v0, v1

    .line 1052
    const/4 v1, 0x2

    aput-object v3, v0, v1

    .line 1053
    const/4 v1, 0x3

    const-string v2, "2"

    aput-object v2, v0, v1

    .line 1055
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1056
    return-void
.end method

.method public getGsmBroadcastConfig(Landroid/os/Message;)V
    .registers 2
    .parameter "response"

    .prologue
    .line 1744
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1745
    return-void
.end method

.method public getHWVersion(Landroid/os/Message;)V
    .registers 3
    .parameter "result"

    .prologue
    .line 688
    const-string v0, "HW Ver."

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 689
    return-void
.end method

.method public getIMEI(Landroid/os/Message;)V
    .registers 3
    .parameter "result"

    .prologue
    .line 558
    const-string v0, "012345678901234"

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 559
    return-void
.end method

.method public getIMEISV(Landroid/os/Message;)V
    .registers 3
    .parameter "result"

    .prologue
    .line 569
    const-string v0, "99"

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 570
    return-void
.end method

.method public getIMSI(Landroid/os/Message;)V
    .registers 3
    .parameter "result"

    .prologue
    .line 547
    const-string v0, "012345678901234"

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 548
    return-void
.end method

.method public getIccStatus(Landroid/os/Message;)V
    .registers 4
    .parameter "result"

    .prologue
    .line 108
    sget-object v0, Lcom/android/internal/telephony/test/SimulatedCommands$1;->$SwitchMap$com$android$internal$telephony$CommandsInterface$RadioState:[I

    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1e

    .line 118
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$IccStatus;->ICC_NOT_READY:Lcom/android/internal/telephony/CommandsInterface$IccStatus;

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 121
    :goto_12
    return-void

    .line 110
    :pswitch_13
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$IccStatus;->ICC_READY:Lcom/android/internal/telephony/CommandsInterface$IccStatus;

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    goto :goto_12

    .line 114
    :pswitch_19
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->returnSimLockedStatus(Landroid/os/Message;)V

    goto :goto_12

    .line 108
    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_13
        :pswitch_19
    .end packed-switch
.end method

.method public getLastCallFailCause(Landroid/os/Message;)V
    .registers 5
    .parameter "result"

    .prologue
    .line 891
    const/4 v1, 0x1

    new-array v0, v1, [I

    .line 893
    .local v0, ret:[I
    const/4 v1, 0x0

    iget v2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->nextCallFailCause:I

    aput v2, v0, v1

    .line 894
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 895
    return-void
.end method

.method public getLastDataCallFailCause(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 906
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 907
    return-void
.end method

.method public getLastPdpFailCause(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 901
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 902
    return-void
.end method

.method public getLineSelectInfo(Landroid/os/Message;)V
    .registers 2
    .parameter "response"

    .prologue
    .line 1445
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public getModemVersion(Landroid/os/Message;)V
    .registers 3
    .parameter "result"

    .prologue
    .line 683
    const-string v0, "Modem Ver."

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 684
    return-void
.end method

.method public getMute(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 911
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public getNeighboringCids(Landroid/os/Message;)V
    .registers 7
    .parameter "result"

    .prologue
    const/4 v4, 0x7

    .line 1211
    new-array v1, v4, [I

    .line 1213
    .local v1, ret:[I
    const/4 v2, 0x0

    const/4 v3, 0x6

    aput v3, v1, v2

    .line 1214
    const/4 v0, 0x1

    .local v0, i:I
    :goto_8
    if-ge v0, v4, :cond_f

    .line 1215
    aput v0, v1, v0

    .line 1214
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 1217
    :cond_f
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1218
    return-void
.end method

.method public getNetworkSelectionMode(Landroid/os/Message;)V
    .registers 5
    .parameter "result"

    .prologue
    const/4 v2, 0x0

    .line 1391
    const/4 v1, 0x1

    new-array v0, v1, [I

    .line 1393
    .local v0, ret:[I
    aput v2, v0, v2

    .line 1394
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1395
    return-void
.end method

.method public getOperator(Landroid/os/Message;)V
    .registers 5
    .parameter "result"

    .prologue
    .line 1065
    const/4 v1, 0x3

    new-array v0, v1, [Ljava/lang/String;

    .line 1067
    .local v0, ret:[Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, "El Telco Loco"

    aput-object v2, v0, v1

    .line 1068
    const/4 v1, 0x1

    const-string v2, "Telco Loco"

    aput-object v2, v0, v1

    .line 1069
    const/4 v1, 0x2

    const-string v2, "001001"

    aput-object v2, v0, v1

    .line 1071
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1072
    return-void
.end method

.method public getPDPContextList(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 496
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->getDataCallList(Landroid/os/Message;)V

    .line 497
    return-void
.end method

.method public getPreferredNetworkType(Landroid/os/Message;)V
    .registers 5
    .parameter "result"

    .prologue
    .line 1204
    const/4 v1, 0x1

    new-array v0, v1, [I

    .line 1206
    .local v0, ret:[I
    const/4 v1, 0x0

    iget v2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mNetworkType:I

    aput v2, v0, v1

    .line 1207
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1208
    return-void
.end method

.method public getPreferredVoicePrivacy(Landroid/os/Message;)V
    .registers 4
    .parameter "result"

    .prologue
    .line 1665
    const-string v0, "SIM"

    const-string v1, "CDMA not implemented in SimulatedCommands"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1666
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1667
    return-void
.end method

.method public getRegistrationState(Landroid/os/Message;)V
    .registers 7
    .parameter "result"

    .prologue
    const/16 v4, 0xe

    const/4 v3, 0x0

    .line 1009
    new-array v0, v4, [Ljava/lang/String;

    .line 1011
    .local v0, ret:[Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, "5"

    aput-object v2, v0, v1

    .line 1012
    const/4 v1, 0x1

    aput-object v3, v0, v1

    .line 1013
    const/4 v1, 0x2

    aput-object v3, v0, v1

    .line 1014
    const/4 v1, 0x3

    aput-object v3, v0, v1

    .line 1015
    const/4 v1, 0x4

    aput-object v3, v0, v1

    .line 1016
    const/4 v1, 0x5

    aput-object v3, v0, v1

    .line 1017
    const/4 v1, 0x6

    aput-object v3, v0, v1

    .line 1018
    const/4 v1, 0x7

    aput-object v3, v0, v1

    .line 1019
    const/16 v1, 0x8

    aput-object v3, v0, v1

    .line 1020
    const/16 v1, 0x9

    aput-object v3, v0, v1

    .line 1021
    const/16 v1, 0xa

    aput-object v3, v0, v1

    .line 1022
    const/16 v1, 0xb

    aput-object v3, v0, v1

    .line 1023
    const/16 v1, 0xc

    aput-object v3, v0, v1

    .line 1024
    const/16 v1, 0xd

    aput-object v3, v0, v1

    .line 1025
    aput-object v3, v0, v4

    .line 1027
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1028
    return-void
.end method

.method public getSIMUnlockRetryCount(Landroid/os/Message;)V
    .registers 2
    .parameter "response"

    .prologue
    .line 1751
    return-void
.end method

.method public getSearchStatus(Landroid/os/Message;)V
    .registers 3
    .parameter "response"

    .prologue
    .line 657
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 658
    return-void
.end method

.method public getSignalStrength(Landroid/os/Message;)V
    .registers 5
    .parameter "result"

    .prologue
    const/4 v2, 0x0

    .line 921
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 923
    .local v0, ret:[I
    const/16 v1, 0x17

    aput v1, v0, v2

    .line 924
    const/4 v1, 0x1

    aput v2, v0, v1

    .line 926
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 927
    return-void
.end method

.method public getSmscAddress(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 1225
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1226
    return-void
.end method

.method public goFastDormancy(Landroid/os/Message;)I
    .registers 4
    .parameter "result"

    .prologue
    .line 666
    const-string v0, "SIM"

    const-string v1, "[Hidden] DataConnectionTracker.java : goFastDormancy "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    const-string v0, "OK"

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 668
    const/4 v0, 0x0

    return v0
.end method

.method public handleCallSetupRequestFromSim(ZLandroid/os/Message;)V
    .registers 4
    .parameter "accept"
    .parameter "response"

    .prologue
    .line 998
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 999
    return-void
.end method

.method public hangupConnection(ILandroid/os/Message;)V
    .registers 8
    .parameter "gsmIndex"
    .parameter "result"

    .prologue
    const-string v4, "GSM"

    .line 715
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    const/16 v2, 0x31

    add-int/lit8 v3, p1, 0x30

    int-to-char v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->onChld(CC)Z

    move-result v0

    .line 717
    .local v0, success:Z
    if-nez v0, :cond_21

    .line 718
    const-string v1, "GSM"

    const-string v1, "[SimCmd] hangupConnection: resultFail"

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Hangup Error"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultFail(Landroid/os/Message;Ljava/lang/Throwable;)V

    .line 724
    :goto_20
    return-void

    .line 721
    :cond_21
    const-string v1, "GSM"

    const-string v1, "[SimCmd] hangupConnection: resultSuccess"

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    const/4 v1, 0x0

    invoke-direct {p0, p2, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    goto :goto_20
.end method

.method public hangupForegroundResumeBackground(Landroid/os/Message;)V
    .registers 6
    .parameter "result"

    .prologue
    .line 758
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    const/16 v2, 0x31

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->onChld(CC)Z

    move-result v0

    .line 760
    .local v0, success:Z
    if-nez v0, :cond_16

    .line 761
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Hangup Error"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultFail(Landroid/os/Message;Ljava/lang/Throwable;)V

    .line 765
    :goto_15
    return-void

    .line 763
    :cond_16
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    goto :goto_15
.end method

.method public hangupWaitingOrBackground(Landroid/os/Message;)V
    .registers 6
    .parameter "result"

    .prologue
    .line 737
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    const/16 v2, 0x30

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->onChld(CC)Z

    move-result v0

    .line 739
    .local v0, success:Z
    if-nez v0, :cond_16

    .line 740
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Hangup Error"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultFail(Landroid/os/Message;Ljava/lang/Throwable;)V

    .line 744
    :goto_15
    return-void

    .line 742
    :cond_16
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    goto :goto_15
.end method

.method public iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 10
    .parameter "command"
    .parameter "fileid"
    .parameter "path"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "data"
    .parameter "pin2"
    .parameter "result"

    .prologue
    .line 1291
    invoke-direct {p0, p9}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1292
    return-void
.end method

.method public invokeOemRilRequestRaw([BLandroid/os/Message;)V
    .registers 4
    .parameter "data"
    .parameter "response"

    .prologue
    .line 1466
    if-eqz p2, :cond_b

    .line 1467
    invoke-static {p2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    iput-object p1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 1468
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 1470
    :cond_b
    return-void
.end method

.method public invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V
    .registers 4
    .parameter "strings"
    .parameter "response"

    .prologue
    .line 1474
    if-eqz p2, :cond_b

    .line 1475
    invoke-static {p2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    iput-object p1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 1476
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 1478
    :cond_b
    return-void
.end method

.method public pauseResponses()V
    .registers 2

    .prologue
    .line 1565
    iget v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->pausedResponseCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->pausedResponseCount:I

    .line 1566
    return-void
.end method

.method public progressConnectingCallState()V
    .registers 2

    .prologue
    .line 1492
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    invoke-virtual {v0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->progressConnectingCallState()V

    .line 1493
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mCallStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1494
    return-void
.end method

.method public progressConnectingToActive()V
    .registers 2

    .prologue
    .line 1499
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    invoke-virtual {v0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->progressConnectingToActive()V

    .line 1500
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mCallStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1501
    return-void
.end method

.method public queryAvailableBandMode(Landroid/os/Message;)V
    .registers 7
    .parameter "result"

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x4

    .line 947
    new-array v0, v2, [I

    .line 949
    .local v0, ret:[I
    const/4 v1, 0x0

    aput v2, v0, v1

    .line 950
    const/4 v1, 0x1

    aput v3, v0, v1

    .line 951
    aput v4, v0, v3

    .line 952
    aput v2, v0, v4

    .line 954
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 955
    return-void
.end method

.method public queryCLIP(Landroid/os/Message;)V
    .registers 2
    .parameter "response"

    .prologue
    .line 1300
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public queryCNAP(Landroid/os/Message;)V
    .registers 2
    .parameter "response"

    .prologue
    .line 1450
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V
    .registers 5
    .parameter "cfReason"
    .parameter "serviceClass"
    .parameter "number"
    .parameter "result"

    .prologue
    .line 1369
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public queryCallWaiting(ILandroid/os/Message;)V
    .registers 3
    .parameter "serviceClass"
    .parameter "response"

    .prologue
    .line 1338
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1339
    return-void
.end method

.method public queryCdmaRoamingPreference(Landroid/os/Message;)V
    .registers 4
    .parameter "response"

    .prologue
    .line 1650
    const-string v0, "SIM"

    const-string v1, "CDMA not implemented in SimulatedCommands"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1651
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1652
    return-void
.end method

.method public queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
    .registers 11
    .parameter "facility"
    .parameter "pin"
    .parameter "serviceClass"
    .parameter "result"

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v5, "SIM"

    .line 379
    if-eqz p1, :cond_44

    const-string v1, "SC"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 381
    if-eqz p4, :cond_3e

    .line 382
    new-array v0, v2, [I

    .line 383
    .local v0, r:[I
    iget-boolean v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimLockEnabled:Z

    if-eqz v1, :cond_3f

    move v1, v2

    :goto_18
    aput v1, v0, v3

    .line 384
    const-string v1, "SIM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SimCmd] queryFacilityLock: SIM is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, v0, v3

    if-nez v2, :cond_41

    const-string v2, "unlocked"

    :goto_2d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    invoke-static {p4, v0, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 387
    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    .line 404
    .end local v0           #r:[I
    :cond_3e
    :goto_3e
    return-void

    .restart local v0       #r:[I
    :cond_3f
    move v1, v3

    .line 383
    goto :goto_18

    .line 384
    :cond_41
    const-string v2, "locked"

    goto :goto_2d

    .line 390
    .end local v0           #r:[I
    :cond_44
    if-eqz p1, :cond_83

    const-string v1, "FD"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_83

    .line 392
    if-eqz p4, :cond_3e

    .line 393
    new-array v0, v2, [I

    .line 394
    .restart local v0       #r:[I
    iget-boolean v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimFdnEnabled:Z

    if-eqz v1, :cond_7e

    move v1, v2

    :goto_57
    aput v1, v0, v3

    .line 395
    const-string v1, "SIM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SimCmd] queryFacilityLock: FDN is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, v0, v3

    if-nez v2, :cond_80

    const-string v2, "disabled"

    :goto_6c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    invoke-static {p4, v0, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 398
    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    goto :goto_3e

    :cond_7e
    move v1, v3

    .line 394
    goto :goto_57

    .line 395
    :cond_80
    const-string v2, "enabled"

    goto :goto_6c

    .line 403
    .end local v0           #r:[I
    :cond_83
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    goto :goto_3e
.end method

.method public queryTTYMode(Landroid/os/Message;)V
    .registers 4
    .parameter "response"

    .prologue
    .line 1695
    const-string v0, "SIM"

    const-string v1, "CDMA not implemented in SimulatedCommands"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1696
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1697
    return-void
.end method

.method public readSMSTemplate(Landroid/os/Message;)V
    .registers 4
    .parameter "response"

    .prologue
    .line 1152
    const-string v0, "SIM"

    const-string v1, "Read SMS Template on SIM "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1154
    return-void
.end method

.method public rejectCall(Landroid/os/Message;)V
    .registers 6
    .parameter "result"

    .prologue
    .line 873
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    const/16 v2, 0x30

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->onChld(CC)Z

    move-result v0

    .line 875
    .local v0, success:Z
    if-nez v0, :cond_16

    .line 876
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Hangup Error"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultFail(Landroid/os/Message;Ljava/lang/Throwable;)V

    .line 880
    :goto_15
    return-void

    .line 878
    :cond_16
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    goto :goto_15
.end method

.method public reportSmsMemoryStatus(ZLandroid/os/Message;)V
    .registers 3
    .parameter "available"
    .parameter "result"

    .prologue
    .line 1233
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1234
    return-void
.end method

.method public reportStkServiceIsRunning(Landroid/os/Message;)V
    .registers 3
    .parameter "result"

    .prologue
    .line 1237
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1238
    return-void
.end method

.method public resetRadio(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 1461
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1462
    return-void
.end method

.method public resumeResponses()V
    .registers 5

    .prologue
    .line 1570
    iget v2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->pausedResponseCount:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->pausedResponseCount:I

    .line 1572
    iget v2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->pausedResponseCount:I

    if-nez v2, :cond_27

    .line 1573
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->pausedResponses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, s:I
    :goto_11
    if-ge v0, v1, :cond_21

    .line 1574
    iget-object v2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->pausedResponses:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1573
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 1576
    :cond_21
    iget-object v2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->pausedResponses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1580
    .end local v0           #i:I
    .end local v1           #s:I
    :goto_26
    return-void

    .line 1578
    :cond_27
    const-string v2, "GSM"

    const-string v3, "SimulatedCommands.resumeResponses < 0"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26
.end method

.method public sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V
    .registers 6
    .parameter "dtmfString"
    .parameter "on"
    .parameter "off"
    .parameter "result"

    .prologue
    .line 1107
    const/4 v0, 0x0

    invoke-direct {p0, p4, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1108
    return-void
.end method

.method public sendCDMAFeatureCode(Ljava/lang/String;Landroid/os/Message;)V
    .registers 5
    .parameter "FeatureCode"
    .parameter "response"

    .prologue
    .line 1703
    const-string v0, "SIM"

    const-string v1, "CDMA not implemented in SimulatedCommands"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1704
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1705
    return-void
.end method

.method public sendCdmaSms([BLandroid/os/Message;)V
    .registers 5
    .parameter "pdu"
    .parameter "response"

    .prologue
    .line 1711
    const-string v0, "SIM"

    const-string v1, "CDMA not implemented in SimulatedCommands"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1712
    return-void
.end method

.method public sendDtmf(CLandroid/os/Message;)V
    .registers 4
    .parameter "c"
    .parameter "result"

    .prologue
    .line 1080
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1081
    return-void
.end method

.method public sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V
    .registers 4
    .parameter "contents"
    .parameter "response"

    .prologue
    .line 990
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 991
    return-void
.end method

.method public sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 4
    .parameter "smscPDU"
    .parameter "pdu"
    .parameter "result"

    .prologue
    .line 1116
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public sendSMSexpectmore(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 4
    .parameter "smscPDU"
    .parameter "pdu"
    .parameter "result"

    .prologue
    .line 1120
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public sendSTKInitCompleted(Landroid/os/Message;)V
    .registers 3
    .parameter "response"

    .prologue
    .line 966
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 967
    return-void
.end method

.method public sendTerminalResponse(Ljava/lang/String;Landroid/os/Message;)V
    .registers 4
    .parameter "contents"
    .parameter "response"

    .prologue
    .line 961
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 962
    return-void
.end method

.method public sendUSSD(Ljava/lang/String;Landroid/os/Message;)V
    .registers 6
    .parameter "ussdString"
    .parameter "result"

    .prologue
    const/4 v1, 0x0

    const-string v2, "0"

    .line 1425
    const-string v0, "#646#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1426
    invoke-direct {p0, p2, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1429
    const-string v0, "0"

    const-string v0, "You have NNN minutes remaining."

    invoke-virtual {p0, v2, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->triggerIncomingUssd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1435
    :goto_15
    return-void

    .line 1431
    :cond_16
    invoke-direct {p0, p2, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1433
    const-string v0, "0"

    const-string v0, "All Done"

    invoke-virtual {p0, v2, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->triggerIncomingUssd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15
.end method

.method public separateConnection(ILandroid/os/Message;)V
    .registers 7
    .parameter "gsmIndex"
    .parameter "result"

    .prologue
    .line 836
    add-int/lit8 v2, p1, 0x30

    int-to-char v0, v2

    .line 837
    .local v0, ch:C
    iget-object v2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    const/16 v3, 0x32

    invoke-virtual {v2, v3, v0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->onChld(CC)Z

    move-result v1

    .line 839
    .local v1, success:Z
    if-nez v1, :cond_18

    .line 840
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Hangup Error"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2, v2}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultFail(Landroid/os/Message;Ljava/lang/Throwable;)V

    .line 844
    :goto_17
    return-void

    .line 842
    :cond_18
    const/4 v2, 0x0

    invoke-direct {p0, p2, v2}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    goto :goto_17
.end method

.method public setArm9_NVDB_Update(ILandroid/os/Message;)I
    .registers 4
    .parameter "cmd_type"
    .parameter "result"

    .prologue
    .line 581
    const-string v0, "OK"

    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 582
    const/4 v0, 0x0

    return v0
.end method

.method public setAutoProgressConnectingCall(Z)V
    .registers 3
    .parameter "b"

    .prologue
    .line 1508
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->setAutoProgressConnectingCall(Z)V

    .line 1509
    return-void
.end method

.method public setBandMode(ILandroid/os/Message;)V
    .registers 4
    .parameter "bandMode"
    .parameter "result"

    .prologue
    .line 936
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 937
    return-void
.end method

.method public setBroadcastConfig(I[ILandroid/os/Message;)V
    .registers 7
    .parameter "size"
    .parameter "entries"
    .parameter "response"

    .prologue
    .line 1174
    const-string v0, "SIM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set broadcast Config "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1176
    return-void
.end method

.method public setCLIR(ILandroid/os/Message;)V
    .registers 3
    .parameter "clirMode"
    .parameter "result"

    .prologue
    .line 1327
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public setCallCost(IILandroid/os/Message;)V
    .registers 4
    .parameter "action"
    .parameter "value"
    .parameter "response"

    .prologue
    .line 1440
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public setCallCostPuct(ILjava/lang/String;Landroid/os/Message;)V
    .registers 4
    .parameter "price"
    .parameter "currency"
    .parameter "response"

    .prologue
    .line 1441
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V
    .registers 7
    .parameter "action"
    .parameter "cfReason"
    .parameter "serviceClass"
    .parameter "number"
    .parameter "timeSeconds"
    .parameter "result"

    .prologue
    .line 1358
    invoke-direct {p0, p6}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public setCallWaiting(ZILandroid/os/Message;)V
    .registers 4
    .parameter "enable"
    .parameter "serviceClass"
    .parameter "response"

    .prologue
    .line 1349
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1350
    return-void
.end method

.method public setCdmaBroadcastActivation(ZLandroid/os/Message;)V
    .registers 3
    .parameter "activate"
    .parameter "response"

    .prologue
    .line 1715
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1717
    return-void
.end method

.method public setCdmaBroadcastConfig([ILandroid/os/Message;)V
    .registers 3
    .parameter "configValuesArray"
    .parameter "response"

    .prologue
    .line 1725
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1727
    return-void
.end method

.method public setCdmaRoamingPreference(ILandroid/os/Message;)V
    .registers 5
    .parameter "cdmaRoamingType"
    .parameter "response"

    .prologue
    .line 1655
    const-string v0, "SIM"

    const-string v1, "CDMA not implemented in SimulatedCommands"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1656
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1657
    return-void
.end method

.method public setCdmaSubscription(ILandroid/os/Message;)V
    .registers 5
    .parameter "cdmaSubscriptionType"
    .parameter "response"

    .prologue
    .line 1645
    const-string v0, "SIM"

    const-string v1, "CDMA not implemented in SimulatedCommands"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1646
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1647
    return-void
.end method

.method public setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V
    .registers 10
    .parameter "facility"
    .parameter "lockEnabled"
    .parameter "pin"
    .parameter "serviceClass"
    .parameter "result"

    .prologue
    const/4 v2, 0x0

    const-string v3, "SIM"

    .line 415
    if-eqz p1, :cond_40

    const-string v1, "SC"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 417
    if-eqz p3, :cond_29

    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPinCode:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 418
    const-string v1, "SIM"

    const-string v1, "[SimCmd] setFacilityLock: pin is valid"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    iput-boolean p2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimLockEnabled:Z

    .line 421
    if-eqz p5, :cond_28

    .line 422
    invoke-static {p5, v2, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 423
    invoke-virtual {p5}, Landroid/os/Message;->sendToTarget()V

    .line 466
    :cond_28
    :goto_28
    return-void

    .line 429
    :cond_29
    if-eqz p5, :cond_28

    .line 430
    const-string v1, "SIM"

    const-string v1, "[SimCmd] setFacilityLock: pin failed!"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 434
    .local v0, ex:Lcom/android/internal/telephony/CommandException;
    invoke-static {p5, v2, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 435
    invoke-virtual {p5}, Landroid/os/Message;->sendToTarget()V

    goto :goto_28

    .line 439
    .end local v0           #ex:Lcom/android/internal/telephony/CommandException;
    :cond_40
    if-eqz p1, :cond_7d

    const-string v1, "FD"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7d

    .line 441
    if-eqz p3, :cond_66

    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPin2Code:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_66

    .line 442
    const-string v1, "SIM"

    const-string v1, "[SimCmd] setFacilityLock: pin2 is valid"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    iput-boolean p2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimFdnEnabled:Z

    .line 445
    if-eqz p5, :cond_28

    .line 446
    invoke-static {p5, v2, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 447
    invoke-virtual {p5}, Landroid/os/Message;->sendToTarget()V

    goto :goto_28

    .line 453
    :cond_66
    if-eqz p5, :cond_28

    .line 454
    const-string v1, "SIM"

    const-string v1, "[SimCmd] setFacilityLock: pin2 failed!"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 458
    .restart local v0       #ex:Lcom/android/internal/telephony/CommandException;
    invoke-static {p5, v2, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 459
    invoke-virtual {p5}, Landroid/os/Message;->sendToTarget()V

    goto :goto_28

    .line 465
    .end local v0           #ex:Lcom/android/internal/telephony/CommandException;
    :cond_7d
    invoke-direct {p0, p5}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    goto :goto_28
.end method

.method public setGWDomainPref(ILandroid/os/Message;)V
    .registers 6
    .parameter "domainPref"
    .parameter "response"

    .prologue
    .line 1181
    const-string v0, "SIM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set GW Domain Pref with domainPref "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1183
    return-void
.end method

.method public setGsmBroadcastActivation(ZLandroid/os/Message;)V
    .registers 3
    .parameter "activate"
    .parameter "response"

    .prologue
    .line 1735
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1736
    return-void
.end method

.method public setGsmBroadcastConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;Landroid/os/Message;)V
    .registers 3
    .parameter "config"
    .parameter "response"

    .prologue
    .line 1740
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1741
    return-void
.end method

.method public setHiddenReset(ZLandroid/os/Message;)I
    .registers 4
    .parameter "Is_HiddenReset"
    .parameter "result"

    .prologue
    .line 586
    const-string v0, "OK"

    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 587
    const/4 v0, 0x0

    return v0
.end method

.method public setLineSelectInfo(ILandroid/os/Message;)V
    .registers 3
    .parameter "line"
    .parameter "response"

    .prologue
    .line 1446
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public setLocationUpdates(ZLandroid/os/Message;)V
    .registers 3
    .parameter "enable"
    .parameter "response"

    .prologue
    .line 1221
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1222
    return-void
.end method

.method public setMemoryFull(ILandroid/os/Message;)V
    .registers 5
    .parameter "bFull"
    .parameter "response"

    .prologue
    .line 1163
    const-string v0, "SIM"

    const-string v1, "Set Client\'s memory full"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1165
    return-void
.end method

.method public setMute(ZLandroid/os/Message;)V
    .registers 3
    .parameter "enableMute"
    .parameter "result"

    .prologue
    .line 909
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public setNV_A5_ALGO(ILandroid/os/Message;)I
    .registers 6
    .parameter "data"
    .parameter "result"

    .prologue
    .line 600
    const-string v0, "SIM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Hidden] GSMPhone.java : setNV A5 ALGO = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    const-string v0, "OK"

    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 602
    const/4 v0, 0x0

    return v0
.end method

.method public setNV_DL_FREQ(ILandroid/os/Message;)I
    .registers 6
    .parameter "data"
    .parameter "result"

    .prologue
    .line 624
    const-string v0, "SIM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Hidden] GSMPhone.java : setNV_DL_FREQ = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    const-string v0, "OK"

    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 626
    const/4 v0, 0x0

    return v0
.end method

.method public setNV_DL_FREQ_EN(ILandroid/os/Message;)I
    .registers 6
    .parameter "data"
    .parameter "result"

    .prologue
    .line 618
    const-string v0, "SIM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Hidden] GSMPhone.java : setNV_DL_FREQ_EN = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    const-string v0, "OK"

    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 620
    const/4 v0, 0x0

    return v0
.end method

.method public setNV_GCFFlag(ILandroid/os/Message;)I
    .registers 6
    .parameter "data"
    .parameter "result"

    .prologue
    .line 612
    const-string v0, "SIM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Hidden] GSMPhone.java : setNV_GCFFlag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    const-string v0, "OK"

    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 614
    const/4 v0, 0x0

    return v0
.end method

.method public setNV_HSDPACat(ILandroid/os/Message;)I
    .registers 6
    .parameter "data"
    .parameter "result"

    .prologue
    .line 606
    const-string v0, "SIM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Hidden] GSMPhone.java : setNV_HSDPACat = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    const-string v0, "OK"

    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 608
    const/4 v0, 0x0

    return v0
.end method

.method public setNV_RRCVer(ILandroid/os/Message;)I
    .registers 6
    .parameter "data"
    .parameter "result"

    .prologue
    .line 594
    const-string v0, "SIM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Hidden] GSMPhone.java : setNV RRC Version = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    const-string v0, "OK"

    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 596
    const/4 v0, 0x0

    return v0
.end method

.method public setNetworkSelectionModeAutomatic(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 1371
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public setNetworkSelectionModeManual(Ljava/lang/String;Landroid/os/Message;)V
    .registers 3
    .parameter "operatorNumeric"
    .parameter "result"

    .prologue
    .line 1374
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public setNetworkSelectionModeManual(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 4
    .parameter "operatorNumeric"
    .parameter "operatorRat"
    .parameter "result"

    .prologue
    .line 1378
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public setNextCallFailCause(I)V
    .registers 2
    .parameter "gsmCause"

    .prologue
    .line 1518
    iput p1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->nextCallFailCause:I

    .line 1519
    return-void
.end method

.method public setNextDialFailImmediately(Z)V
    .registers 3
    .parameter "b"

    .prologue
    .line 1513
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->setNextDialFailImmediately(Z)V

    .line 1514
    return-void
.end method

.method public setOTAMode(ILandroid/os/Message;)I
    .registers 6
    .parameter "data"
    .parameter "result"

    .prologue
    .line 635
    const-string v0, "SIM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Hidden] GSMPhone.java : setOTAMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    const-string v0, "OK"

    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 637
    const/4 v0, 0x0

    return v0
.end method

.method public setPhoneType(I)V
    .registers 4
    .parameter "phoneType"

    .prologue
    .line 1661
    const-string v0, "SIM"

    const-string v1, "CDMA not implemented in SimulatedCommands"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1662
    return-void
.end method

.method public setPreferredNetworkType(ILandroid/os/Message;)V
    .registers 4
    .parameter "networkType"
    .parameter "result"

    .prologue
    .line 1199
    iput p1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mNetworkType:I

    .line 1200
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1201
    return-void
.end method

.method public setPreferredVoicePrivacy(ZLandroid/os/Message;)V
    .registers 5
    .parameter "enable"
    .parameter "result"

    .prologue
    .line 1670
    const-string v0, "SIM"

    const-string v1, "CDMA not implemented in SimulatedCommands"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1671
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1672
    return-void
.end method

.method public setPreviousNetworkSelectionModeManual(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 4
    .parameter "operatorNumeric"
    .parameter "operatorRat"
    .parameter "result"

    .prologue
    .line 1621
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    return-void
.end method

.method public setRadioPower(ZLandroid/os/Message;)V
    .registers 6
    .parameter "on"
    .parameter "result"

    .prologue
    .line 1257
    if-eqz p1, :cond_2e

    .line 1258
    invoke-direct {p0}, Lcom/android/internal/telephony/test/SimulatedCommands;->isSimLocked()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1259
    const-string v0, "SIM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SimCmd] setRadioPower: SIM locked! state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimLockedState:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->SIM_LOCKED_OR_ABSENT:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V

    .line 1269
    :goto_27
    return-void

    .line 1264
    :cond_28
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->SIM_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V

    goto :goto_27

    .line 1267
    :cond_2e
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V

    goto :goto_27
.end method

.method public setRadioPowerOff(Landroid/os/Message;)V
    .registers 3
    .parameter "result"

    .prologue
    .line 1251
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V

    .line 1252
    return-void
.end method

.method public setRilPowerOff(Landroid/os/Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 1272
    return-void
.end method

.method public setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V
    .registers 3
    .parameter "address"
    .parameter "result"

    .prologue
    .line 1229
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1230
    return-void
.end method

.method public setStabilityTest(ILandroid/os/Message;)I
    .registers 4
    .parameter "cmd_type"
    .parameter "result"

    .prologue
    .line 576
    const-string v0, "OK"

    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 577
    const/4 v0, 0x0

    return v0
.end method

.method public setSuppServiceNotifications(ZLandroid/os/Message;)V
    .registers 5
    .parameter "enable"
    .parameter "result"

    .prologue
    .line 359
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 361
    if-eqz p1, :cond_11

    iget-boolean v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSsnNotifyOn:Z

    if-eqz v0, :cond_11

    .line 362
    const-string v0, "SIM"

    const-string v1, "Supp Service Notifications already enabled!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :cond_11
    iput-boolean p1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSsnNotifyOn:Z

    .line 366
    return-void
.end method

.method public setTTYMode(ILandroid/os/Message;)V
    .registers 5
    .parameter "ttyMode"
    .parameter "response"

    .prologue
    .line 1682
    const-string v0, "SIM"

    const-string v1, "CDMA not implemented in SimulatedCommands"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1683
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1684
    return-void
.end method

.method public setVsimMode(ZLandroid/os/Message;)V
    .registers 4
    .parameter "vsimOn"
    .parameter "response"

    .prologue
    .line 973
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 974
    return-void
.end method

.method public setupDataCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 7
    .parameter "radioTechnology"
    .parameter "profile"
    .parameter "apn"
    .parameter "user"
    .parameter "password"
    .parameter "result"

    .prologue
    .line 1188
    invoke-direct {p0, p6}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1189
    return-void
.end method

.method public setupDefaultPDP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 5
    .parameter "apn"
    .parameter "user"
    .parameter "password"
    .parameter "result"

    .prologue
    .line 1145
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1146
    return-void
.end method

.method public shutdown()V
    .registers 3

    .prologue
    .line 1543
    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V

    .line 1544
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 1545
    .local v0, looper:Landroid/os/Looper;
    if-eqz v0, :cond_10

    .line 1546
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 1548
    :cond_10
    return-void
.end method

.method public startDtmf(CLandroid/os/Message;)V
    .registers 4
    .parameter "c"
    .parameter "result"

    .prologue
    .line 1089
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1090
    return-void
.end method

.method public stopDtmf(Landroid/os/Message;)V
    .registers 3
    .parameter "result"

    .prologue
    .line 1098
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1099
    return-void
.end method

.method public supplyIccPin(Ljava/lang/String;Landroid/os/Message;)V
    .registers 8
    .parameter "pin"
    .parameter "result"

    .prologue
    const/4 v3, 0x0

    const-string v4, "SIM"

    .line 143
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimLockedState:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    sget-object v2, Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;->REQUIRE_PIN:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    if-eq v1, v2, :cond_31

    .line 144
    const-string v1, "SIM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SimCmd] supplyIccPin: wrong state, state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimLockedState:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 148
    .local v0, ex:Lcom/android/internal/telephony/CommandException;
    invoke-static {p2, v3, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 149
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 182
    .end local v0           #ex:Lcom/android/internal/telephony/CommandException;
    :cond_30
    :goto_30
    return-void

    .line 153
    :cond_31
    if-eqz p1, :cond_57

    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPinCode:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_57

    .line 154
    const-string v1, "SIM"

    const-string v1, "[SimCmd] supplyIccPin: success!"

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioState;->SIM_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V

    .line 156
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPinUnlockAttempts:I

    .line 157
    sget-object v1, Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;->NONE:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    iput-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimLockedState:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    .line 159
    if-eqz p2, :cond_30

    .line 160
    invoke-static {p2, v3, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 161
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_30

    .line 167
    :cond_57
    if-eqz p2, :cond_30

    .line 168
    iget v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPinUnlockAttempts:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPinUnlockAttempts:I

    .line 170
    const-string v1, "SIM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SimCmd] supplyIccPin: failed! attempt="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPinUnlockAttempts:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPinUnlockAttempts:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_89

    .line 173
    const-string v1, "SIM"

    const-string v1, "[SimCmd] supplyIccPin: set state to REQUIRE_PUK"

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    sget-object v1, Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;->REQUIRE_PUK:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    iput-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimLockedState:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    .line 177
    :cond_89
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 179
    .restart local v0       #ex:Lcom/android/internal/telephony/CommandException;
    invoke-static {p2, v3, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 180
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_30
.end method

.method public supplyIccPin2(Ljava/lang/String;Landroid/os/Message;)V
    .registers 8
    .parameter "pin2"
    .parameter "result"

    .prologue
    const/4 v3, 0x0

    const-string v4, "SIM"

    .line 227
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimFdnEnabledState:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    sget-object v2, Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;->REQUIRE_PIN2:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    if-eq v1, v2, :cond_31

    .line 228
    const-string v1, "SIM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SimCmd] supplyIccPin2: wrong state, state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimFdnEnabledState:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 232
    .local v0, ex:Lcom/android/internal/telephony/CommandException;
    invoke-static {p2, v3, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 233
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 265
    .end local v0           #ex:Lcom/android/internal/telephony/CommandException;
    :cond_30
    :goto_30
    return-void

    .line 237
    :cond_31
    if-eqz p1, :cond_52

    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPin2Code:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_52

    .line 238
    const-string v1, "SIM"

    const-string v1, "[SimCmd] supplyIccPin2: success!"

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPin2UnlockAttempts:I

    .line 240
    sget-object v1, Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;->NONE:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    iput-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimFdnEnabledState:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    .line 242
    if-eqz p2, :cond_30

    .line 243
    invoke-static {p2, v3, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 244
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_30

    .line 250
    :cond_52
    if-eqz p2, :cond_30

    .line 251
    iget v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPin2UnlockAttempts:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPin2UnlockAttempts:I

    .line 253
    const-string v1, "SIM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SimCmd] supplyIccPin2: failed! attempt="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPin2UnlockAttempts:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPin2UnlockAttempts:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_84

    .line 256
    const-string v1, "SIM"

    const-string v1, "[SimCmd] supplyIccPin2: set state to REQUIRE_PUK2"

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    sget-object v1, Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;->REQUIRE_PUK2:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    iput-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimFdnEnabledState:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    .line 260
    :cond_84
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 262
    .restart local v0       #ex:Lcom/android/internal/telephony/CommandException;
    invoke-static {p2, v3, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 263
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_30
.end method

.method public supplyIccPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 9
    .parameter "puk"
    .parameter "newPin"
    .parameter "result"

    .prologue
    const/4 v3, 0x0

    const-string v4, "SIM"

    .line 185
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimLockedState:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    sget-object v2, Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;->REQUIRE_PUK:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    if-eq v1, v2, :cond_31

    .line 186
    const-string v1, "SIM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SimCmd] supplyIccPuk: wrong state, state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimLockedState:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 190
    .local v0, ex:Lcom/android/internal/telephony/CommandException;
    invoke-static {p3, v3, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 191
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 224
    .end local v0           #ex:Lcom/android/internal/telephony/CommandException;
    :cond_30
    :goto_30
    return-void

    .line 195
    :cond_31
    if-eqz p1, :cond_57

    const-string v1, "12345678"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_57

    .line 196
    const-string v1, "SIM"

    const-string v1, "[SimCmd] supplyIccPuk: success!"

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioState;->SIM_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V

    .line 198
    sget-object v1, Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;->NONE:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    iput-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimLockedState:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    .line 199
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPukUnlockAttempts:I

    .line 201
    if-eqz p3, :cond_30

    .line 202
    invoke-static {p3, v3, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 203
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_30

    .line 209
    :cond_57
    if-eqz p3, :cond_30

    .line 210
    iget v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPukUnlockAttempts:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPukUnlockAttempts:I

    .line 212
    const-string v1, "SIM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SimCmd] supplyIccPuk: failed! attempt="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPukUnlockAttempts:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPukUnlockAttempts:I

    const/16 v2, 0xa

    if-lt v1, v2, :cond_8a

    .line 215
    const-string v1, "SIM"

    const-string v1, "[SimCmd] supplyIccPuk: set state to SIM_PERM_LOCKED"

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    sget-object v1, Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;->SIM_PERM_LOCKED:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    iput-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimLockedState:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    .line 219
    :cond_8a
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 221
    .restart local v0       #ex:Lcom/android/internal/telephony/CommandException;
    invoke-static {p3, v3, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 222
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_30
.end method

.method public supplyIccPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 9
    .parameter "puk2"
    .parameter "newPin2"
    .parameter "result"

    .prologue
    const/4 v3, 0x0

    const-string v4, "SIM"

    .line 268
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimFdnEnabledState:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    sget-object v2, Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;->REQUIRE_PUK2:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    if-eq v1, v2, :cond_31

    .line 269
    const-string v1, "SIM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SimCmd] supplyIccPuk2: wrong state, state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimLockedState:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 273
    .local v0, ex:Lcom/android/internal/telephony/CommandException;
    invoke-static {p3, v3, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 274
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 306
    .end local v0           #ex:Lcom/android/internal/telephony/CommandException;
    :cond_30
    :goto_30
    return-void

    .line 278
    :cond_31
    if-eqz p1, :cond_52

    const-string v1, "87654321"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_52

    .line 279
    const-string v1, "SIM"

    const-string v1, "[SimCmd] supplyIccPuk2: success!"

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    sget-object v1, Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;->NONE:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    iput-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimFdnEnabledState:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    .line 281
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPuk2UnlockAttempts:I

    .line 283
    if-eqz p3, :cond_30

    .line 284
    invoke-static {p3, v3, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 285
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_30

    .line 291
    :cond_52
    if-eqz p3, :cond_30

    .line 292
    iget v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPuk2UnlockAttempts:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPuk2UnlockAttempts:I

    .line 294
    const-string v1, "SIM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SimCmd] supplyIccPuk2: failed! attempt="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPuk2UnlockAttempts:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mPuk2UnlockAttempts:I

    const/16 v2, 0xa

    if-lt v1, v2, :cond_85

    .line 297
    const-string v1, "SIM"

    const-string v1, "[SimCmd] supplyIccPuk2: set state to SIM_PERM_LOCKED"

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    sget-object v1, Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;->SIM_PERM_LOCKED:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    iput-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSimFdnEnabledState:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    .line 301
    :cond_85
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 303
    .restart local v0       #ex:Lcom/android/internal/telephony/CommandException;
    invoke-static {p3, v3, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 304
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_30
.end method

.method public supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V
    .registers 3
    .parameter "netpin"
    .parameter "result"

    .prologue
    .line 469
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 470
    return-void
.end method

.method public switchWaitingOrHoldingAndActive(Landroid/os/Message;)V
    .registers 6
    .parameter "result"

    .prologue
    .line 779
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    const/16 v2, 0x32

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->onChld(CC)Z

    move-result v0

    .line 781
    .local v0, success:Z
    if-nez v0, :cond_16

    .line 782
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Hangup Error"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultFail(Landroid/os/Message;Ljava/lang/Throwable;)V

    .line 786
    :goto_15
    return-void

    .line 784
    :cond_16
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/test/SimulatedCommands;->resultSuccess(Landroid/os/Message;Ljava/lang/Object;)V

    goto :goto_15
.end method

.method public triggerHangupAll()V
    .registers 2

    .prologue
    .line 1554
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    invoke-virtual {v0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->triggerHangupAll()Z

    .line 1555
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mCallStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1556
    return-void
.end method

.method public triggerHangupBackground()V
    .registers 2

    .prologue
    .line 1530
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    invoke-virtual {v0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->triggerHangupBackground()Z

    .line 1531
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mCallStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1532
    return-void
.end method

.method public triggerHangupForeground()V
    .registers 2

    .prologue
    .line 1523
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    invoke-virtual {v0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->triggerHangupForeground()Z

    .line 1524
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mCallStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1525
    return-void
.end method

.method public triggerIncomingSMS(Ljava/lang/String;)V
    .registers 2
    .parameter "message"

    .prologue
    .line 1561
    return-void
.end method

.method public triggerIncomingUssd(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "statusCode"
    .parameter "message"

    .prologue
    .line 1415
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mUSSDRegistrant:Landroid/os/Registrant;

    if-eqz v1, :cond_12

    .line 1416
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 1417
    .local v0, result:[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mUSSDRegistrant:Landroid/os/Registrant;

    invoke-virtual {v1, v0}, Landroid/os/Registrant;->notifyResult(Ljava/lang/Object;)V

    .line 1419
    .end local v0           #result:[Ljava/lang/String;
    :cond_12
    return-void
.end method

.method public triggerRing(Ljava/lang/String;)V
    .registers 3
    .parameter "number"

    .prologue
    .line 1486
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->simulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->triggerRing(Ljava/lang/String;)Z

    .line 1487
    iget-object v0, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mCallStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1488
    return-void
.end method

.method public triggerSsn(II)V
    .registers 7
    .parameter "type"
    .parameter "code"

    .prologue
    const/4 v3, 0x0

    .line 1535
    new-instance v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/SuppServiceNotification;-><init>()V

    .line 1536
    .local v0, not:Lcom/android/internal/telephony/gsm/SuppServiceNotification;
    iput p1, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->notificationType:I

    .line 1537
    iput p2, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->code:I

    .line 1538
    iget-object v1, p0, Lcom/android/internal/telephony/test/SimulatedCommands;->mSsnRegistrant:Landroid/os/Registrant;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 1539
    return-void
.end method

.method public writeSmsToRuim(ILjava/lang/String;Landroid/os/Message;)V
    .registers 7
    .parameter "status"
    .parameter "pdu"
    .parameter "response"

    .prologue
    .line 1140
    const-string v0, "SIM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Write SMS to RUIM with status "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1142
    return-void
.end method

.method public writeSmsToSim(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 8
    .parameter "status"
    .parameter "smsc"
    .parameter "pdu"
    .parameter "response"

    .prologue
    .line 1135
    const-string v0, "SIM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Write SMS to SIM with status "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1137
    return-void
.end method

.method public writeValidityPeriod(ILjava/lang/String;Landroid/os/Message;)V
    .registers 7
    .parameter "validityperiod"
    .parameter "smscaddr"
    .parameter "response"

    .prologue
    .line 1157
    const-string v0, "SIM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Write VP to SIM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1158
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/test/SimulatedCommands;->unimplemented(Landroid/os/Message;)V

    .line 1159
    return-void
.end method
