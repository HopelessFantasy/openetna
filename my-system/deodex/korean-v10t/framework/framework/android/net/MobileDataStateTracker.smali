.class public Landroid/net/MobileDataStateTracker;
.super Landroid/net/NetworkStateTracker;
.source "MobileDataStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/MobileDataStateTracker$1;,
        Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "MobileDataStateTracker"

.field private static final sDnsPropNames:[Ljava/lang/String;


# instance fields
.field private mDefaultGatewayAddr:I

.field private mDnsServers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInterfaceName:Ljava/lang/String;

.field private mLastCallingPid:I

.field private mMobileDataState:Lcom/android/internal/telephony/Phone$DataState;

.field private mPhoneService:Lcom/android/internal/telephony/ITelephony;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 52
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "net.rmnet0.dns1"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "net.rmnet0.dns2"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "net.eth0.dns1"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "net.eth0.dns2"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "net.eth0.dns3"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "net.eth0.dns4"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "net.gprs.dns1"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "net.gprs.dns2"

    aput-object v2, v0, v1

    sput-object v0, Landroid/net/MobileDataStateTracker;->sDnsPropNames:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 10
    .parameter "context"
    .parameter "target"

    .prologue
    .line 73
    const/4 v3, 0x0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v4

    const-string v5, "MOBILE"

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName()Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Landroid/net/NetworkStateTracker;-><init>(Landroid/content/Context;Landroid/os/Handler;IILjava/lang/String;Ljava/lang/String;)V

    .line 65
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/MobileDataStateTracker;->mLastCallingPid:I

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/MobileDataStateTracker;->mDnsServers:Ljava/util/List;

    .line 78
    return-void
.end method

.method static synthetic access$100(Landroid/content/Intent;)Lcom/android/internal/telephony/Phone$DataState;
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    invoke-static {p0}, Landroid/net/MobileDataStateTracker;->getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Landroid/net/MobileDataStateTracker;)Lcom/android/internal/telephony/Phone$DataState;
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mMobileDataState:Lcom/android/internal/telephony/Phone$DataState;

    return-object v0
.end method

.method static synthetic access$202(Landroid/net/MobileDataStateTracker;Lcom/android/internal/telephony/Phone$DataState;)Lcom/android/internal/telephony/Phone$DataState;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-object p1, p0, Landroid/net/MobileDataStateTracker;->mMobileDataState:Lcom/android/internal/telephony/Phone$DataState;

    return-object p1
.end method

.method static synthetic access$300(Landroid/net/MobileDataStateTracker;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mInterfaceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Landroid/net/MobileDataStateTracker;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-object p1, p0, Landroid/net/MobileDataStateTracker;->mInterfaceName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Landroid/net/MobileDataStateTracker;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput p1, p0, Landroid/net/MobileDataStateTracker;->mDefaultGatewayAddr:I

    return p1
.end method

.method static synthetic access$500(Landroid/net/MobileDataStateTracker;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/net/MobileDataStateTracker;->setupDnsProperties()V

    return-void
.end method

.method private static getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/Phone$DataState;
    .registers 3
    .parameter "intent"

    .prologue
    .line 97
    const-string v1, "state"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, str:Ljava/lang/String;
    if-eqz v0, :cond_12

    .line 99
    const-class v1, Lcom/android/internal/telephony/Phone$DataState;

    invoke-static {v1, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/Phone$DataState;

    move-object v1, p0

    .line 101
    :goto_11
    return-object v1

    .restart local p0
    :cond_12
    sget-object v1, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    goto :goto_11
.end method

.method private getPhoneService(Z)V
    .registers 3
    .parameter "forceRefresh"

    .prologue
    .line 192
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    if-eqz v0, :cond_6

    if-eqz p1, :cond_12

    .line 193
    :cond_6
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iput-object v0, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    .line 195
    :cond_12
    return-void
.end method

.method private setEnableApn(Ljava/lang/String;Z)I
    .registers 8
    .parameter "apnType"
    .parameter "enable"

    .prologue
    const-string v4, "MobileDataStateTracker"

    .line 519
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Landroid/net/MobileDataStateTracker;->getPhoneService(Z)V

    .line 524
    const/4 v1, 0x0

    .local v1, retry:I
    :goto_7
    const/4 v2, 0x2

    if-ge v1, v2, :cond_15

    .line 525
    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    if-nez v2, :cond_43

    .line 526
    const-string v2, "MobileDataStateTracker"

    const-string v2, "Ignoring feature request because could not acquire PhoneService"

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    :cond_15
    const-string v2, "MobileDataStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p2, :cond_5e

    const-string v3, "enable"

    :goto_26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " APN type \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    const/4 v2, 0x3

    :goto_42
    return v2

    .line 532
    :cond_43
    if-eqz p2, :cond_4c

    .line 533
    :try_start_45
    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->enableApnType(Ljava/lang/String;)I

    move-result v2

    goto :goto_42

    .line 535
    :cond_4c
    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->disableApnType(Ljava/lang/String;)I
    :try_end_51
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_51} :catch_53

    move-result v2

    goto :goto_42

    .line 537
    :catch_53
    move-exception v2

    move-object v0, v2

    .line 538
    .local v0, e:Landroid/os/RemoteException;
    if-nez v1, :cond_5b

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Landroid/net/MobileDataStateTracker;->getPhoneService(Z)V

    .line 524
    :cond_5b
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 542
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_5e
    const-string v3, "disable"

    goto :goto_26
.end method

.method private setupDnsProperties()V
    .registers 12

    .prologue
    const/4 v10, -0x1

    const-string v9, "net.dnschange"

    .line 475
    iget-object v7, p0, Landroid/net/MobileDataStateTracker;->mDnsServers:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 477
    const/4 v1, 0x1

    .line 478
    .local v1, i:I
    iget-object v7, p0, Landroid/net/MobileDataStateTracker;->mInterfaceName:Ljava/lang/String;

    if-eqz v7, :cond_61

    .line 479
    sget-object v0, Landroid/net/MobileDataStateTracker;->sDnsPropNames:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_11
    if-ge v2, v3, :cond_61

    aget-object v5, v0, v2

    .line 480
    .local v5, propName:Ljava/lang/String;
    iget-object v7, p0, Landroid/net/MobileDataStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-eq v7, v10, :cond_5e

    .line 481
    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 482
    .local v6, propVal:Ljava/lang/String;
    if-eqz v6, :cond_5e

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_5e

    const-string v7, "0.0.0.0"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5e

    .line 483
    iget-object v7, p0, Landroid/net/MobileDataStateTracker;->mDnsServers:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 484
    iget v7, p0, Landroid/net/MobileDataStateTracker;->mLastCallingPid:I

    if-eq v7, v10, :cond_5c

    .line 485
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "net.dns"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Landroid/net/MobileDataStateTracker;->mLastCallingPid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    :cond_5c
    add-int/lit8 v1, v1, 0x1

    .line 479
    .end local v6           #propVal:Ljava/lang/String;
    :cond_5e
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 492
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v5           #propName:Ljava/lang/String;
    :cond_61
    const/4 v7, 0x1

    if-ne v1, v7, :cond_6e

    .line 493
    const-string v7, "MobileDataStateTracker"

    const-string v8, "DNS server addresses are not known."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    :cond_6b
    :goto_6b
    iput v10, p0, Landroid/net/MobileDataStateTracker;->mLastCallingPid:I

    .line 509
    return-void

    .line 494
    :cond_6e
    iget v7, p0, Landroid/net/MobileDataStateTracker;->mLastCallingPid:I

    if-eq v7, v10, :cond_6b

    .line 499
    const-string v7, "net.dnschange"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 500
    .restart local v6       #propVal:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_6b

    .line 502
    :try_start_7e
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 503
    .local v4, n:I
    const-string v7, "net.dnschange"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v9, v4, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9c
    .catch Ljava/lang/NumberFormatException; {:try_start_7e .. :try_end_9c} :catch_9d

    goto :goto_6b

    .line 504
    .end local v4           #n:I
    :catch_9d
    move-exception v7

    goto :goto_6b
.end method


# virtual methods
.method public addPrivateRoutes()V
    .registers 5

    .prologue
    .line 161
    iget-object v3, p0, Landroid/net/MobileDataStateTracker;->mInterfaceName:Ljava/lang/String;

    if-eqz v3, :cond_23

    .line 162
    iget-object v3, p0, Landroid/net/MobileDataStateTracker;->mDnsServers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_a
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 163
    .local v1, addrString:Ljava/lang/String;
    invoke-static {v1}, Landroid/net/NetworkUtils;->lookupHost(Ljava/lang/String;)I

    move-result v0

    .line 164
    .local v0, addr:I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_a

    .line 165
    iget-object v3, p0, Landroid/net/MobileDataStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/net/NetworkUtils;->addHostRoute(Ljava/lang/String;I)I

    goto :goto_a

    .line 169
    .end local v0           #addr:I
    .end local v1           #addrString:Ljava/lang/String;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_23
    return-void
.end method

.method public getNameServers()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 227
    sget-object v0, Landroid/net/MobileDataStateTracker;->sDnsPropNames:[Ljava/lang/String;

    invoke-static {v0}, Landroid/net/MobileDataStateTracker;->getNameServerList([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkSubtype()I
    .registers 2

    .prologue
    .line 236
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    return v0
.end method

.method public getTcpBufferSizesPropName()Ljava/lang/String;
    .registers 5

    .prologue
    .line 244
    const-string v0, "unknown"

    .line 245
    .local v0, networkTypeStr:Ljava/lang/String;
    new-instance v1, Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/telephony/TelephonyManager;-><init>(Landroid/content/Context;)V

    .line 247
    .local v1, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v2

    packed-switch v2, :pswitch_data_3a

    .line 275
    :goto_10
    :pswitch_10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "net.tcp.buffersize."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 249
    :pswitch_24
    const-string v0, "gprs"

    .line 250
    goto :goto_10

    .line 252
    :pswitch_27
    const-string v0, "edge"

    .line 253
    goto :goto_10

    .line 255
    :pswitch_2a
    const-string v0, "umts"

    .line 256
    goto :goto_10

    .line 258
    :pswitch_2d
    const-string v0, "cdma"

    .line 259
    goto :goto_10

    .line 261
    :pswitch_30
    const-string v0, "evdo"

    .line 262
    goto :goto_10

    .line 264
    :pswitch_33
    const-string v0, "evdo"

    .line 265
    goto :goto_10

    .line 270
    :pswitch_36
    const-string v0, "umts"

    goto :goto_10

    .line 247
    nop

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_24
        :pswitch_27
        :pswitch_2a
        :pswitch_2d
        :pswitch_30
        :pswitch_33
        :pswitch_10
        :pswitch_10
        :pswitch_36
    .end packed-switch
.end method

.method public isAvailable()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 201
    invoke-direct {p0, v3}, Landroid/net/MobileDataStateTracker;->getPhoneService(Z)V

    .line 207
    const/4 v1, 0x0

    .local v1, retry:I
    :goto_5
    const/4 v2, 0x2

    if-ge v1, v2, :cond_c

    .line 208
    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    if-nez v2, :cond_e

    :cond_c
    move v2, v3

    .line 218
    :goto_d
    return v2

    .line 211
    :cond_e
    :try_start_e
    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isDataConnectivityPossible()Z
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_13} :catch_15

    move-result v2

    goto :goto_d

    .line 212
    :catch_15
    move-exception v2

    move-object v0, v2

    .line 214
    .local v0, e:Landroid/os/RemoteException;
    if-nez v1, :cond_1d

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Landroid/net/MobileDataStateTracker;->getPhoneService(Z)V

    .line 207
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_5
.end method

.method public reconnect()Z
    .registers 6

    .prologue
    const/4 v3, 0x0

    const-string v4, "MobileDataStateTracker"

    .line 311
    invoke-direct {p0, v3}, Landroid/net/MobileDataStateTracker;->getPhoneService(Z)V

    .line 316
    const/4 v1, 0x0

    .local v1, retry:I
    :goto_7
    const/4 v2, 0x2

    if-ge v1, v2, :cond_15

    .line 317
    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    if-nez v2, :cond_1e

    .line 318
    const-string v2, "MobileDataStateTracker"

    const-string v2, "Ignoring mobile data connect request because could not acquire PhoneService"

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    :cond_15
    const-string v2, "MobileDataStateTracker"

    const-string v2, "Failed to set up mobile data connectivity"

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 331
    :goto_1d
    return v2

    .line 324
    :cond_1e
    :try_start_1e
    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->enableDataConnectivity()Z
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_23} :catch_25

    move-result v2

    goto :goto_1d

    .line 325
    :catch_25
    move-exception v2

    move-object v0, v2

    .line 326
    .local v0, e:Landroid/os/RemoteException;
    if-nez v1, :cond_2d

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Landroid/net/MobileDataStateTracker;->getPhoneService(Z)V

    .line 316
    :cond_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_7
.end method

.method public removeDefaultRoute()V
    .registers 2

    .prologue
    .line 178
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mInterfaceName:Ljava/lang/String;

    if-eqz v0, :cond_11

    .line 179
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/NetworkUtils;->getDefaultRoute(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/net/MobileDataStateTracker;->mDefaultGatewayAddr:I

    .line 180
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/NetworkUtils;->removeDefaultRoute(Ljava/lang/String;)I

    .line 182
    :cond_11
    return-void
.end method

.method public removePrivateRoutes()V
    .registers 2

    .prologue
    .line 172
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mInterfaceName:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 173
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/NetworkUtils;->removeHostRoutes(Ljava/lang/String;)I

    .line 175
    :cond_9
    return-void
.end method

.method public requestRouteToHost(I)Z
    .registers 4
    .parameter "hostAddress"

    .prologue
    const/4 v1, 0x0

    .line 456
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mInterfaceName:Ljava/lang/String;

    if-eqz v0, :cond_14

    const/4 v0, -0x1

    if-eq p1, v0, :cond_14

    .line 460
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/net/NetworkUtils;->addHostRoute(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    .line 462
    :goto_11
    return v0

    :cond_12
    move v0, v1

    .line 460
    goto :goto_11

    :cond_14
    move v0, v1

    .line 462
    goto :goto_11
.end method

.method public restoreDefaultRoute()V
    .registers 3

    .prologue
    .line 186
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mInterfaceName:Ljava/lang/String;

    if-eqz v0, :cond_f

    iget v0, p0, Landroid/net/MobileDataStateTracker;->mDefaultGatewayAddr:I

    if-eqz v0, :cond_f

    .line 187
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mInterfaceName:Ljava/lang/String;

    iget v1, p0, Landroid/net/MobileDataStateTracker;->mDefaultGatewayAddr:I

    invoke-static {v0, v1}, Landroid/net/NetworkUtils;->setDefaultRoute(Ljava/lang/String;I)I

    .line 189
    :cond_f
    return-void
.end method

.method public setRadio(Z)Z
    .registers 8
    .parameter "turnOn"

    .prologue
    const/4 v4, 0x0

    const-string v5, "MobileDataStateTracker"

    .line 340
    invoke-direct {p0, v4}, Landroid/net/MobileDataStateTracker;->getPhoneService(Z)V

    .line 345
    const/4 v1, 0x0

    .local v1, retry:I
    :goto_7
    const/4 v2, 0x2

    if-ge v1, v2, :cond_15

    .line 346
    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    if-nez v2, :cond_33

    .line 347
    const-string v2, "MobileDataStateTracker"

    const-string v2, "Ignoring mobile radio request because could not acquire PhoneService"

    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    :cond_15
    const-string v2, "MobileDataStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not set radio power to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_45

    const-string v3, "on"

    :goto_26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v4

    .line 360
    :goto_32
    return v2

    .line 353
    :cond_33
    :try_start_33
    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->setRadio(Z)Z
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_38} :catch_3a

    move-result v2

    goto :goto_32

    .line 354
    :catch_3a
    move-exception v2

    move-object v0, v2

    .line 355
    .local v0, e:Landroid/os/RemoteException;
    if-nez v1, :cond_42

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Landroid/net/MobileDataStateTracker;->getPhoneService(Z)V

    .line 345
    :cond_42
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 359
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_45
    const-string v3, "off"

    goto :goto_26
.end method

.method public startMonitoring()V
    .registers 6

    .prologue
    .line 84
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.ANY_DATA_STATE"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 86
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.DATA_CONNECTION_FAILED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 87
    const-string v2, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 89
    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;-><init>(Landroid/net/MobileDataStateTracker;Landroid/net/MobileDataStateTracker$1;)V

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 90
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_26

    .line 91
    invoke-static {v1}, Landroid/net/MobileDataStateTracker;->getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v2

    iput-object v2, p0, Landroid/net/MobileDataStateTracker;->mMobileDataState:Lcom/android/internal/telephony/Phone$DataState;

    .line 94
    :goto_25
    return-void

    .line 93
    :cond_26
    sget-object v2, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    iput-object v2, p0, Landroid/net/MobileDataStateTracker;->mMobileDataState:Lcom/android/internal/telephony/Phone$DataState;

    goto :goto_25
.end method

.method public startUsingNetworkFeature(Ljava/lang/String;II)I
    .registers 12
    .parameter "feature"
    .parameter "callingPid"
    .parameter "callingUid"

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    const-string v5, "MobileDataStateTracker"

    .line 387
    const-string v3, "enableMMS"

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 388
    const-string v3, "MobileDataStateTracker"

    const-string v3, "startUsingNetworkFeature mms"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    const/4 v1, 0x1

    .line 390
    .local v1, APN_MMS_ID:I
    iget-object v3, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    if-eqz v3, :cond_32

    .line 392
    :try_start_18
    iget-object v3, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v3, v1}, Lcom/android/internal/telephony/ITelephony;->isPreventType(I)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 393
    const-string v3, "MobileDataStateTracker"

    const-string v4, "startUsingNetworkFeature mms is prevent type"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_27} :catch_29

    move v3, v6

    .line 420
    .end local v1           #APN_MMS_ID:I
    :goto_28
    return v3

    .line 396
    .restart local v1       #APN_MMS_ID:I
    :catch_29
    move-exception v3

    move-object v2, v3

    .line 397
    .local v2, e:Landroid/os/RemoteException;
    const-string v3, "MobileDataStateTracker"

    const-string v3, "error mPhoneService.isPreventType(APN_MMS_ID)"

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    .end local v2           #e:Landroid/os/RemoteException;
    :cond_32
    iput p2, p0, Landroid/net/MobileDataStateTracker;->mLastCallingPid:I

    .line 401
    const-string v3, "mms"

    invoke-direct {p0, v3, v7}, Landroid/net/MobileDataStateTracker;->setEnableApn(Ljava/lang/String;Z)I

    move-result v3

    goto :goto_28

    .line 402
    .end local v1           #APN_MMS_ID:I
    :cond_3b
    const-string v3, "enableSUPL"

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_69

    .line 406
    const/4 v0, 0x0

    .line 407
    .local v0, APN_DEFAULT_ID:I
    iget-object v3, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    if-eqz v3, :cond_62

    .line 409
    :try_start_48
    iget-object v3, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v3, v0}, Lcom/android/internal/telephony/ITelephony;->isPreventType(I)Z

    move-result v3

    if-eqz v3, :cond_62

    .line 410
    const-string v3, "MobileDataStateTracker"

    const-string v4, "startUsingNetworkFeature SULE is prevent type"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_57
    .catch Landroid/os/RemoteException; {:try_start_48 .. :try_end_57} :catch_59

    move v3, v6

    .line 411
    goto :goto_28

    .line 413
    :catch_59
    move-exception v3

    move-object v2, v3

    .line 414
    .restart local v2       #e:Landroid/os/RemoteException;
    const-string v3, "MobileDataStateTracker"

    const-string v3, "error mPhoneService.isPreventType(APN_SUPL_ID)"

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    .end local v2           #e:Landroid/os/RemoteException;
    :cond_62
    const-string v3, "supl"

    invoke-direct {p0, v3, v7}, Landroid/net/MobileDataStateTracker;->setEnableApn(Ljava/lang/String;Z)I

    move-result v3

    goto :goto_28

    .end local v0           #APN_DEFAULT_ID:I
    :cond_69
    move v3, v6

    .line 420
    goto :goto_28
.end method

.method public stopUsingNetworkFeature(Ljava/lang/String;II)I
    .registers 6
    .parameter "feature"
    .parameter "callingPid"
    .parameter "callingUid"

    .prologue
    const/4 v1, 0x0

    .line 438
    const-string v0, "enableMMS"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 439
    const-string v0, "mms"

    invoke-direct {p0, v0, v1}, Landroid/net/MobileDataStateTracker;->setEnableApn(Ljava/lang/String;Z)I

    move-result v0

    .line 443
    :goto_f
    return v0

    .line 440
    :cond_10
    const-string v0, "enableSUPL"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 441
    const-string v0, "supl"

    invoke-direct {p0, v0, v1}, Landroid/net/MobileDataStateTracker;->setEnableApn(Ljava/lang/String;Z)I

    move-result v0

    goto :goto_f

    .line 443
    :cond_1f
    const/4 v0, -0x1

    goto :goto_f
.end method

.method public teardown()Z
    .registers 6

    .prologue
    const/4 v3, 0x0

    const-string v4, "MobileDataStateTracker"

    .line 284
    invoke-direct {p0, v3}, Landroid/net/MobileDataStateTracker;->getPhoneService(Z)V

    .line 289
    const/4 v1, 0x0

    .local v1, retry:I
    :goto_7
    const/4 v2, 0x2

    if-ge v1, v2, :cond_15

    .line 290
    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    if-nez v2, :cond_1e

    .line 291
    const-string v2, "MobileDataStateTracker"

    const-string v2, "Ignoring mobile data teardown request because could not acquire PhoneService"

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :cond_15
    const-string v2, "MobileDataStateTracker"

    const-string v2, "Failed to tear down mobile data connectivity"

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 304
    :goto_1d
    return v2

    .line 297
    :cond_1e
    :try_start_1e
    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->disableDataConnectivity()Z
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_23} :catch_25

    move-result v2

    goto :goto_1d

    .line 298
    :catch_25
    move-exception v2

    move-object v0, v2

    .line 299
    .local v0, e:Landroid/os/RemoteException;
    if-nez v1, :cond_2d

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Landroid/net/MobileDataStateTracker;->getPhoneService(Z)V

    .line 289
    :cond_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_7
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 468
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Mobile data state: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 470
    .local v0, sb:Ljava/lang/StringBuffer;
    iget-object v1, p0, Landroid/net/MobileDataStateTracker;->mMobileDataState:Lcom/android/internal/telephony/Phone$DataState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 471
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
