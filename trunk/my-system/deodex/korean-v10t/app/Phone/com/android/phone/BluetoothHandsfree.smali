.class public Lcom/android/phone/BluetoothHandsfree;
.super Ljava/lang/Object;
.source "BluetoothHandsfree.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/BluetoothHandsfree$33;,
        Lcom/android/phone/BluetoothHandsfree$DebugThread;,
        Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;
    }
.end annotation


# static fields
.field private static final BRSF_AG_EC_NR:I = 0x2

.field private static final BRSF_AG_ENHANCED_CALL_CONTROL:I = 0x80

.field private static final BRSF_AG_ENHANCED_CALL_STATUS:I = 0x40

.field private static final BRSF_AG_ENHANCED_ERR_RESULT_CODES:I = 0x100

.field private static final BRSF_AG_IN_BAND_RING:I = 0x8

.field private static final BRSF_AG_REJECT_CALL:I = 0x20

.field private static final BRSF_AG_THREE_WAY_CALLING:I = 0x1

.field private static final BRSF_AG_VOICE_RECOG:I = 0x4

.field private static final BRSF_AG_VOICE_TAG_NUMBE:I = 0x10

.field private static final BRSF_HF_CLIP:I = 0x4

.field private static final BRSF_HF_CW_THREE_WAY_CALLING:I = 0x2

.field private static final BRSF_HF_EC_NR:I = 0x1

.field private static final BRSF_HF_ENHANCED_CALL_CONTROL:I = 0x40

.field private static final BRSF_HF_ENHANCED_CALL_STATUS:I = 0x20

.field private static final BRSF_HF_REMOTE_VOL_CONTROL:I = 0x10

.field private static final BRSF_HF_VOICE_REG_ACT:I = 0x8

.field private static final CHECK_CALL_STARTED:I = 0x4

.field private static final CHECK_VOICE_RECOGNITION_STARTED:I = 0x5

.field private static final DBG:Z = false

.field private static final HEADSET_NAME:Ljava/lang/String; = "bt_headset_name"

.field private static final HEADSET_NREC:Ljava/lang/String; = "bt_headset_nrec"

.field private static final MAX_CONNECTIONS:I = 0x6

.field private static final SCO_ACCEPTED:I = 0x1

.field private static final SCO_CLOSED:I = 0x3

.field private static final SCO_CONNECTED:I = 0x2

.field private static final START_CALL_TIMEOUT:I = 0x2710

.field private static final START_VOICE_RECOGNITION_TIMEOUT:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "BT HS/HF"

.field public static final TYPE_HANDSFREE:I = 0x2

.field public static final TYPE_HEADSET:I = 0x1

.field public static final TYPE_UNKNOWN:I

.field private static final VDBG:Z

.field private static sVoiceCommandIntent:Landroid/content/Intent;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mAudioPossible:Z

.field private mBackgroundCall:Lcom/android/internal/telephony/Call;

.field private mBgndEarliestConnectionTime:J

.field private final mBluetoothPhoneState:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

.field private mClccTimestamps:[J

.field private mClccUsed:[Z

.field private mClip:Z

.field private mCmee:Z

.field private mConnectedSco:Landroid/bluetooth/ScoSocket;

.field private final mContext:Landroid/content/Context;

.field private mDebugThread:Lcom/android/phone/BluetoothHandsfree$DebugThread;

.field private mForegroundCall:Lcom/android/internal/telephony/Call;

.field private final mHandler:Landroid/os/Handler;

.field private mHeadset:Landroid/bluetooth/HeadsetBase;

.field private mHeadsetType:I

.field private mIncomingSco:Landroid/bluetooth/ScoSocket;

.field private mIndicatorsEnabled:Z

.field private mLocalBrsf:I

.field private mOutgoingSco:Landroid/bluetooth/ScoSocket;

.field private final mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneState:Lcom/android/internal/telephony/Phone$State;

.field private final mPhonebook:Lcom/android/phone/BluetoothAtPhonebook;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mRemoteBrsf:I

.field private mRingingCall:Lcom/android/internal/telephony/Call;

.field private mScoGain:I

.field private mServiceConnectionEstablished:Z

.field private mServiceState:Landroid/telephony/ServiceState;

.field private mStartCallWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mStartVoiceRecognitionWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mUserWantsAudio:Z

.field private mWaitingForCallStart:Z

.field private mWaitingForVoiceRecognition:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/Phone;)V
    .registers 10
    .parameter "context"
    .parameter "phone"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/phone/BluetoothHandsfree;->mBgndEarliestConnectionTime:J

    .line 92
    iput-boolean v4, p0, Lcom/android/phone/BluetoothHandsfree;->mClip:Z

    .line 93
    iput-boolean v4, p0, Lcom/android/phone/BluetoothHandsfree;->mIndicatorsEnabled:Z

    .line 94
    iput-boolean v4, p0, Lcom/android/phone/BluetoothHandsfree;->mCmee:Z

    .line 105
    sget-object v2, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    iput-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mPhoneState:Lcom/android/internal/telephony/Phone$State;

    .line 108
    const/high16 v2, -0x8000

    iput v2, p0, Lcom/android/phone/BluetoothHandsfree;->mScoGain:I

    .line 116
    iput v4, p0, Lcom/android/phone/BluetoothHandsfree;->mRemoteBrsf:I

    .line 117
    iput v4, p0, Lcom/android/phone/BluetoothHandsfree;->mLocalBrsf:I

    .line 795
    new-instance v2, Lcom/android/phone/BluetoothHandsfree$1;

    invoke-direct {v2, p0}, Lcom/android/phone/BluetoothHandsfree$1;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    iput-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mHandler:Landroid/os/Handler;

    .line 151
    iput-object p2, p0, Lcom/android/phone/BluetoothHandsfree;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 152
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree;->mContext:Landroid/content/Context;

    .line 153
    const-string v2, "bluetooth"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 155
    .local v0, bluetooth:Landroid/bluetooth/BluetoothDevice;
    if-eqz v0, :cond_c2

    move v1, v5

    .line 156
    .local v1, bluetoothCapable:Z
    :goto_32
    iput-object v6, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    .line 158
    const-string v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mPowerManager:Landroid/os/PowerManager;

    .line 159
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mPowerManager:Landroid/os/PowerManager;

    const-string v3, "BT HS/HF:StartCall"

    invoke-virtual {v2, v5, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mStartCallWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 161
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mStartCallWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 162
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mPowerManager:Landroid/os/PowerManager;

    const-string v3, "BT HS/HF:VoiceRecognition"

    invoke-virtual {v2, v5, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mStartVoiceRecognitionWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 164
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mStartVoiceRecognitionWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 166
    const/16 v2, 0x63

    iput v2, p0, Lcom/android/phone/BluetoothHandsfree;->mLocalBrsf:I

    .line 171
    sget-object v2, Lcom/android/phone/BluetoothHandsfree;->sVoiceCommandIntent:Landroid/content/Intent;

    if-nez v2, :cond_74

    .line 172
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VOICE_COMMAND"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/android/phone/BluetoothHandsfree;->sVoiceCommandIntent:Landroid/content/Intent;

    .line 173
    sget-object v2, Lcom/android/phone/BluetoothHandsfree;->sVoiceCommandIntent:Landroid/content/Intent;

    const/high16 v3, 0x1000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 175
    :cond_74
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    sget-object v3, Lcom/android/phone/BluetoothHandsfree;->sVoiceCommandIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_88

    .line 177
    iget v2, p0, Lcom/android/phone/BluetoothHandsfree;->mLocalBrsf:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/android/phone/BluetoothHandsfree;->mLocalBrsf:I

    .line 180
    :cond_88
    if-eqz v1, :cond_8d

    .line 181
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->resetAtState()V

    .line 184
    :cond_8d
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mRingingCall:Lcom/android/internal/telephony/Call;

    .line 185
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mForegroundCall:Lcom/android/internal/telephony/Call;

    .line 186
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mBackgroundCall:Lcom/android/internal/telephony/Call;

    .line 187
    new-instance v2, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    invoke-direct {v2, p0, v6}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;-><init>(Lcom/android/phone/BluetoothHandsfree;Lcom/android/phone/BluetoothHandsfree$1;)V

    iput-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mBluetoothPhoneState:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    .line 188
    iput-boolean v5, p0, Lcom/android/phone/BluetoothHandsfree;->mUserWantsAudio:Z

    .line 189
    new-instance v2, Lcom/android/phone/BluetoothAtPhonebook;

    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p0}, Lcom/android/phone/BluetoothAtPhonebook;-><init>(Landroid/content/Context;Lcom/android/phone/BluetoothHandsfree;)V

    iput-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mPhonebook:Lcom/android/phone/BluetoothAtPhonebook;

    .line 190
    const-string v2, "audio"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mAudioManager:Landroid/media/AudioManager;

    .line 191
    return-void

    .end local v1           #bluetoothCapable:Z
    :cond_c2
    move v1, v4

    .line 155
    goto/16 :goto_32
.end method

.method static synthetic access$1000(Lcom/android/phone/BluetoothHandsfree;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mIndicatorsEnabled:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/phone/BluetoothHandsfree;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/android/phone/BluetoothHandsfree;->mIndicatorsEnabled:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/phone/BluetoothHandsfree;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mClip:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/phone/BluetoothHandsfree;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/android/phone/BluetoothHandsfree;->mClip:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/phone/BluetoothHandsfree;)Landroid/telephony/ServiceState;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mServiceState:Landroid/telephony/ServiceState;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/phone/BluetoothHandsfree;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree;->mServiceState:Landroid/telephony/ServiceState;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/Phone$State;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mPhoneState:Lcom/android/internal/telephony/Phone$State;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/phone/BluetoothHandsfree;Lcom/android/internal/telephony/Phone$State;)Lcom/android/internal/telephony/Phone$State;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree;->mPhoneState:Lcom/android/internal/telephony/Phone$State;

    return-object p1
.end method

.method static synthetic access$1602(Lcom/android/phone/BluetoothHandsfree;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/android/phone/BluetoothHandsfree;->mUserWantsAudio:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/phone/BluetoothHandsfree;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->callStarted()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/Call;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mForegroundCall:Lcom/android/internal/telephony/Call;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/phone/BluetoothHandsfree;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mAudioPossible:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/android/phone/BluetoothHandsfree;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/android/phone/BluetoothHandsfree;->mAudioPossible:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/Call;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mRingingCall:Lcom/android/internal/telephony/Call;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/Call;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mBackgroundCall:Lcom/android/internal/telephony/Call;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/phone/BluetoothHandsfree;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Lcom/android/phone/BluetoothHandsfree;->mRemoteBrsf:I

    return v0
.end method

.method static synthetic access$2202(Lcom/android/phone/BluetoothHandsfree;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput p1, p0, Lcom/android/phone/BluetoothHandsfree;->mRemoteBrsf:I

    return p1
.end method

.method static synthetic access$2300(Lcom/android/phone/BluetoothHandsfree;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 58
    iget-wide v0, p0, Lcom/android/phone/BluetoothHandsfree;->mBgndEarliestConnectionTime:J

    return-wide v0
.end method

.method static synthetic access$2302(Lcom/android/phone/BluetoothHandsfree;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-wide p1, p0, Lcom/android/phone/BluetoothHandsfree;->mBgndEarliestConnectionTime:J

    return-wide p1
.end method

.method static synthetic access$2400(Lcom/android/phone/BluetoothHandsfree;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Lcom/android/phone/BluetoothHandsfree;->mLocalBrsf:I

    return v0
.end method

.method static synthetic access$2500(Lcom/android/phone/BluetoothHandsfree;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->allowAudioAnytime()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/ScoSocket;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mConnectedSco:Landroid/bluetooth/ScoSocket;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/android/phone/BluetoothHandsfree;Landroid/bluetooth/ScoSocket;)Landroid/bluetooth/ScoSocket;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree;->mConnectedSco:Landroid/bluetooth/ScoSocket;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/android/phone/BluetoothHandsfree;)Landroid/media/AudioManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/phone/BluetoothHandsfree;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothHandsfree;->broadcastAudioStateIntent(I)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/ScoSocket;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mIncomingSco:Landroid/bluetooth/ScoSocket;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/android/phone/BluetoothHandsfree;Landroid/bluetooth/ScoSocket;)Landroid/bluetooth/ScoSocket;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree;->mIncomingSco:Landroid/bluetooth/ScoSocket;

    return-object p1
.end method

.method static synthetic access$3000(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/ScoSocket;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->createScoSocket()Landroid/bluetooth/ScoSocket;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/ScoSocket;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mOutgoingSco:Landroid/bluetooth/ScoSocket;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/android/phone/BluetoothHandsfree;Landroid/bluetooth/ScoSocket;)Landroid/bluetooth/ScoSocket;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree;->mOutgoingSco:Landroid/bluetooth/ScoSocket;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/android/phone/BluetoothHandsfree;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mWaitingForCallStart:Z

    return v0
.end method

.method static synthetic access$3202(Lcom/android/phone/BluetoothHandsfree;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/android/phone/BluetoothHandsfree;->mWaitingForCallStart:Z

    return p1
.end method

.method static synthetic access$3300(Lcom/android/phone/BluetoothHandsfree;)Landroid/os/PowerManager$WakeLock;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mStartCallWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/phone/BluetoothHandsfree;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mWaitingForVoiceRecognition:Z

    return v0
.end method

.method static synthetic access$3402(Lcom/android/phone/BluetoothHandsfree;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/android/phone/BluetoothHandsfree;->mWaitingForVoiceRecognition:Z

    return p1
.end method

.method static synthetic access$3700(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/HeadsetBase;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/AtCommandResult;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->redial()Landroid/bluetooth/AtCommandResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/phone/BluetoothHandsfree;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Lcom/android/phone/BluetoothHandsfree;->mScoGain:I

    return v0
.end method

.method static synthetic access$3902(Lcom/android/phone/BluetoothHandsfree;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput p1, p0, Lcom/android/phone/BluetoothHandsfree;->mScoGain:I

    return p1
.end method

.method static synthetic access$4000(Lcom/android/phone/BluetoothHandsfree;I)Landroid/bluetooth/AtCommandResult;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothHandsfree;->memoryDial(I)Landroid/bluetooth/AtCommandResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/phone/BluetoothHandsfree;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->expectCallStart()V

    return-void
.end method

.method static synthetic access$4202(Lcom/android/phone/BluetoothHandsfree;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/android/phone/BluetoothHandsfree;->mServiceConnectionEstablished:Z

    return p1
.end method

.method static synthetic access$4300(Lcom/android/phone/BluetoothHandsfree;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->broadcastSlcEstablished()V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/phone/BluetoothHandsfree;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->isIncallAudio()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4500(Lcom/android/phone/BluetoothHandsfree;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mCmee:Z

    return v0
.end method

.method static synthetic access$4502(Lcom/android/phone/BluetoothHandsfree;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/android/phone/BluetoothHandsfree;->mCmee:Z

    return p1
.end method

.method static synthetic access$4600(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mBluetoothPhoneState:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/AtCommandResult;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->getClccResult()Landroid/bluetooth/AtCommandResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5200(Ljava/lang/String;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 58
    invoke-static {p0}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5300()Landroid/content/Intent;
    .registers 1

    .prologue
    .line 58
    sget-object v0, Lcom/android/phone/BluetoothHandsfree;->sVoiceCommandIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/android/phone/BluetoothHandsfree;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->expectVoiceRecognition()V

    return-void
.end method

.method static synthetic access$5500(Lcom/android/phone/BluetoothHandsfree;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->inDebug()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/Phone;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/phone/BluetoothHandsfree;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/phone/BluetoothHandsfree;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->isHeadsetConnected()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/phone/BluetoothHandsfree;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadsetType:I

    return v0
.end method

.method private allowAudioAnytime()Z
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1937
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->inDebug()Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "debug.bt.hfp.audio_anytime"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    move v0, v1

    goto :goto_10
.end method

.method private broadcastAudioStateIntent(I)V
    .registers 5
    .parameter "state"

    .prologue
    .line 867
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.intent.action.HEADSET_ADUIO_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 868
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.bluetooth.intent.HEADSET_AUDIO_STATE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 869
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 870
    return-void
.end method

.method private broadcastSlcEstablished()V
    .registers 4

    .prologue
    .line 1231
    const-string v1, "BT HS/HF"

    const-string v2, "broadcastSlcEstablished"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1232
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.intent.action.HEADSET_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1233
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.bluetooth.intent.HEADSET_PREVIOUS_STATE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1235
    const-string v1, "android.bluetooth.intent.HEADSET_STATE"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1237
    const-string v1, "android.bluetooth.intent.ADDRESS"

    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    invoke-virtual {v2}, Landroid/bluetooth/HeadsetBase;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1238
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1239
    return-void
.end method

.method private declared-synchronized callStarted()V
    .registers 2

    .prologue
    .line 1890
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mWaitingForCallStart:Z

    if-eqz v0, :cond_1a

    .line 1891
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mWaitingForCallStart:Z

    .line 1892
    const-string v0, "OK"

    invoke-direct {p0, v0}, Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V

    .line 1893
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mStartCallWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1894
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mStartCallWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1c

    .line 1897
    :cond_1a
    monitor-exit p0

    return-void

    .line 1890
    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private configAudioParameters()V
    .registers 5

    .prologue
    .line 282
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    invoke-virtual {v1}, Landroid/bluetooth/HeadsetBase;->getName()Ljava/lang/String;

    move-result-object v0

    .line 283
    .local v0, name:Ljava/lang/String;
    if-nez v0, :cond_a

    .line 284
    const-string v0, "<unknown>"

    .line 286
    :cond_a
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mAudioManager:Landroid/media/AudioManager;

    const-string v2, "bt_headset_name"

    invoke-virtual {v1, v2, v0}, Landroid/media/AudioManager;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mAudioManager:Landroid/media/AudioManager;

    const-string v2, "bt_headset_nrec"

    const-string v3, "on"

    invoke-virtual {v1, v2, v3}, Landroid/media/AudioManager;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    return-void
.end method

.method private connectionToClccEntry(ILcom/android/internal/telephony/Connection;)Ljava/lang/String;
    .registers 15
    .parameter "index"
    .parameter "c"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v11, ","

    .line 1108
    sget-object v7, Lcom/android/phone/BluetoothHandsfree$33;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_9e

    .line 1128
    const/4 v7, 0x0

    .line 1149
    :goto_14
    return-object v7

    .line 1110
    :pswitch_15
    const/4 v5, 0x0

    .line 1131
    .local v5, state:I
    :goto_16
    const/4 v2, 0x0

    .line 1132
    .local v2, mpty:I
    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 1133
    .local v0, call:Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_24

    .line 1134
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isMultiparty()Z

    move-result v7

    if-eqz v7, :cond_99

    move v2, v10

    .line 1137
    :cond_24
    :goto_24
    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v7

    if-eqz v7, :cond_9b

    move v1, v10

    .line 1139
    .local v1, direction:I
    :goto_2b
    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v3

    .line 1140
    .local v3, number:Ljava/lang/String;
    const/4 v6, -0x1

    .line 1141
    .local v6, type:I
    if-eqz v3, :cond_36

    .line 1142
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v6

    .line 1145
    :cond_36
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "+CLCC: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v8, p1, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",0,"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1146
    .local v4, result:Ljava/lang/String;
    if-eqz v3, :cond_8c

    .line 1147
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_8c
    move-object v7, v4

    .line 1149
    goto :goto_14

    .line 1113
    .end local v0           #call:Lcom/android/internal/telephony/Call;
    .end local v1           #direction:I
    .end local v2           #mpty:I
    .end local v3           #number:Ljava/lang/String;
    .end local v4           #result:Ljava/lang/String;
    .end local v5           #state:I
    .end local v6           #type:I
    :pswitch_8e
    const/4 v5, 0x1

    .line 1114
    .restart local v5       #state:I
    goto :goto_16

    .line 1116
    .end local v5           #state:I
    :pswitch_90
    const/4 v5, 0x2

    .line 1117
    .restart local v5       #state:I
    goto :goto_16

    .line 1119
    .end local v5           #state:I
    :pswitch_92
    const/4 v5, 0x3

    .line 1120
    .restart local v5       #state:I
    goto :goto_16

    .line 1122
    .end local v5           #state:I
    :pswitch_94
    const/4 v5, 0x4

    .line 1123
    .restart local v5       #state:I
    goto :goto_16

    .line 1125
    .end local v5           #state:I
    :pswitch_96
    const/4 v5, 0x5

    .line 1126
    .restart local v5       #state:I
    goto/16 :goto_16

    .restart local v0       #call:Lcom/android/internal/telephony/Call;
    .restart local v2       #mpty:I
    :cond_99
    move v2, v9

    .line 1134
    goto :goto_24

    :cond_9b
    move v1, v9

    .line 1137
    goto :goto_2b

    .line 1108
    nop

    :pswitch_data_9e
    .packed-switch 0x1
        :pswitch_15
        :pswitch_90
        :pswitch_92
        :pswitch_94
        :pswitch_96
        :pswitch_8e
    .end packed-switch
.end method

.method private createScoSocket()Landroid/bluetooth/ScoSocket;
    .registers 7

    .prologue
    .line 862
    new-instance v0, Landroid/bluetooth/ScoSocket;

    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mPowerManager:Landroid/os/PowerManager;

    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x3

    invoke-direct/range {v0 .. v5}, Landroid/bluetooth/ScoSocket;-><init>(Landroid/os/PowerManager;Landroid/os/Handler;III)V

    return-object v0
.end method

.method private dial(Ljava/lang/String;)Landroid/bluetooth/AtCommandResult;
    .registers 6
    .parameter "number"

    .prologue
    .line 977
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    const-string v2, "tel"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 979
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 980
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 986
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->expectCallStart()V

    .line 987
    new-instance v1, Landroid/bluetooth/AtCommandResult;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    return-object v1
.end method

.method private declared-synchronized expectCallStart()V
    .registers 5

    .prologue
    .line 1881
    monitor-enter p0

    const/4 v1, 0x1

    :try_start_2
    iput-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mWaitingForCallStart:Z

    .line 1882
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 1883
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1884
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mStartCallWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_21

    .line 1885
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mStartCallWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V
    :try_end_21
    .catchall {:try_start_2 .. :try_end_21} :catchall_23

    .line 1887
    :cond_21
    monitor-exit p0

    return-void

    .line 1881
    .end local v0           #msg:Landroid/os/Message;
    :catchall_23
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized expectVoiceRecognition()V
    .registers 5

    .prologue
    .line 1902
    monitor-enter p0

    const/4 v1, 0x1

    :try_start_2
    iput-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mWaitingForVoiceRecognition:Z

    .line 1903
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 1904
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1905
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mStartVoiceRecognitionWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_21

    .line 1906
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mStartVoiceRecognitionWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V
    :try_end_21
    .catchall {:try_start_2 .. :try_end_21} :catchall_23

    .line 1908
    :cond_21
    monitor-exit p0

    return-void

    .line 1902
    .end local v0           #msg:Landroid/os/Message;
    :catchall_23
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized getClccResult()Landroid/bluetooth/AtCommandResult;
    .registers 22

    .prologue
    .line 1033
    monitor-enter p0

    const/16 v19, 0x6

    :try_start_3
    move/from16 v0, v19

    new-array v0, v0, [Lcom/android/internal/telephony/Connection;

    move-object v4, v0

    .line 1034
    .local v4, clccConnections:[Lcom/android/internal/telephony/Connection;
    new-instance v15, Ljava/util/LinkedList;

    invoke-direct {v15}, Ljava/util/LinkedList;-><init>()V

    .line 1035
    .local v15, newConnections:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/internal/telephony/Connection;>;"
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    .line 1036
    .local v7, connections:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/internal/telephony/Connection;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree;->mRingingCall:Lcom/android/internal/telephony/Call;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v19

    if-eqz v19, :cond_32

    .line 1037
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree;->mRingingCall:Lcom/android/internal/telephony/Call;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v19

    move-object v0, v7

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 1039
    :cond_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree;->mForegroundCall:Lcom/android/internal/telephony/Call;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v19

    if-eqz v19, :cond_52

    .line 1040
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree;->mForegroundCall:Lcom/android/internal/telephony/Call;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v19

    move-object v0, v7

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 1042
    :cond_52
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree;->mBackgroundCall:Lcom/android/internal/telephony/Call;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v19

    if-eqz v19, :cond_72

    .line 1043
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree;->mBackgroundCall:Lcom/android/internal/telephony/Call;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v19

    move-object v0, v7

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 1047
    :cond_72
    const/16 v19, 0x6

    move/from16 v0, v19

    new-array v0, v0, [Z

    move-object v6, v0

    .line 1048
    .local v6, clccUsed:[Z
    const/4 v12, 0x0

    .local v12, i:I
    :goto_7a
    const/16 v19, 0x6

    move v0, v12

    move/from16 v1, v19

    if-ge v0, v1, :cond_98

    .line 1049
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree;->mClccUsed:[Z

    move-object/from16 v19, v0

    aget-boolean v19, v19, v12

    aput-boolean v19, v6, v12

    .line 1050
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree;->mClccUsed:[Z

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-boolean v20, v19, v12

    .line 1048
    add-int/lit8 v12, v12, 0x1

    goto :goto_7a

    .line 1052
    :cond_98
    invoke-virtual {v7}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :cond_9c
    :goto_9c
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_f5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/Connection;

    .line 1053
    .local v3, c:Lcom/android/internal/telephony/Connection;
    const/4 v11, 0x0

    .line 1054
    .local v11, found:Z
    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v17

    .line 1055
    .local v17, timestamp:J
    const/4 v12, 0x0

    :goto_ae
    const/16 v19, 0x6

    move v0, v12

    move/from16 v1, v19

    if-ge v0, v1, :cond_d2

    .line 1056
    aget-boolean v19, v6, v12

    if-eqz v19, :cond_db

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree;->mClccTimestamps:[J

    move-object/from16 v19, v0

    aget-wide v19, v19, v12

    cmp-long v19, v17, v19

    if-nez v19, :cond_db

    .line 1057
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree;->mClccUsed:[Z

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aput-boolean v20, v19, v12

    .line 1058
    const/4 v11, 0x1

    .line 1059
    aput-object v3, v4, v12

    .line 1063
    :cond_d2
    if-nez v11, :cond_9c

    .line 1064
    invoke-virtual {v15, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_d7
    .catchall {:try_start_3 .. :try_end_d7} :catchall_d8

    goto :goto_9c

    .line 1033
    .end local v3           #c:Lcom/android/internal/telephony/Connection;
    .end local v4           #clccConnections:[Lcom/android/internal/telephony/Connection;
    .end local v6           #clccUsed:[Z
    .end local v7           #connections:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/internal/telephony/Connection;>;"
    .end local v11           #found:Z
    .end local v12           #i:I
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v15           #newConnections:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/internal/telephony/Connection;>;"
    .end local v17           #timestamp:J
    :catchall_d8
    move-exception v19

    monitor-exit p0

    throw v19

    .line 1055
    .restart local v3       #c:Lcom/android/internal/telephony/Connection;
    .restart local v4       #clccConnections:[Lcom/android/internal/telephony/Connection;
    .restart local v6       #clccUsed:[Z
    .restart local v7       #connections:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/internal/telephony/Connection;>;"
    .restart local v11       #found:Z
    .restart local v12       #i:I
    .restart local v13       #i$:Ljava/util/Iterator;
    .restart local v15       #newConnections:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/internal/telephony/Connection;>;"
    .restart local v17       #timestamp:J
    :cond_db
    add-int/lit8 v12, v12, 0x1

    goto :goto_ae

    .line 1085
    .end local v3           #c:Lcom/android/internal/telephony/Connection;
    .end local v11           #found:Z
    .end local v17           #timestamp:J
    .local v8, earliestConnection:Lcom/android/internal/telephony/Connection;
    .local v9, earliestTimestamp:J
    .local v14, j:I
    :cond_de
    :try_start_de
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree;->mClccUsed:[Z

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aput-boolean v20, v19, v12

    .line 1086
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree;->mClccTimestamps:[J

    move-object/from16 v19, v0

    aput-wide v9, v19, v12

    .line 1087
    aput-object v8, v4, v12

    .line 1088
    invoke-virtual {v15, v8}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 1069
    .end local v8           #earliestConnection:Lcom/android/internal/telephony/Connection;
    .end local v9           #earliestTimestamp:J
    .end local v14           #j:I
    :cond_f5
    invoke-virtual {v15}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_146

    .line 1071
    const/4 v12, 0x0

    .line 1072
    :goto_fc
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree;->mClccUsed:[Z

    move-object/from16 v19, v0

    aget-boolean v19, v19, v12

    if-eqz v19, :cond_109

    add-int/lit8 v12, v12, 0x1

    goto :goto_fc

    .line 1074
    :cond_109
    const/16 v19, 0x0

    move-object v0, v15

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/Connection;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v9

    .line 1075
    .restart local v9       #earliestTimestamp:J
    const/16 v19, 0x0

    move-object v0, v15

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/Connection;

    .line 1076
    .restart local v8       #earliestConnection:Lcom/android/internal/telephony/Connection;
    const/4 v14, 0x0

    .restart local v14       #j:I
    :goto_124
    invoke-virtual {v15}, Ljava/util/LinkedList;->size()I

    move-result v19

    move v0, v14

    move/from16 v1, v19

    if-ge v0, v1, :cond_de

    .line 1077
    invoke-virtual {v15, v14}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/Connection;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v17

    .line 1078
    .restart local v17       #timestamp:J
    cmp-long v19, v17, v9

    if-gez v19, :cond_143

    .line 1079
    move-wide/from16 v9, v17

    .line 1080
    invoke-virtual {v15, v14}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #earliestConnection:Lcom/android/internal/telephony/Connection;
    check-cast v8, Lcom/android/internal/telephony/Connection;

    .line 1076
    .restart local v8       #earliestConnection:Lcom/android/internal/telephony/Connection;
    :cond_143
    add-int/lit8 v14, v14, 0x1

    goto :goto_124

    .line 1092
    .end local v8           #earliestConnection:Lcom/android/internal/telephony/Connection;
    .end local v9           #earliestTimestamp:J
    .end local v14           #j:I
    .end local v17           #timestamp:J
    :cond_146
    new-instance v16, Landroid/bluetooth/AtCommandResult;

    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 1093
    .local v16, result:Landroid/bluetooth/AtCommandResult;
    const/4 v12, 0x0

    :goto_152
    move-object v0, v4

    array-length v0, v0

    move/from16 v19, v0

    move v0, v12

    move/from16 v1, v19

    if-ge v0, v1, :cond_17b

    .line 1094
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree;->mClccUsed:[Z

    move-object/from16 v19, v0

    aget-boolean v19, v19, v12

    if-eqz v19, :cond_178

    .line 1095
    aget-object v19, v4, v12

    move-object/from16 v0, p0

    move v1, v12

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/phone/BluetoothHandsfree;->connectionToClccEntry(ILcom/android/internal/telephony/Connection;)Ljava/lang/String;

    move-result-object v5

    .line 1096
    .local v5, clccEntry:Ljava/lang/String;
    if-eqz v5, :cond_178

    .line 1097
    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V
    :try_end_178
    .catchall {:try_start_de .. :try_end_178} :catchall_d8

    .line 1093
    .end local v5           #clccEntry:Ljava/lang/String;
    :cond_178
    add-int/lit8 v12, v12, 0x1

    goto :goto_152

    .line 1102
    :cond_17b
    monitor-exit p0

    return-object v16
.end method

.method private inDebug()Z
    .registers 2

    .prologue
    .line 1933
    const/4 v0, 0x0

    return v0
.end method

.method private initializeHandsfreeAtParser()V
    .registers 4

    .prologue
    .line 1246
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    invoke-virtual {v1}, Landroid/bluetooth/HeadsetBase;->getAtParser()Landroid/bluetooth/AtParser;

    move-result-object v0

    .line 1249
    .local v0, parser:Landroid/bluetooth/AtParser;
    const/16 v1, 0x41

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-instance v2, Lcom/android/phone/BluetoothHandsfree$5;

    invoke-direct {v2, p0}, Lcom/android/phone/BluetoothHandsfree$5;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/AtParser;->register(Ljava/lang/Character;Landroid/bluetooth/AtCommandHandler;)V

    .line 1256
    const/16 v1, 0x44

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-instance v2, Lcom/android/phone/BluetoothHandsfree$6;

    invoke-direct {v2, p0}, Lcom/android/phone/BluetoothHandsfree$6;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/AtParser;->register(Ljava/lang/Character;Landroid/bluetooth/AtCommandHandler;)V

    .line 1307
    const-string v1, "+CHUP"

    new-instance v2, Lcom/android/phone/BluetoothHandsfree$7;

    invoke-direct {v2, p0}, Lcom/android/phone/BluetoothHandsfree$7;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 1322
    const-string v1, "+BRSF"

    new-instance v2, Lcom/android/phone/BluetoothHandsfree$8;

    invoke-direct {v2, p0}, Lcom/android/phone/BluetoothHandsfree$8;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 1351
    const-string v1, "+CCWA"

    new-instance v2, Lcom/android/phone/BluetoothHandsfree$9;

    invoke-direct {v2, p0}, Lcom/android/phone/BluetoothHandsfree$9;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 1380
    const-string v1, "+CMER"

    new-instance v2, Lcom/android/phone/BluetoothHandsfree$10;

    invoke-direct {v2, p0}, Lcom/android/phone/BluetoothHandsfree$10;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 1427
    const-string v1, "+CMEE"

    new-instance v2, Lcom/android/phone/BluetoothHandsfree$11;

    invoke-direct {v2, p0}, Lcom/android/phone/BluetoothHandsfree$11;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 1461
    const-string v1, "+BLDN"

    new-instance v2, Lcom/android/phone/BluetoothHandsfree$12;

    invoke-direct {v2, p0}, Lcom/android/phone/BluetoothHandsfree$12;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 1469
    const-string v1, "+CIND"

    new-instance v2, Lcom/android/phone/BluetoothHandsfree$13;

    invoke-direct {v2, p0}, Lcom/android/phone/BluetoothHandsfree$13;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 1481
    const-string v1, "+CSQ"

    new-instance v2, Lcom/android/phone/BluetoothHandsfree$14;

    invoke-direct {v2, p0}, Lcom/android/phone/BluetoothHandsfree$14;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 1489
    const-string v1, "+CREG"

    new-instance v2, Lcom/android/phone/BluetoothHandsfree$15;

    invoke-direct {v2, p0}, Lcom/android/phone/BluetoothHandsfree$15;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 1498
    const-string v1, "+VTS"

    new-instance v2, Lcom/android/phone/BluetoothHandsfree$16;

    invoke-direct {v2, p0}, Lcom/android/phone/BluetoothHandsfree$16;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 1530
    const-string v1, "+CLCC"

    new-instance v2, Lcom/android/phone/BluetoothHandsfree$17;

    invoke-direct {v2, p0}, Lcom/android/phone/BluetoothHandsfree$17;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 1538
    const-string v1, "+CHLD"

    new-instance v2, Lcom/android/phone/BluetoothHandsfree$18;

    invoke-direct {v2, p0}, Lcom/android/phone/BluetoothHandsfree$18;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 1616
    const-string v1, "+COPS"

    new-instance v2, Lcom/android/phone/BluetoothHandsfree$19;

    invoke-direct {v2, p0}, Lcom/android/phone/BluetoothHandsfree$19;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 1653
    const-string v1, "+CPIN"

    new-instance v2, Lcom/android/phone/BluetoothHandsfree$20;

    invoke-direct {v2, p0}, Lcom/android/phone/BluetoothHandsfree$20;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 1662
    const-string v1, "+BTRH"

    new-instance v2, Lcom/android/phone/BluetoothHandsfree$21;

    invoke-direct {v2, p0}, Lcom/android/phone/BluetoothHandsfree$21;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 1678
    const-string v1, "+CIMI"

    new-instance v2, Lcom/android/phone/BluetoothHandsfree$22;

    invoke-direct {v2, p0}, Lcom/android/phone/BluetoothHandsfree$22;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 1692
    const-string v1, "+CLIP"

    new-instance v2, Lcom/android/phone/BluetoothHandsfree$23;

    invoke-direct {v2, p0}, Lcom/android/phone/BluetoothHandsfree$23;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 1715
    const-string v1, "+CGSN"

    new-instance v2, Lcom/android/phone/BluetoothHandsfree$24;

    invoke-direct {v2, p0}, Lcom/android/phone/BluetoothHandsfree$24;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 1725
    const-string v1, "+CGMM"

    new-instance v2, Lcom/android/phone/BluetoothHandsfree$25;

    invoke-direct {v2, p0}, Lcom/android/phone/BluetoothHandsfree$25;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 1739
    const-string v1, "+CGMI"

    new-instance v2, Lcom/android/phone/BluetoothHandsfree$26;

    invoke-direct {v2, p0}, Lcom/android/phone/BluetoothHandsfree$26;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 1753
    const-string v1, "+NREC"

    new-instance v2, Lcom/android/phone/BluetoothHandsfree$27;

    invoke-direct {v2, p0}, Lcom/android/phone/BluetoothHandsfree$27;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 1768
    const-string v1, "+BVRA"

    new-instance v2, Lcom/android/phone/BluetoothHandsfree$28;

    invoke-direct {v2, p0}, Lcom/android/phone/BluetoothHandsfree$28;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 1799
    const-string v1, "+CNUM"

    new-instance v2, Lcom/android/phone/BluetoothHandsfree$29;

    invoke-direct {v2, p0}, Lcom/android/phone/BluetoothHandsfree$29;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 1812
    const-string v1, "+VGM"

    new-instance v2, Lcom/android/phone/BluetoothHandsfree$30;

    invoke-direct {v2, p0}, Lcom/android/phone/BluetoothHandsfree$30;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 1822
    const-string v1, "+VGS"

    new-instance v2, Lcom/android/phone/BluetoothHandsfree$31;

    invoke-direct {v2, p0}, Lcom/android/phone/BluetoothHandsfree$31;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 1838
    const-string v1, "+CPAS"

    new-instance v2, Lcom/android/phone/BluetoothHandsfree$32;

    invoke-direct {v2, p0}, Lcom/android/phone/BluetoothHandsfree$32;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 1856
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mPhonebook:Lcom/android/phone/BluetoothAtPhonebook;

    invoke-virtual {v1, v0}, Lcom/android/phone/BluetoothAtPhonebook;->register(Landroid/bluetooth/AtParser;)V

    .line 1857
    return-void
.end method

.method private initializeHeadsetAtParser()V
    .registers 4

    .prologue
    .line 1156
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    invoke-virtual {v1}, Landroid/bluetooth/HeadsetBase;->getAtParser()Landroid/bluetooth/AtParser;

    move-result-object v0

    .line 1159
    .local v0, parser:Landroid/bluetooth/AtParser;
    const-string v1, "+CKPD"

    new-instance v2, Lcom/android/phone/BluetoothHandsfree$2;

    invoke-direct {v2, p0}, Lcom/android/phone/BluetoothHandsfree$2;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 1201
    const-string v1, "+VGM"

    new-instance v2, Lcom/android/phone/BluetoothHandsfree$3;

    invoke-direct {v2, p0}, Lcom/android/phone/BluetoothHandsfree$3;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 1211
    const-string v1, "+VGS"

    new-instance v2, Lcom/android/phone/BluetoothHandsfree$4;

    invoke-direct {v2, p0}, Lcom/android/phone/BluetoothHandsfree$4;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 1225
    return-void
.end method

.method private isHeadsetConnected()Z
    .registers 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    if-nez v0, :cond_6

    .line 229
    const/4 v0, 0x0

    .line 231
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    invoke-virtual {v0}, Landroid/bluetooth/HeadsetBase;->isConnected()Z

    move-result v0

    goto :goto_5
.end method

.method private isIncallAudio()Z
    .registers 3

    .prologue
    .line 257
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 259
    .local v0, state:Lcom/android/internal/telephony/Call$State;
    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_e

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_10

    :cond_e
    const/4 v1, 0x1

    :goto_f
    return v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 2068
    const-string v0, "BT HS/HF"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2069
    return-void
.end method

.method private memoryDial(I)Landroid/bluetooth/AtCommandResult;
    .registers 12
    .parameter "index"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1007
    new-array v2, v8, [Ljava/lang/String;

    const-string v0, "number"

    aput-object v0, v2, v9

    .line 1008
    .local v2, projection:[Ljava/lang/String;
    const-string v3, "starred = 1"

    .line 1009
    .local v3, selection:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "name"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1012
    .local v6, cursor:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_25

    .line 1014
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v0, v8}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 1025
    :goto_24
    return-object v0

    .line 1017
    :cond_25
    invoke-interface {v6, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1019
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1020
    .local v7, number:Ljava/lang/String;
    if-nez v7, :cond_34

    .line 1022
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v0, v8}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_24

    .line 1025
    :cond_34
    invoke-direct {p0, v7}, Lcom/android/phone/BluetoothHandsfree;->dial(Ljava/lang/String;)Landroid/bluetooth/AtCommandResult;

    move-result-object v0

    goto :goto_24
.end method

.method private redial()Landroid/bluetooth/AtCommandResult;
    .registers 4

    .prologue
    .line 992
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mPhonebook:Lcom/android/phone/BluetoothAtPhonebook;

    invoke-virtual {v1}, Lcom/android/phone/BluetoothAtPhonebook;->getLastDialledNumber()Ljava/lang/String;

    move-result-object v0

    .line 993
    .local v0, number:Ljava/lang/String;
    if-nez v0, :cond_f

    .line 998
    new-instance v1, Landroid/bluetooth/AtCommandResult;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 1001
    :goto_e
    return-object v1

    :cond_f
    invoke-direct {p0, v0}, Lcom/android/phone/BluetoothHandsfree;->dial(Ljava/lang/String;)Landroid/bluetooth/AtCommandResult;

    move-result-object v1

    goto :goto_e
.end method

.method private resetAtState()V
    .registers 5

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x0

    .line 269
    iput-boolean v2, p0, Lcom/android/phone/BluetoothHandsfree;->mClip:Z

    .line 270
    iput-boolean v2, p0, Lcom/android/phone/BluetoothHandsfree;->mIndicatorsEnabled:Z

    .line 271
    iput-boolean v2, p0, Lcom/android/phone/BluetoothHandsfree;->mServiceConnectionEstablished:Z

    .line 272
    iput-boolean v2, p0, Lcom/android/phone/BluetoothHandsfree;->mCmee:Z

    .line 273
    new-array v1, v3, [J

    iput-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mClccTimestamps:[J

    .line 274
    new-array v1, v3, [Z

    iput-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mClccUsed:[Z

    .line 275
    const/4 v0, 0x0

    .local v0, i:I
    :goto_13
    if-ge v0, v3, :cond_1c

    .line 276
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mClccUsed:[Z

    aput-boolean v2, v1, v0

    .line 275
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 278
    :cond_1c
    iput v2, p0, Lcom/android/phone/BluetoothHandsfree;->mRemoteBrsf:I

    .line 279
    return-void
.end method

.method private sendURC(Ljava/lang/String;)V
    .registers 3
    .parameter "urc"

    .prologue
    .line 970
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->isHeadsetConnected()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 971
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    invoke-virtual {v0, p1}, Landroid/bluetooth/HeadsetBase;->sendURC(Ljava/lang/String;)Z

    .line 973
    :cond_b
    return-void
.end method

.method private startDebug()V
    .registers 1

    .prologue
    .line 1946
    return-void
.end method

.method private stopDebug()V
    .registers 2

    .prologue
    .line 1949
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mDebugThread:Lcom/android/phone/BluetoothHandsfree$DebugThread;

    if-eqz v0, :cond_c

    .line 1950
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mDebugThread:Lcom/android/phone/BluetoothHandsfree$DebugThread;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree$DebugThread;->interrupt()V

    .line 1951
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mDebugThread:Lcom/android/phone/BluetoothHandsfree$DebugThread;

    .line 1953
    :cond_c
    return-void
.end method

.method public static typeToString(I)Ljava/lang/String;
    .registers 2
    .parameter "type"

    .prologue
    .line 139
    packed-switch p0, :pswitch_data_e

    .line 147
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 141
    :pswitch_5
    const-string v0, "unknown"

    goto :goto_4

    .line 143
    :pswitch_8
    const-string v0, "headset"

    goto :goto_4

    .line 145
    :pswitch_b
    const-string v0, "handsfree"

    goto :goto_4

    .line 139
    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_5
        :pswitch_8
        :pswitch_b
    .end packed-switch
.end method


# virtual methods
.method declared-synchronized audioOff()V
    .registers 4

    .prologue
    .line 945
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mHandler:Landroid/os/Handler;

    monitor-enter v0
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_2c

    .line 948
    :try_start_4
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mConnectedSco:Landroid/bluetooth/ScoSocket;

    if-eqz v1, :cond_1a

    .line 949
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 950
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/phone/BluetoothHandsfree;->broadcastAudioStateIntent(I)V

    .line 951
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mConnectedSco:Landroid/bluetooth/ScoSocket;

    invoke-virtual {v1}, Landroid/bluetooth/ScoSocket;->close()V

    .line 952
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mConnectedSco:Landroid/bluetooth/ScoSocket;

    .line 954
    :cond_1a
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mOutgoingSco:Landroid/bluetooth/ScoSocket;

    if-eqz v1, :cond_26

    .line 955
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mOutgoingSco:Landroid/bluetooth/ScoSocket;

    invoke-virtual {v1}, Landroid/bluetooth/ScoSocket;->close()V

    .line 956
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mOutgoingSco:Landroid/bluetooth/ScoSocket;

    .line 958
    :cond_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_4 .. :try_end_27} :catchall_29

    .line 959
    monitor-exit p0

    return-void

    .line 958
    :catchall_29
    move-exception v1

    :try_start_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    :try_start_2b
    throw v1
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2c

    .line 945
    :catchall_2c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized audioOn()Z
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 890
    monitor-enter p0

    :try_start_3
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mHandler:Landroid/os/Handler;

    monitor-enter v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_4e

    .line 892
    :try_start_6
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->isHeadsetConnected()Z

    move-result v1

    if-nez v1, :cond_10

    .line 894
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_4b

    move v0, v3

    .line 920
    :goto_e
    monitor-exit p0

    return v0

    .line 896
    :cond_10
    :try_start_10
    iget v1, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadsetType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1c

    iget-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mServiceConnectionEstablished:Z

    if-nez v1, :cond_1c

    .line 898
    monitor-exit v0

    move v0, v3

    goto :goto_e

    .line 901
    :cond_1c
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mConnectedSco:Landroid/bluetooth/ScoSocket;

    if-eqz v1, :cond_23

    .line 903
    monitor-exit v0

    move v0, v4

    goto :goto_e

    .line 906
    :cond_23
    iget-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mUserWantsAudio:Z

    if-nez v1, :cond_2a

    .line 908
    monitor-exit v0

    move v0, v3

    goto :goto_e

    .line 911
    :cond_2a
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mOutgoingSco:Landroid/bluetooth/ScoSocket;

    if-eqz v1, :cond_31

    .line 913
    monitor-exit v0

    move v0, v4

    goto :goto_e

    .line 915
    :cond_31
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->createScoSocket()Landroid/bluetooth/ScoSocket;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mOutgoingSco:Landroid/bluetooth/ScoSocket;

    .line 916
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mOutgoingSco:Landroid/bluetooth/ScoSocket;

    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    invoke-virtual {v2}, Landroid/bluetooth/HeadsetBase;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/bluetooth/ScoSocket;->connect(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_48

    .line 917
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mOutgoingSco:Landroid/bluetooth/ScoSocket;

    .line 920
    :cond_48
    monitor-exit v0

    move v0, v4

    goto :goto_e

    .line 921
    :catchall_4b
    move-exception v1

    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_10 .. :try_end_4d} :catchall_4b

    :try_start_4d
    throw v1
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4e

    .line 890
    :catchall_4e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method connectHeadset(Landroid/bluetooth/HeadsetBase;I)V
    .registers 5
    .parameter "headset"
    .parameter "headsetType"

    .prologue
    .line 235
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    .line 236
    iput p2, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadsetType:I

    .line 237
    iget v0, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadsetType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_25

    .line 238
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->initializeHeadsetAtParser()V

    .line 242
    :goto_c
    invoke-virtual {p1}, Landroid/bluetooth/HeadsetBase;->startEventThread()V

    .line 243
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->configAudioParameters()V

    .line 245
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->inDebug()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 246
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->startDebug()V

    .line 249
    :cond_1b
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->isIncallAudio()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 250
    invoke-virtual {p0}, Lcom/android/phone/BluetoothHandsfree;->audioOn()Z

    .line 252
    :cond_24
    return-void

    .line 240
    :cond_25
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->initializeHandsfreeAtParser()V

    goto :goto_c
.end method

.method disconnectHeadset()V
    .registers 2

    .prologue
    .line 263
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    .line 264
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->stopDebug()V

    .line 265
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->resetAtState()V

    .line 266
    return-void
.end method

.method ignoreRing()V
    .registers 2

    .prologue
    .line 966
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mBluetoothPhoneState:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->access$3600(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)V

    .line 967
    return-void
.end method

.method isAudioOn()Z
    .registers 2

    .prologue
    .line 962
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mConnectedSco:Landroid/bluetooth/ScoSocket;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method declared-synchronized onBluetoothDisabled()V
    .registers 4

    .prologue
    .line 209
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mHandler:Landroid/os/Handler;

    monitor-enter v0
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_38

    .line 210
    :try_start_4
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mConnectedSco:Landroid/bluetooth/ScoSocket;

    if-eqz v1, :cond_1a

    .line 211
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 212
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/phone/BluetoothHandsfree;->broadcastAudioStateIntent(I)V

    .line 213
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mConnectedSco:Landroid/bluetooth/ScoSocket;

    invoke-virtual {v1}, Landroid/bluetooth/ScoSocket;->close()V

    .line 214
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mConnectedSco:Landroid/bluetooth/ScoSocket;

    .line 216
    :cond_1a
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mOutgoingSco:Landroid/bluetooth/ScoSocket;

    if-eqz v1, :cond_26

    .line 217
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mOutgoingSco:Landroid/bluetooth/ScoSocket;

    invoke-virtual {v1}, Landroid/bluetooth/ScoSocket;->close()V

    .line 218
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mOutgoingSco:Landroid/bluetooth/ScoSocket;

    .line 220
    :cond_26
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mIncomingSco:Landroid/bluetooth/ScoSocket;

    if-eqz v1, :cond_32

    .line 221
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mIncomingSco:Landroid/bluetooth/ScoSocket;

    invoke-virtual {v1}, Landroid/bluetooth/ScoSocket;->close()V

    .line 222
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mIncomingSco:Landroid/bluetooth/ScoSocket;

    .line 224
    :cond_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_4 .. :try_end_33} :catchall_35

    .line 225
    monitor-exit p0

    return-void

    .line 224
    :catchall_35
    move-exception v1

    :try_start_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    :try_start_37
    throw v1
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_38

    .line 209
    :catchall_38
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized onBluetoothEnabled()V
    .registers 3

    .prologue
    .line 200
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mHandler:Landroid/os/Handler;

    monitor-enter v0
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_19

    .line 201
    :try_start_4
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mIncomingSco:Landroid/bluetooth/ScoSocket;

    if-nez v1, :cond_13

    .line 202
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->createScoSocket()Landroid/bluetooth/ScoSocket;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mIncomingSco:Landroid/bluetooth/ScoSocket;

    .line 203
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mIncomingSco:Landroid/bluetooth/ScoSocket;

    invoke-virtual {v1}, Landroid/bluetooth/ScoSocket;->accept()Z

    .line 205
    :cond_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_16

    .line 206
    monitor-exit p0

    return-void

    .line 205
    :catchall_16
    move-exception v1

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    :try_start_18
    throw v1
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_19

    .line 200
    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public reportCmeError(I)Landroid/bluetooth/AtCommandResult;
    .registers 5
    .parameter "error"

    .prologue
    .line 1869
    iget-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mCmee:Z

    if-eqz v1, :cond_22

    .line 1870
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 1871
    .local v0, result:Landroid/bluetooth/AtCommandResult;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+CME ERROR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    move-object v1, v0

    .line 1874
    .end local v0           #result:Landroid/bluetooth/AtCommandResult;
    :goto_21
    return-object v1

    :cond_22
    new-instance v1, Landroid/bluetooth/AtCommandResult;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_21
.end method

.method public sendScoGainUpdate(I)V
    .registers 4
    .parameter "gain"

    .prologue
    .line 1860
    iget v0, p0, Lcom/android/phone/BluetoothHandsfree;->mScoGain:I

    if-eq v0, p1, :cond_27

    iget v0, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadsetType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_f

    iget v0, p0, Lcom/android/phone/BluetoothHandsfree;->mRemoteBrsf:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_27

    .line 1863
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+VGS:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V

    .line 1864
    iput p1, p0, Lcom/android/phone/BluetoothHandsfree;->mScoGain:I

    .line 1866
    :cond_27
    return-void
.end method

.method declared-synchronized startVoiceRecognition()Z
    .registers 3

    .prologue
    .line 1911
    monitor-enter p0

    :try_start_1
    iget-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mWaitingForVoiceRecognition:Z

    if-eqz v1, :cond_20

    .line 1913
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mWaitingForVoiceRecognition:Z

    .line 1914
    const-string v1, "OK"

    invoke-direct {p0, v1}, Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V

    .line 1919
    :goto_d
    invoke-virtual {p0}, Lcom/android/phone/BluetoothHandsfree;->audioOn()Z

    move-result v0

    .line 1920
    .local v0, ret:Z
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mStartVoiceRecognitionWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 1921
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mStartVoiceRecognitionWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_26

    .line 1923
    :cond_1e
    monitor-exit p0

    return v0

    .line 1917
    .end local v0           #ret:Z
    :cond_20
    :try_start_20
    const-string v1, "+BVRA: 1"

    invoke-direct {p0, v1}, Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    :try_end_25
    .catchall {:try_start_20 .. :try_end_25} :catchall_26

    goto :goto_d

    .line 1911
    :catchall_26
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized stopVoiceRecognition()Z
    .registers 2

    .prologue
    .line 1927
    monitor-enter p0

    :try_start_1
    const-string v0, "+BVRA: 0"

    invoke-direct {p0, v0}, Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V

    .line 1928
    invoke-virtual {p0}, Lcom/android/phone/BluetoothHandsfree;->audioOff()V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    .line 1929
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 1927
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method updateBtHandsfreeAfterRadioTechnologyChange()V
    .registers 2

    .prologue
    .line 877
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mRingingCall:Lcom/android/internal/telephony/Call;

    .line 878
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mForegroundCall:Lcom/android/internal/telephony/Call;

    .line 879
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mBackgroundCall:Lcom/android/internal/telephony/Call;

    .line 881
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mBluetoothPhoneState:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->access$3500(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)V

    .line 882
    return-void
.end method

.method declared-synchronized userWantsAudioOff()V
    .registers 2

    .prologue
    .line 937
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mUserWantsAudio:Z

    .line 938
    invoke-virtual {p0}, Lcom/android/phone/BluetoothHandsfree;->audioOff()V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    .line 939
    monitor-exit p0

    return-void

    .line 937
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized userWantsAudioOn()V
    .registers 2

    .prologue
    .line 929
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mUserWantsAudio:Z

    .line 930
    invoke-virtual {p0}, Lcom/android/phone/BluetoothHandsfree;->audioOn()Z
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    .line 931
    monitor-exit p0

    return-void

    .line 929
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method
