.class public Landroid/net/wifi/WifiManager;
.super Ljava/lang/Object;
.source "WifiManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiManager$1;,
        Landroid/net/wifi/WifiManager$MulticastLock;,
        Landroid/net/wifi/WifiManager$WifiLock;
    }
.end annotation


# static fields
.field public static final ACTION_PICK_WIFI_NETWORK:Ljava/lang/String; = "android.net.wifi.PICK_WIFI_NETWORK"

.field public static final ERROR_AUTHENTICATING:I = 0x1

.field public static final EXTRA_BSSID:Ljava/lang/String; = "bssid"

.field public static final EXTRA_NETWORK_INFO:Ljava/lang/String; = "networkInfo"

.field public static final EXTRA_NEW_RSSI:Ljava/lang/String; = "newRssi"

.field public static final EXTRA_NEW_STATE:Ljava/lang/String; = "newState"

.field public static final EXTRA_PREVIOUS_WIFI_STATE:Ljava/lang/String; = "previous_wifi_state"

.field public static final EXTRA_SUPPLICANT_CONNECTED:Ljava/lang/String; = "connected"

.field public static final EXTRA_SUPPLICANT_ERROR:Ljava/lang/String; = "supplicantError"

.field public static final EXTRA_WIFI_STATE:Ljava/lang/String; = "wifi_state"

.field private static final MAX_ACTIVE_LOCKS:I = 0x32

.field private static final MAX_RSSI:I = -0x37

.field private static final MIN_RSSI:I = -0x64

.field public static final NETWORK_IDS_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.NETWORK_IDS_CHANGED"

.field public static final NETWORK_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.STATE_CHANGE"

.field public static final RSSI_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.RSSI_CHANGED"

.field public static final SCAN_RESULTS_AVAILABLE_ACTION:Ljava/lang/String; = "android.net.wifi.SCAN_RESULTS"

.field public static final SUPPLICANT_CONNECTION_CHANGE_ACTION:Ljava/lang/String; = "android.net.wifi.supplicant.CONNECTION_CHANGE"

.field public static final SUPPLICANT_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.supplicant.STATE_CHANGE"

.field private static final TAG:Ljava/lang/String; = "WifiManager"

.field public static final WIFI_MODE_FULL:I = 0x1

.field public static final WIFI_MODE_SCAN_ONLY:I = 0x2

.field public static final WIFI_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.WIFI_STATE_CHANGED"

.field public static final WIFI_STATE_DISABLED:I = 0x1

.field public static final WIFI_STATE_DISABLING:I = 0x0

.field public static final WIFI_STATE_ENABLED:I = 0x3

.field public static final WIFI_STATE_ENABLING:I = 0x2

.field public static final WIFI_STATE_UNKNOWN:I = 0x4


# instance fields
.field private mActiveLockCount:I

.field mHandler:Landroid/os/Handler;

.field mService:Landroid/net/wifi/IWifiManager;

.field wifiNative:Landroid/net/wifiHiddenMenu/WifiHiddenMenuNative;


# direct methods
.method public constructor <init>(Landroid/net/wifi/IWifiManager;Landroid/os/Handler;)V
    .registers 4
    .parameter "service"
    .parameter "handler"

    .prologue
    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Landroid/net/wifiHiddenMenu/WifiHiddenMenuNative;

    invoke-direct {v0}, Landroid/net/wifiHiddenMenu/WifiHiddenMenuNative;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiManager;->wifiNative:Landroid/net/wifiHiddenMenu/WifiHiddenMenuNative;

    .line 292
    iput-object p1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    .line 293
    iput-object p2, p0, Landroid/net/wifi/WifiManager;->mHandler:Landroid/os/Handler;

    .line 294
    return-void
.end method

.method static synthetic access$000(Landroid/net/wifi/WifiManager;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Landroid/net/wifi/WifiManager;->mActiveLockCount:I

    return v0
.end method

.method static synthetic access$008(Landroid/net/wifi/WifiManager;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Landroid/net/wifi/WifiManager;->mActiveLockCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/net/wifi/WifiManager;->mActiveLockCount:I

    return v0
.end method

.method static synthetic access$010(Landroid/net/wifi/WifiManager;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Landroid/net/wifi/WifiManager;->mActiveLockCount:I

    const/4 v1, 0x1

    sub-int v1, v0, v1

    iput v1, p0, Landroid/net/wifi/WifiManager;->mActiveLockCount:I

    return v0
.end method

.method private addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I
    .registers 4
    .parameter "config"

    .prologue
    .line 376
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 378
    :goto_6
    return v1

    .line 377
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 378
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_6
.end method

.method public static calculateSignalLevel(II)I
    .registers 6
    .parameter "rssi"
    .parameter "numLevels"

    .prologue
    const/4 v2, 0x1

    const/16 v3, -0x64

    .line 889
    if-gt p0, v3, :cond_7

    .line 890
    const/4 v1, 0x0

    .line 895
    :goto_6
    return v1

    .line 891
    :cond_7
    const/16 v1, -0x37

    if-lt p0, v1, :cond_e

    .line 892
    sub-int v1, p1, v2

    goto :goto_6

    .line 894
    :cond_e
    const/16 v1, 0x2d

    sub-int v2, p1, v2

    div-int v0, v1, v2

    .line 895
    .local v0, partitionSize:I
    sub-int v1, p0, v3

    div-int/2addr v1, v0

    goto :goto_6
.end method

.method public static compareSignalLevel(II)I
    .registers 3
    .parameter "rssiA"
    .parameter "rssiB"

    .prologue
    .line 909
    sub-int v0, p0, p1

    return v0
.end method


# virtual methods
.method public Channel_HiddenMenu(I)Z
    .registers 6
    .parameter "Channel"

    .prologue
    const-string v3, "WifiManager"

    .line 747
    :try_start_2
    const-string v1, "WifiManager"

    const-string v2, "[WifiManager][dongp.kim] Channel_HiddenMenu called."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->Channel_HiddenMenu(I)Z
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_e} :catch_10

    move-result v1

    .line 751
    :goto_f
    return v1

    .line 749
    :catch_10
    move-exception v1

    move-object v0, v1

    .line 750
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "WifiManager"

    const-string v1, "[WifiManager][dongp.kim] Channel_HiddenMenu failed"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public CloseDUT_HiddenMenu(Z)Z
    .registers 6
    .parameter "enabled"

    .prologue
    const-string v3, "WifiManager"

    .line 675
    :try_start_2
    const-string v1, "WifiManager"

    const-string v2, "[WifiManager][dongp.kim] CloseDUT_HiddenMenu called."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->CloseDUT_HiddenMenu(Z)Z
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_e} :catch_10

    move-result v1

    .line 679
    :goto_f
    return v1

    .line 677
    :catch_10
    move-exception v1

    move-object v0, v1

    .line 678
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "WifiManager"

    const-string v1, "[WifiManager][dongp.kim] CloseDUT_HiddenMenu failed"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public FRError_HiddenMenu(Z)I
    .registers 6
    .parameter "enabled"

    .prologue
    const-string v3, "WifiManager"

    .line 807
    :try_start_2
    const-string v1, "WifiManager"

    const-string v2, "[WifiManager][dongp.kim] FRError_HiddenMenu called."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->FRError_HiddenMenu(Z)I
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_e} :catch_10

    move-result v1

    .line 811
    :goto_f
    return v1

    .line 809
    :catch_10
    move-exception v1

    move-object v0, v1

    .line 810
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "WifiManager"

    const-string v1, "[WifiManager][dongp.kim] FRError_HiddenMenu failed"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    const/4 v1, -0x1

    goto :goto_f
.end method

.method public FRGood_HiddenMenu(Z)I
    .registers 6
    .parameter "enabled"

    .prologue
    const-string v3, "WifiManager"

    .line 819
    :try_start_2
    const-string v1, "WifiManager"

    const-string v2, "[WifiManager][dongp.kim] FRGood_HiddenMenu called."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->FRGood_HiddenMenu(Z)I
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_e} :catch_10

    move-result v1

    .line 823
    :goto_f
    return v1

    .line 821
    :catch_10
    move-exception v1

    move-object v0, v1

    .line 822
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "WifiManager"

    const-string v1, "[WifiManager][dongp.kim] FRGood_HiddenMenu failed"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    const/4 v1, -0x1

    goto :goto_f
.end method

.method public OpenDUT_HiddenMenu(Z)Z
    .registers 6
    .parameter "enabled"

    .prologue
    const-string v3, "WifiManager"

    .line 651
    :try_start_2
    const-string v1, "WifiManager"

    const-string v2, "[WifiManager][dongp.kim] setWifiEnabled_HiddenMenu is called."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->OpenDUT_HiddenMenu(Z)Z
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_e} :catch_10

    move-result v1

    .line 655
    :goto_f
    return v1

    .line 653
    :catch_10
    move-exception v1

    move-object v0, v1

    .line 654
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "WifiManager"

    const-string v1, "[WifiManager][dongp.kim] setWifiEnabled_HiddenMenu of WifiService is ."

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public RSSI_HiddenMenu(Z)I
    .registers 6
    .parameter "enabled"

    .prologue
    const-string v3, "WifiManager"

    .line 831
    :try_start_2
    const-string v1, "WifiManager"

    const-string v2, "[WifiManager][dongp.kim] RSSI_HiddenMenu called."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->RSSI_HiddenMenu(Z)I
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_e} :catch_10

    move-result v1

    .line 835
    :goto_f
    return v1

    .line 833
    :catch_10
    move-exception v1

    move-object v0, v1

    .line 834
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "WifiManager"

    const-string v1, "[WifiManager][dongp.kim] RSSI_HiddenMenu failed"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    const/4 v1, -0x1

    goto :goto_f
.end method

.method public RxStart_HiddenMenu(Z)Z
    .registers 6
    .parameter "enabled"

    .prologue
    const-string v3, "WifiManager"

    .line 663
    :try_start_2
    const-string v1, "WifiManager"

    const-string v2, "[WifiManager][dongp.kim] RxStart_HiddenMenu called."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->RxStart_HiddenMenu(Z)Z
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_e} :catch_10

    move-result v1

    .line 667
    :goto_f
    return v1

    .line 665
    :catch_10
    move-exception v1

    move-object v0, v1

    .line 666
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "WifiManager"

    const-string v1, "[WifiManager][dongp.kim] RxStart_HiddenMenu failed"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public RxStop_HiddenMenu(Z)Z
    .registers 6
    .parameter "enabled"

    .prologue
    const-string v3, "WifiManager"

    .line 843
    :try_start_2
    const-string v1, "WifiManager"

    const-string v2, "[WifiManager][dongp.kim] RxStop_HiddenMenu called."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->RxStop_HiddenMenu(Z)Z
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_e} :catch_10

    move-result v1

    .line 847
    :goto_f
    return v1

    .line 845
    :catch_10
    move-exception v1

    move-object v0, v1

    .line 846
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "WifiManager"

    const-string v1, "[WifiManager][dongp.kim] RxStop_HiddenMenu failed"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public SetPreamble_HiddenMenu(Ljava/lang/String;)Z
    .registers 6
    .parameter "Preamble"

    .prologue
    const-string v3, "WifiManager"

    .line 723
    :try_start_2
    const-string v1, "WifiManager"

    const-string v2, "[WifiManager][dongp.kim] SetPreamble_HiddenMenu called."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->SetPreamble_HiddenMenu(Ljava/lang/String;)Z
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_e} :catch_10

    move-result v1

    .line 727
    :goto_f
    return v1

    .line 725
    :catch_10
    move-exception v1

    move-object v0, v1

    .line 726
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "WifiManager"

    const-string v1, "[WifiManager][dongp.kim] SetPreamble_HiddenMenu failed"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public TxBurstFrames_HiddenMenu(I)Z
    .registers 6
    .parameter "FramNumbers"

    .prologue
    const-string v3, "WifiManager"

    .line 783
    :try_start_2
    const-string v1, "WifiManager"

    const-string v2, "[WifiManager][dongp.kim] TxBurstFrames_HiddenMenu called."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->TxBurstFrames_HiddenMenu(I)Z
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_e} :catch_10

    move-result v1

    .line 787
    :goto_f
    return v1

    .line 785
    :catch_10
    move-exception v1

    move-object v0, v1

    .line 786
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "WifiManager"

    const-string v1, "[WifiManager][dongp.kim] TxBurstFrames_HiddenMenu failed"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public TxBurstInterval_HiddenMenu(I)Z
    .registers 6
    .parameter "SIFS"

    .prologue
    const-string v3, "WifiManager"

    .line 759
    :try_start_2
    const-string v1, "WifiManager"

    const-string v2, "[WifiManager][dongp.kim] TxBurstInterval_HiddenMenu called."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->TxBurstInterval_HiddenMenu(I)Z
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_e} :catch_10

    move-result v1

    .line 763
    :goto_f
    return v1

    .line 761
    :catch_10
    move-exception v1

    move-object v0, v1

    .line 762
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "WifiManager"

    const-string v1, "[WifiManager][dongp.kim] TxBurstInterval_HiddenMenu failed"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public TxDataRate_HiddenMenu(Ljava/lang/String;)Z
    .registers 6
    .parameter "value"

    .prologue
    const-string v3, "WifiManager"

    .line 711
    :try_start_2
    const-string v1, "WifiManager"

    const-string v2, "[WifiManager][dongp.kim] TxDataRate_HiddenMenu called."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->TxDataRate_HiddenMenu(Ljava/lang/String;)Z
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_e} :catch_10

    move-result v1

    .line 715
    :goto_f
    return v1

    .line 713
    :catch_10
    move-exception v1

    move-object v0, v1

    .line 714
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "WifiManager"

    const-string v1, "[WifiManager][dongp.kim] TxDataRate_HiddenMenu failed"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public TxDestAddress_HiddenMenu(Ljava/lang/String;)Z
    .registers 6
    .parameter "daddr"

    .prologue
    const-string v3, "WifiManager"

    .line 795
    :try_start_2
    const-string v1, "WifiManager"

    const-string v2, "[WifiManager][dongp.kim] TxDestAddress_HiddenMenu called."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->TxDestAddress_HiddenMenu(Ljava/lang/String;)Z
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_e} :catch_10

    move-result v1

    .line 799
    :goto_f
    return v1

    .line 797
    :catch_10
    move-exception v1

    move-object v0, v1

    .line 798
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "WifiManager"

    const-string v1, "[WifiManager][dongp.kim] TxDestAddress_HiddenMenu failed"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public TxGain_HiddenMenu(I)Z
    .registers 6
    .parameter "TxGain"

    .prologue
    const-string v3, "WifiManager"

    .line 735
    :try_start_2
    const-string v1, "WifiManager"

    const-string v2, "[WifiManager][dongp.kim] TxGain_HiddenMenu called."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->TxGain_HiddenMenu(I)Z
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_e} :catch_10

    move-result v1

    .line 739
    :goto_f
    return v1

    .line 737
    :catch_10
    move-exception v1

    move-object v0, v1

    .line 738
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "WifiManager"

    const-string v1, "[WifiManager][dongp.kim] TxGain_HiddenMenu failed"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public TxPayloadLength_HiddenMenu(I)Z
    .registers 6
    .parameter "PayLength"

    .prologue
    const-string v3, "WifiManager"

    .line 771
    :try_start_2
    const-string v1, "WifiManager"

    const-string v2, "[WifiManager][dongp.kim] PayLength_HiddenMenu called."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->TxPayloadLength_HiddenMenu(I)Z
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_e} :catch_10

    move-result v1

    .line 775
    :goto_f
    return v1

    .line 773
    :catch_10
    move-exception v1

    move-object v0, v1

    .line 774
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "WifiManager"

    const-string v1, "[WifiManager][dongp.kim] PayLength_HiddenMenu failed"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public TxStart_HiddenMenu(Z)Z
    .registers 6
    .parameter "enabled"

    .prologue
    const-string v3, "WifiManager"

    .line 687
    :try_start_2
    const-string v1, "WifiManager"

    const-string v2, "[WifiManager][dongp.kim] TxStart_HiddenMenu called."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->TxStart_HiddenMenu(Z)Z
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_e} :catch_10

    move-result v1

    .line 691
    :goto_f
    return v1

    .line 689
    :catch_10
    move-exception v1

    move-object v0, v1

    .line 690
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "WifiManager"

    const-string v1, "[WifiManager][dongp.kim] TxStart_HiddenMenu failed"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public TxStop_HiddenMenu(Z)Z
    .registers 6
    .parameter "enabled"

    .prologue
    const-string v3, "WifiManager"

    .line 699
    :try_start_2
    const-string v1, "WifiManager"

    const-string v2, "[WifiManager][dongp.kim] TxStop_HiddenMenu called."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->TxStop_HiddenMenu(Z)Z
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_e} :catch_10

    move-result v1

    .line 703
    :goto_f
    return v1

    .line 701
    :catch_10
    move-exception v1

    move-object v0, v1

    .line 702
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "WifiManager"

    const-string v1, "[WifiManager][dongp.kim] TxStop_HiddenMenu failed"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public addNetwork(Landroid/net/wifi/WifiConfiguration;)I
    .registers 3
    .parameter "config"

    .prologue
    const/4 v0, -0x1

    .line 337
    if-nez p1, :cond_4

    .line 341
    :goto_3
    return v0

    .line 340
    :cond_4
    iput v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 341
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiManager;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    goto :goto_3
.end method

.method public createMulticastLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$MulticastLock;
    .registers 4
    .parameter "tag"

    .prologue
    .line 1113
    new-instance v0, Landroid/net/wifi/WifiManager$MulticastLock;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/net/wifi/WifiManager$MulticastLock;-><init>(Landroid/net/wifi/WifiManager;Ljava/lang/String;Landroid/net/wifi/WifiManager$1;)V

    return-object v0
.end method

.method public createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;
    .registers 5
    .parameter "lockType"
    .parameter "tag"

    .prologue
    .line 1079
    new-instance v0, Landroid/net/wifi/WifiManager$WifiLock;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Landroid/net/wifi/WifiManager$WifiLock;-><init>(Landroid/net/wifi/WifiManager;ILjava/lang/String;Landroid/net/wifi/WifiManager$1;)V

    return-object v0
.end method

.method public createWifiLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;
    .registers 5
    .parameter "tag"

    .prologue
    .line 1095
    new-instance v0, Landroid/net/wifi/WifiManager$WifiLock;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, p1, v2}, Landroid/net/wifi/WifiManager$WifiLock;-><init>(Landroid/net/wifi/WifiManager;ILjava/lang/String;Landroid/net/wifi/WifiManager$1;)V

    return-object v0
.end method

.method public disableNetwork(I)Z
    .registers 4
    .parameter "netId"

    .prologue
    .line 427
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->disableNetwork(I)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 429
    :goto_6
    return v1

    .line 428
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 429
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public disconnect()Z
    .registers 3

    .prologue
    .line 440
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->disconnect()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 442
    :goto_6
    return v1

    .line 441
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 442
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public enableNetwork(IZ)Z
    .registers 5
    .parameter "netId"
    .parameter "disableOthers"

    .prologue
    .line 412
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1, p2}, Landroid/net/wifi/IWifiManager;->enableNetwork(IZ)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 414
    :goto_6
    return v1

    .line 413
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 414
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getConfiguredNetworks()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 316
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getConfiguredNetworks()Ljava/util/List;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 318
    :goto_6
    return-object v1

    .line 317
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 318
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getConnectionInfo()Landroid/net/wifi/WifiInfo;
    .registers 3

    .prologue
    .line 527
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 529
    :goto_6
    return-object v1

    .line 528
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 529
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getDhcpInfo()Landroid/net/DhcpInfo;
    .registers 3

    .prologue
    .line 619
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 621
    :goto_6
    return-object v1

    .line 620
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 621
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getNumAllowedChannels()I
    .registers 3

    .prologue
    .line 571
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getNumAllowedChannels()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 573
    :goto_6
    return v1

    .line 572
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 573
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_6
.end method

.method public getScanResults()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 539
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getScanResults()Ljava/util/List;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 541
    :goto_6
    return-object v1

    .line 540
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 541
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getValidChannelCounts()[I
    .registers 3

    .prologue
    .line 606
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getValidChannelCounts()[I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 608
    :goto_6
    return-object v1

    .line 607
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 608
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getWifiState()I
    .registers 3

    .prologue
    .line 863
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getWifiEnabledState()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 865
    :goto_6
    return v1

    .line 864
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 865
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x4

    goto :goto_6
.end method

.method public isMulticastEnabled()Z
    .registers 3

    .prologue
    .line 1283
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->isMulticastEnabled()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 1285
    :goto_6
    return v1

    .line 1284
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 1285
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public isWifiEnabled()Z
    .registers 3

    .prologue
    .line 875
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public pingSupplicant()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 480
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    if-nez v1, :cond_7

    move v1, v2

    .line 485
    :goto_6
    return v1

    .line 483
    :cond_7
    :try_start_7
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->pingSupplicant()Z
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_e

    move-result v1

    goto :goto_6

    .line 484
    :catch_e
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    move v1, v2

    .line 485
    goto :goto_6
.end method

.method public reassociate()Z
    .registers 3

    .prologue
    .line 468
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->reassociate()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 470
    :goto_6
    return v1

    .line 469
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 470
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public reconnect()Z
    .registers 3

    .prologue
    .line 454
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->reconnect()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 456
    :goto_6
    return v1

    .line 455
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 456
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public removeNetwork(I)Z
    .registers 4
    .parameter "netId"

    .prologue
    .line 392
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->removeNetwork(I)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 394
    :goto_6
    return v1

    .line 393
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 394
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public saveConfiguration()Z
    .registers 3

    .prologue
    .line 556
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->saveConfiguration()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 558
    :goto_6
    return v1

    .line 557
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 558
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public setNumAllowedChannels(I)Z
    .registers 4
    .parameter "numChannels"

    .prologue
    .line 591
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setNumAllowedChannels(I)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 593
    :goto_6
    return v1

    .line 592
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 593
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public setWifiEnabled(Z)Z
    .registers 4
    .parameter "enabled"

    .prologue
    .line 634
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setWifiEnabled(Z)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 636
    :goto_6
    return v1

    .line 635
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 636
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public startScan()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 497
    :try_start_1
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/net/wifi/IWifiManager;->startScan(Z)Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_7} :catch_9

    move-result v1

    .line 499
    :goto_8
    return v1

    .line 498
    :catch_9
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    move v1, v3

    .line 499
    goto :goto_8
.end method

.method public startScanActive()Z
    .registers 4

    .prologue
    .line 515
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/net/wifi/IWifiManager;->startScan(Z)Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_8

    move-result v1

    .line 517
    :goto_7
    return v1

    .line 516
    :catch_8
    move-exception v1

    move-object v0, v1

    .line 517
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_7
.end method

.method public updateNetwork(Landroid/net/wifi/WifiConfiguration;)I
    .registers 3
    .parameter "config"

    .prologue
    .line 360
    if-eqz p1, :cond_6

    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-gez v0, :cond_8

    .line 361
    :cond_6
    const/4 v0, -0x1

    .line 363
    :goto_7
    return v0

    :cond_8
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiManager;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    goto :goto_7
.end method
