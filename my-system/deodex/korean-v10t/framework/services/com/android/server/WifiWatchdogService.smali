.class public Lcom/android/server/WifiWatchdogService;
.super Ljava/lang/Object;
.source "WifiWatchdogService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/WifiWatchdogService$3;,
        Lcom/android/server/WifiWatchdogService$DnsPinger;,
        Lcom/android/server/WifiWatchdogService$AccessPoint;,
        Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;,
        Lcom/android/server/WifiWatchdogService$WifiWatchdogThread;,
        Lcom/android/server/WifiWatchdogService$WatchdogState;
    }
.end annotation


# static fields
.field private static final D:Z = true

.field private static final SYSTEMPROPERTY_KEY_DNS:Ljava/lang/String; = "dhcp.wlan0.dns1"

.field private static final TAG:Ljava/lang/String; = "WifiWatchdogService"

.field private static final V:Z


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mHandler:Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;

.field private mNumApsChecked:I

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mShouldCancel:Z

.field private mSsid:Ljava/lang/String;

.field private mState:Lcom/android/server/WifiWatchdogService$WatchdogState;

.field private mThread:Lcom/android/server/WifiWatchdogService$WifiWatchdogThread;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiStateTracker;)V
    .registers 4
    .parameter "context"
    .parameter "wifiStateTracker"

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    sget-object v0, Lcom/android/server/WifiWatchdogService$WatchdogState;->IDLE:Lcom/android/server/WifiWatchdogService$WatchdogState;

    iput-object v0, p0, Lcom/android/server/WifiWatchdogService;->mState:Lcom/android/server/WifiWatchdogService$WatchdogState;

    .line 1101
    new-instance v0, Lcom/android/server/WifiWatchdogService$2;

    invoke-direct {v0, p0}, Lcom/android/server/WifiWatchdogService$2;-><init>(Lcom/android/server/WifiWatchdogService;)V

    iput-object v0, p0, Lcom/android/server/WifiWatchdogService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 113
    iput-object p1, p0, Lcom/android/server/WifiWatchdogService;->mContext:Landroid/content/Context;

    .line 114
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/WifiWatchdogService;->mContentResolver:Landroid/content/ContentResolver;

    .line 115
    iput-object p2, p0, Lcom/android/server/WifiWatchdogService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    .line 116
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/server/WifiWatchdogService;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 118
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->createThread()V

    .line 121
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->registerForSettingsChanges()V

    .line 122
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->isWatchdogEnabled()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 123
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->registerForWifiBroadcasts()V

    .line 129
    :cond_31
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/WifiWatchdogService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->isWatchdogEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/WifiWatchdogService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->registerForWifiBroadcasts()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/WifiWatchdogService;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/server/WifiWatchdogService;->handleSleep(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/WifiWatchdogService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->handleIdle()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/WifiWatchdogService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->handleDisconnected()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/WifiWatchdogService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->handleReset()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/WifiWatchdogService;)Landroid/net/wifi/WifiManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/server/WifiWatchdogService;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/WifiWatchdogService;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/android/server/WifiWatchdogService;->onConnected(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/WifiWatchdogService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->onDisconnected()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/WifiWatchdogService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->onEnabled()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/WifiWatchdogService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->unregisterForWifiBroadcasts()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/WifiWatchdogService;)Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/server/WifiWatchdogService;->mHandler:Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/server/WifiWatchdogService;Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;)Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/server/WifiWatchdogService;->mHandler:Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/server/WifiWatchdogService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->isBackgroundCheckEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/WifiWatchdogService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->getBackgroundCheckDelayMs()I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/WifiWatchdogService;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/server/WifiWatchdogService;->handleNetworkChanged(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/WifiWatchdogService;Lcom/android/server/WifiWatchdogService$AccessPoint;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/server/WifiWatchdogService;->handleCheckAp(Lcom/android/server/WifiWatchdogService$AccessPoint;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/WifiWatchdogService;Lcom/android/server/WifiWatchdogService$AccessPoint;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/server/WifiWatchdogService;->handleBackgroundCheckAp(Lcom/android/server/WifiWatchdogService$AccessPoint;)V

    return-void
.end method

.method private backgroundCheckDnsConnectivity()Z
    .registers 3

    .prologue
    .line 416
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->getDns()I

    move-result v0

    .line 422
    .local v0, dns:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    .line 426
    const/4 v1, 0x0

    .line 429
    :goto_8
    return v1

    :cond_9
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->getBackgroundCheckTimeoutMs()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/WifiWatchdogService$DnsPinger;->isDnsReachable(II)Z

    move-result v1

    goto :goto_8
.end method

.method private blacklistAp(Ljava/lang/String;)V
    .registers 4
    .parameter "bssid"

    .prologue
    .line 748
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 763
    :cond_6
    :goto_6
    return-void

    .line 753
    :cond_7
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->shouldCancel()Z

    move-result v0

    if-nez v0, :cond_6

    .line 755
    iget-object v0, p0, Lcom/android/server/WifiWatchdogService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiStateTracker;->addToBlacklist(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 761
    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Blacklisting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/WifiWatchdogService;->myLogD(Ljava/lang/String;)V

    goto :goto_6
.end method

.method private cancelCurrentAction()V
    .registers 2

    .prologue
    .line 436
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/WifiWatchdogService;->mShouldCancel:Z

    .line 437
    return-void
.end method

.method private checkDnsConnectivity()Z
    .registers 15

    .prologue
    .line 327
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->getDns()I

    move-result v1

    .line 328
    .local v1, dns:I
    const/4 v11, -0x1

    if-ne v1, v11, :cond_9

    .line 332
    const/4 v11, 0x0

    .line 412
    :goto_8
    return v11

    .line 340
    :cond_9
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->getInitialIgnoredPingCount()I

    move-result v5

    .line 341
    .local v5, numInitialIgnoredPings:I
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->getPingCount()I

    move-result v6

    .line 342
    .local v6, numPings:I
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->getPingDelayMs()I

    move-result v9

    .line 343
    .local v9, pingDelay:I
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->getAcceptablePacketLossPercentage()I

    move-result v0

    .line 346
    .local v0, acceptableLoss:I
    const/4 v4, 0x0

    .line 347
    .local v4, ignoredPingCounter:I
    const/4 v8, 0x0

    .line 348
    .local v8, pingCounter:I
    const/4 v10, 0x0

    .line 351
    .local v10, successCounter:I
    if-nez v6, :cond_26

    .line 352
    const/4 v11, 0x1

    goto :goto_8

    .line 376
    .local v2, dnsAlive:Z
    :cond_20
    int-to-long v11, v9

    :try_start_21
    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V
    :try_end_24
    .catch Ljava/lang/InterruptedException; {:try_start_21 .. :try_end_24} :catch_46

    .line 356
    :goto_24
    add-int/lit8 v4, v4, 0x1

    .end local v2           #dnsAlive:Z
    :cond_26
    if-ge v4, v5, :cond_55

    .line 357
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->shouldCancel()Z

    move-result v11

    if-eqz v11, :cond_30

    const/4 v11, 0x0

    goto :goto_8

    .line 359
    :cond_30
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->getPingTimeoutMs()I

    move-result v11

    invoke-static {v1, v11}, Lcom/android/server/WifiWatchdogService$DnsPinger;->isDnsReachable(II)Z

    move-result v2

    .line 360
    .restart local v2       #dnsAlive:Z
    if-eqz v2, :cond_3e

    .line 365
    add-int/lit8 v8, v8, 0x1

    .line 366
    add-int/lit8 v10, v10, 0x1

    .line 373
    :cond_3e
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->shouldCancel()Z

    move-result v11

    if-eqz v11, :cond_20

    const/4 v11, 0x0

    goto :goto_8

    .line 377
    :catch_46
    move-exception v3

    .line 378
    .local v3, e:Ljava/lang/InterruptedException;
    const-string v11, "WifiWatchdogService"

    const-string v12, "Interrupted while pausing between pings"

    invoke-static {v11, v12, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_24

    .line 400
    .end local v2           #dnsAlive:Z
    .end local v3           #e:Ljava/lang/InterruptedException;
    :cond_4f
    int-to-long v11, v9

    :try_start_50
    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V
    :try_end_53
    .catch Ljava/lang/InterruptedException; {:try_start_50 .. :try_end_53} :catch_73

    .line 383
    :goto_53
    add-int/lit8 v8, v8, 0x1

    :cond_55
    if-ge v8, v6, :cond_7c

    .line 384
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->shouldCancel()Z

    move-result v11

    if-eqz v11, :cond_5f

    const/4 v11, 0x0

    goto :goto_8

    .line 386
    :cond_5f
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->getPingTimeoutMs()I

    move-result v11

    invoke-static {v1, v11}, Lcom/android/server/WifiWatchdogService$DnsPinger;->isDnsReachable(II)Z

    move-result v11

    if-eqz v11, :cond_6b

    .line 387
    add-int/lit8 v10, v10, 0x1

    .line 397
    :cond_6b
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->shouldCancel()Z

    move-result v11

    if-eqz v11, :cond_4f

    const/4 v11, 0x0

    goto :goto_8

    .line 401
    :catch_73
    move-exception v3

    .line 402
    .restart local v3       #e:Ljava/lang/InterruptedException;
    const-string v11, "WifiWatchdogService"

    const-string v12, "Interrupted while pausing between pings"

    invoke-static {v11, v12, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_53

    .line 406
    .end local v3           #e:Ljava/lang/InterruptedException;
    :cond_7c
    sub-int v11, v6, v10

    mul-int/lit8 v11, v11, 0x64

    div-int v7, v11, v6

    .line 408
    .local v7, packetLossPercentage:I
    const-string v11, "WifiWatchdogService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "% packet loss (acceptable is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "%)"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->shouldCancel()Z

    move-result v11

    if-nez v11, :cond_af

    if-gt v7, v0, :cond_af

    const/4 v11, 0x1

    goto/16 :goto_8

    :cond_af
    const/4 v11, 0x0

    goto/16 :goto_8
.end method

.method private createThread()V
    .registers 2

    .prologue
    .line 272
    new-instance v0, Lcom/android/server/WifiWatchdogService$WifiWatchdogThread;

    invoke-direct {v0, p0}, Lcom/android/server/WifiWatchdogService$WifiWatchdogThread;-><init>(Lcom/android/server/WifiWatchdogService;)V

    iput-object v0, p0, Lcom/android/server/WifiWatchdogService;->mThread:Lcom/android/server/WifiWatchdogService$WifiWatchdogThread;

    .line 273
    iget-object v0, p0, Lcom/android/server/WifiWatchdogService;->mThread:Lcom/android/server/WifiWatchdogService$WifiWatchdogThread;

    invoke-virtual {v0}, Lcom/android/server/WifiWatchdogService$WifiWatchdogThread;->start()V

    .line 274
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->waitForHandlerCreation()V

    .line 275
    return-void
.end method

.method private getAcceptablePacketLossPercentage()I
    .registers 4

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/server/WifiWatchdogService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "wifi_watchdog_acceptable_packet_loss_percentage"

    const/16 v2, 0x19

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getApCount()I
    .registers 4

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/server/WifiWatchdogService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "wifi_watchdog_ap_count"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getBackgroundCheckDelayMs()I
    .registers 4

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/server/WifiWatchdogService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "wifi_watchdog_background_check_delay_ms"

    const v2, 0xea60

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getBackgroundCheckTimeoutMs()I
    .registers 4

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/server/WifiWatchdogService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "wifi_watchdog_background_check_timeout_ms"

    const/16 v2, 0x3e8

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getDns()I
    .registers 3

    .prologue
    .line 312
    iget-object v1, p0, Lcom/android/server/WifiWatchdogService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v0

    .line 313
    .local v0, addressInfo:Landroid/net/DhcpInfo;
    if-eqz v0, :cond_b

    .line 314
    iget v1, v0, Landroid/net/DhcpInfo;->dns1:I

    .line 316
    :goto_a
    return v1

    :cond_b
    const/4 v1, -0x1

    goto :goto_a
.end method

.method private getInitialIgnoredPingCount()I
    .registers 4

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/server/WifiWatchdogService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "wifi_watchdog_initial_ignored_ping_count"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getMaxApChecks()I
    .registers 4

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/server/WifiWatchdogService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "wifi_watchdog_max_ap_checks"

    const/4 v2, 0x7

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getPingCount()I
    .registers 4

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/server/WifiWatchdogService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "wifi_watchdog_ping_count"

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getPingDelayMs()I
    .registers 4

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/server/WifiWatchdogService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "wifi_watchdog_ping_delay_ms"

    const/16 v2, 0xfa

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getPingTimeoutMs()I
    .registers 4

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/server/WifiWatchdogService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "wifi_watchdog_ping_timeout_ms"

    const/16 v2, 0x1f4

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getWatchList()Ljava/lang/String;
    .registers 3

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/server/WifiWatchdogService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "wifi_watchdog_watch_list"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleApAlive(Lcom/android/server/WifiWatchdogService$AccessPoint;)V
    .registers 4
    .parameter "ap"

    .prologue
    .line 716
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->shouldCancel()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 726
    :goto_6
    return-void

    .line 718
    :cond_7
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/WifiWatchdogService;->setIdleState(Z)V

    .line 721
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AP is alive: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/WifiWatchdogService$AccessPoint;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/WifiWatchdogService;->myLogD(Ljava/lang/String;)V

    .line 725
    iget-object v0, p0, Lcom/android/server/WifiWatchdogService;->mHandler:Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->backgroundCheckAp(Lcom/android/server/WifiWatchdogService$AccessPoint;)V

    goto :goto_6
.end method

.method private handleApUnresponsive(Lcom/android/server/WifiWatchdogService$AccessPoint;)V
    .registers 4
    .parameter "ap"

    .prologue
    .line 735
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->shouldCancel()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 745
    :goto_6
    return-void

    .line 737
    :cond_7
    sget-object v0, Lcom/android/server/WifiWatchdogService$WatchdogState;->SWITCHING_AP:Lcom/android/server/WifiWatchdogService$WatchdogState;

    iput-object v0, p0, Lcom/android/server/WifiWatchdogService;->mState:Lcom/android/server/WifiWatchdogService$WatchdogState;

    .line 740
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AP is dead: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/WifiWatchdogService$AccessPoint;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/WifiWatchdogService;->myLogD(Ljava/lang/String;)V

    .line 744
    iget-object v0, p1, Lcom/android/server/WifiWatchdogService$AccessPoint;->bssid:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/WifiWatchdogService;->blacklistAp(Ljava/lang/String;)V

    goto :goto_6
.end method

.method private handleBackgroundCheckAp(Lcom/android/server/WifiWatchdogService$AccessPoint;)V
    .registers 6
    .parameter "ap"

    .prologue
    .line 775
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/WifiWatchdogService;->mShouldCancel:Z

    .line 782
    iget-object v2, p0, Lcom/android/server/WifiWatchdogService;->mState:Lcom/android/server/WifiWatchdogService$WatchdogState;

    sget-object v3, Lcom/android/server/WifiWatchdogService$WatchdogState;->SLEEP:Lcom/android/server/WifiWatchdogService$WatchdogState;

    if-ne v2, v3, :cond_a

    .line 831
    :cond_9
    :goto_9
    return-void

    .line 790
    :cond_a
    iget-object v2, p0, Lcom/android/server/WifiWatchdogService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 791
    .local v0, info:Landroid/net/wifi/WifiInfo;
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/WifiWatchdogService$AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 799
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/WifiWatchdogService$AccessPoint;->bssid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 808
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->backgroundCheckDnsConnectivity()Z

    move-result v1

    .line 814
    .local v1, isApAlive:Z
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->shouldCancel()Z

    move-result v2

    if-nez v2, :cond_9

    .line 819
    if-eqz v1, :cond_46

    .line 821
    iget-object v2, p0, Lcom/android/server/WifiWatchdogService;->mHandler:Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;

    invoke-virtual {v2, p1}, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->backgroundCheckAp(Lcom/android/server/WifiWatchdogService$AccessPoint;)V

    goto :goto_9

    .line 825
    :cond_46
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Background check failed for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/WifiWatchdogService$AccessPoint;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/WifiWatchdogService;->myLogD(Ljava/lang/String;)V

    .line 829
    iget-object v2, p0, Lcom/android/server/WifiWatchdogService;->mHandler:Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;

    invoke-virtual {v2, p1}, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->checkAp(Lcom/android/server/WifiWatchdogService$AccessPoint;)V

    goto :goto_9
.end method

.method private handleCheckAp(Lcom/android/server/WifiWatchdogService$AccessPoint;)V
    .registers 5
    .parameter "ap"

    .prologue
    .line 664
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/WifiWatchdogService;->mShouldCancel:Z

    .line 671
    iget-object v1, p0, Lcom/android/server/WifiWatchdogService;->mState:Lcom/android/server/WifiWatchdogService$WatchdogState;

    sget-object v2, Lcom/android/server/WifiWatchdogService$WatchdogState;->SLEEP:Lcom/android/server/WifiWatchdogService$WatchdogState;

    if-ne v1, v2, :cond_a

    .line 707
    :goto_9
    return-void

    .line 678
    :cond_a
    sget-object v1, Lcom/android/server/WifiWatchdogService$WatchdogState;->CHECKING_AP:Lcom/android/server/WifiWatchdogService$WatchdogState;

    iput-object v1, p0, Lcom/android/server/WifiWatchdogService;->mState:Lcom/android/server/WifiWatchdogService$WatchdogState;

    .line 684
    iget v1, p0, Lcom/android/server/WifiWatchdogService;->mNumApsChecked:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/WifiWatchdogService;->mNumApsChecked:I

    .line 685
    iget v1, p0, Lcom/android/server/WifiWatchdogService;->mNumApsChecked:I

    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->getMaxApChecks()I

    move-result v2

    if-le v1, v2, :cond_24

    .line 690
    iget-object v1, p0, Lcom/android/server/WifiWatchdogService;->mHandler:Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;

    iget-object v2, p0, Lcom/android/server/WifiWatchdogService;->mSsid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->sleep(Ljava/lang/String;)V

    goto :goto_9

    .line 695
    :cond_24
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->checkDnsConnectivity()Z

    move-result v0

    .line 702
    .local v0, isApAlive:Z
    if-eqz v0, :cond_2e

    .line 703
    invoke-direct {p0, p1}, Lcom/android/server/WifiWatchdogService;->handleApAlive(Lcom/android/server/WifiWatchdogService$AccessPoint;)V

    goto :goto_9

    .line 705
    :cond_2e
    invoke-direct {p0, p1}, Lcom/android/server/WifiWatchdogService;->handleApUnresponsive(Lcom/android/server/WifiWatchdogService$AccessPoint;)V

    goto :goto_9
.end method

.method private handleDisconnected()V
    .registers 2

    .prologue
    .line 882
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/WifiWatchdogService;->setIdleState(Z)V

    .line 883
    return-void
.end method

.method private handleIdle()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 891
    iput-boolean v2, p0, Lcom/android/server/WifiWatchdogService;->mShouldCancel:Z

    .line 898
    iget-object v0, p0, Lcom/android/server/WifiWatchdogService;->mState:Lcom/android/server/WifiWatchdogService$WatchdogState;

    sget-object v1, Lcom/android/server/WifiWatchdogService$WatchdogState;->SLEEP:Lcom/android/server/WifiWatchdogService$WatchdogState;

    if-ne v0, v1, :cond_2a

    .line 899
    const-string v0, "WifiWatchdogService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Sleeping (in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/WifiWatchdogService;->mSsid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), so returning"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    :goto_29
    return-void

    .line 904
    :cond_2a
    invoke-direct {p0, v2}, Lcom/android/server/WifiWatchdogService;->setIdleState(Z)V

    goto :goto_29
.end method

.method private handleNetworkChanged(Ljava/lang/String;)V
    .registers 3
    .parameter "ssid"

    .prologue
    .line 652
    iput-object p1, p0, Lcom/android/server/WifiWatchdogService;->mSsid:Ljava/lang/String;

    .line 654
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/WifiWatchdogService;->setIdleState(Z)V

    .line 655
    return-void
.end method

.method private handleReset()V
    .registers 2

    .prologue
    .line 927
    iget-object v0, p0, Lcom/android/server/WifiWatchdogService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateTracker;->clearBlacklist()Z

    .line 928
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/WifiWatchdogService;->setIdleState(Z)V

    .line 929
    return-void
.end method

.method private handleSleep(Ljava/lang/String;)V
    .registers 4
    .parameter "ssid"

    .prologue
    .line 841
    if-eqz p1, :cond_2c

    iget-object v0, p0, Lcom/android/server/WifiWatchdogService;->mSsid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 842
    sget-object v0, Lcom/android/server/WifiWatchdogService$WatchdogState;->SLEEP:Lcom/android/server/WifiWatchdogService$WatchdogState;

    iput-object v0, p0, Lcom/android/server/WifiWatchdogService;->mState:Lcom/android/server/WifiWatchdogService$WatchdogState;

    .line 845
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Going to sleep for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/WifiWatchdogService;->myLogD(Ljava/lang/String;)V

    .line 853
    iget-object v0, p0, Lcom/android/server/WifiWatchdogService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateTracker;->clearBlacklist()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 862
    :cond_2c
    return-void
.end method

.method private hasRequiredNumberOfAps(Ljava/lang/String;)Z
    .registers 10
    .parameter "ssid"

    .prologue
    const/4 v7, 0x0

    .line 611
    iget-object v6, p0, Lcom/android/server/WifiWatchdogService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v4

    .line 612
    .local v4, results:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-nez v4, :cond_b

    move v6, v7

    .line 642
    :goto_a
    return v6

    .line 619
    :cond_b
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->getApCount()I

    move-result v2

    .line 620
    .local v2, numApsRequired:I
    const/4 v1, 0x0

    .line 621
    .local v1, numApsFound:I
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 622
    .local v5, resultsSize:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_15
    if-ge v0, v5, :cond_34

    .line 623
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    .line 624
    .local v3, result:Landroid/net/wifi/ScanResult;
    if-nez v3, :cond_22

    .line 622
    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 625
    :cond_22
    iget-object v6, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v6, :cond_1f

    .line 627
    iget-object v6, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 628
    add-int/lit8 v1, v1, 0x1

    .line 630
    if-lt v1, v2, :cond_1f

    .line 634
    const/4 v6, 0x1

    goto :goto_a

    .end local v3           #result:Landroid/net/wifi/ScanResult;
    :cond_34
    move v6, v7

    .line 642
    goto :goto_a
.end method

.method private isBackgroundCheckEnabled()Z
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 220
    iget-object v0, p0, Lcom/android/server/WifiWatchdogService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "wifi_watchdog_background_check_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_d

    move v0, v2

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method private isOnWatchList(Ljava/lang/String;)Z
    .registers 10
    .parameter "ssid"

    .prologue
    const/4 v7, 0x0

    .line 589
    if-eqz p1, :cond_9

    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->getWatchList()Ljava/lang/String;

    move-result-object v5

    .local v5, watchList:Ljava/lang/String;
    if-nez v5, :cond_b

    .end local v5           #watchList:Ljava/lang/String;
    :cond_9
    move v6, v7

    .line 601
    :goto_a
    return v6

    .line 593
    .restart local v5       #watchList:Ljava/lang/String;
    :cond_b
    const-string v6, " *, *"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 595
    .local v3, list:[Ljava/lang/String;
    move-object v0, v3

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_14
    if-ge v1, v2, :cond_23

    aget-object v4, v0, v1

    .line 596
    .local v4, name:Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_20

    .line 597
    const/4 v6, 0x1

    goto :goto_a

    .line 595
    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .end local v4           #name:Ljava/lang/String;
    :cond_23
    move v6, v7

    .line 601
    goto :goto_a
.end method

.method private isWatchdogEnabled()Z
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 157
    iget-object v0, p0, Lcom/android/server/WifiWatchdogService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "wifi_watchdog_on"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_d

    move v0, v2

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method private static myLogD(Ljava/lang/String;)V
    .registers 4
    .parameter "message"

    .prologue
    .line 303
    const-string v0, "WifiWatchdogService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    return-void
.end method

.method private static myLogV(Ljava/lang/String;)V
    .registers 4
    .parameter "message"

    .prologue
    .line 299
    const-string v0, "WifiWatchdogService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    return-void
.end method

.method private onConnected(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "ssid"
    .parameter "bssid"

    .prologue
    const-string v2, " ("

    .line 470
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->cancelCurrentAction()V

    .line 472
    iget-object v0, p0, Lcom/android/server/WifiWatchdogService;->mSsid:Ljava/lang/String;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/server/WifiWatchdogService;->mSsid:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 477
    :cond_11
    iget-object v0, p0, Lcom/android/server/WifiWatchdogService;->mHandler:Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->dispatchNetworkChanged(Ljava/lang/String;)V

    .line 480
    :cond_16
    invoke-direct {p0, p1, p2}, Lcom/android/server/WifiWatchdogService;->requiresWatchdog(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 482
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") requires the watchdog"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/WifiWatchdogService;->myLogD(Ljava/lang/String;)V

    .line 486
    iget-object v0, p0, Lcom/android/server/WifiWatchdogService;->mHandler:Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;

    new-instance v1, Lcom/android/server/WifiWatchdogService$AccessPoint;

    invoke-direct {v1, p1, p2}, Lcom/android/server/WifiWatchdogService$AccessPoint;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->checkAp(Lcom/android/server/WifiWatchdogService$AccessPoint;)V

    .line 496
    :goto_46
    return-void

    .line 490
    :cond_47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") does not require the watchdog"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/WifiWatchdogService;->myLogD(Ljava/lang/String;)V

    .line 494
    iget-object v0, p0, Lcom/android/server/WifiWatchdogService;->mHandler:Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;

    invoke-virtual {v0}, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->idle()V

    goto :goto_46
.end method

.method private onDisconnected()V
    .registers 2

    .prologue
    .line 519
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->cancelCurrentAction()V

    .line 521
    iget-object v0, p0, Lcom/android/server/WifiWatchdogService;->mHandler:Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;

    invoke-virtual {v0}, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->dispatchDisconnected()V

    .line 523
    iget-object v0, p0, Lcom/android/server/WifiWatchdogService;->mHandler:Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;

    invoke-virtual {v0}, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->idle()V

    .line 524
    return-void
.end method

.method private onEnabled()V
    .registers 2

    .prologue
    .line 502
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->cancelCurrentAction()V

    .line 504
    iget-object v0, p0, Lcom/android/server/WifiWatchdogService;->mHandler:Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;

    invoke-virtual {v0}, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->reset()V

    .line 505
    return-void
.end method

.method private registerForSettingsChanges()V
    .registers 6

    .prologue
    .line 135
    iget-object v1, p0, Lcom/android/server/WifiWatchdogService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 136
    .local v0, contentResolver:Landroid/content/ContentResolver;
    const-string v1, "wifi_watchdog_on"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/android/server/WifiWatchdogService$1;

    iget-object v4, p0, Lcom/android/server/WifiWatchdogService;->mHandler:Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;

    invoke-direct {v3, p0, v4}, Lcom/android/server/WifiWatchdogService$1;-><init>(Lcom/android/server/WifiWatchdogService;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 151
    return-void
.end method

.method private registerForWifiBroadcasts()V
    .registers 4

    .prologue
    .line 253
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 254
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 255
    const-string v1, "android.net.wifi.supplicant.CONNECTION_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 256
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 257
    iget-object v1, p0, Lcom/android/server/WifiWatchdogService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/WifiWatchdogService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 258
    return-void
.end method

.method private requiresWatchdog(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .parameter "ssid"
    .parameter "bssid"

    .prologue
    const/4 v2, 0x0

    .line 539
    const/4 v0, 0x0

    .line 540
    .local v0, info:Landroid/net/wifi/WifiInfo;
    if-nez p1, :cond_12

    .line 545
    iget-object v1, p0, Lcom/android/server/WifiWatchdogService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 546
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object p1

    .line 547
    if-nez p1, :cond_12

    move v1, v2

    .line 583
    :goto_11
    return v1

    .line 556
    :cond_12
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 558
    if-nez v0, :cond_20

    .line 559
    iget-object v1, p0, Lcom/android/server/WifiWatchdogService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 561
    :cond_20
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object p2

    .line 562
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2c

    move v1, v2

    .line 567
    goto :goto_11

    .line 571
    :cond_2c
    invoke-direct {p0, p1}, Lcom/android/server/WifiWatchdogService;->isOnWatchList(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_34

    move v1, v2

    .line 575
    goto :goto_11

    .line 579
    :cond_34
    invoke-direct {p0, p1}, Lcom/android/server/WifiWatchdogService;->hasRequiredNumberOfAps(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3c

    move v1, v2

    .line 580
    goto :goto_11

    .line 583
    :cond_3c
    const/4 v1, 0x1

    goto :goto_11
.end method

.method private setIdleState(Z)V
    .registers 4
    .parameter "forceIdleState"

    .prologue
    .line 916
    if-nez p1, :cond_8

    iget-object v0, p0, Lcom/android/server/WifiWatchdogService;->mState:Lcom/android/server/WifiWatchdogService$WatchdogState;

    sget-object v1, Lcom/android/server/WifiWatchdogService$WatchdogState;->SLEEP:Lcom/android/server/WifiWatchdogService$WatchdogState;

    if-eq v0, v1, :cond_c

    .line 917
    :cond_8
    sget-object v0, Lcom/android/server/WifiWatchdogService$WatchdogState;->IDLE:Lcom/android/server/WifiWatchdogService$WatchdogState;

    iput-object v0, p0, Lcom/android/server/WifiWatchdogService;->mState:Lcom/android/server/WifiWatchdogService$WatchdogState;

    .line 919
    :cond_c
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/WifiWatchdogService;->mNumApsChecked:I

    .line 920
    return-void
.end method

.method private shouldCancel()Z
    .registers 2

    .prologue
    .line 449
    iget-boolean v0, p0, Lcom/android/server/WifiWatchdogService;->mShouldCancel:Z

    return v0
.end method

.method private unregisterForWifiBroadcasts()V
    .registers 3

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/server/WifiWatchdogService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/WifiWatchdogService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 265
    return-void
.end method

.method private waitForHandlerCreation()V
    .registers 4

    .prologue
    .line 281
    monitor-enter p0

    .line 282
    :goto_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/WifiWatchdogService;->mHandler:Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_12

    if-nez v1, :cond_15

    .line 285
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_12
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_8} :catch_9

    goto :goto_1

    .line 286
    :catch_9
    move-exception v0

    .line 287
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_a
    const-string v1, "WifiWatchdogService"

    const-string v2, "Interrupted while waiting on handler."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 290
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_12
    move-exception v1

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_12

    throw v1

    :cond_15
    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_12

    .line 291
    return-void
.end method
