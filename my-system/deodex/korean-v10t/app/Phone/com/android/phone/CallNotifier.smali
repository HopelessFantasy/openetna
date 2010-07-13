.class public Lcom/android/phone/CallNotifier;
.super Landroid/os/Handler;
.source "CallNotifier.java"

# interfaces
.implements Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallNotifier$InCallTonePlayer;,
        Lcom/android/phone/CallNotifier$mPhoneAutoAnswerNotifier;
    }
.end annotation


# static fields
.field private static final CALLERINFO_QUERYING:I = -0x1

.field private static final CALLERINFO_QUERY_READY:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final EVENT_PROGRESS:I = 0x9

.field private static final EVENT_SSN:I = 0x8

.field private static final LOG_TAG:Ljava/lang/String; = "CallNotifier"

.field private static final MAX_CALL_DURAION_VALUE:J = 0x15752618L

.field private static final PHONE_BATTERY_LOW:I = 0x7

.field private static final PHONE_DISCONNECT:I = 0x3

.field private static final PHONE_INCOMING_RING:I = 0x5

.field private static final PHONE_MWI_CHANGED:I = 0x6

.field private static final PHONE_NEW_RINGING_CONNECTION:I = 0x2

.field private static final PHONE_STATE_CHANGED:I = 0x1

.field private static final PHONE_UI_EVENT_MULTIPLE_QUERY:Ljava/lang/String; = "multiple incoming call queries attempted"

.field private static final PHONE_UI_EVENT_RINGER_QUERY_ELAPSED:Ljava/lang/String; = "using default incoming call behavior"

.field private static final PHONE_UNKNOWN_CONNECTION_APPEARED:I = 0x4

.field public static final PREF_ALL_CALL:Ljava/lang/String; = "allCall"

.field public static final PREF_CALL_DURATION:Ljava/lang/String; = "PrefCallDuration"

.field public static final PREF_LAST_CALL:Ljava/lang/String; = "lastCall"

.field public static final PREF_MO_CALL:Ljava/lang/String; = "moCall"

.field public static final PREF_MT_CALL:Ljava/lang/String; = "mtCall"

.field private static final RINGER_CUSTOM_RINGTONE_QUERY_TIMEOUT:I = 0x64

.field private static final RINGER_RINGTONE_CALL_WAIT_TIMEOUT:I = 0x66

.field private static final RINGER_RINGTONE_ESCALATION_END:I = 0x7

.field private static final RINGER_RINGTONE_ESCALATION_QUERY_TIMEOUT:I = 0x65

.field private static final RINGER_RINGTONE_ESCALATION_START:I = 0x1

.field private static final RINGER_RINGTONE_ESCALATION_STEP:I = 0x2

.field private static final RINGER_RINGTONE_RING_TONE_TIMEOUT:I = 0x67

.field private static final RINGTONE_CALL_WAIT_TIME:I = 0x1388

.field private static final RINGTONE_ESCALATION_WAIT_TIME:I = 0x3e8

.field private static final RINGTONE_QUERY_WAIT_TIME:I = 0x1388

.field private static final RINGTONE_RING_TONE_TIME:I = 0x1388

.field private static final VDBG:Z = false

.field private static final callDurationFile:Ljava/lang/String; = "/lgdrm/CallDuration"


# instance fields
.field private mApplication:Lcom/android/phone/PhoneApp;

.field private mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

.field private mCallerInfoQueryState:I

.field private mCallerInfoQueryStateGuard:Ljava/lang/Object;

.field private mEscalateVolume:I

.field private mIncomingForwarded:Z

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mRinger:Lcom/android/phone/Ringer;

.field private mSilentRingerRequested:Z

.field private mTargetVolume:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 76
    const-string v0, "ro.debuggable"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_e

    move v0, v2

    :goto_b
    sput-boolean v0, Lcom/android/phone/CallNotifier;->DBG:Z

    return-void

    :cond_e
    move v0, v1

    goto :goto_b
.end method

.method public constructor <init>(Lcom/android/phone/PhoneApp;Lcom/android/internal/telephony/Phone;Lcom/android/phone/Ringer;Lcom/android/phone/BluetoothHandsfree;)V
    .registers 9
    .parameter "app"
    .parameter "phone"
    .parameter "ringer"
    .parameter "btMgr"

    .prologue
    const/4 v3, 0x0

    .line 161
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 103
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryStateGuard:Ljava/lang/Object;

    .line 148
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/CallNotifier;->mIncomingForwarded:Z

    .line 318
    new-instance v1, Lcom/android/phone/CallNotifier$1;

    invoke-direct {v1, p0}, Lcom/android/phone/CallNotifier$1;-><init>(Lcom/android/phone/CallNotifier;)V

    iput-object v1, p0, Lcom/android/phone/CallNotifier;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 162
    iput-object p1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    .line 164
    iput-object p2, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 165
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v2, 0x2

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForNewRingingConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 166
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v2, 0x1

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForPhoneStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 167
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v2, 0x3

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 168
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v2, 0x4

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForUnknownConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 169
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v2, 0x5

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForIncomingRing(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 171
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    const/16 v2, 0x8

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 174
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    const/16 v2, 0x9

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForProgressing(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 178
    iput-object p3, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    .line 179
    iput-object p4, p0, Lcom/android/phone/CallNotifier;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    .line 181
    const-string v1, "phone"

    invoke-virtual {p1, v1}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 183
    .local v0, telephonyManager:Landroid/telephony/TelephonyManager;
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 186
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/CallNotifier;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/phone/CallNotifier;->onMwiChanged(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/CallNotifier;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/phone/CallNotifier;->onCfiChanged(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/CallNotifier;)Lcom/android/internal/telephony/Phone;
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneApp;
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/CallNotifier;)Lcom/android/phone/BluetoothHandsfree;
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/CallNotifier;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->resetAudioStateAfterDisconnect()V

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 1443
    const-string v0, "CallNotifier"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1444
    return-void
.end method

.method private onBatteryLow()V
    .registers 3

    .prologue
    .line 1234
    sget-boolean v0, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v0, :cond_9

    const-string v0, "onBatteryLow()..."

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1240
    :cond_9
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v0, v1, :cond_1c

    .line 1241
    new-instance v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->start()V

    .line 1243
    :cond_1c
    return-void
.end method

.method private onCfiChanged(Z)V
    .registers 3
    .parameter "visible"

    .prologue
    .line 1204
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/phone/NotificationMgr;->updateCfi(Z)V

    .line 1205
    return-void
.end method

.method private onCustomRingQueryComplete()V
    .registers 7

    .prologue
    const-string v5, "CallNotifier"

    .line 549
    const/4 v1, 0x0

    .line 550
    .local v1, isQueryExecutionTimeExpired:Z
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryStateGuard:Ljava/lang/Object;

    monitor-enter v2

    .line 551
    :try_start_6
    iget v3, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryState:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_f

    .line 552
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryState:I

    .line 553
    const/4 v1, 0x1

    .line 555
    :cond_f
    monitor-exit v2
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_3c

    .line 556
    if-eqz v1, :cond_2a

    .line 559
    const-string v2, "CallNotifier"

    const-string v2, "CallerInfo query took too long; falling back to default ringtone"

    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Checkin$Events$Tag;->PHONE_UI:Landroid/provider/Checkin$Events$Tag;

    const-string v4, "using default incoming call behavior"

    invoke-static {v2, v3, v4}, Landroid/provider/Checkin;->logEvent(Landroid/content/ContentResolver;Landroid/provider/Checkin$Events$Tag;Ljava/lang/String;)Landroid/net/Uri;

    .line 577
    :cond_2a
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-eq v2, v3, :cond_3f

    .line 578
    const-string v2, "CallNotifier"

    const-string v2, "onCustomRingQueryComplete: No incoming call! Bailing out..."

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    :cond_3b
    :goto_3b
    return-void

    .line 555
    :catchall_3c
    move-exception v3

    :try_start_3d
    monitor-exit v2
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    throw v3

    .line 585
    :cond_3f
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 586
    .local v0, ec:Lcom/android/internal/telephony/Connection;
    if-eqz v0, :cond_57

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_57

    .line 609
    invoke-static {}, Lcom/android/phone/PhoneUtils;->showIncomingCallUi()V

    goto :goto_3b

    .line 616
    :cond_57
    invoke-virtual {p0}, Lcom/android/phone/CallNotifier;->startRingtoneEscalation()V

    .line 621
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v2}, Lcom/android/phone/Ringer;->ring()V

    .line 625
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->isCallScreenForegroundTask()Z

    move-result v2

    if-nez v2, :cond_3b

    .line 627
    invoke-static {}, Lcom/android/phone/PhoneUtils;->showIncomingCallUi()V

    goto :goto_3b
.end method

.method private onDisconnect(Landroid/os/AsyncResult;)V
    .registers 37
    .parameter "r"

    .prologue
    .line 845
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/CallNotifier;->stopRingTone()V

    .line 849
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Lcom/android/internal/telephony/Connection;

    .line 850
    .local v23, c:Lcom/android/internal/telephony/Connection;
    sget-boolean v6, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v6, :cond_4d

    if-eqz v23, :cond_4d

    .line 851
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "- onDisconnect: cause = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", incoming = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", date = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v17

    move-object v0, v6

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 856
    :cond_4d
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/Connection;->getCallRejected()Z

    move-result v6

    if-eqz v6, :cond_54

    .line 1163
    :cond_53
    :goto_53
    return-void

    .line 863
    :cond_54
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/phone/PhoneApp;->isCallScreenForegroundTask()Z

    move-result v6

    if-nez v6, :cond_91

    .line 864
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    move-object v6, v0

    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lcom/android/phone/PhoneApp;->sendBroadcast(Landroid/content/Intent;)V

    .line 865
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    move-object v6, v0

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/phone/PhoneApp;->preventScreenOn(Z)V

    .line 866
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/phone/PhoneApp;->disableKeyguard()V

    .line 867
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    move-object v6, v0

    sget-object v7, Lcom/android/phone/PhoneApp$WakeState;->FULL:Lcom/android/phone/PhoneApp$WakeState;

    invoke-virtual {v6, v7}, Lcom/android/phone/PhoneApp;->requestWakeState(Lcom/android/phone/PhoneApp$WakeState;)V

    .line 868
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/phone/PhoneApp;->displayCallScreenOnDisconnect()V

    .line 873
    :cond_91
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object v6, v0

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v6, v7, :cond_2e1

    .line 874
    const/4 v6, 0x0

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->setAudioControlState(I)V

    .line 876
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object v6, v0

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/android/phone/PhoneUtils;->setAudioMode(Landroid/content/Context;I)V

    .line 905
    :cond_af
    :goto_af
    sget-boolean v6, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v6, :cond_bb

    const-string v6, "stopRing()... (onDisconnect)"

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 906
    :cond_bb
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/phone/Ringer;->stopRing()V

    .line 910
    const/16 v34, 0x0

    .line 913
    .local v34, toneToPlay:I
    if-eqz v23, :cond_e0

    .line 914
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v24

    .line 915
    .local v24, cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    sget-object v6, Lcom/android/internal/telephony/Connection$DisconnectCause;->BUSY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v24

    move-object v1, v6

    if-ne v0, v1, :cond_301

    .line 916
    sget-boolean v6, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v6, :cond_de

    const-string v6, "- need to play BUSY tone!"

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 917
    :cond_de
    const/16 v34, 0x2

    .line 939
    .end local v24           #cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    :cond_e0
    :goto_e0
    if-nez v34, :cond_105

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object v6, v0

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v6, v7, :cond_105

    if-eqz v23, :cond_105

    .line 942
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v24

    .line 943
    .restart local v24       #cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    sget-object v6, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v24

    move-object v1, v6

    if-eq v0, v1, :cond_103

    sget-object v6, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v24

    move-object v1, v6

    if-ne v0, v1, :cond_105

    .line 946
    :cond_103
    const/16 v34, 0x5

    .line 950
    .end local v24           #cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    :cond_105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object v6, v0

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v6, v7, :cond_11e

    .line 953
    if-nez v34, :cond_117

    .line 954
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/CallNotifier;->resetAudioStateAfterDisconnect()V

    .line 957
    :cond_117
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/phone/NotificationMgr;->cancelCallInProgressNotification()V

    .line 974
    :cond_11e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object v6, v0

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v6, v7, :cond_318

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object v6, v0

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v6

    if-eqz v6, :cond_318

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object v6, v0

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v6

    if-eqz v6, :cond_318

    .line 975
    const/16 v6, 0x66

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    .line 977
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object v6, v0

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v27

    .line 979
    .local v27, mRingingConnection:Lcom/android/internal/telephony/Connection;
    const-string v6, "nodebug"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CallNotifier>onDisconnect2:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/Connection;->isRinging()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    if-eqz v27, :cond_1a4

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/Connection;->isRingerDisable()Z

    move-result v6

    if-nez v6, :cond_1a4

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/Connection;->isRinging()Z

    move-result v6

    if-eqz v6, :cond_1a4

    .line 983
    const/4 v6, 0x1

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->setAudioControlState(I)V

    .line 984
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->startIncomingCallQuery(Lcom/android/internal/telephony/Connection;)V

    .line 990
    .end local v27           #mRingingConnection:Lcom/android/internal/telephony/Connection;
    :cond_1a4
    :goto_1a4
    if-eqz v23, :cond_53

    .line 991
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v8

    .line 992
    .local v8, number:Ljava/lang/String;
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v9

    .line 993
    .local v9, presentation:I
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v11

    .line 994
    .local v11, date:J
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v13

    .line 995
    .local v13, duration:J
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v24

    .line 998
    .restart local v24       #cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/Connection;->getCnap()Ljava/lang/String;

    move-result-object v16

    .line 1003
    .local v16, calling_name:Ljava/lang/String;
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v6

    if-eqz v6, :cond_335

    .line 1004
    sget-object v6, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v24

    move-object v1, v6

    if-ne v0, v1, :cond_331

    const/4 v6, 0x3

    move v10, v6

    .line 1014
    .local v10, callLogType:I
    :goto_1cd
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v31

    .line 1016
    .local v31, o:Ljava/lang/Object;
    if-eqz v31, :cond_1da

    move-object/from16 v0, v31

    instance-of v0, v0, Lcom/android/internal/telephony/CallerInfo;

    move v6, v0

    if-eqz v6, :cond_37c

    .line 1018
    :cond_1da
    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_338

    .line 1020
    new-instance v25, Lcom/android/internal/telephony/CallerInfo;

    invoke-direct/range {v25 .. v25}, Lcom/android/internal/telephony/CallerInfo;-><init>()V

    .line 1021
    .local v25, eci:Lcom/android/internal/telephony/CallerInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object v6, v0

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0901d0

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 1022
    const/4 v6, 0x7

    move v0, v6

    move-object/from16 v1, v25

    iput v0, v1, Lcom/android/internal/telephony/CallerInfo;->numberType:I

    .line 1023
    const/4 v6, 0x0

    move-object v0, v6

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/android/internal/telephony/CallerInfo;->numberLabel:Ljava/lang/String;

    .line 1024
    const-wide/16 v17, -0x1

    move-wide/from16 v0, v17

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    .line 1025
    move-object/from16 v7, v25

    .line 1047
    .end local v25           #eci:Lcom/android/internal/telephony/CallerInfo;
    .end local v31           #o:Ljava/lang/Object;
    .local v7, ci:Lcom/android/internal/telephony/CallerInfo;
    :goto_211
    new-instance v5, Lcom/android/phone/CallNotifier$2;

    move-object/from16 v6, p0

    invoke-direct/range {v5 .. v14}, Lcom/android/phone/CallNotifier$2;-><init>(Lcom/android/phone/CallNotifier;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJ)V

    .line 1069
    .local v5, t:Ljava/lang/Thread;
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 1075
    const-wide/16 v17, 0x0

    cmp-long v6, v13, v17

    if-lez v6, :cond_267

    .line 1076
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallNotifier;->readCallDurationFile()J

    move-result-wide v29

    .line 1078
    .local v29, nvCallDuration:J
    const-string v6, "nodebug"

    new-instance v7, Ljava/lang/StringBuilder;

    .end local v7           #ci:Lcom/android/internal/telephony/CallerInfo;
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CallNotifier>duration:"

    .end local v8           #number:Ljava/lang/String;
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-wide/from16 v1, v29

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    add-long v32, v29, v13

    .line 1080
    .local v32, tempDuration:J
    const-wide/32 v17, 0x15752618

    cmp-long v6, v29, v17

    if-gtz v6, :cond_25a

    const-wide/32 v17, 0x15752618

    cmp-long v6, v32, v17

    if-lez v6, :cond_385

    .line 1081
    :cond_25a
    const-wide/32 v29, 0x15752618

    .line 1084
    :goto_25d
    invoke-static/range {v29 .. v30}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/phone/CallNotifier;->writeCallDurationFile(Ljava/lang/String;)V

    .line 1088
    .end local v29           #nvCallDuration:J
    .end local v32           #tempDuration:J
    :cond_267
    const-string v6, "lastCall"

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object v1, v6

    move-wide v2, v13

    move v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/phone/CallNotifier;->updateCallDuration(Ljava/lang/String;JZ)V

    .line 1089
    const-string v6, "allCall"

    const/4 v7, 0x1

    move-object/from16 v0, p0

    move-object v1, v6

    move-wide v2, v13

    move v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/phone/CallNotifier;->updateCallDuration(Ljava/lang/String;JZ)V

    .line 1090
    const/4 v6, 0x2

    if-ne v10, v6, :cond_389

    .line 1091
    const-string v6, "moCall"

    const/4 v7, 0x1

    move-object/from16 v0, p0

    move-object v1, v6

    move-wide v2, v13

    move v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/phone/CallNotifier;->updateCallDuration(Ljava/lang/String;JZ)V

    .line 1095
    :cond_28b
    :goto_28b
    const/4 v6, 0x3

    if-ne v10, v6, :cond_2d0

    .line 1099
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    move-object v6, v0

    new-instance v7, Ljava/lang/Long;

    invoke-direct {v7, v11, v12}, Ljava/lang/Long;-><init>(J)V

    move-object v0, v6

    move-object/from16 v1, v23

    move-object/from16 v2, p0

    move-object v3, v7

    invoke-static {v0, v1, v2, v3}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v26

    .line 1101
    .local v26, info:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    if-eqz v26, :cond_3b3

    .line 1105
    move-object/from16 v0, v26

    iget-boolean v0, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    move v6, v0

    if-eqz v6, :cond_2d0

    .line 1108
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    move-object v7, v0

    .line 1110
    .restart local v7       #ci:Lcom/android/internal/telephony/CallerInfo;
    if-eqz v7, :cond_399

    iget-object v6, v7, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_399

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_399

    .line 1111
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v15

    move-object v0, v7

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-wide/from16 v19, v11

    invoke-virtual/range {v15 .. v20}, Lcom/android/phone/NotificationMgr;->notifyMissedCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 1129
    .end local v7           #ci:Lcom/android/internal/telephony/CallerInfo;
    .end local v26           #info:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :cond_2d0
    :goto_2d0
    if-eqz v34, :cond_53

    .line 1131
    new-instance v6, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    move-object v0, v6

    move-object/from16 v1, p0

    move/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    invoke-virtual {v6}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->start()V

    goto/16 :goto_53

    .line 880
    .end local v5           #t:Ljava/lang/Thread;
    .end local v9           #presentation:I
    .end local v10           #callLogType:I
    .end local v11           #date:J
    .end local v13           #duration:J
    .end local v16           #calling_name:Ljava/lang/String;
    .end local v24           #cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    .end local v34           #toneToPlay:I
    :cond_2e1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object v6, v0

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v6, v7, :cond_af

    .line 881
    const/4 v6, 0x2

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->setAudioControlState(I)V

    .line 882
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object v6, v0

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x2

    invoke-static {v6, v7}, Lcom/android/phone/PhoneUtils;->setAudioMode(Landroid/content/Context;I)V

    goto/16 :goto_af

    .line 918
    .restart local v24       #cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    .restart local v34       #toneToPlay:I
    :cond_301
    sget-object v6, Lcom/android/internal/telephony/Connection$DisconnectCause;->CONGESTION:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v24

    move-object v1, v6

    if-ne v0, v1, :cond_e0

    .line 919
    sget-boolean v6, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v6, :cond_314

    const-string v6, "- need to play CONGESTION tone!"

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 920
    :cond_314
    const/16 v34, 0x3

    goto/16 :goto_e0

    .line 986
    .end local v24           #cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    :cond_318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object v6, v0

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v6

    if-eqz v6, :cond_1a4

    .line 987
    const/16 v6, 0x66

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    goto/16 :goto_1a4

    .line 1004
    .restart local v8       #number:Ljava/lang/String;
    .restart local v9       #presentation:I
    .restart local v11       #date:J
    .restart local v13       #duration:J
    .restart local v16       #calling_name:Ljava/lang/String;
    .restart local v24       #cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    :cond_331
    const/4 v6, 0x1

    move v10, v6

    goto/16 :goto_1cd

    .line 1008
    :cond_335
    const/4 v10, 0x2

    .restart local v10       #callLogType:I
    goto/16 :goto_1cd

    .line 1028
    .restart local v31       #o:Ljava/lang/Object;
    :cond_338
    if-eqz v31, :cond_375

    move-object/from16 v0, v31

    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    move-object v6, v0

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_375

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_375

    .line 1029
    new-instance v28, Lcom/android/internal/telephony/CallerInfo;

    invoke-direct/range {v28 .. v28}, Lcom/android/internal/telephony/CallerInfo;-><init>()V

    .line 1030
    .local v28, nci:Lcom/android/internal/telephony/CallerInfo;
    move-object/from16 v0, v16

    move-object/from16 v1, v28

    iput-object v0, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 1031
    const/16 v6, 0x3e7

    move v0, v6

    move-object/from16 v1, v28

    iput v0, v1, Lcom/android/internal/telephony/CallerInfo;->numberType:I

    .line 1032
    const/4 v6, 0x0

    move-object v0, v6

    move-object/from16 v1, v28

    iput-object v0, v1, Lcom/android/internal/telephony/CallerInfo;->numberLabel:Ljava/lang/String;

    .line 1033
    const-wide/16 v17, -0x1

    move-wide/from16 v0, v17

    move-object/from16 v2, v28

    iput-wide v0, v2, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    .line 1034
    move-object/from16 v7, v28

    .line 1035
    .restart local v7       #ci:Lcom/android/internal/telephony/CallerInfo;
    goto/16 :goto_211

    .line 1039
    .end local v7           #ci:Lcom/android/internal/telephony/CallerInfo;
    .end local v28           #nci:Lcom/android/internal/telephony/CallerInfo;
    :cond_375
    move-object/from16 v0, v31

    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    move-object v7, v0

    .restart local v7       #ci:Lcom/android/internal/telephony/CallerInfo;
    goto/16 :goto_211

    .line 1041
    .end local v7           #ci:Lcom/android/internal/telephony/CallerInfo;
    :cond_37c
    check-cast v31, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local v31           #o:Ljava/lang/Object;
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    move-object v7, v0

    .restart local v7       #ci:Lcom/android/internal/telephony/CallerInfo;
    goto/16 :goto_211

    .line 1083
    .end local v7           #ci:Lcom/android/internal/telephony/CallerInfo;
    .end local v8           #number:Ljava/lang/String;
    .restart local v5       #t:Ljava/lang/Thread;
    .restart local v29       #nvCallDuration:J
    .restart local v32       #tempDuration:J
    :cond_385
    move-wide/from16 v29, v32

    goto/16 :goto_25d

    .line 1092
    .end local v29           #nvCallDuration:J
    .end local v32           #tempDuration:J
    :cond_389
    const/4 v6, 0x1

    if-ne v10, v6, :cond_28b

    .line 1093
    const-string v6, "mtCall"

    const/4 v7, 0x1

    move-object/from16 v0, p0

    move-object v1, v6

    move-wide v2, v13

    move v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/phone/CallNotifier;->updateCallDuration(Ljava/lang/String;JZ)V

    goto/16 :goto_28b

    .line 1115
    .restart local v7       #ci:Lcom/android/internal/telephony/CallerInfo;
    .restart local v26       #info:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :cond_399
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v17

    move-object v0, v7

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object v0, v7

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object v0, v7

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->phoneLabel:Ljava/lang/String;

    move-object/from16 v20, v0

    move-wide/from16 v21, v11

    invoke-virtual/range {v17 .. v22}, Lcom/android/phone/NotificationMgr;->notifyMissedCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_2d0

    .line 1121
    .end local v7           #ci:Lcom/android/internal/telephony/CallerInfo;
    :cond_3b3
    const-string v6, "CallNotifier"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onDisconnect: got null CallerInfo for Connection "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2d0
.end method

.method private onMwiChanged(Z)V
    .registers 3
    .parameter "visible"

    .prologue
    .line 1185
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/phone/NotificationMgr;->updateMwi(Z)V

    .line 1186
    return-void
.end method

.method private onNewRingingConnection(Landroid/os/AsyncResult;)V
    .registers 16
    .parameter "r"

    .prologue
    const/4 v13, -0x1

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 351
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/Connection;

    .line 352
    .local v2, c:Lcom/android/internal/telephony/Connection;
    sget-boolean v9, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v9, :cond_21

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onNewRingingConnection(): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 353
    :cond_21
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 356
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v9, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "device_provisioned"

    invoke-static {v9, v10, v12}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_47

    move v5, v11

    .line 358
    .local v5, provisioned:Z
    :goto_38
    if-nez v5, :cond_49

    .line 359
    const-string v9, "CallNotifier"

    const-string v10, "CallNotifier: rejecting incoming call: device isn\'t provisioned"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    iget-object v9, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v9}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Phone;)Z

    .line 452
    :goto_46
    return-void

    .end local v5           #provisioned:Z
    :cond_47
    move v5, v12

    .line 356
    goto :goto_38

    .line 366
    .restart local v5       #provisioned:Z
    :cond_49
    iget-boolean v9, p0, Lcom/android/phone/CallNotifier;->mIncomingForwarded:Z

    if-ne v9, v11, :cond_52

    .line 367
    iput-boolean v12, p0, Lcom/android/phone/CallNotifier;->mIncomingForwarded:Z

    .line 368
    invoke-virtual {v2, v11}, Lcom/android/internal/telephony/Connection;->setForwarded(Z)V

    .line 372
    :cond_52
    if-eqz v2, :cond_8b

    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->isRinging()Z

    move-result v9

    if-eqz v9, :cond_8b

    .line 373
    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    .line 404
    .local v6, state:Lcom/android/internal/telephony/Call$State;
    invoke-static {v11}, Lcom/android/phone/PhoneUtils;->setAudioControlState(I)V

    .line 405
    iget-object v9, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "auto_answer"

    invoke-static {v9, v10, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 408
    .local v1, auto_answer:I
    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->startIncomingCallQuery(Lcom/android/internal/telephony/Connection;)V

    .line 413
    if-eq v1, v13, :cond_8b

    .line 414
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    .line 415
    .local v3, mHandler:Landroid/os/Handler;
    new-instance v4, Lcom/android/phone/CallNotifier$mPhoneAutoAnswerNotifier;

    const/4 v9, 0x0

    invoke-direct {v4, p0, v9}, Lcom/android/phone/CallNotifier$mPhoneAutoAnswerNotifier;-><init>(Lcom/android/phone/CallNotifier;Lcom/android/phone/CallNotifier$1;)V

    .line 416
    .local v4, mTimeoutTask:Lcom/android/phone/CallNotifier$mPhoneAutoAnswerNotifier;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    int-to-long v11, v1

    add-long v7, v9, v11

    .line 418
    .local v7, timeout:J
    invoke-virtual {v3, v4, v7, v8}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 449
    .end local v1           #auto_answer:I
    .end local v3           #mHandler:Landroid/os/Handler;
    .end local v4           #mTimeoutTask:Lcom/android/phone/CallNotifier$mPhoneAutoAnswerNotifier;
    .end local v6           #state:Lcom/android/internal/telephony/Call$State;
    .end local v7           #timeout:J
    :cond_8b
    iget-object v9, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    sget-object v10, Lcom/android/phone/PhoneApp$WakeState;->PARTIAL:Lcom/android/phone/PhoneApp$WakeState;

    invoke-virtual {v9, v10}, Lcom/android/phone/PhoneApp;->requestWakeState(Lcom/android/phone/PhoneApp$WakeState;)V

    goto :goto_46
.end method

.method private onPhoneStateChanged(Landroid/os/AsyncResult;)V
    .registers 6
    .parameter "r"

    .prologue
    const/4 v3, 0x0

    .line 681
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    .line 686
    .local v0, state:Lcom/android/internal/telephony/Phone$State;
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/NotificationMgr;->getStatusBarMgr()Lcom/android/phone/NotificationMgr$StatusBarMgr;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v2, :cond_55

    const/4 v2, 0x1

    :goto_14
    invoke-virtual {v1, v2}, Lcom/android/phone/NotificationMgr$StatusBarMgr;->enableNotificationAlerts(Z)V

    .line 694
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v1, v3}, Lcom/android/phone/PhoneApp;->updateBluetoothIndication(Z)V

    .line 696
    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_54

    .line 698
    const/16 v1, 0x66

    invoke-virtual {p0, v1}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    .line 700
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->setAudioControlState(I)V

    .line 705
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v1

    if-nez v1, :cond_3f

    .line 706
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    sget-object v2, Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;->DEFAULT:Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

    invoke-virtual {v1, v2}, Lcom/android/phone/PhoneApp;->setScreenTimeout(Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;)V

    .line 707
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    sget-object v2, Lcom/android/phone/PhoneApp$WakeState;->SLEEP:Lcom/android/phone/PhoneApp$WakeState;

    invoke-virtual {v1, v2}, Lcom/android/phone/PhoneApp;->requestWakeState(Lcom/android/phone/PhoneApp$WakeState;)V

    .line 717
    :cond_3f
    sget-boolean v1, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v1, :cond_48

    const-string v1, "stopRing()... (OFFHOOK state)"

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 718
    :cond_48
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v1}, Lcom/android/phone/Ringer;->stopRing()V

    .line 721
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    .line 723
    :cond_54
    return-void

    :cond_55
    move v2, v3

    .line 686
    goto :goto_14
.end method

.method private onUnknownConnectionAppeared(Landroid/os/AsyncResult;)V
    .registers 4
    .parameter "r"

    .prologue
    .line 671
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    .line 673
    .local v0, state:Lcom/android/internal/telephony/Phone$State;
    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_10

    .line 675
    invoke-direct {p0, p1}, Lcom/android/phone/CallNotifier;->onPhoneStateChanged(Landroid/os/AsyncResult;)V

    .line 676
    invoke-static {}, Lcom/android/phone/PhoneUtils;->showIncomingCallUi()V

    .line 678
    :cond_10
    return-void
.end method

.method private resetAudioStateAfterDisconnect()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1171
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v0, :cond_a

    .line 1172
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->audioOff()V

    .line 1175
    :cond_a
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1176
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;Z)V

    .line 1179
    :cond_1f
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->setAudioMode(Landroid/content/Context;I)V

    .line 1180
    return-void
.end method

.method private startIncomingCallQuery(Lcom/android/internal/telephony/Connection;)V
    .registers 7
    .parameter "c"

    .prologue
    .line 478
    const/4 v1, 0x0

    .line 479
    .local v1, shouldStartQuery:Z
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryStateGuard:Ljava/lang/Object;

    monitor-enter v2

    .line 480
    :try_start_4
    iget v3, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryState:I

    if-nez v3, :cond_c

    .line 481
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryState:I

    .line 482
    const/4 v1, 0x1

    .line 484
    :cond_c
    monitor-exit v2
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_2b

    .line 485
    if-eqz v1, :cond_36

    .line 487
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    sget-object v3, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Lcom/android/phone/Ringer;->setCustomRingtoneUri(Landroid/net/Uri;)V

    .line 490
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1, p0, p0}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v0

    .line 495
    .local v0, cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    iget-boolean v2, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    if-eqz v2, :cond_2e

    .line 497
    const/4 v2, 0x0

    iget-object v3, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {p0, v2, p0, v3}, Lcom/android/phone/CallNotifier;->onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V

    .line 528
    .end local v0           #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :cond_2a
    :goto_2a
    return-void

    .line 484
    :catchall_2b
    move-exception v3

    :try_start_2c
    monitor-exit v2
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw v3

    .line 500
    .restart local v0       #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :cond_2e
    const/16 v2, 0x64

    const-wide/16 v3, 0x1388

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/phone/CallNotifier;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2a

    .line 509
    .end local v0           #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :cond_36
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Checkin$Events$Tag;->PHONE_UI:Landroid/provider/Checkin$Events$Tag;

    const-string v4, "multiple incoming call queries attempted"

    invoke-static {v2, v3, v4}, Landroid/provider/Checkin;->logEvent(Landroid/content/ContentResolver;Landroid/provider/Checkin$Events$Tag;Ljava/lang/String;)Landroid/net/Uri;

    .line 514
    invoke-virtual {p0}, Lcom/android/phone/CallNotifier;->startRingtoneEscalation()V

    .line 519
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v2}, Lcom/android/phone/Ringer;->ring()V

    .line 524
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->isCallScreenForegroundTask()Z

    move-result v2

    if-nez v2, :cond_2a

    .line 526
    invoke-static {}, Lcom/android/phone/PhoneUtils;->showIncomingCallUi()V

    goto :goto_2a
.end method

.method private startRingTone()V
    .registers 4

    .prologue
    .line 309
    new-instance v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->start()V

    .line 310
    const/16 v0, 0x67

    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/phone/CallNotifier;->sendEmptyMessageDelayed(IJ)Z

    .line 311
    return-void
.end method

.method private stopRingTone()V
    .registers 2

    .prologue
    .line 314
    const/16 v0, 0x67

    invoke-virtual {p0, v0}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    .line 315
    return-void
.end method

.method private final updateCallDuration(Ljava/lang/String;JZ)V
    .registers 12
    .parameter "key"
    .parameter "value"
    .parameter "additive"

    .prologue
    .line 785
    iget-object v4, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    const-string v5, "PrefCallDuration"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/phone/PhoneApp;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 786
    .local v3, settings:Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 789
    .local v2, editor:Landroid/content/SharedPreferences$Editor;
    const/4 v4, 0x1

    if-ne p4, v4, :cond_1f

    .line 790
    const-wide/16 v4, 0x0

    invoke-interface {v3, p1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 794
    .local v0, duration:J
    :goto_16
    add-long v4, v0, p2

    invoke-interface {v2, p1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 795
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 796
    return-void

    .line 792
    .end local v0           #duration:J
    :cond_1f
    const-wide/16 v0, 0x0

    .restart local v0       #duration:J
    goto :goto_16
.end method


# virtual methods
.method canRinging()Z
    .registers 2

    .prologue
    .line 456
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->getRingtoneVolume(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v0

    if-nez v0, :cond_32

    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 457
    const/4 v0, 0x1

    .line 459
    :goto_31
    return v0

    :cond_32
    const/4 v0, 0x0

    goto :goto_31
.end method

.method goRingtoneEscalation()V
    .registers 4

    .prologue
    .line 648
    iget v0, p0, Lcom/android/phone/CallNotifier;->mTargetVolume:I

    iget v1, p0, Lcom/android/phone/CallNotifier;->mEscalateVolume:I

    if-le v0, v1, :cond_1d

    .line 649
    iget v0, p0, Lcom/android/phone/CallNotifier;->mEscalateVolume:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/phone/CallNotifier;->mEscalateVolume:I

    .line 650
    iget v0, p0, Lcom/android/phone/CallNotifier;->mEscalateVolume:I

    iget v1, p0, Lcom/android/phone/CallNotifier;->mTargetVolume:I

    if-lt v0, v1, :cond_38

    .line 651
    iget v0, p0, Lcom/android/phone/CallNotifier;->mTargetVolume:I

    iput v0, p0, Lcom/android/phone/CallNotifier;->mEscalateVolume:I

    .line 656
    :goto_16
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget v1, p0, Lcom/android/phone/CallNotifier;->mEscalateVolume:I

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->setRingtoneVolume(Landroid/content/Context;I)V

    .line 659
    :cond_1d
    const-string v0, "nodebug"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CallNotifier>goRingtoneEscalation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/CallNotifier;->mEscalateVolume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    return-void

    .line 653
    :cond_38
    const/16 v0, 0x65

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/phone/CallNotifier;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_16
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .parameter "msg"

    .prologue
    const/4 v4, 0x1

    const-string v5, "nodebug"

    .line 190
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_11a

    .line 305
    :cond_8
    :goto_8
    return-void

    .line 192
    :sswitch_9
    sget-boolean v2, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v2, :cond_12

    const-string v2, "RINGING... (new)"

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 193
    :cond_12
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->onNewRingingConnection(Landroid/os/AsyncResult;)V

    .line 194
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/phone/CallNotifier;->mSilentRingerRequested:Z

    goto :goto_8

    .line 200
    :sswitch_1d
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_4f

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    iget-object v2, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_4f

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    iget-object v2, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v2, v3, :cond_4f

    iget-boolean v2, p0, Lcom/android/phone/CallNotifier;->mSilentRingerRequested:Z

    if-nez v2, :cond_4f

    .line 204
    invoke-virtual {p0}, Lcom/android/phone/CallNotifier;->startRingtoneEscalation()V

    .line 206
    sget-boolean v2, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v2, :cond_49

    const-string v2, "RINGING... (PHONE_INCOMING_RING event)"

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 207
    :cond_49
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v2}, Lcom/android/phone/Ringer;->ring()V

    goto :goto_8

    .line 209
    :cond_4f
    sget-boolean v2, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v2, :cond_8

    const-string v2, "RING before NEW_RING, skipping"

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto :goto_8

    .line 214
    :sswitch_59
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->onPhoneStateChanged(Landroid/os/AsyncResult;)V

    goto :goto_8

    .line 218
    :sswitch_61
    sget-boolean v2, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v2, :cond_6a

    const-string v2, "DISCONNECT"

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 219
    :cond_6a
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->onDisconnect(Landroid/os/AsyncResult;)V

    goto :goto_8

    .line 223
    :sswitch_72
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->onUnknownConnectionAppeared(Landroid/os/AsyncResult;)V

    goto :goto_8

    .line 230
    :sswitch_7a
    const-string v2, "CallNotifier"

    const-string v3, "CallerInfo query took too long; manually starting ringer"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->onCustomRingQueryComplete()V

    goto :goto_8

    .line 241
    :sswitch_85
    invoke-virtual {p0}, Lcom/android/phone/CallNotifier;->goRingtoneEscalation()V

    goto :goto_8

    .line 260
    :sswitch_89
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getMessageWaitingIndicator()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->onMwiChanged(Z)V

    goto/16 :goto_8

    .line 264
    :sswitch_94
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->onBatteryLow()V

    goto/16 :goto_8

    .line 269
    :sswitch_99
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    iget-object v1, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    .line 271
    .local v1, not:Lcom/android/internal/telephony/gsm/SuppServiceNotification;
    const-string v2, "nodebug"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CallNotifier>EVENT_SSN: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->notificationType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->code:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget v2, v1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->notificationType:I

    if-eqz v2, :cond_8

    .line 275
    iget v2, v1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->notificationType:I

    if-ne v2, v4, :cond_8

    .line 276
    iget v2, v1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->code:I

    if-nez v2, :cond_8

    .line 277
    iput-boolean v4, p0, Lcom/android/phone/CallNotifier;->mIncomingForwarded:Z

    goto/16 :goto_8

    .line 284
    .end local v1           #not:Lcom/android/internal/telephony/gsm/SuppServiceNotification;
    :sswitch_d7
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 285
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    iget-object v0, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/gsm/CallProgressIndication;

    .line 287
    .local v0, ind:Lcom/android/internal/telephony/gsm/CallProgressIndication;
    const-string v2, "nodebug"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CallNotifier>call_progress: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/internal/telephony/gsm/CallProgressIndication;->call_progress:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget v2, v0, Lcom/android/internal/telephony/gsm/CallProgressIndication;->call_progress:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_10f

    .line 290
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->startRingTone()V

    goto/16 :goto_8

    .line 292
    :cond_10f
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->stopRingTone()V

    goto/16 :goto_8

    .line 298
    .end local v0           #ind:Lcom/android/internal/telephony/gsm/CallProgressIndication;
    :sswitch_114
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->startRingTone()V

    goto/16 :goto_8

    .line 190
    nop

    :sswitch_data_11a
    .sparse-switch
        0x1 -> :sswitch_59
        0x2 -> :sswitch_9
        0x3 -> :sswitch_61
        0x4 -> :sswitch_72
        0x5 -> :sswitch_1d
        0x6 -> :sswitch_89
        0x7 -> :sswitch_94
        0x8 -> :sswitch_99
        0x9 -> :sswitch_d7
        0x64 -> :sswitch_7a
        0x65 -> :sswitch_85
        0x67 -> :sswitch_114
    .end sparse-switch
.end method

.method isRinging()Z
    .registers 2

    .prologue
    .line 1211
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v0}, Lcom/android/phone/Ringer;->isRinging()Z

    move-result v0

    return v0
.end method

.method public onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V
    .registers 13
    .parameter "token"
    .parameter "cookie"
    .parameter "ci"

    .prologue
    .line 732
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_18

    .line 735
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v0

    iget-object v1, p3, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    iget-object v2, p3, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    iget-object v3, p3, Lcom/android/internal/telephony/CallerInfo;->phoneLabel:Ljava/lang/String;

    check-cast p2, Ljava/lang/Long;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/phone/NotificationMgr;->notifyMissedCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 781
    :cond_17
    :goto_17
    return-void

    .line 737
    .restart local p2
    :cond_18
    instance-of v0, p2, Lcom/android/phone/CallNotifier;

    if-eqz v0, :cond_17

    .line 741
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    .line 743
    const/4 v6, 0x0

    .line 744
    .local v6, isQueryExecutionTimeOK:Z
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryStateGuard:Ljava/lang/Object;

    monitor-enter v0

    .line 745
    :try_start_25
    iget v1, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryState:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2e

    .line 746
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryState:I

    .line 747
    const/4 v6, 0x1

    .line 749
    :cond_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_5b

    .line 751
    if-eqz v6, :cond_17

    .line 756
    iget-boolean v0, p3, Lcom/android/internal/telephony/CallerInfo;->shouldSendToVoicemail:Z

    if-nez v0, :cond_3d

    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isOtaModeEnable()Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 760
    :cond_3d
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v8

    .line 761
    .local v8, rc:Lcom/android/internal/telephony/Connection;
    if-eqz v8, :cond_4c

    .line 762
    invoke-virtual {v8}, Lcom/android/internal/telephony/Connection;->setCallRejected()V

    .line 766
    :cond_4c
    sget-boolean v0, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v0, :cond_55

    const-string v0, "send to voicemail flag detected. hanging up."

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 767
    :cond_55
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Phone;)Z

    goto :goto_17

    .line 749
    .end local v8           #rc:Lcom/android/internal/telephony/Connection;
    :catchall_5b
    move-exception v1

    :try_start_5c
    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5b

    throw v1

    .line 772
    :cond_5e
    iget-object v0, p3, Lcom/android/internal/telephony/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    if-eqz v0, :cond_74

    .line 773
    sget-boolean v0, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v0, :cond_6b

    const-string v0, "custom ringtone found, setting up ringer."

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 774
    :cond_6b
    check-cast p2, Lcom/android/phone/CallNotifier;

    .end local p2
    iget-object v7, p2, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    .line 775
    .local v7, r:Lcom/android/phone/Ringer;
    iget-object v0, p3, Lcom/android/internal/telephony/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    invoke-virtual {v7, v0}, Lcom/android/phone/Ringer;->setCustomRingtoneUri(Landroid/net/Uri;)V

    .line 778
    .end local v7           #r:Lcom/android/phone/Ringer;
    :cond_74
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->onCustomRingQueryComplete()V

    goto :goto_17
.end method

.method public readCallDurationFile()J
    .registers 12

    .prologue
    const-string v10, "CallNotifier"

    .line 814
    const-wide/16 v5, 0x0

    .line 817
    .local v5, result:J
    :try_start_4
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    const-string v9, "/lgdrm/CallDuration"

    invoke-direct {v8, v9}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 818
    .local v3, in:Ljava/io/BufferedReader;
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_13
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_13} :catch_25
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_13} :catch_47

    move-result-object v7

    .line 820
    .local v7, value:Ljava/lang/String;
    :try_start_14
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_17
    .catch Ljava/lang/NumberFormatException; {:try_start_14 .. :try_end_17} :catch_1c
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_17} :catch_25
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_17} :catch_47

    move-result-wide v5

    .line 824
    :goto_18
    :try_start_18
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 839
    .end local v3           #in:Ljava/io/BufferedReader;
    .end local v7           #value:Ljava/lang/String;
    :goto_1b
    return-wide v5

    .line 821
    .restart local v3       #in:Ljava/io/BufferedReader;
    .restart local v7       #value:Ljava/lang/String;
    :catch_1c
    move-exception v2

    .line 822
    .local v2, e4:Ljava/lang/NumberFormatException;
    const-string v8, "CallNotifier"

    const-string v9, "read failed: NumberFormatException"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catch Ljava/io/FileNotFoundException; {:try_start_18 .. :try_end_24} :catch_25
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_24} :catch_47

    goto :goto_18

    .line 825
    .end local v2           #e4:Ljava/lang/NumberFormatException;
    .end local v3           #in:Ljava/io/BufferedReader;
    .end local v7           #value:Ljava/lang/String;
    :catch_25
    move-exception v8

    move-object v0, v8

    .line 826
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v8, "CallNotifier"

    const-string v8, "read failed: FileNotFoundException"

    invoke-static {v10, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    const-string v4, "0"

    .line 829
    .local v4, initValue:Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/android/phone/CallNotifier;->writeCallDurationFile(Ljava/lang/String;)V

    .line 832
    :try_start_33
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    const-string v9, "chmod 666 /lgdrm/CallDuration"

    invoke-virtual {v8, v9}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_3c} :catch_3d

    goto :goto_1b

    .line 833
    :catch_3d
    move-exception v8

    move-object v1, v8

    .line 834
    .local v1, e3:Ljava/io/IOException;
    const-string v8, "CallNotifier"

    const-string v8, "chmod failed: IOException"

    invoke-static {v10, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    .line 836
    .end local v0           #e:Ljava/io/FileNotFoundException;
    .end local v1           #e3:Ljava/io/IOException;
    .end local v4           #initValue:Ljava/lang/String;
    :catch_47
    move-exception v8

    move-object v0, v8

    .line 837
    .local v0, e:Ljava/io/IOException;
    const-string v8, "CallNotifier"

    const-string v8, "read failed: IOException"

    invoke-static {v10, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b
.end method

.method sendBatteryLow()V
    .registers 3

    .prologue
    .line 1229
    const/4 v1, 0x7

    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 1230
    .local v0, message:Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/android/phone/CallNotifier;->sendMessage(Landroid/os/Message;)Z

    .line 1231
    return-void
.end method

.method sendMwiChangedDelayed(J)V
    .registers 5
    .parameter "delayMillis"

    .prologue
    .line 1198
    const/4 v1, 0x6

    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 1199
    .local v0, message:Landroid/os/Message;
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/phone/CallNotifier;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1200
    return-void
.end method

.method silenceRinger()V
    .registers 2

    .prologue
    .line 1219
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/CallNotifier;->mSilentRingerRequested:Z

    .line 1220
    sget-boolean v0, Lcom/android/phone/CallNotifier;->DBG:Z

    if-eqz v0, :cond_c

    const-string v0, "stopRing()... (silenceRinger)"

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1221
    :cond_c
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v0}, Lcom/android/phone/Ringer;->stopRing()V

    .line 1222
    return-void
.end method

.method startRingtoneEscalation()V
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 635
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/CallNotifier;->mEscalateVolume:I

    .line 636
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->getRingtoneVolume(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/phone/CallNotifier;->mTargetVolume:I

    .line 637
    iget v0, p0, Lcom/android/phone/CallNotifier;->mTargetVolume:I

    if-le v0, v1, :cond_1e

    .line 638
    iput v1, p0, Lcom/android/phone/CallNotifier;->mEscalateVolume:I

    .line 639
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->setRingtoneVolume(Landroid/content/Context;I)V

    .line 640
    const/16 v0, 0x65

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/phone/CallNotifier;->sendEmptyMessageDelayed(IJ)Z

    .line 644
    :cond_1e
    const-string v0, "nodebug"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CallNotifier>startRingtoneEscalation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/CallNotifier;->mEscalateVolume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/CallNotifier;->mTargetVolume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    return-void
.end method

.method stopRingtoneEscalation()V
    .registers 4

    .prologue
    .line 663
    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Lcom/android/phone/CallNotifier;->removeMessages(I)V

    .line 664
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;

    iget v1, p0, Lcom/android/phone/CallNotifier;->mTargetVolume:I

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->setRingtoneVolume(Landroid/content/Context;I)V

    .line 666
    const-string v0, "nodebug"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CallNotifier>stopRingtoneEscalation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/CallNotifier;->mTargetVolume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    return-void
.end method

.method public writeCallDurationFile(Ljava/lang/String;)V
    .registers 6
    .parameter "data"

    .prologue
    .line 803
    :try_start_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    const-string v3, "/lgdrm/CallDuration"

    invoke-direct {v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 804
    .local v1, out:Ljava/io/BufferedWriter;
    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, p1, v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;II)V

    .line 805
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    .line 806
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V

    .line 807
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1d} :catch_1e

    .line 811
    .end local v1           #out:Ljava/io/BufferedWriter;
    :goto_1d
    return-void

    .line 808
    :catch_1e
    move-exception v2

    move-object v0, v2

    .line 809
    .local v0, e:Ljava/io/IOException;
    const-string v2, "CallNotifier"

    const-string v3, "write failed: IOException"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d
.end method
