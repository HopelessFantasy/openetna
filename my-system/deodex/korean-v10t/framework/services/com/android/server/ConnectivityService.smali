.class public Lcom/android/server/ConnectivityService;
.super Landroid/net/IConnectivityManager$Stub;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ConnectivityService$1;,
        Lcom/android/server/ConnectivityService$MyHandler;,
        Lcom/android/server/ConnectivityService$ConnectivityThread;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final EVENTLOG_CONNECTIVITY_STATE_CHANGED:I = 0xc364

.field private static final TAG:Ljava/lang/String; = "ConnectivityService"

.field private static sDnsChangeCounter:I

.field private static sServiceInstance:Lcom/android/server/ConnectivityService;


# instance fields
.field private mActiveNetwork:Landroid/net/NetworkStateTracker;

.field private mContext:Landroid/content/Context;

.field private mMobileDataStateTracker:Landroid/net/MobileDataStateTracker;

.field private mNetTrackers:[Landroid/net/NetworkStateTracker;

.field private mNetworkPreference:I

.field private mNumDnsEntries:I

.field private mTestMode:Z

.field private mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

.field private mWifiWatchdogService:Lcom/android/server/WifiWatchdogService;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 13
    .parameter "context"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 117
    invoke-direct {p0}, Landroid/net/IConnectivityManager$Stub;-><init>()V

    .line 119
    iput-object p1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    .line 120
    const/4 v6, 0x2

    new-array v6, v6, [Landroid/net/NetworkStateTracker;

    iput-object v6, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    .line 121
    new-instance v1, Lcom/android/server/ConnectivityService$MyHandler;

    invoke-direct {v1, p0, v10}, Lcom/android/server/ConnectivityService$MyHandler;-><init>(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$1;)V

    .line 123
    .local v1, handler:Landroid/os/Handler;
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getPersistedNetworkPreference()I

    move-result v6

    iput v6, p0, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    .line 133
    new-instance v6, Landroid/net/wifi/WifiStateTracker;

    invoke-direct {v6, p1, v1}, Landroid/net/wifi/WifiStateTracker;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v6, p0, Lcom/android/server/ConnectivityService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    .line 134
    new-instance v5, Lcom/android/server/WifiService;

    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-direct {v5, p1, v6}, Lcom/android/server/WifiService;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiStateTracker;)V

    .line 135
    .local v5, wifiService:Lcom/android/server/WifiService;
    const-string v6, "wifi"

    invoke-static {v6, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 136
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    aput-object v7, v6, v9

    .line 138
    new-instance v6, Landroid/net/MobileDataStateTracker;

    invoke-direct {v6, p1, v1}, Landroid/net/MobileDataStateTracker;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v6, p0, Lcom/android/server/ConnectivityService;->mMobileDataStateTracker:Landroid/net/MobileDataStateTracker;

    .line 139
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mMobileDataStateTracker:Landroid/net/MobileDataStateTracker;

    aput-object v7, v6, v8

    .line 141
    iput-object v10, p0, Lcom/android/server/ConnectivityService;->mActiveNetwork:Landroid/net/NetworkStateTracker;

    .line 142
    iput v8, p0, Lcom/android/server/ConnectivityService;->mNumDnsEntries:I

    .line 144
    const-string v6, "cm.test.mode"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "true"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6f

    const-string v6, "ro.build.type"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "eng"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6f

    move v6, v9

    :goto_5f
    iput-boolean v6, p0, Lcom/android/server/ConnectivityService;->mTestMode:Z

    .line 147
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    .local v0, arr$:[Landroid/net/NetworkStateTracker;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_65
    if-ge v2, v3, :cond_71

    aget-object v4, v0, v2

    .line 148
    .local v4, t:Landroid/net/NetworkStateTracker;
    invoke-virtual {v4}, Landroid/net/NetworkStateTracker;->startMonitoring()V

    .line 147
    add-int/lit8 v2, v2, 0x1

    goto :goto_65

    .end local v0           #arr$:[Landroid/net/NetworkStateTracker;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #t:Landroid/net/NetworkStateTracker;
    :cond_6f
    move v6, v8

    .line 144
    goto :goto_5f

    .line 151
    .restart local v0       #arr$:[Landroid/net/NetworkStateTracker;
    .restart local v2       #i$:I
    .restart local v3       #len$:I
    :cond_71
    new-instance v6, Lcom/android/server/WifiWatchdogService;

    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-direct {v6, p1, v7}, Lcom/android/server/WifiWatchdogService;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiStateTracker;)V

    iput-object v6, p0, Lcom/android/server/ConnectivityService;->mWifiWatchdogService:Lcom/android/server/WifiWatchdogService;

    .line 152
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/server/ConnectivityService$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000()Lcom/android/server/ConnectivityService;
    .registers 1

    .prologue
    .line 47
    sget-object v0, Lcom/android/server/ConnectivityService;->sServiceInstance:Lcom/android/server/ConnectivityService;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService;
    .registers 1
    .parameter "x0"

    .prologue
    .line 47
    sput-object p0, Lcom/android/server/ConnectivityService;->sServiceInstance:Lcom/android/server/ConnectivityService;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/server/ConnectivityService;Landroid/net/NetworkInfo;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleConnectionFailure(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/ConnectivityService;Landroid/net/NetworkInfo;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleDisconnect(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/ConnectivityService;Landroid/net/NetworkInfo;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleConnect(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/ConnectivityService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->handleConnectivityChange()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/ConnectivityService;Landroid/net/NetworkInfo;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleScanResultsAvailable(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/ConnectivityService;ZILandroid/app/Notification;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/ConnectivityService;->handleNotificationChange(ZILandroid/app/Notification;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/ConnectivityService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->handleConfigurationChange()I

    move-result v0

    return v0
.end method

.method private enforceAccessPermission()V
    .registers 4

    .prologue
    .line 374
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    const-string v2, "ConnectivityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    return-void
.end method

.method private enforceChangePermission()V
    .registers 4

    .prologue
    .line 379
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_NETWORK_STATE"

    const-string v2, "ConnectivityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    return-void
.end method

.method private enforcePreference()V
    .registers 11

    .prologue
    const/4 v9, 0x1

    .line 199
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mActiveNetwork:Landroid/net/NetworkStateTracker;

    if-nez v7, :cond_6

    .line 217
    :cond_5
    return-void

    .line 202
    :cond_6
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    .local v0, arr$:[Landroid/net/NetworkStateTracker;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_a
    if-ge v1, v2, :cond_5

    aget-object v6, v0, v1

    .line 203
    .local v6, t:Landroid/net/NetworkStateTracker;
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mActiveNetwork:Landroid/net/NetworkStateTracker;

    if-ne v6, v7, :cond_37

    .line 204
    invoke-virtual {v6}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    .line 205
    .local v3, netType:I
    if-ne v3, v9, :cond_3a

    const/4 v7, 0x0

    move v4, v7

    .line 209
    .local v4, otherNetType:I
    :goto_1e
    invoke-virtual {v6}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    iget v8, p0, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    if-eq v7, v8, :cond_37

    .line 210
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v5, v7, v4

    .line 211
    .local v5, otherTracker:Landroid/net/NetworkStateTracker;
    invoke-virtual {v5}, Landroid/net/NetworkStateTracker;->isAvailable()Z

    move-result v7

    if-eqz v7, :cond_37

    .line 212
    invoke-direct {p0, v6}, Lcom/android/server/ConnectivityService;->teardown(Landroid/net/NetworkStateTracker;)Z

    .line 202
    .end local v3           #netType:I
    .end local v4           #otherNetType:I
    .end local v5           #otherTracker:Landroid/net/NetworkStateTracker;
    :cond_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .restart local v3       #netType:I
    :cond_3a
    move v4, v9

    .line 205
    goto :goto_1e
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/ConnectivityService;
    .registers 2
    .parameter "context"

    .prologue
    .line 114
    invoke-static {p0}, Lcom/android/server/ConnectivityService$ConnectivityThread;->getServiceInstance(Landroid/content/Context;)Lcom/android/server/ConnectivityService;

    move-result-object v0

    return-object v0
.end method

.method private getNumConnectedNetworks()I
    .registers 7

    .prologue
    .line 363
    const/4 v4, 0x0

    .line 365
    .local v4, numConnectedNets:I
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    .local v0, arr$:[Landroid/net/NetworkStateTracker;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_5
    if-ge v1, v2, :cond_1e

    aget-object v3, v0, v1

    .line 366
    .local v3, nt:Landroid/net/NetworkStateTracker;
    invoke-virtual {v3}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_1b

    invoke-virtual {v3}, Landroid/net/NetworkStateTracker;->isTeardownRequested()Z

    move-result v5

    if-nez v5, :cond_1b

    .line 367
    add-int/lit8 v4, v4, 0x1

    .line 365
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 370
    .end local v3           #nt:Landroid/net/NetworkStateTracker;
    :cond_1e
    return v4
.end method

.method private getPersistedNetworkPreference()I
    .registers 5

    .prologue
    const/4 v3, -0x1

    .line 180
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 182
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v2, "network_preference"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 184
    .local v1, networkPrefSetting:I
    if-eq v1, v3, :cond_11

    move v2, v1

    .line 188
    :goto_10
    return v2

    :cond_11
    const/4 v2, 0x1

    goto :goto_10
.end method

.method private handleConfigurationChange()I
    .registers 14

    .prologue
    const-string v12, "net.dns"

    .line 629
    const/4 v3, 0x1

    .line 630
    .local v3, index:I
    const-string v5, ""

    .line 631
    .local v5, lastDns:Ljava/lang/String;
    const/4 v8, 0x0

    .line 632
    .local v8, numConnectedNets:I
    const/4 v2, -0x1

    .line 633
    .local v2, incrValue:I
    add-int/lit8 v9, v2, 0x0

    .line 635
    .local v9, stopValue:I
    const/4 v6, 0x1

    .local v6, netType:I
    :goto_a
    if-eq v6, v9, :cond_58

    .line 636
    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v7, v10, v6

    .line 637
    .local v7, nt:Landroid/net/NetworkStateTracker;
    invoke-virtual {v7}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v10

    if-eqz v10, :cond_56

    invoke-virtual {v7}, Landroid/net/NetworkStateTracker;->isTeardownRequested()Z

    move-result v10

    if-nez v10, :cond_56

    .line 638
    add-int/lit8 v8, v8, 0x1

    .line 639
    invoke-virtual {v7}, Landroid/net/NetworkStateTracker;->getNameServers()[Ljava/lang/String;

    move-result-object v0

    .line 640
    .local v0, dnsList:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_27
    array-length v10, v0

    if-ge v1, v10, :cond_56

    aget-object v10, v0, v1

    if-eqz v10, :cond_56

    .line 642
    aget-object v10, v0, v1

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_53

    .line 643
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "net.dns"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int/lit8 v4, v3, 0x1

    .end local v3           #index:I
    .local v4, index:I
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aget-object v11, v0, v1

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    aget-object v5, v0, v1

    move v3, v4

    .line 640
    .end local v4           #index:I
    .restart local v3       #index:I
    :cond_53
    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    .line 635
    .end local v0           #dnsList:[Ljava/lang/String;
    .end local v1           #i:I
    :cond_56
    add-int/2addr v6, v2

    goto :goto_a

    .line 650
    .end local v7           #nt:Landroid/net/NetworkStateTracker;
    :cond_58
    move v1, v3

    .restart local v1       #i:I
    :goto_59
    iget v10, p0, Lcom/android/server/ConnectivityService;->mNumDnsEntries:I

    if-gt v1, v10, :cond_78

    .line 651
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "net.dns"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, ""

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    add-int/lit8 v1, v1, 0x1

    goto :goto_59

    .line 653
    :cond_78
    const/4 v10, 0x1

    sub-int v10, v3, v10

    iput v10, p0, Lcom/android/server/ConnectivityService;->mNumDnsEntries:I

    .line 655
    const-string v10, "net.dnschange"

    sget v11, Lcom/android/server/ConnectivityService;->sDnsChangeCounter:I

    add-int/lit8 v12, v11, 0x1

    sput v12, Lcom/android/server/ConnectivityService;->sDnsChangeCounter:I

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    return v8
.end method

.method private handleConnect(Landroid/net/NetworkInfo;)V
    .registers 11
    .parameter "info"

    .prologue
    .line 526
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isFailover()Z

    move-result v1

    .line 527
    .local v1, isFailover:Z
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v8

    aget-object v4, v7, v8

    .line 528
    .local v4, thisNet:Landroid/net/NetworkStateTracker;
    const/4 v0, 0x0

    .line 530
    .local v0, deadnet:Landroid/net/NetworkStateTracker;
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    if-nez v7, :cond_61

    .line 531
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    .line 539
    .local v3, otherNet:Landroid/net/NetworkStateTracker;
    :goto_15
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v7}, Landroid/net/wifi/WifiStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v6

    .line 540
    .local v6, wifiInfo:Landroid/net/NetworkInfo;
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mMobileDataStateTracker:Landroid/net/MobileDataStateTracker;

    invoke-virtual {v7}, Landroid/net/MobileDataStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 541
    .local v2, mobileInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v6}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_34

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_34

    .line 542
    iget v7, p0, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_64

    .line 543
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mMobileDataStateTracker:Landroid/net/MobileDataStateTracker;

    .line 548
    :cond_34
    :goto_34
    const/4 v5, 0x0

    .line 549
    .local v5, toredown:Z
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/net/NetworkStateTracker;->setTeardownRequested(Z)V

    .line 550
    iget-boolean v7, p0, Lcom/android/server/ConnectivityService;->mTestMode:Z

    if-nez v7, :cond_43

    if-eqz v0, :cond_43

    .line 553
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->teardown(Landroid/net/NetworkStateTracker;)Z

    move-result v5

    .line 563
    :cond_43
    if-eqz v5, :cond_53

    invoke-virtual {v0}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v8

    if-eq v7, v8, :cond_60

    .line 564
    :cond_53
    iput-object v4, p0, Lcom/android/server/ConnectivityService;->mActiveNetwork:Landroid/net/NetworkStateTracker;

    .line 566
    invoke-virtual {v4}, Landroid/net/NetworkStateTracker;->updateNetworkSettings()V

    .line 567
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->sendConnectedBroadcast(Landroid/net/NetworkInfo;)V

    .line 568
    if-eqz v1, :cond_60

    .line 569
    invoke-virtual {v3}, Landroid/net/NetworkStateTracker;->releaseWakeLock()V

    .line 575
    :cond_60
    return-void

    .line 533
    .end local v2           #mobileInfo:Landroid/net/NetworkInfo;
    .end local v3           #otherNet:Landroid/net/NetworkStateTracker;
    .end local v5           #toredown:Z
    .end local v6           #wifiInfo:Landroid/net/NetworkInfo;
    :cond_61
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mMobileDataStateTracker:Landroid/net/MobileDataStateTracker;

    .restart local v3       #otherNet:Landroid/net/NetworkStateTracker;
    goto :goto_15

    .line 545
    .restart local v2       #mobileInfo:Landroid/net/NetworkInfo;
    .restart local v6       #wifiInfo:Landroid/net/NetworkInfo;
    :cond_64
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    goto :goto_34
.end method

.method private handleConnectionFailure(Landroid/net/NetworkInfo;)V
    .registers 9
    .parameter "info"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 490
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v3, v5}, Landroid/net/NetworkStateTracker;->setTeardownRequested(Z)V

    .line 491
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    if-nez v3, :cond_4d

    .line 492
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v2

    .line 493
    .local v2, reason:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    .line 505
    .local v0, extraInfo:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 506
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "networkInfo"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 507
    const-string v3, "noConnectivity"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 508
    if-eqz v2, :cond_33

    .line 509
    const-string v3, "reason"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 511
    :cond_33
    if-eqz v0, :cond_3a

    .line 512
    const-string v3, "extraInfo"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 514
    :cond_3a
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isFailover()Z

    move-result v3

    if-eqz v3, :cond_48

    .line 515
    const-string v3, "isFailover"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 516
    invoke-virtual {p1, v5}, Landroid/net/NetworkInfo;->setFailover(Z)V

    .line 518
    :cond_48
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 520
    .end local v0           #extraInfo:Ljava/lang/String;
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #reason:Ljava/lang/String;
    :cond_4d
    return-void
.end method

.method private handleConnectivityChange()V
    .registers 3

    .prologue
    .line 614
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->handleConfigurationChange()I

    move-result v0

    .line 615
    .local v0, numConnectedNets:I
    const/4 v1, 0x1

    if-le v0, v1, :cond_12

    .line 616
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mMobileDataStateTracker:Landroid/net/MobileDataStateTracker;

    invoke-virtual {v1}, Landroid/net/MobileDataStateTracker;->addPrivateRoutes()V

    .line 617
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mMobileDataStateTracker:Landroid/net/MobileDataStateTracker;

    invoke-virtual {v1}, Landroid/net/MobileDataStateTracker;->removeDefaultRoute()V

    .line 622
    :cond_11
    :goto_11
    return-void

    .line 618
    :cond_12
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mMobileDataStateTracker:Landroid/net/MobileDataStateTracker;

    invoke-virtual {v1}, Landroid/net/MobileDataStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 619
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mMobileDataStateTracker:Landroid/net/MobileDataStateTracker;

    invoke-virtual {v1}, Landroid/net/MobileDataStateTracker;->removePrivateRoutes()V

    .line 620
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mMobileDataStateTracker:Landroid/net/MobileDataStateTracker;

    invoke-virtual {v1}, Landroid/net/MobileDataStateTracker;->restoreDefaultRoute()V

    goto :goto_11
.end method

.method private handleDisconnect(Landroid/net/NetworkInfo;)V
    .registers 10
    .parameter "info"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 395
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v4, v7}, Landroid/net/NetworkStateTracker;->setTeardownRequested(Z)V

    .line 402
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mActiveNetwork:Landroid/net/NetworkStateTracker;

    if-eqz v4, :cond_21

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mActiveNetwork:Landroid/net/NetworkStateTracker;

    invoke-virtual {v5}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    if-eq v4, v5, :cond_22

    .line 467
    :cond_21
    :goto_21
    return-void

    .line 406
    :cond_22
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-nez v4, :cond_94

    .line 407
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    .line 419
    .local v1, newNet:Landroid/net/NetworkStateTracker;
    :goto_2a
    const/4 v3, 0x0

    .line 420
    .local v3, switchTo:Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkStateTracker;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_97

    .line 421
    iput-object v1, p0, Lcom/android/server/ConnectivityService;->mActiveNetwork:Landroid/net/NetworkStateTracker;

    .line 422
    invoke-virtual {v1}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 423
    invoke-virtual {v3, v6}, Landroid/net/NetworkInfo;->setFailover(Z)V

    .line 424
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v4

    if-nez v4, :cond_43

    .line 425
    invoke-virtual {v1}, Landroid/net/NetworkStateTracker;->reconnect()Z

    .line 431
    :cond_43
    :goto_43
    const/4 v2, 0x0

    .line 432
    .local v2, otherNetworkConnected:Z
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 433
    .local v0, intent:Landroid/content/Intent;
    const-string v4, "networkInfo"

    invoke-virtual {v0, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 434
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isFailover()Z

    move-result v4

    if-eqz v4, :cond_5e

    .line 435
    const-string v4, "isFailover"

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 436
    invoke-virtual {p1, v7}, Landroid/net/NetworkInfo;->setFailover(Z)V

    .line 438
    :cond_5e
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6d

    .line 439
    const-string v4, "reason"

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 441
    :cond_6d
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7c

    .line 442
    const-string v4, "extraInfo"

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 444
    :cond_7c
    if-eqz v3, :cond_9b

    .line 445
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    .line 453
    const-string v4, "otherNetwork"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 460
    :goto_87
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 465
    if-eqz v3, :cond_21

    if-eqz v2, :cond_21

    .line 466
    invoke-direct {p0, v3}, Lcom/android/server/ConnectivityService;->sendConnectedBroadcast(Landroid/net/NetworkInfo;)V

    goto :goto_21

    .line 409
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #newNet:Landroid/net/NetworkStateTracker;
    .end local v2           #otherNetworkConnected:Z
    .end local v3           #switchTo:Landroid/net/NetworkInfo;
    :cond_94
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mMobileDataStateTracker:Landroid/net/MobileDataStateTracker;

    .restart local v1       #newNet:Landroid/net/NetworkStateTracker;
    goto :goto_2a

    .line 428
    .restart local v3       #switchTo:Landroid/net/NetworkInfo;
    :cond_97
    invoke-virtual {v1}, Landroid/net/NetworkStateTracker;->reconnect()Z

    goto :goto_43

    .line 455
    .restart local v0       #intent:Landroid/content/Intent;
    .restart local v2       #otherNetworkConnected:Z
    :cond_9b
    const-string v4, "noConnectivity"

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_87
.end method

.method private handleNotificationChange(ZILandroid/app/Notification;)V
    .registers 7
    .parameter "visible"
    .parameter "id"
    .parameter "notification"

    .prologue
    .line 588
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 591
    .local v0, notificationManager:Landroid/app/NotificationManager;
    if-eqz p1, :cond_10

    .line 592
    invoke-virtual {v0, p2, p3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 596
    :goto_f
    return-void

    .line 594
    :cond_10
    invoke-virtual {v0, p2}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_f
.end method

.method private handleScanResultsAvailable(Landroid/net/NetworkInfo;)V
    .registers 4
    .parameter "info"

    .prologue
    .line 578
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    .line 579
    .local v0, networkType:I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    .line 584
    :cond_7
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/net/NetworkStateTracker;->interpretScanResultsAvailable()V

    .line 585
    return-void
.end method

.method private persistNetworkPreference(I)V
    .registers 4
    .parameter "networkPreference"

    .prologue
    .line 175
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 176
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v1, "network_preference"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 177
    return-void
.end method

.method private sendConnectedBroadcast(Landroid/net/NetworkInfo;)V
    .registers 5
    .parameter "info"

    .prologue
    .line 470
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 471
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "networkInfo"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 472
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isFailover()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 473
    const-string v1, "isFailover"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 474
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/net/NetworkInfo;->setFailover(Z)V

    .line 476
    :cond_1c
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2b

    .line 477
    const-string v1, "reason"

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 479
    :cond_2b
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3a

    .line 480
    const-string v1, "extraInfo"

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 482
    :cond_3a
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 483
    return-void
.end method

.method private teardown(Landroid/net/NetworkStateTracker;)Z
    .registers 4
    .parameter "netTracker"

    .prologue
    const/4 v1, 0x1

    .line 220
    invoke-virtual {p1}, Landroid/net/NetworkStateTracker;->teardown()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 221
    invoke-virtual {p1, v1}, Landroid/net/NetworkStateTracker;->setTeardownRequested(Z)V

    move v0, v1

    .line 224
    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 10
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 661
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.DUMP"

    invoke-virtual {v4, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_33

    .line 663
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Permission Denial: can\'t dump ConnectivityService from from pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 679
    :cond_32
    return-void

    .line 668
    :cond_33
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mActiveNetwork:Landroid/net/NetworkStateTracker;

    if-nez v4, :cond_57

    .line 669
    const-string v4, "No active network"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 673
    :goto_3c
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 674
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    .local v0, arr$:[Landroid/net/NetworkStateTracker;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_43
    if-ge v1, v2, :cond_32

    aget-object v3, v0, v1

    .line 675
    .local v3, nst:Landroid/net/NetworkStateTracker;
    invoke-virtual {v3}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 676
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 677
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 674
    add-int/lit8 v1, v1, 0x1

    goto :goto_43

    .line 671
    .end local v0           #arr$:[Landroid/net/NetworkStateTracker;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #nst:Landroid/net/NetworkStateTracker;
    :cond_57
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Active network: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mActiveNetwork:Landroid/net/NetworkStateTracker;

    invoke-virtual {v5}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3c
.end method

.method public getActiveNetworkInfo()Landroid/net/NetworkInfo;
    .registers 7

    .prologue
    .line 235
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 236
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    .local v0, arr$:[Landroid/net/NetworkStateTracker;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_7
    if-ge v1, v3, :cond_1a

    aget-object v4, v0, v1

    .line 237
    .local v4, t:Landroid/net/NetworkStateTracker;
    invoke-virtual {v4}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 238
    .local v2, info:Landroid/net/NetworkInfo;
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_17

    move-object v5, v2

    .line 242
    .end local v2           #info:Landroid/net/NetworkInfo;
    .end local v4           #t:Landroid/net/NetworkStateTracker;
    :goto_16
    return-object v5

    .line 236
    .restart local v2       #info:Landroid/net/NetworkInfo;
    .restart local v4       #t:Landroid/net/NetworkStateTracker;
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 242
    .end local v2           #info:Landroid/net/NetworkInfo;
    .end local v4           #t:Landroid/net/NetworkStateTracker;
    :cond_1a
    const/4 v5, 0x0

    goto :goto_16
.end method

.method public getAllNetworkInfo()[Landroid/net/NetworkInfo;
    .registers 9

    .prologue
    .line 256
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 257
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    array-length v7, v7

    new-array v5, v7, [Landroid/net/NetworkInfo;

    .line 258
    .local v5, result:[Landroid/net/NetworkInfo;
    const/4 v1, 0x0

    .line 259
    .local v1, i:I
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    .local v0, arr$:[Landroid/net/NetworkStateTracker;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    move v2, v1

    .end local v1           #i:I
    .local v2, i:I
    :goto_e
    if-ge v3, v4, :cond_1e

    aget-object v6, v0, v3

    .line 260
    .local v6, t:Landroid/net/NetworkStateTracker;
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-virtual {v6}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v7

    aput-object v7, v5, v2

    .line 259
    add-int/lit8 v3, v3, 0x1

    move v2, v1

    .end local v1           #i:I
    .restart local v2       #i:I
    goto :goto_e

    .line 262
    .end local v6           #t:Landroid/net/NetworkStateTracker;
    :cond_1e
    return-object v5
.end method

.method public getBackgroundDataSetting()Z
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 340
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "background_data"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_11

    move v0, v2

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public getNetworkInfo(I)Landroid/net/NetworkInfo;
    .registers 4
    .parameter "networkType"

    .prologue
    .line 246
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 247
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 248
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v1, p1

    .line 249
    .local v0, t:Landroid/net/NetworkStateTracker;
    if-eqz v0, :cond_14

    .line 250
    invoke-virtual {v0}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 252
    .end local v0           #t:Landroid/net/NetworkStateTracker;
    :goto_13
    return-object v1

    :cond_14
    const/4 v1, 0x0

    goto :goto_13
.end method

.method public getNetworkPreference()I
    .registers 2

    .prologue
    .line 170
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 171
    iget v0, p0, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    return v0
.end method

.method public requestRouteToHost(II)Z
    .registers 7
    .parameter "networkType"
    .parameter "hostAddress"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 316
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceChangePermission()V

    .line 317
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v1

    if-nez v1, :cond_d

    move v1, v2

    .line 332
    :goto_c
    return v1

    .line 320
    :cond_d
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v1, p1

    .line 329
    .local v0, tracker:Landroid/net/NetworkStateTracker;
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getNumConnectedNetworks()I

    move-result v1

    if-le v1, v3, :cond_1c

    .line 330
    invoke-virtual {v0, p2}, Landroid/net/NetworkStateTracker;->requestRouteToHost(I)Z

    move-result v1

    goto :goto_c

    .line 332
    :cond_1c
    invoke-virtual {v0}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-ne v1, p1, :cond_28

    move v1, v3

    goto :goto_c

    :cond_28
    move v1, v2

    goto :goto_c
.end method

.method public setBackgroundDataSetting(Z)V
    .registers 6
    .parameter "allowBackgroundDataUsage"

    .prologue
    .line 348
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CHANGE_BACKGROUND_DATA_SETTING"

    const-string v3, "ConnectivityService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->getBackgroundDataSetting()Z

    move-result v1

    if-ne v1, p1, :cond_10

    .line 360
    :goto_f
    return-void

    .line 354
    :cond_10
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "background_data"

    if-eqz p1, :cond_2b

    const/4 v3, 0x1

    :goto_1b
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 357
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.conn.BACKGROUND_DATA_SETTING_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 359
    .local v0, broadcast:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_f

    .line 354
    .end local v0           #broadcast:Landroid/content/Intent;
    :cond_2b
    const/4 v3, 0x0

    goto :goto_1b
.end method

.method public declared-synchronized setNetworkPreference(I)V
    .registers 3
    .parameter "preference"

    .prologue
    .line 159
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceChangePermission()V

    .line 160
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 161
    iget v0, p0, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    if-eq v0, p1, :cond_16

    .line 162
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->persistNetworkPreference(I)V

    .line 163
    iput p1, p0, Lcom/android/server/ConnectivityService;->mNetworkPreference:I

    .line 164
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforcePreference()V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    .line 167
    :cond_16
    monitor-exit p0

    return-void

    .line 159
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setRadio(IZ)Z
    .registers 6
    .parameter "netType"
    .parameter "turnOn"

    .prologue
    const/4 v2, 0x0

    .line 275
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceChangePermission()V

    .line 276
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v1

    if-nez v1, :cond_c

    move v1, v2

    .line 280
    :goto_b
    return v1

    .line 279
    :cond_c
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v1, p1

    .line 280
    .local v0, tracker:Landroid/net/NetworkStateTracker;
    if-eqz v0, :cond_1a

    invoke-virtual {v0, p2}, Landroid/net/NetworkStateTracker;->setRadio(Z)Z

    move-result v1

    if-eqz v1, :cond_1a

    const/4 v1, 0x1

    goto :goto_b

    :cond_1a
    move v1, v2

    goto :goto_b
.end method

.method public setRadios(Z)Z
    .registers 8
    .parameter "turnOn"

    .prologue
    .line 266
    const/4 v3, 0x1

    .line 267
    .local v3, result:Z
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceChangePermission()V

    .line 268
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    .local v0, arr$:[Landroid/net/NetworkStateTracker;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_8
    if-ge v1, v2, :cond_1c

    aget-object v4, v0, v1

    .line 269
    .local v4, t:Landroid/net/NetworkStateTracker;
    invoke-virtual {v4, p1}, Landroid/net/NetworkStateTracker;->setRadio(Z)Z

    move-result v5

    if-eqz v5, :cond_19

    if-eqz v3, :cond_19

    const/4 v5, 0x1

    move v3, v5

    .line 268
    :goto_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 269
    :cond_19
    const/4 v5, 0x0

    move v3, v5

    goto :goto_16

    .line 271
    .end local v4           #t:Landroid/net/NetworkStateTracker;
    :cond_1c
    return v3
.end method

.method public startUsingNetworkFeature(ILjava/lang/String;)I
    .registers 6
    .parameter "networkType"
    .parameter "feature"

    .prologue
    const/4 v2, -0x1

    .line 284
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceChangePermission()V

    .line 285
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v1

    if-nez v1, :cond_c

    move v1, v2

    .line 292
    :goto_b
    return v1

    .line 288
    :cond_c
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v1, p1

    .line 289
    .local v0, tracker:Landroid/net/NetworkStateTracker;
    if-eqz v0, :cond_1f

    .line 290
    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, p2, v1, v2}, Landroid/net/NetworkStateTracker;->startUsingNetworkFeature(Ljava/lang/String;II)I

    move-result v1

    goto :goto_b

    :cond_1f
    move v1, v2

    .line 292
    goto :goto_b
.end method

.method public stopUsingNetworkFeature(ILjava/lang/String;)I
    .registers 6
    .parameter "networkType"
    .parameter "feature"

    .prologue
    const/4 v2, -0x1

    .line 296
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceChangePermission()V

    .line 297
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v1

    if-nez v1, :cond_c

    move v1, v2

    .line 304
    :goto_b
    return v1

    .line 300
    :cond_c
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v1, p1

    .line 301
    .local v0, tracker:Landroid/net/NetworkStateTracker;
    if-eqz v0, :cond_1f

    .line 302
    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, p2, v1, v2}, Landroid/net/NetworkStateTracker;->stopUsingNetworkFeature(Ljava/lang/String;II)I

    move-result v1

    goto :goto_b

    :cond_1f
    move v1, v2

    .line 304
    goto :goto_b
.end method
