.class public final Lcom/android/internal/telephony/gsm/SimCard;
.super Landroid/os/Handler;
.source "SimCard.java"

# interfaces
.implements Lcom/android/internal/telephony/IccCard;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/SimCard$1;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field static final EVENT_CHANGE_FACILITY_FDN_DONE:I = 0xb

.field static final EVENT_CHANGE_FACILITY_LOCK_DONE:I = 0x8

.field static final EVENT_CHANGE_SIM_PASSWORD_DONE:I = 0x9

.field static final EVENT_FDN_CHECK_DONE:I = 0xc

.field static final EVENT_GET_ALL_SIM_PIN_STATUS:I = 0xf

.field static final EVENT_GET_SIM_STATUS_DONE:I = 0x2

.field static final EVENT_INTERNAL_PIN_VERIFY:I = 0x10

.field static final EVENT_PINPUK_DONE:I = 0x4

.field static final EVENT_QUERY_FACILITY_FDN_DONE:I = 0xa

.field static final EVENT_QUERY_FACILITY_LOCK_DONE:I = 0x7

.field static final EVENT_RADIO_AVAILABLE:I = 0xe

.field static final EVENT_RADIO_OFF_OR_NOT_AVAILABLE:I = 0x3

.field static final EVENT_REPOLL_STATUS_DONE:I = 0x5

.field static final EVENT_SIM_LOCKED_OR_ABSENT:I = 0x1

.field static final EVENT_SIM_NTWRK_LOCK_RETRY_COUNT_ON_BOOT:I = 0xd

.field static final EVENT_SIM_PIN2_STATUS_CHANGED:I = 0x66

.field static final EVENT_SIM_READY:I = 0x6

.field static final EVENT_SIM_STATUS_CHANGED:I = 0x65

.field static final LOG_TAG:Ljava/lang/String; = "GSM"

.field static final NOTIFICATION_ID_SIM_STATUS:I = 0x82b0

.field public static mAttemptsLeft:I

.field public static mFlag:B

.field public static mRetry_count:I

.field public static mRetry_count_max:I


# instance fields
.field private absentRegistrants:Landroid/os/RegistrantList;

.field private final fileHiddenReset:Ljava/lang/String;

.field private hidden_reset_flag:I

.field private internalPin:Ljava/lang/String;

.field private isPinReq:Z

.field private mDesiredFdnEnabled:Z

.field private mDesiredPinLocked:Z

.field private mSimFdnEnabled:Z

.field private mSimPin2Blocked:Z

.field private mSimPinLocked:Z

.field private mSimPuk2Blocked:Z

.field private networkLockedRegistrants:Landroid/os/RegistrantList;

.field private phone:Lcom/android/internal/telephony/gsm/GSMPhone;

.field private pinLockedRegistrants:Landroid/os/RegistrantList;

.field private pin_op:Z

.field private pin_retry_count:[I

.field private request_pin_status:Z

.field private status:Lcom/android/internal/telephony/CommandsInterface$IccStatus;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/16 v1, 0xa

    const/4 v0, 0x0

    .line 71
    sput-byte v0, Lcom/android/internal/telephony/gsm/SimCard;->mFlag:B

    .line 72
    sput v1, Lcom/android/internal/telephony/gsm/SimCard;->mAttemptsLeft:I

    .line 73
    sput v1, Lcom/android/internal/telephony/gsm/SimCard;->mRetry_count_max:I

    .line 74
    sput v0, Lcom/android/internal/telephony/gsm/SimCard;->mRetry_count:I

    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .registers 10
    .parameter "phone"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 123
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 57
    iput-object v5, p0, Lcom/android/internal/telephony/gsm/SimCard;->status:Lcom/android/internal/telephony/CommandsInterface$IccStatus;

    .line 60
    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/SimCard;->mSimPinLocked:Z

    .line 61
    iput-boolean v6, p0, Lcom/android/internal/telephony/gsm/SimCard;->mSimFdnEnabled:Z

    .line 63
    iput-boolean v6, p0, Lcom/android/internal/telephony/gsm/SimCard;->mSimPin2Blocked:Z

    .line 64
    iput-boolean v6, p0, Lcom/android/internal/telephony/gsm/SimCard;->mSimPuk2Blocked:Z

    .line 67
    const/4 v3, 0x4

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/SimCard;->pin_retry_count:[I

    .line 80
    iput-boolean v6, p0, Lcom/android/internal/telephony/gsm/SimCard;->pin_op:Z

    .line 81
    iput-boolean v6, p0, Lcom/android/internal/telephony/gsm/SimCard;->request_pin_status:Z

    .line 111
    new-instance v3, Ljava/lang/String;

    const-string v4, "/sys/module/pm/parameters/hidden_resetting"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/SimCard;->fileHiddenReset:Ljava/lang/String;

    .line 112
    iput v6, p0, Lcom/android/internal/telephony/gsm/SimCard;->hidden_reset_flag:I

    .line 113
    iput-object v5, p0, Lcom/android/internal/telephony/gsm/SimCard;->internalPin:Ljava/lang/String;

    .line 114
    iput-boolean v6, p0, Lcom/android/internal/telephony/gsm/SimCard;->isPinReq:Z

    .line 223
    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/SimCard;->absentRegistrants:Landroid/os/RegistrantList;

    .line 224
    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/SimCard;->pinLockedRegistrants:Landroid/os/RegistrantList;

    .line 225
    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/SimCard;->networkLockedRegistrants:Landroid/os/RegistrantList;

    .line 124
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SimCard;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 126
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3, p0, v7, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForSIMLockedOrAbsent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 129
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v4, 0x3

    invoke-interface {v3, p0, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 132
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v4, 0x6

    invoke-interface {v3, p0, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForSIMReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 135
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0x65

    invoke-interface {v3, p0, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForIccStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 139
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0xe

    invoke-interface {v3, p0, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 141
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0x66

    invoke-interface {v3, p0, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->setOnPin2StatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 144
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SimCard;->updateStateProperty()V

    .line 148
    :try_start_68
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SimCard;->fileHiddenReset:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 149
    .local v2, inReader:Ljava/io/BufferedReader;
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, buf:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/gsm/SimCard;->hidden_reset_flag:I

    .line 151
    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[Hidden Reset] hidden_reset_flag = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/gsm/SimCard;->hidden_reset_flag:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_98
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_98} :catch_99

    .line 157
    .end local v0           #buf:Ljava/lang/String;
    .end local v2           #inReader:Ljava/io/BufferedReader;
    :goto_98
    return-void

    .line 152
    :catch_99
    move-exception v3

    move-object v1, v3

    .line 153
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_98
.end method

.method private getSimStatusDone(Landroid/os/AsyncResult;)V
    .registers 6
    .parameter "ar"

    .prologue
    .line 797
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_e

    .line 798
    const-string v1, "GSM"

    const-string v2, "Error getting ICC status. RIL_REQUEST_GET_ICC_STATUS should never return an error"

    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 808
    :goto_d
    return-void

    .line 804
    :cond_e
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/CommandsInterface$IccStatus;

    .line 807
    .local v0, newStatus:Lcom/android/internal/telephony/CommandsInterface$IccStatus;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/SimCard;->handleSimStatus(Lcom/android/internal/telephony/CommandsInterface$IccStatus;)V

    goto :goto_d
.end method

.method private handleSimStatus(Lcom/android/internal/telephony/CommandsInterface$IccStatus;)V
    .registers 16
    .parameter "newStatus"

    .prologue
    .line 826
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SimCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v1

    .line 827
    .local v1, oldState:Lcom/android/internal/telephony/IccCard$State;
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SimCard;->status:Lcom/android/internal/telephony/CommandsInterface$IccStatus;

    .line 828
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SimCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    .line 829
    .local v0, newState:Lcom/android/internal/telephony/IccCard$State;
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SimCard;->updateStateProperty()V

    .line 831
    sget-object v12, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v1, v12, :cond_15

    sget-object v12, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v0, v12, :cond_1d

    :cond_15
    sget-object v12, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v1, v12, :cond_b2

    sget-object v12, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v12, :cond_b2

    :cond_1d
    const/4 v12, 0x1

    move v9, v12

    .line 836
    .local v9, transitionedIntoPinLocked:Z
    :goto_1f
    sget-object v12, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-eq v1, v12, :cond_b6

    sget-object v12, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v1, v12, :cond_b6

    sget-object v12, Lcom/android/internal/telephony/IccCard$State;->PREM_BLOCKED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v1, v12, :cond_b6

    sget-object v12, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v12, :cond_b6

    const/4 v12, 0x1

    move v3, v12

    .line 838
    .local v3, transitionedIntoAbsent:Z
    :goto_31
    sget-object v12, Lcom/android/internal/telephony/IccCard$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCard$State;

    if-eq v1, v12, :cond_ba

    sget-object v12, Lcom/android/internal/telephony/IccCard$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v12, :cond_ba

    const/4 v12, 0x1

    move v4, v12

    .line 839
    .local v4, transitionedIntoCardIOError:Z
    :goto_3b
    sget-object v12, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v1, v12, :cond_be

    sget-object v12, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v12, :cond_be

    const/4 v12, 0x1

    move v6, v12

    .line 842
    .local v6, transitionedIntoNetworkLocked:Z
    :goto_45
    sget-object v12, Lcom/android/internal/telephony/IccCard$State;->PREM_BLOCKED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v1, v12, :cond_c1

    sget-object v12, Lcom/android/internal/telephony/IccCard$State;->PREM_BLOCKED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v12, :cond_c1

    const/4 v12, 0x1

    move v8, v12

    .line 844
    .local v8, transitionedIntoPermLocked:Z
    :goto_4f
    sget-object v12, Lcom/android/internal/telephony/IccCard$State;->NETWORK_SUBSET_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v1, v12, :cond_c4

    sget-object v12, Lcom/android/internal/telephony/IccCard$State;->NETWORK_SUBSET_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v12, :cond_c4

    const/4 v12, 0x1

    move v7, v12

    .line 846
    .local v7, transitionedIntoNetworkSubsetLocked:Z
    :goto_59
    sget-object v12, Lcom/android/internal/telephony/IccCard$State;->CORPORATE_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v1, v12, :cond_c7

    sget-object v12, Lcom/android/internal/telephony/IccCard$State;->CORPORATE_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v12, :cond_c7

    const/4 v12, 0x1

    move v5, v12

    .line 848
    .local v5, transitionedIntoCorporateLocked:Z
    :goto_63
    sget-object v12, Lcom/android/internal/telephony/IccCard$State;->SERVICE_PROVIDER_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v1, v12, :cond_ca

    sget-object v12, Lcom/android/internal/telephony/IccCard$State;->SERVICE_PROVIDER_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v12, :cond_ca

    const/4 v12, 0x1

    move v10, v12

    .line 850
    .local v10, transitionedIntoServiceProviderLocked:Z
    :goto_6d
    sget-object v12, Lcom/android/internal/telephony/IccCard$State;->SIM_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v1, v12, :cond_cd

    sget-object v12, Lcom/android/internal/telephony/IccCard$State;->SIM_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v12, :cond_cd

    const/4 v12, 0x1

    move v11, v12

    .line 856
    .local v11, transitionedIntoSimLocked:Z
    :goto_77
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/SimCard;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v12, v12, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v13, 0xd

    invoke-virtual {p0, v13}, Lcom/android/internal/telephony/gsm/SimCard;->obtainMessage(I)Landroid/os/Message;

    move-result-object v13

    invoke-interface {v12, v13}, Lcom/android/internal/telephony/CommandsInterface;->getSIMUnlockRetryCount(Landroid/os/Message;)V

    .line 857
    const-string v12, "handleSimStatus()...getSIMUnlockRetryCount()"

    invoke-direct {p0, v12}, Lcom/android/internal/telephony/gsm/SimCard;->log(Ljava/lang/String;)V

    .line 862
    if-eqz v9, :cond_d3

    .line 863
    const-string v12, "Notify SIM pin or puk locked."

    invoke-direct {p0, v12}, Lcom/android/internal/telephony/gsm/SimCard;->log(Ljava/lang/String;)V

    .line 865
    iget v12, p0, Lcom/android/internal/telephony/gsm/SimCard;->hidden_reset_flag:I

    if-eqz v12, :cond_a1

    sget-object v12, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v12, :cond_a1

    .line 867
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/SimCard;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v12}, Lcom/android/internal/telephony/gsm/GSMPhone;->getInternalPIN()Ljava/lang/String;

    move-result-object v2

    .line 868
    .local v2, savedPin:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SimCard;->HiddensupplyPin(Ljava/lang/String;)V

    .line 872
    .end local v2           #savedPin:Ljava/lang/String;
    :cond_a1
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/SimCard;->pinLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v12}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 873
    const-string v12, "LOCKED"

    sget-object v13, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v13, :cond_d0

    const-string v13, "PIN"

    :goto_ae
    invoke-virtual {p0, v12, v13}, Lcom/android/internal/telephony/gsm/SimCard;->broadcastSimStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 916
    :cond_b1
    :goto_b1
    return-void

    .line 831
    .end local v3           #transitionedIntoAbsent:Z
    .end local v4           #transitionedIntoCardIOError:Z
    .end local v5           #transitionedIntoCorporateLocked:Z
    .end local v6           #transitionedIntoNetworkLocked:Z
    .end local v7           #transitionedIntoNetworkSubsetLocked:Z
    .end local v8           #transitionedIntoPermLocked:Z
    .end local v9           #transitionedIntoPinLocked:Z
    .end local v10           #transitionedIntoServiceProviderLocked:Z
    .end local v11           #transitionedIntoSimLocked:Z
    :cond_b2
    const/4 v12, 0x0

    move v9, v12

    goto/16 :goto_1f

    .line 836
    .restart local v9       #transitionedIntoPinLocked:Z
    :cond_b6
    const/4 v12, 0x0

    move v3, v12

    goto/16 :goto_31

    .line 838
    .restart local v3       #transitionedIntoAbsent:Z
    :cond_ba
    const/4 v12, 0x0

    move v4, v12

    goto/16 :goto_3b

    .line 839
    .restart local v4       #transitionedIntoCardIOError:Z
    :cond_be
    const/4 v12, 0x0

    move v6, v12

    goto :goto_45

    .line 842
    .restart local v6       #transitionedIntoNetworkLocked:Z
    :cond_c1
    const/4 v12, 0x0

    move v8, v12

    goto :goto_4f

    .line 844
    .restart local v8       #transitionedIntoPermLocked:Z
    :cond_c4
    const/4 v12, 0x0

    move v7, v12

    goto :goto_59

    .line 846
    .restart local v7       #transitionedIntoNetworkSubsetLocked:Z
    :cond_c7
    const/4 v12, 0x0

    move v5, v12

    goto :goto_63

    .line 848
    .restart local v5       #transitionedIntoCorporateLocked:Z
    :cond_ca
    const/4 v12, 0x0

    move v10, v12

    goto :goto_6d

    .line 850
    .restart local v10       #transitionedIntoServiceProviderLocked:Z
    :cond_cd
    const/4 v12, 0x0

    move v11, v12

    goto :goto_77

    .line 873
    .restart local v11       #transitionedIntoSimLocked:Z
    :cond_d0
    const-string v13, "PUK"

    goto :goto_ae

    .line 876
    :cond_d3
    if-eqz v3, :cond_e6

    .line 877
    const-string v12, "Notify SIM missing."

    invoke-direct {p0, v12}, Lcom/android/internal/telephony/gsm/SimCard;->log(Ljava/lang/String;)V

    .line 878
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/SimCard;->absentRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v12}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 879
    const-string v12, "ABSENT"

    const/4 v13, 0x0

    invoke-virtual {p0, v12, v13}, Lcom/android/internal/telephony/gsm/SimCard;->broadcastSimStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b1

    .line 880
    :cond_e6
    if-eqz v4, :cond_f4

    .line 881
    const-string v12, "Notify SIM Card Error."

    invoke-direct {p0, v12}, Lcom/android/internal/telephony/gsm/SimCard;->log(Ljava/lang/String;)V

    .line 882
    const-string v12, "CARD_IO_ERROR"

    const/4 v13, 0x0

    invoke-virtual {p0, v12, v13}, Lcom/android/internal/telephony/gsm/SimCard;->broadcastSimStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b1

    .line 883
    :cond_f4
    if-eqz v6, :cond_10f

    .line 884
    const-string v12, "Notify SIM network locked."

    invoke-direct {p0, v12}, Lcom/android/internal/telephony/gsm/SimCard;->log(Ljava/lang/String;)V

    .line 887
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/SimCard;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v12, v12, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v12}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateSpnDisplayWrapper()V

    .line 890
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/SimCard;->networkLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v12}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 891
    const-string v12, "LOCKED"

    const-string v13, "NETWORK"

    invoke-virtual {p0, v12, v13}, Lcom/android/internal/telephony/gsm/SimCard;->broadcastSimStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b1

    .line 893
    :cond_10f
    if-eqz v7, :cond_120

    .line 894
    const-string v12, "GSM"

    const-string v13, "Notify SIM network Subset locked."

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    const-string v12, "LOCKED"

    const-string v13, "NETWORK SUBSET"

    invoke-virtual {p0, v12, v13}, Lcom/android/internal/telephony/gsm/SimCard;->broadcastSimStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b1

    .line 897
    :cond_120
    if-eqz v5, :cond_131

    .line 898
    const-string v12, "GSM"

    const-string v13, "Notify SIM Corporate locked."

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    const-string v12, "LOCKED"

    const-string v13, "CORPORATE"

    invoke-virtual {p0, v12, v13}, Lcom/android/internal/telephony/gsm/SimCard;->broadcastSimStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b1

    .line 901
    :cond_131
    if-eqz v10, :cond_143

    .line 902
    const-string v12, "GSM"

    const-string v13, "Notify SIM Service Provider locked."

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    const-string v12, "LOCKED"

    const-string v13, "SERVICE PROVIDER"

    invoke-virtual {p0, v12, v13}, Lcom/android/internal/telephony/gsm/SimCard;->broadcastSimStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b1

    .line 905
    :cond_143
    if-eqz v11, :cond_155

    .line 906
    const-string v12, "GSM"

    const-string v13, "Notify SIM SIM locked."

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    const-string v12, "LOCKED"

    const-string v13, "SIM"

    invoke-virtual {p0, v12, v13}, Lcom/android/internal/telephony/gsm/SimCard;->broadcastSimStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b1

    .line 911
    :cond_155
    if-eqz v8, :cond_b1

    .line 912
    const-string v12, "Notify SIM Perm locked."

    invoke-direct {p0, v12}, Lcom/android/internal/telephony/gsm/SimCard;->log(Ljava/lang/String;)V

    .line 913
    const-string v12, "PUK_BLOCKED"

    const/4 v13, 0x0

    invoke-virtual {p0, v12, v13}, Lcom/android/internal/telephony/gsm/SimCard;->broadcastSimStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b1
.end method

.method private log(Ljava/lang/String;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 954
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GsmSimCard] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    return-void
.end method

.method private onPin2StatusChanged(Landroid/os/AsyncResult;)V
    .registers 9
    .parameter "ar"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v6, "GSM"

    .line 760
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_23

    .line 761
    const-string v2, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in receiving pin2 status with exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    :goto_22
    return-void

    .line 764
    :cond_23
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object v0, v2

    check-cast v0, [I

    move-object v1, v0

    .line 765
    .local v1, ints:[I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPin2StatusChanged: received pin2 status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v1, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/SimCard;->log(Ljava/lang/String;)V

    .line 767
    aget v2, v1, v4

    packed-switch v2, :pswitch_data_6e

    .line 783
    const-string v2, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Un Handled pin2 status "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v1, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    .line 771
    :pswitch_63
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/SimCard;->mSimPin2Blocked:Z

    .line 772
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/SimCard;->mSimPuk2Blocked:Z

    goto :goto_22

    .line 776
    :pswitch_68
    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/SimCard;->mSimPin2Blocked:Z

    goto :goto_22

    .line 780
    :pswitch_6b
    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/SimCard;->mSimPuk2Blocked:Z

    goto :goto_22

    .line 767
    :pswitch_data_6e
    .packed-switch 0x1
        :pswitch_63
        :pswitch_68
        :pswitch_6b
    .end packed-switch
.end method

.method private onQueryFacilityLock(Landroid/os/AsyncResult;)V
    .registers 6
    .parameter "ar"

    .prologue
    const/4 v3, 0x0

    .line 721
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_1e

    .line 722
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in querying facility lock:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/SimCard;->log(Ljava/lang/String;)V

    .line 733
    :goto_1d
    return-void

    .line 726
    :cond_1e
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object v0, v2

    check-cast v0, [I

    move-object v1, v0

    .line 727
    .local v1, ints:[I
    array-length v2, v1

    if-eqz v2, :cond_4b

    .line 728
    aget v2, v1, v3

    if-eqz v2, :cond_49

    const/4 v2, 0x1

    :goto_2e
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/SimCard;->mSimPinLocked:Z

    .line 729
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Query facility lock : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/SimCard;->mSimPinLocked:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/SimCard;->log(Ljava/lang/String;)V

    goto :goto_1d

    :cond_49
    move v2, v3

    .line 728
    goto :goto_2e

    .line 731
    :cond_4b
    const-string v2, "GSM"

    const-string v3, "[GsmSimCard] Bogus facility lock response"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d
.end method

.method private onQueryFdnEnabled(Landroid/os/AsyncResult;)V
    .registers 6
    .parameter "ar"

    .prologue
    const/4 v3, 0x0

    .line 740
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_1e

    .line 741
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in querying facility lock:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/SimCard;->log(Ljava/lang/String;)V

    .line 752
    :goto_1d
    return-void

    .line 745
    :cond_1e
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object v0, v2

    check-cast v0, [I

    move-object v1, v0

    .line 746
    .local v1, ints:[I
    array-length v2, v1

    if-eqz v2, :cond_4b

    .line 747
    aget v2, v1, v3

    if-eqz v2, :cond_49

    const/4 v2, 0x1

    :goto_2e
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/SimCard;->mSimFdnEnabled:Z

    .line 748
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Query facility lock : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/SimCard;->mSimFdnEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/SimCard;->log(Ljava/lang/String;)V

    goto :goto_1d

    :cond_49
    move v2, v3

    .line 747
    goto :goto_2e

    .line 750
    :cond_4b
    const-string v2, "GSM"

    const-string v3, "[GsmSimCard] Bogus facility lock response"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d
.end method

.method private storeSIMLockInfoOnBoot(Lcom/android/internal/telephony/gsm/SIMLockInfo;)V
    .registers 5
    .parameter "lockinfo"

    .prologue
    const-string v2, ":"

    .line 707
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "storeSIMLockInfoOnBoot: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p1, Lcom/android/internal/telephony/gsm/SIMLockInfo;->flag:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/android/internal/telephony/gsm/SIMLockInfo;->attemptsLeft:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/android/internal/telephony/gsm/SIMLockInfo;->retry_count_max:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/SimCard;->log(Ljava/lang/String;)V

    .line 709
    iget-byte v0, p1, Lcom/android/internal/telephony/gsm/SIMLockInfo;->flag:B

    sput-byte v0, Lcom/android/internal/telephony/gsm/SimCard;->mFlag:B

    .line 710
    iget v0, p1, Lcom/android/internal/telephony/gsm/SIMLockInfo;->attemptsLeft:I

    sput v0, Lcom/android/internal/telephony/gsm/SimCard;->mAttemptsLeft:I

    .line 711
    iget v0, p1, Lcom/android/internal/telephony/gsm/SIMLockInfo;->retry_count_max:I

    sput v0, Lcom/android/internal/telephony/gsm/SimCard;->mRetry_count_max:I

    .line 712
    return-void
.end method

.method private updateStateProperty()V
    .registers 4

    .prologue
    .line 946
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SimCard;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    const-string v1, "gsm.sim.state"

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SimCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/IccCard$State;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 951
    return-void
.end method


# virtual methods
.method public HiddensupplyPin(Ljava/lang/String;)V
    .registers 5
    .parameter "pin"

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SimCard;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/gsm/SimCard;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPin(Ljava/lang/String;Landroid/os/Message;)V

    .line 275
    return-void
.end method

.method public broadcastSimStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "value"
    .parameter "reason"

    .prologue
    .line 919
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 920
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "phoneName"

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SimCard;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 921
    const-string v1, "ss"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 922
    const-string v1, "reason"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 923
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Broadcasting intent SIM_STATE_CHANGED_ACTION "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " reason "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/SimCard;->log(Ljava/lang/String;)V

    .line 925
    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-static {v0, v1}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .line 926
    return-void
.end method

.method public changeIccFdnPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 6
    .parameter "oldPassword"
    .parameter "newPassword"
    .parameter "onComplete"

    .prologue
    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Change Pin2 old: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " new: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/SimCard;->log(Ljava/lang/String;)V

    .line 367
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SimCard;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x9

    invoke-virtual {p0, v1, p3}, Lcom/android/internal/telephony/gsm/SimCard;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Lcom/android/internal/telephony/CommandsInterface;->changeIccPin2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 370
    return-void
.end method

.method public changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 6
    .parameter "oldPassword"
    .parameter "newPassword"
    .parameter "onComplete"

    .prologue
    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Change Pin1 old: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " new: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/SimCard;->log(Ljava/lang/String;)V

    .line 356
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SimCard;->isPinReq:Z

    .line 357
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/SimCard;->internalPin:Ljava/lang/String;

    .line 359
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SimCard;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x9

    invoke-virtual {p0, v1, p3}, Lcom/android/internal/telephony/gsm/SimCard;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Lcom/android/internal/telephony/CommandsInterface;->changeIccPin(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 362
    return-void
.end method

.method public checkFdn(Ljava/lang/String;Landroid/os/Message;)V
    .registers 5
    .parameter "number"
    .parameter "onComplete"

    .prologue
    .line 422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FDN Check: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/SimCard;->log(Ljava/lang/String;)V

    .line 423
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SimCard;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xc

    invoke-virtual {p0, v1, p2}, Lcom/android/internal/telephony/gsm/SimCard;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->checkFdnAllowed(Ljava/lang/String;Landroid/os/Message;)V

    .line 426
    return-void
.end method

.method public dispose()V
    .registers 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SimCard;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForSIMLockedOrAbsent(Landroid/os/Handler;)V

    .line 162
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SimCard;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    .line 163
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SimCard;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForSIMReady(Landroid/os/Handler;)V

    .line 164
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SimCard;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForIccStatusChanged(Landroid/os/Handler;)V

    .line 165
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SimCard;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnPin2StatusChanged(Landroid/os/Handler;)V

    .line 166
    return-void
.end method

.method protected finalize()V
    .registers 3

    .prologue
    .line 169
    const-string v0, "GSM"

    const-string v1, "SimCard finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    return-void
.end method

.method public getEfGid1()Ljava/lang/String;
    .registers 2

    .prologue
    .line 389
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SimCard;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getEfGid1()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEfIccid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 394
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SimCard;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getEfIccid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEfImsi()Ljava/lang/String;
    .registers 2

    .prologue
    .line 384
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SimCard;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getEfImsi()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEfSpn()Ljava/lang/String;
    .registers 2

    .prologue
    .line 379
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SimCard;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getEfSpn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIccFdnEnabled()Z
    .registers 2

    .prologue
    .line 315
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SimCard;->mSimFdnEnabled:Z

    return v0
.end method

.method public getIccLockEnabled()Z
    .registers 2

    .prologue
    .line 311
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SimCard;->mSimPinLocked:Z

    return v0
.end method

.method public getIccPin2Blocked()Z
    .registers 2

    .prologue
    .line 788
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SimCard;->mSimPin2Blocked:Z

    return v0
.end method

.method public getIccPuk2Blocked()Z
    .registers 2

    .prologue
    .line 792
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SimCard;->mSimPuk2Blocked:Z

    return v0
.end method

.method public getServiceProviderName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 373
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SimCard;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimPin1RetryNum()I
    .registers 3

    .prologue
    .line 401
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SimCard;->pin_retry_count:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getSimPin2RetryNum()I
    .registers 3

    .prologue
    .line 409
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SimCard;->pin_retry_count:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public getSimPuk1RetryNum()I
    .registers 3

    .prologue
    .line 405
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SimCard;->pin_retry_count:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getSimPuk2RetryNum()I
    .registers 3

    .prologue
    .line 413
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SimCard;->pin_retry_count:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    return v0
.end method

.method public getState()Lcom/android/internal/telephony/IccCard$State;
    .registers 5

    .prologue
    const-string v3, "2) status : "

    const-string v2, "GSM"

    .line 176
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SimCard;->status:Lcom/android/internal/telephony/CommandsInterface$IccStatus;

    if-nez v0, :cond_35

    .line 179
    const-string v0, "GSM"

    const-string v0, "1) status : "

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    sget-object v0, Lcom/android/internal/telephony/gsm/SimCard$1;->$SwitchMap$com$android$internal$telephony$CommandsInterface$RadioState:[I

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SimCard;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_88

    .line 219
    :goto_22
    const-string v0, "GSM"

    const-string v0, "GsmSimCard.getState(): case should never be reached"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    :goto_2b
    return-object v0

    .line 189
    :pswitch_2c
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_2b

    .line 192
    :pswitch_2f
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_2b

    .line 194
    :pswitch_32
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_2b

    .line 199
    :cond_35
    const-string v0, "GSM"

    const-string v0, "2) status : "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const-string v0, "GSM"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "2) status : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SimCard;->status:Lcom/android/internal/telephony/CommandsInterface$IccStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    sget-object v0, Lcom/android/internal/telephony/gsm/SimCard$1;->$SwitchMap$com$android$internal$telephony$CommandsInterface$IccStatus:[I

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SimCard;->status:Lcom/android/internal/telephony/CommandsInterface$IccStatus;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$IccStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_96

    goto :goto_22

    .line 203
    :pswitch_64
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_2b

    .line 204
    :pswitch_67
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_2b

    .line 205
    :pswitch_6a
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_2b

    .line 206
    :pswitch_6d
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_2b

    .line 207
    :pswitch_70
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_2b

    .line 208
    :pswitch_73
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_2b

    .line 209
    :pswitch_76
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_2b

    .line 210
    :pswitch_79
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->NETWORK_SUBSET_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_2b

    .line 211
    :pswitch_7c
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->CORPORATE_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_2b

    .line 212
    :pswitch_7f
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->SERVICE_PROVIDER_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_2b

    .line 213
    :pswitch_82
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->SIM_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_2b

    .line 215
    :pswitch_85
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->PREM_BLOCKED:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_2b

    .line 181
    :pswitch_data_88
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_2c
        :pswitch_2c
        :pswitch_2f
        :pswitch_32
    .end packed-switch

    .line 202
    :pswitch_data_96
    .packed-switch 0x1
        :pswitch_64
        :pswitch_67
        :pswitch_6a
        :pswitch_6d
        :pswitch_70
        :pswitch_73
        :pswitch_76
        :pswitch_79
        :pswitch_7c
        :pswitch_7f
        :pswitch_82
        :pswitch_85
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 15
    .parameter "msg"

    .prologue
    const/16 v12, 0xf

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v8, 0x1

    const-string v9, "GSM"

    .line 437
    const/16 v5, 0xf5

    .line 441
    .local v5, serviceClassX:I
    iget v6, p1, Landroid/os/Message;->what:I

    sparse-switch v6, :sswitch_data_388

    .line 695
    const-string v6, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[GsmSimCard] Unknown Event "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    .end local p0
    :cond_28
    :goto_28
    return-void

    .line 443
    .restart local p0
    :sswitch_29
    iput-object v11, p0, Lcom/android/internal/telephony/gsm/SimCard;->status:Lcom/android/internal/telephony/CommandsInterface$IccStatus;

    .line 444
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SimCard;->updateStateProperty()V

    .line 445
    const-string v6, "NOT_READY"

    invoke-virtual {p0, v6, v11}, Lcom/android/internal/telephony/gsm/SimCard;->broadcastSimStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_28

    .line 449
    :sswitch_34
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SimCard;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v6, v6, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v7, 0x2

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/SimCard;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->getIccStatus(Landroid/os/Message;)V

    .line 450
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SimCard;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v6, v6, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const-string v7, "SC"

    const-string v8, ""

    const/4 v9, 0x7

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/gsm/SimCard;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-interface {v6, v7, v8, v5, v9}, Lcom/android/internal/telephony/CommandsInterface;->queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    .line 453
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SimCard;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v6, v6, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const-string v7, "FD"

    const-string v8, ""

    const/16 v9, 0xa

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/gsm/SimCard;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-interface {v6, v7, v8, v5, v9}, Lcom/android/internal/telephony/CommandsInterface;->queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    goto :goto_28

    .line 458
    :sswitch_62
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SimCard;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v6, v6, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v7, 0x2

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/SimCard;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->getIccStatus(Landroid/os/Message;)V

    .line 459
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SimCard;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v6, v6, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const-string v7, "SC"

    const-string v8, ""

    const/4 v9, 0x7

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/gsm/SimCard;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-interface {v6, v7, v8, v5, v9}, Lcom/android/internal/telephony/CommandsInterface;->queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    goto :goto_28

    .line 464
    :sswitch_7f
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 466
    .local v2, ar:Landroid/os/AsyncResult;
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/SimCard;->getSimStatusDone(Landroid/os/AsyncResult;)V

    goto :goto_28

    .line 472
    .end local v2           #ar:Landroid/os/AsyncResult;
    :sswitch_87
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 474
    .restart local v2       #ar:Landroid/os/AsyncResult;
    iget-object v6, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_9a

    .line 475
    iget-boolean v6, p0, Lcom/android/internal/telephony/gsm/SimCard;->isPinReq:Z

    if-eqz v6, :cond_9a

    .line 477
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SimCard;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SimCard;->internalPin:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->setInternalPIN(Ljava/lang/String;)V

    .line 480
    :cond_9a
    iput-boolean v10, p0, Lcom/android/internal/telephony/gsm/SimCard;->isPinReq:Z

    .line 481
    iput-object v11, p0, Lcom/android/internal/telephony/gsm/SimCard;->internalPin:Ljava/lang/String;

    .line 485
    iget-object v6, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v6, Landroid/os/Message;

    invoke-static {v6}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v6

    iget-object v7, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v7, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 488
    iget-boolean v6, p0, Lcom/android/internal/telephony/gsm/SimCard;->request_pin_status:Z

    if-nez v6, :cond_bb

    .line 490
    iput-boolean v8, p0, Lcom/android/internal/telephony/gsm/SimCard;->request_pin_status:Z

    .line 491
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SimCard;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v6, v6, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/gsm/SimCard;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->getAllSimPinStatus(Landroid/os/Message;)V

    .line 495
    :cond_bb
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SimCard;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v6, v6, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v7, 0x5

    iget-object v8, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    invoke-virtual {p0, v7, v8}, Lcom/android/internal/telephony/gsm/SimCard;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->getIccStatus(Landroid/os/Message;)V

    goto/16 :goto_28

    .line 504
    .end local v2           #ar:Landroid/os/AsyncResult;
    :sswitch_cb
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 505
    .restart local v2       #ar:Landroid/os/AsyncResult;
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/SimCard;->getSimStatusDone(Landroid/os/AsyncResult;)V

    .line 506
    iget-object p0, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/os/Message;

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_28

    .line 509
    .end local v2           #ar:Landroid/os/AsyncResult;
    .restart local p0
    :sswitch_db
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 510
    .restart local v2       #ar:Landroid/os/AsyncResult;
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/SimCard;->onQueryFacilityLock(Landroid/os/AsyncResult;)V

    goto/16 :goto_28

    .line 513
    .end local v2           #ar:Landroid/os/AsyncResult;
    :sswitch_e4
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 514
    .restart local v2       #ar:Landroid/os/AsyncResult;
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/SimCard;->onQueryFdnEnabled(Landroid/os/AsyncResult;)V

    goto/16 :goto_28

    .line 517
    .end local v2           #ar:Landroid/os/AsyncResult;
    :sswitch_ed
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 518
    .restart local v2       #ar:Landroid/os/AsyncResult;
    iget-object v6, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_143

    .line 519
    iget-boolean v6, p0, Lcom/android/internal/telephony/gsm/SimCard;->mDesiredPinLocked:Z

    iput-boolean v6, p0, Lcom/android/internal/telephony/gsm/SimCard;->mSimPinLocked:Z

    .line 520
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EVENT_CHANGE_FACILITY_LOCK_DONE: mSimPinLocked= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/internal/telephony/gsm/SimCard;->mSimPinLocked:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/SimCard;->log(Ljava/lang/String;)V

    .line 523
    iget-boolean v6, p0, Lcom/android/internal/telephony/gsm/SimCard;->isPinReq:Z

    if-eqz v6, :cond_11c

    .line 525
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SimCard;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SimCard;->internalPin:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->setInternalPIN(Ljava/lang/String;)V

    .line 533
    :cond_11c
    :goto_11c
    iput-boolean v10, p0, Lcom/android/internal/telephony/gsm/SimCard;->isPinReq:Z

    .line 534
    iput-object v11, p0, Lcom/android/internal/telephony/gsm/SimCard;->internalPin:Ljava/lang/String;

    .line 537
    iget-object v6, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v6, Landroid/os/Message;

    invoke-static {v6}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v6

    iget-object v7, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v7, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 540
    iget-boolean v6, p0, Lcom/android/internal/telephony/gsm/SimCard;->request_pin_status:Z

    if-nez v6, :cond_15e

    .line 542
    iput-boolean v8, p0, Lcom/android/internal/telephony/gsm/SimCard;->request_pin_status:Z

    .line 543
    iput-boolean v8, p0, Lcom/android/internal/telephony/gsm/SimCard;->pin_op:Z

    .line 544
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SimCard;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v6, v6, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v7, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    invoke-virtual {p0, v12, v7}, Lcom/android/internal/telephony/gsm/SimCard;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->getAllSimPinStatus(Landroid/os/Message;)V

    goto/16 :goto_28

    .line 529
    :cond_143
    const-string v6, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error change facility lock with exception "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11c

    .line 549
    :cond_15e
    iget-object p0, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/os/Message;

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_28

    .line 552
    .end local v2           #ar:Landroid/os/AsyncResult;
    .restart local p0
    :sswitch_167
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 554
    .restart local v2       #ar:Landroid/os/AsyncResult;
    iget-object v6, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_1ae

    .line 555
    iget-boolean v6, p0, Lcom/android/internal/telephony/gsm/SimCard;->mDesiredFdnEnabled:Z

    iput-boolean v6, p0, Lcom/android/internal/telephony/gsm/SimCard;->mSimFdnEnabled:Z

    .line 556
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EVENT_CHANGE_FACILITY_FDN_DONE: mSimFdnEnabled="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/internal/telephony/gsm/SimCard;->mSimFdnEnabled:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/SimCard;->log(Ljava/lang/String;)V

    .line 562
    :goto_18b
    iget-object v6, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v6, Landroid/os/Message;

    invoke-static {v6}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v6

    iget-object v7, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v7, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 565
    iget-boolean v6, p0, Lcom/android/internal/telephony/gsm/SimCard;->request_pin_status:Z

    if-nez v6, :cond_1c9

    .line 567
    iput-boolean v8, p0, Lcom/android/internal/telephony/gsm/SimCard;->request_pin_status:Z

    .line 568
    iput-boolean v8, p0, Lcom/android/internal/telephony/gsm/SimCard;->pin_op:Z

    .line 569
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SimCard;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v6, v6, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v7, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    invoke-virtual {p0, v12, v7}, Lcom/android/internal/telephony/gsm/SimCard;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->getAllSimPinStatus(Landroid/os/Message;)V

    goto/16 :goto_28

    .line 559
    :cond_1ae
    const-string v6, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error change facility fdn with exception "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18b

    .line 574
    :cond_1c9
    iget-object p0, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/os/Message;

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_28

    .line 577
    .end local v2           #ar:Landroid/os/AsyncResult;
    .restart local p0
    :sswitch_1d2
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 578
    .restart local v2       #ar:Landroid/os/AsyncResult;
    iget-object v6, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_21b

    .line 579
    const-string v6, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error in change sim password with exception"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    :cond_1f4
    :goto_1f4
    iput-boolean v10, p0, Lcom/android/internal/telephony/gsm/SimCard;->isPinReq:Z

    .line 591
    iput-object v11, p0, Lcom/android/internal/telephony/gsm/SimCard;->internalPin:Ljava/lang/String;

    .line 593
    iget-object v6, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v6, Landroid/os/Message;

    invoke-static {v6}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v6

    iget-object v7, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v7, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 596
    iget-boolean v6, p0, Lcom/android/internal/telephony/gsm/SimCard;->request_pin_status:Z

    if-nez v6, :cond_227

    .line 598
    iput-boolean v8, p0, Lcom/android/internal/telephony/gsm/SimCard;->request_pin_status:Z

    .line 599
    iput-boolean v8, p0, Lcom/android/internal/telephony/gsm/SimCard;->pin_op:Z

    .line 600
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SimCard;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v6, v6, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v7, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    invoke-virtual {p0, v12, v7}, Lcom/android/internal/telephony/gsm/SimCard;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->getAllSimPinStatus(Landroid/os/Message;)V

    goto/16 :goto_28

    .line 585
    :cond_21b
    iget-boolean v6, p0, Lcom/android/internal/telephony/gsm/SimCard;->isPinReq:Z

    if-eqz v6, :cond_1f4

    .line 587
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SimCard;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SimCard;->internalPin:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->setInternalPIN(Ljava/lang/String;)V

    goto :goto_1f4

    .line 605
    :cond_227
    iget-object p0, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/os/Message;

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_28

    .line 609
    .end local v2           #ar:Landroid/os/AsyncResult;
    .restart local p0
    :sswitch_230
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 611
    .restart local v2       #ar:Landroid/os/AsyncResult;
    iget-object v6, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_252

    .line 612
    const-string v6, "EVENT_FDN_CHECK_DONE is ok"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/SimCard;->log(Ljava/lang/String;)V

    .line 617
    :goto_23d
    iget-object p0, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/os/Message;

    invoke-static {p0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v6

    iget-object v7, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v7, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 619
    iget-object p0, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p0, Landroid/os/Message;

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_28

    .line 614
    .restart local p0
    :cond_252
    const-string v6, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error fdn check "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23d

    .line 624
    .end local v2           #ar:Landroid/os/AsyncResult;
    :sswitch_26d
    iget-boolean v6, p0, Lcom/android/internal/telephony/gsm/SimCard;->request_pin_status:Z

    if-nez v6, :cond_28

    .line 626
    iput-boolean v8, p0, Lcom/android/internal/telephony/gsm/SimCard;->request_pin_status:Z

    .line 627
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SimCard;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v6, v6, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/gsm/SimCard;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->getAllSimPinStatus(Landroid/os/Message;)V

    goto/16 :goto_28

    .line 631
    :sswitch_280
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 632
    .restart local v2       #ar:Landroid/os/AsyncResult;
    iget-object v6, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [I

    move-object v0, v6

    check-cast v0, [I

    move-object v3, v0

    .line 634
    .local v3, data:[I
    iget-object v6, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_2bb

    .line 635
    const-string v6, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error in get all sim pin status with exception"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    :goto_2aa
    iget-boolean v6, p0, Lcom/android/internal/telephony/gsm/SimCard;->pin_op:Z

    if-eqz v6, :cond_2b5

    .line 649
    iget-object v6, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v6, Landroid/os/Message;

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 651
    :cond_2b5
    iput-boolean v10, p0, Lcom/android/internal/telephony/gsm/SimCard;->pin_op:Z

    .line 652
    iput-boolean v10, p0, Lcom/android/internal/telephony/gsm/SimCard;->request_pin_status:Z

    goto/16 :goto_28

    .line 640
    :cond_2bb
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2bc
    const/4 v6, 0x4

    if-ge v4, v6, :cond_2c8

    .line 641
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SimCard;->pin_retry_count:[I

    aget v7, v3, v4

    aput v7, v6, v4

    .line 640
    add-int/lit8 v4, v4, 0x1

    goto :goto_2bc

    .line 643
    :cond_2c8
    const-string v6, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Get all SIM PIN status: PIN1 = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SimCard;->pin_retry_count:[I

    aget v7, v7, v10

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", PUK1 = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SimCard;->pin_retry_count:[I

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", PIN2 = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SimCard;->pin_retry_count:[I

    const/4 v8, 0x2

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", PUK2 = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SimCard;->pin_retry_count:[I

    const/4 v8, 0x3

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2aa

    .line 657
    .end local v2           #ar:Landroid/os/AsyncResult;
    .end local v3           #data:[I
    .end local v4           #i:I
    :sswitch_311
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 658
    .restart local v2       #ar:Landroid/os/AsyncResult;
    iget-object v6, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_328

    .line 659
    const-string v6, "GSM"

    const-string v6, "[Hidden Reset] Internal PIN verify OK"

    invoke-static {v9, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    :goto_320
    iput-boolean v10, p0, Lcom/android/internal/telephony/gsm/SimCard;->isPinReq:Z

    .line 666
    iput-object v11, p0, Lcom/android/internal/telephony/gsm/SimCard;->internalPin:Ljava/lang/String;

    .line 667
    iput v10, p0, Lcom/android/internal/telephony/gsm/SimCard;->hidden_reset_flag:I

    goto/16 :goto_28

    .line 662
    :cond_328
    const-string v6, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[Hidden Reset] Error in internal PIN verify with exception"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_320

    .line 671
    .end local v2           #ar:Landroid/os/AsyncResult;
    :sswitch_343
    const-string v6, "GSM"

    const-string v6, "Received Event EVENT_SIM_STATUS_CHANGED"

    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SimCard;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v6, v6, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v7, 0x2

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/SimCard;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->getIccStatus(Landroid/os/Message;)V

    goto/16 :goto_28

    .line 675
    :sswitch_358
    const-string v6, "GSM"

    const-string v6, "Received Event EVENT_SIM_PIN2_STATUS_CHANGED"

    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 677
    .restart local v2       #ar:Landroid/os/AsyncResult;
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/SimCard;->onPin2StatusChanged(Landroid/os/AsyncResult;)V

    goto/16 :goto_28

    .line 683
    .end local v2           #ar:Landroid/os/AsyncResult;
    :sswitch_368
    const-string v6, "DHT"

    const-string v7, "Received Event EVENT_SIM_PIN2_STATUS_CHANGED"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 685
    .restart local v2       #ar:Landroid/os/AsyncResult;
    iget-object v6, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_28

    .line 686
    const-string v6, "DHT"

    const-string v7, "no exception"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    iget-object v1, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/gsm/SIMLockInfo;

    .line 688
    .local v1, SLInfo:Lcom/android/internal/telephony/gsm/SIMLockInfo;
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/SimCard;->storeSIMLockInfoOnBoot(Lcom/android/internal/telephony/gsm/SIMLockInfo;)V

    goto/16 :goto_28

    .line 441
    nop

    :sswitch_data_388
    .sparse-switch
        0x1 -> :sswitch_62
        0x2 -> :sswitch_7f
        0x3 -> :sswitch_29
        0x4 -> :sswitch_87
        0x5 -> :sswitch_cb
        0x6 -> :sswitch_34
        0x7 -> :sswitch_db
        0x8 -> :sswitch_ed
        0x9 -> :sswitch_1d2
        0xa -> :sswitch_e4
        0xb -> :sswitch_167
        0xc -> :sswitch_230
        0xd -> :sswitch_368
        0xe -> :sswitch_26d
        0xf -> :sswitch_280
        0x10 -> :sswitch_311
        0x65 -> :sswitch_343
        0x66 -> :sswitch_358
    .end sparse-switch
.end method

.method public registerForAbsent(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 7
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 229
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 231
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SimCard;->absentRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 233
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SimCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-ne v1, v2, :cond_15

    .line 234
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 236
    :cond_15
    return-void
.end method

.method public registerForLocked(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 6
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 257
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 259
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SimCard;->pinLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 261
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SimCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard$State;->isPinLocked()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 262
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 264
    :cond_17
    return-void
.end method

.method public registerForNetworkLocked(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 7
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 243
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 245
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SimCard;->networkLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 247
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SimCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v1, v2, :cond_15

    .line 248
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 250
    :cond_15
    return-void
.end method

.method public setIccFdnEnabled(ZLjava/lang/String;Landroid/os/Message;)V
    .registers 10
    .parameter "enabled"
    .parameter "password"
    .parameter "onComplete"

    .prologue
    .line 340
    const/16 v4, 0xfd

    .line 345
    .local v4, serviceClassX:I
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/SimCard;->mDesiredFdnEnabled:Z

    .line 347
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SimCard;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const-string v1, "FD"

    const/16 v2, 0xb

    invoke-virtual {p0, v2, p3}, Lcom/android/internal/telephony/gsm/SimCard;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    move v2, p1

    move-object v3, p2

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/CommandsInterface;->setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V

    .line 350
    return-void
.end method

.method public setIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V
    .registers 10
    .parameter "enabled"
    .parameter "password"
    .parameter "onComplete"

    .prologue
    .line 321
    const/16 v4, 0xf5

    .line 326
    .local v4, serviceClassX:I
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SimCard;->isPinReq:Z

    .line 327
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/SimCard;->internalPin:Ljava/lang/String;

    .line 330
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/SimCard;->mDesiredPinLocked:Z

    .line 332
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SimCard;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const-string v1, "SC"

    const/16 v2, 0x8

    invoke-virtual {p0, v2, p3}, Lcom/android/internal/telephony/gsm/SimCard;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    move v2, p1

    move-object v3, p2

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/CommandsInterface;->setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V

    .line 335
    return-void
.end method

.method public supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V
    .registers 5
    .parameter "pin"
    .parameter "onComplete"

    .prologue
    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Network Despersonalization: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/SimCard;->log(Ljava/lang/String;)V

    .line 306
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SimCard;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x4

    invoke-virtual {p0, v1, p2}, Lcom/android/internal/telephony/gsm/SimCard;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V

    .line 308
    return-void
.end method

.method public supplyPin(Ljava/lang/String;Landroid/os/Message;)V
    .registers 5
    .parameter "pin"
    .parameter "onComplete"

    .prologue
    .line 280
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SimCard;->isPinReq:Z

    .line 281
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SimCard;->internalPin:Ljava/lang/String;

    .line 283
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SimCard;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x4

    invoke-virtual {p0, v1, p2}, Lcom/android/internal/telephony/gsm/SimCard;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPin(Ljava/lang/String;Landroid/os/Message;)V

    .line 285
    return-void
.end method

.method public supplyPin2(Ljava/lang/String;Landroid/os/Message;)V
    .registers 5
    .parameter "pin2"
    .parameter "onComplete"

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SimCard;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x4

    invoke-virtual {p0, v1, p2}, Lcom/android/internal/telephony/gsm/SimCard;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPin2(Ljava/lang/String;Landroid/os/Message;)V

    .line 298
    return-void
.end method

.method public supplyPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 6
    .parameter "puk"
    .parameter "newPin"
    .parameter "onComplete"

    .prologue
    .line 289
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SimCard;->isPinReq:Z

    .line 290
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/SimCard;->internalPin:Ljava/lang/String;

    .line 292
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SimCard;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x4

    invoke-virtual {p0, v1, p3}, Lcom/android/internal/telephony/gsm/SimCard;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 294
    return-void
.end method

.method public supplyPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 6
    .parameter "puk2"
    .parameter "newPin2"
    .parameter "onComplete"

    .prologue
    .line 300
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SimCard;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x4

    invoke-virtual {p0, v1, p3}, Lcom/android/internal/telephony/gsm/SimCard;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 302
    return-void
.end method

.method public unregisterForAbsent(Landroid/os/Handler;)V
    .registers 3
    .parameter "h"

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SimCard;->absentRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 240
    return-void
.end method

.method public unregisterForLocked(Landroid/os/Handler;)V
    .registers 3
    .parameter "h"

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SimCard;->pinLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 268
    return-void
.end method

.method public unregisterForNetworkLocked(Landroid/os/Handler;)V
    .registers 3
    .parameter "h"

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SimCard;->networkLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 254
    return-void
.end method

.method public updateImsiConfiguration(Ljava/lang/String;)V
    .registers 6
    .parameter "imsi"

    .prologue
    const/16 v3, 0x30

    .line 929
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-lt v1, v2, :cond_49

    .line 930
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 931
    .local v0, config:Landroid/content/res/Configuration;
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sub-int/2addr v1, v3

    mul-int/lit8 v1, v1, 0x64

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sub-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0xa

    add-int/2addr v1, v2

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, v0, Landroid/content/res/Configuration;->mcc:I

    .line 934
    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sub-int/2addr v1, v3

    mul-int/lit8 v1, v1, 0x64

    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sub-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0xa

    add-int/2addr v1, v2

    const/4 v2, 0x5

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, v0, Landroid/content/res/Configuration;->mnc:I

    .line 938
    :try_start_42
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_49} :catch_4a

    .line 942
    .end local v0           #config:Landroid/content/res/Configuration;
    :cond_49
    :goto_49
    return-void

    .line 939
    .restart local v0       #config:Landroid/content/res/Configuration;
    :catch_4a
    move-exception v1

    goto :goto_49
.end method

.method public updateSimPinStatus()V
    .registers 3

    .prologue
    .line 417
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SimCard;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xf

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/SimCard;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getAllSimPinStatus(Landroid/os/Message;)V

    .line 418
    return-void
.end method
