.class public Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;
.super Ljava/lang/Object;
.source "StkResponseMessage.java"


# instance fields
.field addedInfo:I

.field additionalInfo:I

.field cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

.field eventValue:I

.field includeAdditionalInfo:Z

.field resCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

.field usersConfirm:Z

.field usersInput:Ljava/lang/String;

.field usersMenuSelection:I

.field usersYesNoSelection:Z


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;)V
    .registers 5
    .parameter "cmdMsg"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    .line 21
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/ResultCode;->OK:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->resCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    .line 22
    iput v1, p0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->usersMenuSelection:I

    .line 23
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->usersInput:Ljava/lang/String;

    .line 24
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->usersYesNoSelection:Z

    .line 25
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->usersConfirm:Z

    .line 28
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->includeAdditionalInfo:Z

    .line 29
    iput v1, p0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->additionalInfo:I

    .line 32
    iget-object v0, p1, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    .line 33
    return-void
.end method


# virtual methods
.method getCmdDetails()Lcom/android/internal/telephony/gsm/stk/CommandDetails;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    return-object v0
.end method

.method public setAdditionalInfo(ZI)V
    .registers 3
    .parameter "addInfoReq"
    .parameter "addInfoCode"

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->includeAdditionalInfo:Z

    .line 62
    iput p2, p0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->additionalInfo:I

    .line 63
    return-void
.end method

.method public setConfirmation(Z)V
    .registers 2
    .parameter "confirm"

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->usersConfirm:Z

    .line 58
    return-void
.end method

.method public setEvent(II)V
    .registers 3
    .parameter "event"
    .parameter "addedInfo"

    .prologue
    .line 48
    iput p1, p0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->eventValue:I

    .line 49
    iput p2, p0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->addedInfo:I

    .line 50
    return-void
.end method

.method public setInput(Ljava/lang/String;)V
    .registers 2
    .parameter "input"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->usersInput:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setMenuSelection(I)V
    .registers 2
    .parameter "selection"

    .prologue
    .line 40
    iput p1, p0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->usersMenuSelection:I

    .line 41
    return-void
.end method

.method public setResultCode(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V
    .registers 2
    .parameter "resCode"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->resCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    .line 37
    return-void
.end method

.method public setYesNo(Z)V
    .registers 2
    .parameter "yesNo"

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->usersYesNoSelection:Z

    .line 54
    return-void
.end method
