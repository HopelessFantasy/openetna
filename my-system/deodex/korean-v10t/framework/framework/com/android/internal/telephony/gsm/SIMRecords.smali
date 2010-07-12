.class public final Lcom/android/internal/telephony/gsm/SIMRecords;
.super Lcom/android/internal/telephony/IccRecords;
.source "SIMRecords.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/SIMRecords$1;,
        Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;
    }
.end annotation


# static fields
.field public static ADN_NAME_MAX:I = 0x0

.field public static ADN_REC_NUM:I = 0x0

.field static ADNsRecNum:[I = null

.field private static final CBMI_LENGTH_IN_BYTES:I = 0x2

.field static final CFF_LINE1_MASK:I = 0xf

.field static final CFF_LINE1_RESET:I = 0xf0

.field static final CFF_LINE2_MASK:I = 0xf0

.field static final CFF_LINE2_RESET:I = 0xf

.field static final CFF_UNCONDITIONAL_ACTIVE:I = 0xa

.field static final CFF_UNCONDITIONAL_ACTIVE_LINE2:I = 0xa0

.field static final CFF_UNCONDITIONAL_DEACTIVE:I = 0x5

.field static final CFF_UNCONDITIONAL_DEACTIVE_LINE2:I = 0x50

.field private static final CPHS_SST_MBN_ENABLED:I = 0x30

.field private static final CPHS_SST_MBN_MASK:I = 0x30

.field private static final CRASH_RIL:Z = false

.field static final CSP_TAG:Ljava/lang/String; = "CSP SIM Records"

.field private static final DBG:Z = true

.field static EF_ADNs:[I = null

.field static final EONS_ALG:I = 0x1

.field private static EONS_DISABLED:I = 0x0

.field static final EONS_TAG:Ljava/lang/String; = "EONS"

.field private static final EVENT_AUTO_SELECT_DONE:I = 0x12c

.field private static final EVENT_FAST_GET_ICCID_DONE:I = 0x2b

.field private static final EVENT_GET_ADNS_RECORD_SIZE_DONE:I = 0x30

.field private static final EVENT_GET_AD_DONE:I = 0x9

.field private static final EVENT_GET_ALL_OPL_RECORDS_DONE:I = 0x21

.field private static final EVENT_GET_ALL_PBR_DONE:I = 0x2f

.field private static final EVENT_GET_ALL_PNN_RECORDS_DONE:I = 0x23

.field private static final EVENT_GET_ALL_SMS_DONE:I = 0x12

.field private static final EVENT_GET_CBMID_DONE:I = 0x32

.field private static final EVENT_GET_CBMIR_DONE:I = 0x33

.field private static final EVENT_GET_CBMI_DONE:I = 0x31

.field private static final EVENT_GET_CFF_DONE:I = 0x18

.field private static final EVENT_GET_CFIS_DONE:I = 0x20

.field private static final EVENT_GET_CPHS_MAILBOX_DONE:I = 0xb

.field private static final EVENT_GET_CSP_CPHS_DONE:I = 0x22

.field private static final EVENT_GET_ECC_DONE:I = 0x25

.field private static final EVENT_GET_GID1_DONE:I = 0x29

.field private static final EVENT_GET_ICCID_DONE:I = 0x4

.field private static final EVENT_GET_IMSI_DONE:I = 0x3

.field private static final EVENT_GET_INFO_CPHS_DONE:I = 0x1a

.field private static final EVENT_GET_MBDN_DONE:I = 0x6

.field private static final EVENT_GET_MBI_DONE:I = 0x5

.field private static final EVENT_GET_MSISDN_DONE:I = 0xa

.field private static final EVENT_GET_MWIS_DONE:I = 0x7

.field private static final EVENT_GET_PBR_DONE:I = 0x2e

.field private static final EVENT_GET_PBR_RECORD_SIZE_DONE:I = 0x2d

.field private static final EVENT_GET_PNN_DONE:I = 0xf

.field private static final EVENT_GET_SMS_DONE:I = 0x16

.field private static final EVENT_GET_SPDI_DONE:I = 0xd

.field private static final EVENT_GET_SPN_DONE:I = 0xc

.field private static final EVENT_GET_SST_DONE:I = 0x11

.field private static final EVENT_GET_VOICE_MAIL_INDICATOR_CPHS_DONE:I = 0x8

.field private static final EVENT_MARK_SMS_READ_DONE:I = 0x13

.field private static final EVENT_RADIO_AVAILABLE:I = 0x2c

.field private static final EVENT_RADIO_OFF_OR_NOT_AVAILABLE:I = 0x2

.field private static final EVENT_SET_CPHS_MAILBOX_DONE:I = 0x19

.field private static final EVENT_SET_MBDN_DONE:I = 0x14

.field private static final EVENT_SET_MSISDN_DONE:I = 0x1e

.field private static final EVENT_SIM_INSERTED:I = 0x24

.field private static final EVENT_SIM_READY:I = 0x1

.field private static final EVENT_SIM_REFRESH:I = 0x1f

.field private static final EVENT_SMS_ON_SIM:I = 0x15

.field private static final EVENT_UPDATE_DONE:I = 0xe

.field public static FDN_NAME_MAX:I = 0x0

.field public static FDN_REC_NUM:I = 0x0

.field static final LOG_TAG:Ljava/lang/String; = "GSM"

.field private static NOT_INITIALIZED:I = 0x0

.field private static ONLY_PNN_ENABLED:I = 0x0

.field private static PNN_OPL_ENABLED:I = 0x0

.field static final SPN_RULE_SHOW_PLMN:I = 0x2

.field static final SPN_RULE_SHOW_SPN:I = 0x1

.field static final TAG_FULL_NETWORK_NAME:I = 0x43

.field static final TAG_SHORT_NETWORK_NAME:I = 0x45

.field static final TAG_SPDI_PLMN_LIST:I = 0x80

.field private static final TIMEZONE_PROPERTY:Ljava/lang/String; = "persist.sys.timezone"

.field private static final VOICE_MESSAGE_WAITING_CPHS_CLEAR:I = 0x0

.field private static final VOICE_MESSAGE_WAITING_CPHS_LINE1:I = 0x1

.field private static final VOICE_MESSAGE_WAITING_CPHS_LINE1_LINE2:I = 0x3

.field private static final VOICE_MESSAGE_WAITING_CPHS_LINE2:I = 0x2

.field static cacheADNRecNum:I = 0x0

.field static countADN:I = 0x0

.field public static ecc_list:Ljava/lang/String; = null

.field public static fdn_list:Ljava/lang/String; = null

.field static final maxADNNum:I = 0x4

.field public static sim_type:I = 0x0

.field static final type1:I = 0xa8

.field static final type2:I = 0xa9

.field static final type3:I = 0xaa

.field public static usim_ecc_list:Ljava/lang/String;

.field static validADNNum:I


# instance fields
.field PBRrecordSize:[I

.field callForwardingEnabled:Z

.field callForwardingEnabledLine2:Z

.field cbmiList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field countVoiceMessages_line1:I

.field countVoiceMessages_line2:I

.field countrycode:Ljava/lang/String;

.field private cspCphsInfo:[B

.field cspPlmn:I

.field efCBMI:[B

.field efCPHS_MWI:[B

.field efMWIS:[B

.field ef_gid1_value:Ljava/lang/String;

.field ef_iccid_value:Ljava/lang/String;

.field ef_imsi_value:Ljava/lang/String;

.field ef_spn_value:Ljava/lang/String;

.field gid1:Ljava/lang/String;

.field iccid:Ljava/lang/String;

.field iccidLoadCompleted:Z

.field iccidLoadedRegistrants:Landroid/os/RegistrantList;

.field imsi:Ljava/lang/String;

.field isVoiceMailFixed:Z

.field private mContext:Landroid/content/Context;

.field private mCphsInfo:[B

.field mEfCff:[B

.field mEfCfis:[B

.field mSpnOverride:Lcom/android/internal/telephony/gsm/SpnOverride;

.field mVmConfig:Lcom/android/internal/telephony/gsm/VoiceMailConstants;

.field msisdn:Ljava/lang/String;

.field msisdnTag:Ljava/lang/String;

.field newVoiceMailNum:Ljava/lang/String;

.field newVoiceMailTag:Ljava/lang/String;

.field operator:Ljava/lang/String;

.field oplCache:Ljava/util/ArrayList;

.field oplDataLac1:I

.field oplDataLac2:I

.field oplDataPnnNum:S

.field oplDataPresent:Z

.field oplList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field pnnCache:Ljava/util/ArrayList;

.field pnnDataLongName:Ljava/lang/String;

.field pnnDataPresent:Z

.field pnnDataShortName:Ljava/lang/String;

.field pnnHomeName:Ljava/lang/String;

.field pnnList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field spdiNetworks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field spnDisplayCondition:I

.field private spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

.field sstPlmnOplValue:I

.field voiceMailNum:Ljava/lang/String;

.field voiceMailTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 123
    sput v1, Lcom/android/internal/telephony/gsm/SIMRecords;->sim_type:I

    .line 124
    sput-object v0, Lcom/android/internal/telephony/gsm/SIMRecords;->ecc_list:Ljava/lang/String;

    .line 127
    sput-object v0, Lcom/android/internal/telephony/gsm/SIMRecords;->usim_ecc_list:Ljava/lang/String;

    .line 141
    sput-object v0, Lcom/android/internal/telephony/gsm/SIMRecords;->fdn_list:Ljava/lang/String;

    .line 147
    sput v1, Lcom/android/internal/telephony/gsm/SIMRecords;->ADN_NAME_MAX:I

    .line 148
    sput v1, Lcom/android/internal/telephony/gsm/SIMRecords;->FDN_NAME_MAX:I

    .line 152
    sput v1, Lcom/android/internal/telephony/gsm/SIMRecords;->ADN_REC_NUM:I

    .line 153
    sput v1, Lcom/android/internal/telephony/gsm/SIMRecords;->FDN_REC_NUM:I

    .line 189
    sput-object v0, Lcom/android/internal/telephony/gsm/SIMRecords;->EF_ADNs:[I

    .line 190
    sput-object v0, Lcom/android/internal/telephony/gsm/SIMRecords;->ADNsRecNum:[I

    .line 191
    sput v1, Lcom/android/internal/telephony/gsm/SIMRecords;->validADNNum:I

    .line 192
    sput v1, Lcom/android/internal/telephony/gsm/SIMRecords;->countADN:I

    .line 193
    sput v1, Lcom/android/internal/telephony/gsm/SIMRecords;->cacheADNRecNum:I

    .line 327
    const/4 v0, -0x1

    sput v0, Lcom/android/internal/telephony/gsm/SIMRecords;->NOT_INITIALIZED:I

    .line 328
    sput v1, Lcom/android/internal/telephony/gsm/SIMRecords;->EONS_DISABLED:I

    .line 329
    const/4 v0, 0x1

    sput v0, Lcom/android/internal/telephony/gsm/SIMRecords;->PNN_OPL_ENABLED:I

    .line 330
    const/4 v0, 0x2

    sput v0, Lcom/android/internal/telephony/gsm/SIMRecords;->ONLY_PNN_ENABLED:I

    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .registers 7
    .parameter "p"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 437
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccRecords;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    .line 80
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccidLoadedRegistrants:Landroid/os/RegistrantList;

    .line 81
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccidLoadCompleted:Z

    .line 95
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->msisdn:Ljava/lang/String;

    .line 96
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->msisdnTag:Ljava/lang/String;

    .line 97
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->voiceMailNum:Ljava/lang/String;

    .line 98
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->voiceMailTag:Ljava/lang/String;

    .line 99
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->newVoiceMailNum:Ljava/lang/String;

    .line 100
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->newVoiceMailTag:Ljava/lang/String;

    .line 101
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isVoiceMailFixed:Z

    .line 103
    iput v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->countVoiceMessages_line1:I

    .line 104
    iput v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->countVoiceMessages_line2:I

    .line 131
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->countrycode:Ljava/lang/String;

    .line 132
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->operator:Ljava/lang/String;

    .line 137
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->callForwardingEnabledLine2:Z

    .line 165
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCphsInfo:[B

    .line 166
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->cspCphsInfo:[B

    .line 167
    iput v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->cspPlmn:I

    .line 169
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    .line 170
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efCPHS_MWI:[B

    .line 171
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    .line 172
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    .line 174
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efCBMI:[B

    .line 180
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spdiNetworks:Ljava/util/ArrayList;

    .line 183
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->cbmiList:Ljava/util/ArrayList;

    .line 188
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->PBRrecordSize:[I

    .line 200
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->pnnHomeName:Ljava/lang/String;

    .line 203
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->ef_imsi_value:Ljava/lang/String;

    .line 204
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->ef_iccid_value:Ljava/lang/String;

    .line 205
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->ef_spn_value:Ljava/lang/String;

    .line 206
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->ef_gid1_value:Ljava/lang/String;

    .line 210
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->oplList:Ljava/util/ArrayList;

    .line 211
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->pnnList:Ljava/util/ArrayList;

    .line 439
    new-instance v0, Lcom/android/internal/telephony/AdnRecordCache;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/AdnRecordCache;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    .line 441
    new-instance v0, Lcom/android/internal/telephony/gsm/VoiceMailConstants;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/VoiceMailConstants;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/gsm/VoiceMailConstants;

    .line 442
    new-instance v0, Lcom/android/internal/telephony/gsm/SpnOverride;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/SpnOverride;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSpnOverride:Lcom/android/internal/telephony/gsm/SpnOverride;

    .line 444
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsRequested:Z

    .line 447
    iput v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 450
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->countrycode:Ljava/lang/String;

    if-eqz v0, :cond_6e

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->operator:Ljava/lang/String;

    if-nez v0, :cond_7a

    .line 452
    :cond_6e
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->countrycode:Ljava/lang/String;

    .line 453
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getOperatorCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->operator:Ljava/lang/String;

    .line 456
    :cond_7a
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->countrycode:Ljava/lang/String;

    const-string v1, "BR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_bf

    .line 457
    const-string v0, "112,911,190"

    sput-object v0, Lcom/android/internal/telephony/gsm/SIMRecords;->ecc_list:Ljava/lang/String;

    .line 468
    :goto_88
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x2c

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 472
    iget-object v0, p1, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0, v4, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForSIMReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 473
    iget-object v0, p1, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x2

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 475
    iget-object v0, p1, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x15

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnSmsOnSim(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 476
    iget-object v0, p1, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x1f

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 479
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x24

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnSimInserted(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 483
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->onRadioOffOrNotAvailable()V

    .line 487
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getmContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mContext:Landroid/content/Context;

    .line 490
    return-void

    .line 458
    :cond_bf
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->countrycode:Ljava/lang/String;

    const-string v1, "MX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ce

    .line 459
    const-string v0, "112,911,060"

    sput-object v0, Lcom/android/internal/telephony/gsm/SIMRecords;->ecc_list:Ljava/lang/String;

    goto :goto_88

    .line 460
    :cond_ce
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->countrycode:Ljava/lang/String;

    const-string v1, "KR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_dd

    .line 461
    const-string v0, "112,119,911,122,113,125,127,111"

    sput-object v0, Lcom/android/internal/telephony/gsm/SIMRecords;->ecc_list:Ljava/lang/String;

    goto :goto_88

    .line 463
    :cond_dd
    const-string v0, "112,911"

    sput-object v0, Lcom/android/internal/telephony/gsm/SIMRecords;->ecc_list:Ljava/lang/String;

    goto :goto_88
.end method

.method private cachingOplData(Ljava/util/ArrayList;)V
    .registers 10
    .parameter "messages"

    .prologue
    const-string v7, "EONS"

    .line 3468
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3469
    .local v1, count:I
    const/4 v3, 0x0

    .line 3471
    .local v3, ind:I
    const-string v5, "EONS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Number of OPL records = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3472
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->oplList:Ljava/util/ArrayList;

    .line 3474
    const/4 v3, 0x0

    :goto_27
    if-ge v3, v1, :cond_61

    .line 3475
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    move-object v0, v5

    check-cast v0, [B

    move-object v2, v0

    .line 3476
    .local v2, data:[B
    invoke-static {v2}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    .line 3478
    .local v4, oplhexdata:Ljava/lang/String;
    const-string v5, "EONS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EF_OPL data["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3479
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->oplList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3474
    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    .line 3481
    .end local v2           #data:[B
    .end local v4           #oplhexdata:Ljava/lang/String;
    :cond_61
    return-void
.end method

.method private cachingPnnData(Ljava/util/ArrayList;)V
    .registers 13
    .parameter "messages"

    .prologue
    const/4 v10, 0x1

    const/4 v9, -0x1

    const-string v8, "EONS"

    .line 3484
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3485
    .local v1, count:I
    const/4 v3, 0x0

    .line 3489
    .local v3, ind:I
    const-string v6, "EONS"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Number of PNN records = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3490
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->pnnList:Ljava/util/ArrayList;

    .line 3492
    const/4 v3, 0x0

    :goto_29
    if-ge v3, v1, :cond_b2

    .line 3493
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    move-object v0, v6

    check-cast v0, [B

    move-object v2, v0

    .line 3495
    .local v2, data:[B
    const-string v6, "EONS"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EF_PNN data["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3497
    const/4 v6, 0x0

    aget-byte v6, v2, v6

    if-eq v6, v9, :cond_a3

    aget-byte v6, v2, v10

    if-eq v6, v9, :cond_a3

    .line 3499
    aget-byte v4, v2, v10

    .line 3500
    .local v4, length:B
    const-string v6, "EONS"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PNN longname length : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3502
    const/4 v6, 0x2

    invoke-static {v2, v6, v4}, Lcom/android/internal/telephony/IccUtils;->networkNameToString([BII)Ljava/lang/String;

    move-result-object v5

    .line 3503
    .local v5, pnnName:Ljava/lang/String;
    const-string v6, "EONS"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PNN longname : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3505
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->pnnList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3492
    .end local v4           #length:B
    .end local v5           #pnnName:Ljava/lang/String;
    :goto_a0
    add-int/lit8 v3, v3, 0x1

    goto :goto_29

    .line 3509
    :cond_a3
    const-string v6, "EONS"

    const-string v6, "EF_PNN: Invalid EF_PNN Data"

    invoke-static {v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3510
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->pnnList:Ljava/util/ArrayList;

    const-string v7, "FFFF"

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a0

    .line 3513
    .end local v2           #data:[B
    :cond_b2
    return-void
.end method

.method private displayEonsName(I)V
    .registers 20
    .parameter "flag"

    .prologue
    .line 3358
    const/4 v6, 0x0

    .line 3360
    .local v6, count:I
    const/4 v10, 0x0

    .line 3361
    .local v10, ind:I
    const/4 v15, 0x6

    new-array v14, v15, [I

    fill-array-data v14, :array_316

    .line 3362
    .local v14, simPlmn:[I
    const/4 v15, 0x6

    new-array v4, v15, [I

    fill-array-data v4, :array_326

    .line 3363
    .local v4, bcchPlmn:[I
    const/4 v5, 0x0

    .line 3366
    .local v5, bcchPlmnLength:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->oplCache:Ljava/util/ArrayList;

    move-object v15, v0

    if-nez v15, :cond_1e

    .line 3369
    const-string v15, "EONS"

    const-string v16, "oplCache is null."

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3465
    .end local p1
    :cond_1d
    :goto_1d
    return-void

    .line 3372
    .restart local p1
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->oplCache:Ljava/util/ArrayList;

    move-object v15, v0

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 3373
    const/4 v15, 0x1

    move/from16 v0, p1

    move v1, v15

    if-ne v0, v1, :cond_57

    .line 3374
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    move-object v15, v0

    iget-object v15, v15, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    invoke-virtual {v15}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v13

    .line 3380
    .local v13, regOperator:Ljava/lang/String;
    :goto_40
    if-eqz v13, :cond_4c

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    if-nez v15, :cond_6b

    .line 3381
    :cond_4c
    const-string v15, "EONS"

    const-string v16, "Registered operator is null or empty."

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3382
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->useMEName()V

    goto :goto_1d

    .line 3376
    .end local v13           #regOperator:Ljava/lang/String;
    .restart local p1
    :cond_57
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    move-object v15, v0

    iget-object v15, v15, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v15}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v13

    .restart local v13       #regOperator:Ljava/lang/String;
    goto :goto_40

    .line 3386
    :cond_6b
    const-string v15, "EONS"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Number of OPL records = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3387
    const/4 v15, 0x1

    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->oplDataPresent:Z

    .line 3388
    const/4 v9, -0x1

    .line 3389
    .local v9, hLac:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/android/internal/telephony/PhoneBase;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v12

    check-cast v12, Landroid/telephony/gsm/GsmCellLocation;

    .line 3390
    .local v12, loc:Landroid/telephony/gsm/GsmCellLocation;
    if-eqz v12, :cond_9e

    invoke-virtual {v12}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v9

    .line 3391
    :cond_9e
    const/4 v15, -0x1

    if-ne v9, v15, :cond_aa

    .line 3392
    const-string v15, "EONS"

    const-string v16, "Registered Lac is -1."

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1d

    .line 3397
    :cond_aa
    const/4 v10, 0x0

    :goto_ab
    if-ge v10, v6, :cond_215

    .line 3398
    :try_start_ad
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->oplCache:Ljava/util/ArrayList;

    move-object v15, v0

    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    move-object/from16 v0, p1

    check-cast v0, [B

    move-object v7, v0

    .line 3401
    .local v7, data:[B
    const/4 v15, 0x0

    const/16 v16, 0x0

    aget-byte v16, v7, v16

    and-int/lit8 v16, v16, 0xf

    aput v16, v14, v15

    .line 3402
    const/4 v15, 0x1

    const/16 v16, 0x0

    aget-byte v16, v7, v16

    shr-int/lit8 v16, v16, 0x4

    and-int/lit8 v16, v16, 0xf

    aput v16, v14, v15

    .line 3403
    const/4 v15, 0x2

    const/16 v16, 0x1

    aget-byte v16, v7, v16

    and-int/lit8 v16, v16, 0xf

    aput v16, v14, v15

    .line 3404
    const/4 v15, 0x3

    const/16 v16, 0x2

    aget-byte v16, v7, v16

    and-int/lit8 v16, v16, 0xf

    aput v16, v14, v15

    .line 3405
    const/4 v15, 0x4

    const/16 v16, 0x2

    aget-byte v16, v7, v16

    shr-int/lit8 v16, v16, 0x4

    and-int/lit8 v16, v16, 0xf

    aput v16, v14, v15

    .line 3406
    const/4 v15, 0x5

    const/16 v16, 0x1

    aget-byte v16, v7, v16

    shr-int/lit8 v16, v16, 0x4

    and-int/lit8 v16, v16, 0xf

    aput v16, v14, v15

    .line 3409
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v5

    .line 3410
    const/4 v11, 0x0

    .local v11, ind1:I
    :goto_fe
    if-ge v11, v5, :cond_10d

    .line 3411
    invoke-virtual {v13, v11}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v16, 0x30

    sub-int v15, v15, v16

    aput v15, v4, v11

    .line 3410
    add-int/lit8 v11, v11, 0x1

    goto :goto_fe

    .line 3415
    :cond_10d
    const/4 v15, 0x3

    aget-byte v15, v7, v15

    and-int/lit16 v15, v15, 0xff

    shl-int/lit8 v15, v15, 0x8

    const/16 v16, 0x4

    aget-byte v16, v7, v16

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    or-int v15, v15, v16

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->oplDataLac1:I

    .line 3416
    const/4 v15, 0x5

    aget-byte v15, v7, v15

    and-int/lit16 v15, v15, 0xff

    shl-int/lit8 v15, v15, 0x8

    const/16 v16, 0x6

    aget-byte v16, v7, v16

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    or-int v15, v15, v16

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->oplDataLac2:I

    .line 3417
    const/4 v15, 0x7

    aget-byte v15, v7, v15

    and-int/lit16 v15, v15, 0xff

    int-to-short v15, v15

    move v0, v15

    move-object/from16 v1, p0

    iput-short v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->oplDataPnnNum:S

    .line 3418
    const-string v15, "EONS"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "lac1="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->oplDataLac1:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " lac2="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->oplDataLac2:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " hLac="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " pnn rec="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->oplDataPnnNum:S

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3421
    move-object/from16 v0, p0

    move-object v1, v14

    move-object v2, v4

    move v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->matchSimPlmn([I[II)Z

    move-result v15

    if-eqz v15, :cond_294

    .line 3423
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->oplDataLac1:I

    move v15, v0

    if-gt v15, v9, :cond_234

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->oplDataLac2:I

    move v15, v0

    if-gt v9, v15, :cond_234

    .line 3424
    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->oplDataPnnNum:S

    move v15, v0

    if-lez v15, :cond_223

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->oplDataPnnNum:S

    move v15, v0

    const/16 v16, 0xff

    move v0, v15

    move/from16 v1, v16

    if-ge v0, v1, :cond_223

    .line 3429
    const-string v15, "EONS"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, " lac1="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->oplDataLac1:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " lac2="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->oplDataLac2:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " hLac="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " pnn rec="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->oplDataPnnNum:S

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3431
    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->oplDataPnnNum:S

    move v15, v0

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->getNameFromPnnRecord(I)V
    :try_end_215
    .catch Ljava/lang/Exception; {:try_start_ad .. :try_end_215} :catch_276

    .line 3459
    .end local v7           #data:[B
    .end local v11           #ind1:I
    :cond_215
    :goto_215
    if-lt v10, v6, :cond_1d

    .line 3462
    const-string v15, "EONS"

    const-string v16, "No matching OPL record found, using default method"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3463
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->useMEName()V

    goto/16 :goto_1d

    .line 3435
    .restart local v7       #data:[B
    .restart local v11       #ind1:I
    :cond_223
    const/4 v15, 0x0

    :try_start_224
    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->oplDataPresent:Z

    .line 3436
    const-string v15, "LOG_TAG"

    const-string v16, "PNN record number in EF_OPL is not valid"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3397
    :goto_230
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_ab

    .line 3441
    :cond_234
    const/4 v15, 0x0

    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->oplDataPresent:Z

    .line 3442
    const-string v15, "EONS"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "HLAC is not with in range of EF_OPL\'s LACs,ignoring pnn data, hLac="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " lac1="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->oplDataLac1:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " lac2="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->oplDataLac2:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_275
    .catch Ljava/lang/Exception; {:try_start_224 .. :try_end_275} :catch_276

    goto :goto_230

    .line 3455
    .end local v7           #data:[B
    .end local v11           #ind1:I
    :catch_276
    move-exception v15

    move-object v8, v15

    .line 3456
    .local v8, e:Ljava/lang/Exception;
    const-string v15, "EONS"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Exception while processing OPL data "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_215

    .line 3448
    .end local v8           #e:Ljava/lang/Exception;
    .restart local v7       #data:[B
    .restart local v11       #ind1:I
    :cond_294
    const/4 v15, 0x0

    :try_start_295
    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->oplDataPresent:Z

    .line 3449
    const-string v15, "EONS"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "plmn in EF_OPL doesnot match reg plmn,ignoring pnn data sim plmn "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const/16 v17, 0x0

    aget v17, v14, v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const/16 v17, 0x1

    aget v17, v14, v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const/16 v17, 0x2

    aget v17, v14, v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const/16 v17, 0x3

    aget v17, v14, v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const/16 v17, 0x4

    aget v17, v14, v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const/16 v17, 0x5

    aget v17, v14, v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ",bcch plmn "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const/16 v17, 0x0

    aget v17, v4, v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const/16 v17, 0x1

    aget v17, v4, v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const/16 v17, 0x2

    aget v17, v4, v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const/16 v17, 0x3

    aget v17, v4, v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const/16 v17, 0x4

    aget v17, v4, v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const/16 v17, 0x5

    aget v17, v4, v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_314
    .catch Ljava/lang/Exception; {:try_start_295 .. :try_end_314} :catch_276

    goto/16 :goto_230

    .line 3361
    :array_316
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 3362
    :array_326
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private fetchSimRecords()V
    .registers 10

    .prologue
    const/4 v4, 0x4

    const/4 v8, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v7, "[RIAN]"

    .line 2866
    iput-boolean v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsRequested:Z

    .line 2867
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    .line 2869
    .local v0, iccFh:Lcom/android/internal/telephony/IccFileHandler;
    iput-object v8, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->PBRrecordSize:[I

    .line 2870
    sput-object v8, Lcom/android/internal/telephony/gsm/SIMRecords;->EF_ADNs:[I

    .line 2871
    sput-object v8, Lcom/android/internal/telephony/gsm/SIMRecords;->ADNsRecNum:[I

    .line 2872
    sput v5, Lcom/android/internal/telephony/gsm/SIMRecords;->validADNNum:I

    .line 2873
    sput v5, Lcom/android/internal/telephony/gsm/SIMRecords;->countADN:I

    .line 2874
    sput v5, Lcom/android/internal/telephony/gsm/SIMRecords;->cacheADNRecNum:I

    .line 2876
    sput v5, Lcom/android/internal/telephony/gsm/SIMRecords;->ADN_NAME_MAX:I

    .line 2877
    sput v5, Lcom/android/internal/telephony/gsm/SIMRecords;->FDN_NAME_MAX:I

    .line 2878
    sput v5, Lcom/android/internal/telephony/gsm/SIMRecords;->ADN_REC_NUM:I

    .line 2879
    sput v5, Lcom/android/internal/telephony/gsm/SIMRecords;->FDN_REC_NUM:I

    .line 2882
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SIMRecords:fetchSimRecords "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2884
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->getIMSI(Landroid/os/Message;)V

    .line 2885
    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 2887
    const/16 v1, 0x2fe2

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2888
    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 2893
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const/16 v2, 0x6f3e

    const/16 v3, 0x29

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/PhoneBase;->LGEIccLoadEFTransparent(ILandroid/os/Message;)V

    .line 2898
    const/16 v1, 0x6f45

    const/16 v2, 0x31

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2899
    const-string v1, "[RIAN]"

    const-string v1, "SIMRecords:fetchSimRecords: EF_CBMI "

    invoke-static {v7, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2900
    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 2901
    const-string v1, "[RIAN]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SIMRecords:fetchSimRecords "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2904
    const-string v1, "[RIAN]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "iccid   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2906
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccid:Ljava/lang/String;

    if-nez v1, :cond_d2

    .line 2909
    const-string v1, "[RIAN]"

    const-string v1, "SIMRecords:fetchSimRecords (1) "

    invoke-static {v7, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2913
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const/16 v2, 0x2fe2

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/PhoneBase;->LGEIccLoadEFTransparent(ILandroid/os/Message;)V

    .line 2914
    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 2918
    :cond_d2
    const-string v1, "[RIAN]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SIMRecords:fetchSimRecords (2) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2922
    new-instance v1, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    const/16 v2, 0x6f40

    const/16 v3, 0x6f4a

    const/16 v4, 0xa

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v6, v4}, Lcom/android/internal/telephony/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    .line 2924
    const-string v1, "[RIAN]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SIMRecords:fetchSimRecords (3)  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2925
    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 2929
    const-string v1, "GSM"

    const-string v2, "[pjman 3G PB] PBR read request [Get record size -> Read record"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2932
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const/16 v2, 0x4f30

    const/16 v3, 0x2d

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/PhoneBase;->LGEgetEFLinearRecordSize(ILandroid/os/Message;)V

    .line 2934
    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 2938
    const/16 v1, 0x6fc9

    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v6, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 2939
    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 2941
    const/16 v1, 0x6fad

    const/16 v2, 0x9

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2942
    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 2945
    const/16 v1, 0x6fca

    const/4 v2, 0x7

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v6, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 2946
    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 2953
    const/16 v1, 0x6f11

    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2956
    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 2960
    const/16 v1, 0x6fcb

    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v6, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 2961
    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 2962
    const/16 v1, 0x6f13

    const/16 v2, 0x18

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2963
    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 2966
    invoke-direct {p0, v6, v8}, Lcom/android/internal/telephony/gsm/SIMRecords;->getSpnFsm(ZLandroid/os/AsyncResult;)V

    .line 2968
    const/16 v1, 0x6fcd

    const/16 v2, 0xd

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2969
    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 2971
    const/16 v1, 0x6fc5

    const/16 v2, 0xf

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v6, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 2973
    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 2976
    const/16 v1, 0x6f16

    const/16 v2, 0x1a

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2977
    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 2979
    const-string v1, "EONS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Properties persist.cust.tel.adapt is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "persist.cust.tel.adapt"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", persist.cust.tel.eons is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "persist.cust.tel.eons"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", persist.cust.tel.efcsp.plmn is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "persist.cust.tel.efcsp.plmn"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2987
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->updateOplCache()V

    .line 2990
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->updatePnnCache()V

    .line 2993
    const/16 v1, 0x6f38

    const/16 v2, 0x11

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2994
    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 2996
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->useEfCspPlmn()Z

    move-result v1

    if-eqz v1, :cond_240

    .line 2997
    const/16 v1, 0x6f15

    const/16 v2, 0x22

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2999
    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 3021
    :cond_240
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->setTimeforSMSonSIM(J)V

    .line 3024
    return-void
.end method

.method public static getADN_NAME_MAX()I
    .registers 1

    .prologue
    .line 396
    sget v0, Lcom/android/internal/telephony/gsm/SIMRecords;->ADN_NAME_MAX:I

    return v0
.end method

.method public static getADN_REC_NUM()I
    .registers 1

    .prologue
    .line 406
    sget v0, Lcom/android/internal/telephony/gsm/SIMRecords;->ADN_REC_NUM:I

    return v0
.end method

.method public static getADNsRecNum(I)I
    .registers 2
    .parameter "index"

    .prologue
    .line 361
    sget-object v0, Lcom/android/internal/telephony/gsm/SIMRecords;->ADNsRecNum:[I

    aget v0, v0, p0

    return v0
.end method

.method public static getCacheADNRecNum()I
    .registers 1

    .prologue
    .line 346
    sget v0, Lcom/android/internal/telephony/gsm/SIMRecords;->cacheADNRecNum:I

    return v0
.end method

.method public static getCountADN()I
    .registers 1

    .prologue
    .line 341
    sget v0, Lcom/android/internal/telephony/gsm/SIMRecords;->countADN:I

    return v0
.end method

.method public static getEF_ADNs(I)I
    .registers 2
    .parameter "index"

    .prologue
    .line 356
    sget-object v0, Lcom/android/internal/telephony/gsm/SIMRecords;->EF_ADNs:[I

    aget v0, v0, p0

    return v0
.end method

.method private getEonsNameFromPnn(Ljava/lang/String;)Ljava/lang/String;
    .registers 21
    .parameter "plmn"

    .prologue
    .line 3741
    const/4 v12, 0x0

    .line 3742
    .local v12, name:Ljava/lang/String;
    const/4 v6, 0x0

    .line 3743
    .local v6, count:I
    const/4 v10, 0x0

    .line 3744
    .local v10, ind:I
    const/16 v16, 0x6

    move/from16 v0, v16

    new-array v0, v0, [I

    move-object v15, v0

    fill-array-data v15, :array_184

    .line 3745
    .local v15, simPlmn:[I
    const/16 v16, 0x6

    move/from16 v0, v16

    new-array v0, v0, [I

    move-object v4, v0

    fill-array-data v4, :array_194

    .line 3746
    .local v4, bcchPlmn:[I
    const/4 v5, 0x0

    .line 3747
    .local v5, bcchPlmnLength:I
    const/4 v14, 0x0

    .line 3748
    .local v14, recNum:S
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->oplCache:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    if-nez v16, :cond_2a

    .line 3749
    const-string v16, "EONS"

    const-string v17, "getEonsNameFromPnn() oplCache is null."

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v13, v12

    .line 3794
    .end local v12           #name:Ljava/lang/String;
    .end local p0
    .local v13, name:Ljava/lang/String;
    :goto_29
    return-object v13

    .line 3752
    .end local v13           #name:Ljava/lang/String;
    .restart local v12       #name:Ljava/lang/String;
    .restart local p0
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->oplCache:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 3753
    const-string v16, "EONS"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "getEonsNameFromPnn() Number of OPL records = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3755
    const/4 v10, 0x0

    :goto_50
    if-ge v10, v6, :cond_fa

    .line 3756
    :try_start_52
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->oplCache:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    check-cast v7, [B

    .line 3758
    .local v7, data:[B
    const/16 v16, 0x0

    const/16 v17, 0x0

    aget-byte v17, v7, v17

    and-int/lit8 v17, v17, 0xf

    aput v17, v15, v16

    .line 3759
    const/16 v16, 0x1

    const/16 v17, 0x0

    aget-byte v17, v7, v17

    shr-int/lit8 v17, v17, 0x4

    and-int/lit8 v17, v17, 0xf

    aput v17, v15, v16

    .line 3760
    const/16 v16, 0x2

    const/16 v17, 0x1

    aget-byte v17, v7, v17

    and-int/lit8 v17, v17, 0xf

    aput v17, v15, v16

    .line 3761
    const/16 v16, 0x3

    const/16 v17, 0x2

    aget-byte v17, v7, v17

    and-int/lit8 v17, v17, 0xf

    aput v17, v15, v16

    .line 3762
    const/16 v16, 0x4

    const/16 v17, 0x2

    aget-byte v17, v7, v17

    shr-int/lit8 v17, v17, 0x4

    and-int/lit8 v17, v17, 0xf

    aput v17, v15, v16

    .line 3763
    const/16 v16, 0x5

    const/16 v17, 0x1

    aget-byte v17, v7, v17

    shr-int/lit8 v17, v17, 0x4

    and-int/lit8 v17, v17, 0xf

    aput v17, v15, v16

    .line 3765
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 3766
    const/4 v11, 0x0

    .local v11, ind1:I
    :goto_aa
    if-ge v11, v5, :cond_bc

    .line 3767
    move-object/from16 v0, p1

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v16

    const/16 v17, 0x30

    sub-int v16, v16, v17

    aput v16, v4, v11

    .line 3766
    add-int/lit8 v11, v11, 0x1

    goto :goto_aa

    .line 3770
    :cond_bc
    const/16 v16, 0x7

    aget-byte v16, v7, v16

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-short v0, v0

    move v14, v0

    .line 3771
    move-object/from16 v0, p0

    move-object v1, v15

    move-object v2, v4

    move v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->matchSimPlmn([I[II)Z

    move-result v16

    if-eqz v16, :cond_17f

    .line 3772
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->pnnCache:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    if-eqz v16, :cond_f3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->pnnCache:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    move v0, v14

    move/from16 v1, v16

    if-gt v0, v1, :cond_f3

    const/16 v16, 0x1

    move v0, v14

    move/from16 v1, v16

    if-ge v0, v1, :cond_107

    .line 3773
    :cond_f3
    const-string v16, "EONS"

    const-string v17, "getEonsNameFromPnn(), pnnCache is null/Invalid PNN Rec"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3786
    .end local v7           #data:[B
    .end local v11           #ind1:I
    .end local p0
    :cond_fa
    :goto_fa
    if-lt v10, v6, :cond_104

    .line 3787
    const-string v16, "EONS"

    const-string v17, "getEonsNameFromPnn(),No matching OPL record found"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3788
    const/4 v12, 0x0

    :cond_104
    :goto_104
    move-object v13, v12

    .line 3794
    .end local v12           #name:Ljava/lang/String;
    .restart local v13       #name:Ljava/lang/String;
    goto/16 :goto_29

    .line 3776
    .end local v13           #name:Ljava/lang/String;
    .restart local v7       #data:[B
    .restart local v11       #ind1:I
    .restart local v12       #name:Ljava/lang/String;
    .restart local p0
    :cond_107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->pnnCache:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    sub-int v17, v14, v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [B

    move-object/from16 v0, p0

    check-cast v0, [B

    move-object v8, v0

    .line 3777
    .local v8, data1:[B
    const/16 v16, 0x0

    aget-byte v16, v8, v16

    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_fa

    const/16 v16, 0x1

    aget-byte v16, v8, v16

    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_fa

    .line 3778
    const/16 v16, 0x2

    const/16 v17, 0x1

    aget-byte v17, v8, v17

    move-object v0, v8

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/IccUtils;->networkNameToString([BII)Ljava/lang/String;

    move-result-object v12

    .line 3779
    const-string v16, "EONS"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "getEonsNameFromPnn() Long Name: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15e
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_15e} :catch_15f

    goto :goto_fa

    .line 3790
    .end local v7           #data:[B
    .end local v8           #data1:[B
    .end local v11           #ind1:I
    :catch_15f
    move-exception v16

    move-object/from16 v9, v16

    .line 3791
    .local v9, e:Ljava/lang/Exception;
    const-string v16, "EONS"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "getEonsNameFromPnn(),Exception while processing OPL data "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3792
    const/4 v12, 0x0

    goto :goto_104

    .line 3755
    .end local v9           #e:Ljava/lang/Exception;
    .restart local v7       #data:[B
    .restart local v11       #ind1:I
    .restart local p0
    :cond_17f
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_50

    .line 3744
    nop

    :array_184
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 3745
    :array_194
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public static getFDN_NAME_MAX()I
    .registers 1

    .prologue
    .line 401
    sget v0, Lcom/android/internal/telephony/gsm/SIMRecords;->FDN_NAME_MAX:I

    return v0
.end method

.method private getSpnFsm(ZLandroid/os/AsyncResult;)V
    .registers 12
    .parameter "start"
    .parameter "ar"

    .prologue
    const/4 v8, 0x0

    const/16 v6, 0xc

    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v7, "gsm.sim.operator.alpha"

    .line 3100
    if-eqz p1, :cond_d

    .line 3101
    sget-object v2, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->INIT:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    .line 3104
    :cond_d
    sget-object v2, Lcom/android/internal/telephony/gsm/SIMRecords$1;->$SwitchMap$com$android$internal$telephony$gsm$SIMRecords$Get_Spn_Fsm_State:[I

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_16c

    .line 3181
    sget-object v2, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->IDLE:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    .line 3183
    :goto_1e
    return-void

    .line 3106
    :pswitch_1f
    iput-object v8, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn:Ljava/lang/String;

    .line 3108
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v2

    const/16 v3, 0x6f46

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 3110
    iget v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 3112
    sget-object v2, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->READ_SPN_3GPP:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    goto :goto_1e

    .line 3115
    :pswitch_3b
    if-eqz p2, :cond_b3

    iget-object v2, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_b3

    .line 3116
    iget-object v2, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v1, v0

    .line 3117
    .local v1, data:[B
    aget-byte v2, v1, v5

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayCondition:I

    .line 3120
    aget-byte v2, v1, v4

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xff

    if-ne v2, v3, :cond_aa

    .line 3121
    iput-object v8, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn:Ljava/lang/String;

    .line 3126
    :goto_59
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Load EF_SPN: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " spnDisplayCondition: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayCondition:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 3128
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v3, "gsm.sim.operator.alpha"

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn:Ljava/lang/String;

    invoke-virtual {v2, v7, v3}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3131
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->ef_spn_value:Ljava/lang/String;

    .line 3132
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EF SPN: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->ef_spn_value:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3135
    sget-object v2, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->IDLE:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    goto/16 :goto_1e

    .line 3124
    :cond_aa
    array-length v2, v1

    sub-int/2addr v2, v4

    invoke-static {v1, v4, v2}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn:Ljava/lang/String;

    goto :goto_59

    .line 3137
    .end local v1           #data:[B
    :cond_b3
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v2

    const/16 v3, 0x6f14

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 3139
    iget v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 3141
    sget-object v2, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->READ_SPN_CPHS:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    .line 3145
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayCondition:I

    goto/16 :goto_1e

    .line 3149
    :pswitch_d1
    if-eqz p2, :cond_10e

    iget-object v2, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_10e

    .line 3150
    iget-object v2, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v1, v0

    .line 3151
    .restart local v1       #data:[B
    array-length v2, v1

    sub-int/2addr v2, v4

    invoke-static {v1, v5, v2}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn:Ljava/lang/String;

    .line 3154
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Load EF_SPN_CPHS: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 3155
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v3, "gsm.sim.operator.alpha"

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn:Ljava/lang/String;

    invoke-virtual {v2, v7, v3}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3157
    sget-object v2, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->IDLE:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    goto/16 :goto_1e

    .line 3159
    .end local v1           #data:[B
    :cond_10e
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v2

    const/16 v3, 0x6f18

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 3161
    iget v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 3163
    sget-object v2, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->READ_SPN_SHORT_CPHS:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    goto/16 :goto_1e

    .line 3167
    :pswitch_129
    if-eqz p2, :cond_166

    iget-object v2, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_166

    .line 3168
    iget-object v2, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v1, v0

    .line 3169
    .restart local v1       #data:[B
    array-length v2, v1

    sub-int/2addr v2, v4

    invoke-static {v1, v5, v2}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn:Ljava/lang/String;

    .line 3172
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Load EF_SPN_SHORT_CPHS: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 3173
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v3, "gsm.sim.operator.alpha"

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn:Ljava/lang/String;

    invoke-virtual {v2, v7, v3}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3178
    .end local v1           #data:[B
    :goto_160
    sget-object v2, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->IDLE:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    goto/16 :goto_1e

    .line 3175
    :cond_166
    const-string v2, "No SPN loaded in either CHPS or 3GPP"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_160

    .line 3104
    :pswitch_data_16c
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_3b
        :pswitch_d1
        :pswitch_129
    .end packed-switch
.end method

.method public static getValidADNNum()I
    .registers 1

    .prologue
    .line 336
    sget v0, Lcom/android/internal/telephony/gsm/SIMRecords;->validADNNum:I

    return v0
.end method

.method private handleCBMI([B)V
    .registers 15
    .parameter "cbmi"

    .prologue
    .line 2654
    array-length v1, p1

    .line 2655
    .local v1, cbmi_length:I
    div-int/lit8 v2, v1, 0x2

    .line 2656
    .local v2, cbmi_totalnumber:I
    const/4 v0, 0x0

    .line 2658
    .local v0, cbmiDBUpdate_result:Z
    const-string v10, "[SIMRecord]"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "handleCBMI() cbmi_length : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2659
    const-string v10, "[SIMRecord]"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "handleCBMI() cbmi_totalnumber : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2661
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v10, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->cbmiList:Ljava/util/ArrayList;

    .line 2663
    const/4 v5, 0x0

    .local v5, i:I
    :goto_3c
    if-ge v5, v2, :cond_11a

    .line 2665
    const/4 v10, 0x2

    new-array v6, v10, [B

    .line 2666
    .local v6, rec_buf:[B
    const/4 v9, 0x0

    .line 2667
    .local v9, wTemp:I
    const/4 v3, 0x0

    .line 2668
    .local v3, first:I
    const/4 v7, 0x0

    .line 2669
    .local v7, second:I
    const/4 v8, 0x0

    .line 2670
    .local v8, third:I
    const/4 v4, 0x0

    .line 2672
    .local v4, fourth:I
    const/4 v10, 0x0

    mul-int/lit8 v11, v5, 0x2

    aget-byte v11, p1, v11

    aput-byte v11, v6, v10

    .line 2673
    const/4 v10, 0x1

    mul-int/lit8 v11, v5, 0x2

    add-int/lit8 v11, v11, 0x1

    aget-byte v11, p1, v11

    aput-byte v11, v6, v10

    .line 2680
    const/4 v10, 0x0

    aget-byte v10, v6, v10

    shr-int/lit8 v10, v10, 0x4

    and-int/lit8 v3, v10, 0xf

    .line 2681
    const/4 v10, 0x0

    aget-byte v10, v6, v10

    and-int/lit8 v7, v10, 0xf

    .line 2682
    const/4 v10, 0x1

    aget-byte v10, v6, v10

    shr-int/lit8 v10, v10, 0x4

    and-int/lit8 v8, v10, 0xf

    .line 2683
    const/4 v10, 0x1

    aget-byte v10, v6, v10

    and-int/lit8 v4, v10, 0xf

    .line 2684
    mul-int/lit16 v10, v3, 0x1000

    mul-int/lit16 v11, v7, 0x100

    add-int/2addr v10, v11

    mul-int/lit8 v11, v8, 0x10

    add-int/2addr v10, v11

    add-int v9, v10, v4

    .line 2687
    const-string v10, "[SIMRecord]"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "handleCBMI() first from left : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2688
    const-string v10, "[SIMRecord]"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "handleCBMI() second from left : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2689
    const-string v10, "[SIMRecord]"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "handleCBMI() third from left : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2690
    const-string v10, "[SIMRecord]"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "handleCBMI() fourth from left : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2691
    const-string v10, "[SIMRecord]"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "handleCBMI() channel : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2693
    const v10, 0xffff

    if-eq v9, v10, :cond_116

    .line 2694
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->cbmiList:Ljava/util/ArrayList;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2695
    const-string v10, "[SIMRecord]"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "handleCBMI() cbmiList add : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2663
    :cond_116
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_3c

    .line 2699
    .end local v3           #first:I
    .end local v4           #fourth:I
    .end local v6           #rec_buf:[B
    .end local v7           #second:I
    .end local v8           #third:I
    .end local v9           #wTemp:I
    :cond_11a
    iget-object p1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    .end local p1
    check-cast p1, Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v10, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->cbmiList:Ljava/util/ArrayList;

    invoke-virtual {p1, v10, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->updateCurrentCBMIInProvider(Ljava/util/ArrayList;I)Z

    move-result v0

    .line 2701
    const/4 v10, 0x1

    if-ne v0, v10, :cond_12f

    .line 2702
    const-string v10, "[SIMRecords]"

    const-string v11, "[handleCBMI] the CBMI DB insertion from SIM is successful"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2706
    :goto_12e
    return-void

    .line 2704
    :cond_12f
    const-string v10, "[SIMRecords]"

    const-string v11, "[handleCBMI] the CBMI DB insertion from SIM is failed"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12e
.end method

.method private handleCBMI_VIVO()V
    .registers 7

    .prologue
    const-string v5, "[SIMRecords]"

    .line 2710
    const/16 v1, 0x27

    .line 2711
    .local v1, cbmi_totalnumber:I
    const/4 v0, 0x0

    .line 2731
    .local v0, cbmiDBUpdate_result:Z
    const-string v2, "[SIMRecord]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleCBMI_VIVO() cbmi_totalnumber : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2754
    iget-object p0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->updateCurrentCBMIInProvider_VIVO(I)Z

    move-result v0

    .line 2755
    const/4 v2, 0x1

    if-ne v0, v2, :cond_30

    .line 2756
    const-string v2, "[SIMRecords]"

    const-string v2, "[handleCBMI_VIVO] the VIVO DEFAULT CBMI processing is successful"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2760
    :goto_2f
    return-void

    .line 2758
    :cond_30
    const-string v2, "[SIMRecords]"

    const-string v2, "[handleCBMI_VIVO] the VIVO DEFAULT CBMI processing is failed"

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f
.end method

.method private handleEccs(Ljava/util/ArrayList;)V
    .registers 14
    .parameter "messages"

    .prologue
    .line 2551
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2552
    .local v2, count:I
    const/4 v7, 0x0

    .line 2553
    .local v7, temp_ecc:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    mul-int/lit8 v9, v2, 0x6

    add-int/2addr v9, v2

    add-int/lit8 v9, v9, 0x28

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2555
    .local v4, ecc:Ljava/lang/StringBuilder;
    new-instance v8, Ljava/lang/StringBuilder;

    mul-int/lit8 v9, v2, 0x9

    add-int/2addr v9, v2

    add-int/lit8 v9, v9, 0xa

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2561
    .local v8, usim_ecc:Ljava/lang/StringBuilder;
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    if-eqz v9, :cond_f2

    .line 2562
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x3

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 2567
    .local v6, mccFromSim:I
    :goto_29
    const-string v9, "GSM"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "EF_ECC: count = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2569
    const/4 v5, 0x0

    .local v5, i:I
    :goto_42
    if-ge v5, v2, :cond_f5

    .line 2570
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    move-object v3, v0

    .line 2572
    .local v3, data:[B
    const-string v9, "GSM"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "EF_ECC length = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, v3

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2573
    const-string v9, "GSM"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "EF_ECC data["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v3}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2575
    const/4 v9, 0x0

    const/4 v10, 0x3

    invoke-static {v3, v9, v10}, Lcom/android/internal/telephony/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v7

    .line 2576
    const-string v9, "GSM"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "EF_ECC["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2577
    if-eqz v7, :cond_ee

    .line 2578
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2579
    const/16 v9, 0x2c

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2581
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2582
    const/16 v9, 0x2f

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2583
    array-length v9, v3

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    aget-byte v9, v3, v9

    shr-int/lit8 v9, v9, 0x4

    and-int/lit8 v1, v9, 0xf

    .line 2584
    .local v1, b:I
    const-string v9, "0123456789abcdef"

    invoke-virtual {v9, v1}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2585
    array-length v9, v3

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    aget-byte v9, v3, v9

    and-int/lit8 v1, v9, 0xf

    .line 2586
    const-string v9, "0123456789abcdef"

    invoke-virtual {v9, v1}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2587
    const/16 v9, 0x2c

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2569
    .end local v1           #b:I
    :cond_ee
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_42

    .line 2564
    .end local v3           #data:[B
    .end local v5           #i:I
    .end local v6           #mccFromSim:I
    :cond_f2
    const/4 v6, 0x0

    .restart local v6       #mccFromSim:I
    goto/16 :goto_29

    .line 2593
    .restart local v5       #i:I
    :cond_f5
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->countrycode:Ljava/lang/String;

    const-string v10, "GB"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    iget-object v10, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->countrycode:Ljava/lang/String;

    const-string v11, "IT"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    or-int/2addr v9, v10

    iget-object v10, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->countrycode:Ljava/lang/String;

    const-string v11, "HK"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    or-int/2addr v9, v10

    if-eqz v9, :cond_172

    .line 2597
    const/16 v9, 0x104

    if-eq v6, v9, :cond_11d

    const/16 v9, 0xe6

    if-eq v6, v9, :cond_11d

    const/16 v9, 0x10c

    if-ne v6, v9, :cond_16c

    .line 2599
    :cond_11d
    const-string v9, "112,911"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2620
    :goto_122
    const-string v9, "ro.ril.ecclist"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2621
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lcom/android/internal/telephony/gsm/SIMRecords;->ecc_list:Ljava/lang/String;

    .line 2622
    const-string v9, "GSM"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "EF_ECC list = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/android/internal/telephony/gsm/SIMRecords;->ecc_list:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2624
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lcom/android/internal/telephony/gsm/SIMRecords;->usim_ecc_list:Ljava/lang/String;

    .line 2625
    const-string v9, "GSM"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[KT ECC] USIM EF_ECC list = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/android/internal/telephony/gsm/SIMRecords;->usim_ecc_list:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2627
    return-void

    .line 2603
    :cond_16c
    const-string v9, "112,911,999"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_122

    .line 2608
    :cond_172
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->countrycode:Ljava/lang/String;

    const-string v10, "BR"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_182

    .line 2609
    const-string v9, "112,911,190"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_122

    .line 2610
    :cond_182
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->countrycode:Ljava/lang/String;

    const-string v10, "AU"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_192

    .line 2611
    const-string v9, "112,911,000"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_122

    .line 2612
    :cond_192
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->countrycode:Ljava/lang/String;

    const-string v10, "MX"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1a2

    .line 2613
    const-string v9, "112,911,060"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_122

    .line 2614
    :cond_1a2
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->countrycode:Ljava/lang/String;

    const-string v10, "KR"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1b3

    .line 2615
    const-string v9, "112,119,911,122,113,125,127,111"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_122

    .line 2617
    :cond_1b3
    const-string v9, "112,911"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_122
.end method

.method private handleFileUpdate(I)V
    .registers 7
    .parameter "efid"

    .prologue
    const/4 v4, 0x1

    const-string v1, "EONS"

    .line 2323
    sparse-switch p1, :sswitch_data_d8

    .line 2382
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/AdnRecordCache;->reset()V

    .line 2383
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->fetchSimRecords()V

    .line 2386
    :cond_e
    :goto_e
    return-void

    .line 2325
    :sswitch_f
    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 2326
    new-instance v0, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    const/16 v1, 0x6fc7

    const/16 v2, 0x6fc8

    iget v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mailboxIndex:I

    const/4 v4, 0x6

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto :goto_e

    .line 2330
    :sswitch_2b
    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 2331
    new-instance v0, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    const/16 v1, 0x6f17

    const/16 v2, 0x6f4a

    const/16 v3, 0xb

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/android/internal/telephony/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto :goto_e

    .line 2335
    :sswitch_46
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getOnsAlg()I

    move-result v0

    if-ne v0, v4, :cond_57

    .line 2337
    const-string v0, "EONS"

    const-string v0, "SIM Refresh called for EF_OPL"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2338
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->updateOplCache()V

    goto :goto_e

    .line 2341
    :cond_57
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->fetchSimRecords()V

    goto :goto_e

    .line 2345
    :sswitch_5b
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getOnsAlg()I

    move-result v0

    if-ne v0, v4, :cond_6c

    .line 2347
    const-string v0, "EONS"

    const-string v0, "SIM Refresh called for EF_PNN"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2348
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->updatePnnCache()V

    goto :goto_e

    .line 2351
    :cond_6c
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->fetchSimRecords()V

    goto :goto_e

    .line 2357
    :sswitch_70
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[LG UICC] Phonebook reset by Refresh FCN, efid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2358
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/AdnRecordCache;->reset()V

    .line 2359
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->updateFdnList()V

    goto/16 :goto_e

    .line 2363
    :sswitch_92
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->useEfCspPlmn()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2366
    const-string v0, "CSP SIM Records"

    const-string v1, "SIM Refresh called for EF_CSP_CPHS"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2367
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    const/16 v1, 0x6f15

    const/16 v2, 0x22

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2369
    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    goto/16 :goto_e

    .line 2373
    :sswitch_b8
    const-string v0, "EONS"

    const-string v0, "SIM Refresh called for EF_SST"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2374
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    const/16 v1, 0x6f38

    const/16 v2, 0x11

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2376
    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    goto/16 :goto_e

    .line 2323
    :sswitch_data_d8
    .sparse-switch
        0x6f15 -> :sswitch_92
        0x6f17 -> :sswitch_2b
        0x6f38 -> :sswitch_b8
        0x6f3a -> :sswitch_70
        0x6f3b -> :sswitch_70
        0x6fc5 -> :sswitch_5b
        0x6fc6 -> :sswitch_46
        0x6fc7 -> :sswitch_f
    .end sparse-switch
.end method

.method private handlePbrData([B)V
    .registers 15
    .parameter "data"

    .prologue
    const/16 v12, 0xff

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 2204
    const/4 v7, 0x2

    new-array v1, v7, [I

    .line 2206
    .local v1, fid:[I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_8
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->PBRrecordSize:[I

    aget v7, v7, v10

    if-ge v2, v7, :cond_14

    .line 2208
    aget-byte v7, p1, v2

    and-int/lit16 v5, v7, 0xff

    .line 2209
    .local v5, tempi:I
    if-ne v5, v12, :cond_2f

    .line 2235
    .end local v5           #tempi:I
    :cond_14
    const-string v7, "GSM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[LG 3G PB] validADNNum = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Lcom/android/internal/telephony/gsm/SIMRecords;->validADNNum:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2236
    return-void

    .line 2211
    .restart local v5       #tempi:I
    :cond_2f
    packed-switch v5, :pswitch_data_6e

    .line 2206
    :cond_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 2214
    :pswitch_35
    add-int/lit8 v7, v2, 0x1

    aget-byte v4, p1, v7

    .line 2215
    .local v4, length:I
    add-int/lit8 v0, v2, 0x2

    .line 2216
    .local v0, base:I
    move v3, v0

    .local v3, j:I
    :goto_3c
    add-int v7, v0, v4

    if-ge v3, v7, :cond_32

    .line 2218
    aget-byte v7, p1, v3

    and-int/lit16 v6, v7, 0xff

    .line 2219
    .local v6, tempj:I
    if-eq v6, v12, :cond_32

    .line 2221
    packed-switch v6, :pswitch_data_74

    .line 2216
    :goto_49
    add-int/lit8 v3, v3, 0x1

    goto :goto_3c

    .line 2224
    :pswitch_4c
    add-int/lit8 v7, v3, 0x2

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    aput v7, v1, v10

    .line 2225
    add-int/lit8 v7, v3, 0x3

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    aput v7, v1, v11

    .line 2226
    sget-object v7, Lcom/android/internal/telephony/gsm/SIMRecords;->EF_ADNs:[I

    aget v8, v1, v10

    shl-int/lit8 v8, v8, 0x8

    aget v9, v1, v11

    or-int/2addr v8, v9

    aput v8, v7, v10

    .line 2227
    sget v7, Lcom/android/internal/telephony/gsm/SIMRecords;->validADNNum:I

    add-int/lit8 v7, v7, 0x1

    sput v7, Lcom/android/internal/telephony/gsm/SIMRecords;->validADNNum:I

    goto :goto_49

    .line 2211
    :pswitch_data_6e
    .packed-switch 0xa8
        :pswitch_35
    .end packed-switch

    .line 2221
    :pswitch_data_74
    .packed-switch 0xc0
        :pswitch_4c
    .end packed-switch
.end method

.method private handlePbrsData(Ljava/util/ArrayList;)V
    .registers 19
    .parameter "messages"

    .prologue
    .line 2241
    const/4 v13, 0x2

    new-array v4, v13, [I

    .line 2243
    .local v4, fid:[I
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 2244
    .local v12, totCount:I
    move v9, v12

    .line 2246
    .local v9, relCount:I
    const/4 v13, 0x4

    if-le v12, v13, :cond_c

    .line 2248
    const/4 v9, 0x4

    .line 2251
    :cond_c
    const/4 v7, 0x0

    .local v7, k:I
    :goto_d
    if-ge v7, v9, :cond_77

    .line 2253
    move-object/from16 v0, p1

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v3, v0

    .line 2255
    .local v3, data:[B
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->PBRrecordSize:[I

    move-object v13, v0

    const/4 v14, 0x0

    aget v13, v13, v14

    if-ge v5, v13, :cond_2f

    .line 2257
    aget-byte v13, v3, v5

    and-int/lit16 v10, v13, 0xff

    .line 2258
    .local v10, tempi:I
    const/16 v13, 0xff

    if-ne v10, v13, :cond_32

    .line 2251
    .end local v10           #tempi:I
    :cond_2f
    add-int/lit8 v7, v7, 0x1

    goto :goto_d

    .line 2260
    .restart local v10       #tempi:I
    :cond_32
    packed-switch v10, :pswitch_data_100

    .line 2255
    :cond_35
    add-int/lit8 v5, v5, 0x1

    goto :goto_1d

    .line 2263
    :pswitch_38
    add-int/lit8 v13, v5, 0x1

    aget-byte v8, v3, v13

    .line 2264
    .local v8, length:I
    add-int/lit8 v2, v5, 0x2

    .line 2265
    .local v2, base:I
    move v6, v2

    .local v6, j:I
    :goto_3f
    add-int v13, v2, v8

    if-ge v6, v13, :cond_35

    .line 2267
    aget-byte v13, v3, v6

    and-int/lit16 v11, v13, 0xff

    .line 2268
    .local v11, tempj:I
    const/16 v13, 0xff

    if-eq v11, v13, :cond_35

    .line 2270
    packed-switch v11, :pswitch_data_106

    .line 2265
    :goto_4e
    add-int/lit8 v6, v6, 0x1

    goto :goto_3f

    .line 2273
    :pswitch_51
    const/4 v13, 0x0

    add-int/lit8 v14, v6, 0x2

    aget-byte v14, v3, v14

    and-int/lit16 v14, v14, 0xff

    aput v14, v4, v13

    .line 2274
    const/4 v13, 0x1

    add-int/lit8 v14, v6, 0x3

    aget-byte v14, v3, v14

    and-int/lit16 v14, v14, 0xff

    aput v14, v4, v13

    .line 2275
    sget-object v13, Lcom/android/internal/telephony/gsm/SIMRecords;->EF_ADNs:[I

    const/4 v14, 0x0

    aget v14, v4, v14

    shl-int/lit8 v14, v14, 0x8

    const/4 v15, 0x1

    aget v15, v4, v15

    or-int/2addr v14, v15

    aput v14, v13, v7

    .line 2276
    sget v13, Lcom/android/internal/telephony/gsm/SIMRecords;->validADNNum:I

    add-int/lit8 v13, v13, 0x1

    sput v13, Lcom/android/internal/telephony/gsm/SIMRecords;->validADNNum:I

    goto :goto_4e

    .line 2286
    .end local v2           #base:I
    .end local v3           #data:[B
    .end local v5           #i:I
    .end local v6           #j:I
    .end local v8           #length:I
    .end local v10           #tempi:I
    .end local v11           #tempj:I
    :cond_77
    const/16 v13, 0x8

    if-ne v12, v13, :cond_a2

    sget v13, Lcom/android/internal/telephony/gsm/SIMRecords;->validADNNum:I

    const/4 v14, 0x4

    if-ne v13, v14, :cond_a2

    .line 2288
    const/4 v13, 0x7

    move-object/from16 v0, p1

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, [B

    move-object/from16 v0, p1

    check-cast v0, [B

    move-object v3, v0

    .line 2290
    .restart local v3       #data:[B
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_90
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->PBRrecordSize:[I

    move-object v13, v0

    const/4 v14, 0x0

    aget v13, v13, v14

    if-ge v5, v13, :cond_a2

    .line 2292
    aget-byte v13, v3, v5

    and-int/lit16 v10, v13, 0xff

    .line 2293
    .restart local v10       #tempi:I
    const/16 v13, 0xff

    if-ne v10, v13, :cond_bd

    .line 2318
    .end local v3           #data:[B
    .end local v5           #i:I
    .end local v10           #tempi:I
    :cond_a2
    const-string v13, "GSM"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[LG 3G PB] validADNNum = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget v15, Lcom/android/internal/telephony/gsm/SIMRecords;->validADNNum:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2319
    return-void

    .line 2295
    .restart local v3       #data:[B
    .restart local v5       #i:I
    .restart local v10       #tempi:I
    :cond_bd
    packed-switch v10, :pswitch_data_10c

    .line 2290
    :cond_c0
    add-int/lit8 v5, v5, 0x1

    goto :goto_90

    .line 2298
    :pswitch_c3
    add-int/lit8 v13, v5, 0x1

    aget-byte v8, v3, v13

    .line 2299
    .restart local v8       #length:I
    add-int/lit8 v2, v5, 0x2

    .line 2300
    .restart local v2       #base:I
    move v6, v2

    .restart local v6       #j:I
    :goto_ca
    add-int v13, v2, v8

    if-ge v6, v13, :cond_c0

    .line 2302
    aget-byte v13, v3, v6

    and-int/lit16 v11, v13, 0xff

    .line 2303
    .restart local v11       #tempj:I
    const/16 v13, 0xff

    if-eq v11, v13, :cond_c0

    .line 2305
    packed-switch v11, :pswitch_data_112

    .line 2300
    :goto_d9
    add-int/lit8 v6, v6, 0x1

    goto :goto_ca

    .line 2308
    :pswitch_dc
    const/4 v13, 0x0

    add-int/lit8 v14, v6, 0x2

    aget-byte v14, v3, v14

    and-int/lit16 v14, v14, 0xff

    aput v14, v4, v13

    .line 2309
    const/4 v13, 0x1

    add-int/lit8 v14, v6, 0x3

    aget-byte v14, v3, v14

    and-int/lit16 v14, v14, 0xff

    aput v14, v4, v13

    .line 2310
    sget-object v13, Lcom/android/internal/telephony/gsm/SIMRecords;->EF_ADNs:[I

    const/4 v14, 0x3

    const/4 v15, 0x0

    aget v15, v4, v15

    shl-int/lit8 v15, v15, 0x8

    const/16 v16, 0x1

    aget v16, v4, v16

    or-int v15, v15, v16

    aput v15, v13, v14

    goto :goto_d9

    .line 2260
    nop

    :pswitch_data_100
    .packed-switch 0xa8
        :pswitch_38
    .end packed-switch

    .line 2270
    :pswitch_data_106
    .packed-switch 0xc0
        :pswitch_51
    .end packed-switch

    .line 2295
    :pswitch_data_10c
    .packed-switch 0xa8
        :pswitch_c3
    .end packed-switch

    .line 2305
    :pswitch_data_112
    .packed-switch 0xc0
        :pswitch_dc
    .end packed-switch
.end method

.method private handleSimInserted([I)V
    .registers 11
    .parameter "result"

    .prologue
    const-string v8, "KR"

    const-string v7, "BR"

    const-string v6, "112,911,060"

    const-string v5, "112,119,911,122,113,125,127,111"

    const-string v4, "112,911"

    .line 2427
    if-eqz p1, :cond_f

    array-length v1, p1

    if-nez v1, :cond_15

    .line 2428
    :cond_f
    const-string v1, "handleSimInserted without input"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2548
    :goto_14
    return-void

    .line 2432
    :cond_15
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->countrycode:Ljava/lang/String;

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->operator:Ljava/lang/String;

    if-nez v1, :cond_29

    .line 2434
    :cond_1d
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->countrycode:Ljava/lang/String;

    .line 2435
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getOperatorCode()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->operator:Ljava/lang/String;

    .line 2438
    :cond_29
    const/4 v1, 0x0

    aget v1, p1, v1

    sput v1, Lcom/android/internal/telephony/gsm/SIMRecords;->sim_type:I

    .line 2442
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    if-eqz v1, :cond_82

    .line 2443
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2449
    .local v0, mccFromSim:I
    :goto_3e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SIM INSERTED!!! sim_type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/gsm/SIMRecords;->sim_type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2451
    sget v1, Lcom/android/internal/telephony/gsm/SIMRecords;->sim_type:I

    packed-switch v1, :pswitch_data_1b6

    .line 2536
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSimInserted with unknown sim type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/gsm/SIMRecords;->sim_type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2538
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->countrycode:Ljava/lang/String;

    const-string v2, "BR"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_190

    .line 2539
    const-string v1, "190,911,112"

    sput-object v1, Lcom/android/internal/telephony/gsm/SIMRecords;->ecc_list:Ljava/lang/String;

    goto :goto_14

    .line 2445
    .end local v0           #mccFromSim:I
    :cond_82
    const/4 v0, 0x0

    .restart local v0       #mccFromSim:I
    goto :goto_3e

    .line 2453
    :pswitch_84
    const-string v1, "SIM type is GSM"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2455
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->countrycode:Ljava/lang/String;

    const-string v2, "GB"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->countrycode:Ljava/lang/String;

    const-string v3, "IT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    or-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->countrycode:Ljava/lang/String;

    const-string v3, "HK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    or-int/2addr v1, v2

    if-eqz v1, :cond_c9

    .line 2459
    const/16 v1, 0x104

    if-eq v0, v1, :cond_b1

    const/16 v1, 0xe6

    if-eq v0, v1, :cond_b1

    const/16 v1, 0x10c

    if-ne v0, v1, :cond_c4

    .line 2461
    :cond_b1
    const-string v1, "112,911"

    sput-object v4, Lcom/android/internal/telephony/gsm/SIMRecords;->ecc_list:Ljava/lang/String;

    .line 2486
    :goto_b5
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const/16 v2, 0x6fb7

    const/16 v3, 0x25

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/PhoneBase;->LGEIccLoadEFTransparent(ILandroid/os/Message;)V

    goto/16 :goto_14

    .line 2465
    :cond_c4
    const-string v1, "112,911,999"

    sput-object v1, Lcom/android/internal/telephony/gsm/SIMRecords;->ecc_list:Ljava/lang/String;

    goto :goto_b5

    .line 2470
    :cond_c9
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->countrycode:Ljava/lang/String;

    const-string v2, "BR"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d8

    .line 2471
    const-string v1, "112,911,190"

    sput-object v1, Lcom/android/internal/telephony/gsm/SIMRecords;->ecc_list:Ljava/lang/String;

    goto :goto_b5

    .line 2472
    :cond_d8
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->countrycode:Ljava/lang/String;

    const-string v2, "AU"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e7

    .line 2473
    const-string v1, "112,911,000"

    sput-object v1, Lcom/android/internal/telephony/gsm/SIMRecords;->ecc_list:Ljava/lang/String;

    goto :goto_b5

    .line 2474
    :cond_e7
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->countrycode:Ljava/lang/String;

    const-string v2, "MX"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f6

    .line 2475
    const-string v1, "112,911,060"

    sput-object v6, Lcom/android/internal/telephony/gsm/SIMRecords;->ecc_list:Ljava/lang/String;

    goto :goto_b5

    .line 2476
    :cond_f6
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->countrycode:Ljava/lang/String;

    const-string v2, "KR"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_105

    .line 2477
    const-string v1, "112,119,911,122,113,125,127,111"

    sput-object v5, Lcom/android/internal/telephony/gsm/SIMRecords;->ecc_list:Ljava/lang/String;

    goto :goto_b5

    .line 2479
    :cond_105
    const-string v1, "112,911"

    sput-object v4, Lcom/android/internal/telephony/gsm/SIMRecords;->ecc_list:Ljava/lang/String;

    goto :goto_b5

    .line 2495
    :pswitch_10a
    const-string v1, "SIM type is UMTS"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2497
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->countrycode:Ljava/lang/String;

    const-string v2, "GB"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->countrycode:Ljava/lang/String;

    const-string v3, "IT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    or-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->countrycode:Ljava/lang/String;

    const-string v3, "HK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    or-int/2addr v1, v2

    if-eqz v1, :cond_14f

    .line 2501
    const/16 v1, 0x104

    if-eq v0, v1, :cond_137

    const/16 v1, 0xe6

    if-eq v0, v1, :cond_137

    const/16 v1, 0x10c

    if-ne v0, v1, :cond_14a

    .line 2503
    :cond_137
    const-string v1, "112,911"

    sput-object v4, Lcom/android/internal/telephony/gsm/SIMRecords;->ecc_list:Ljava/lang/String;

    .line 2529
    :goto_13b
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const/16 v2, 0x6fb7

    const/16 v3, 0x25

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/PhoneBase;->LGEIccLoadEFLinearFixedAll(ILandroid/os/Message;)V

    goto/16 :goto_14

    .line 2507
    :cond_14a
    const-string v1, "112,911,999"

    sput-object v1, Lcom/android/internal/telephony/gsm/SIMRecords;->ecc_list:Ljava/lang/String;

    goto :goto_13b

    .line 2512
    :cond_14f
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->countrycode:Ljava/lang/String;

    const-string v2, "BR"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15e

    .line 2513
    const-string v1, "112,911,190"

    sput-object v1, Lcom/android/internal/telephony/gsm/SIMRecords;->ecc_list:Ljava/lang/String;

    goto :goto_13b

    .line 2514
    :cond_15e
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->countrycode:Ljava/lang/String;

    const-string v2, "AU"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16d

    .line 2515
    const-string v1, "112,911,000"

    sput-object v1, Lcom/android/internal/telephony/gsm/SIMRecords;->ecc_list:Ljava/lang/String;

    goto :goto_13b

    .line 2516
    :cond_16d
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->countrycode:Ljava/lang/String;

    const-string v2, "MX"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17c

    .line 2517
    const-string v1, "112,911,060"

    sput-object v6, Lcom/android/internal/telephony/gsm/SIMRecords;->ecc_list:Ljava/lang/String;

    goto :goto_13b

    .line 2518
    :cond_17c
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->countrycode:Ljava/lang/String;

    const-string v2, "KR"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18b

    .line 2519
    const-string v1, "112,119,911,122,113,125,127,111"

    sput-object v5, Lcom/android/internal/telephony/gsm/SIMRecords;->ecc_list:Ljava/lang/String;

    goto :goto_13b

    .line 2521
    :cond_18b
    const-string v1, "112,911"

    sput-object v4, Lcom/android/internal/telephony/gsm/SIMRecords;->ecc_list:Ljava/lang/String;

    goto :goto_13b

    .line 2540
    :cond_190
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->countrycode:Ljava/lang/String;

    const-string v2, "MX"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a0

    .line 2541
    const-string v1, "112,911,060"

    sput-object v6, Lcom/android/internal/telephony/gsm/SIMRecords;->ecc_list:Ljava/lang/String;

    goto/16 :goto_14

    .line 2542
    :cond_1a0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->countrycode:Ljava/lang/String;

    const-string v2, "KR"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b0

    .line 2543
    const-string v1, "112,119,911,122,113,125,127,111"

    sput-object v5, Lcom/android/internal/telephony/gsm/SIMRecords;->ecc_list:Ljava/lang/String;

    goto/16 :goto_14

    .line 2545
    :cond_1b0
    const-string v1, "112,911,08,000,118,119,999,110"

    sput-object v1, Lcom/android/internal/telephony/gsm/SIMRecords;->ecc_list:Ljava/lang/String;

    goto/16 :goto_14

    .line 2451
    :pswitch_data_1b6
    .packed-switch 0x1
        :pswitch_84
        :pswitch_10a
    .end packed-switch
.end method

.method private handleSimRefresh([I)V
    .registers 6
    .parameter "result"

    .prologue
    const/4 v3, 0x0

    .line 2389
    if-eqz p1, :cond_6

    array-length v1, p1

    if-nez v1, :cond_c

    .line 2390
    :cond_6
    const-string v1, "handleSimRefresh without input"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2423
    :goto_b
    return-void

    .line 2394
    :cond_c
    aget v1, p1, v3

    packed-switch v1, :pswitch_data_40

    .line 2420
    const-string v1, "handleSimRefresh with unknown operation"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_b

    .line 2396
    :pswitch_17
    const-string v1, "handleSimRefresh with SIM_REFRESH_FILE_UPDATED"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2398
    const/4 v1, 0x1

    aget v0, p1, v1

    .line 2399
    .local v0, efid:I
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->handleFileUpdate(I)V

    goto :goto_b

    .line 2402
    .end local v0           #efid:I
    :pswitch_23
    const-string v1, "handleSimRefresh with SIM_REFRESH_INIT"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2404
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v1}, Lcom/android/internal/telephony/AdnRecordCache;->reset()V

    .line 2405
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->fetchSimRecords()V

    goto :goto_b

    .line 2408
    :pswitch_31
    const-string v1, "handleSimRefresh with SIM_REFRESH_RESET"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 2409
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x0

    invoke-interface {v1, v3, v2}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    goto :goto_b

    .line 2394
    nop

    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_17
        :pswitch_23
        :pswitch_31
    .end packed-switch
.end method

.method private handleSms([B)V
    .registers 10
    .parameter "ba"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2631
    aget-byte v3, p1, v6

    if-eqz v3, :cond_20

    .line 2632
    const-string v3, "ENF"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "status : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-byte v5, p1, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2636
    :cond_20
    aget-byte v3, p1, v6

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3c

    .line 2637
    array-length v1, p1

    .line 2641
    .local v1, n:I
    sub-int v3, v1, v7

    new-array v2, v3, [B

    .line 2642
    .local v2, pdu:[B
    sub-int v3, v1, v7

    invoke-static {p1, v7, v2, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2643
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->createFromPdu([B)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v0

    .line 2645
    .local v0, message:Lcom/android/internal/telephony/gsm/SmsMessage;
    iget-object p0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSMS:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I

    .line 2647
    .end local v0           #message:Lcom/android/internal/telephony/gsm/SmsMessage;
    .end local v1           #n:I
    .end local v2           #pdu:[B
    :cond_3c
    return-void
.end method

.method private handleSmses(Ljava/util/ArrayList;)V
    .registers 14
    .parameter "messages"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 2764
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2766
    .local v2, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_7
    if-ge v3, v2, :cond_5c

    .line 2767
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    move-object v0, v7

    check-cast v0, [B

    move-object v1, v0

    .line 2769
    .local v1, ba:[B
    aget-byte v7, v1, v10

    if-eqz v7, :cond_3b

    .line 2770
    const-string v7, "ENF"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "status "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-byte v9, v1, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2775
    :cond_3b
    aget-byte v7, v1, v10

    const/4 v8, 0x3

    if-ne v7, v8, :cond_59

    .line 2776
    array-length v5, v1

    .line 2780
    .local v5, n:I
    sub-int v7, v5, v11

    new-array v6, v7, [B

    .line 2781
    .local v6, pdu:[B
    sub-int v7, v5, v11

    invoke-static {v1, v11, v6, v10, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2782
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/SmsMessage;->createFromPdu([B)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v4

    .line 2784
    .local v4, message:Lcom/android/internal/telephony/gsm/SmsMessage;
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v7, Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v7, v7, Lcom/android/internal/telephony/gsm/GSMPhone;->mSMS:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;

    invoke-virtual {v7, v4}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I

    .line 2789
    aput-byte v11, v1, v10

    .line 2766
    .end local v4           #message:Lcom/android/internal/telephony/gsm/SmsMessage;
    .end local v5           #n:I
    .end local v6           #pdu:[B
    :cond_59
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 2797
    .end local v1           #ba:[B
    :cond_5c
    return-void
.end method

.method private isCphsMailboxEnabled()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3270
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCphsInfo:[B

    if-nez v0, :cond_8

    move v0, v2

    .line 3271
    :goto_7
    return v0

    :cond_8
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCphsInfo:[B

    aget-byte v0, v0, v3

    and-int/lit8 v0, v0, 0x30

    const/16 v1, 0x30

    if-ne v0, v1, :cond_14

    move v0, v3

    goto :goto_7

    :cond_14
    move v0, v2

    goto :goto_7
.end method

.method private isOnMatchingPlmn(Ljava/lang/String;)Z
    .registers 7
    .parameter "plmn"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3058
    if-nez p1, :cond_6

    move v2, v3

    .line 3071
    :goto_5
    return v2

    .line 3060
    :cond_6
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getSIMOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    move v2, v4

    .line 3061
    goto :goto_5

    .line 3064
    :cond_12
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spdiNetworks:Ljava/util/ArrayList;

    if-eqz v2, :cond_30

    .line 3065
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spdiNetworks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3066
    .local v1, spdiNet:Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    move v2, v4

    .line 3067
    goto :goto_5

    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #spdiNet:Ljava/lang/String;
    :cond_30
    move v2, v3

    .line 3071
    goto :goto_5
.end method

.method private onSimReady()V
    .registers 4

    .prologue
    .line 2859
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimCard:Lcom/android/internal/telephony/gsm/SimCard;

    const-string v1, "READY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/SimCard;->broadcastSimStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 2862
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->fetchSimRecords()V

    .line 2863
    return-void
.end method

.method private parseEfSpdi([B)V
    .registers 8
    .parameter "data"

    .prologue
    .line 3236
    new-instance v3, Lcom/android/internal/telephony/gsm/SimTlv;

    const/4 v4, 0x0

    array-length v5, p1

    invoke-direct {v3, p1, v4, v5}, Lcom/android/internal/telephony/gsm/SimTlv;-><init>([BII)V

    .line 3238
    .local v3, tlv:Lcom/android/internal/telephony/gsm/SimTlv;
    const/4 v2, 0x0

    .line 3241
    .local v2, plmnEntries:[B
    :goto_8
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SimTlv;->isValidObject()Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 3242
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SimTlv;->getTag()I

    move-result v4

    const/16 v5, 0x80

    if-ne v4, v5, :cond_1d

    .line 3243
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v2

    .line 3248
    :cond_1a
    if-nez v2, :cond_21

    .line 3264
    :cond_1c
    return-void

    .line 3241
    :cond_1d
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SimTlv;->nextObject()Z

    goto :goto_8

    .line 3252
    :cond_21
    new-instance v4, Ljava/util/ArrayList;

    array-length v5, v2

    div-int/lit8 v5, v5, 0x3

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spdiNetworks:Ljava/util/ArrayList;

    .line 3254
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2c
    add-int/lit8 v4, v0, 0x2

    array-length v5, v2

    if-ge v4, v5, :cond_1c

    .line 3256
    const/4 v4, 0x3

    invoke-static {v2, v0, v4}, Lcom/android/internal/telephony/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v1

    .line 3259
    .local v1, plmnCode:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x5

    if-lt v4, v5, :cond_58

    .line 3260
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EF_SPDI network: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 3261
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spdiNetworks:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3254
    :cond_58
    add-int/lit8 v0, v0, 0x3

    goto :goto_2c
.end method

.method private processEFCspData()V
    .registers 9

    .prologue
    const-string v7, "CSP SIM Records"

    .line 3283
    const/4 v0, 0x0

    .line 3289
    .local v0, i:I
    const/16 v2, 0xd

    .line 3294
    .local v2, used_csp_groups:I
    const/16 v3, -0x40

    .line 3295
    .local v3, value_added_services_group:B
    const/16 v4, 0x12c

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 3297
    .local v1, msg:Landroid/os/Message;
    const/4 v0, 0x0

    :goto_e
    if-ge v0, v2, :cond_52

    .line 3298
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->cspCphsInfo:[B

    mul-int/lit8 v5, v0, 0x2

    aget-byte v4, v4, v5

    if-ne v4, v3, :cond_4f

    .line 3299
    const-string v4, "CSP SIM Records"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sevice group 0xC0,value "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->cspCphsInfo:[B

    mul-int/lit8 v6, v0, 0x2

    add-int/lit8 v6, v6, 0x1

    aget-byte v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3305
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->cspCphsInfo:[B

    mul-int/lit8 v5, v0, 0x2

    add-int/lit8 v5, v5, 0x1

    aget-byte v4, v4, v5

    if-gez v4, :cond_46

    .line 3308
    const/4 v4, 0x1

    iput v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->cspPlmn:I

    .line 3320
    :goto_45
    return-void

    .line 3311
    :cond_46
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->cspPlmn:I

    .line 3314
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4, v1}, Lcom/android/internal/telephony/PhoneBase;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    goto :goto_45

    .line 3297
    :cond_4f
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 3319
    :cond_52
    const-string v4, "CSP SIM Records"

    const-string v4, "sevice group 0xC0,Not founf in EF CSP"

    invoke-static {v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_45
.end method

.method public static setADN_NAME_MAX(I)V
    .registers 1
    .parameter "number"

    .prologue
    .line 416
    sput p0, Lcom/android/internal/telephony/gsm/SIMRecords;->ADN_NAME_MAX:I

    .line 417
    return-void
.end method

.method public static setADN_REC_NUM(I)V
    .registers 1
    .parameter "number"

    .prologue
    .line 426
    sput p0, Lcom/android/internal/telephony/gsm/SIMRecords;->ADN_REC_NUM:I

    .line 427
    return-void
.end method

.method public static setADNsRecNum(II)V
    .registers 3
    .parameter "index"
    .parameter "number"

    .prologue
    .line 391
    sget-object v0, Lcom/android/internal/telephony/gsm/SIMRecords;->ADNsRecNum:[I

    aput p1, v0, p0

    .line 392
    return-void
.end method

.method public static setCacheADNRecNum(I)V
    .registers 1
    .parameter "number"

    .prologue
    .line 376
    sput p0, Lcom/android/internal/telephony/gsm/SIMRecords;->cacheADNRecNum:I

    .line 377
    return-void
.end method

.method public static setCountADN(I)V
    .registers 1
    .parameter "number"

    .prologue
    .line 371
    sput p0, Lcom/android/internal/telephony/gsm/SIMRecords;->countADN:I

    .line 372
    return-void
.end method

.method public static setEF_ADNs(II)V
    .registers 3
    .parameter "index"
    .parameter "number"

    .prologue
    .line 386
    sget-object v0, Lcom/android/internal/telephony/gsm/SIMRecords;->EF_ADNs:[I

    aput p1, v0, p0

    .line 387
    return-void
.end method

.method public static setFDN_NAME_MAX(I)V
    .registers 1
    .parameter "number"

    .prologue
    .line 421
    sput p0, Lcom/android/internal/telephony/gsm/SIMRecords;->FDN_NAME_MAX:I

    .line 422
    return-void
.end method

.method public static setFDN_REC_NUM(I)V
    .registers 1
    .parameter "number"

    .prologue
    .line 431
    sput p0, Lcom/android/internal/telephony/gsm/SIMRecords;->FDN_REC_NUM:I

    .line 432
    return-void
.end method

.method private setLocaleFromMccIfNeeded(I)V
    .registers 5
    .parameter "mcc"

    .prologue
    .line 1142
    invoke-static {p1}, Lcom/android/internal/telephony/gsm/MccTable;->defaultLanguageForMcc(I)Ljava/lang/String;

    move-result-object v1

    .line 1143
    .local v1, language:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/internal/telephony/gsm/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    move-result-object v0

    .line 1145
    .local v0, country:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2, v1, v0}, Lcom/android/internal/telephony/PhoneBase;->setSystemLocale(Ljava/lang/String;Ljava/lang/String;)V

    .line 1146
    return-void
.end method

.method private setSpnFromConfig(Ljava/lang/String;)V
    .registers 3
    .parameter "carrier"

    .prologue
    .line 2841
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSpnOverride:Lcom/android/internal/telephony/gsm/SpnOverride;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/SpnOverride;->containsCarrier(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2842
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSpnOverride:Lcom/android/internal/telephony/gsm/SpnOverride;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/SpnOverride;->getSpn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn:Ljava/lang/String;

    .line 2844
    :cond_10
    return-void
.end method

.method private setTimezoneFromMccIfNeeded(I)V
    .registers 7
    .parameter "mcc"

    .prologue
    .line 1124
    const-string v3, "persist.sys.timezone"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1125
    .local v1, timezone:Ljava/lang/String;
    if-eqz v1, :cond_e

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2b

    .line 1126
    :cond_e
    invoke-static {p1}, Lcom/android/internal/telephony/gsm/MccTable;->defaultTimeZoneForMcc(I)Ljava/lang/String;

    move-result-object v2

    .line 1128
    .local v2, zoneId:Ljava/lang/String;
    if-eqz v2, :cond_2b

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2b

    .line 1130
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1132
    .local v0, alarm:Landroid/app/AlarmManager;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    .line 1135
    .end local v0           #alarm:Landroid/app/AlarmManager;
    .end local v2           #zoneId:Ljava/lang/String;
    :cond_2b
    return-void
.end method

.method public static setValidADNNum(I)V
    .registers 1
    .parameter "number"

    .prologue
    .line 366
    sput p0, Lcom/android/internal/telephony/gsm/SIMRecords;->validADNNum:I

    .line 367
    return-void
.end method

.method private setVoiceMailByCountry(Ljava/lang/String;)V
    .registers 3
    .parameter "spn"

    .prologue
    .line 2848
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/gsm/VoiceMailConstants;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/VoiceMailConstants;->containsCarrier(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 2849
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isVoiceMailFixed:Z

    .line 2850
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/gsm/VoiceMailConstants;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/VoiceMailConstants;->getVoiceMailNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->voiceMailNum:Ljava/lang/String;

    .line 2851
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/gsm/VoiceMailConstants;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/VoiceMailConstants;->getVoiceMailTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->voiceMailTag:Ljava/lang/String;

    .line 2853
    :cond_1b
    return-void
.end method

.method private updateFdnList()V
    .registers 4

    .prologue
    .line 3817
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.FDN_QUERY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3818
    return-void
.end method


# virtual methods
.method adaptPropSet()Z
    .registers 7

    .prologue
    .line 680
    const/4 v1, 0x0

    .line 681
    .local v1, adapt_set:Z
    const-string v3, "persist.cust.tel.adapt"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 682
    .local v0, adapt_prop:Ljava/lang/String;
    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1b

    .line 684
    :try_start_f
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_16} :catch_1c

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1b

    .line 685
    const/4 v1, 0x1

    .line 691
    :cond_1b
    :goto_1b
    return v1

    .line 687
    :catch_1c
    move-exception v3

    move-object v2, v3

    .line 688
    .local v2, e:Ljava/lang/Exception;
    const-string v3, "EONS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception on reading persist.cust.tel.adapt "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b
.end method

.method public dispose()V
    .registers 2

    .prologue
    .line 494
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForSIMReady(Landroid/os/Handler;)V

    .line 495
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    .line 496
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnIccRefresh(Landroid/os/Handler;)V

    .line 497
    return-void
.end method

.method fetchPnnFirstRecord(I)V
    .registers 8
    .parameter "flag"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v5, "EONS"

    .line 3585
    if-ne p1, v4, :cond_55

    .line 3586
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v1, Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 3589
    .local v0, regOperator:Ljava/lang/String;
    :goto_12
    const-string v1, "EONS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Comparing hplmn "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getSIMOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with reg plmn "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3592
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->oplDataPresent:Z

    .line 3593
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getSIMOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_62

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getSIMOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_62

    .line 3595
    const-string v1, "EONS"

    const-string v1, "Fetching EF_PNN\'s first record"

    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3596
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->getNameFromPnnRecord(I)V

    .line 3602
    .end local p0
    :goto_54
    return-void

    .line 3588
    .end local v0           #regOperator:Ljava/lang/String;
    .restart local p0
    :cond_55
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v1, Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #regOperator:Ljava/lang/String;
    goto :goto_12

    .line 3599
    :cond_62
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->pnnDataPresent:Z

    .line 3600
    iget-object p0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateSpnDisplayWrapper()V

    goto :goto_54
.end method

.method fetchPnnRecords()V
    .registers 4

    .prologue
    .line 3349
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const/16 v1, 0x6fc5

    const/16 v2, 0x23

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->LGEIccLoadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 3350
    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 3351
    return-void
.end method

.method protected finalize()V
    .registers 3

    .prologue
    .line 500
    const-string v0, "GSM"

    const-string v1, "SIMRecords finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    return-void
.end method

.method public getCspPlmn()I
    .registers 2

    .prologue
    .line 779
    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->cspPlmn:I

    return v0
.end method

.method protected getDisplayRule(Ljava/lang/String;)I
    .registers 5
    .parameter "plmn"

    .prologue
    .line 3035
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn:Ljava/lang/String;

    if-eqz v1, :cond_9

    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayCondition:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_b

    .line 3037
    :cond_9
    const/4 v0, 0x2

    .line 3051
    .local v0, rule:I
    :cond_a
    :goto_a
    return v0

    .line 3038
    .end local v0           #rule:I
    :cond_b
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/SIMRecords;->isOnMatchingPlmn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 3039
    const/4 v0, 0x1

    .line 3040
    .restart local v0       #rule:I
    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayCondition:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_a

    .line 3042
    or-int/lit8 v0, v0, 0x2

    goto :goto_a

    .line 3045
    .end local v0           #rule:I
    :cond_1c
    const/4 v0, 0x2

    .line 3046
    .restart local v0       #rule:I
    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayCondition:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_a

    .line 3048
    or-int/lit8 v0, v0, 0x1

    goto :goto_a
.end method

.method getEfGid1()Ljava/lang/String;
    .registers 4

    .prologue
    .line 644
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getEfGid1() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->ef_gid1_value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->ef_gid1_value:Ljava/lang/String;

    return-object v0
.end method

.method getEfIccid()Ljava/lang/String;
    .registers 4

    .prologue
    .line 650
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getEfIccid() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->ef_iccid_value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->ef_iccid_value:Ljava/lang/String;

    return-object v0
.end method

.method getEfImsi()Ljava/lang/String;
    .registers 4

    .prologue
    .line 638
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getEfImsi() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->ef_imsi_value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->ef_imsi_value:Ljava/lang/String;

    return-object v0
.end method

.method getEfSpn()Ljava/lang/String;
    .registers 4

    .prologue
    .line 632
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getEfSpn() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->ef_spn_value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->ef_spn_value:Ljava/lang/String;

    return-object v0
.end method

.method public getEonsAvailableNetworks(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 13
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/gsm/NetworkInfo;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/gsm/NetworkInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, avlNetworks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/NetworkInfo;>;"
    const-string v10, "EONS"

    .line 3710
    const/4 v6, 0x0

    .line 3711
    .local v6, eonsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/NetworkInfo;>;"
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getOnsAlg()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_94

    if-eqz p1, :cond_94

    .line 3712
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 3713
    .local v9, size:I
    const/4 v1, 0x0

    .line 3715
    .local v1, pnnName:Ljava/lang/String;
    new-instance v6, Ljava/util/ArrayList;

    .end local v6           #eonsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/NetworkInfo;>;"
    invoke-direct {v6, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 3716
    .restart local v6       #eonsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/NetworkInfo;>;"
    const-string v0, "EONS"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Available Networks List Size = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3717
    const/4 v7, 0x0

    .local v7, i:I
    :goto_2f
    if-ge v7, v9, :cond_94

    .line 3718
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/gsm/NetworkInfo;

    .line 3719
    .local v8, ni:Lcom/android/internal/telephony/gsm/NetworkInfo;
    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/NetworkInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getEonsNameFromPnn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3720
    const-string v0, "EONS"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PLMN="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/NetworkInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ME Name="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/NetworkInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " PNN Name="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3722
    if-nez v1, :cond_79

    .line 3723
    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/NetworkInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v1

    .line 3731
    :cond_79
    new-instance v0, Lcom/android/internal/telephony/gsm/NetworkInfo;

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/NetworkInfo;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/NetworkInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/NetworkInfo;->getState()Lcom/android/internal/telephony/gsm/NetworkInfo$State;

    move-result-object v4

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/NetworkInfo;->getOperatorRAT()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/NetworkInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/gsm/NetworkInfo$State;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3717
    add-int/lit8 v7, v7, 0x1

    goto :goto_2f

    .line 3737
    .end local v1           #pnnName:Ljava/lang/String;
    .end local v7           #i:I
    .end local v8           #ni:Lcom/android/internal/telephony/gsm/NetworkInfo;
    .end local v9           #size:I
    :cond_94
    return-object v6
.end method

.method public getFDN_REC_NUM(I)I
    .registers 3
    .parameter "index"

    .prologue
    .line 411
    sget v0, Lcom/android/internal/telephony/gsm/SIMRecords;->FDN_REC_NUM:I

    return v0
.end method

.method public getGid1()Ljava/lang/String;
    .registers 2

    .prologue
    .line 585
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->gid1:Ljava/lang/String;

    return-object v0
.end method

.method public getIMSI()Ljava/lang/String;
    .registers 2

    .prologue
    .line 575
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    return-object v0
.end method

.method public getMCCfromFlex()I
    .registers 6

    .prologue
    .line 3800
    const/16 v0, 0xea

    .line 3801
    .local v0, defaultMCC:I
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getMccCode()Ljava/lang/String;

    move-result-object v1

    .line 3803
    .local v1, mccFromFlex:Ljava/lang/String;
    if-eqz v1, :cond_25

    .line 3804
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getMCCfromFlex] mccFromFlex: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3805
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 3807
    :goto_24
    return v2

    :cond_25
    move v2, v0

    goto :goto_24
.end method

.method public getMsisdnAlphaTag()Ljava/lang/String;
    .registers 2

    .prologue
    .line 620
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->msisdnTag:Ljava/lang/String;

    return-object v0
.end method

.method public getMsisdnNumber()Ljava/lang/String;
    .registers 2

    .prologue
    .line 579
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->msisdn:Ljava/lang/String;

    return-object v0
.end method

.method getNameFromPnnRecord(I)V
    .registers 11
    .parameter "record"

    .prologue
    const/4 v8, -0x1

    const/4 v6, 0x1

    const-string v7, "EONS"

    .line 3663
    const/4 v3, 0x0

    .line 3664
    .local v3, length:I
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->pnnCache:Ljava/util/ArrayList;

    if-eqz v4, :cond_13

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->pnnCache:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gt p1, v4, :cond_13

    if-ge p1, v6, :cond_1e

    .line 3667
    :cond_13
    const-string v4, "EONS"

    const-string v4, "pnnCache is null/Invalid PNN Rec, using default method"

    invoke-static {v7, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3668
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->useMEName()V

    .line 3707
    .end local p0
    :goto_1d
    return-void

    .line 3671
    .restart local p0
    :cond_1e
    const-string v4, "EONS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Number of PNN records = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->pnnCache:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3674
    :try_start_3c
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->pnnCache:Ljava/util/ArrayList;

    sub-int v5, p1, v6

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    move-object v0, v4

    check-cast v0, [B

    move-object v1, v0

    .line 3675
    .local v1, data:[B
    const-string v4, "EONS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PNN record number "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", hex data "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3677
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->pnnDataPresent:Z

    .line 3681
    const/4 v4, 0x0

    aget-byte v4, v1, v4

    if-eq v4, v8, :cond_135

    const/4 v4, 0x1

    aget-byte v4, v1, v4

    if-eq v4, v8, :cond_135

    .line 3683
    const/4 v4, 0x1

    aget-byte v3, v1, v4

    .line 3684
    const-string v4, "EONS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PNN longname length : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3685
    const/4 v4, 0x2

    invoke-static {v1, v4, v3}, Lcom/android/internal/telephony/IccUtils;->networkNameToString([BII)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->pnnDataLongName:Ljava/lang/String;

    .line 3686
    const-string v4, "EONS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PNN longname : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->pnnDataLongName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3687
    add-int/lit8 v4, v3, 0x2

    aget-byte v4, v1, v4

    if-eq v4, v8, :cond_112

    add-int/lit8 v4, v3, 0x3

    aget-byte v4, v1, v4

    if-eq v4, v8, :cond_112

    .line 3688
    const-string v4, "EONS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PNN shortname length : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v3, 0x3

    aget-byte v6, v1, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3689
    add-int/lit8 v4, v3, 0x4

    add-int/lit8 v5, v3, 0x3

    aget-byte v5, v1, v5

    invoke-static {v1, v4, v5}, Lcom/android/internal/telephony/IccUtils;->networkNameToString([BII)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->pnnDataShortName:Ljava/lang/String;

    .line 3691
    const-string v4, "EONS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PNN shortname : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->pnnDataShortName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_107
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_107} :catch_11a

    .line 3706
    .end local v1           #data:[B
    :goto_107
    iget-object p0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateSpnDisplayWrapper()V

    goto/16 :goto_1d

    .line 3695
    .restart local v1       #data:[B
    .restart local p0
    :cond_112
    :try_start_112
    const-string v4, "EONS"

    const-string v5, "EF_PNN: No short Name"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_119
    .catch Ljava/lang/Exception; {:try_start_112 .. :try_end_119} :catch_11a

    goto :goto_107

    .line 3703
    .end local v1           #data:[B
    :catch_11a
    move-exception v4

    move-object v2, v4

    .line 3704
    .local v2, e:Ljava/lang/Exception;
    const-string v4, "EONS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception while processing PNN data "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_107

    .line 3700
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v1       #data:[B
    :cond_135
    const/4 v4, 0x0

    :try_start_136
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->pnnDataPresent:Z

    .line 3701
    const-string v4, "EONS"

    const-string v5, "EF_PNN: Invalid EF_PNN Data"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13f
    .catch Ljava/lang/Exception; {:try_start_136 .. :try_end_13f} :catch_11a

    goto :goto_107
.end method

.method getOnsAlg()I
    .registers 7

    .prologue
    .line 700
    const/4 v2, 0x0

    .line 701
    .local v2, ons_alg:I
    const-string v3, "persist.cust.tel.eons"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 704
    .local v1, eons_prop:Ljava/lang/String;
    iget v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->sstPlmnOplValue:I

    sget v4, Lcom/android/internal/telephony/gsm/SIMRecords;->EONS_DISABLED:I

    if-eq v3, v4, :cond_13

    iget v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->sstPlmnOplValue:I

    sget v4, Lcom/android/internal/telephony/gsm/SIMRecords;->NOT_INITIALIZED:I

    if-ne v3, v4, :cond_15

    .line 705
    :cond_13
    const/4 v3, 0x0

    .line 723
    :goto_14
    return v3

    .line 711
    :cond_15
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->adaptPropSet()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 712
    const/4 v2, 0x1

    :cond_1c
    :goto_1c
    move v3, v2

    .line 723
    goto :goto_14

    .line 714
    :cond_1e
    if-eqz v1, :cond_1c

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1c

    .line 716
    :try_start_26
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2d} :catch_33

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1c

    .line 717
    const/4 v2, 0x1

    goto :goto_1c

    .line 719
    :catch_33
    move-exception v3

    move-object v0, v3

    .line 720
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "EONS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception on reading persist.cust.tel.eons "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c
.end method

.method public getPBRrecordSize(I)I
    .registers 3
    .parameter "index"

    .prologue
    .line 351
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->PBRrecordSize:[I

    aget v0, v0, p1

    return v0
.end method

.method getPnnLongName()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v1, 0x0

    const-string v3, "gsm.eons.name"

    .line 660
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->pnnDataPresent:Z

    if-eqz v0, :cond_2f

    .line 663
    const-string v0, "gsm.eons.name"

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->pnnDataLongName:Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    const-string v0, "EONS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Property gsm.eons.name set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "gsm.eons.name"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->pnnDataLongName:Ljava/lang/String;

    .line 670
    :goto_2e
    return-object v0

    .line 669
    :cond_2f
    const-string v0, "gsm.eons.name"

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 670
    goto :goto_2e
.end method

.method getSIMOperatorNumeric()Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x0

    .line 1088
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    if-nez v2, :cond_8

    .line 1089
    const/4 v2, 0x0

    .line 1116
    :goto_7
    return-object v2

    .line 1092
    :cond_8
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->countrycode:Ljava/lang/String;

    const-string v3, "CA"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->operator:Ljava/lang/String;

    const-string v4, "RGS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    and-int/2addr v2, v3

    if-eqz v2, :cond_36

    .line 1094
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1095
    .local v0, imsi_mcc:Ljava/lang/String;
    iget v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    if-eq v2, v6, :cond_36

    const-string v2, "302"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 1097
    const-string v2, "GSM"

    const-string v3, "[CA-RGS]  Invalid MNC length info in EF_AD!! We change to MNC lenth =3"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    iput v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    .line 1103
    .end local v0           #imsi_mcc:Ljava/lang/String;
    :cond_36
    iget v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    if-eqz v2, :cond_45

    .line 1106
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    iget v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    add-int/lit8 v3, v3, 0x3

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_7

    .line 1114
    :cond_45
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1116
    .local v1, mcc:I
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/telephony/gsm/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x3

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_7
.end method

.method public getSstPlmnOplValue()I
    .registers 2

    .prologue
    .line 3812
    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->sstPlmnOplValue:I

    return v0
.end method

.method public getVoiceCallForwardingFlag()Z
    .registers 2

    .prologue
    .line 942
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->callForwardingEnabled:Z

    return v0
.end method

.method public getVoiceCallForwardingFlagLine2()Z
    .registers 2

    .prologue
    .line 948
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->callForwardingEnabledLine2:Z

    return v0
.end method

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .registers 2

    .prologue
    .line 841
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->voiceMailTag:Ljava/lang/String;

    return-object v0
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .registers 2

    .prologue
    .line 624
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->voiceMailNum:Ljava/lang/String;

    return-object v0
.end method

.method public getVoiceMessageWaitingCphs()I
    .registers 2

    .prologue
    .line 927
    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->countVoiceMessages_line1:I

    if-nez v0, :cond_a

    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->countVoiceMessages_line2:I

    if-nez v0, :cond_a

    .line 928
    const/4 v0, 0x0

    .line 936
    :goto_9
    return v0

    .line 929
    :cond_a
    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->countVoiceMessages_line1:I

    if-eqz v0, :cond_14

    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->countVoiceMessages_line2:I

    if-nez v0, :cond_14

    .line 930
    const/4 v0, 0x1

    goto :goto_9

    .line 931
    :cond_14
    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->countVoiceMessages_line1:I

    if-nez v0, :cond_1e

    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->countVoiceMessages_line2:I

    if-eqz v0, :cond_1e

    .line 932
    const/4 v0, 0x2

    goto :goto_9

    .line 933
    :cond_1e
    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->countVoiceMessages_line1:I

    if-eqz v0, :cond_28

    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->countVoiceMessages_line2:I

    if-eqz v0, :cond_28

    .line 934
    const/4 v0, 0x3

    goto :goto_9

    .line 936
    :cond_28
    const/4 v0, -0x1

    goto :goto_9
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 30
    .parameter "msg"

    .prologue
    .line 1152
    const/16 v21, 0x0

    .line 1157
    .local v21, mcc:I
    const/16 v19, 0x0

    .line 1159
    .local v19, isRecordLoadResponse:Z
    :try_start_4
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v4, v0
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_7e
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_9} :catch_5c

    sparse-switch v4, :sswitch_data_129c

    .line 2195
    .end local p1
    :cond_c
    :goto_c
    :sswitch_c
    if-eqz v19, :cond_11

    .line 2196
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->onRecordLoaded()V

    .line 2199
    :cond_11
    :goto_11
    return-void

    .line 1163
    .restart local p1
    :sswitch_12
    :try_start_12
    const-string v4, "[SIMRecords]"

    const-string v5, "[pjman] SIMRecords : EVENT_RADIO_AVAILABLE is received"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v4

    const/16 v5, 0x2fe2

    const/16 v6, 0x2b

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->countrycode:Ljava/lang/String;

    move-object v4, v0

    const-string v5, "BR"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->operator:Ljava/lang/String;

    move-object v5, v0

    const-string v6, "VIVO"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v4, v5

    if-eqz v4, :cond_6b

    .line 1167
    const-string v4, "[SIMRecords]"

    const-string v5, "[Rian] VIVO : START initCurrentCBMINumberVIVO()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->initCurrentCBMINumberVIVO()Z
    :try_end_5b
    .catchall {:try_start_12 .. :try_end_5b} :catchall_7e
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_5b} :catch_5c

    goto :goto_c

    .line 2190
    :catch_5c
    move-exception v4

    move-object v15, v4

    .line 2192
    .local v15, exc:Ljava/lang/RuntimeException;
    :try_start_5e
    const-string v4, "GSM"

    const-string v5, "Exception parsing SIM record"

    invoke-static {v4, v5, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_65
    .catchall {:try_start_5e .. :try_end_65} :catchall_7e

    .line 2195
    if-eqz v19, :cond_11

    .line 2196
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->onRecordLoaded()V

    goto :goto_11

    .line 1170
    .end local v15           #exc:Ljava/lang/RuntimeException;
    .restart local p1
    :cond_6b
    :try_start_6b
    const-string v4, "[SIMRecords]"

    const-string v5, "[Rian] NORMAL : START initCurrentCBMINumber()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->initCurrentCBMINumber()Z
    :try_end_7d
    .catchall {:try_start_6b .. :try_end_7d} :catchall_7e
    .catch Ljava/lang/RuntimeException; {:try_start_6b .. :try_end_7d} :catch_5c

    goto :goto_c

    .line 2195
    :catchall_7e
    move-exception v4

    if-eqz v19, :cond_84

    .line 2196
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->onRecordLoaded()V

    :cond_84
    throw v4

    .line 1177
    .restart local p1
    :sswitch_85
    :try_start_85
    const-string v4, "[SIMRecords]"

    const-string v5, "[Rian] SIMRecords : EVENT_SIM_READY"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1178
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->onSimReady()V

    .line 1182
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getMCCfromFlex()I

    move-result v21

    .line 1183
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->setLocaleFromMccIfNeeded(I)V

    goto/16 :goto_c

    .line 1188
    :sswitch_9c
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->onRadioOffOrNotAvailable()V

    .line 1192
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getMCCfromFlex()I

    move-result v21

    .line 1193
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->setLocaleFromMccIfNeeded(I)V

    .line 1196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->countrycode:Ljava/lang/String;

    move-object v4, v0

    const-string v5, "BR"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->operator:Ljava/lang/String;

    move-object v5, v0

    const-string v6, "VIVO"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v4, v5

    if-eqz v4, :cond_d7

    .line 1197
    const-string v4, "[SIMRecords]"

    const-string v5, "[Rian] VIVO : START initCurrentCBMINumberVIVO()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->initCurrentCBMINumberVIVO()Z

    goto/16 :goto_c

    .line 1200
    .restart local p1
    :cond_d7
    const-string v4, "[SIMRecords]"

    const-string v5, "[Rian] NORMAL : START initCurrentCBMINumber()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->initCurrentCBMINumber()Z

    goto/16 :goto_c

    .line 1208
    .restart local p1
    :sswitch_eb
    const/16 v19, 0x1

    .line 1210
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroid/os/AsyncResult;

    .line 1212
    .local v12, ar:Landroid/os/AsyncResult;
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_114

    .line 1213
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception querying IMSI, Exception:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 1217
    :cond_114
    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    .line 1220
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getSIMOperatorNumeric()Ljava/lang/String;

    move-result-object v24

    .line 1221
    .local v24, operator:Ljava/lang/String;
    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    check-cast p1, Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->ef_imsi_value:Ljava/lang/String;

    .line 1222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 p1, v0

    check-cast p1, Lcom/android/internal/telephony/gsm/GSMPhone;

    const-string v4, "gsm.sim.operator.numeric"

    move-object/from16 v0, p1

    move-object v1, v4

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1223
    const-string v4, "[SIMRecords]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EF IMSI: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->countrycode:Ljava/lang/String;

    move-object v4, v0

    if-eqz v4, :cond_16d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->operator:Ljava/lang/String;

    move-object v4, v0

    if-nez v4, :cond_17f

    .line 1230
    :cond_16d
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getCountryCode()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->countrycode:Ljava/lang/String;

    .line 1231
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getOperatorCode()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->operator:Ljava/lang/String;

    .line 1237
    :cond_17f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object v4, v0

    if-eqz v4, :cond_1c2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x6

    if-lt v4, v5, :cond_19f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0xf

    if-le v4, v5, :cond_1c2

    .line 1238
    :cond_19f
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invalid IMSI "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1239
    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    .line 1242
    :cond_1c2
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IMSI: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object v6, v0

    const/4 v7, 0x0

    const/4 v8, 0x6

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "xxxxxxxxx"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 p1, v0

    check-cast p1, Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimCard:Lcom/android/internal/telephony/gsm/SimCard;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/gsm/SimCard;->updateImsiConfiguration(Ljava/lang/String;)V

    .line 1244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 p1, v0

    check-cast p1, Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimCard:Lcom/android/internal/telephony/gsm/SimCard;

    move-object v4, v0

    const-string v5, "IMSI"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/gsm/SimCard;->broadcastSimStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1250
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getMCCfromFlex()I

    move-result v21

    .line 1253
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->setTimezoneFromMccIfNeeded(I)V

    .line 1254
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->setLocaleFromMccIfNeeded(I)V

    goto/16 :goto_c

    .line 1259
    .end local v12           #ar:Landroid/os/AsyncResult;
    .end local v24           #operator:Ljava/lang/String;
    .restart local p1
    :sswitch_227
    const/16 v19, 0x1

    .line 1261
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroid/os/AsyncResult;

    .line 1262
    .restart local v12       #ar:Landroid/os/AsyncResult;
    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [B

    move-object/from16 v0, p1

    check-cast v0, [B

    move-object v13, v0

    .line 1264
    .local v13, data:[B
    const/16 v20, 0x0

    .line 1265
    .local v20, isValidMbdn:Z
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_281

    .line 1267
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EF_MBI: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v13}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1271
    const/4 v4, 0x0

    aget-byte v4, v13, v4

    and-int/lit16 v4, v4, 0xff

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->mailboxIndex:I

    .line 1274
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mailboxIndex:I

    move v4, v0

    if-eqz v4, :cond_281

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mailboxIndex:I

    move v4, v0

    const/16 v5, 0xff

    if-eq v4, v5, :cond_281

    .line 1275
    const-string v4, "GSM"

    const-string v5, "Got valid mailbox number for MBDN"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1276
    const/16 v20, 0x1

    .line 1281
    :cond_281
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    move v4, v0

    add-int/lit8 v4, v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 1283
    if-eqz v20, :cond_2af

    .line 1285
    new-instance v4, Lcom/android/internal/telephony/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    const/16 v5, 0x6fc7

    const/16 v6, 0x6fc8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mailboxIndex:I

    move v7, v0

    const/4 v8, 0x6

    move-object/from16 v0, p0

    move v1, v8

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/internal/telephony/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto/16 :goto_c

    .line 1290
    :cond_2af
    new-instance v4, Lcom/android/internal/telephony/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    const/16 v5, 0x6f17

    const/16 v6, 0x6f4a

    const/4 v7, 0x1

    const/16 v8, 0xb

    move-object/from16 v0, p0

    move v1, v8

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/internal/telephony/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto/16 :goto_c

    .line 1303
    .end local v12           #ar:Landroid/os/AsyncResult;
    .end local v13           #data:[B
    .end local v20           #isValidMbdn:Z
    .restart local p1
    :sswitch_2cc
    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->voiceMailNum:Ljava/lang/String;

    .line 1304
    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->voiceMailTag:Ljava/lang/String;

    .line 1305
    const/16 v19, 0x1

    .line 1307
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroid/os/AsyncResult;

    .line 1309
    .restart local v12       #ar:Landroid/os/AsyncResult;
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_33c

    .line 1311
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid or missing EF"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v6, v0

    const/16 v7, 0xb

    if-ne v6, v7, :cond_339

    const-string v6, "[MAILBOX]"

    :goto_2fd
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v4, v0

    const/4 v5, 0x6

    if-ne v4, v5, :cond_c

    .line 1321
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    move v4, v0

    add-int/lit8 v4, v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 1322
    new-instance v4, Lcom/android/internal/telephony/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    const/16 v5, 0x6f17

    const/16 v6, 0x6f4a

    const/4 v7, 0x1

    const/16 v8, 0xb

    move-object/from16 v0, p0

    move v1, v8

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/internal/telephony/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto/16 :goto_c

    .line 1311
    :cond_339
    const-string v6, "[MBDN]"

    goto :goto_2fd

    .line 1329
    :cond_33c
    iget-object v5, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Lcom/android/internal/telephony/AdnRecord;

    .line 1331
    .local v5, adn:Lcom/android/internal/telephony/AdnRecord;
    const-string v4, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "VM: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v7, v0

    const/16 v8, 0xb

    if-ne v7, v8, :cond_39e

    const-string v7, " EF[MAILBOX]"

    :goto_35c
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1334
    invoke-virtual {v5}, Lcom/android/internal/telephony/AdnRecord;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3a1

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v4, v0

    const/4 v6, 0x6

    if-ne v4, v6, :cond_3a1

    .line 1338
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    move v4, v0

    add-int/lit8 v4, v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 1339
    new-instance v4, Lcom/android/internal/telephony/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object v5, v0

    .end local v5           #adn:Lcom/android/internal/telephony/AdnRecord;
    invoke-direct {v4, v5}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    const/16 v5, 0x6f17

    const/16 v6, 0x6f4a

    const/4 v7, 0x1

    const/16 v8, 0xb

    move-object/from16 v0, p0

    move v1, v8

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/internal/telephony/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto/16 :goto_c

    .line 1331
    .restart local v5       #adn:Lcom/android/internal/telephony/AdnRecord;
    :cond_39e
    const-string v7, " EF[MBDN]"

    goto :goto_35c

    .line 1346
    :cond_3a1
    invoke-virtual {v5}, Lcom/android/internal/telephony/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->voiceMailNum:Ljava/lang/String;

    .line 1347
    invoke-virtual {v5}, Lcom/android/internal/telephony/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->voiceMailTag:Ljava/lang/String;

    goto/16 :goto_c

    .line 1351
    .end local v5           #adn:Lcom/android/internal/telephony/AdnRecord;
    .end local v12           #ar:Landroid/os/AsyncResult;
    :sswitch_3b5
    const/16 v19, 0x1

    .line 1353
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroid/os/AsyncResult;

    .line 1355
    .restart local v12       #ar:Landroid/os/AsyncResult;
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_3cb

    .line 1356
    const-string v4, "GSM"

    const-string v5, "Invalid or missing EF[MSISDN]"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 1360
    :cond_3cb
    iget-object v5, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Lcom/android/internal/telephony/AdnRecord;

    .line 1362
    .restart local v5       #adn:Lcom/android/internal/telephony/AdnRecord;
    invoke-virtual {v5}, Lcom/android/internal/telephony/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->msisdn:Ljava/lang/String;

    .line 1363
    invoke-virtual {v5}, Lcom/android/internal/telephony/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->msisdnTag:Ljava/lang/String;

    .line 1365
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    .end local v5           #adn:Lcom/android/internal/telephony/AdnRecord;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MSISDN: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->msisdn:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 1369
    .end local v12           #ar:Landroid/os/AsyncResult;
    :sswitch_400
    const/16 v19, 0x0

    .line 1370
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroid/os/AsyncResult;

    .line 1372
    .restart local v12       #ar:Landroid/os/AsyncResult;
    iget-object v4, v12, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v4, :cond_c

    .line 1373
    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Landroid/os/Message;

    invoke-static/range {p1 .. p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v4

    iget-object v5, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v5, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1375
    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 p1, v0

    check-cast p1, Landroid/os/Message;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_c

    .line 1380
    .end local v12           #ar:Landroid/os/AsyncResult;
    .restart local p1
    :sswitch_428
    const/16 v19, 0x1

    .line 1382
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroid/os/AsyncResult;

    .line 1383
    .restart local v12       #ar:Landroid/os/AsyncResult;
    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [B

    move-object/from16 v0, p1

    check-cast v0, [B

    move-object v13, v0

    .line 1385
    .restart local v13       #data:[B
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_c

    .line 1389
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EF_MWIS: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v13}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1392
    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    .line 1394
    const/4 v4, 0x0

    aget-byte v4, v13, v4

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0xff

    if-ne v4, v5, :cond_474

    .line 1395
    const-string v4, "GSM"

    const-string v5, "SIMRecords: Uninitialized record MWIS"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 1400
    :cond_474
    const/4 v4, 0x0

    aget-byte v4, v13, v4

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_4a4

    const/4 v4, 0x1

    move/from16 v27, v4

    .line 1401
    .local v27, voiceMailWaiting:Z
    :goto_47e
    const/4 v4, 0x1

    aget-byte v4, v13, v4

    and-int/lit16 v4, v4, 0xff

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->countVoiceMessages:I

    .line 1403
    if-eqz v27, :cond_497

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->countVoiceMessages:I

    move v4, v0

    if-nez v4, :cond_497

    .line 1405
    const/4 v4, -0x1

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->countVoiceMessages:I

    .line 1408
    :cond_497
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 p1, v0

    check-cast p1, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyMessageWaitingIndicator()V

    goto/16 :goto_c

    .line 1400
    .end local v27           #voiceMailWaiting:Z
    :cond_4a4
    const/4 v4, 0x0

    move/from16 v27, v4

    goto :goto_47e

    .line 1412
    .end local v12           #ar:Landroid/os/AsyncResult;
    .end local v13           #data:[B
    .restart local p1
    :sswitch_4a8
    const/16 v19, 0x1

    .line 1414
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroid/os/AsyncResult;

    .line 1415
    .restart local v12       #ar:Landroid/os/AsyncResult;
    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [B

    move-object/from16 v0, p1

    check-cast v0, [B

    move-object v13, v0

    .line 1417
    .restart local v13       #data:[B
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_c

    .line 1421
    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->efCPHS_MWI:[B

    .line 1426
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    move-object v4, v0

    if-nez v4, :cond_c

    .line 1427
    const/4 v4, 0x0

    aget-byte v4, v13, v4

    and-int/lit8 v18, v4, 0xf

    .line 1430
    .local v18, indicator:I
    const/16 v4, 0xa

    move/from16 v0, v18

    move v1, v4

    if-ne v0, v1, :cond_4ec

    .line 1432
    const/4 v4, -0x1

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->countVoiceMessages:I

    .line 1437
    :cond_4df
    :goto_4df
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 p1, v0

    check-cast p1, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyMessageWaitingIndicator()V

    goto/16 :goto_c

    .line 1433
    :cond_4ec
    const/4 v4, 0x5

    move/from16 v0, v18

    move v1, v4

    if-ne v0, v1, :cond_4df

    .line 1434
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->countVoiceMessages:I

    goto :goto_4df

    .line 1442
    .end local v12           #ar:Landroid/os/AsyncResult;
    .end local v13           #data:[B
    .end local v18           #indicator:I
    .restart local p1
    :sswitch_4f9
    const/16 v19, 0x1

    .line 1444
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroid/os/AsyncResult;

    .line 1445
    .restart local v12       #ar:Landroid/os/AsyncResult;
    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [B

    move-object/from16 v0, p1

    check-cast v0, [B

    move-object v13, v0

    .line 1447
    .restart local v13       #data:[B
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_c

    .line 1451
    const/4 v4, 0x0

    array-length v5, v13

    invoke-static {v13, v4, v5}, Lcom/android/internal/telephony/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->iccid:Ljava/lang/String;

    .line 1454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccid:Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->ef_iccid_value:Ljava/lang/String;

    .line 1455
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EF ICCID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->ef_iccid_value:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1458
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "iccid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccid:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 1464
    .end local v12           #ar:Landroid/os/AsyncResult;
    .end local v13           #data:[B
    .restart local p1
    :sswitch_563
    const-string v4, "[SIMRecords]"

    const-string v5, "[pjman] EVENT_FAST_GET_ICCID_DONE is received"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1466
    const/16 v19, 0x0

    .line 1468
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroid/os/AsyncResult;

    .line 1469
    .restart local v12       #ar:Landroid/os/AsyncResult;
    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [B

    move-object/from16 v0, p1

    check-cast v0, [B

    move-object v13, v0

    .line 1471
    .restart local v13       #data:[B
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_59f

    .line 1472
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EF ICCID read error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 1476
    :cond_59f
    const/4 v4, 0x0

    array-length v5, v13

    invoke-static {v13, v4, v5}, Lcom/android/internal/telephony/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->iccid:Ljava/lang/String;

    .line 1478
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccid:Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->ef_iccid_value:Ljava/lang/String;

    .line 1479
    const-string v4, "[SIMRecords]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EF ICCID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->ef_iccid_value:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1480
    const-string v4, "[SIMRecords]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "iccid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccid:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccidLoadedRegistrants:Landroid/os/RegistrantList;

    move-object v4, v0

    new-instance v5, Landroid/os/AsyncResult;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v4, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_c

    .line 1488
    .end local v12           #ar:Landroid/os/AsyncResult;
    .end local v13           #data:[B
    .restart local p1
    :sswitch_600
    const/16 v19, 0x1

    .line 1490
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroid/os/AsyncResult;

    .line 1491
    .restart local v12       #ar:Landroid/os/AsyncResult;
    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [B

    move-object/from16 v0, p1

    check-cast v0, [B

    move-object v13, v0

    .line 1493
    .restart local v13       #data:[B
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_c

    .line 1497
    const/4 v4, 0x0

    array-length v5, v13

    invoke-static {v13, v4, v5}, Lcom/android/internal/telephony/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->gid1:Ljava/lang/String;

    .line 1499
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "gid1: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->gid1:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1502
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->gid1:Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->ef_gid1_value:Ljava/lang/String;

    .line 1503
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EF GID1: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->ef_gid1_value:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 1510
    .end local v12           #ar:Landroid/os/AsyncResult;
    .end local v13           #data:[B
    .restart local p1
    :sswitch_66a
    const/16 v19, 0x1

    .line 1512
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroid/os/AsyncResult;

    .line 1513
    .restart local v12       #ar:Landroid/os/AsyncResult;
    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [B

    move-object/from16 v0, p1

    check-cast v0, [B

    move-object v13, v0

    .line 1515
    .restart local v13       #data:[B
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_c

    .line 1519
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EF_AD: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v13}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1522
    array-length v4, v13

    const/4 v5, 0x3

    if-ge v4, v5, :cond_6ac

    .line 1523
    const-string v4, "GSM"

    const-string v5, "SIMRecords: Corrupt AD data on SIM"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 1527
    :cond_6ac
    array-length v4, v13

    const/4 v5, 0x3

    if-ne v4, v5, :cond_6b9

    .line 1528
    const-string v4, "GSM"

    const-string v5, "SIMRecords: MNC length not present in EF_AD"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 1532
    :cond_6b9
    const/4 v4, 0x3

    aget-byte v4, v13, v4

    and-int/lit8 v4, v4, 0xf

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    .line 1534
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    move v4, v0

    const/16 v5, 0xf

    if-ne v4, v5, :cond_c

    .line 1537
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    .line 1539
    const-string v4, "GSM"

    const-string v5, "SIMRecords: MNC length not present in EF_AD"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 1546
    .end local v12           #ar:Landroid/os/AsyncResult;
    .end local v13           #data:[B
    .restart local p1
    :sswitch_6db
    const/16 v19, 0x1

    .line 1547
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroid/os/AsyncResult;

    .line 1548
    .restart local v12       #ar:Landroid/os/AsyncResult;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v4

    move-object v2, v12

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->getSpnFsm(ZLandroid/os/AsyncResult;)V

    goto/16 :goto_c

    .line 1552
    .end local v12           #ar:Landroid/os/AsyncResult;
    :sswitch_6ee
    const/16 v19, 0x1

    .line 1554
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroid/os/AsyncResult;

    .line 1555
    .restart local v12       #ar:Landroid/os/AsyncResult;
    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [B

    move-object/from16 v0, p1

    check-cast v0, [B

    move-object v13, v0

    .line 1557
    .restart local v13       #data:[B
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_c

    .line 1561
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EF_CFF_CPHS: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v13}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1563
    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    .line 1565
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    move-object v4, v0

    if-nez v4, :cond_c

    .line 1566
    const/4 v4, 0x0

    aget-byte v4, v13, v4

    and-int/lit8 v4, v4, 0xf

    const/16 v5, 0xa

    if-ne v4, v5, :cond_766

    const/4 v4, 0x1

    :goto_739
    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->callForwardingEnabled:Z

    .line 1571
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getALSSettingValue()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_759

    .line 1572
    const/4 v4, 0x0

    aget-byte v4, v13, v4

    and-int/lit16 v4, v4, 0xf0

    const/16 v5, 0xa0

    if-ne v4, v5, :cond_768

    const/4 v4, 0x1

    :goto_754
    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->callForwardingEnabledLine2:Z

    .line 1577
    :cond_759
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 p1, v0

    check-cast p1, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyCallForwardingIndicator()V

    goto/16 :goto_c

    .line 1566
    :cond_766
    const/4 v4, 0x0

    goto :goto_739

    .line 1572
    :cond_768
    const/4 v4, 0x0

    goto :goto_754

    .line 1582
    .end local v12           #ar:Landroid/os/AsyncResult;
    .end local v13           #data:[B
    .restart local p1
    :sswitch_76a
    const/16 v19, 0x1

    .line 1584
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroid/os/AsyncResult;

    .line 1585
    .restart local v12       #ar:Landroid/os/AsyncResult;
    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [B

    move-object/from16 v0, p1

    check-cast v0, [B

    move-object v13, v0

    .line 1587
    .restart local v13       #data:[B
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_c

    .line 1591
    move-object/from16 v0, p0

    move-object v1, v13

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->parseEfSpdi([B)V

    goto/16 :goto_c

    .line 1595
    .end local v12           #ar:Landroid/os/AsyncResult;
    .end local v13           #data:[B
    .restart local p1
    :sswitch_78b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroid/os/AsyncResult;

    .line 1596
    .restart local v12       #ar:Landroid/os/AsyncResult;
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_c

    .line 1597
    const-string v4, "GSM"

    const-string v5, "SIMRecords update failed"

    iget-object v6, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v4, v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_c

    .line 1602
    .end local v12           #ar:Landroid/os/AsyncResult;
    :sswitch_7a1
    const/16 v19, 0x1

    .line 1604
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroid/os/AsyncResult;

    .line 1605
    .restart local v12       #ar:Landroid/os/AsyncResult;
    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [B

    move-object/from16 v0, p1

    check-cast v0, [B

    move-object v13, v0

    .line 1606
    .restart local v13       #data:[B
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_c

    .line 1610
    new-instance v26, Lcom/android/internal/telephony/gsm/SimTlv;

    const/4 v4, 0x0

    array-length v5, v13

    move-object/from16 v0, v26

    move-object v1, v13

    move v2, v4

    move v3, v5

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/SimTlv;-><init>([BII)V

    .line 1612
    .local v26, tlv:Lcom/android/internal/telephony/gsm/SimTlv;
    :goto_7c6
    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/gsm/SimTlv;->isValidObject()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1613
    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/gsm/SimTlv;->getTag()I

    move-result v4

    const/16 v5, 0x43

    if-ne v4, v5, :cond_7e9

    .line 1614
    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v6

    array-length v6, v6

    invoke-static {v4, v5, v6}, Lcom/android/internal/telephony/IccUtils;->networkNameToString([BII)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->pnnHomeName:Ljava/lang/String;

    goto/16 :goto_c

    .line 1612
    :cond_7e9
    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/gsm/SimTlv;->nextObject()Z

    goto :goto_7c6

    .line 1625
    .end local v12           #ar:Landroid/os/AsyncResult;
    .end local v13           #data:[B
    .end local v26           #tlv:Lcom/android/internal/telephony/gsm/SimTlv;
    .restart local p1
    :sswitch_7ed
    const/16 v19, 0x1

    .line 1627
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroid/os/AsyncResult;

    .line 1628
    .restart local v12       #ar:Landroid/os/AsyncResult;
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_c

    .line 1631
    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/gsm/SIMRecords;->handleSmses(Ljava/util/ArrayList;)V

    goto/16 :goto_c

    .line 1635
    .end local v12           #ar:Landroid/os/AsyncResult;
    .restart local p1
    :sswitch_806
    const-string v4, "ENF"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "marked read: sms "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 1640
    :sswitch_825
    const/16 v19, 0x0

    .line 1642
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroid/os/AsyncResult;

    .line 1644
    .restart local v12       #ar:Landroid/os/AsyncResult;
    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [I

    move-object/from16 v0, p1

    check-cast v0, [I

    move-object/from16 v17, v0

    .line 1646
    .local v17, index:[I
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_846

    move-object/from16 v0, v17

    array-length v0, v0

    move v4, v0

    const/4 v5, 0x1

    if-eq v4, v5, :cond_870

    .line 1647
    :cond_846
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[SIMRecords] Error on SMS_ON_SIM with exp "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " length "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v17

    array-length v0, v0

    move v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 1650
    :cond_870
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "READ EF_SMS RECORD index="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    aget v6, v17, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1651
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v4

    const/16 v5, 0x6f3c

    const/4 v6, 0x0

    aget v6, v17, v6

    const/16 v7, 0x16

    move-object/from16 v0, p0

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    goto/16 :goto_c

    .line 1657
    .end local v12           #ar:Landroid/os/AsyncResult;
    .end local v17           #index:[I
    .restart local p1
    :sswitch_8a7
    const/16 v19, 0x0

    .line 1658
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroid/os/AsyncResult;

    .line 1659
    .restart local v12       #ar:Landroid/os/AsyncResult;
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_8c2

    .line 1660
    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [B

    check-cast p1, [B

    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/gsm/SIMRecords;->handleSms([B)V

    goto/16 :goto_c

    .line 1662
    .restart local p1
    :cond_8c2
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[SIMRecords] Error on GET_SMS with exp "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 1667
    .end local v12           #ar:Landroid/os/AsyncResult;
    :sswitch_8de
    sget v4, Lcom/android/internal/telephony/gsm/SIMRecords;->EONS_DISABLED:I

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->sstPlmnOplValue:I

    .line 1668
    const/16 v19, 0x1

    .line 1670
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroid/os/AsyncResult;

    .line 1671
    .restart local v12       #ar:Landroid/os/AsyncResult;
    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [B

    move-object/from16 v0, p1

    check-cast v0, [B

    move-object v13, v0

    .line 1673
    .restart local v13       #data:[B
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_c

    .line 1677
    const-string v4, "EONS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SST: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v13}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1678
    move-object/from16 v0, p0

    move-object v1, v13

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->handleSstData([B)V

    goto/16 :goto_c

    .line 1682
    .end local v12           #ar:Landroid/os/AsyncResult;
    .end local v13           #data:[B
    .restart local p1
    :sswitch_922
    const/16 v19, 0x1

    .line 1684
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroid/os/AsyncResult;

    .line 1686
    .restart local v12       #ar:Landroid/os/AsyncResult;
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_c

    .line 1690
    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [B

    check-cast p1, [B

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->mCphsInfo:[B

    .line 1692
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "iCPHS: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCphsInfo:[B

    move-object v5, v0

    invoke-static {v5}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_c

    .line 1696
    .end local v12           #ar:Landroid/os/AsyncResult;
    .restart local p1
    :sswitch_962
    const-string v4, "CSP SIM Records"

    const-string v5, "Got Response for GET CSP"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1697
    const/16 v19, 0x1

    .line 1699
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroid/os/AsyncResult;

    .line 1701
    .restart local v12       #ar:Landroid/os/AsyncResult;
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_992

    .line 1702
    const-string v4, "CSP SIM Records"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 1706
    :cond_992
    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [B

    check-cast p1, [B

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->cspCphsInfo:[B

    .line 1708
    const-string v4, "CSP SIM Records"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->cspCphsInfo:[B

    move-object v5, v0

    invoke-static {v5}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1709
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->processEFCspData()V

    goto/16 :goto_c

    .line 1713
    .end local v12           #ar:Landroid/os/AsyncResult;
    .restart local p1
    :sswitch_9b4
    const-string v4, "CSP SIM Records"

    const-string v5, "Got Response for Automatic network selection"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1714
    const/16 v19, 0x0

    .line 1716
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroid/os/AsyncResult;

    .line 1718
    .restart local v12       #ar:Landroid/os/AsyncResult;
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_9d1

    .line 1719
    const-string v4, "CSP SIM Records"

    const-string v5, "Automatic network selection: failed!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 1721
    :cond_9d1
    const-string v4, "CSP SIM Records"

    const-string v5, "Automatic network selection: succeeded!"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 1726
    .end local v12           #ar:Landroid/os/AsyncResult;
    :sswitch_9da
    const/16 v19, 0x0

    .line 1727
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroid/os/AsyncResult;

    .line 1729
    .restart local v12       #ar:Landroid/os/AsyncResult;
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_9fb

    .line 1730
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->newVoiceMailNum:Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->voiceMailNum:Ljava/lang/String;

    .line 1731
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->newVoiceMailTag:Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->voiceMailTag:Ljava/lang/String;

    .line 1734
    :cond_9fb
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->isCphsMailboxEnabled()Z

    move-result v4

    if-eqz v4, :cond_a61

    .line 1735
    new-instance v5, Lcom/android/internal/telephony/AdnRecord;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->voiceMailTag:Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->voiceMailNum:Ljava/lang/String;

    move-object v6, v0

    invoke-direct {v5, v4, v6}, Lcom/android/internal/telephony/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1736
    .restart local v5       #adn:Lcom/android/internal/telephony/AdnRecord;
    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Landroid/os/Message;

    .line 1745
    .local v23, onCphsCompleted:Landroid/os/Message;
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_a41

    iget-object v4, v12, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v4, :cond_a41

    .line 1746
    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Landroid/os/Message;

    invoke-static/range {p1 .. p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v4

    const/4 v6, 0x0

    iput-object v6, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1748
    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 p1, v0

    check-cast p1, Landroid/os/Message;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->sendToTarget()V

    .line 1750
    const-string v4, "Callback with MBDN successful."

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 1752
    const/16 v23, 0x0

    .line 1755
    :cond_a41
    new-instance v4, Lcom/android/internal/telephony/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object v6, v0

    invoke-direct {v4, v6}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    const/16 v6, 0x6f17

    const/16 v7, 0x6f4a

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/16 v10, 0x19

    move-object/from16 v0, p0

    move v1, v10

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    invoke-virtual/range {v4 .. v10}, Lcom/android/internal/telephony/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_c

    .line 1760
    .end local v5           #adn:Lcom/android/internal/telephony/AdnRecord;
    .end local v23           #onCphsCompleted:Landroid/os/Message;
    .restart local p1
    :cond_a61
    iget-object v4, v12, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v4, :cond_c

    .line 1761
    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Landroid/os/Message;

    invoke-static/range {p1 .. p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v4

    iget-object v5, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v5, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1763
    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 p1, v0

    check-cast p1, Landroid/os/Message;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_c

    .line 1768
    .end local v12           #ar:Landroid/os/AsyncResult;
    .restart local p1
    :sswitch_a80
    const/16 v19, 0x0

    .line 1769
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroid/os/AsyncResult;

    .line 1770
    .restart local v12       #ar:Landroid/os/AsyncResult;
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_ac8

    .line 1771
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->newVoiceMailNum:Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->voiceMailNum:Ljava/lang/String;

    .line 1772
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->newVoiceMailTag:Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->voiceMailTag:Ljava/lang/String;

    .line 1777
    :goto_aa1
    iget-object v4, v12, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v4, :cond_c

    .line 1778
    const-string v4, "Callback with CPHS MB successful."

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 1779
    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Landroid/os/Message;

    invoke-static/range {p1 .. p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v4

    iget-object v5, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v5, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1781
    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 p1, v0

    check-cast p1, Landroid/os/Message;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_c

    .line 1774
    .restart local p1
    :cond_ac8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Set CPHS MailBox with exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_aa1

    .line 1785
    .end local v12           #ar:Landroid/os/AsyncResult;
    :sswitch_ae4
    const/16 v19, 0x0

    .line 1786
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroid/os/AsyncResult;

    .line 1787
    .restart local v12       #ar:Landroid/os/AsyncResult;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sim REFRESH with exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 1788
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_c

    .line 1789
    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [I

    check-cast p1, [I

    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/gsm/SIMRecords;->handleSimRefresh([I)V

    goto/16 :goto_c

    .line 1794
    .end local v12           #ar:Landroid/os/AsyncResult;
    .restart local p1
    :sswitch_b1a
    const-string v4, "[SIMRecords]"

    const-string v5, "[Rian] SIMRecords : EVENT_SIM_INSERTED"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1795
    const/16 v19, 0x0

    .line 1796
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroid/os/AsyncResult;

    .line 1797
    .restart local v12       #ar:Landroid/os/AsyncResult;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sim INSERTED with exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 1798
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_c

    .line 1799
    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [I

    check-cast p1, [I

    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/gsm/SIMRecords;->handleSimInserted([I)V

    goto/16 :goto_c

    .line 1803
    .end local v12           #ar:Landroid/os/AsyncResult;
    .restart local p1
    :sswitch_b57
    const/16 v19, 0x0

    .line 1805
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroid/os/AsyncResult;

    .line 1809
    .restart local v12       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object v4, v0

    if-eqz v4, :cond_be1

    .line 1810
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    .line 1816
    .local v22, mccFromSim:I
    :goto_b76
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->countrycode:Ljava/lang/String;

    move-object v4, v0

    if-eqz v4, :cond_b84

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->operator:Ljava/lang/String;

    move-object v4, v0

    if-nez v4, :cond_b96

    .line 1818
    :cond_b84
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getCountryCode()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->countrycode:Ljava/lang/String;

    .line 1819
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getOperatorCode()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->operator:Ljava/lang/String;

    .line 1823
    :cond_b96
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_c3c

    .line 1824
    const-string v4, "GSM"

    const-string v5, "EF_ECC read fail"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1827
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->countrycode:Ljava/lang/String;

    move-object v4, v0

    const-string v5, "GB"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->countrycode:Ljava/lang/String;

    move-object v5, v0

    const-string v6, "IT"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    or-int/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->countrycode:Ljava/lang/String;

    move-object v5, v0

    const-string v6, "HK"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    or-int/2addr v4, v5

    if-eqz v4, :cond_bea

    .line 1831
    const/16 v4, 0x104

    move/from16 v0, v22

    move v1, v4

    if-eq v0, v1, :cond_bdb

    const/16 v4, 0xe6

    move/from16 v0, v22

    move v1, v4

    if-eq v0, v1, :cond_bdb

    const/16 v4, 0x10c

    move/from16 v0, v22

    move v1, v4

    if-ne v0, v1, :cond_be4

    .line 1833
    :cond_bdb
    const-string v4, "112,911"

    sput-object v4, Lcom/android/internal/telephony/gsm/SIMRecords;->ecc_list:Ljava/lang/String;

    goto/16 :goto_c

    .line 1812
    .end local v22           #mccFromSim:I
    :cond_be1
    const/16 v22, 0x0

    .restart local v22       #mccFromSim:I
    goto :goto_b76

    .line 1837
    :cond_be4
    const-string v4, "112,911,999"

    sput-object v4, Lcom/android/internal/telephony/gsm/SIMRecords;->ecc_list:Ljava/lang/String;

    goto/16 :goto_c

    .line 1842
    :cond_bea
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->countrycode:Ljava/lang/String;

    move-object v4, v0

    const-string v5, "BR"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_bfd

    .line 1843
    const-string v4, "112,911,190"

    sput-object v4, Lcom/android/internal/telephony/gsm/SIMRecords;->ecc_list:Ljava/lang/String;

    goto/16 :goto_c

    .line 1844
    :cond_bfd
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->countrycode:Ljava/lang/String;

    move-object v4, v0

    const-string v5, "AU"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c10

    .line 1845
    const-string v4, "112,911,000"

    sput-object v4, Lcom/android/internal/telephony/gsm/SIMRecords;->ecc_list:Ljava/lang/String;

    goto/16 :goto_c

    .line 1846
    :cond_c10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->countrycode:Ljava/lang/String;

    move-object v4, v0

    const-string v5, "MX"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c23

    .line 1847
    const-string v4, "112,911,060"

    sput-object v4, Lcom/android/internal/telephony/gsm/SIMRecords;->ecc_list:Ljava/lang/String;

    goto/16 :goto_c

    .line 1848
    :cond_c23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->countrycode:Ljava/lang/String;

    move-object v4, v0

    const-string v5, "KR"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c36

    .line 1849
    const-string v4, "112,119,911,122,113,125,127,111"

    sput-object v4, Lcom/android/internal/telephony/gsm/SIMRecords;->ecc_list:Ljava/lang/String;

    goto/16 :goto_c

    .line 1851
    :cond_c36
    const-string v4, "112,911"

    sput-object v4, Lcom/android/internal/telephony/gsm/SIMRecords;->ecc_list:Ljava/lang/String;

    goto/16 :goto_c

    .line 1856
    :cond_c3c
    sget v4, Lcom/android/internal/telephony/gsm/SIMRecords;->sim_type:I

    packed-switch v4, :pswitch_data_1346

    .line 1911
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ecc handle with unknown sim type : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/internal/telephony/gsm/SIMRecords;->sim_type:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 1858
    :pswitch_c5d
    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [B

    move-object/from16 v0, p1

    check-cast v0, [B

    move-object v13, v0

    .line 1860
    .restart local v13       #data:[B
    const/16 v25, 0x0

    .line 1861
    .local v25, temp_ecc:Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    array-length v4, v13

    mul-int/lit8 v4, v4, 0x3

    add-int/lit8 v4, v4, 0x28

    invoke-direct {v14, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1863
    .local v14, ecc:Ljava/lang/StringBuilder;
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EF_ECC length = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v13

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1864
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EF_ECC data = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v13}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1866
    const/16 v16, 0x0

    .local v16, i:I
    :goto_cac
    array-length v4, v13

    div-int/lit8 v4, v4, 0x3

    move/from16 v0, v16

    move v1, v4

    if-ge v0, v1, :cond_cf3

    .line 1867
    mul-int/lit8 v4, v16, 0x3

    const/4 v5, 0x3

    invoke-static {v13, v4, v5}, Lcom/android/internal/telephony/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v25

    .line 1868
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EF_ECC["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1869
    if-eqz v25, :cond_cf0

    .line 1870
    move-object v0, v14

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1871
    const/16 v4, 0x2c

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1866
    :cond_cf0
    add-int/lit8 v16, v16, 0x1

    goto :goto_cac

    .line 1875
    :cond_cf3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->countrycode:Ljava/lang/String;

    move-object v4, v0

    const-string v5, "GB"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->countrycode:Ljava/lang/String;

    move-object v5, v0

    const-string v6, "IT"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    or-int/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->countrycode:Ljava/lang/String;

    move-object v5, v0

    const-string v6, "HK"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    or-int/2addr v4, v5

    if-eqz v4, :cond_d63

    .line 1879
    const/16 v4, 0x104

    move/from16 v0, v22

    move v1, v4

    if-eq v0, v1, :cond_d2d

    const/16 v4, 0xe6

    move/from16 v0, v22

    move v1, v4

    if-eq v0, v1, :cond_d2d

    const/16 v4, 0x10c

    move/from16 v0, v22

    move v1, v4

    if-ne v0, v1, :cond_d5d

    .line 1881
    :cond_d2d
    const-string v4, "112,911"

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1901
    :goto_d32
    const-string v4, "ro.ril.ecclist"

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1902
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/internal/telephony/gsm/SIMRecords;->ecc_list:Ljava/lang/String;

    .line 1903
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EF_ECC list = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/gsm/SIMRecords;->ecc_list:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 1885
    :cond_d5d
    const-string v4, "112,911,999"

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d32

    .line 1890
    :cond_d63
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->countrycode:Ljava/lang/String;

    move-object v4, v0

    const-string v5, "BR"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d76

    .line 1891
    const-string v4, "112,911,190"

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d32

    .line 1892
    :cond_d76
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->countrycode:Ljava/lang/String;

    move-object v4, v0

    const-string v5, "AU"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d89

    .line 1893
    const-string v4, "112,911,000"

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d32

    .line 1894
    :cond_d89
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->countrycode:Ljava/lang/String;

    move-object v4, v0

    const-string v5, "MX"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d9c

    .line 1895
    const-string v4, "112,911,060"

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d32

    .line 1896
    :cond_d9c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->countrycode:Ljava/lang/String;

    move-object v4, v0

    const-string v5, "KR"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_daf

    .line 1897
    const-string v4, "112,119,911,122,113,125,127,111"

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d32

    .line 1899
    :cond_daf
    const-string v4, "112,911"

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_d32

    .line 1907
    .end local v13           #data:[B
    .end local v14           #ecc:Ljava/lang/StringBuilder;
    .end local v16           #i:I
    .end local v25           #temp_ecc:Ljava/lang/String;
    .restart local p1
    :pswitch_db6
    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/gsm/SIMRecords;->handleEccs(Ljava/util/ArrayList;)V

    goto/16 :goto_c

    .line 1917
    .end local v12           #ar:Landroid/os/AsyncResult;
    .end local v22           #mccFromSim:I
    .restart local p1
    :sswitch_dc2
    const/16 v19, 0x1

    .line 1919
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroid/os/AsyncResult;

    .line 1920
    .restart local v12       #ar:Landroid/os/AsyncResult;
    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [B

    move-object/from16 v0, p1

    check-cast v0, [B

    move-object v13, v0

    .line 1922
    .restart local v13       #data:[B
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_c

    .line 1926
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EF_CFIS: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v13}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1929
    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    .line 1932
    const/4 v4, 0x1

    aget-byte v4, v13, v4

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_e16

    const/4 v4, 0x1

    :goto_e04
    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->callForwardingEnabled:Z

    .line 1934
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 p1, v0

    check-cast p1, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyCallForwardingIndicator()V

    goto/16 :goto_c

    .line 1932
    :cond_e16
    const/4 v4, 0x0

    goto :goto_e04

    .line 1938
    .end local v12           #ar:Landroid/os/AsyncResult;
    .end local v13           #data:[B
    .restart local p1
    :sswitch_e18
    const/16 v19, 0x1

    .line 1939
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroid/os/AsyncResult;

    .line 1940
    .restart local v12       #ar:Landroid/os/AsyncResult;
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_e47

    .line 1941
    const-string v4, "EONS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception in fetching OPL Records "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1942
    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->oplCache:Ljava/util/ArrayList;

    goto/16 :goto_c

    .line 1945
    :cond_e47
    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Ljava/util/ArrayList;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->oplCache:Ljava/util/ArrayList;

    .line 1947
    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    check-cast p1, Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/gsm/SIMRecords;->cachingOplData(Ljava/util/ArrayList;)V

    .line 1949
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v4

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->displayEonsName(I)V

    goto/16 :goto_c

    .line 1953
    .end local v12           #ar:Landroid/os/AsyncResult;
    .restart local p1
    :sswitch_e67
    const/16 v19, 0x1

    .line 1954
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroid/os/AsyncResult;

    .line 1955
    .restart local v12       #ar:Landroid/os/AsyncResult;
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_e96

    .line 1956
    const-string v4, "EONS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception in fetching PNN Records "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1957
    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->pnnCache:Ljava/util/ArrayList;

    goto/16 :goto_c

    .line 1960
    :cond_e96
    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Ljava/util/ArrayList;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->pnnCache:Ljava/util/ArrayList;

    .line 1961
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v4

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->displayEonsName(I)V

    goto/16 :goto_c

    .line 1968
    .end local v12           #ar:Landroid/os/AsyncResult;
    .restart local p1
    :sswitch_eac
    const-string v4, "[RIAN]"

    const-string v5, " (goodjs - SIMRecords) EVENT_GET_PBR_RECORD_SIZE_DONE:"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1969
    const/16 v19, 0x1

    .line 1971
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Landroid/os/AsyncResult;

    move-object/from16 v0, p1

    check-cast v0, Landroid/os/AsyncResult;

    move-object v12, v0

    .line 1973
    .restart local v12       #ar:Landroid/os/AsyncResult;
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_eed

    .line 1980
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object v4, v0

    const/16 v5, 0x6f3a

    const/16 v6, 0x30

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/PhoneBase;->LGEgetEFLinearRecordSize(ILandroid/os/Message;)V

    .line 1982
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    move v4, v0

    add-int/lit8 v4, v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    goto/16 :goto_c

    .line 1986
    :cond_eed
    const-string v4, "[RIAN]"

    const-string v5, " (goodjs (2)  - SIMRecords) EVENT_GET_PBR_RECORD_SIZE_DONE:"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1987
    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    check-cast p1, [I

    check-cast p1, [I

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->PBRrecordSize:[I

    .line 1993
    const/4 v4, 0x4

    new-array v4, v4, [I

    sput-object v4, Lcom/android/internal/telephony/gsm/SIMRecords;->ADNsRecNum:[I

    .line 1994
    const/4 v4, 0x4

    new-array v4, v4, [I

    sput-object v4, Lcom/android/internal/telephony/gsm/SIMRecords;->EF_ADNs:[I

    .line 1995
    const/16 v16, 0x0

    .restart local v16       #i:I
    :goto_f0f
    const/4 v4, 0x4

    move/from16 v0, v16

    move v1, v4

    if-ge v0, v1, :cond_f22

    .line 1996
    sget-object v4, Lcom/android/internal/telephony/gsm/SIMRecords;->EF_ADNs:[I

    const/4 v5, 0x0

    aput v5, v4, v16

    .line 1997
    sget-object v4, Lcom/android/internal/telephony/gsm/SIMRecords;->ADNsRecNum:[I

    const/4 v5, 0x0

    aput v5, v4, v16

    .line 1995
    add-int/lit8 v16, v16, 0x1

    goto :goto_f0f

    .line 2000
    :cond_f22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->PBRrecordSize:[I

    move-object v4, v0

    const/4 v5, 0x2

    aget v4, v4, v5

    const/4 v5, 0x1

    if-ne v4, v5, :cond_f5d

    .line 2002
    const-string v4, "[RIAN]"

    const-string v5, " PBRrecordSize[2] == 1"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2004
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object v4, v0

    const/16 v5, 0x4f30

    const/4 v6, 0x1

    const/16 v7, 0x2e

    move-object/from16 v0, p0

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/internal/telephony/PhoneBase;->LGEIccLoadEFLinearFixed(IILandroid/os/Message;)V

    .line 2015
    :goto_f48
    const-string v4, "[RIAN]"

    const-string v5, " (goodjs (3)  - SIMRecords) EVENT_GET_PBR_RECORD_SIZE_DONE:"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2017
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    move v4, v0

    add-int/lit8 v4, v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    goto/16 :goto_c

    .line 2009
    :cond_f5d
    const-string v4, "[RIAN]"

    const-string v5, " PBRrecordSize[2] != 1"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2011
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object v4, v0

    const/16 v5, 0x4f30

    const/16 v6, 0x2f

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/PhoneBase;->LGEIccLoadEFLinearFixedAll(ILandroid/os/Message;)V

    goto :goto_f48

    .line 2021
    .end local v12           #ar:Landroid/os/AsyncResult;
    .end local v16           #i:I
    .restart local p1
    :sswitch_f78
    const-string v4, "[RIAN]"

    const-string v5, " (goodjs (4)  - SIMRecords) EVENT_GET_PBR_DONE:"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2022
    const/16 v19, 0x1

    .line 2024
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroid/os/AsyncResult;

    .line 2025
    .restart local v12       #ar:Landroid/os/AsyncResult;
    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [B

    move-object/from16 v0, p1

    check-cast v0, [B

    move-object v13, v0

    .line 2027
    .restart local v13       #data:[B
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_fbf

    .line 2029
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object v4, v0

    const/16 v5, 0x6f3a

    const/16 v6, 0x30

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/PhoneBase;->LGEgetEFLinearRecordSize(ILandroid/os/Message;)V

    .line 2031
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    move v4, v0

    add-int/lit8 v4, v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    goto/16 :goto_c

    .line 2035
    :cond_fbf
    move-object/from16 v0, p0

    move-object v1, v13

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->handlePbrData([B)V

    .line 2037
    const/4 v4, 0x0

    sput v4, Lcom/android/internal/telephony/gsm/SIMRecords;->countADN:I

    .line 2038
    sget v4, Lcom/android/internal/telephony/gsm/SIMRecords;->validADNNum:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_ff1

    .line 2043
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object v4, v0

    sget-object v5, Lcom/android/internal/telephony/gsm/SIMRecords;->EF_ADNs:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    const/16 v6, 0x30

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/PhoneBase;->LGEgetEFADNLinearRecordSize(ILandroid/os/Message;)V

    .line 2045
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    move v4, v0

    add-int/lit8 v4, v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    goto/16 :goto_c

    .line 2052
    :cond_ff1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object v4, v0

    const/16 v5, 0x6f3a

    const/16 v6, 0x30

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/PhoneBase;->LGEgetEFLinearRecordSize(ILandroid/os/Message;)V

    .line 2054
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    move v4, v0

    add-int/lit8 v4, v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    goto/16 :goto_c

    .line 2060
    .end local v12           #ar:Landroid/os/AsyncResult;
    .end local v13           #data:[B
    .restart local p1
    :sswitch_1018
    const-string v4, "[RIAN]"

    const-string v5, " (goodjs (5)  - SIMRecords) EVENT_GET_ALL_PBR_DONE:"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2061
    const/16 v19, 0x1

    .line 2063
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroid/os/AsyncResult;

    .line 2065
    .restart local v12       #ar:Landroid/os/AsyncResult;
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_1053

    .line 2069
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object v4, v0

    const/16 v5, 0x6f3a

    const/16 v6, 0x30

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/PhoneBase;->LGEgetEFLinearRecordSize(ILandroid/os/Message;)V

    .line 2071
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    move v4, v0

    add-int/lit8 v4, v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    goto/16 :goto_c

    .line 2074
    :cond_1053
    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/gsm/SIMRecords;->handlePbrsData(Ljava/util/ArrayList;)V

    .line 2075
    const/4 v4, 0x0

    sput v4, Lcom/android/internal/telephony/gsm/SIMRecords;->countADN:I

    .line 2076
    sget v4, Lcom/android/internal/telephony/gsm/SIMRecords;->validADNNum:I

    const/4 v5, 0x1

    if-lt v4, v5, :cond_1091

    .line 2081
    const-string v4, "[RIAN]"

    const-string v5, " (goodjs (6)  - SIMRecords) EVENT_GET_ALL_PBR_DONE:"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2082
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object v4, v0

    sget-object v5, Lcom/android/internal/telephony/gsm/SIMRecords;->EF_ADNs:[I

    sget v6, Lcom/android/internal/telephony/gsm/SIMRecords;->countADN:I

    aget v5, v5, v6

    const/16 v6, 0x30

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/PhoneBase;->LGEgetEFADNLinearRecordSize(ILandroid/os/Message;)V

    .line 2084
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    move v4, v0

    add-int/lit8 v4, v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    goto/16 :goto_c

    .line 2091
    :cond_1091
    const-string v4, "[RIAN]"

    const-string v5, " (goodjs (7)  - SIMRecords) EVENT_GET_ALL_PBR_DONE:"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2092
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object v4, v0

    const/16 v5, 0x6f3a

    const/16 v6, 0x30

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/PhoneBase;->LGEgetEFLinearRecordSize(ILandroid/os/Message;)V

    .line 2094
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    move v4, v0

    add-int/lit8 v4, v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    goto/16 :goto_c

    .line 2100
    .end local v12           #ar:Landroid/os/AsyncResult;
    .restart local p1
    :sswitch_10bf
    const/16 v19, 0x1

    .line 2102
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroid/os/AsyncResult;

    .line 2104
    .restart local v12       #ar:Landroid/os/AsyncResult;
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_10d5

    .line 2105
    sget v4, Lcom/android/internal/telephony/gsm/SIMRecords;->countADN:I

    sput v4, Lcom/android/internal/telephony/gsm/SIMRecords;->validADNNum:I

    .line 2106
    const/4 v4, 0x0

    sput v4, Lcom/android/internal/telephony/gsm/SIMRecords;->countADN:I

    goto/16 :goto_c

    .line 2110
    :cond_10d5
    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [I

    move-object/from16 v0, p1

    check-cast v0, [I

    move-object v11, v0

    .line 2115
    .local v11, adnFileInfo:[I
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[pjman 3G PB] ADN FID :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/gsm/SIMRecords;->EF_ADNs:[I

    sget v7, Lcom/android/internal/telephony/gsm/SIMRecords;->countADN:I

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2116
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[pjman 3G PB] record length :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    aget v6, v11, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2117
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[pjman 3G PB] total length :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    aget v6, v11, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2118
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[pjman 3G PB] record number :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x2

    aget v6, v11, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2120
    sget v4, Lcom/android/internal/telephony/gsm/SIMRecords;->validADNNum:I

    if-lez v4, :cond_11a7

    .line 2122
    sget-object v4, Lcom/android/internal/telephony/gsm/SIMRecords;->ADNsRecNum:[I

    sget v5, Lcom/android/internal/telephony/gsm/SIMRecords;->countADN:I

    const/4 v6, 0x2

    aget v6, v11, v6

    aput v6, v4, v5

    .line 2123
    sget v4, Lcom/android/internal/telephony/gsm/SIMRecords;->countADN:I

    if-nez v4, :cond_1169

    .line 2125
    const/4 v4, 0x0

    aget v4, v11, v4

    const/16 v5, 0xe

    sub-int/2addr v4, v5

    sput v4, Lcom/android/internal/telephony/gsm/SIMRecords;->ADN_NAME_MAX:I

    .line 2127
    :cond_1169
    sget v4, Lcom/android/internal/telephony/gsm/SIMRecords;->ADN_REC_NUM:I

    const/4 v5, 0x2

    aget v5, v11, v5

    add-int/2addr v4, v5

    sput v4, Lcom/android/internal/telephony/gsm/SIMRecords;->ADN_REC_NUM:I

    .line 2128
    sget v4, Lcom/android/internal/telephony/gsm/SIMRecords;->countADN:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/android/internal/telephony/gsm/SIMRecords;->countADN:I

    .line 2129
    sget v4, Lcom/android/internal/telephony/gsm/SIMRecords;->validADNNum:I

    sget v5, Lcom/android/internal/telephony/gsm/SIMRecords;->countADN:I

    if-le v4, v5, :cond_11a2

    .line 2135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object v4, v0

    sget-object v5, Lcom/android/internal/telephony/gsm/SIMRecords;->EF_ADNs:[I

    sget v6, Lcom/android/internal/telephony/gsm/SIMRecords;->countADN:I

    aget v5, v5, v6

    const/16 v6, 0x30

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/PhoneBase;->LGEgetEFADNLinearRecordSize(ILandroid/os/Message;)V

    .line 2137
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    move v4, v0

    add-int/lit8 v4, v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    goto/16 :goto_c

    .line 2141
    :cond_11a2
    const/4 v4, 0x0

    sput v4, Lcom/android/internal/telephony/gsm/SIMRecords;->countADN:I

    goto/16 :goto_c

    .line 2146
    :cond_11a7
    const/4 v4, 0x0

    aget v4, v11, v4

    const/16 v5, 0xe

    sub-int/2addr v4, v5

    sput v4, Lcom/android/internal/telephony/gsm/SIMRecords;->ADN_NAME_MAX:I

    .line 2147
    const/4 v4, 0x2

    aget v4, v11, v4

    sput v4, Lcom/android/internal/telephony/gsm/SIMRecords;->ADN_REC_NUM:I

    goto/16 :goto_c

    .line 2152
    .end local v11           #adnFileInfo:[I
    .end local v12           #ar:Landroid/os/AsyncResult;
    .restart local p1
    :sswitch_11b6
    const-string v4, "[SIMRecords]"

    const-string v5, "[Rian] SIMRecords : EVENT_GET_CBMI_DONE"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2153
    const/16 v19, 0x1

    .line 2155
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroid/os/AsyncResult;

    .line 2156
    .restart local v12       #ar:Landroid/os/AsyncResult;
    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [B

    move-object/from16 v0, p1

    check-cast v0, [B

    move-object v13, v0

    .line 2158
    .restart local v13       #data:[B
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_11f2

    .line 2159
    const-string v4, "[RIAN]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[SIMRecords] Error on GET_CBMI with exp "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 2164
    :cond_11f2
    const-string v4, "[RIAN]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[SIMRecords] EF_CBMI: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    check-cast p1, [B

    check-cast p1, [B

    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2167
    const-string v4, "[RIAN]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[SIMRecords] EF_CBMI: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v13}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2170
    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    check-cast p1, [B

    check-cast p1, [B

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->efCBMI:[B

    .line 2171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->operator:Ljava/lang/String;

    move-object v4, v0

    if-nez v4, :cond_1252

    .line 2172
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getOperatorCode()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->operator:Ljava/lang/String;

    .line 2174
    :cond_1252
    const-string v4, "[SIMRecord]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[Rian] Oerator Code : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->operator:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->operator:Ljava/lang/String;

    move-object v4, v0

    const-string v5, "VIVO"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1288

    .line 2176
    const-string v4, "[SIMRecord]"

    const-string v5, "[Rian] Handle VIVO default CBMI"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2177
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->handleCBMI_VIVO()V

    goto/16 :goto_c

    .line 2179
    :cond_1288
    const-string v4, "[SIMRecord]"

    const-string v5, "[Rian] Handle Normal USIM CBMI"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->efCBMI:[B

    move-object/from16 p1, v0

    check-cast p1, [B

    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/gsm/SIMRecords;->handleCBMI([B)V
    :try_end_129a
    .catchall {:try_start_85 .. :try_end_129a} :catchall_7e
    .catch Ljava/lang/RuntimeException; {:try_start_85 .. :try_end_129a} :catch_5c

    goto/16 :goto_c

    .line 1159
    :sswitch_data_129c
    .sparse-switch
        0x1 -> :sswitch_85
        0x2 -> :sswitch_9c
        0x3 -> :sswitch_eb
        0x4 -> :sswitch_4f9
        0x5 -> :sswitch_227
        0x6 -> :sswitch_2cc
        0x7 -> :sswitch_428
        0x8 -> :sswitch_4a8
        0x9 -> :sswitch_66a
        0xa -> :sswitch_3b5
        0xb -> :sswitch_2cc
        0xc -> :sswitch_6db
        0xd -> :sswitch_76a
        0xe -> :sswitch_78b
        0xf -> :sswitch_7a1
        0x11 -> :sswitch_8de
        0x12 -> :sswitch_7ed
        0x13 -> :sswitch_806
        0x14 -> :sswitch_9da
        0x15 -> :sswitch_825
        0x16 -> :sswitch_8a7
        0x18 -> :sswitch_6ee
        0x19 -> :sswitch_a80
        0x1a -> :sswitch_922
        0x1e -> :sswitch_400
        0x1f -> :sswitch_ae4
        0x20 -> :sswitch_dc2
        0x21 -> :sswitch_e18
        0x22 -> :sswitch_962
        0x23 -> :sswitch_e67
        0x24 -> :sswitch_b1a
        0x25 -> :sswitch_b57
        0x29 -> :sswitch_600
        0x2b -> :sswitch_563
        0x2c -> :sswitch_12
        0x2d -> :sswitch_eac
        0x2e -> :sswitch_f78
        0x2f -> :sswitch_1018
        0x30 -> :sswitch_10bf
        0x31 -> :sswitch_11b6
        0x32 -> :sswitch_c
        0x12c -> :sswitch_9b4
    .end sparse-switch

    .line 1856
    :pswitch_data_1346
    .packed-switch 0x1
        :pswitch_c5d
        :pswitch_db6
    .end packed-switch
.end method

.method handleSstData([B)V
    .registers 7
    .parameter "data"

    .prologue
    const/4 v3, 0x3

    const-string v4, "EONS"

    .line 3605
    :try_start_3
    const-string v1, "persist.cust.tel.simtype"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_a7

    .line 3610
    const/16 v1, 0xc

    aget-byte v1, p1, v1

    shr-int/lit8 v1, v1, 0x4

    and-int/lit8 v1, v1, 0xf

    iput v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->sstPlmnOplValue:I

    .line 3611
    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->sstPlmnOplValue:I

    const/16 v2, 0xf

    if-ne v1, v2, :cond_4a

    .line 3612
    sget v1, Lcom/android/internal/telephony/gsm/SIMRecords;->PNN_OPL_ENABLED:I

    iput v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->sstPlmnOplValue:I

    .line 3613
    const-string v1, "EONS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SST: 2G Sim,PNN and OPL services enabled "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->sstPlmnOplValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3644
    :goto_3a
    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->sstPlmnOplValue:I

    sget v2, Lcom/android/internal/telephony/gsm/SIMRecords;->EONS_DISABLED:I

    if-ne v1, v2, :cond_49

    .line 3645
    iget-object p0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateSpnDisplayWrapper()V

    .line 3650
    :cond_49
    :goto_49
    return-void

    .line 3615
    .restart local p0
    :cond_4a
    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->sstPlmnOplValue:I

    if-ne v1, v3, :cond_88

    .line 3616
    sget v1, Lcom/android/internal/telephony/gsm/SIMRecords;->ONLY_PNN_ENABLED:I

    iput v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->sstPlmnOplValue:I

    .line 3617
    const-string v1, "EONS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SST: 2G Sim,PNN enabled, OPL disabled "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->sstPlmnOplValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6c} :catch_6d

    goto :goto_3a

    .line 3647
    .end local p0
    :catch_6d
    move-exception v1

    move-object v0, v1

    .line 3648
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "EONS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in processing SST Data "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_49

    .line 3620
    .end local v0           #e:Ljava/lang/Exception;
    .restart local p0
    :cond_88
    :try_start_88
    sget v1, Lcom/android/internal/telephony/gsm/SIMRecords;->EONS_DISABLED:I

    iput v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->sstPlmnOplValue:I

    .line 3621
    const-string v1, "EONS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SST: 2G Sim,PNN disabled, disabling EONS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->sstPlmnOplValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3a

    .line 3629
    :cond_a7
    const/4 v1, 0x5

    aget-byte v1, p1, v1

    shr-int/lit8 v1, v1, 0x4

    and-int/lit8 v1, v1, 0x3

    iput v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->sstPlmnOplValue:I

    .line 3630
    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->sstPlmnOplValue:I

    if-ne v1, v3, :cond_d4

    .line 3631
    sget v1, Lcom/android/internal/telephony/gsm/SIMRecords;->PNN_OPL_ENABLED:I

    iput v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->sstPlmnOplValue:I

    .line 3632
    const-string v1, "EONS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SST: 3G Sim,PNN and OPL services enabled "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->sstPlmnOplValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3a

    .line 3634
    :cond_d4
    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->sstPlmnOplValue:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_f9

    .line 3635
    sget v1, Lcom/android/internal/telephony/gsm/SIMRecords;->ONLY_PNN_ENABLED:I

    iput v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->sstPlmnOplValue:I

    .line 3636
    const-string v1, "EONS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SST: 3G Sim,PNN enabled, OPL disabled "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->sstPlmnOplValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3a

    .line 3639
    :cond_f9
    sget v1, Lcom/android/internal/telephony/gsm/SIMRecords;->EONS_DISABLED:I

    iput v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->sstPlmnOplValue:I

    .line 3640
    const-string v1, "EONS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SST: 3G Sim,PNN disabled, disabling EONS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->sstPlmnOplValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_117
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_117} :catch_6d

    goto/16 :goto_3a
.end method

.method isOnMatchingOpl(Ljava/lang/String;)Ljava/lang/String;
    .registers 14
    .parameter "plmn"

    .prologue
    .line 3516
    const/4 v4, 0x0

    .line 3517
    .local v4, ind:I
    const/4 v9, 0x6

    new-array v8, v9, [I

    fill-array-data v8, :array_182

    .line 3518
    .local v8, simPlmn:[I
    const/4 v9, 0x6

    new-array v0, v9, [I

    fill-array-data v0, :array_192

    .line 3519
    .local v0, Plmn:[I
    const/4 v1, 0x0

    .line 3524
    .local v1, PlmnLength:I
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v2, Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v9, v2, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v9, v9, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v9}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v7

    .line 3525
    .local v7, regOperator:Ljava/lang/String;
    const-string v9, "EONS"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isOnMatchingOpl() is called. plmn = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3527
    if-nez p1, :cond_36

    .line 3528
    const/4 v9, 0x0

    .line 3579
    :goto_35
    return-object v9

    .line 3532
    :cond_36
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 3533
    const/4 v5, 0x0

    .local v5, ind1:I
    :goto_3b
    if-ge v5, v1, :cond_49

    .line 3534
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x30

    sub-int/2addr v9, v10

    aput v9, v0, v5

    .line 3533
    add-int/lit8 v5, v5, 0x1

    goto :goto_3b

    .line 3538
    :cond_49
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->oplList:Ljava/util/ArrayList;

    if-eqz v9, :cond_13c

    .line 3539
    const-string v9, "EONS"

    const-string v10, "oplList is not null"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3540
    const/4 v4, 0x0

    :goto_55
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->oplList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v4, v9, :cond_13c

    .line 3541
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->oplList:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 3544
    .local v3, data:[B
    const/4 v9, 0x0

    const/4 v10, 0x0

    aget-byte v10, v3, v10

    and-int/lit8 v10, v10, 0xf

    aput v10, v8, v9

    .line 3545
    const/4 v9, 0x1

    const/4 v10, 0x0

    aget-byte v10, v3, v10

    shr-int/lit8 v10, v10, 0x4

    and-int/lit8 v10, v10, 0xf

    aput v10, v8, v9

    .line 3546
    const/4 v9, 0x2

    const/4 v10, 0x1

    aget-byte v10, v3, v10

    and-int/lit8 v10, v10, 0xf

    aput v10, v8, v9

    .line 3547
    const/4 v9, 0x3

    const/4 v10, 0x2

    aget-byte v10, v3, v10

    and-int/lit8 v10, v10, 0xf

    aput v10, v8, v9

    .line 3548
    const/4 v9, 0x4

    const/4 v10, 0x2

    aget-byte v10, v3, v10

    shr-int/lit8 v10, v10, 0x4

    and-int/lit8 v10, v10, 0xf

    aput v10, v8, v9

    .line 3549
    const/4 v9, 0x5

    const/4 v10, 0x1

    aget-byte v10, v3, v10

    shr-int/lit8 v10, v10, 0x4

    and-int/lit8 v10, v10, 0xf

    aput v10, v8, v9

    .line 3550
    const-string v9, "EONS"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "simPlmn = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3552
    invoke-virtual {p0, v8, v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->matchSimPlmn([I[II)Z

    move-result v9

    if-eqz v9, :cond_138

    .line 3553
    const/4 v9, 0x7

    aget-byte v9, v3, v9

    and-int/lit16 v9, v9, 0xff

    int-to-short v2, v9

    .line 3554
    .local v2, PnnRecNum:S
    const-string v9, "EONS"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "PnnRecNum = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3555
    const-string v9, "EONS"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "pnnList.size() = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->pnnList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3556
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->pnnList:Ljava/util/ArrayList;

    if-eqz v9, :cond_138

    if-lez v2, :cond_138

    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->pnnList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v2, v9, :cond_138

    .line 3557
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->pnnList:Ljava/util/ArrayList;

    const/4 v10, 0x1

    sub-int v10, v2, v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 3558
    .local v6, pnn:Ljava/lang/String;
    const-string v9, "EONS"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "pnn = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3560
    const-string v9, "FFFF"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_135

    .line 3561
    const/4 v9, 0x0

    goto/16 :goto_35

    :cond_135
    move-object v9, v6

    .line 3563
    goto/16 :goto_35

    .line 3540
    .end local v2           #PnnRecNum:S
    .end local v6           #pnn:Ljava/lang/String;
    :cond_138
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_55

    .line 3569
    .end local v3           #data:[B
    :cond_13c
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getSIMOperatorNumeric()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_17f

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getSIMOperatorNumeric()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_17f

    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->pnnList:Ljava/util/ArrayList;

    if-eqz v9, :cond_17f

    .line 3572
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->pnnList:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 3573
    .restart local v6       #pnn:Ljava/lang/String;
    const-string v9, "EONS"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Registered PLMN is HPLMN. So return EF_PNN\'s first record. pnn = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3574
    const-string v9, "FFFF"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_17c

    .line 3575
    const/4 v9, 0x0

    goto/16 :goto_35

    :cond_17c
    move-object v9, v6

    .line 3577
    goto/16 :goto_35

    .line 3579
    .end local v6           #pnn:Ljava/lang/String;
    :cond_17f
    const/4 v9, 0x0

    goto/16 :goto_35

    .line 3517
    :array_182
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 3518
    :array_192
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method protected log(Ljava/lang/String;)V
    .registers 5
    .parameter "s"

    .prologue
    .line 3275
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SIMRecords] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3276
    return-void
.end method

.method matchSimPlmn([I[II)Z
    .registers 14
    .parameter "simPlmn"
    .parameter "bcchPlmn"
    .parameter "length"

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x5

    const/4 v5, 0x0

    .line 3193
    const/16 v2, 0xd

    .line 3194
    .local v2, wildCardDigit:I
    const/4 v1, 0x0

    .line 3197
    .local v1, match:Z
    aget v3, p1, v6

    const/16 v4, 0xf

    if-ne v3, v4, :cond_10

    .line 3198
    aput v5, p1, v6

    .line 3203
    :cond_10
    const/4 v0, 0x0

    .local v0, i:I
    :goto_11
    if-ge v0, p3, :cond_1e

    .line 3204
    aget v3, p1, v0

    if-ne v3, v2, :cond_1b

    .line 3205
    aget v3, p2, v0

    aput v3, p1, v0

    .line 3203
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 3210
    :cond_1e
    aget v3, p1, v5

    aget v4, p2, v5

    if-ne v3, v4, :cond_41

    aget v3, p1, v7

    aget v4, p2, v7

    if-ne v3, v4, :cond_41

    const/4 v3, 0x2

    aget v3, p1, v3

    const/4 v4, 0x2

    aget v4, p2, v4

    if-ne v3, v4, :cond_41

    .line 3213
    if-ne p3, v6, :cond_44

    .line 3216
    aget v3, p1, v8

    aget v4, p2, v8

    if-ne v3, v4, :cond_42

    aget v3, p1, v9

    aget v4, p2, v9

    if-ne v3, v4, :cond_42

    move v1, v7

    .line 3226
    :cond_41
    :goto_41
    return v1

    :cond_42
    move v1, v5

    .line 3216
    goto :goto_41

    .line 3221
    :cond_44
    aget v3, p1, v8

    aget v4, p2, v8

    if-ne v3, v4, :cond_58

    aget v3, p1, v9

    aget v4, p2, v9

    if-ne v3, v4, :cond_58

    aget v3, p1, v6

    aget v4, p2, v6

    if-ne v3, v4, :cond_58

    move v1, v7

    :goto_57
    goto :goto_41

    :cond_58
    move v1, v5

    goto :goto_57
.end method

.method protected onAllRecordsLoaded()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 2813
    const-string v1, "GSM"

    const-string v2, "SIMRecords: record load complete"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2815
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getSIMOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 2819
    .local v0, operator:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v2, "gsm.sim.operator.numeric"

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2821
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    if-eqz v1, :cond_4a

    .line 2822
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v2, "gsm.sim.operator.iso-country"

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Lcom/android/internal/telephony/gsm/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2829
    :goto_2e
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->setVoiceMailByCountry(Ljava/lang/String;)V

    .line 2830
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->setSpnFromConfig(Ljava/lang/String;)V

    .line 2832
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsLoadedRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v6, v6, v6}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2834
    iget-object p0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimCard:Lcom/android/internal/telephony/gsm/SimCard;

    const-string v2, "LOADED"

    invoke-virtual {v1, v2, v6}, Lcom/android/internal/telephony/gsm/SimCard;->broadcastSimStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 2836
    return-void

    .line 2826
    .restart local p0
    :cond_4a
    const-string v1, "SIM"

    const-string v2, "[SIMRecords] onAllRecordsLoaded: imsi is NULL!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e
.end method

.method protected onRadioOffOrNotAvailable()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 504
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    .line 508
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->voiceMailNum:Ljava/lang/String;

    .line 509
    iput v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->countVoiceMessages:I

    .line 511
    iput v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->countVoiceMessages_line1:I

    .line 512
    iput v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->countVoiceMessages_line2:I

    .line 514
    iput v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    .line 515
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccid:Ljava/lang/String;

    .line 517
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayCondition:I

    .line 518
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    .line 519
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efCPHS_MWI:[B

    .line 520
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spdiNetworks:Ljava/util/ArrayList;

    .line 521
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->pnnHomeName:Ljava/lang/String;

    .line 522
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->oplDataPresent:Z

    .line 523
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->pnnDataPresent:Z

    .line 525
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->gid1:Ljava/lang/String;

    .line 527
    sget v0, Lcom/android/internal/telephony/gsm/SIMRecords;->NOT_INITIALIZED:I

    iput v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->sstPlmnOplValue:I

    .line 528
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->oplCache:Ljava/util/ArrayList;

    .line 529
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->pnnCache:Ljava/util/ArrayList;

    .line 532
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->PBRrecordSize:[I

    .line 533
    sput-object v2, Lcom/android/internal/telephony/gsm/SIMRecords;->EF_ADNs:[I

    .line 534
    sput-object v2, Lcom/android/internal/telephony/gsm/SIMRecords;->ADNsRecNum:[I

    .line 535
    sput v3, Lcom/android/internal/telephony/gsm/SIMRecords;->validADNNum:I

    .line 536
    sput v3, Lcom/android/internal/telephony/gsm/SIMRecords;->countADN:I

    .line 537
    sput v3, Lcom/android/internal/telephony/gsm/SIMRecords;->cacheADNRecNum:I

    .line 539
    sput v3, Lcom/android/internal/telephony/gsm/SIMRecords;->ADN_NAME_MAX:I

    .line 540
    sput v3, Lcom/android/internal/telephony/gsm/SIMRecords;->FDN_NAME_MAX:I

    .line 541
    sput v3, Lcom/android/internal/telephony/gsm/SIMRecords;->ADN_REC_NUM:I

    .line 542
    sput v3, Lcom/android/internal/telephony/gsm/SIMRecords;->FDN_REC_NUM:I

    .line 545
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/AdnRecordCache;->reset()V

    .line 547
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v1, "gsm.sim.operator.numeric"

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v1, "gsm.sim.operator.alpha"

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v1, "gsm.sim.operator.iso-country"

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    const-string v0, "gsm.eons.name"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsRequested:Z

    .line 556
    return-void
.end method

.method protected onRecordLoaded()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 2802
    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 2804
    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    if-nez v0, :cond_12

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsRequested:Z

    if-ne v0, v1, :cond_12

    .line 2805
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->onAllRecordsLoaded()V

    .line 2810
    :cond_11
    :goto_11
    return-void

    .line 2806
    :cond_12
    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    if-gez v0, :cond_11

    .line 2807
    const-string v0, "GSM"

    const-string v1, "SIMRecords: recordsToLoad <0, programmer error suspected"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2808
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    goto :goto_11
.end method

.method public onRefresh(Z[I)V
    .registers 3
    .parameter "fileChanged"
    .parameter "fileList"

    .prologue
    .line 1076
    if-eqz p1, :cond_5

    .line 1080
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->fetchSimRecords()V

    .line 1082
    :cond_5
    return-void
.end method

.method public registerForIccidLoaded(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 8
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    const/4 v3, 0x0

    .line 564
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 565
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccidLoadedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 567
    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccidLoadCompleted:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_18

    .line 568
    new-instance v1, Landroid/os/AsyncResult;

    invoke-direct {v1, v3, v3, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 570
    :cond_18
    return-void
.end method

.method public setMsisdnNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 11
    .parameter "alphaTag"
    .parameter "number"
    .parameter "onComplete"

    .prologue
    .line 607
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->msisdn:Ljava/lang/String;

    .line 608
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->msisdnTag:Ljava/lang/String;

    .line 610
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set MSISDN: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->msisdnTag:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->msisdn:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 613
    new-instance v1, Lcom/android/internal/telephony/AdnRecord;

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->msisdnTag:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->msisdn:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/android/internal/telephony/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    .local v1, adn:Lcom/android/internal/telephony/AdnRecord;
    new-instance v0, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    const/16 v2, 0x6f40

    const/16 v3, 0x6f4a

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x1e

    invoke-virtual {p0, v6, p3}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    .line 617
    return-void
.end method

.method public setPBRrecordSize(II)V
    .registers 4
    .parameter "index"
    .parameter "number"

    .prologue
    .line 381
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->PBRrecordSize:[I

    aput p2, v0, p1

    .line 382
    return-void
.end method

.method public setVoiceCallForwardingFlag(IZ)V
    .registers 11
    .parameter "line"
    .parameter "enable"

    .prologue
    const/4 v0, 0x1

    .line 955
    if-eq p1, v0, :cond_4

    .line 997
    :cond_3
    :goto_3
    return-void

    .line 957
    :cond_4
    iput-boolean p2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->callForwardingEnabled:Z

    .line 959
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyCallForwardingIndicator()V

    .line 962
    :try_start_d
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    if-eqz v0, :cond_38

    .line 964
    if-eqz p2, :cond_71

    .line 965
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    const/4 v1, 0x1

    aget-byte v2, v0, v1

    or-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 973
    :goto_1d
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    const/16 v1, 0x6fcb

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/16 v7, 0x6fcb

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p0, v5, v7}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 978
    :cond_38
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    if-eqz v0, :cond_3

    .line 979
    if-eqz p2, :cond_7c

    .line 980
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xf0

    or-int/lit8 v2, v2, 0xa

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 987
    :goto_4d
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    const/16 v1, 0x6f13

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    const/16 v3, 0xe

    const/16 v4, 0x6f13

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V
    :try_end_66
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_d .. :try_end_66} :catch_67

    goto :goto_3

    .line 991
    :catch_67
    move-exception v0

    move-object v6, v0

    .line 992
    .local v6, ex:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v0, "GSM"

    const-string v1, "Error saving call fowarding flag to SIM. Probably malformed SIM record"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 967
    .end local v6           #ex:Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_71
    :try_start_71
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    const/4 v1, 0x1

    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xfe

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_1d

    .line 983
    :cond_7c
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xf0

    or-int/lit8 v2, v2, 0x5

    int-to-byte v2, v2

    aput-byte v2, v0, v1
    :try_end_8b
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_71 .. :try_end_8b} :catch_67

    goto :goto_4d
.end method

.method public setVoiceCallForwardingFlag(IZZ)V
    .registers 12
    .parameter "line"
    .parameter "enable1"
    .parameter "enable2"

    .prologue
    .line 1003
    and-int/lit8 v0, p1, 0x3

    if-nez v0, :cond_5

    .line 1066
    :cond_4
    :goto_4
    return-void

    .line 1005
    :cond_5
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_b

    .line 1006
    iput-boolean p2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->callForwardingEnabled:Z

    .line 1008
    :cond_b
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_11

    .line 1009
    iput-boolean p3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->callForwardingEnabledLine2:Z

    .line 1012
    :cond_11
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyCallForwardingIndicator()V

    .line 1015
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_47

    :try_start_1c
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    if-eqz v0, :cond_47

    .line 1017
    if-eqz p2, :cond_9b

    .line 1018
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    const/4 v1, 0x1

    aget-byte v2, v0, v1

    or-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1028
    :goto_2c
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    const/16 v1, 0x6fcb

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/16 v7, 0x6fcb

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p0, v5, v7}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 1033
    :cond_47
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    if-eqz v0, :cond_4

    .line 1034
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_60

    .line 1035
    if-eqz p2, :cond_a6

    .line 1036
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xf0

    or-int/lit8 v2, v2, 0xa

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1044
    :cond_60
    :goto_60
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_75

    .line 1045
    if-eqz p3, :cond_b6

    .line 1046
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    and-int/lit8 v2, v2, 0xf

    or-int/lit16 v2, v2, 0xa0

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1056
    :cond_75
    :goto_75
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    const/16 v1, 0x6f13

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    const/16 v3, 0xe

    const/16 v4, 0x6f13

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V
    :try_end_8e
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1c .. :try_end_8e} :catch_90

    goto/16 :goto_4

    .line 1060
    :catch_90
    move-exception v0

    move-object v6, v0

    .line 1061
    .local v6, ex:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v0, "GSM"

    const-string v1, "Error saving call fowarding flag to SIM. Probably malformed SIM record"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .line 1020
    .end local v6           #ex:Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_9b
    :try_start_9b
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    const/4 v1, 0x1

    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xfe

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_2c

    .line 1039
    :cond_a6
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xf0

    or-int/lit8 v2, v2, 0x5

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_60

    .line 1049
    :cond_b6
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    and-int/lit8 v2, v2, 0xf

    or-int/lit8 v2, v2, 0x50

    int-to-byte v2, v2

    aput-byte v2, v0, v1
    :try_end_c5
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_9b .. :try_end_c5} :catch_90

    goto :goto_75
.end method

.method public setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 11
    .parameter "alphaTag"
    .parameter "voiceNumber"
    .parameter "onComplete"

    .prologue
    const/4 v5, 0x0

    .line 808
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isVoiceMailFixed:Z

    if-eqz v0, :cond_16

    .line 809
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    new-instance v2, Lcom/android/internal/telephony/IccVmFixedException;

    const-string v3, "Voicemail number is fixed by operator"

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/IccVmFixedException;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 811
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 837
    :goto_15
    return-void

    .line 815
    :cond_16
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->newVoiceMailNum:Ljava/lang/String;

    .line 816
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->newVoiceMailTag:Ljava/lang/String;

    .line 818
    new-instance v1, Lcom/android/internal/telephony/AdnRecord;

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->newVoiceMailTag:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->newVoiceMailNum:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/android/internal/telephony/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    .local v1, adn:Lcom/android/internal/telephony/AdnRecord;
    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mailboxIndex:I

    if-eqz v0, :cond_44

    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mailboxIndex:I

    const/16 v2, 0xff

    if-eq v0, v2, :cond_44

    .line 822
    new-instance v0, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    const/16 v2, 0x6fc7

    const/16 v3, 0x6fc8

    iget v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mailboxIndex:I

    const/16 v6, 0x14

    invoke-virtual {p0, v6, p3}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    goto :goto_15

    .line 826
    :cond_44
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->isCphsMailboxEnabled()Z

    move-result v0

    if-eqz v0, :cond_60

    .line 828
    new-instance v0, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    const/16 v2, 0x6f17

    const/16 v3, 0x6f4a

    const/4 v4, 0x1

    const/16 v6, 0x19

    invoke-virtual {p0, v6, p3}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    goto :goto_15

    .line 833
    :cond_60
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    new-instance v2, Lcom/android/internal/telephony/IccVmNotSupportedException;

    const-string v3, "Update SIM voice mailbox error"

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/IccVmNotSupportedException;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 835
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_15
.end method

.method public setVoiceMessageWaiting(II)V
    .registers 11
    .parameter "line"
    .parameter "countWaiting"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 864
    if-gez p2, :cond_84

    .line 865
    const/4 p2, -0x1

    .line 873
    :cond_5
    :goto_5
    if-ne p1, v5, :cond_8c

    .line 874
    iput p2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->countVoiceMessages:I

    .line 875
    iput p2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->countVoiceMessages_line1:I

    .line 876
    const-string v0, "[SIMRecords]"

    const-string v1, "setVoiceMessageWaiting() : This Line 1"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    :cond_12
    :goto_12
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyMessageWaitingIndicator()V

    .line 886
    :try_start_19
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    if-eqz v0, :cond_53

    .line 890
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xfe

    iget v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->countVoiceMessages:I

    if-nez v3, :cond_9a

    move v3, v4

    :goto_2c
    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 894
    if-gez p2, :cond_9c

    .line 897
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput-byte v2, v0, v1

    .line 902
    :goto_38
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    const/16 v1, 0x6fca

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/16 v7, 0x6fca

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p0, v5, v7}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 907
    :cond_53
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efCPHS_MWI:[B

    if-eqz v0, :cond_83

    .line 909
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efCPHS_MWI:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efCPHS_MWI:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xf0

    iget v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->countVoiceMessages:I

    if-nez v3, :cond_ad

    const/4 v3, 0x5

    :goto_66
    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 912
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    const/16 v1, 0x6f11

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efCPHS_MWI:[B

    const/16 v3, 0xe

    const/16 v4, 0x6f11

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V
    :try_end_83
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_19 .. :try_end_83} :catch_a3

    .line 920
    :cond_83
    :goto_83
    return-void

    .line 866
    :cond_84
    const/16 v0, 0xff

    if-le p2, v0, :cond_5

    .line 869
    const/16 p2, 0xff

    goto/16 :goto_5

    .line 877
    :cond_8c
    const/4 v0, 0x2

    if-ne p1, v0, :cond_12

    .line 878
    iput p2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->countVoiceMessages_line2:I

    .line 879
    const-string v0, "[SIMRecords]"

    const-string v1, "setVoiceMessageWaiting() : This Line 2"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12

    :cond_9a
    move v3, v5

    .line 890
    goto :goto_2c

    .line 899
    :cond_9c
    :try_start_9c
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    const/4 v1, 0x1

    int-to-byte v2, p2

    aput-byte v2, v0, v1
    :try_end_a2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_9c .. :try_end_a2} :catch_a3

    goto :goto_38

    .line 916
    :catch_a3
    move-exception v0

    move-object v6, v0

    .line 917
    .local v6, ex:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v0, "GSM"

    const-string v1, "Error saving voice mail state to SIM. Probably malformed SIM record"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_83

    .line 909
    .end local v6           #ex:Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_ad
    const/16 v3, 0xa

    goto :goto_66
.end method

.method updateOplCache()V
    .registers 4

    .prologue
    .line 3326
    const-string v0, "EONS"

    const-string v1, "Updating OPL Cache"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3327
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    const/16 v1, 0x6fc6

    const/16 v2, 0x21

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 3329
    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 3330
    return-void
.end method

.method updatePnnCache()V
    .registers 4

    .prologue
    .line 3336
    const-string v0, "EONS"

    const-string v1, "Updating PNN Cache"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3337
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    const/16 v1, 0x6fc5

    const/16 v2, 0x23

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 3339
    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 3340
    return-void
.end method

.method updateSimRecords(I)Z
    .registers 5
    .parameter "flag"

    .prologue
    .line 762
    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->sstPlmnOplValue:I

    sget v1, Lcom/android/internal/telephony/gsm/SIMRecords;->PNN_OPL_ENABLED:I

    if-ne v0, v1, :cond_b

    .line 763
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/SIMRecords;->displayEonsName(I)V

    .line 773
    :goto_9
    const/4 v0, 0x1

    return v0

    .line 767
    :cond_b
    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->sstPlmnOplValue:I

    sget v1, Lcom/android/internal/telephony/gsm/SIMRecords;->ONLY_PNN_ENABLED:I

    if-ne v0, v1, :cond_15

    .line 768
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/SIMRecords;->fetchPnnFirstRecord(I)V

    goto :goto_9

    .line 771
    :cond_15
    const-string v0, "EONS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid sstPlmnOplValue "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->sstPlmnOplValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method useEfCspPlmn()Z
    .registers 8

    .prologue
    .line 732
    const/4 v3, 0x0

    .line 733
    .local v3, use_csp:Z
    const-string v4, "persist.cust.tel.adapt"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 734
    .local v0, adapt_prop:Ljava/lang/String;
    const-string v4, "persist.cust.tel.efcsp.plmn"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 740
    .local v1, csp_prop:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->adaptPropSet()Z

    move-result v4

    if-eqz v4, :cond_15

    .line 741
    const/4 v3, 0x1

    .line 752
    :cond_14
    :goto_14
    return v3

    .line 743
    :cond_15
    if-eqz v1, :cond_14

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_14

    .line 745
    :try_start_1d
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_24} :catch_2a

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_14

    .line 746
    const/4 v3, 0x1

    goto :goto_14

    .line 748
    :catch_2a
    move-exception v4

    move-object v2, v4

    .line 749
    .local v2, e:Ljava/lang/Exception;
    const-string v4, "EONS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception on reading persist.cust.tel.efcsp.plmn "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14
.end method

.method useMEName()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 3653
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->oplDataPresent:Z

    .line 3654
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->pnnDataPresent:Z

    .line 3655
    iget-object p0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateSpnDisplayWrapper()V

    .line 3656
    return-void
.end method
