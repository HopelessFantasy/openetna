.class public Lcom/android/internal/telephony/PhoneProxy;
.super Landroid/os/Handler;
.source "PhoneProxy.java"

# interfaces
.implements Lcom/android/internal/telephony/Phone;


# static fields
.field private static final EVENT_RADIO_POWER_OFF:I = 0x2

.field private static final EVENT_RADIO_TECHNOLOGY_CHANGED:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "PHONE"

.field public static final lockForRadioTechnologyChange:Ljava/lang/Object;


# instance fields
.field private mActivePhone:Lcom/android/internal/telephony/Phone;

.field private mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

.field private mIccPhoneBookInterfaceManagerProxy:Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

.field private mIccSmsInterfaceManagerProxy:Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;

.field private mOutgoingPhone:Ljava/lang/String;

.field private mPhoneSubInfoProxy:Lcom/android/internal/telephony/PhoneSubInfoProxy;

.field public mRilPowerOffComplete:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/Phone;)V
    .registers 5
    .parameter "phone"

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mRilPowerOffComplete:Z

    .line 58
    iput-object p1, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    .line 59
    new-instance v0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getIccSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;-><init>(Lcom/android/internal/telephony/IccSmsInterfaceManager;)V

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mIccSmsInterfaceManagerProxy:Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;

    .line 61
    new-instance v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;-><init>(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;)V

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mIccPhoneBookInterfaceManagerProxy:Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    .line 63
    new-instance v0, Lcom/android/internal/telephony/PhoneSubInfoProxy;

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/PhoneSubInfoProxy;-><init>(Lcom/android/internal/telephony/PhoneSubInfo;)V

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mPhoneSubInfoProxy:Lcom/android/internal/telephony/PhoneSubInfoProxy;

    .line 64
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    .line 65
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForRadioTechnologyChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 67
    return-void
.end method

.method private logd(Ljava/lang/String;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 143
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PhoneProxy] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 151
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PhoneProxy] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    return-void
.end method

.method private logv(Ljava/lang/String;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 139
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PhoneProxy] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    return-void
.end method

.method private logw(Ljava/lang/String;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 147
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PhoneProxy] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    return-void
.end method


# virtual methods
.method public acceptCall()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->acceptCall()V

    .line 331
    return-void
.end method

.method public activateCellBroadcastSms(ILandroid/os/Message;)V
    .registers 4
    .parameter "activate"
    .parameter "response"

    .prologue
    .line 728
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->activateCellBroadcastSms(ILandroid/os/Message;)V

    .line 729
    return-void
.end method

.method public canConference()Z
    .registers 2

    .prologue
    .line 342
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->canConference()Z

    move-result v0

    return v0
.end method

.method public canTransfer()Z
    .registers 2

    .prologue
    .line 358
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->canTransfer()Z

    move-result v0

    return v0
.end method

.method public cancelManualSearchingRequest()V
    .registers 2

    .prologue
    .line 1153
    const-string v0, "PhoneProxy::cancelManualSearchingRequest"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PhoneProxy;->logv(Ljava/lang/String;)V

    .line 1154
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->cancelManualSearchingRequest()V

    .line 1155
    return-void
.end method

.method public changeCallBarringPwd(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 5
    .parameter "oldPwd"
    .parameter "newPwd"
    .parameter "onComplete"

    .prologue
    .line 1021
    const-string v0, "PhoneProxy::changeCallBarringPwd"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PhoneProxy;->logv(Ljava/lang/String;)V

    .line 1022
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->changeCallBarringPwd(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1023
    return-void
.end method

.method public checkFdn(Ljava/lang/String;)Z
    .registers 3
    .parameter "number"

    .prologue
    .line 1070
    const-string v0, "PhoneProxy::checkFdn"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PhoneProxy;->logv(Ljava/lang/String;)V

    .line 1071
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->checkFdn(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public clearDisconnected()V
    .registers 2

    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->clearDisconnected()V

    .line 367
    return-void
.end method

.method public conference()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 346
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->conference()V

    .line 347
    return-void
.end method

.method public dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .registers 3
    .parameter "dialString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 382
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method public disableApnType(Ljava/lang/String;)I
    .registers 3
    .parameter "type"

    .prologue
    .line 660
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->disableApnType(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public disableDataConnectivity()Z
    .registers 2

    .prologue
    .line 652
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->disableDataConnectivity()Z

    move-result v0

    return v0
.end method

.method public disableDnsCheck(Z)V
    .registers 3
    .parameter "b"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->disableDnsCheck(Z)V

    .line 183
    return-void
.end method

.method public disableLocationUpdates()V
    .registers 2

    .prologue
    .line 604
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->disableLocationUpdates()V

    .line 605
    return-void
.end method

.method public enableApnType(Ljava/lang/String;)I
    .registers 3
    .parameter "type"

    .prologue
    .line 656
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->enableApnType(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public enableDataConnectivity()Z
    .registers 2

    .prologue
    .line 648
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->enableDataConnectivity()Z

    move-result v0

    return v0
.end method

.method public enableEnhancedVoicePrivacy(ZLandroid/os/Message;)V
    .registers 4
    .parameter "enable"
    .parameter "onComplete"

    .prologue
    .line 350
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->enableEnhancedVoicePrivacy(ZLandroid/os/Message;)V

    .line 351
    return-void
.end method

.method public enableLocationUpdates()V
    .registers 2

    .prologue
    .line 600
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->enableLocationUpdates()V

    .line 601
    return-void
.end method

.method public exitEmergencyCallbackMode()V
    .registers 2

    .prologue
    .line 768
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->exitEmergencyCallbackMode()V

    .line 769
    return-void
.end method

.method public explicitCallTransfer()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 362
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->explicitCallTransfer()V

    .line 363
    return-void
.end method

.method public factoryReset(Landroid/os/Message;)V
    .registers 3
    .parameter "onComplete"

    .prologue
    .line 929
    const-string v0, "PhoneProxy::factoryReset"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PhoneProxy;->logv(Ljava/lang/String;)V

    .line 930
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->factoryReset(Landroid/os/Message;)V

    .line 931
    return-void
.end method

.method public findIndexWithField(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .parameter "field"
    .parameter "value"

    .prologue
    .line 905
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->findIndexWithField(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getALSSettingValue()I
    .registers 2

    .prologue
    .line 1051
    const-string v0, "PhoneProxy::getALSSettingValue"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PhoneProxy;->logv(Ljava/lang/String;)V

    .line 1052
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getALSSettingValue()I

    move-result v0

    return v0
.end method

.method public getActiveApn()Ljava/lang/String;
    .registers 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getActiveApn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActiveApnTypes()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getActiveApnTypes()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAvailableNetworks(Landroid/os/Message;)V
    .registers 3
    .parameter "response"

    .prologue
    .line 498
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getAvailableNetworks(Landroid/os/Message;)V

    .line 499
    return-void
.end method

.method public getBackgroundCall()Lcom/android/internal/telephony/Call;
    .registers 2

    .prologue
    .line 374
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    return-object v0
.end method

.method public getCLIRSettingValue()I
    .registers 2

    .prologue
    .line 1008
    const-string v0, "PhoneProxy::getCLIRSettingValue"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PhoneProxy;->logv(Ljava/lang/String;)V

    .line 1009
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCLIRSettingValue()I

    move-result v0

    return v0
.end method

.method public getCallBarring(Ljava/lang/String;Landroid/os/Message;)V
    .registers 4
    .parameter "commandInterfaceCBReason"
    .parameter "onComplete"

    .prologue
    .line 1013
    const-string v0, "PhoneProxy::getCallBarring"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PhoneProxy;->logv(Ljava/lang/String;)V

    .line 1014
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->getCallBarring(Ljava/lang/String;Landroid/os/Message;)V

    .line 1015
    return-void
.end method

.method public getCallCost(Landroid/os/Message;)V
    .registers 3
    .parameter "onComplete"

    .prologue
    .line 1026
    const-string v0, "PhoneProxy::getCallCost"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PhoneProxy;->logv(Ljava/lang/String;)V

    .line 1027
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getCallCost(Landroid/os/Message;)V

    .line 1028
    return-void
.end method

.method public getCallForwardingIndicator()Z
    .registers 2

    .prologue
    .line 425
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCallForwardingIndicator()Z

    move-result v0

    return v0
.end method

.method public getCallForwardingOption(ILandroid/os/Message;)V
    .registers 4
    .parameter "commandInterfaceCFReason"
    .parameter "onComplete"

    .prologue
    .line 468
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILandroid/os/Message;)V

    .line 470
    return-void
.end method

.method public getCallWaiting(Landroid/os/Message;)V
    .registers 3
    .parameter "onComplete"

    .prologue
    .line 490
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getCallWaiting(Landroid/os/Message;)V

    .line 491
    return-void
.end method

.method public getCdmaEriIconIndex()I
    .registers 2

    .prologue
    .line 752
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaEriIconIndex()I

    move-result v0

    return v0
.end method

.method public getCdmaEriIconMode()I
    .registers 2

    .prologue
    .line 760
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaEriIconMode()I

    move-result v0

    return v0
.end method

.method public getCdmaEriText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 756
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaEriText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCdmaMin()Ljava/lang/String;
    .registers 2

    .prologue
    .line 433
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaMin()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCdmaPrlVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 437
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaPrlVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCellBroadcastSmsConfig(Landroid/os/Message;)V
    .registers 3
    .parameter "response"

    .prologue
    .line 732
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getCellBroadcastSmsConfig(Landroid/os/Message;)V

    .line 733
    return-void
.end method

.method public getCellLocation()Landroid/telephony/CellLocation;
    .registers 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getCountVM()I
    .registers 2

    .prologue
    .line 1130
    const-string v0, "PhoneProxy::getCountVM"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PhoneProxy;->logv(Ljava/lang/String;)V

    .line 1131
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCountVM()I

    move-result v0

    return v0
.end method

.method public getCspPlmnStatus()I
    .registers 2

    .prologue
    .line 856
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCspPlmnStatus()I

    move-result v0

    return v0
.end method

.method public getCurrentDataConnectionList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/DataConnection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 592
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCurrentDataConnectionList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentPdpList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/gsm/PdpConnection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 588
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCurrentPdpList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentVoiceClass()I
    .registers 2

    .prologue
    .line 1065
    const-string v0, "PhoneProxy::getCurrentVoiceClass"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PhoneProxy;->logv(Ljava/lang/String;)V

    .line 1066
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCurrentVoiceClass()I

    move-result v0

    return v0
.end method

.method public getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;
    .registers 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;

    move-result-object v0

    return-object v0
.end method

.method public getDataCallList(Landroid/os/Message;)V
    .registers 3
    .parameter "response"

    .prologue
    .line 581
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getDataCallList(Landroid/os/Message;)V

    .line 582
    return-void
.end method

.method public getDataConnectionState()Lcom/android/internal/telephony/Phone$DataState;
    .registers 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDataConnectionState()Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v0

    return-object v0
.end method

.method public getDataRoamingEnabled()Z
    .registers 2

    .prologue
    .line 624
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDataRoamingEnabled()Z

    move-result v0

    return v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 684
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceSvn()Ljava/lang/String;
    .registers 2

    .prologue
    .line 688
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDeviceSvn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDnsServers(Ljava/lang/String;)[Ljava/lang/String;
    .registers 3
    .parameter "apnType"

    .prologue
    .line 680
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getDnsServers(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEmodeInfoPage(I)Ljava/lang/String;
    .registers 3
    .parameter "EngIndex"

    .prologue
    .line 998
    const-string v0, "PhoneProxy::getEmodeInfoPage"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PhoneProxy;->logv(Ljava/lang/String;)V

    .line 999
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getEmodeInfoPage(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEngineeringModeInfo(ILandroid/os/Message;)I
    .registers 4
    .parameter "data"
    .parameter "result"

    .prologue
    .line 993
    const-string v0, "PhoneProxy::getEngineeringModeInfo"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PhoneProxy;->logv(Ljava/lang/String;)V

    .line 994
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->getEngineeringModeInfo(ILandroid/os/Message;)I

    move-result v0

    return v0
.end method

.method public getEnhancedVoicePrivacy(Landroid/os/Message;)V
    .registers 3
    .parameter "onComplete"

    .prologue
    .line 354
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getEnhancedVoicePrivacy(Landroid/os/Message;)V

    .line 355
    return-void
.end method

.method public getEsn()Ljava/lang/String;
    .registers 2

    .prologue
    .line 700
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getEsn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFactoryVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 924
    const-string v0, "PhoneProxy::getFactoryVersion"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PhoneProxy;->logv(Ljava/lang/String;)V

    .line 925
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getFactoryVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getForegroundCall()Lcom/android/internal/telephony/Call;
    .registers 2

    .prologue
    .line 370
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    return-object v0
.end method

.method public getGateway(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "apnType"

    .prologue
    .line 676
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getGateway(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHWVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 919
    const-string v0, "PhoneProxy::getHWVersion"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PhoneProxy;->logv(Ljava/lang/String;)V

    .line 920
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getHWVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIccCard()Lcom/android/internal/telephony/IccCard;
    .registers 2

    .prologue
    .line 326
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    return-object v0
.end method

.method public getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    .registers 2

    .prologue
    .line 716
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    return-object v0
.end method

.method public getIccRecordsLoaded()Z
    .registers 2

    .prologue
    .line 322
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccRecordsLoaded()Z

    move-result v0

    return v0
.end method

.method public getIccSerialNumber()Ljava/lang/String;
    .registers 2

    .prologue
    .line 696
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIccSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;
    .registers 2

    .prologue
    .line 712
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    return-object v0
.end method

.method public getInterfaceName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "apnType"

    .prologue
    .line 668
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getInterfaceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIpAddress(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "apnType"

    .prologue
    .line 672
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getIpAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLine1AlphaTag()Ljava/lang/String;
    .registers 2

    .prologue
    .line 441
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLine1AlphaTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLine1Number()Ljava/lang/String;
    .registers 2

    .prologue
    .line 429
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLineSelectInfo(Landroid/os/Message;)V
    .registers 3
    .parameter "onComplete"

    .prologue
    .line 1039
    const-string v0, "PhoneProxy::getLineSelectInfo"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PhoneProxy;->logv(Ljava/lang/String;)V

    .line 1040
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getLineSelectInfo(Landroid/os/Message;)V

    .line 1041
    return-void
.end method

.method public getMeid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 704
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMeid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessageWaitingCphsIndicator()I
    .registers 2

    .prologue
    .line 1142
    const-string v0, "PhoneProxy::getMessageWaitingCphsIndicator"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PhoneProxy;->logv(Ljava/lang/String;)V

    .line 1143
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMessageWaitingCphsIndicator()I

    move-result v0

    return v0
.end method

.method public getMessageWaitingIndicator()Z
    .registers 2

    .prologue
    .line 417
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMessageWaitingIndicator()Z

    move-result v0

    return v0
.end method

.method public getModemVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 914
    const-string v0, "PhoneProxy::getModemVersion"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PhoneProxy;->logv(Ljava/lang/String;)V

    .line 915
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getModemVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMute()Z
    .registers 2

    .prologue
    .line 530
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMute()Z

    move-result v0

    return v0
.end method

.method public getNeighboringCids(Landroid/os/Message;)V
    .registers 3
    .parameter "response"

    .prologue
    .line 518
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getNeighboringCids(Landroid/os/Message;)V

    .line 519
    return-void
.end method

.method public getOnsAlg()I
    .registers 2

    .prologue
    .line 1113
    const-string v0, "PhoneProxy::getOnsAlg"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PhoneProxy;->logv(Ljava/lang/String;)V

    .line 1114
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getOnsAlg()I

    move-result v0

    return v0
.end method

.method public getOutgoingCallerIdDisplay(Landroid/os/Message;)V
    .registers 3
    .parameter "onComplete"

    .prologue
    .line 480
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getOutgoingCallerIdDisplay(Landroid/os/Message;)V

    .line 481
    return-void
.end method

.method public getPIN1RetryNum()I
    .registers 2

    .prologue
    .line 884
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneProxy;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getSimPin1RetryNum()I

    move-result v0

    return v0
.end method

.method public getPIN2RetryNum()I
    .registers 2

    .prologue
    .line 890
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneProxy;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getSimPin2RetryNum()I

    move-result v0

    return v0
.end method

.method public getPUK1RetryNum()I
    .registers 2

    .prologue
    .line 887
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneProxy;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getSimPuk1RetryNum()I

    move-result v0

    return v0
.end method

.method public getPUK2RetryNum()I
    .registers 2

    .prologue
    .line 893
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneProxy;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getSimPuk2RetryNum()I

    move-result v0

    return v0
.end method

.method public getPdpContextList(Landroid/os/Message;)V
    .registers 3
    .parameter "response"

    .prologue
    .line 577
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getPdpContextList(Landroid/os/Message;)V

    .line 578
    return-void
.end method

.method public getPendingMmiCodes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/android/internal/telephony/MmiCode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPendingMmiCodes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;
    .registers 2

    .prologue
    .line 708
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;

    move-result-object v0

    return-object v0
.end method

.method public getPreferredNetworkType(Landroid/os/Message;)V
    .registers 3
    .parameter "response"

    .prologue
    .line 514
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 515
    return-void
.end method

.method public getRingingCall()Lcom/android/internal/telephony/Call;
    .registers 2

    .prologue
    .line 378
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    return-object v0
.end method

.method public getSIMUnlockRetryCount(Landroid/os/Message;)V
    .registers 3
    .parameter "response"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getSIMUnlockRetryCount(Landroid/os/Message;)V

    .line 158
    return-void
.end method

.method public getSearchStatus(Landroid/os/Message;)V
    .registers 3
    .parameter "response"

    .prologue
    .line 1175
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getSearchStatus(Landroid/os/Message;)V

    .line 1176
    return-void
.end method

.method public getServiceCategoryValueForUsimEcc(Ljava/lang/String;)B
    .registers 3
    .parameter "number"

    .prologue
    .line 866
    const/4 v0, 0x0

    return v0
.end method

.method public getServiceState()Landroid/telephony/ServiceState;
    .registers 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    return-object v0
.end method

.method public getSignalStrength()Landroid/telephony/SignalStrength;
    .registers 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v0

    return-object v0
.end method

.method public getSimChanedInfo()Z
    .registers 2

    .prologue
    .line 879
    const/4 v0, 0x1

    return v0
.end method

.method public getSimulatedRadioControl()Lcom/android/internal/telephony/test/SimulatedRadioControl;
    .registers 2

    .prologue
    .line 644
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSimulatedRadioControl()Lcom/android/internal/telephony/test/SimulatedRadioControl;

    move-result-object v0

    return-object v0
.end method

.method public getSmscAddress(Landroid/os/Message;)V
    .registers 3
    .parameter "result"

    .prologue
    .line 744
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getSmscAddress(Landroid/os/Message;)V

    .line 745
    return-void
.end method

.method public getState()Lcom/android/internal/telephony/Phone$State;
    .registers 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    return-object v0
.end method

.method public getSubscriberId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 692
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUnitTestMode()Z
    .registers 2

    .prologue
    .line 612
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getUnitTestMode()Z

    move-result v0

    return v0
.end method

.method public getVoiceCallForwardingFlag()Z
    .registers 2

    .prologue
    .line 1075
    const-string v0, "PhoneProxy::getVoiceCallForwardingFlag"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PhoneProxy;->logv(Ljava/lang/String;)V

    .line 1076
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getVoiceCallForwardingFlag()Z

    move-result v0

    return v0
.end method

.method public getVoiceCallForwardingFlagLine2()Z
    .registers 2

    .prologue
    .line 1079
    const-string v0, "PhoneProxy::getVoiceCallForwardingFlagLine2"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PhoneProxy;->logv(Ljava/lang/String;)V

    .line 1080
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getVoiceCallForwardingFlagLine2()Z

    move-result v0

    return v0
.end method

.method public getVoiceClarityInfo()Z
    .registers 2

    .prologue
    .line 1056
    const-string v0, "PhoneProxy::getVoiceClarityInfo"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PhoneProxy;->logv(Ljava/lang/String;)V

    .line 1057
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getVoiceClarityInfo()Z

    move-result v0

    return v0
.end method

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .registers 2

    .prologue
    .line 458
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .registers 2

    .prologue
    .line 449
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMessageCount()I
    .registers 2

    .prologue
    .line 454
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getVoiceMessageCount()I

    move-result v0

    return v0
.end method

.method public goFastDormancy(Landroid/os/Message;)I
    .registers 3
    .parameter "result"

    .prologue
    .line 1162
    const-string v0, "PhoneProxy::goFastDormancy"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PhoneProxy;->logv(Ljava/lang/String;)V

    .line 1163
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->goFastDormancy(Landroid/os/Message;)I

    move-result v0

    return v0
.end method

.method public handleInCallMmiCommands(Ljava/lang/String;)Z
    .registers 3
    .parameter "command"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 390
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->handleInCallMmiCommands(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .parameter "msg"

    .prologue
    const-string v5, "GSM"

    .line 71
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_fc

    .line 131
    const-string v2, "PHONE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error! This handler was not registered for this message type. Message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :goto_21
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 136
    return-void

    .line 74
    :pswitch_25
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v2, Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/PhoneProxy;->mOutgoingPhone:Ljava/lang/String;

    .line 75
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Switching phone from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/PhoneProxy;->mOutgoingPhone:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Phone to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/PhoneProxy;->mOutgoingPhone:Ljava/lang/String;

    const-string v4, "GSM"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_cd

    const-string v3, "CDMAPhone"

    :goto_52
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/PhoneProxy;->logd(Ljava/lang/String;)V

    .line 77
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneProxy;->mOutgoingPhone:Ljava/lang/String;

    const-string v3, "GSM"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d0

    .line 78
    const-string v2, "Make a new CDMAPhone and destroy the old GSMPhone."

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/PhoneProxy;->logd(Ljava/lang/String;)V

    .line 79
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v2, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyDataConnectionLost()V

    .line 81
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v2, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->dispose()V

    .line 82
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    .line 90
    .local v1, oldPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getCdmaPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    .line 91
    const-string v2, "Resetting Radio"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/PhoneProxy;->logd(Ljava/lang/String;)V

    .line 92
    check-cast v1, Lcom/android/internal/telephony/gsm/GSMPhone;

    .end local v1           #oldPhone:Lcom/android/internal/telephony/Phone;
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->removeReferences()V

    .line 115
    :goto_8c
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneProxy;->mIccSmsInterfaceManagerProxy:Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;

    iget-object v3, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getIccSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->setmIccSmsInterfaceManager(Lcom/android/internal/telephony/IccSmsInterfaceManager;)V

    .line 117
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneProxy;->mIccPhoneBookInterfaceManagerProxy:Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    iget-object v3, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->setmIccPhoneBookInterfaceManager(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;)V

    .line 119
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneProxy;->mPhoneSubInfoProxy:Lcom/android/internal/telephony/PhoneSubInfoProxy;

    iget-object v3, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->setmPhoneSubInfo(Lcom/android/internal/telephony/PhoneSubInfo;)V

    .line 120
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v2, Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v2, p0, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    .line 123
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 124
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "phoneName"

    iget-object v3, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_21

    .line 75
    .end local v0           #intent:Landroid/content/Intent;
    :cond_cd
    const-string v3, "GSMPhone"

    goto :goto_52

    .line 95
    :cond_d0
    const-string v2, "Make a new GSMPhone and destroy the old CDMAPhone."

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/PhoneProxy;->logd(Ljava/lang/String;)V

    .line 96
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v2, Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyDataConnectionLost()V

    .line 98
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v2, Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->dispose()V

    .line 100
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    .line 108
    .restart local v1       #oldPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getGsmPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    .line 109
    const-string v2, "Resetting Radio:"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/PhoneProxy;->logd(Ljava/lang/String;)V

    .line 110
    check-cast v1, Lcom/android/internal/telephony/cdma/CDMAPhone;

    .end local v1           #oldPhone:Lcom/android/internal/telephony/Phone;
    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->removeReferences()V

    goto :goto_8c

    .line 128
    :pswitch_f6
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/telephony/PhoneProxy;->mRilPowerOffComplete:Z

    goto/16 :goto_21

    .line 71
    nop

    :pswitch_data_fc
    .packed-switch 0x1
        :pswitch_25
        :pswitch_f6
    .end packed-switch
.end method

.method public handlePinMmi(Ljava/lang/String;)Z
    .registers 3
    .parameter "dialString"

    .prologue
    .line 386
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->handlePinMmi(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public invokeOemRilRequestRaw([BLandroid/os/Message;)V
    .registers 4
    .parameter "data"
    .parameter "response"

    .prologue
    .line 534
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 535
    return-void
.end method

.method public invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V
    .registers 4
    .parameter "strings"
    .parameter "response"

    .prologue
    .line 538
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 539
    return-void
.end method

.method public isDataConnectivityPossible()Z
    .registers 2

    .prologue
    .line 664
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isDataConnectivityPossible()Z

    move-result v0

    return v0
.end method

.method public isDnsCheckDisabled()Z
    .registers 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isDnsCheckDisabled()Z

    move-result v0

    return v0
.end method

.method public isEmergencyNumber(Ljava/lang/String;)Z
    .registers 3
    .parameter "number"

    .prologue
    .line 1084
    const-string v0, "PhoneProxy::isEmergencyNumber"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PhoneProxy;->logv(Ljava/lang/String;)V

    .line 1085
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isModemPowerSave()Z
    .registers 2

    .prologue
    .line 860
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isModemPowerSave()Z

    move-result v0

    return v0
.end method

.method public isOnMatchingOpl(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "plmn"

    .prologue
    .line 870
    const/4 v0, 0x0

    return-object v0
.end method

.method public isOtaModeEnable()Z
    .registers 2

    .prologue
    .line 987
    const-string v0, "PhoneProxy::isOtaModeEnable"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PhoneProxy;->logv(Ljava/lang/String;)V

    .line 988
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isOtaModeEnable()Z

    move-result v0

    return v0
.end method

.method public isOtaSpNumber(Ljava/lang/String;)Z
    .registers 3
    .parameter "dialStr"

    .prologue
    .line 772
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->isOtaSpNumber(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isPreventType(I)Z
    .registers 3
    .parameter "type"

    .prologue
    .line 1187
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->isPreventType(I)Z

    move-result v0

    return v0
.end method

.method public isRilPowerOffComplete()Z
    .registers 2

    .prologue
    .line 421
    iget-boolean v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mRilPowerOffComplete:Z

    return v0
.end method

.method public notifyDataActivity()V
    .registers 2

    .prologue
    .line 740
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->notifyDataActivity()V

    .line 741
    return-void
.end method

.method public queryAvailableBandMode(Landroid/os/Message;)V
    .registers 3
    .parameter "response"

    .prologue
    .line 620
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->queryAvailableBandMode(Landroid/os/Message;)V

    .line 621
    return-void
.end method

.method public queryCdmaRoamingPreference(Landroid/os/Message;)V
    .registers 3
    .parameter "response"

    .prologue
    .line 632
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->queryCdmaRoamingPreference(Landroid/os/Message;)V

    .line 633
    return-void
.end method

.method public queryTTYMode(Landroid/os/Message;)V
    .registers 3
    .parameter "onComplete"

    .prologue
    .line 724
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->queryTTYMode(Landroid/os/Message;)V

    .line 725
    return-void
.end method

.method public registerFoT53ClirlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 824
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerFoT53ClirlInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 825
    return-void
.end method

.method public registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 776
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 777
    return-void
.end method

.method public registerForCdmaFwdBurstDtmf(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 550
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForCdmaFwdBurstDtmf(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 551
    return-void
.end method

.method public registerForCdmaFwdContDtmfStart(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 558
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForCdmaFwdContDtmfStart(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 559
    return-void
.end method

.method public registerForCdmaFwdContDtmfStop(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 566
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForCdmaFwdContDtmfStop(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 567
    return-void
.end method

.method public registerForCdmaOtaStatusChange(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForCdmaOtaStatusChange(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 315
    return-void
.end method

.method public registerForConnect(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1103
    const-string v0, "PhoneProxy::registerForConnect"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PhoneProxy;->logv(Ljava/lang/String;)V

    .line 1104
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForConnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1105
    return-void
.end method

.method public registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 243
    return-void
.end method

.method public registerForDisplayInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 792
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForDisplayInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 793
    return-void
.end method

.method public registerForInCallVoicePrivacyOff(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForInCallVoicePrivacyOff(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 307
    return-void
.end method

.method public registerForInCallVoicePrivacyOn(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForInCallVoicePrivacyOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 299
    return-void
.end method

.method public registerForIncomingRing(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForIncomingRing(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 235
    return-void
.end method

.method public registerForLineControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 816
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForLineControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 817
    return-void
.end method

.method public registerForLocalRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 840
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForLocalRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 841
    return-void
.end method

.method public registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 259
    return-void
.end method

.method public registerForMmiInitiate(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForMmiInitiate(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 251
    return-void
.end method

.method public registerForNewRingingConnection(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForNewRingingConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 227
    return-void
.end method

.method public registerForNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 800
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 801
    return-void
.end method

.method public registerForPhoneStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForPhoneStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 219
    return-void
.end method

.method public registerForProgressing(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1094
    const-string v0, "PhoneProxy::registerForProgressing"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PhoneProxy;->logv(Ljava/lang/String;)V

    .line 1095
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForProgressing(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1096
    return-void
.end method

.method public registerForRedirectedNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 808
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForRedirectedNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 809
    return-void
.end method

.method public registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 275
    return-void
.end method

.method public registerForSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 784
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 785
    return-void
.end method

.method public registerForSuppServiceFailed(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForSuppServiceFailed(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 291
    return-void
.end method

.method public registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 283
    return-void
.end method

.method public registerForT53AudioControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 832
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForT53AudioControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 833
    return-void
.end method

.method public registerForUnknownConnection(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForUnknownConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 211
    return-void
.end method

.method public rejectCall()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 334
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->rejectCall()V

    .line 335
    return-void
.end method

.method public selectNetworkManually(Lcom/android/internal/telephony/gsm/NetworkInfo;Landroid/os/Message;)V
    .registers 4
    .parameter "network"
    .parameter "response"

    .prologue
    .line 506
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->selectNetworkManually(Lcom/android/internal/telephony/gsm/NetworkInfo;Landroid/os/Message;)V

    .line 507
    return-void
.end method

.method public selectPreviousNetworkManually(Lcom/android/internal/telephony/gsm/NetworkInfo;Landroid/os/Message;)V
    .registers 4
    .parameter "network"
    .parameter "response"

    .prologue
    .line 1148
    const-string v0, "PhoneProxy::selectPreviousNetworkManually"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PhoneProxy;->logv(Ljava/lang/String;)V

    .line 1149
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->selectPreviousNetworkManually(Lcom/android/internal/telephony/gsm/NetworkInfo;Landroid/os/Message;)V

    .line 1150
    return-void
.end method

.method public sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V
    .registers 6
    .parameter "dtmfString"
    .parameter "on"
    .parameter "off"
    .parameter "onComplete"

    .prologue
    .line 764
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/Phone;->sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V

    .line 765
    return-void
.end method

.method public sendDtmf(C)V
    .registers 3
    .parameter "c"

    .prologue
    .line 394
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->sendDtmf(C)V

    .line 395
    return-void
.end method

.method public sendUssdResponse(Ljava/lang/String;)V
    .registers 3
    .parameter "ussdMessge"

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->sendUssdResponse(Ljava/lang/String;)V

    .line 271
    return-void
.end method

.method public setApnForPreferApp(Ljava/lang/String;)V
    .registers 3
    .parameter "preferApp"

    .prologue
    .line 1119
    const-string v0, "PhoneProxy::setApnForPreferApp"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PhoneProxy;->logv(Ljava/lang/String;)V

    .line 1120
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setApnForPreferApp(Ljava/lang/String;)V

    .line 1121
    return-void
.end method

.method public setArm9_NVDB_Update(ILandroid/os/Message;)I
    .registers 4
    .parameter "cmd_type"
    .parameter "onComplete"

    .prologue
    .line 940
    const-string v0, "PhoneProxy::setArm9_NVDB_Update"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PhoneProxy;->logv(Ljava/lang/String;)V

    .line 941
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setArm9_NVDB_Update(ILandroid/os/Message;)I

    move-result v0

    return v0
.end method

.method public setBandMode(ILandroid/os/Message;)V
    .registers 4
    .parameter "bandMode"
    .parameter "response"

    .prologue
    .line 616
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setBandMode(ILandroid/os/Message;)V

    .line 617
    return-void
.end method

.method public setCallBarring(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 6
    .parameter "commandInterfaceCBAction"
    .parameter "commandInterfaceCBReason"
    .parameter "password"
    .parameter "onComplete"

    .prologue
    .line 1017
    const-string v0, "PhoneProxy::setCallBarring"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PhoneProxy;->logv(Ljava/lang/String;)V

    .line 1018
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/Phone;->setCallBarring(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1019
    return-void
.end method

.method public setCallCost(IILandroid/os/Message;)V
    .registers 5
    .parameter "action"
    .parameter "value"
    .parameter "onComplete"

    .prologue
    .line 1030
    const-string v0, "PhoneProxy::setCallCost"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PhoneProxy;->logv(Ljava/lang/String;)V

    .line 1031
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setCallCost(IILandroid/os/Message;)V

    .line 1032
    return-void
.end method

.method public setCallCostPuct(ILjava/lang/String;Landroid/os/Message;)V
    .registers 5
    .parameter "price"
    .parameter "currency"
    .parameter "onComplete"

    .prologue
    .line 1034
    const-string v0, "PhoneProxy::setCallCostPuct"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PhoneProxy;->logv(Ljava/lang/String;)V

    .line 1035
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setCallCostPuct(ILjava/lang/String;Landroid/os/Message;)V

    .line 1036
    return-void
.end method

.method public setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V
    .registers 12
    .parameter "commandInterfaceCFReason"
    .parameter "commandInterfaceCFAction"
    .parameter "dialingNumber"
    .parameter "timerSeconds"
    .parameter "onComplete"

    .prologue
    .line 475
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    .line 477
    return-void
.end method

.method public setCallWaiting(ZLandroid/os/Message;)V
    .registers 4
    .parameter "enable"
    .parameter "onComplete"

    .prologue
    .line 494
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setCallWaiting(ZLandroid/os/Message;)V

    .line 495
    return-void
.end method

.method public setCdmaRoamingPreference(ILandroid/os/Message;)V
    .registers 4
    .parameter "cdmaRoamingType"
    .parameter "response"

    .prologue
    .line 636
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setCdmaRoamingPreference(ILandroid/os/Message;)V

    .line 637
    return-void
.end method

.method public setCdmaSubscription(ILandroid/os/Message;)V
    .registers 4
    .parameter "cdmaSubscriptionType"
    .parameter "response"

    .prologue
    .line 640
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setCdmaSubscription(ILandroid/os/Message;)V

    .line 641
    return-void
.end method

.method public setCellBroadcastSmsConfig([ILandroid/os/Message;)V
    .registers 4
    .parameter "configValuesArray"
    .parameter "response"

    .prologue
    .line 736
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setCellBroadcastSmsConfig([ILandroid/os/Message;)V

    .line 737
    return-void
.end method

.method public setDataRoamingEnabled(Z)V
    .registers 3
    .parameter "enable"

    .prologue
    .line 628
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    .line 629
    return-void
.end method

.method public setFastDormancy(I)V
    .registers 3
    .parameter "fastdormancy"

    .prologue
    .line 1166
    const-string v0, "PhoneProxy::setFastDormancy"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PhoneProxy;->logv(Ljava/lang/String;)V

    .line 1167
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setFastDormancy(I)V

    .line 1168
    return-void
.end method

.method public setHiddenReset(ZLandroid/os/Message;)I
    .registers 4
    .parameter "Is_HiddenReset"
    .parameter "onComplete"

    .prologue
    .line 945
    const-string v0, "PhoneProxy::setHiddenReset"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PhoneProxy;->logv(Ljava/lang/String;)V

    .line 946
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setHiddenReset(ZLandroid/os/Message;)I

    move-result v0

    return v0
.end method

.method public setLine1Number(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 5
    .parameter "alphaTag"
    .parameter "number"
    .parameter "onComplete"

    .prologue
    .line 445
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setLine1Number(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 446
    return-void
.end method

.method public setLineSelectInfo(ILandroid/os/Message;)V
    .registers 4
    .parameter "line"
    .parameter "onComplete"

    .prologue
    .line 1043
    const-string v0, "PhoneProxy::setLineSelectInfo"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PhoneProxy;->logv(Ljava/lang/String;)V

    .line 1044
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setLineSelectInfo(ILandroid/os/Message;)V

    .line 1045
    return-void
.end method

.method public setMute(Z)V
    .registers 3
    .parameter "muted"

    .prologue
    .line 526
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setMute(Z)V

    .line 527
    return-void
.end method

.method public setNV_A5_ALGO(ILandroid/os/Message;)I
    .registers 4
    .parameter "data"
    .parameter "result"

    .prologue
    .line 956
    const-string v0, "PhoneProxy::setNV_A5_ALGO"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PhoneProxy;->logv(Ljava/lang/String;)V

    .line 957
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setNV_A5_ALGO(ILandroid/os/Message;)I

    move-result v0

    return v0
.end method

.method public setNV_DL_FREQ(ILandroid/os/Message;)I
    .registers 4
    .parameter "data"
    .parameter "result"

    .prologue
    .line 976
    const-string v0, "PhoneProxy::setNV_DL_FREQ"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PhoneProxy;->logv(Ljava/lang/String;)V

    .line 977
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setNV_DL_FREQ(ILandroid/os/Message;)I

    move-result v0

    return v0
.end method

.method public setNV_DL_FREQ_EN(ILandroid/os/Message;)I
    .registers 4
    .parameter "data"
    .parameter "result"

    .prologue
    .line 971
    const-string v0, "PhoneProxy::setNV_DL_FREQ_EN"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PhoneProxy;->logv(Ljava/lang/String;)V

    .line 972
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setNV_DL_FREQ_EN(ILandroid/os/Message;)I

    move-result v0

    return v0
.end method

.method public setNV_GCFFlag(ILandroid/os/Message;)I
    .registers 4
    .parameter "data"
    .parameter "result"

    .prologue
    .line 966
    const-string v0, "PhoneProxy::setNV_GCFFlag"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PhoneProxy;->logv(Ljava/lang/String;)V

    .line 967
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setNV_GCFFlag(ILandroid/os/Message;)I

    move-result v0

    return v0
.end method

.method public setNV_HSDPACat(ILandroid/os/Message;)I
    .registers 4
    .parameter "data"
    .parameter "result"

    .prologue
    .line 961
    const-string v0, "PhoneProxy::setNV_HSDPACat"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PhoneProxy;->logv(Ljava/lang/String;)V

    .line 962
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setNV_HSDPACat(ILandroid/os/Message;)I

    move-result v0

    return v0
.end method

.method public setNV_RRCVer(ILandroid/os/Message;)I
    .registers 4
    .parameter "data"
    .parameter "result"

    .prologue
    .line 951
    const-string v0, "PhoneProxy::setNV_RRCVer"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PhoneProxy;->logv(Ljava/lang/String;)V

    .line 952
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setNV_RRCVer(ILandroid/os/Message;)I

    move-result v0

    return v0
.end method

.method public setNetworkSelectionModeAutomatic(Landroid/os/Message;)V
    .registers 3
    .parameter "response"

    .prologue
    .line 502
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    .line 503
    return-void
.end method

.method public setOTAMode(ILandroid/os/Message;)I
    .registers 4
    .parameter "data"
    .parameter "result"

    .prologue
    .line 981
    const-string v0, "PhoneProxy::setOTAMode"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PhoneProxy;->logv(Ljava/lang/String;)V

    .line 982
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setOTAMode(ILandroid/os/Message;)I

    move-result v0

    return v0
.end method

.method public setOnEcbModeExitResponse(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 848
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setOnEcbModeExitResponse(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 849
    return-void
.end method

.method public setOnPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 522
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setOnPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 523
    return-void
.end method

.method public setOnUnsolOemHookExtApp(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 542
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setOnUnsolOemHookExtApp(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 543
    return-void
.end method

.method public setOriginalPreferredApn()V
    .registers 2

    .prologue
    .line 1124
    const-string v0, "PhoneProxy::setOriginalPreferredApn"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PhoneProxy;->logv(Ljava/lang/String;)V

    .line 1125
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->setOriginalPreferredApn()V

    .line 1126
    return-void
.end method

.method public setOutgoingCallerIdDisplay(ILandroid/os/Message;)V
    .registers 4
    .parameter "commandInterfaceCLIRMode"
    .parameter "onComplete"

    .prologue
    .line 485
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setOutgoingCallerIdDisplay(ILandroid/os/Message;)V

    .line 487
    return-void
.end method

.method public setPreferredNetworkType(ILandroid/os/Message;)V
    .registers 4
    .parameter "networkType"
    .parameter "response"

    .prologue
    .line 510
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 511
    return-void
.end method

.method public setPreventType(IZ)V
    .registers 4
    .parameter "type"
    .parameter "prevent"

    .prologue
    .line 1182
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setPreventType(IZ)V

    .line 1184
    return-void
.end method

.method public setRadioPower(Z)V
    .registers 3
    .parameter "power"

    .prologue
    .line 406
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 407
    return-void
.end method

.method public setRadioPowerOff()V
    .registers 2

    .prologue
    .line 1135
    const-string v0, "PhoneProxy::setRadioPowerOff"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PhoneProxy;->logv(Ljava/lang/String;)V

    .line 1136
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->setRadioPowerOff()V

    .line 1137
    return-void
.end method

.method public setRilPowerOff()V
    .registers 3

    .prologue
    .line 411
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/PhoneProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 412
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/CommandsInterface;->setRilPowerOff(Landroid/os/Message;)V

    .line 413
    return-void
.end method

.method public setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V
    .registers 4
    .parameter "address"
    .parameter "result"

    .prologue
    .line 748
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V

    .line 749
    return-void
.end method

.method public setStabilityTest(ILandroid/os/Message;)I
    .registers 4
    .parameter "cmd_type"
    .parameter "onComplete"

    .prologue
    .line 935
    const-string v0, "PhoneProxy::setStabilityTest"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PhoneProxy;->logv(Ljava/lang/String;)V

    .line 936
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setStabilityTest(ILandroid/os/Message;)I

    move-result v0

    return v0
.end method

.method public setTTYMode(ILandroid/os/Message;)V
    .registers 4
    .parameter "ttyMode"
    .parameter "onComplete"

    .prologue
    .line 720
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setTTYMode(ILandroid/os/Message;)V

    .line 721
    return-void
.end method

.method public setUnitTestMode(Z)V
    .registers 3
    .parameter "f"

    .prologue
    .line 608
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setUnitTestMode(Z)V

    .line 609
    return-void
.end method

.method public setVoiceClarityInfo(Z)V
    .registers 3
    .parameter "value"

    .prologue
    .line 1060
    const-string v0, "PhoneProxy::setVoiceClarityInfo"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PhoneProxy;->logv(Ljava/lang/String;)V

    .line 1061
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setVoiceClarityInfo(Z)V

    .line 1062
    return-void
.end method

.method public setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 5
    .parameter "alphaTag"
    .parameter "voiceMailNumber"
    .parameter "onComplete"

    .prologue
    .line 463
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 464
    return-void
.end method

.method public setVsimMode(ZLandroid/os/Message;)V
    .registers 4
    .parameter "vsimOn"
    .parameter "response"

    .prologue
    .line 875
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setVsimMode(ZLandroid/os/Message;)V

    .line 876
    return-void
.end method

.method public startDtmf(C)V
    .registers 3
    .parameter "c"

    .prologue
    .line 398
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->startDtmf(C)V

    .line 399
    return-void
.end method

.method public stopDtmf()V
    .registers 2

    .prologue
    .line 402
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->stopDtmf()V

    .line 403
    return-void
.end method

.method public storeALSSettingValue(I)V
    .registers 3
    .parameter "value"

    .prologue
    .line 1047
    const-string v0, "PhoneProxy::storeALSSettingValue"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PhoneProxy;->logv(Ljava/lang/String;)V

    .line 1048
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->storeALSSettingValue(I)V

    .line 1049
    return-void
.end method

.method public storeCLIRSettingValue(I)V
    .registers 3
    .parameter "value"

    .prologue
    .line 1004
    const-string v0, "PhoneProxy::storeCLIRSettingValue"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PhoneProxy;->logv(Ljava/lang/String;)V

    .line 1005
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->storeCLIRSettingValue(I)V

    .line 1006
    return-void
.end method

.method public switchHoldingAndActive()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 338
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V

    .line 339
    return-void
.end method

.method public toggleCurrentLine()I
    .registers 2

    .prologue
    .line 1089
    const-string v0, "PhoneProxy::toggleCurrentLine"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PhoneProxy;->logv(Ljava/lang/String;)V

    .line 1090
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->toggleCurrentLine()I

    move-result v0

    return v0
.end method

.method public unSetOnUnsolOemHookExtApp(Landroid/os/Handler;)V
    .registers 3
    .parameter "h"

    .prologue
    .line 546
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unSetOnUnsolOemHookExtApp(Landroid/os/Handler;)V

    .line 547
    return-void
.end method

.method public unregisterForCallWaiting(Landroid/os/Handler;)V
    .registers 3
    .parameter "h"

    .prologue
    .line 780
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForCallWaiting(Landroid/os/Handler;)V

    .line 781
    return-void
.end method

.method public unregisterForCdmaFwdBurstDtmf(Landroid/os/Handler;)V
    .registers 3
    .parameter "h"

    .prologue
    .line 554
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForCdmaFwdBurstDtmf(Landroid/os/Handler;)V

    .line 555
    return-void
.end method

.method public unregisterForCdmaFwdContDtmfStart(Landroid/os/Handler;)V
    .registers 3
    .parameter "h"

    .prologue
    .line 562
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForCdmaFwdContDtmfStart(Landroid/os/Handler;)V

    .line 563
    return-void
.end method

.method public unregisterForCdmaFwdContDtmfStop(Landroid/os/Handler;)V
    .registers 3
    .parameter "h"

    .prologue
    .line 570
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForCdmaFwdContDtmfStop(Landroid/os/Handler;)V

    .line 571
    return-void
.end method

.method public unregisterForCdmaOtaStatusChange(Landroid/os/Handler;)V
    .registers 3
    .parameter "h"

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForCdmaOtaStatusChange(Landroid/os/Handler;)V

    .line 319
    return-void
.end method

.method public unregisterForConnect(Landroid/os/Handler;)V
    .registers 3
    .parameter "h"

    .prologue
    .line 1107
    const-string v0, "PhoneProxy::unregisterForConnect"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PhoneProxy;->logv(Ljava/lang/String;)V

    .line 1108
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForConnect(Landroid/os/Handler;)V

    .line 1109
    return-void
.end method

.method public unregisterForDisconnect(Landroid/os/Handler;)V
    .registers 3
    .parameter "h"

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForDisconnect(Landroid/os/Handler;)V

    .line 247
    return-void
.end method

.method public unregisterForDisplayInfo(Landroid/os/Handler;)V
    .registers 3
    .parameter "h"

    .prologue
    .line 796
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForDisplayInfo(Landroid/os/Handler;)V

    .line 797
    return-void
.end method

.method public unregisterForInCallVoicePrivacyOff(Landroid/os/Handler;)V
    .registers 3
    .parameter "h"

    .prologue
    .line 310
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForInCallVoicePrivacyOff(Landroid/os/Handler;)V

    .line 311
    return-void
.end method

.method public unregisterForInCallVoicePrivacyOn(Landroid/os/Handler;)V
    .registers 3
    .parameter "h"

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForInCallVoicePrivacyOn(Landroid/os/Handler;)V

    .line 303
    return-void
.end method

.method public unregisterForIncomingRing(Landroid/os/Handler;)V
    .registers 3
    .parameter "h"

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForIncomingRing(Landroid/os/Handler;)V

    .line 239
    return-void
.end method

.method public unregisterForLineControlInfo(Landroid/os/Handler;)V
    .registers 3
    .parameter "h"

    .prologue
    .line 820
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForLineControlInfo(Landroid/os/Handler;)V

    .line 821
    return-void
.end method

.method public unregisterForLocalRingbackTone(Landroid/os/Handler;)V
    .registers 3
    .parameter "h"

    .prologue
    .line 844
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForLocalRingbackTone(Landroid/os/Handler;)V

    .line 845
    return-void
.end method

.method public unregisterForMmiComplete(Landroid/os/Handler;)V
    .registers 3
    .parameter "h"

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForMmiComplete(Landroid/os/Handler;)V

    .line 263
    return-void
.end method

.method public unregisterForMmiInitiate(Landroid/os/Handler;)V
    .registers 3
    .parameter "h"

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForMmiInitiate(Landroid/os/Handler;)V

    .line 255
    return-void
.end method

.method public unregisterForNewRingingConnection(Landroid/os/Handler;)V
    .registers 3
    .parameter "h"

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForNewRingingConnection(Landroid/os/Handler;)V

    .line 231
    return-void
.end method

.method public unregisterForNumberInfo(Landroid/os/Handler;)V
    .registers 3
    .parameter "h"

    .prologue
    .line 804
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForNumberInfo(Landroid/os/Handler;)V

    .line 805
    return-void
.end method

.method public unregisterForPhoneStateChanged(Landroid/os/Handler;)V
    .registers 3
    .parameter "h"

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForPhoneStateChanged(Landroid/os/Handler;)V

    .line 223
    return-void
.end method

.method public unregisterForProgressing(Landroid/os/Handler;)V
    .registers 3
    .parameter "h"

    .prologue
    .line 1098
    const-string v0, "PhoneProxy::unregisterForProgressing"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PhoneProxy;->logv(Ljava/lang/String;)V

    .line 1099
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForProgressing(Landroid/os/Handler;)V

    .line 1100
    return-void
.end method

.method public unregisterForRedirectedNumberInfo(Landroid/os/Handler;)V
    .registers 3
    .parameter "h"

    .prologue
    .line 812
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForRedirectedNumberInfo(Landroid/os/Handler;)V

    .line 813
    return-void
.end method

.method public unregisterForServiceStateChanged(Landroid/os/Handler;)V
    .registers 3
    .parameter "h"

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    .line 279
    return-void
.end method

.method public unregisterForSignalInfo(Landroid/os/Handler;)V
    .registers 3
    .parameter "h"

    .prologue
    .line 788
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForSignalInfo(Landroid/os/Handler;)V

    .line 789
    return-void
.end method

.method public unregisterForSuppServiceFailed(Landroid/os/Handler;)V
    .registers 3
    .parameter "h"

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForSuppServiceFailed(Landroid/os/Handler;)V

    .line 295
    return-void
.end method

.method public unregisterForSuppServiceNotification(Landroid/os/Handler;)V
    .registers 3
    .parameter "h"

    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForSuppServiceNotification(Landroid/os/Handler;)V

    .line 287
    return-void
.end method

.method public unregisterForT53AudioControlInfo(Landroid/os/Handler;)V
    .registers 3
    .parameter "h"

    .prologue
    .line 836
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForT53AudioControlInfo(Landroid/os/Handler;)V

    .line 837
    return-void
.end method

.method public unregisterForT53ClirInfo(Landroid/os/Handler;)V
    .registers 3
    .parameter "h"

    .prologue
    .line 828
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForT53ClirInfo(Landroid/os/Handler;)V

    .line 829
    return-void
.end method

.method public unregisterForUnknownConnection(Landroid/os/Handler;)V
    .registers 3
    .parameter "h"

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForUnknownConnection(Landroid/os/Handler;)V

    .line 215
    return-void
.end method

.method public unsetOnEcbModeExitResponse(Landroid/os/Handler;)V
    .registers 3
    .parameter "h"

    .prologue
    .line 852
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unsetOnEcbModeExitResponse(Landroid/os/Handler;)V

    .line 853
    return-void
.end method

.method public updatePINStatus()V
    .registers 2

    .prologue
    .line 896
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneProxy;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->updateSimPinStatus()V

    .line 897
    return-void
.end method

.method public updateServiceLocation(Landroid/os/Message;)V
    .registers 3
    .parameter "response"

    .prologue
    .line 596
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->updateServiceLocation(Landroid/os/Message;)V

    .line 597
    return-void
.end method
