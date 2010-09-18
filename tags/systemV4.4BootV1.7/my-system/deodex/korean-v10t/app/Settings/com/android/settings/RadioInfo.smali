.class public Lcom/android/settings/RadioInfo;
.super Landroid/app/Activity;
.source "RadioInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/RadioInfo$23;,
        Lcom/android/settings/RadioInfo$OemCommands;
    }
.end annotation


# static fields
.field private static final EVENT_CFI_CHANGED:I = 0x12e

.field private static final EVENT_PHONE_STATE_CHANGED:I = 0x64

.field private static final EVENT_QUERY_NEIGHBORING_CIDS_DONE:I = 0x3ea

.field private static final EVENT_QUERY_PREFERRED_TYPE_DONE:I = 0x3e8

.field private static final EVENT_QUERY_SMSC_DONE:I = 0x3ed

.field private static final EVENT_SERVICE_STATE_CHANGED:I = 0x12c

.field private static final EVENT_SET_CIPHER_DONE:I = 0x3ec

.field private static final EVENT_SET_PREFERRED_TYPE_DONE:I = 0x3e9

.field private static final EVENT_SET_QXDMLOG_DONE:I = 0x3eb

.field private static final EVENT_SIGNAL_STRENGTH_CHANGED:I = 0xc8

.field private static final EVENT_UPDATE_SMSC_DONE:I = 0x3ee

.field private static final MENU_ITEM_GET_PDP_LIST:I = 0x4

.field private static final MENU_ITEM_SELECT_BAND:I = 0x0

.field private static final MENU_ITEM_TOGGLE_DATA:I = 0x5

.field private static final MENU_ITEM_TOGGLE_DATA_ON_BOOT:I = 0x6

.field private static final MENU_ITEM_VIEW_ADN:I = 0x1

.field private static final MENU_ITEM_VIEW_FDN:I = 0x2

.field private static final MENU_ITEM_VIEW_SDN:I = 0x3


# instance fields
.field private final TAG:Ljava/lang/String;

.field private attempts:Landroid/widget/TextView;

.field private callState:Landroid/widget/TextView;

.field private cipherState:Landroid/widget/TextView;

.field private cipherToggleButton:Landroid/widget/Button;

.field private dBm:Landroid/widget/TextView;

.field private disconnects:Landroid/widget/TextView;

.field private dnsCheckState:Landroid/widget/TextView;

.field private dnsCheckToggleButton:Landroid/widget/Button;

.field private gprsState:Landroid/widget/TextView;

.field private gsmState:Landroid/widget/TextView;

.field private mCfi:Landroid/widget/TextView;

.field private mCfiValue:Z

.field mCipherButtonHandler:Landroid/view/View$OnClickListener;

.field private mCipherOn:Z

.field private mDeviceId:Landroid/widget/TextView;

.field mDnsCheckButtonHandler:Landroid/view/View$OnClickListener;

.field private mGetPdpList:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mHandler:Landroid/os/Handler;

.field private mHttpClientTest:Landroid/widget/TextView;

.field private mHttpClientTestResult:Ljava/lang/String;

.field private mLocation:Landroid/widget/TextView;

.field private mMwi:Landroid/widget/TextView;

.field private mMwiValue:Z

.field private mNeighboringCids:Landroid/widget/TextView;

.field private mOem:Lcom/android/settings/RadioInfo$OemCommands;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

.field mPingButtonHandler:Landroid/view/View$OnClickListener;

.field private mPingHostname:Landroid/widget/TextView;

.field private mPingHostnameResult:Ljava/lang/String;

.field private mPingIpAddr:Landroid/widget/TextView;

.field private mPingIpAddrResult:Ljava/lang/String;

.field mPowerButtonHandler:Landroid/view/View$OnClickListener;

.field mPreferredNetworkHandler:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mPreferredNetworkLabels:[Ljava/lang/String;

.field mQxdmButtonHandler:Landroid/view/View$OnClickListener;

.field private mQxdmLogEnabled:Z

.field mRefreshSmscButtonHandler:Landroid/view/View$OnClickListener;

.field private mSelectBandCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mToggleData:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mToggleDataOnBoot:Landroid/view/MenuItem$OnMenuItemClickListener;

.field mUpdateSmscButtonHandler:Landroid/view/View$OnClickListener;

.field private mViewADNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mViewFDNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mViewSDNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private netstat:Landroid/os/INetStatService;

.field private network:Landroid/widget/TextView;

.field private number:Landroid/widget/TextView;

.field private operatorName:Landroid/widget/TextView;

.field private phone:Lcom/android/internal/telephony/Phone;

.field private pingTestButton:Landroid/widget/Button;

.field private preferredNetworkType:Landroid/widget/Spinner;

.field private qxdmLogButton:Landroid/widget/Button;

.field private radioPowerButton:Landroid/widget/Button;

.field private received:Landroid/widget/TextView;

.field private refreshSmscButton:Landroid/widget/Button;

.field private resets:Landroid/widget/TextView;

.field private roamingState:Landroid/widget/TextView;

.field private sent:Landroid/widget/TextView;

.field private sentSinceReceived:Landroid/widget/TextView;

.field private smsc:Landroid/widget/EditText;

.field private successes:Landroid/widget/TextView;

.field private updateSmscButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 73
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 74
    const-string v0, "phone"

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->TAG:Ljava/lang/String;

    .line 133
    iput-object v1, p0, Lcom/android/settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    .line 137
    iput-object v1, p0, Lcom/android/settings/RadioInfo;->mOem:Lcom/android/settings/RadioInfo$OemCommands;

    .line 145
    iput-boolean v2, p0, Lcom/android/settings/RadioInfo;->mMwiValue:Z

    .line 146
    iput-boolean v2, p0, Lcom/android/settings/RadioInfo;->mCfiValue:Z

    .line 148
    new-instance v0, Lcom/android/settings/RadioInfo$1;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$1;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 180
    new-instance v0, Lcom/android/settings/RadioInfo$2;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$2;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mHandler:Landroid/os/Handler;

    .line 972
    new-instance v0, Lcom/android/settings/RadioInfo$8;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$8;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mViewADNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 987
    new-instance v0, Lcom/android/settings/RadioInfo$9;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$9;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mViewFDNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 1002
    new-instance v0, Lcom/android/settings/RadioInfo$10;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$10;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mViewSDNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 1033
    new-instance v0, Lcom/android/settings/RadioInfo$11;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$11;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mToggleDataOnBoot:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 1040
    new-instance v0, Lcom/android/settings/RadioInfo$12;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$12;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mToggleData:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 1058
    new-instance v0, Lcom/android/settings/RadioInfo$13;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$13;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mGetPdpList:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 1065
    new-instance v0, Lcom/android/settings/RadioInfo$14;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$14;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mSelectBandCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 1074
    new-instance v0, Lcom/android/settings/RadioInfo$15;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$15;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mPowerButtonHandler:Landroid/view/View$OnClickListener;

    .line 1081
    new-instance v0, Lcom/android/settings/RadioInfo$16;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$16;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mCipherButtonHandler:Landroid/view/View$OnClickListener;

    .line 1095
    new-instance v0, Lcom/android/settings/RadioInfo$17;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$17;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mDnsCheckButtonHandler:Landroid/view/View$OnClickListener;

    .line 1102
    new-instance v0, Lcom/android/settings/RadioInfo$18;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$18;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mPingButtonHandler:Landroid/view/View$OnClickListener;

    .line 1108
    new-instance v0, Lcom/android/settings/RadioInfo$19;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$19;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mUpdateSmscButtonHandler:Landroid/view/View$OnClickListener;

    .line 1116
    new-instance v0, Lcom/android/settings/RadioInfo$20;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$20;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mRefreshSmscButtonHandler:Landroid/view/View$OnClickListener;

    .line 1122
    new-instance v0, Lcom/android/settings/RadioInfo$21;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$21;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mQxdmButtonHandler:Landroid/view/View$OnClickListener;

    .line 1139
    new-instance v0, Lcom/android/settings/RadioInfo$22;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$22;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mPreferredNetworkHandler:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 1151
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "WCDMA preferred"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "GSM only"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "WCDMA only"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Unknown"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mPreferredNetworkLabels:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/RadioInfo;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updateDataState()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/RadioInfo;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updateDataStats()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/RadioInfo;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updatePhoneState()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/settings/RadioInfo;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updateSignalStrength()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings/RadioInfo;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updateServiceState()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/settings/RadioInfo;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updatePowerState()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/settings/RadioInfo;)Landroid/widget/Spinner;
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->preferredNetworkType:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings/RadioInfo;)Lcom/android/internal/telephony/Phone;
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/settings/RadioInfo;Ljava/util/ArrayList;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo;->updateNeighboringCids(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/settings/RadioInfo;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mNeighboringCids:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/settings/RadioInfo;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/android/settings/RadioInfo;->mQxdmLogEnabled:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/android/settings/RadioInfo;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/android/settings/RadioInfo;->mQxdmLogEnabled:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/settings/RadioInfo;Ljava/lang/Boolean;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo;->updateQxdmState(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/RadioInfo;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updatePdpList()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/settings/RadioInfo;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->displayQxdmEnableResult()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/settings/RadioInfo;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/android/settings/RadioInfo;->mCipherOn:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/android/settings/RadioInfo;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/android/settings/RadioInfo;->mCipherOn:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/android/settings/RadioInfo;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo;->setCiphPref(Z)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/settings/RadioInfo;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updateCiphState()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/settings/RadioInfo;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->smsc:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/settings/RadioInfo;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->updateSmscButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/settings/RadioInfo;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mPingIpAddrResult:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/settings/RadioInfo;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mPingIpAddr:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/settings/RadioInfo;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mPingHostnameResult:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/RadioInfo;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updateNetworkType()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/settings/RadioInfo;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mPingHostname:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/settings/RadioInfo;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mHttpClientTestResult:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/settings/RadioInfo;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mHttpClientTest:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/settings/RadioInfo;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->pingIpAddr()V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/settings/RadioInfo;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->pingHostname()V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/settings/RadioInfo;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->httpClientTest()V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/settings/RadioInfo;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->toggleDataDisabledOnBoot()V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/settings/RadioInfo;)Landroid/telephony/TelephonyManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/settings/RadioInfo;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->isRadioOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3900(Lcom/android/settings/RadioInfo;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->getCiphPref()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/RadioInfo;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updateDataStats2()V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/settings/RadioInfo;)Lcom/android/settings/RadioInfo$OemCommands;
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mOem:Lcom/android/settings/RadioInfo$OemCommands;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/settings/RadioInfo;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->cipherState:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/settings/RadioInfo;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/settings/RadioInfo;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updateDnsCheckState()V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/settings/RadioInfo;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updatePingState()V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/settings/RadioInfo;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->refreshSmsc()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/RadioInfo;Landroid/telephony/CellLocation;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo;->updateLocation(Landroid/telephony/CellLocation;)V

    return-void
.end method

.method static synthetic access$602(Lcom/android/settings/RadioInfo;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/android/settings/RadioInfo;->mMwiValue:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/settings/RadioInfo;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updateMessageWaiting()V

    return-void
.end method

.method static synthetic access$802(Lcom/android/settings/RadioInfo;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/android/settings/RadioInfo;->mCfiValue:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/settings/RadioInfo;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updateCallRedirect()V

    return-void
.end method

.method private displayQxdmEnableResult()V
    .registers 7

    .prologue
    .line 959
    iget-boolean v2, p0, Lcom/android/settings/RadioInfo;->mQxdmLogEnabled:Z

    if-eqz v2, :cond_21

    const-string v2, "Start QXDM Log"

    move-object v1, v2

    .line 961
    .local v1, status:Ljava/lang/String;
    :goto_7
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 964
    .local v0, mProgressPanel:Landroid/content/DialogInterface;
    iget-object v2, p0, Lcom/android/settings/RadioInfo;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/settings/RadioInfo$7;

    invoke-direct {v3, p0}, Lcom/android/settings/RadioInfo$7;-><init>(Lcom/android/settings/RadioInfo;)V

    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 970
    return-void

    .line 959
    .end local v0           #mProgressPanel:Landroid/content/DialogInterface;
    .end local v1           #status:Ljava/lang/String;
    :cond_21
    const-string v2, "Stop QXDM Log"

    move-object v1, v2

    goto :goto_7
.end method

.method private getCiphPref()Z
    .registers 5

    .prologue
    .line 582
    iget-object v2, p0, Lcom/android/settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 583
    .local v1, sp:Landroid/content/SharedPreferences;
    const-string v2, "ciphering_key"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 584
    .local v0, ret:Z
    return v0
.end method

.method private httpClientTest()V
    .registers 7

    .prologue
    .line 851
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 853
    .local v0, client:Lorg/apache/http/client/HttpClient;
    :try_start_5
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    const-string v4, "http://www.google.com"

    invoke-direct {v2, v4}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 854
    .local v2, request:Lorg/apache/http/client/methods/HttpGet;
    invoke-interface {v0, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 855
    .local v3, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_24

    .line 856
    const-string v4, "Pass"

    iput-object v4, p0, Lcom/android/settings/RadioInfo;->mHttpClientTestResult:Ljava/lang/String;

    .line 860
    :goto_20
    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 864
    .end local v2           #request:Lorg/apache/http/client/methods/HttpGet;
    .end local v3           #response:Lorg/apache/http/HttpResponse;
    :goto_23
    return-void

    .line 858
    .restart local v2       #request:Lorg/apache/http/client/methods/HttpGet;
    .restart local v3       #response:Lorg/apache/http/HttpResponse;
    :cond_24
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fail: Code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/RadioInfo;->mHttpClientTestResult:Ljava/lang/String;
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_3d} :catch_3e

    goto :goto_20

    .line 861
    .end local v2           #request:Lorg/apache/http/client/methods/HttpGet;
    .end local v3           #response:Lorg/apache/http/HttpResponse;
    :catch_3e
    move-exception v4

    move-object v1, v4

    .line 862
    .local v1, e:Ljava/io/IOException;
    const-string v4, "Fail: IOException"

    iput-object v4, p0, Lcom/android/settings/RadioInfo;->mHttpClientTestResult:Ljava/lang/String;

    goto :goto_23
.end method

.method private isRadioOn()Z
    .registers 3

    .prologue
    .line 545
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private final pingHostname()V
    .registers 6

    .prologue
    .line 831
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    const-string v4, "ping -c 1 www.google.com"

    invoke-virtual {v3, v4}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 832
    .local v1, p:Ljava/lang/Process;
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    move-result v2

    .line 833
    .local v2, status:I
    if-nez v2, :cond_15

    .line 834
    const-string v3, "Pass"

    iput-object v3, p0, Lcom/android/settings/RadioInfo;->mPingHostnameResult:Ljava/lang/String;

    .line 845
    .end local v1           #p:Ljava/lang/Process;
    .end local v2           #status:I
    :goto_14
    return-void

    .line 836
    .restart local v1       #p:Ljava/lang/Process;
    .restart local v2       #status:I
    :cond_15
    const-string v3, "Fail: Host unreachable"

    iput-object v3, p0, Lcom/android/settings/RadioInfo;->mPingHostnameResult:Ljava/lang/String;
    :try_end_19
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_19} :catch_1a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_19} :catch_21
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_19} :catch_28

    goto :goto_14

    .line 838
    .end local v1           #p:Ljava/lang/Process;
    .end local v2           #status:I
    :catch_1a
    move-exception v3

    move-object v0, v3

    .line 839
    .local v0, e:Ljava/net/UnknownHostException;
    const-string v3, "Fail: Unknown Host"

    iput-object v3, p0, Lcom/android/settings/RadioInfo;->mPingHostnameResult:Ljava/lang/String;

    goto :goto_14

    .line 840
    .end local v0           #e:Ljava/net/UnknownHostException;
    :catch_21
    move-exception v3

    move-object v0, v3

    .line 841
    .local v0, e:Ljava/io/IOException;
    const-string v3, "Fail: IOException"

    iput-object v3, p0, Lcom/android/settings/RadioInfo;->mPingHostnameResult:Ljava/lang/String;

    goto :goto_14

    .line 842
    .end local v0           #e:Ljava/io/IOException;
    :catch_28
    move-exception v3

    move-object v0, v3

    .line 843
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v3, "Fail: InterruptedException"

    iput-object v3, p0, Lcom/android/settings/RadioInfo;->mPingHostnameResult:Ljava/lang/String;

    goto :goto_14
.end method

.method private final pingIpAddr()V
    .registers 8

    .prologue
    .line 811
    :try_start_0
    const-string v1, "74.125.47.104"

    .line 812
    .local v1, ipAddress:Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ping -c 1 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 813
    .local v2, p:Ljava/lang/Process;
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    move-result v3

    .line 814
    .local v3, status:I
    if-nez v3, :cond_28

    .line 815
    const-string v4, "Pass"

    iput-object v4, p0, Lcom/android/settings/RadioInfo;->mPingIpAddrResult:Ljava/lang/String;

    .line 824
    .end local v1           #ipAddress:Ljava/lang/String;
    .end local v2           #p:Ljava/lang/Process;
    .end local v3           #status:I
    :goto_27
    return-void

    .line 817
    .restart local v1       #ipAddress:Ljava/lang/String;
    .restart local v2       #p:Ljava/lang/Process;
    .restart local v3       #status:I
    :cond_28
    const-string v4, "Fail: IP addr not reachable"

    iput-object v4, p0, Lcom/android/settings/RadioInfo;->mPingIpAddrResult:Ljava/lang/String;
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_2c} :catch_2d
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_2c} :catch_34

    goto :goto_27

    .line 819
    .end local v1           #ipAddress:Ljava/lang/String;
    .end local v2           #p:Ljava/lang/Process;
    .end local v3           #status:I
    :catch_2d
    move-exception v4

    move-object v0, v4

    .line 820
    .local v0, e:Ljava/io/IOException;
    const-string v4, "Fail: IOException"

    iput-object v4, p0, Lcom/android/settings/RadioInfo;->mPingIpAddrResult:Ljava/lang/String;

    goto :goto_27

    .line 821
    .end local v0           #e:Ljava/io/IOException;
    :catch_34
    move-exception v4

    move-object v0, v4

    .line 822
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v4, "Fail: InterruptedException"

    iput-object v4, p0, Lcom/android/settings/RadioInfo;->mPingIpAddrResult:Ljava/lang/String;

    goto :goto_27
.end method

.method private refreshSmsc()V
    .registers 4

    .prologue
    .line 867
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3ed

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getSmscAddress(Landroid/os/Message;)V

    .line 868
    return-void
.end method

.method private setCiphPref(Z)V
    .registers 5
    .parameter "value"

    .prologue
    .line 575
    iget-object v2, p0, Lcom/android/settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 576
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 577
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "ciphering_key"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 578
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 579
    return-void
.end method

.method private toggleDataDisabledOnBoot()V
    .registers 8

    .prologue
    const/4 v5, 0x0

    const-string v6, "disabled_on_boot_key"

    .line 1019
    iget-object v4, p0, Lcom/android/settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1020
    .local v2, sp:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1021
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "disabled_on_boot_key"

    invoke-interface {v2, v6, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 1022
    .local v3, value:Z
    const-string v4, "disabled_on_boot_key"

    if-nez v3, :cond_28

    const/4 v4, 0x1

    :goto_1c
    invoke-interface {v1, v6, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1023
    iget-object v4, p0, Lcom/android/settings/RadioInfo;->mOem:Lcom/android/settings/RadioInfo$OemCommands;

    invoke-virtual {v4, v3}, Lcom/android/settings/RadioInfo$OemCommands;->getPsAutoAttachData(Z)[B

    move-result-object v0

    .line 1024
    .local v0, data:[B
    if-nez v0, :cond_2a

    .line 1031
    :goto_27
    return-void

    .end local v0           #data:[B
    :cond_28
    move v4, v5

    .line 1022
    goto :goto_1c

    .line 1029
    .restart local v0       #data:[B
    :cond_2a
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1030
    iget-object v4, p0, Lcom/android/settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    const/4 v5, 0x0

    invoke-interface {v4, v0, v5}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    goto :goto_27
.end method

.method private final updateCallRedirect()V
    .registers 3

    .prologue
    .line 664
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mCfi:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/android/settings/RadioInfo;->mCfiValue:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 665
    return-void
.end method

.method private updateCiphState()V
    .registers 3

    .prologue
    .line 588
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->cipherState:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->getCiphPref()Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v1, "Ciphering ON"

    :goto_a
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 589
    return-void

    .line 588
    :cond_e
    const-string v1, "Ciphering OFF"

    goto :goto_a
.end method

.method private final updateDataState()V
    .registers 5

    .prologue
    .line 722
    iget-object v3, p0, Lcom/android/settings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v2

    .line 723
    .local v2, state:I
    invoke-virtual {p0}, Lcom/android/settings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 724
    .local v1, r:Landroid/content/res/Resources;
    const v3, 0x7f08001a

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 726
    .local v0, display:Ljava/lang/String;
    packed-switch v2, :pswitch_data_3a

    .line 741
    :goto_14
    iget-object v3, p0, Lcom/android/settings/RadioInfo;->gprsState:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 742
    return-void

    .line 728
    :pswitch_1a
    const v3, 0x7f080018

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 729
    goto :goto_14

    .line 731
    :pswitch_22
    const v3, 0x7f080017

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 732
    goto :goto_14

    .line 734
    :pswitch_2a
    const v3, 0x7f080016

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 735
    goto :goto_14

    .line 737
    :pswitch_32
    const v3, 0x7f080019

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    .line 726
    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_2a
        :pswitch_22
        :pswitch_1a
        :pswitch_32
    .end packed-switch
.end method

.method private final updateDataStats()V
    .registers 5

    .prologue
    const-string v3, "0"

    .line 770
    const-string v1, "net.gsm.radio-reset"

    const-string v2, "0"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 771
    .local v0, s:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->resets:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 773
    const-string v1, "net.gsm.attempt-gprs"

    const-string v2, "0"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 774
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->attempts:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 776
    const-string v1, "net.gsm.succeed-gprs"

    const-string v2, "0"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 777
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->successes:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 782
    const-string v1, "net.ppp.reset-by-timeout"

    const-string v2, "0"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 783
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->sentSinceReceived:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 784
    return-void
.end method

.method private final updateDataStats2()V
    .registers 15

    .prologue
    const-string v11, ", "

    const-string v11, " "

    .line 787
    invoke-virtual {p0}, Lcom/android/settings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 790
    .local v2, r:Landroid/content/res/Resources;
    :try_start_8
    iget-object v11, p0, Lcom/android/settings/RadioInfo;->netstat:Landroid/os/INetStatService;

    invoke-interface {v11}, Landroid/os/INetStatService;->getMobileTxPackets()J

    move-result-wide v9

    .line 791
    .local v9, txPackets:J
    iget-object v11, p0, Lcom/android/settings/RadioInfo;->netstat:Landroid/os/INetStatService;

    invoke-interface {v11}, Landroid/os/INetStatService;->getMobileRxPackets()J

    move-result-wide v5

    .line 792
    .local v5, rxPackets:J
    iget-object v11, p0, Lcom/android/settings/RadioInfo;->netstat:Landroid/os/INetStatService;

    invoke-interface {v11}, Landroid/os/INetStatService;->getMobileTxBytes()J

    move-result-wide v7

    .line 793
    .local v7, txBytes:J
    iget-object v11, p0, Lcom/android/settings/RadioInfo;->netstat:Landroid/os/INetStatService;

    invoke-interface {v11}, Landroid/os/INetStatService;->getMobileRxBytes()J

    move-result-wide v3

    .line 795
    .local v3, rxBytes:J
    const v11, 0x7f08001b

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 796
    .local v1, packets:Ljava/lang/String;
    const v11, 0x7f08001c

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 798
    .local v0, bytes:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/settings/RadioInfo;->sent:Landroid/widget/TextView;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 799
    iget-object v11, p0, Lcom/android/settings/RadioInfo;->received:Landroid/widget/TextView;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_8e
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8e} :catch_8f

    .line 802
    .end local v0           #bytes:Ljava/lang/String;
    .end local v1           #packets:Ljava/lang/String;
    .end local v3           #rxBytes:J
    .end local v5           #rxPackets:J
    .end local v7           #txBytes:J
    .end local v9           #txPackets:J
    :goto_8e
    return-void

    .line 800
    :catch_8f
    move-exception v11

    goto :goto_8e
.end method

.method private updateDnsCheckState()V
    .registers 3

    .prologue
    .line 592
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->dnsCheckState:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->isDnsCheckDisabled()Z

    move-result v1

    if-eqz v1, :cond_10

    const-string v1, "0.0.0.0 allowed"

    :goto_c
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 594
    return-void

    .line 592
    :cond_10
    const-string v1, "0.0.0.0 not allowed"

    goto :goto_c
.end method

.method private final updateLocation(Landroid/telephony/CellLocation;)V
    .registers 13
    .parameter "location"

    .prologue
    const/4 v8, -0x1

    const-string v10, "unknown"

    const-string v9, " = "

    .line 623
    const/4 v2, -0x1

    .line 624
    .local v2, lac:I
    const/4 v1, -0x1

    .line 625
    .local v1, cid:I
    instance-of v5, p1, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v5, :cond_17

    .line 626
    move-object v0, p1

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    move-object v3, v0

    .line 627
    .local v3, loc:Landroid/telephony/gsm/GsmCellLocation;
    invoke-virtual {v3}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v2

    .line 628
    invoke-virtual {v3}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v1

    .line 631
    .end local v3           #loc:Landroid/telephony/gsm/GsmCellLocation;
    :cond_17
    invoke-virtual {p0}, Lcom/android/settings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 633
    .local v4, r:Landroid/content/res/Resources;
    iget-object v5, p0, Lcom/android/settings/RadioInfo;->mLocation:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x7f08001f

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-ne v2, v8, :cond_64

    const-string v7, "unknown"

    move-object v7, v10

    :goto_38
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "   "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0x7f080020

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-ne v1, v8, :cond_69

    const-string v7, "unknown"

    move-object v7, v10

    :goto_58
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 638
    return-void

    .line 633
    :cond_64
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_38

    :cond_69
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_58
.end method

.method private final updateMessageWaiting()V
    .registers 3

    .prologue
    .line 659
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mMwi:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/android/settings/RadioInfo;->mMwiValue:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 660
    return-void
.end method

.method private final updateNeighboringCids(Ljava/util/ArrayList;)V
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 641
    .local p1, cids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/telephony/NeighboringCellInfo;>;"
    const-string v2, ""

    .line 642
    .local v2, neighborings:Ljava/lang/String;
    if-eqz p1, :cond_56

    .line 643
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 644
    const-string v2, "no neighboring cells"

    .line 654
    :cond_c
    :goto_c
    iget-object v3, p0, Lcom/android/settings/RadioInfo;->mNeighboringCids:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 655
    return-void

    .line 646
    :cond_12
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/NeighboringCellInfo;

    .line 647
    .local v0, cell:Landroid/telephony/NeighboringCellInfo;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "{"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getRssi()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "} "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_16

    .line 652
    .end local v0           #cell:Landroid/telephony/NeighboringCellInfo;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_56
    const-string v2, "unknown"

    goto :goto_c
.end method

.method private final updateNetworkType()V
    .registers 5

    .prologue
    .line 745
    invoke-virtual {p0}, Lcom/android/settings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 746
    .local v1, r:Landroid/content/res/Resources;
    const-string v2, "gsm.network.type"

    const v3, 0x7f08001a

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 749
    .local v0, display:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/RadioInfo;->network:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 750
    return-void
.end method

.method private final updatePdpList()V
    .registers 13

    .prologue
    const/4 v11, 0x0

    .line 917
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "========DATA=======\n"

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 919
    .local v4, sb:Ljava/lang/StringBuilder;
    iget-object v7, p0, Lcom/android/settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getCurrentPdpList()Ljava/util/List;

    move-result-object v3

    .line 921
    .local v3, pdps:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/gsm/PdpConnection;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_134

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/gsm/PdpConnection;

    .line 922
    .local v2, pdp:Lcom/android/internal/telephony/gsm/PdpConnection;
    const-string v7, "    State: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/PdpConnection;->getState()Lcom/android/internal/telephony/DataConnection$State;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/DataConnection$State;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 923
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/PdpConnection;->getState()Lcom/android/internal/telephony/DataConnection$State;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/DataConnection$State;->isActive()Z

    move-result v7

    if-eqz v7, :cond_f4

    .line 924
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/PdpConnection;->getConnectionTime()J

    move-result-wide v9

    sub-long/2addr v7, v9

    const-wide/16 v9, 0x3e8

    div-long v5, v7, v9

    .line 926
    .local v5, timeElapsed:J
    const-string v7, "    connected at "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/PdpConnection;->getConnectionTime()J

    move-result-wide v8

    invoke-static {v8, v9}, Landroid/text/format/DateUtils;->timeString(J)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " and elapsed "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v5, v6}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n    to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/PdpConnection;->getApn()Lcom/android/internal/telephony/gsm/ApnSetting;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/ApnSetting;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\ninterface: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v9, p0, Lcom/android/settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getActiveApnTypes()[Ljava/lang/String;

    move-result-object v9

    aget-object v9, v9, v11

    invoke-interface {v8, v9}, Lcom/android/internal/telephony/Phone;->getInterfaceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\naddress: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v9, p0, Lcom/android/settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getActiveApnTypes()[Ljava/lang/String;

    move-result-object v9

    aget-object v9, v9, v11

    invoke-interface {v8, v9}, Lcom/android/internal/telephony/Phone;->getIpAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\ngateway: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v9, p0, Lcom/android/settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getActiveApnTypes()[Ljava/lang/String;

    move-result-object v9

    aget-object v9, v9, v11

    invoke-interface {v8, v9}, Lcom/android/internal/telephony/Phone;->getGateway(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 938
    iget-object v7, p0, Lcom/android/settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v8, p0, Lcom/android/settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getActiveApnTypes()[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v11

    invoke-interface {v7, v8}, Lcom/android/internal/telephony/Phone;->getDnsServers(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 939
    .local v0, dns:[Ljava/lang/String;
    if-eqz v0, :cond_ed

    .line 940
    const-string v7, "\ndns: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v0, v11

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x1

    aget-object v8, v0, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 951
    .end local v0           #dns:[Ljava/lang/String;
    .end local v5           #timeElapsed:J
    :cond_ed
    :goto_ed
    const-string v7, "\n==================="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_12

    .line 942
    :cond_f4
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/PdpConnection;->getState()Lcom/android/internal/telephony/DataConnection$State;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/DataConnection$State;->isInactive()Z

    move-result v7

    if-eqz v7, :cond_122

    .line 943
    const-string v7, "    disconnected with last try at "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/PdpConnection;->getLastFailTime()J

    move-result-wide v8

    invoke-static {v8, v9}, Landroid/text/format/DateUtils;->timeString(J)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n    fail because "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/PdpConnection;->getLastFailCause()Lcom/android/internal/telephony/DataConnection$FailCause;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/DataConnection$FailCause;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_ed

    .line 948
    :cond_122
    const-string v7, "    is connecting to "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/PdpConnection;->getApn()Lcom/android/internal/telephony/gsm/ApnSetting;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/ApnSetting;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_ed

    .line 955
    .end local v2           #pdp:Lcom/android/internal/telephony/gsm/PdpConnection;
    :cond_134
    iget-object v7, p0, Lcom/android/settings/RadioInfo;->disconnects:Landroid/widget/TextView;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 956
    return-void
.end method

.method private final updatePhoneState()V
    .registers 6

    .prologue
    .line 701
    iget-object v3, p0, Lcom/android/settings/RadioInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getPhoneState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    .line 702
    .local v2, state:Lcom/android/internal/telephony/Phone$State;
    invoke-virtual {p0}, Lcom/android/settings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 703
    .local v1, r:Landroid/content/res/Resources;
    const v3, 0x7f08001a

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 705
    .local v0, display:Ljava/lang/String;
    sget-object v3, Lcom/android/settings/RadioInfo$23;->$SwitchMap$com$android$internal$telephony$Phone$State:[I

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone$State;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_3a

    .line 717
    :goto_1c
    iget-object v3, p0, Lcom/android/settings/RadioInfo;->callState:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 718
    return-void

    .line 707
    :pswitch_22
    const v3, 0x7f080013

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 708
    goto :goto_1c

    .line 710
    :pswitch_2a
    const v3, 0x7f080014

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 711
    goto :goto_1c

    .line 713
    :pswitch_32
    const v3, 0x7f080015

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1c

    .line 705
    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_22
        :pswitch_2a
        :pswitch_32
    .end packed-switch
.end method

.method private final updatePingState()V
    .registers 8

    .prologue
    const v6, 0x7f08001a

    .line 871
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 873
    .local v0, handler:Landroid/os/Handler;
    invoke-virtual {p0}, Lcom/android/settings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/RadioInfo;->mPingIpAddrResult:Ljava/lang/String;

    .line 874
    invoke-virtual {p0}, Lcom/android/settings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/RadioInfo;->mPingHostnameResult:Ljava/lang/String;

    .line 875
    invoke-virtual {p0}, Lcom/android/settings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/RadioInfo;->mHttpClientTestResult:Ljava/lang/String;

    .line 877
    iget-object v5, p0, Lcom/android/settings/RadioInfo;->mPingIpAddr:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/settings/RadioInfo;->mPingIpAddrResult:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 878
    iget-object v5, p0, Lcom/android/settings/RadioInfo;->mPingHostname:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/settings/RadioInfo;->mPingHostnameResult:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 879
    iget-object v5, p0, Lcom/android/settings/RadioInfo;->mHttpClientTest:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/settings/RadioInfo;->mHttpClientTestResult:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 881
    new-instance v4, Lcom/android/settings/RadioInfo$3;

    invoke-direct {v4, p0}, Lcom/android/settings/RadioInfo$3;-><init>(Lcom/android/settings/RadioInfo;)V

    .line 888
    .local v4, updatePingResults:Ljava/lang/Runnable;
    new-instance v3, Lcom/android/settings/RadioInfo$4;

    invoke-direct {v3, p0, v0, v4}, Lcom/android/settings/RadioInfo$4;-><init>(Lcom/android/settings/RadioInfo;Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 895
    .local v3, ipAddr:Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 897
    new-instance v1, Lcom/android/settings/RadioInfo$5;

    invoke-direct {v1, p0, v0, v4}, Lcom/android/settings/RadioInfo$5;-><init>(Lcom/android/settings/RadioInfo;Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 904
    .local v1, hostname:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 906
    new-instance v2, Lcom/android/settings/RadioInfo$6;

    invoke-direct {v2, p0, v0, v4}, Lcom/android/settings/RadioInfo$6;-><init>(Lcom/android/settings/RadioInfo;Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 913
    .local v2, httpClient:Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 914
    return-void
.end method

.method private updatePowerState()V
    .registers 3

    .prologue
    .line 549
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->isRadioOn()Z

    move-result v1

    if-eqz v1, :cond_14

    const v1, 0x7f080002

    invoke-virtual {p0, v1}, Lcom/android/settings/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 552
    .local v0, buttonText:Ljava/lang/String;
    :goto_e
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->radioPowerButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 553
    return-void

    .line 549
    .end local v0           #buttonText:Ljava/lang/String;
    :cond_14
    const v1, 0x7f080001

    invoke-virtual {p0, v1}, Lcom/android/settings/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_e
.end method

.method private final updateProperties()V
    .registers 5

    .prologue
    const v3, 0x7f08001a

    .line 755
    invoke-virtual {p0}, Lcom/android/settings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 757
    .local v0, r:Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/android/settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 758
    .local v1, s:Ljava/lang/String;
    if-nez v1, :cond_13

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 759
    :cond_13
    iget-object v2, p0, Lcom/android/settings/RadioInfo;->mDeviceId:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 762
    iget-object v2, p0, Lcom/android/settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    .line 763
    if-nez v1, :cond_24

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 764
    :cond_24
    iget-object v2, p0, Lcom/android/settings/RadioInfo;->number:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 765
    return-void
.end method

.method private updateQxdmState(Ljava/lang/Boolean;)V
    .registers 7
    .parameter "newQxdmStatus"

    .prologue
    const-string v4, "qxdmstatus"

    .line 556
    iget-object v3, p0, Lcom/android/settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 558
    .local v2, sp:Landroid/content/SharedPreferences;
    const-string v3, "qxdmstatus"

    const/4 v3, 0x0

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/RadioInfo;->mQxdmLogEnabled:Z

    .line 561
    if-eqz p1, :cond_2d

    .line 562
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 563
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "qxdmstatus"

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 564
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 565
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/RadioInfo;->mQxdmLogEnabled:Z

    .line 568
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_2d
    iget-boolean v3, p0, Lcom/android/settings/RadioInfo;->mQxdmLogEnabled:Z

    if-eqz v3, :cond_3f

    const v3, 0x7f080004

    invoke-virtual {p0, v3}, Lcom/android/settings/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 571
    .local v0, buttonText:Ljava/lang/String;
    :goto_39
    iget-object v3, p0, Lcom/android/settings/RadioInfo;->qxdmLogButton:Landroid/widget/Button;

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 572
    return-void

    .line 568
    .end local v0           #buttonText:Ljava/lang/String;
    :cond_3f
    const v3, 0x7f080003

    invoke-virtual {p0, v3}, Lcom/android/settings/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    goto :goto_39
.end method

.method private final updateServiceState()V
    .registers 7

    .prologue
    .line 670
    iget-object v4, p0, Lcom/android/settings/RadioInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    .line 671
    .local v2, serviceState:Landroid/telephony/ServiceState;
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    .line 672
    .local v3, state:I
    invoke-virtual {p0}, Lcom/android/settings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 673
    .local v1, r:Landroid/content/res/Resources;
    const v4, 0x7f08001a

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 675
    .local v0, display:Ljava/lang/String;
    packed-switch v3, :pswitch_data_56

    .line 688
    :goto_18
    iget-object v4, p0, Lcom/android/settings/RadioInfo;->gsmState:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 690
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v4

    if-eqz v4, :cond_4d

    .line 691
    iget-object v4, p0, Lcom/android/settings/RadioInfo;->roamingState:Landroid/widget/TextView;

    const v5, 0x7f080011

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 696
    :goto_2b
    iget-object v4, p0, Lcom/android/settings/RadioInfo;->operatorName:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 697
    return-void

    .line 677
    :pswitch_35
    const v4, 0x7f08000d

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 678
    goto :goto_18

    .line 681
    :pswitch_3d
    const v4, 0x7f08000f

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 682
    goto :goto_18

    .line 684
    :pswitch_45
    const v4, 0x7f080010

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    .line 693
    :cond_4d
    iget-object v4, p0, Lcom/android/settings/RadioInfo;->roamingState:Landroid/widget/TextView;

    const v5, 0x7f080012

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2b

    .line 675
    :pswitch_data_56
    .packed-switch 0x0
        :pswitch_35
        :pswitch_3d
        :pswitch_3d
        :pswitch_45
    .end packed-switch
.end method

.method private final updateSignalStrength()V
    .registers 9

    .prologue
    const/4 v6, -0x1

    const-string v7, " "

    .line 600
    iget-object v4, p0, Lcom/android/settings/RadioInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    .line 601
    .local v3, state:I
    invoke-virtual {p0}, Lcom/android/settings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 603
    .local v0, r:Landroid/content/res/Resources;
    const/4 v4, 0x1

    if-eq v4, v3, :cond_17

    const/4 v4, 0x3

    if-ne v4, v3, :cond_1e

    .line 605
    :cond_17
    iget-object v4, p0, Lcom/android/settings/RadioInfo;->dBm:Landroid/widget/TextView;

    const-string v5, "0"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 608
    :cond_1e
    iget-object v4, p0, Lcom/android/settings/RadioInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getSignalStrengthDbm()I

    move-result v2

    .line 610
    .local v2, signalDbm:I
    if-ne v6, v2, :cond_27

    const/4 v2, 0x0

    .line 612
    :cond_27
    iget-object v4, p0, Lcom/android/settings/RadioInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getSignalStrength()I

    move-result v1

    .line 614
    .local v1, signalAsu:I
    if-ne v6, v1, :cond_30

    const/4 v1, 0x0

    .line 616
    :cond_30
    iget-object v4, p0, Lcom/android/settings/RadioInfo;->dBm:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f08001d

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "   "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f08001e

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 620
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "icicle"

    .prologue
    const/4 v3, 0x0

    .line 371
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 373
    const v1, 0x7f030033

    invoke-virtual {p0, v1}, Lcom/android/settings/RadioInfo;->setContentView(I)V

    .line 375
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/android/settings/RadioInfo;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/settings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 376
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    .line 378
    const v1, 0x7f0a0090

    invoke-virtual {p0, v1}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/RadioInfo;->mDeviceId:Landroid/widget/TextView;

    .line 379
    const v1, 0x7f0a0091

    invoke-virtual {p0, v1}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/RadioInfo;->number:Landroid/widget/TextView;

    .line 380
    const v1, 0x7f0a00a0

    invoke-virtual {p0, v1}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/RadioInfo;->callState:Landroid/widget/TextView;

    .line 381
    const v1, 0x7f0a0092

    invoke-virtual {p0, v1}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/RadioInfo;->operatorName:Landroid/widget/TextView;

    .line 382
    const v1, 0x7f0a009a

    invoke-virtual {p0, v1}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/RadioInfo;->roamingState:Landroid/widget/TextView;

    .line 383
    const v1, 0x7f0a009b

    invoke-virtual {p0, v1}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/RadioInfo;->gsmState:Landroid/widget/TextView;

    .line 384
    const v1, 0x7f0a009c

    invoke-virtual {p0, v1}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/RadioInfo;->gprsState:Landroid/widget/TextView;

    .line 385
    const v1, 0x7f0a009d

    invoke-virtual {p0, v1}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/RadioInfo;->network:Landroid/widget/TextView;

    .line 386
    const v1, 0x7f0a0097

    invoke-virtual {p0, v1}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/RadioInfo;->dBm:Landroid/widget/TextView;

    .line 387
    const v1, 0x7f0a009e

    invoke-virtual {p0, v1}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/RadioInfo;->mMwi:Landroid/widget/TextView;

    .line 388
    const v1, 0x7f0a009f

    invoke-virtual {p0, v1}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/RadioInfo;->mCfi:Landroid/widget/TextView;

    .line 389
    const v1, 0x7f0a0098

    invoke-virtual {p0, v1}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/RadioInfo;->mLocation:Landroid/widget/TextView;

    .line 390
    const v1, 0x7f0a0099

    invoke-virtual {p0, v1}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/RadioInfo;->mNeighboringCids:Landroid/widget/TextView;

    .line 392
    const v1, 0x7f0a00a1

    invoke-virtual {p0, v1}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/RadioInfo;->resets:Landroid/widget/TextView;

    .line 393
    const v1, 0x7f0a00a2

    invoke-virtual {p0, v1}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/RadioInfo;->attempts:Landroid/widget/TextView;

    .line 394
    const v1, 0x7f0a00a3

    invoke-virtual {p0, v1}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/RadioInfo;->successes:Landroid/widget/TextView;

    .line 395
    const v1, 0x7f0a00a4

    invoke-virtual {p0, v1}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/RadioInfo;->disconnects:Landroid/widget/TextView;

    .line 396
    const v1, 0x7f0a00a7

    invoke-virtual {p0, v1}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/RadioInfo;->sentSinceReceived:Landroid/widget/TextView;

    .line 397
    const v1, 0x7f0a00a5

    invoke-virtual {p0, v1}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/RadioInfo;->sent:Landroid/widget/TextView;

    .line 398
    const v1, 0x7f0a00a6

    invoke-virtual {p0, v1}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/RadioInfo;->received:Landroid/widget/TextView;

    .line 399
    const v1, 0x7f0a00aa

    invoke-virtual {p0, v1}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/RadioInfo;->cipherState:Landroid/widget/TextView;

    .line 400
    const v1, 0x7f0a00b0

    invoke-virtual {p0, v1}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/settings/RadioInfo;->smsc:Landroid/widget/EditText;

    .line 401
    const v1, 0x7f0a00b2

    invoke-virtual {p0, v1}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/RadioInfo;->dnsCheckState:Landroid/widget/TextView;

    .line 403
    const v1, 0x7f0a0094

    invoke-virtual {p0, v1}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/RadioInfo;->mPingIpAddr:Landroid/widget/TextView;

    .line 404
    const v1, 0x7f0a0095

    invoke-virtual {p0, v1}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/RadioInfo;->mPingHostname:Landroid/widget/TextView;

    .line 405
    const v1, 0x7f0a0096

    invoke-virtual {p0, v1}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/RadioInfo;->mHttpClientTest:Landroid/widget/TextView;

    .line 407
    const v1, 0x7f0a00a8

    invoke-virtual {p0, v1}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/android/settings/RadioInfo;->preferredNetworkType:Landroid/widget/Spinner;

    .line 408
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x1090008

    iget-object v2, p0, Lcom/android/settings/RadioInfo;->mPreferredNetworkLabels:[Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 410
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v1, 0x1090009

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 411
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->preferredNetworkType:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 412
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->preferredNetworkType:Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/android/settings/RadioInfo;->mPreferredNetworkHandler:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 414
    const v1, 0x7f0a00ac

    invoke-virtual {p0, v1}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/RadioInfo;->radioPowerButton:Landroid/widget/Button;

    .line 415
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->radioPowerButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/settings/RadioInfo;->mPowerButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 417
    const v1, 0x7f0a00ab

    invoke-virtual {p0, v1}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/RadioInfo;->qxdmLogButton:Landroid/widget/Button;

    .line 418
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->qxdmLogButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/settings/RadioInfo;->mQxdmButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 420
    const v1, 0x7f0a00a9

    invoke-virtual {p0, v1}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/RadioInfo;->cipherToggleButton:Landroid/widget/Button;

    .line 421
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->cipherToggleButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/settings/RadioInfo;->mCipherButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 422
    const v1, 0x7f0a0093

    invoke-virtual {p0, v1}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/RadioInfo;->pingTestButton:Landroid/widget/Button;

    .line 423
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->pingTestButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/settings/RadioInfo;->mPingButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 424
    const v1, 0x7f0a00ae

    invoke-virtual {p0, v1}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/RadioInfo;->updateSmscButton:Landroid/widget/Button;

    .line 425
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->updateSmscButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/settings/RadioInfo;->mUpdateSmscButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 426
    const v1, 0x7f0a00af

    invoke-virtual {p0, v1}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/RadioInfo;->refreshSmscButton:Landroid/widget/Button;

    .line 427
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->refreshSmscButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/settings/RadioInfo;->mRefreshSmscButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 428
    const v1, 0x7f0a00b1

    invoke-virtual {p0, v1}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/RadioInfo;->dnsCheckToggleButton:Landroid/widget/Button;

    .line 429
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->dnsCheckToggleButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/settings/RadioInfo;->mDnsCheckButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 431
    new-instance v1, Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    iget-object v2, p0, Lcom/android/settings/RadioInfo;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/settings/RadioInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    .line 432
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/16 v2, 0xc8

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifySignalStrength(I)V

    .line 433
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/16 v2, 0x12c

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifyServiceState(I)V

    .line 434
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifyPhoneCallState(I)V

    .line 436
    invoke-direct {p0, v3}, Lcom/android/settings/RadioInfo;->updateQxdmState(Ljava/lang/Boolean;)V

    .line 437
    new-instance v1, Lcom/android/settings/RadioInfo$OemCommands;

    invoke-direct {v1, p0, v3}, Lcom/android/settings/RadioInfo$OemCommands;-><init>(Lcom/android/settings/RadioInfo;Lcom/android/settings/RadioInfo$1;)V

    iput-object v1, p0, Lcom/android/settings/RadioInfo;->mOem:Lcom/android/settings/RadioInfo$OemCommands;

    .line 439
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/settings/RadioInfo;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 441
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/settings/RadioInfo;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3ea

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->getNeighboringCids(Landroid/os/Message;)V

    .line 444
    const-string v1, "netstat"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/INetStatService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetStatService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/RadioInfo;->netstat:Landroid/os/INetStatService;

    .line 446
    invoke-static {}, Landroid/telephony/CellLocation;->requestLocationUpdate()V

    .line 447
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 6
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 491
    const v0, 0x7f080093

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mSelectBandCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x62

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 494
    const v0, 0x7f080005

    invoke-interface {p1, v3, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mViewADNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 496
    const/4 v0, 0x2

    const v1, 0x7f080006

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mViewFDNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 498
    const/4 v0, 0x3

    const v1, 0x7f080007

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mViewSDNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 500
    const/4 v0, 0x4

    const v1, 0x7f080008

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mGetPdpList:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 502
    const/4 v0, 0x5

    const v1, 0x7f08000a

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mToggleData:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 504
    const/4 v0, 0x6

    const v1, 0x7f08000c

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mToggleDataOnBoot:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 507
    return v3
.end method

.method public onPause()V
    .registers 4

    .prologue
    .line 481
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 483
    const-string v0, "phone"

    const-string v1, "[RadioInfo] onPause: unregister phone & data intents"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->unregisterIntent()V

    .line 486
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 487
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 9
    .parameter "menu"

    .prologue
    .line 514
    const/4 v5, 0x5

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 515
    .local v0, item:Landroid/view/MenuItem;
    iget-object v5, p0, Lcom/android/settings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v2

    .line 516
    .local v2, state:I
    const/4 v4, 0x1

    .line 518
    .local v4, visible:Z
    packed-switch v2, :pswitch_data_48

    .line 527
    :pswitch_f
    const/4 v4, 0x0

    .line 530
    :goto_10
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 533
    const/4 v5, 0x6

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 534
    iget-object v5, p0, Lcom/android/settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 535
    .local v1, sp:Landroid/content/SharedPreferences;
    const-string v5, "disabled_on_boot_key"

    const/4 v6, 0x0

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 536
    .local v3, value:Z
    if-eqz v3, :cond_41

    .line 537
    const v5, 0x7f08000b

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 541
    :goto_31
    const/4 v5, 0x1

    return v5

    .line 521
    .end local v1           #sp:Landroid/content/SharedPreferences;
    .end local v3           #value:Z
    :pswitch_33
    const v5, 0x7f08000a

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_10

    .line 524
    :pswitch_3a
    const v5, 0x7f080009

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_10

    .line 539
    .restart local v1       #sp:Landroid/content/SharedPreferences;
    .restart local v3       #value:Z
    :cond_41
    const v5, 0x7f08000c

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_31

    .line 518
    :pswitch_data_48
    .packed-switch 0x0
        :pswitch_3a
        :pswitch_f
        :pswitch_33
        :pswitch_33
    .end packed-switch
.end method

.method protected onResume()V
    .registers 4

    .prologue
    .line 451
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 453
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updatePhoneState()V

    .line 454
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updateSignalStrength()V

    .line 455
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updateMessageWaiting()V

    .line 456
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updateCallRedirect()V

    .line 457
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updateServiceState()V

    .line 458
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/RadioInfo;->updateLocation(Landroid/telephony/CellLocation;)V

    .line 459
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updateDataState()V

    .line 460
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updateDataStats()V

    .line 461
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updateDataStats2()V

    .line 462
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updatePowerState()V

    .line 463
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/RadioInfo;->updateQxdmState(Ljava/lang/Boolean;)V

    .line 464
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updateProperties()V

    .line 465
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updateCiphState()V

    .line 466
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updateDnsCheckState()V

    .line 468
    const-string v0, "phone"

    const-string v1, "[RadioInfo] onResume: register phone & data intents"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->registerIntent()V

    .line 471
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0xdc

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 477
    return-void
.end method
