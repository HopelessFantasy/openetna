.class public final Landroid/webkit/gears/AndroidWifiDataProvider;
.super Landroid/content/BroadcastReceiver;
.source "AndroidWifiDataProvider.java"


# static fields
.field private static final LOGV_ENABLED:Z = false

.field private static final TAG:Ljava/lang/String; = "Gears-J-WifiProvider"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mNativeObject:J

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;J)V
    .registers 8
    .parameter "webview"
    .parameter "object"

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 74
    iput-wide p2, p0, Landroid/webkit/gears/AndroidWifiDataProvider;->mNativeObject:J

    .line 75
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Landroid/webkit/gears/AndroidWifiDataProvider;->mContext:Landroid/content/Context;

    .line 76
    iget-object v2, p0, Landroid/webkit/gears/AndroidWifiDataProvider;->mContext:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Landroid/webkit/gears/AndroidWifiDataProvider;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 78
    iget-object v2, p0, Landroid/webkit/gears/AndroidWifiDataProvider;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v2, :cond_2a

    .line 79
    const-string v2, "Gears-J-WifiProvider"

    const-string v3, "AndroidWifiDataProvider: could not get location manager."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "AndroidWifiDataProvider: locationManager is null."

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 90
    :cond_2a
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 92
    .local v1, handler:Landroid/os/Handler;
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 93
    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v2, p0, Landroid/webkit/gears/AndroidWifiDataProvider;->mWifiManager:Landroid/net/wifi/WifiManager;

    const-string v2, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 94
    iget-object v2, p0, Landroid/webkit/gears/AndroidWifiDataProvider;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v0, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 99
    new-instance v2, Landroid/webkit/gears/AndroidWifiDataProvider$1;

    invoke-direct {v2, p0}, Landroid/webkit/gears/AndroidWifiDataProvider$1;-><init>(Landroid/webkit/gears/AndroidWifiDataProvider;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 104
    return-void
.end method

.method static synthetic access$000(Landroid/webkit/gears/AndroidWifiDataProvider;)Landroid/net/wifi/WifiManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Landroid/webkit/gears/AndroidWifiDataProvider;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$100(Landroid/webkit/gears/AndroidWifiDataProvider;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 44
    iget-wide v0, p0, Landroid/webkit/gears/AndroidWifiDataProvider;->mNativeObject:J

    return-wide v0
.end method

.method static synthetic access$200(Ljava/util/List;J)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-static {p0, p1, p2}, Landroid/webkit/gears/AndroidWifiDataProvider;->onUpdateAvailable(Ljava/util/List;J)V

    return-void
.end method

.method private static native onUpdateAvailable(Ljava/util/List;J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;J)V"
        }
    .end annotation
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 123
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/gears/AndroidWifiDataProvider;->mWifiManager:Landroid/net/wifi/WifiManager;

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 128
    iget-object v0, p0, Landroid/webkit/gears/AndroidWifiDataProvider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    iget-wide v1, p0, Landroid/webkit/gears/AndroidWifiDataProvider;->mNativeObject:J

    invoke-static {v0, v1, v2}, Landroid/webkit/gears/AndroidWifiDataProvider;->onUpdateAvailable(Ljava/util/List;J)V

    .line 130
    :cond_19
    return-void
.end method

.method public shutdown()V
    .registers 2

    .prologue
    .line 110
    iget-object v0, p0, Landroid/webkit/gears/AndroidWifiDataProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 114
    return-void
.end method
