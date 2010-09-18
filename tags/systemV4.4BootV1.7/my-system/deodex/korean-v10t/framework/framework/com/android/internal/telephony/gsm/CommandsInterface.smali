.class public interface abstract Lcom/android/internal/telephony/gsm/CommandsInterface;
.super Ljava/lang/Object;
.source "CommandsInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/CommandsInterface$SimStatus;,
        Lcom/android/internal/telephony/gsm/CommandsInterface$RadioState;
    }
.end annotation


# static fields
.field public static final CB_ACTION_DISABLE:I = 0x0

.field public static final CB_ACTION_ENABLE:I = 0x1

.field public static final CB_ACTION_ERASURE:I = 0x4

.field public static final CB_ACTION_REGISTRATION:I = 0x3

.field public static final CB_FACILITY_BAIC:Ljava/lang/String; = "AI"

.field public static final CB_FACILITY_BAICr:Ljava/lang/String; = "IR"

.field public static final CB_FACILITY_BAOC:Ljava/lang/String; = "AO"

.field public static final CB_FACILITY_BAOIC:Ljava/lang/String; = "OI"

.field public static final CB_FACILITY_BAOICxH:Ljava/lang/String; = "OX"

.field public static final CB_FACILITY_BA_ALL:Ljava/lang/String; = "AB"

.field public static final CB_FACILITY_BA_FD:Ljava/lang/String; = "FD"

.field public static final CB_FACILITY_BA_MO:Ljava/lang/String; = "AG"

.field public static final CB_FACILITY_BA_MT:Ljava/lang/String; = "AC"

.field public static final CB_FACILITY_BA_SIM:Ljava/lang/String; = "SC"

.field public static final CB_REASON_BAIC:I = 0x3

.field public static final CB_REASON_BAICr:I = 0x4

.field public static final CB_REASON_BAOC:I = 0x0

.field public static final CB_REASON_BAOIC:I = 0x1

.field public static final CB_REASON_BAOICxH:I = 0x2

.field public static final CB_REASON_BA_ALL:I = 0x5

.field public static final CB_REASON_BA_FD:I = 0x9

.field public static final CB_REASON_BA_MO:I = 0x6

.field public static final CB_REASON_BA_MT:I = 0x7

.field public static final CB_REASON_BA_SIM:I = 0x8

.field public static final CC_ACTION_RESET_ACM:I = 0x1

.field public static final CC_ACTION_RESET_CCM:I = 0x0

.field public static final CC_ACTION_SET_ACMMAX:I = 0x2

.field public static final CF_ACTION_DISABLE:I = 0x0

.field public static final CF_ACTION_ENABLE:I = 0x1

.field public static final CF_ACTION_ERASURE:I = 0x4

.field public static final CF_ACTION_REGISTRATION:I = 0x3

.field public static final CF_REASON_ALL:I = 0x4

.field public static final CF_REASON_ALL_CONDITIONAL:I = 0x5

.field public static final CF_REASON_BUSY:I = 0x1

.field public static final CF_REASON_NOT_REACHABLE:I = 0x3

.field public static final CF_REASON_NO_REPLY:I = 0x2

.field public static final CF_REASON_UNCONDITIONAL:I = 0x0

.field public static final CLIR_DEFAULT:I = 0x0

.field public static final CLIR_INVOCATION:I = 0x1

.field public static final CLIR_SUPPRESSION:I = 0x2

.field public static final SERVICE_CLASS_AUX:I = 0x2

.field public static final SERVICE_CLASS_DATA:I = 0xf0

.field public static final SERVICE_CLASS_DATA_ASYNC:I = 0x20

.field public static final SERVICE_CLASS_DATA_SYNC:I = 0x10

.field public static final SERVICE_CLASS_FAX:I = 0x4

.field public static final SERVICE_CLASS_MAX:I = 0x80

.field public static final SERVICE_CLASS_NONE:I = 0xff

.field public static final SERVICE_CLASS_PACKET:I = 0x40

.field public static final SERVICE_CLASS_PAD:I = 0x80

.field public static final SERVICE_CLASS_SMS:I = 0x8

.field public static final SERVICE_CLASS_VOICE:I = 0x1

.field public static final SIM_REFRESH_FILE_UPDATED:I = 0x0

.field public static final SIM_REFRESH_INIT:I = 0x1

.field public static final SIM_REFRESH_RESET:I = 0x2

.field public static final SIM_TYPE_CSIM:I = 0x4

.field public static final SIM_TYPE_RUIM:I = 0x3

.field public static final SIM_TYPE_SIM:I = 0x1

.field public static final SIM_TYPE_UNKNOWN:I = 0x0

.field public static final SIM_TYPE_USIM:I = 0x2

.field public static final USSD_MODE_NOTIFY:I = 0x0

.field public static final USSD_MODE_REQUEST:I = 0x1


# virtual methods
.method public abstract acceptCall(Landroid/os/Message;)V
.end method

.method public abstract acknowledgeLastIncomingSMS(ZLandroid/os/Message;)V
.end method

.method public abstract broadcastActivation(ILandroid/os/Message;)V
.end method

.method public abstract cancelManualSearchingRequest(Landroid/os/Message;)V
.end method

.method public abstract cancelPendingUssd(Landroid/os/Message;)V
.end method

.method public abstract changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract changeSimPin(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract changeSimPin2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract checkFdnAllowed(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract conference(Landroid/os/Message;)V
.end method

.method public abstract deactivateDefaultPDP(ILandroid/os/Message;)V
.end method

.method public abstract deleteSmsOnSim(ILandroid/os/Message;)V
.end method

.method public abstract dial(ILjava/lang/String;ILandroid/os/Message;)V
.end method

.method public abstract dial(Ljava/lang/String;ILandroid/os/Message;)V
.end method

.method public abstract explicitCallTransfer(Landroid/os/Message;)V
.end method

.method public abstract factoryReset(Landroid/os/Message;)V
.end method

.method public abstract getAllSimPinStatus(Landroid/os/Message;)V
.end method

.method public abstract getAvailableNetworks(Landroid/os/Message;)V
.end method

.method public abstract getBasebandVersion(Landroid/os/Message;)V
.end method

.method public abstract getCLIR(Landroid/os/Message;)V
.end method

.method public abstract getCallCost(Landroid/os/Message;)V
.end method

.method public abstract getCurrentCalls(Landroid/os/Message;)V
.end method

.method public abstract getEngineeringModeInfo(ILandroid/os/Message;)I
.end method

.method public abstract getFactoryVersion(Landroid/os/Message;)V
.end method

.method public abstract getGPRSRegistrationState(Landroid/os/Message;)V
.end method

.method public abstract getHWVersion(Landroid/os/Message;)V
.end method

.method public abstract getIMEI(Landroid/os/Message;)V
.end method

.method public abstract getIMEISV(Landroid/os/Message;)V
.end method

.method public abstract getIMSI(Landroid/os/Message;)V
.end method

.method public abstract getLastCallFailCause(Landroid/os/Message;)V
.end method

.method public abstract getLastPdpFailCause(Landroid/os/Message;)V
.end method

.method public abstract getLineSelectInfo(Landroid/os/Message;)V
.end method

.method public abstract getModemVersion(Landroid/os/Message;)V
.end method

.method public abstract getMute(Landroid/os/Message;)V
.end method

.method public abstract getNeighboringCids(Landroid/os/Message;)V
.end method

.method public abstract getNetworkSelectionMode(Landroid/os/Message;)V
.end method

.method public abstract getOperator(Landroid/os/Message;)V
.end method

.method public abstract getPDPContextList(Landroid/os/Message;)V
.end method

.method public abstract getPreferredNetworkType(Landroid/os/Message;)V
.end method

.method public abstract getRadioState()Lcom/android/internal/telephony/gsm/CommandsInterface$RadioState;
.end method

.method public abstract getRegistrationState(Landroid/os/Message;)V
.end method

.method public abstract getSIMUnlockRetryCount(Landroid/os/Message;)V
.end method

.method public abstract getSearchStatus(Landroid/os/Message;)V
.end method

.method public abstract getSignalStrength(Landroid/os/Message;)V
.end method

.method public abstract getSimStatus(Landroid/os/Message;)V
.end method

.method public abstract goFastDormancy(Landroid/os/Message;)I
.end method

.method public abstract handleCallSetupRequestFromSim(ZLandroid/os/Message;)V
.end method

.method public abstract hangupConnection(ILandroid/os/Message;)V
.end method

.method public abstract hangupForegroundResumeBackground(Landroid/os/Message;)V
.end method

.method public abstract hangupWaitingOrBackground(Landroid/os/Message;)V
.end method

.method public abstract invokeOemRilRequestRaw([BLandroid/os/Message;)V
.end method

.method public abstract invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract queryAvailableBandMode(Landroid/os/Message;)V
.end method

.method public abstract queryCLIP(Landroid/os/Message;)V
.end method

.method public abstract queryCNAP(Landroid/os/Message;)V
.end method

.method public abstract queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract queryCallWaiting(ILandroid/os/Message;)V
.end method

.method public abstract queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
.end method

.method public abstract readSMSTemplate(Landroid/os/Message;)V
.end method

.method public abstract registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForPDPStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForSIMLockedOrAbsent(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForSIMReady(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract rejectCall(Landroid/os/Message;)V
.end method

.method public abstract resetRadio(Landroid/os/Message;)V
.end method

.method public abstract sendDtmf(CLandroid/os/Message;)V
.end method

.method public abstract sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract sendSMSexpectmore(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract sendSTKInitCompleted(Landroid/os/Message;)V
.end method

.method public abstract sendTerminalResponse(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract sendUSSD(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract separateConnection(ILandroid/os/Message;)V
.end method

.method public abstract setArm9_NVDB_Update(ILandroid/os/Message;)I
.end method

.method public abstract setBandMode(ILandroid/os/Message;)V
.end method

.method public abstract setBroadcastConfig(I[ILandroid/os/Message;)V
.end method

.method public abstract setCLIR(ILandroid/os/Message;)V
.end method

.method public abstract setCallCost(IILandroid/os/Message;)V
.end method

.method public abstract setCallCostPuct(ILjava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V
.end method

.method public abstract setCallWaiting(ZILandroid/os/Message;)V
.end method

.method public abstract setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V
.end method

.method public abstract setGWDomainPref(ILandroid/os/Message;)V
.end method

.method public abstract setHiddenReset(ZLandroid/os/Message;)I
.end method

.method public abstract setLineSelectInfo(ILandroid/os/Message;)V
.end method

.method public abstract setLocationUpdates(ZLandroid/os/Message;)V
.end method

.method public abstract setMemoryFull(ILandroid/os/Message;)V
.end method

.method public abstract setMute(ZLandroid/os/Message;)V
.end method

.method public abstract setNV_A5_ALGO(ILandroid/os/Message;)I
.end method

.method public abstract setNV_DL_FREQ(ILandroid/os/Message;)I
.end method

.method public abstract setNV_DL_FREQ_EN(ILandroid/os/Message;)I
.end method

.method public abstract setNV_GCFFlag(ILandroid/os/Message;)I
.end method

.method public abstract setNV_HSDPACat(ILandroid/os/Message;)I
.end method

.method public abstract setNV_RRCVer(ILandroid/os/Message;)I
.end method

.method public abstract setNetworkSelectionModeAutomatic(Landroid/os/Message;)V
.end method

.method public abstract setNetworkSelectionModeManual(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract setNetworkSelectionModeManual(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract setOTAMode(ILandroid/os/Message;)I
.end method

.method public abstract setOnCallProgress(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnCallRing(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnCnapNoti(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnFactoryReset(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnKTOTAWriteFail(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnKTOTAWriteSuccess(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnNITZTime(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnNewCBS(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnNewSMS(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnOTAInSvcEvent(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnOTANoSvcEvent(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnOTARegFail(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnOTARegSuccess(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnOrigModToSS(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnRegFail(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnRegSuccess(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnRemovedBattery(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnSignalStrengthUpdate(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnSimInserted(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnSimRefresh(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnSimSmsFull(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnSmsOnSim(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnSmsStatus(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnStkCallSetUp(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnStkEvent(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnStkProactiveCmd(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnStkSessionEnd(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnUSSD(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setPreferredNetworkType(ILandroid/os/Message;)V
.end method

.method public abstract setPreviousNetworkSelectionModeManual(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract setRadioPower(ZLandroid/os/Message;)V
.end method

.method public abstract setRadioPowerOff(Landroid/os/Message;)V
.end method

.method public abstract setStabilityTest(ILandroid/os/Message;)I
.end method

.method public abstract setSuppServiceNotifications(ZLandroid/os/Message;)V
.end method

.method public abstract setVsimMode(ZLandroid/os/Message;)V
.end method

.method public abstract setupDefaultPDP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract simIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract startDtmf(CLandroid/os/Message;)V
.end method

.method public abstract stopDtmf(Landroid/os/Message;)V
.end method

.method public abstract supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract supplySimPin(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract supplySimPin2(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract supplySimPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract supplySimPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract switchWaitingOrHoldingAndActive(Landroid/os/Message;)V
.end method

.method public abstract writeSmsToSim(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract writeValidityPeriod(ILjava/lang/String;Landroid/os/Message;)V
.end method
