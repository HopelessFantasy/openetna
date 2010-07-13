.class public final Lcom/android/settings/wifi/AccessPointState;
.super Ljava/lang/Object;
.source "AccessPointState.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/AccessPointState$AccessPointStateCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/settings/wifi/AccessPointState;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final ADHOC_CAPABILITY:Ljava/lang/String; = "[IBSS]"

.field public static final BSSID_ANY:Ljava/lang/String; = "any"

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/settings/wifi/AccessPointState;",
            ">;"
        }
    .end annotation
.end field

.field private static final DAMPING_FACTOR:F = 0.2f

.field private static final ENTERPRISE_CAPABILITY:Ljava/lang/String; = "-EAP-"

.field public static final MATCH_EXACT:I = 0x3

.field public static final MATCH_NONE:I = 0x0

.field public static final MATCH_STRONG:I = 0x2

.field public static final MATCH_WEAK:I = 0x1

.field static final NETWORK_ID_ANY:I = -0x2

.field public static final NETWORK_ID_NOT_SET:I = -0x1

.field public static final OPEN:Ljava/lang/String; = "Open"

.field private static final TAG:Ljava/lang/String; = "AccessPointState"

.field public static final WEP:Ljava/lang/String; = "WEP"

.field public static final WEP_PASSWORD_ASCII:I = 0x1

.field public static final WEP_PASSWORD_AUTO:I = 0x0

.field public static final WEP_PASSWORD_HEX:I = 0x2

.field public static final WPA:Ljava/lang/String; = "WPA"

.field public static final WPA2:Ljava/lang/String; = "WPA2"


# instance fields
.field public bssid:Ljava/lang/String;

.field public configured:Z

.field public disabled:Z

.field public hiddenSsid:Z

.field public ipAddress:I

.field public linkSpeed:I

.field private mBlockRefresh:I

.field private mCallback:Lcom/android/settings/wifi/AccessPointState$AccessPointStateCallback;

.field private mConfigHadPassword:Z

.field private mContext:Landroid/content/Context;

.field private mNeedsRefresh:Z

.field private mPassword:Ljava/lang/String;

.field private mSummaryBuilder:Ljava/lang/StringBuilder;

.field private mWepPasswordType:I

.field public networkId:I

.field public notSeen:I

.field public primary:Z

.field public priority:I

.field public security:Ljava/lang/String;

.field public seen:Z

.field public signal:I

.field private signalForSorting:F

.field public ssid:Ljava/lang/String;

.field public status:Landroid/net/NetworkInfo$DetailedState;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 833
    new-instance v0, Lcom/android/settings/wifi/AccessPointState$1;

    invoke-direct {v0}, Lcom/android/settings/wifi/AccessPointState$1;-><init>()V

    sput-object v0, Lcom/android/settings/wifi/AccessPointState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput v1, p0, Lcom/android/settings/wifi/AccessPointState;->notSeen:I

    .line 99
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/wifi/AccessPointState;->signalForSorting:F

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPointState;->mSummaryBuilder:Ljava/lang/StringBuilder;

    .line 143
    const-string v0, "any"

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPointState;->bssid:Ljava/lang/String;

    .line 144
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPointState;->ssid:Ljava/lang/String;

    .line 145
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/wifi/AccessPointState;->networkId:I

    .line 146
    iput-boolean v1, p0, Lcom/android/settings/wifi/AccessPointState;->hiddenSsid:Z

    .line 147
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPointState;-><init>()V

    .line 139
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/AccessPointState;->setContext(Landroid/content/Context;)V

    .line 140
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/wifi/AccessPointState$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPointState;-><init>()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/settings/wifi/AccessPointState;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/android/settings/wifi/AccessPointState;->mPassword:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/settings/wifi/AccessPointState;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/android/settings/wifi/AccessPointState;->mConfigHadPassword:Z

    return p1
.end method

.method static synthetic access$302(Lcom/android/settings/wifi/AccessPointState;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput p1, p0, Lcom/android/settings/wifi/AccessPointState;->mWepPasswordType:I

    return p1
.end method

.method private buildSummary(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V
    .registers 7
    .parameter "sb"
    .parameter "string"
    .parameter "autoLowerCaseFirstLetter"

    .prologue
    .line 749
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_a

    .line 750
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 764
    :goto_9
    return-void

    .line 752
    :cond_a
    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 755
    if-eqz p2, :cond_29

    if-eqz p3, :cond_29

    .line 758
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, p2, v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 761
    :cond_29
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9
.end method

.method public static convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "string"

    .prologue
    const/16 v3, 0x22

    const-string v4, "\""

    .line 171
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 172
    const-string v1, ""

    .line 180
    :goto_c
    return-object v1

    .line 175
    :cond_d
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int v0, v1, v2

    .line 176
    .local v0, lastPos:I
    if-ltz v0, :cond_23

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_25

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_25

    :cond_23
    move-object v1, p0

    .line 177
    goto :goto_c

    .line 180
    :cond_25
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_c
.end method

.method public static getScanResultSecurity(Landroid/net/wifi/ScanResult;)Ljava/lang/String;
    .registers 7
    .parameter "scanResult"

    .prologue
    const/4 v5, 0x1

    .line 320
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    .line 321
    .local v0, cap:Ljava/lang/String;
    const/4 v3, 0x3

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "WEP"

    aput-object v4, v2, v3

    const-string v3, "WPA"

    aput-object v3, v2, v5

    const/4 v3, 0x2

    const-string v4, "WPA2"

    aput-object v4, v2, v3

    .line 322
    .local v2, securityModes:[Ljava/lang/String;
    array-length v3, v2

    sub-int v1, v3, v5

    .local v1, i:I
    :goto_17
    if-ltz v1, :cond_27

    .line 323
    aget-object v3, v2, v1

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 324
    aget-object v3, v2, v1

    .line 328
    :goto_23
    return-object v3

    .line 322
    :cond_24
    add-int/lit8 v1, v1, -0x1

    goto :goto_17

    .line 328
    :cond_27
    const-string v3, "Open"

    goto :goto_23
.end method

.method private getVerboseSecurity()Ljava/lang/String;
    .registers 3

    .prologue
    .line 735
    const-string v0, "WEP"

    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointState;->security:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 736
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointState;->mContext:Landroid/content/Context;

    const v1, 0x7f080157

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 744
    :goto_13
    return-object v0

    .line 737
    :cond_14
    const-string v0, "WPA"

    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointState;->security:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 738
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointState;->mContext:Landroid/content/Context;

    const v1, 0x7f080158

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    .line 739
    :cond_28
    const-string v0, "WPA2"

    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointState;->security:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 740
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointState;->mContext:Landroid/content/Context;

    const v1, 0x7f080159

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    .line 741
    :cond_3c
    const-string v0, "Open"

    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointState;->security:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 742
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointState;->mContext:Landroid/content/Context;

    const v1, 0x7f080156

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    .line 744
    :cond_50
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public static getWifiConfigurationSecurity(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
    .registers 6
    .parameter "wifiConfig"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v4, "Open"

    .line 391
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 396
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_25

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 399
    :cond_25
    const-string v0, "WEP"

    .line 409
    :goto_27
    return-object v0

    .line 401
    :cond_28
    const-string v0, "Open"

    move-object v0, v4

    goto :goto_27

    .line 403
    :cond_2c
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 404
    const-string v0, "WPA2"

    goto :goto_27

    .line 405
    :cond_37
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 406
    const-string v0, "WPA"

    goto :goto_27

    .line 408
    :cond_42
    const-string v0, "AccessPointState"

    const-string v1, "Unknown security type from WifiConfiguration, falling back on open."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    const-string v0, "Open"

    move-object v0, v4

    goto :goto_27
.end method

.method private getWpaSupplicantBssid()Ljava/lang/String;
    .registers 3

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointState;->bssid:Ljava/lang/String;

    const-string v1, "any"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointState;->bssid:Ljava/lang/String;

    goto :goto_b
.end method

.method private static hasPassword(Landroid/net/wifi/WifiConfiguration;)Z
    .registers 5
    .parameter "wifiConfig"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 374
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v0, v0, v3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_36

    :cond_34
    move v0, v3

    :goto_35
    return v0

    :cond_36
    move v0, v2

    goto :goto_35
.end method

.method public static isAdhoc(Landroid/net/wifi/ScanResult;)Z
    .registers 3
    .parameter "scanResult"

    .prologue
    .line 335
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "[IBSS]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isEnterprise(Landroid/net/wifi/ScanResult;)Z
    .registers 3
    .parameter "scanResult"

    .prologue
    .line 342
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "-EAP-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private static isHex(Ljava/lang/String;)Z
    .registers 5
    .parameter "key"

    .prologue
    const/4 v3, 0x1

    .line 551
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int v1, v2, v3

    .local v1, i:I
    :goto_7
    if-ltz v1, :cond_2a

    .line 552
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 553
    .local v0, c:C
    const/16 v2, 0x30

    if-lt v0, v2, :cond_15

    const/16 v2, 0x39

    if-le v0, v2, :cond_27

    :cond_15
    const/16 v2, 0x41

    if-lt v0, v2, :cond_1d

    const/16 v2, 0x46

    if-le v0, v2, :cond_27

    :cond_1d
    const/16 v2, 0x61

    if-lt v0, v2, :cond_25

    const/16 v2, 0x66

    if-le v0, v2, :cond_27

    .line 554
    :cond_25
    const/4 v2, 0x0

    .line 558
    .end local v0           #c:C
    :goto_26
    return v2

    .line 551
    .restart local v0       #c:C
    :cond_27
    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    .end local v0           #c:C
    :cond_2a
    move v2, v3

    .line 558
    goto :goto_26
.end method

.method private static isHexWepKey(Ljava/lang/String;)Z
    .registers 3
    .parameter "wepKey"

    .prologue
    .line 540
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 543
    .local v0, len:I
    const/16 v1, 0xa

    if-eq v0, v1, :cond_12

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_12

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_12

    .line 544
    const/4 v1, 0x0

    .line 547
    :goto_11
    return v1

    :cond_12
    invoke-static {p0}, Lcom/android/settings/wifi/AccessPointState;->isHex(Ljava/lang/String;)Z

    move-result v1

    goto :goto_11
.end method

.method private parseWifiConfigurationSecurity(Landroid/net/wifi/WifiConfiguration;)V
    .registers 3
    .parameter "wifiConfig"

    .prologue
    .line 382
    invoke-static {p1}, Lcom/android/settings/wifi/AccessPointState;->getWifiConfigurationSecurity(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AccessPointState;->setSecurity(Ljava/lang/String;)V

    .line 383
    invoke-static {p1}, Lcom/android/settings/wifi/AccessPointState;->hasPassword(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/AccessPointState;->mConfigHadPassword:Z

    .line 384
    return-void
.end method

.method private requestRefresh()V
    .registers 2

    .prologue
    .line 576
    iget v0, p0, Lcom/android/settings/wifi/AccessPointState;->mBlockRefresh:I

    if-lez v0, :cond_8

    .line 577
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/AccessPointState;->mNeedsRefresh:Z

    .line 586
    :goto_7
    return-void

    .line 581
    :cond_8
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointState;->mCallback:Lcom/android/settings/wifi/AccessPointState$AccessPointStateCallback;

    if-eqz v0, :cond_11

    .line 582
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointState;->mCallback:Lcom/android/settings/wifi/AccessPointState$AccessPointStateCallback;

    invoke-interface {v0}, Lcom/android/settings/wifi/AccessPointState$AccessPointStateCallback;->refreshAccessPointState()V

    .line 585
    :cond_11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/AccessPointState;->mNeedsRefresh:Z

    goto :goto_7
.end method

.method private setupSecurity(Landroid/net/wifi/WifiConfiguration;)V
    .registers 9
    .parameter "config"

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v6, "WPA2"

    const-string v5, "Open"

    .line 474
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clear()V

    .line 475
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clear()V

    .line 476
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clear()V

    .line 477
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clear()V

    .line 478
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clear()V

    .line 480
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointState;->security:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 481
    const-string v0, "Open"

    iput-object v5, p0, Lcom/android/settings/wifi/AccessPointState;->security:Ljava/lang/String;

    .line 482
    const-string v0, "AccessPointState"

    const-string v1, "Empty security, assuming open"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    :cond_33
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointState;->security:Ljava/lang/String;

    const-string v1, "WEP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_90

    .line 488
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointState;->mPassword:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_57

    .line 489
    iget v0, p0, Lcom/android/settings/wifi/AccessPointState;->mWepPasswordType:I

    if-nez v0, :cond_7e

    .line 490
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointState;->mPassword:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/wifi/AccessPointState;->isHexWepKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_73

    .line 491
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointState;->mPassword:Ljava/lang/String;

    aput-object v1, v0, v3

    .line 502
    :cond_57
    :goto_57
    iput v3, p1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    .line 504
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    .line 505
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    .line 507
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    .line 509
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    .line 510
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    .line 537
    :cond_72
    :goto_72
    return-void

    .line 493
    :cond_73
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointState;->mPassword:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/settings/wifi/AccessPointState;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    goto :goto_57

    .line 496
    :cond_7e
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget v1, p0, Lcom/android/settings/wifi/AccessPointState;->mWepPasswordType:I

    if-ne v1, v4, :cond_8d

    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointState;->mPassword:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/settings/wifi/AccessPointState;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_8a
    aput-object v1, v0, v3

    goto :goto_57

    :cond_8d
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointState;->mPassword:Ljava/lang/String;

    goto :goto_8a

    .line 512
    :cond_90
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointState;->security:Ljava/lang/String;

    const-string v1, "WPA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a4

    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointState;->security:Ljava/lang/String;

    const-string v1, "WPA2"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f9

    .line 513
    :cond_a4
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 514
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 516
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    .line 518
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 519
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    .line 521
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointState;->security:Ljava/lang/String;

    const-string v2, "WPA2"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ed

    move v1, v4

    :goto_cb
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 524
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointState;->mPassword:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_72

    .line 525
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointState;->mPassword:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x40

    if-ne v0, v1, :cond_ef

    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointState;->mPassword:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/wifi/AccessPointState;->isHex(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ef

    .line 527
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointState;->mPassword:Ljava/lang/String;

    iput-object v0, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_72

    :cond_ed
    move v1, v3

    .line 521
    goto :goto_cb

    .line 530
    :cond_ef
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointState;->mPassword:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/wifi/AccessPointState;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_72

    .line 534
    :cond_f9
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointState;->security:Ljava/lang/String;

    const-string v1, "Open"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_72

    .line 535
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    goto/16 :goto_72
.end method


# virtual methods
.method public Increase_notSeen()V
    .registers 2

    .prologue
    .line 86
    iget v0, p0, Lcom/android/settings/wifi/AccessPointState;->notSeen:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/wifi/AccessPointState;->notSeen:I

    .line 87
    return-void
.end method

.method public Reset_notSeen()V
    .registers 2

    .prologue
    .line 83
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/wifi/AccessPointState;->notSeen:I

    .line 84
    return-void
.end method

.method blockRefresh()V
    .registers 2

    .prologue
    .line 566
    iget v0, p0, Lcom/android/settings/wifi/AccessPointState;->mBlockRefresh:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/wifi/AccessPointState;->mBlockRefresh:I

    .line 567
    return-void
.end method

.method public compareTo(Lcom/android/settings/wifi/AccessPointState;)I
    .registers 7
    .parameter "other"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 775
    iget-boolean v1, p1, Lcom/android/settings/wifi/AccessPointState;->primary:Z

    if-eqz v1, :cond_12

    move v1, v4

    :goto_7
    iget-boolean v2, p0, Lcom/android/settings/wifi/AccessPointState;->primary:Z

    if-eqz v2, :cond_14

    move v2, v4

    :goto_c
    sub-int v0, v1, v2

    .line 776
    .local v0, comparison:I
    if-eqz v0, :cond_16

    move v1, v0

    .line 799
    :goto_11
    return v1

    .end local v0           #comparison:I
    :cond_12
    move v1, v3

    .line 775
    goto :goto_7

    :cond_14
    move v2, v3

    goto :goto_c

    .line 779
    .restart local v0       #comparison:I
    :cond_16
    iget-boolean v1, p1, Lcom/android/settings/wifi/AccessPointState;->seen:Z

    if-eqz v1, :cond_26

    move v1, v4

    :goto_1b
    iget-boolean v2, p0, Lcom/android/settings/wifi/AccessPointState;->seen:Z

    if-eqz v2, :cond_28

    move v2, v4

    :goto_20
    sub-int v0, v1, v2

    .line 780
    if-eqz v0, :cond_2a

    move v1, v0

    goto :goto_11

    :cond_26
    move v1, v3

    .line 779
    goto :goto_1b

    :cond_28
    move v2, v3

    goto :goto_20

    .line 783
    :cond_2a
    iget-boolean v1, p1, Lcom/android/settings/wifi/AccessPointState;->configured:Z

    if-eqz v1, :cond_3a

    move v1, v4

    :goto_2f
    iget-boolean v2, p0, Lcom/android/settings/wifi/AccessPointState;->configured:Z

    if-eqz v2, :cond_3c

    move v2, v4

    :goto_34
    sub-int v0, v1, v2

    .line 784
    if-eqz v0, :cond_3e

    move v1, v0

    goto :goto_11

    :cond_3a
    move v1, v3

    .line 783
    goto :goto_2f

    :cond_3c
    move v2, v3

    goto :goto_34

    .line 786
    :cond_3e
    iget-boolean v1, p0, Lcom/android/settings/wifi/AccessPointState;->configured:Z

    if-nez v1, :cond_5a

    .line 790
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPointState;->hasSecurity()Z

    move-result v1

    if-eqz v1, :cond_56

    move v1, v4

    :goto_49
    invoke-virtual {p1}, Lcom/android/settings/wifi/AccessPointState;->hasSecurity()Z

    move-result v2

    if-eqz v2, :cond_58

    move v2, v4

    :goto_50
    sub-int v0, v1, v2

    .line 791
    if-eqz v0, :cond_5a

    move v1, v0

    goto :goto_11

    :cond_56
    move v1, v3

    .line 790
    goto :goto_49

    :cond_58
    move v2, v3

    goto :goto_50

    .line 795
    :cond_5a
    iget v1, p1, Lcom/android/settings/wifi/AccessPointState;->signalForSorting:F

    iget v2, p0, Lcom/android/settings/wifi/AccessPointState;->signalForSorting:F

    sub-float/2addr v1, v2

    float-to-int v0, v1

    .line 796
    if-eqz v0, :cond_64

    move v1, v0

    goto :goto_11

    .line 799
    :cond_64
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointState;->ssid:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/settings/wifi/AccessPointState;->ssid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    goto :goto_11
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 36
    check-cast p1, Lcom/android/settings/wifi/AccessPointState;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/AccessPointState;->compareTo(Lcom/android/settings/wifi/AccessPointState;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 829
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 10
    .parameter "o"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 681
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    move v2, v6

    .line 690
    :goto_11
    return v2

    .line 685
    :cond_12
    move-object v0, p1

    check-cast v0, Lcom/android/settings/wifi/AccessPointState;

    move-object v1, v0

    .line 690
    .local v1, other:Lcom/android/settings/wifi/AccessPointState;
    iget v2, v1, Lcom/android/settings/wifi/AccessPointState;->networkId:I

    iget-object v3, v1, Lcom/android/settings/wifi/AccessPointState;->bssid:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/settings/wifi/AccessPointState;->ssid:Ljava/lang/String;

    iget-object v5, v1, Lcom/android/settings/wifi/AccessPointState;->security:Ljava/lang/String;

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/settings/wifi/AccessPointState;->matches(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-lt v2, v7, :cond_26

    move v2, v7

    goto :goto_11

    :cond_26
    move v2, v6

    goto :goto_11
.end method

.method public forget()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 455
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPointState;->blockRefresh()V

    .line 456
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/AccessPointState;->setConfigured(Z)V

    .line 457
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AccessPointState;->setNetworkId(I)V

    .line 458
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/AccessPointState;->setPrimary(Z)V

    .line 459
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AccessPointState;->setStatus(Landroid/net/NetworkInfo$DetailedState;)V

    .line 460
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/AccessPointState;->setDisabled(Z)V

    .line 461
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPointState;->unblockRefresh()V

    .line 462
    return-void
.end method

.method public getHumanReadableSecurity()Ljava/lang/String;
    .registers 3

    .prologue
    .line 292
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointState;->security:Ljava/lang/String;

    const-string v1, "Open"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointState;->mContext:Landroid/content/Context;

    const v1, 0x7f08014f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 297
    :goto_13
    return-object v0

    .line 293
    :cond_14
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointState;->security:Ljava/lang/String;

    const-string v1, "WEP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointState;->mContext:Landroid/content/Context;

    const v1, 0x7f080150

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    .line 294
    :cond_28
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointState;->security:Ljava/lang/String;

    const-string v1, "WPA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointState;->mContext:Landroid/content/Context;

    const v1, 0x7f080151

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    .line 295
    :cond_3c
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointState;->security:Ljava/lang/String;

    const-string v1, "WPA2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointState;->mContext:Landroid/content/Context;

    const v1, 0x7f080152

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    .line 297
    :cond_50
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointState;->mContext:Landroid/content/Context;

    const v1, 0x7f080155

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_13
.end method

.method public getHumanReadableSsid()Ljava/lang/String;
    .registers 6

    .prologue
    const/16 v4, 0x22

    const/4 v3, 0x1

    .line 219
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointState;->ssid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 220
    const-string v1, ""

    .line 228
    :goto_d
    return-object v1

    .line 223
    :cond_e
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointState;->ssid:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int v0, v1, v3

    .line 224
    .local v0, lastPos:I
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointState;->ssid:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v4, :cond_2e

    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointState;->ssid:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v4, :cond_2e

    .line 225
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointState;->ssid:Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_d

    .line 228
    :cond_2e
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointState;->ssid:Ljava/lang/String;

    goto :goto_d
.end method

.method getSummarizedStatus()Ljava/lang/String;
    .registers 7

    .prologue
    const v5, 0x7f080174

    const/4 v4, 0x1

    .line 699
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointState;->mSummaryBuilder:Ljava/lang/StringBuilder;

    .line 700
    .local v0, sb:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 702
    iget-boolean v2, p0, Lcom/android/settings/wifi/AccessPointState;->primary:Z

    if-eqz v2, :cond_26

    iget-object v2, p0, Lcom/android/settings/wifi/AccessPointState;->status:Landroid/net/NetworkInfo$DetailedState;

    if-eqz v2, :cond_26

    .line 703
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPointState;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/wifi/AccessPointState;->status:Landroid/net/NetworkInfo$DetailedState;

    invoke-static {v2, v3}, Lcom/android/settings/wifi/WifiStatus;->getPrintable(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2, v4}, Lcom/android/settings/wifi/AccessPointState;->buildSummary(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    .line 731
    :cond_21
    :goto_21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_25
    return-object v2

    .line 705
    :cond_26
    iget-boolean v2, p0, Lcom/android/settings/wifi/AccessPointState;->seen:Z

    if-nez v2, :cond_48

    .line 706
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPointState;->mContext:Landroid/content/Context;

    const v3, 0x7f080173

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2, v4}, Lcom/android/settings/wifi/AccessPointState;->buildSummary(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    .line 709
    iget-boolean v2, p0, Lcom/android/settings/wifi/AccessPointState;->primary:Z

    if-nez v2, :cond_21

    iget-boolean v2, p0, Lcom/android/settings/wifi/AccessPointState;->configured:Z

    if-eqz v2, :cond_21

    .line 710
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPointState;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2, v4}, Lcom/android/settings/wifi/AccessPointState;->buildSummary(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    goto :goto_21

    .line 714
    :cond_48
    iget-boolean v2, p0, Lcom/android/settings/wifi/AccessPointState;->configured:Z

    if-eqz v2, :cond_5a

    iget-boolean v2, p0, Lcom/android/settings/wifi/AccessPointState;->disabled:Z

    if-eqz v2, :cond_5a

    .line 716
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPointState;->mContext:Landroid/content/Context;

    const v3, 0x7f080175

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_25

    .line 720
    :cond_5a
    iget-boolean v2, p0, Lcom/android/settings/wifi/AccessPointState;->primary:Z

    if-nez v2, :cond_6b

    iget-boolean v2, p0, Lcom/android/settings/wifi/AccessPointState;->configured:Z

    if-eqz v2, :cond_6b

    .line 721
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPointState;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2, v4}, Lcom/android/settings/wifi/AccessPointState;->buildSummary(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    .line 725
    :cond_6b
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPointState;->getVerboseSecurity()Ljava/lang/String;

    move-result-object v1

    .line 726
    .local v1, verboseSecurity:Ljava/lang/String;
    if-eqz v1, :cond_21

    .line 727
    invoke-direct {p0, v0, v1, v4}, Lcom/android/settings/wifi/AccessPointState;->buildSummary(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    goto :goto_21
.end method

.method public get_notSeen()I
    .registers 2

    .prologue
    .line 89
    iget v0, p0, Lcom/android/settings/wifi/AccessPointState;->notSeen:I

    return v0
.end method

.method public hasPassword()Z
    .registers 2

    .prologue
    .line 370
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointState;->mPassword:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/android/settings/wifi/AccessPointState;->mConfigHadPassword:Z

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public hasSecurity()Z
    .registers 3

    .prologue
    .line 288
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointState;->security:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointState;->security:Ljava/lang/String;

    const-string v1, "Open"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 671
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointState;->ssid:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointState;->ssid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isConnectable()Z
    .registers 2

    .prologue
    .line 439
    iget-boolean v0, p0, Lcom/android/settings/wifi/AccessPointState;->primary:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/android/settings/wifi/AccessPointState;->seen:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isForgetable()Z
    .registers 2

    .prologue
    .line 446
    iget-boolean v0, p0, Lcom/android/settings/wifi/AccessPointState;->configured:Z

    return v0
.end method

.method public matches(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 14
    .parameter "otherNetworkId"
    .parameter "otherBssid"
    .parameter "otherSsid"
    .parameter "otherSecurity"

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x2

    const/4 v7, 0x0

    const-string v8, "any"

    .line 599
    if-nez p3, :cond_2b

    .line 601
    const-string v4, "AccessPointState"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BSSID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", SSID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v7

    .line 656
    :goto_2a
    return v4

    .line 610
    :cond_2b
    iget-object v4, p0, Lcom/android/settings/wifi/AccessPointState;->security:Ljava/lang/String;

    if-eqz v4, :cond_3b

    if-eqz p4, :cond_3b

    .line 611
    iget-object v4, p0, Lcom/android/settings/wifi/AccessPointState;->security:Ljava/lang/String;

    invoke-virtual {v4, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3b

    move v4, v7

    .line 612
    goto :goto_2a

    .line 617
    :cond_3b
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_43

    .line 618
    const-string p2, "any"

    .line 621
    :cond_43
    iget v4, p0, Lcom/android/settings/wifi/AccessPointState;->networkId:I

    if-ne v4, p1, :cond_52

    move v1, v6

    .line 622
    .local v1, networkIdMatches:Z
    :goto_48
    if-nez v1, :cond_54

    iget v4, p0, Lcom/android/settings/wifi/AccessPointState;->networkId:I

    if-eq v4, v5, :cond_54

    if-eq p1, v5, :cond_54

    move v4, v7

    .line 624
    goto :goto_2a

    .end local v1           #networkIdMatches:Z
    :cond_52
    move v1, v7

    .line 621
    goto :goto_48

    .line 627
    .restart local v1       #networkIdMatches:Z
    :cond_54
    if-eqz v1, :cond_5d

    const/4 v4, -0x1

    if-eq p1, v4, :cond_5d

    if-eq p1, v5, :cond_5d

    .line 630
    const/4 v4, 0x3

    goto :goto_2a

    .line 635
    :cond_5d
    iget-object v4, p0, Lcom/android/settings/wifi/AccessPointState;->bssid:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 636
    .local v0, bssidMatches:Z
    const-string v4, "any"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 637
    .local v2, otherBssidIsWildcard:Z
    if-eqz v0, :cond_6f

    if-nez v2, :cond_6f

    .line 639
    const/4 v4, 0x2

    goto :goto_2a

    .line 642
    :cond_6f
    if-nez v0, :cond_7f

    iget-object v4, p0, Lcom/android/settings/wifi/AccessPointState;->bssid:Ljava/lang/String;

    const-string v5, "any"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7f

    if-nez v2, :cond_7f

    move v4, v7

    .line 645
    goto :goto_2a

    .line 650
    :cond_7f
    iget-object v4, p0, Lcom/android/settings/wifi/AccessPointState;->ssid:Ljava/lang/String;

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 651
    .local v3, ssidMatches:Z
    if-eqz v3, :cond_89

    move v4, v6

    .line 653
    goto :goto_2a

    :cond_89
    move v4, v7

    .line 656
    goto :goto_2a
.end method

.method public matchesWifiConfiguration(Landroid/net/wifi/WifiConfiguration;)I
    .registers 6
    .parameter "wifiConfig"

    .prologue
    .line 694
    invoke-static {p1}, Lcom/android/settings/wifi/AccessPointState;->getWifiConfigurationSecurity(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v0

    .line 695
    .local v0, security:Ljava/lang/String;
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/android/settings/wifi/AccessPointState;->matches(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public setBssid(Ljava/lang/String;)V
    .registers 4
    .parameter "bssid"

    .prologue
    .line 158
    if-eqz p1, :cond_e

    .line 160
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointState;->bssid:Ljava/lang/String;

    const-string v1, "any"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 161
    iput-object p1, p0, Lcom/android/settings/wifi/AccessPointState;->bssid:Ljava/lang/String;

    .line 164
    :cond_e
    return-void
.end method

.method public setCallback(Lcom/android/settings/wifi/AccessPointState$AccessPointStateCallback;)V
    .registers 2
    .parameter "callback"

    .prologue
    .line 562
    iput-object p1, p0, Lcom/android/settings/wifi/AccessPointState;->mCallback:Lcom/android/settings/wifi/AccessPointState$AccessPointStateCallback;

    .line 563
    return-void
.end method

.method public setConfigured(Z)V
    .registers 3
    .parameter "configured"

    .prologue
    .line 267
    iget-boolean v0, p0, Lcom/android/settings/wifi/AccessPointState;->configured:Z

    if-eq v0, p1, :cond_9

    .line 268
    iput-boolean p1, p0, Lcom/android/settings/wifi/AccessPointState;->configured:Z

    .line 269
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPointState;->requestRefresh()V

    .line 271
    :cond_9
    return-void
.end method

.method setContext(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/settings/wifi/AccessPointState;->mContext:Landroid/content/Context;

    .line 151
    return-void
.end method

.method public setDisabled(Z)V
    .registers 3
    .parameter "disabled"

    .prologue
    .line 198
    iget-boolean v0, p0, Lcom/android/settings/wifi/AccessPointState;->disabled:Z

    if-eq v0, p1, :cond_9

    .line 199
    iput-boolean p1, p0, Lcom/android/settings/wifi/AccessPointState;->disabled:Z

    .line 200
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPointState;->requestRefresh()V

    .line 202
    :cond_9
    return-void
.end method

.method public setHiddenSsid(Z)V
    .registers 3
    .parameter "hiddenSsid"

    .prologue
    .line 246
    iget-boolean v0, p0, Lcom/android/settings/wifi/AccessPointState;->hiddenSsid:Z

    if-eq v0, p1, :cond_9

    .line 247
    iput-boolean p1, p0, Lcom/android/settings/wifi/AccessPointState;->hiddenSsid:Z

    .line 248
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPointState;->requestRefresh()V

    .line 250
    :cond_9
    return-void
.end method

.method public setIpAddress(I)V
    .registers 3
    .parameter "address"

    .prologue
    .line 260
    iget v0, p0, Lcom/android/settings/wifi/AccessPointState;->ipAddress:I

    if-eq v0, p1, :cond_9

    .line 261
    iput p1, p0, Lcom/android/settings/wifi/AccessPointState;->ipAddress:I

    .line 262
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPointState;->requestRefresh()V

    .line 264
    :cond_9
    return-void
.end method

.method public setLinkSpeed(I)V
    .registers 3
    .parameter "linkSpeed"

    .prologue
    .line 253
    iget v0, p0, Lcom/android/settings/wifi/AccessPointState;->linkSpeed:I

    if-eq v0, p1, :cond_9

    .line 254
    iput p1, p0, Lcom/android/settings/wifi/AccessPointState;->linkSpeed:I

    .line 255
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPointState;->requestRefresh()V

    .line 257
    :cond_9
    return-void
.end method

.method public setNetworkId(I)V
    .registers 2
    .parameter "networkId"

    .prologue
    .line 154
    iput p1, p0, Lcom/android/settings/wifi/AccessPointState;->networkId:I

    .line 155
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .registers 3
    .parameter "password"

    .prologue
    .line 361
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/wifi/AccessPointState;->setPassword(Ljava/lang/String;I)V

    .line 362
    return-void
.end method

.method public setPassword(Ljava/lang/String;I)V
    .registers 3
    .parameter "password"
    .parameter "wepPasswordType"

    .prologue
    .line 365
    iput-object p1, p0, Lcom/android/settings/wifi/AccessPointState;->mPassword:Ljava/lang/String;

    .line 366
    iput p2, p0, Lcom/android/settings/wifi/AccessPointState;->mWepPasswordType:I

    .line 367
    return-void
.end method

.method public setPrimary(Z)V
    .registers 3
    .parameter "primary"

    .prologue
    .line 184
    iget-boolean v0, p0, Lcom/android/settings/wifi/AccessPointState;->primary:Z

    if-eq v0, p1, :cond_9

    .line 185
    iput-boolean p1, p0, Lcom/android/settings/wifi/AccessPointState;->primary:Z

    .line 186
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPointState;->requestRefresh()V

    .line 188
    :cond_9
    return-void
.end method

.method public setPriority(I)V
    .registers 3
    .parameter "priority"

    .prologue
    .line 239
    iget v0, p0, Lcom/android/settings/wifi/AccessPointState;->priority:I

    if-eq v0, p1, :cond_9

    .line 240
    iput p1, p0, Lcom/android/settings/wifi/AccessPointState;->priority:I

    .line 241
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPointState;->requestRefresh()V

    .line 243
    :cond_9
    return-void
.end method

.method public setSecurity(Ljava/lang/String;)V
    .registers 3
    .parameter "security"

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointState;->security:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointState;->security:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 282
    :cond_10
    iput-object p1, p0, Lcom/android/settings/wifi/AccessPointState;->security:Ljava/lang/String;

    .line 283
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPointState;->requestRefresh()V

    .line 285
    :cond_15
    return-void
.end method

.method public setSeen(Z)V
    .registers 3
    .parameter "seen"

    .prologue
    .line 191
    iget-boolean v0, p0, Lcom/android/settings/wifi/AccessPointState;->seen:Z

    if-eq v0, p1, :cond_9

    .line 192
    iput-boolean p1, p0, Lcom/android/settings/wifi/AccessPointState;->seen:Z

    .line 193
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPointState;->requestRefresh()V

    .line 195
    :cond_9
    return-void
.end method

.method public setSignal(I)V
    .registers 5
    .parameter "signal"

    .prologue
    .line 206
    iget v0, p0, Lcom/android/settings/wifi/AccessPointState;->signalForSorting:F

    const/4 v1, 0x1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_14

    .line 207
    int-to-float v0, p1

    iput v0, p0, Lcom/android/settings/wifi/AccessPointState;->signalForSorting:F

    .line 212
    :goto_a
    iget v0, p0, Lcom/android/settings/wifi/AccessPointState;->signal:I

    if-eq v0, p1, :cond_13

    .line 213
    iput p1, p0, Lcom/android/settings/wifi/AccessPointState;->signal:I

    .line 214
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPointState;->requestRefresh()V

    .line 216
    :cond_13
    return-void

    .line 209
    :cond_14
    const v0, 0x3e4ccccd

    int-to-float v1, p1

    mul-float/2addr v0, v1

    const v1, 0x3f4ccccd

    iget v2, p0, Lcom/android/settings/wifi/AccessPointState;->signalForSorting:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/settings/wifi/AccessPointState;->signalForSorting:F

    goto :goto_a
.end method

.method public setSsid(Ljava/lang/String;)V
    .registers 3
    .parameter "ssid"

    .prologue
    .line 232
    if-eqz p1, :cond_b

    .line 233
    invoke-static {p1}, Lcom/android/settings/wifi/AccessPointState;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPointState;->ssid:Ljava/lang/String;

    .line 234
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPointState;->requestRefresh()V

    .line 236
    :cond_b
    return-void
.end method

.method public setStatus(Landroid/net/NetworkInfo$DetailedState;)V
    .registers 3
    .parameter "status"

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointState;->status:Landroid/net/NetworkInfo$DetailedState;

    if-eq v0, p1, :cond_9

    .line 275
    iput-object p1, p0, Lcom/android/settings/wifi/AccessPointState;->status:Landroid/net/NetworkInfo$DetailedState;

    .line 276
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPointState;->requestRefresh()V

    .line 278
    :cond_9
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    const-string v2, ", "

    .line 803
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointState;->ssid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointState;->bssid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/wifi/AccessPointState;->networkId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method unblockRefresh()V
    .registers 3

    .prologue
    .line 570
    iget v0, p0, Lcom/android/settings/wifi/AccessPointState;->mBlockRefresh:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/settings/wifi/AccessPointState;->mBlockRefresh:I

    if-nez v0, :cond_f

    iget-boolean v0, p0, Lcom/android/settings/wifi/AccessPointState;->mNeedsRefresh:Z

    if-eqz v0, :cond_f

    .line 571
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPointState;->requestRefresh()V

    .line 573
    :cond_f
    return-void
.end method

.method public updateFromScanResult(Landroid/net/wifi/ScanResult;)V
    .registers 4
    .parameter "scanResult"

    .prologue
    .line 301
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPointState;->blockRefresh()V

    .line 305
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AccessPointState;->setSeen(Z)V

    .line 306
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AccessPointState;->setSsid(Ljava/lang/String;)V

    .line 307
    iget v0, p0, Lcom/android/settings/wifi/AccessPointState;->networkId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_15

    .line 309
    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AccessPointState;->setNetworkId(I)V

    .line 311
    :cond_15
    iget v0, p1, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AccessPointState;->setSignal(I)V

    .line 312
    invoke-static {p1}, Lcom/android/settings/wifi/AccessPointState;->getScanResultSecurity(Landroid/net/wifi/ScanResult;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AccessPointState;->setSecurity(Ljava/lang/String;)V

    .line 313
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPointState;->unblockRefresh()V

    .line 314
    return-void
.end method

.method public updateFromWifiConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    .registers 4
    .parameter "wifiConfig"

    .prologue
    const/4 v1, 0x1

    .line 346
    if-eqz p1, :cond_30

    .line 347
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPointState;->blockRefresh()V

    .line 348
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AccessPointState;->setBssid(Ljava/lang/String;)V

    .line 349
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AccessPointState;->setNetworkId(I)V

    .line 350
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->priority:I

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AccessPointState;->setPriority(I)V

    .line 351
    iget-boolean v0, p1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AccessPointState;->setHiddenSsid(Z)V

    .line 352
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AccessPointState;->setSsid(Ljava/lang/String;)V

    .line 353
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/AccessPointState;->setConfigured(Z)V

    .line 354
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->status:I

    if-ne v0, v1, :cond_31

    move v0, v1

    :goto_27
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AccessPointState;->setDisabled(Z)V

    .line 355
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/AccessPointState;->parseWifiConfigurationSecurity(Landroid/net/wifi/WifiConfiguration;)V

    .line 356
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPointState;->unblockRefresh()V

    .line 358
    :cond_30
    return-void

    .line 354
    :cond_31
    const/4 v0, 0x0

    goto :goto_27
.end method

.method public updateFromWifiInfo(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V
    .registers 4
    .parameter "wifiInfo"
    .parameter "state"

    .prologue
    .line 414
    if-eqz p1, :cond_30

    .line 415
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPointState;->blockRefresh()V

    .line 416
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AccessPointState;->setBssid(Ljava/lang/String;)V

    .line 417
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AccessPointState;->setLinkSpeed(I)V

    .line 418
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AccessPointState;->setNetworkId(I)V

    .line 419
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AccessPointState;->setIpAddress(I)V

    .line 420
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AccessPointState;->setSsid(Ljava/lang/String;)V

    .line 421
    if-eqz p2, :cond_2d

    .line 422
    invoke-virtual {p0, p2}, Lcom/android/settings/wifi/AccessPointState;->setStatus(Landroid/net/NetworkInfo$DetailedState;)V

    .line 431
    :cond_2d
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPointState;->unblockRefresh()V

    .line 433
    :cond_30
    return-void
.end method

.method public updateWifiConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    .registers 3
    .parameter "config"

    .prologue
    .line 465
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPointState;->getWpaSupplicantBssid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 466
    iget v0, p0, Lcom/android/settings/wifi/AccessPointState;->priority:I

    iput v0, p1, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 467
    iget-boolean v0, p0, Lcom/android/settings/wifi/AccessPointState;->hiddenSsid:Z

    iput-boolean v0, p1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 468
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointState;->ssid:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/wifi/AccessPointState;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 470
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/AccessPointState;->setupSecurity(Landroid/net/wifi/WifiConfiguration;)V

    .line 471
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 808
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointState;->bssid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 809
    iget-boolean v0, p0, Lcom/android/settings/wifi/AccessPointState;->configured:Z

    if-eqz v0, :cond_72

    move v0, v2

    :goto_c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 810
    iget v0, p0, Lcom/android/settings/wifi/AccessPointState;->ipAddress:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 811
    iget v0, p0, Lcom/android/settings/wifi/AccessPointState;->linkSpeed:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 812
    iget v0, p0, Lcom/android/settings/wifi/AccessPointState;->networkId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 813
    iget-boolean v0, p0, Lcom/android/settings/wifi/AccessPointState;->primary:Z

    if-eqz v0, :cond_74

    move v0, v2

    :goto_23
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 814
    iget v0, p0, Lcom/android/settings/wifi/AccessPointState;->priority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 815
    iget-boolean v0, p0, Lcom/android/settings/wifi/AccessPointState;->hiddenSsid:Z

    if-eqz v0, :cond_76

    move v0, v2

    :goto_30
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 816
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointState;->security:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 817
    iget-boolean v0, p0, Lcom/android/settings/wifi/AccessPointState;->seen:Z

    if-eqz v0, :cond_78

    move v0, v2

    :goto_3d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 818
    iget-boolean v0, p0, Lcom/android/settings/wifi/AccessPointState;->disabled:Z

    if-eqz v0, :cond_7a

    move v0, v2

    :goto_45
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 819
    iget v0, p0, Lcom/android/settings/wifi/AccessPointState;->signal:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 820
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointState;->ssid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 821
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointState;->status:Landroid/net/NetworkInfo$DetailedState;

    if-eqz v0, :cond_7c

    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointState;->status:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0}, Landroid/net/NetworkInfo$DetailedState;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_5c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 822
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointState;->mPassword:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 823
    iget-boolean v0, p0, Lcom/android/settings/wifi/AccessPointState;->mConfigHadPassword:Z

    if-eqz v0, :cond_7e

    move v0, v2

    :goto_69
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 824
    iget v0, p0, Lcom/android/settings/wifi/AccessPointState;->mWepPasswordType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 825
    return-void

    :cond_72
    move v0, v1

    .line 809
    goto :goto_c

    :cond_74
    move v0, v1

    .line 813
    goto :goto_23

    :cond_76
    move v0, v1

    .line 815
    goto :goto_30

    :cond_78
    move v0, v1

    .line 817
    goto :goto_3d

    :cond_7a
    move v0, v1

    .line 818
    goto :goto_45

    .line 821
    :cond_7c
    const/4 v0, 0x0

    goto :goto_5c

    :cond_7e
    move v0, v1

    .line 823
    goto :goto_69
.end method
