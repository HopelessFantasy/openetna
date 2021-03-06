.class public Landroid/net/wifi/WifiMonitor;
.super Ljava/lang/Object;
.source "WifiMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiMonitor$MonitorThread;
    }
.end annotation


# static fields
.field private static final CONNECTED:I = 0x1

.field private static final CUSTOM_EVENT:I = 0xb

.field private static final DISCONNECTED:I = 0x2

.field private static final DRIVER_STATE:I = 0x7

.field private static final LINK_SPEED:I = 0x5

.field private static final MSG:I = 0xa

.field private static final NOTIFICATION:I = 0x9

.field private static final SCAN_RESULTS:I = 0x4

.field private static final STATE_CHANGE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "WifiMonitor"

.field private static final TERMINATING:I = 0x6

.field private static final UNKNOWN:I = 0x8

.field private static final _N3_WIFI_CUSTOM_EVENT:Ljava/lang/String; = "com.netcube.wifi.customevent"

.field private static final _N3_WIFI_MSG:Ljava/lang/String; = "com.netcube.wifi.msg"

.field private static final _N3_WIFI_NOTIFICATION:Ljava/lang/String; = "com.netcube.wifi.notification"

.field private static final connectedEvent:Ljava/lang/String; = "CONNECTED"

.field private static final customEvent:Ljava/lang/String; = "CUSTOM-EVENT"

.field private static final disconnectedEvent:Ljava/lang/String; = "DISCONNECTED"

.field private static final driverStateEvent:Ljava/lang/String; = "DRIVER-STATE"

.field private static final eventPrefix:Ljava/lang/String; = "CTRL-EVENT-"

#the value of this static final field might be set in the static constructor
.field private static final eventPrefixLen:I = 0x0

.field private static final linkSpeedEvent:Ljava/lang/String; = "LINK-SPEED"

.field private static mConnectedEventPattern:Ljava/util/regex/Pattern; = null

.field private static final msgEvent:Ljava/lang/String; = "MSG"

.field private static final notificationEvent:Ljava/lang/String; = "EAP-NOTIFICATION"

.field private static final passwordKeyMayBeIncorrectEvent:Ljava/lang/String; = "pre-shared key may be incorrect"

.field private static final scanResultsEvent:Ljava/lang/String; = "SCAN-RESULTS"

.field private static final stateChangeEvent:Ljava/lang/String; = "STATE-CHANGE"

.field private static final terminatingEvent:Ljava/lang/String; = "TERMINATING"

.field private static final wpaEventPrefix:Ljava/lang/String; = "WPA:"


# instance fields
.field private final mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 63
    const-string v0, "CTRL-EVENT-"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Landroid/net/wifi/WifiMonitor;->eventPrefixLen:I

    .line 140
    const-string v0, "((?:[0-9a-f]{2}:){5}[0-9a-f]{2}) .* \\[id=([0-9]+) "

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/WifiMonitor;->mConnectedEventPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/WifiStateTracker;)V
    .registers 2
    .parameter "tracker"

    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    iput-object p1, p0, Landroid/net/wifi/WifiMonitor;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    .line 147
    return-void
.end method

.method static synthetic access$000(Landroid/net/wifi/WifiMonitor;)Landroid/net/wifi/WifiStateTracker;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    return-object v0
.end method

.method static synthetic access$100()I
    .registers 1

    .prologue
    .line 41
    sget v0, Landroid/net/wifi/WifiMonitor;->eventPrefixLen:I

    return v0
.end method

.method static synthetic access$200(I)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 41
    invoke-static {p0}, Landroid/net/wifi/WifiMonitor;->nap(I)V

    return-void
.end method

.method static synthetic access$300(Landroid/net/wifi/WifiMonitor;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/net/wifi/WifiMonitor;->handleNetworkStateChange(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    return-void
.end method

.method private handleNetworkStateChange(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    .registers 9
    .parameter "newState"
    .parameter "data"

    .prologue
    .line 420
    const/4 v0, 0x0

    .line 421
    .local v0, BSSID:Ljava/lang/String;
    const/4 v3, -0x1

    .line 422
    .local v3, networkId:I
    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v4, :cond_19

    .line 423
    sget-object v4, Landroid/net/wifi/WifiMonitor;->mConnectedEventPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v4, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 424
    .local v2, match:Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-nez v4, :cond_1f

    .line 425
    const-string v4, "WifiMonitor"

    const-string v5, "Could not find BSSID in CONNECTED event string"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    .end local v2           #match:Ljava/util/regex/Matcher;
    :cond_19
    :goto_19
    iget-object v4, p0, Landroid/net/wifi/WifiMonitor;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v4, p1, v0, v3}, Landroid/net/wifi/WifiStateTracker;->notifyStateChange(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;I)V

    .line 436
    return-void

    .line 427
    .restart local v2       #match:Ljava/util/regex/Matcher;
    :cond_1f
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 429
    const/4 v4, 0x2

    :try_start_25
    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2c
    .catch Ljava/lang/NumberFormatException; {:try_start_25 .. :try_end_2c} :catch_2e

    move-result v3

    goto :goto_19

    .line 430
    :catch_2e
    move-exception v4

    move-object v1, v4

    .line 431
    .local v1, e:Ljava/lang/NumberFormatException;
    const/4 v3, -0x1

    goto :goto_19
.end method

.method private static nap(I)V
    .registers 3
    .parameter "secs"

    .prologue
    .line 444
    mul-int/lit16 v0, p0, 0x3e8

    int-to-long v0, v0

    :try_start_3
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_6} :catch_7

    .line 447
    :goto_6
    return-void

    .line 445
    :catch_7
    move-exception v0

    goto :goto_6
.end method


# virtual methods
.method public getNetworkStateTracker()Landroid/net/NetworkStateTracker;
    .registers 2

    .prologue
    .line 154
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    return-object v0
.end method

.method public startMonitoring()V
    .registers 2

    .prologue
    .line 150
    new-instance v0, Landroid/net/wifi/WifiMonitor$MonitorThread;

    invoke-direct {v0, p0}, Landroid/net/wifi/WifiMonitor$MonitorThread;-><init>(Landroid/net/wifi/WifiMonitor;)V

    invoke-virtual {v0}, Landroid/net/wifi/WifiMonitor$MonitorThread;->start()V

    .line 151
    return-void
.end method
