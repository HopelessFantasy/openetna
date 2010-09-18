.class public Lcom/android/settings/wifi/WifiLayer;
.super Ljava/lang/Object;
.source "WifiLayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WifiLayer$MyHandler;,
        Lcom/android/settings/wifi/WifiLayer$Callback;
    }
.end annotation


# static fields
.field private static final ADD_CONFIGURATION_ENABLE:I = 0x1

.field private static final ADD_CONFIGURATION_SAVE:I = 0x2

.field private static final CONTINUOUS_SCAN_DELAY_MS:I = 0x3a98

.field private static final HIGHEST_PRIORITY_MAX_VALUE:I = 0x1869f

.field static final LOGV:Z = true

.field static final MESSAGE_ATTEMPT_SCAN:I = 0x1

.field static final MESSAGE_ATTEMPT_SCAN_FIRST:I = 0x63

.field static final MESSAGE_CHECK_AP_REENABLE:I = 0x58

.field private static final SCAN_MAX_RETRY:I = 0x5

.field private static final SCAN_RETRY_DELAY_MS:I = 0x7d0

.field private static final TAG:Ljava/lang/String; = "SettingsWifiLayer"


# instance fields
.field private WIFI_NUM_OPEN_NETWORKS_KEPT:I

.field private mApOtherList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/wifi/AccessPointState;",
            ">;"
        }
    .end annotation
.end field

.field private mApScanList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/wifi/AccessPointState;",
            ">;"
        }
    .end annotation
.end field

.field private mCallback:Lcom/android/settings/wifi/WifiLayer$Callback;

.field private mContext:Landroid/content/Context;

.field private mCurrentPrimaryAp:Lcom/android/settings/wifi/AccessPointState;

.field private mCurrentSupplicantState:Landroid/net/wifi/SupplicantState;

.field private mHandler:Landroid/os/Handler;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIsObtainingAddress:Z

.field private mLastAuthenticatingAp:Lcom/android/settings/wifi/AccessPointState;

.field private mNextHighestPriority:I

.field private mNumofHiddenSSID:I

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mReenableApsOnNetworkStateChange:Z

.field private mScanRetryCount:I

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/wifi/WifiLayer$Callback;)V
    .registers 6
    .parameter "context"
    .parameter "callback"

    .prologue
    const/4 v2, 0x0

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Lcom/android/settings/wifi/WifiLayer$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/wifi/WifiLayer$MyHandler;-><init>(Lcom/android/settings/wifi/WifiLayer;Lcom/android/settings/wifi/WifiLayer$1;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiLayer;->mHandler:Landroid/os/Handler;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiLayer;->mApScanList:Ljava/util/List;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiLayer;->mApOtherList:Ljava/util/List;

    .line 121
    iput v2, p0, Lcom/android/settings/wifi/WifiLayer;->mScanRetryCount:I

    .line 150
    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiLayer;->mReenableApsOnNetworkStateChange:Z

    .line 204
    new-instance v0, Lcom/android/settings/wifi/WifiLayer$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiLayer$1;-><init>(Lcom/android/settings/wifi/WifiLayer;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiLayer;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 244
    iput-object p1, p0, Lcom/android/settings/wifi/WifiLayer;->mContext:Landroid/content/Context;

    .line 245
    iput-object p2, p0, Lcom/android/settings/wifi/WifiLayer;->mCallback:Lcom/android/settings/wifi/WifiLayer$Callback;

    .line 246
    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/WifiLayer;Landroid/net/NetworkInfo;Ljava/lang/String;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/WifiLayer;->handleNetworkStateChanged(Landroid/net/NetworkInfo;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/WifiLayer;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiLayer;->handleScanResultsAvailable()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/WifiLayer;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiLayer;->handleSupplicantConnectionChanged(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/WifiLayer;Landroid/net/wifi/SupplicantState;ZI)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/wifi/WifiLayer;->handleSupplicantStateChanged(Landroid/net/wifi/SupplicantState;ZI)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/WifiLayer;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiLayer;->handleWifiStateChanged(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/WifiLayer;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiLayer;->handleSignalChanged(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/wifi/WifiLayer;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiLayer;->handleNetworkIdsChanged()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/wifi/WifiLayer;)Landroid/net/wifi/SupplicantState;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/settings/wifi/WifiLayer;->mCurrentSupplicantState:Landroid/net/wifi/SupplicantState;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/wifi/WifiLayer;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiLayer;->attemptReenableAllAps()V

    return-void
.end method

.method private addConfiguration(Lcom/android/settings/wifi/AccessPointState;I)Landroid/net/wifi/WifiConfiguration;
    .registers 8
    .parameter "state"
    .parameter "flags"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 832
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 834
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p1, v0}, Lcom/android/settings/wifi/AccessPointState;->updateWifiConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    .line 836
    iget-object v2, p0, Lcom/android/settings/wifi/WifiLayer;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v1

    .line 837
    .local v1, networkId:I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_15

    move-object v2, v3

    .line 859
    :goto_14
    return-object v2

    .line 841
    :cond_15
    invoke-virtual {p1, v1}, Lcom/android/settings/wifi/AccessPointState;->setNetworkId(I)V

    .line 842
    invoke-virtual {p1, v4}, Lcom/android/settings/wifi/AccessPointState;->setConfigured(Z)V

    .line 845
    and-int/lit8 v2, p2, 0x1

    if-eqz v2, :cond_28

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lcom/android/settings/wifi/WifiLayer;->managerEnableNetwork(Lcom/android/settings/wifi/AccessPointState;Z)Z

    move-result v2

    if-nez v2, :cond_28

    move-object v2, v3

    .line 847
    goto :goto_14

    .line 851
    :cond_28
    and-int/lit8 v2, p2, 0x2

    if-eqz v2, :cond_34

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiLayer;->managerSaveConfiguration()Z

    move-result v2

    if-nez v2, :cond_34

    move-object v2, v3

    .line 852
    goto :goto_14

    .line 855
    :cond_34
    iget-object v2, p0, Lcom/android/settings/wifi/WifiLayer;->mCallback:Lcom/android/settings/wifi/WifiLayer$Callback;

    if-eqz v2, :cond_3d

    .line 856
    iget-object v2, p0, Lcom/android/settings/wifi/WifiLayer;->mCallback:Lcom/android/settings/wifi/WifiLayer$Callback;

    invoke-interface {v2, p1, v4}, Lcom/android/settings/wifi/WifiLayer$Callback;->onAccessPointSetChanged(Lcom/android/settings/wifi/AccessPointState;Z)V

    :cond_3d
    move-object v2, v0

    .line 859
    goto :goto_14
.end method

.method private attemptReenableAllAps()V
    .registers 4

    .prologue
    .line 1017
    const-string v0, "SettingsWifiLayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attemptReenableAllAps: mReenableApsOnNetworkStateChange "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/wifi/WifiLayer;->mReenableApsOnNetworkStateChange:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    iget-object v0, p0, Lcom/android/settings/wifi/WifiLayer;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x58

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1022
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiLayer;->mReenableApsOnNetworkStateChange:Z

    if-eqz v0, :cond_2b

    .line 1023
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiLayer;->mReenableApsOnNetworkStateChange:Z

    .line 1024
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiLayer;->enableAllAps()V

    .line 1026
    :cond_2b
    return-void
.end method

.method private checkForExcessOpenNetworks()V
    .registers 7

    .prologue
    .line 1128
    monitor-enter p0

    .line 1129
    :try_start_1
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiLayer;->getApsSortedByPriorityLocked()Ljava/util/ArrayList;

    move-result-object v0

    .line 1132
    .local v0, allAps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/wifi/AccessPointState;>;"
    const/4 v2, 0x0

    .line 1133
    .local v2, openConfiguredCount:I
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int v1, v4, v5

    .local v1, i:I
    :goto_d
    if-ltz v1, :cond_2b

    .line 1134
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/wifi/AccessPointState;

    .line 1135
    .local v3, state:Lcom/android/settings/wifi/AccessPointState;
    iget-boolean v4, v3, Lcom/android/settings/wifi/AccessPointState;->configured:Z

    if-eqz v4, :cond_28

    invoke-virtual {v3}, Lcom/android/settings/wifi/AccessPointState;->hasSecurity()Z

    move-result v4

    if-nez v4, :cond_28

    .line 1136
    add-int/lit8 v2, v2, 0x1

    .line 1137
    iget v4, p0, Lcom/android/settings/wifi/WifiLayer;->WIFI_NUM_OPEN_NETWORKS_KEPT:I

    if-le v2, v4, :cond_28

    .line 1139
    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiLayer;->forgetNetwork(Lcom/android/settings/wifi/AccessPointState;)Z

    .line 1133
    :cond_28
    add-int/lit8 v1, v1, -0x1

    goto :goto_d

    .line 1143
    .end local v3           #state:Lcom/android/settings/wifi/AccessPointState;
    :cond_2b
    monitor-exit p0

    .line 1144
    return-void

    .line 1143
    .end local v0           #allAps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/wifi/AccessPointState;>;"
    .end local v1           #i:I
    .end local v2           #openConfiguredCount:I
    :catchall_2d
    move-exception v4

    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_2d

    throw v4
.end method

.method private checkNextHighestPriority(I)V
    .registers 3
    .parameter "priority"

    .prologue
    .line 1114
    const v0, 0x1869f

    if-gt p1, v0, :cond_7

    if-gez p1, :cond_8

    .line 1122
    :cond_7
    :goto_7
    return-void

    .line 1119
    :cond_8
    iget v0, p0, Lcom/android/settings/wifi/WifiLayer;->mNextHighestPriority:I

    if-gt v0, p1, :cond_7

    .line 1120
    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/android/settings/wifi/WifiLayer;->mNextHighestPriority:I

    goto :goto_7
.end method

.method private clearApLists()V
    .registers 5

    .prologue
    .line 788
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 790
    .local v0, accessPoints:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/wifi/AccessPointState;>;"
    monitor-enter p0

    .line 792
    :try_start_6
    iget-object v2, p0, Lcom/android/settings/wifi/WifiLayer;->mApScanList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 793
    iget-object v2, p0, Lcom/android/settings/wifi/WifiLayer;->mApOtherList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 794
    iget-object v2, p0, Lcom/android/settings/wifi/WifiLayer;->mApScanList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 795
    iget-object v2, p0, Lcom/android/settings/wifi/WifiLayer;->mApOtherList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 796
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_6 .. :try_end_1b} :catchall_30

    .line 798
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int v1, v2, v3

    .local v1, i:I
    :goto_22
    if-ltz v1, :cond_33

    .line 799
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/wifi/AccessPointState;

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiLayer;->removeApFromUi(Lcom/android/settings/wifi/AccessPointState;)V

    .line 798
    add-int/lit8 v1, v1, -0x1

    goto :goto_22

    .line 796
    .end local v1           #i:I
    :catchall_30
    move-exception v2

    :try_start_31
    monitor-exit p0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw v2

    .line 801
    .restart local v1       #i:I
    :cond_33
    return-void
.end method

.method private enableAllAps()V
    .registers 3

    .prologue
    .line 1029
    monitor-enter p0

    .line 1031
    :try_start_1
    const-string v0, "SettingsWifiLayer"

    const-string v1, " Enabling all APs"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    iget-object v0, p0, Lcom/android/settings/wifi/WifiLayer;->mApOtherList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiLayer;->enableApsLocked(Ljava/util/List;)V

    .line 1035
    iget-object v0, p0, Lcom/android/settings/wifi/WifiLayer;->mApScanList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiLayer;->enableApsLocked(Ljava/util/List;)V

    .line 1036
    monitor-exit p0

    .line 1037
    return-void

    .line 1036
    :catchall_14
    move-exception v0

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_14

    throw v0
.end method

.method private enableApsLocked(Ljava/util/List;)V
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/wifi/AccessPointState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1040
    .local p1, apList:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/wifi/AccessPointState;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int v0, v3, v4

    .local v0, i:I
    :goto_7
    if-ltz v0, :cond_1e

    .line 1041
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/wifi/AccessPointState;

    .line 1042
    .local v2, state:Lcom/android/settings/wifi/AccessPointState;
    iget v1, v2, Lcom/android/settings/wifi/AccessPointState;->networkId:I

    .line 1043
    .local v1, networkId:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_1b

    const/4 v3, -0x2

    if-eq v1, v3, :cond_1b

    .line 1045
    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/settings/wifi/WifiLayer;->managerEnableNetwork(Lcom/android/settings/wifi/AccessPointState;Z)Z

    .line 1040
    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_7

    .line 1048
    .end local v1           #networkId:I
    .end local v2           #state:Lcom/android/settings/wifi/AccessPointState;
    :cond_1e
    return-void
.end method

.method private ensureTrackingState(Lcom/android/settings/wifi/AccessPointState;)V
    .registers 3
    .parameter "state"

    .prologue
    .line 649
    monitor-enter p0

    .line 650
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiLayer;->hasApInstanceLocked(Lcom/android/settings/wifi/AccessPointState;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 651
    monitor-exit p0

    .line 656
    :goto_8
    return-void

    .line 654
    :cond_9
    iget-object v0, p0, Lcom/android/settings/wifi/WifiLayer;->mApOtherList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 655
    monitor-exit p0

    goto :goto_8

    :catchall_10
    move-exception v0

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_10

    throw v0
.end method

.method private findApLocked(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/wifi/AccessPointState;
    .registers 7
    .parameter "networkId"
    .parameter "bssid"
    .parameter "ssid"
    .parameter "security"

    .prologue
    .line 903
    iget-object v1, p0, Lcom/android/settings/wifi/WifiLayer;->mApScanList:Ljava/util/List;

    invoke-static {v1, p1, p2, p3, p4}, Lcom/android/settings/wifi/WifiLayer;->findApLocked(Ljava/util/List;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/wifi/AccessPointState;

    move-result-object v0

    .line 904
    .local v0, ap:Lcom/android/settings/wifi/AccessPointState;
    if-nez v0, :cond_e

    .line 905
    iget-object v1, p0, Lcom/android/settings/wifi/WifiLayer;->mApOtherList:Ljava/util/List;

    invoke-static {v1, p1, p2, p3, p4}, Lcom/android/settings/wifi/WifiLayer;->findApLocked(Ljava/util/List;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/wifi/AccessPointState;

    move-result-object v0

    .line 907
    :cond_e
    return-object v0
.end method

.method private static findApLocked(Ljava/util/List;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/wifi/AccessPointState;
    .registers 9
    .parameter
    .parameter "networkId"
    .parameter "bssid"
    .parameter "ssid"
    .parameter "security"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/wifi/AccessPointState;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/settings/wifi/AccessPointState;"
        }
    .end annotation

    .prologue
    .local p0, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/wifi/AccessPointState;>;"
    const/4 v3, 0x1

    .line 887
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    sub-int v1, v2, v3

    .local v1, i:I
    :goto_7
    if-ltz v1, :cond_1a

    .line 888
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/AccessPointState;

    .line 889
    .local v0, ap:Lcom/android/settings/wifi/AccessPointState;
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/settings/wifi/AccessPointState;->matches(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-lt v2, v3, :cond_17

    move-object v2, v0

    .line 894
    .end local v0           #ap:Lcom/android/settings/wifi/AccessPointState;
    :goto_16
    return-object v2

    .line 887
    .restart local v0       #ap:Lcom/android/settings/wifi/AccessPointState;
    :cond_17
    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    .line 894
    .end local v0           #ap:Lcom/android/settings/wifi/AccessPointState;
    :cond_1a
    const/4 v2, 0x0

    goto :goto_16
.end method

.method private findConfiguredNetwork(Lcom/android/settings/wifi/AccessPointState;)Landroid/net/wifi/WifiConfiguration;
    .registers 7
    .parameter "state"

    .prologue
    const/4 v4, 0x1

    .line 863
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiLayer;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    .line 865
    .local v2, wifiConfigs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    sub-int v0, v3, v4

    .local v0, i:I
    :goto_b
    if-ltz v0, :cond_1e

    .line 866
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 867
    .local v1, wifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p1, v1}, Lcom/android/settings/wifi/AccessPointState;->matchesWifiConfiguration(Landroid/net/wifi/WifiConfiguration;)I

    move-result v3

    if-lt v3, v4, :cond_1b

    move-object v3, v1

    .line 872
    .end local v1           #wifiConfig:Landroid/net/wifi/WifiConfiguration;
    :goto_1a
    return-object v3

    .line 865
    .restart local v1       #wifiConfig:Landroid/net/wifi/WifiConfiguration;
    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 872
    .end local v1           #wifiConfig:Landroid/net/wifi/WifiConfiguration;
    :cond_1e
    const/4 v3, 0x0

    goto :goto_1a
.end method

.method private getApsSortedByPriorityLocked()Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/wifi/AccessPointState;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1205
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiLayer;->mApScanList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiLayer;->mApOtherList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1207
    .local v0, allAps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/wifi/AccessPointState;>;"
    iget-object v1, p0, Lcom/android/settings/wifi/WifiLayer;->mApScanList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1208
    iget-object v1, p0, Lcom/android/settings/wifi/WifiLayer;->mApOtherList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1211
    new-instance v1, Lcom/android/settings/wifi/WifiLayer$2;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiLayer$2;-><init>(Lcom/android/settings/wifi/WifiLayer;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1217
    return-object v0
.end method

.method private getConfiguredNetworks()Ljava/util/List;
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
    .line 876
    iget-object v1, p0, Lcom/android/settings/wifi/WifiLayer;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    .line 877
    .local v0, wifiConfigs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    return-object v0
.end method

.method private getCurrentAp()Lcom/android/settings/wifi/AccessPointState;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 985
    iget-object v2, p0, Lcom/android/settings/wifi/WifiLayer;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 987
    .local v1, wifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    .line 988
    .local v0, ssid:Ljava/lang/String;
    if-eqz v0, :cond_1a

    .line 993
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v2

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3, v0, v4}, Lcom/android/settings/wifi/WifiLayer;->findApLocked(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/wifi/AccessPointState;

    move-result-object v2

    .line 995
    :goto_19
    return-object v2

    :cond_1a
    move-object v2, v4

    goto :goto_19
.end method

.method private getNextHighestPriority()I
    .registers 3

    .prologue
    .line 1162
    iget v0, p0, Lcom/android/settings/wifi/WifiLayer;->mNextHighestPriority:I

    const v1, 0x1869f

    if-le v0, v1, :cond_a

    .line 1163
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiLayer;->shiftPriorities()Z

    .line 1166
    :cond_a
    iget v0, p0, Lcom/android/settings/wifi/WifiLayer;->mNextHighestPriority:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/settings/wifi/WifiLayer;->mNextHighestPriority:I

    return v0
.end method

.method private handleDisablingScanWhileObtainingAddress(Landroid/net/NetworkInfo$DetailedState;)V
    .registers 3
    .parameter "detailedState"

    .prologue
    .line 1335
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v0, :cond_b

    .line 1336
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiLayer;->mIsObtainingAddress:Z

    .line 1339
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiLayer;->removeFutureScans()V

    .line 1347
    :goto_a
    return-void

    .line 1342
    :cond_b
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiLayer;->mIsObtainingAddress:Z

    .line 1345
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiLayer;->queueContinuousScan()V

    goto :goto_a
.end method

.method private handleNetworkIdsChanged()V
    .registers 9

    .prologue
    .line 1628
    monitor-enter p0

    .line 1629
    :try_start_1
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiLayer;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    .line 1631
    .local v2, configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int v3, v4, v5

    .local v3, i:I
    :goto_c
    if-ltz v3, :cond_2f

    .line 1632
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 1636
    .local v1, config:Landroid/net/wifi/WifiConfiguration;
    const/4 v4, -0x2

    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/settings/wifi/AccessPointState;->getWifiConfigurationSecurity(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/android/settings/wifi/WifiLayer;->findApLocked(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/wifi/AccessPointState;

    move-result-object v0

    .line 1639
    .local v0, ap:Lcom/android/settings/wifi/AccessPointState;
    if-nez v0, :cond_26

    .line 1631
    :goto_23
    add-int/lit8 v3, v3, -0x1

    goto :goto_c

    .line 1643
    :cond_26
    iget v4, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v0, v4}, Lcom/android/settings/wifi/AccessPointState;->setNetworkId(I)V

    goto :goto_23

    .line 1645
    .end local v0           #ap:Lcom/android/settings/wifi/AccessPointState;
    .end local v1           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v2           #configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v3           #i:I
    :catchall_2c
    move-exception v4

    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_2c

    throw v4

    .restart local v2       #configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .restart local v3       #i:I
    :cond_2f
    :try_start_2f
    monitor-exit p0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2c

    .line 1646
    return-void
.end method

.method private handleNetworkStateChanged(Landroid/net/NetworkInfo;Ljava/lang/String;)V
    .registers 10
    .parameter "info"
    .parameter "bssid"

    .prologue
    const/4 v6, 0x0

    const-string v5, "SettingsWifiLayer"

    .line 1262
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiLayer;->getCurrentAp()Lcom/android/settings/wifi/AccessPointState;

    move-result-object v0

    .line 1263
    .local v0, ap:Lcom/android/settings/wifi/AccessPointState;
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    .line 1266
    .local v1, detailedState:Landroid/net/NetworkInfo$DetailedState;
    const-string v3, "SettingsWifiLayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "State change received "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", or "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " matched to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiLayer;->handleDisablingScanWhileObtainingAddress(Landroid/net/NetworkInfo$DetailedState;)V

    .line 1273
    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiLayer;->refreshStatus(Lcom/android/settings/wifi/AccessPointState;Landroid/net/NetworkInfo$DetailedState;)V

    .line 1275
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v3, v4}, Landroid/net/NetworkInfo$State;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1276
    .local v2, isDisconnected:Z
    if-eqz v0, :cond_92

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v3

    if-eqz v3, :cond_92

    .line 1277
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiLayer;->setPrimaryAp(Lcom/android/settings/wifi/AccessPointState;)V

    .line 1280
    const-string v3, "SettingsWifiLayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Updated "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to be primary"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    :goto_7e
    if-eqz v0, :cond_8e

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-nez v3, :cond_8a

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-ne v1, v3, :cond_8e

    .line 1327
    :cond_8a
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/android/settings/wifi/AccessPointState;->setSeen(Z)V

    .line 1330
    :cond_8e
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiLayer;->attemptReenableAllAps()V

    .line 1331
    return-void

    .line 1283
    :cond_92
    if-eqz v2, :cond_9f

    .line 1290
    invoke-direct {p0, v6}, Lcom/android/settings/wifi/WifiLayer;->setPrimaryAp(Lcom/android/settings/wifi/AccessPointState;)V

    .line 1293
    const-string v3, "SettingsWifiLayer"

    const-string v3, " Cleared primary"

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7e

    .line 1296
    :cond_9f
    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1, v3}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b8

    .line 1302
    invoke-direct {p0, v6}, Lcom/android/settings/wifi/WifiLayer;->setPrimaryAp(Lcom/android/settings/wifi/AccessPointState;)V

    .line 1305
    if-eqz v0, :cond_b1

    .line 1307
    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v3}, Lcom/android/settings/wifi/AccessPointState;->setStatus(Landroid/net/NetworkInfo$DetailedState;)V

    .line 1310
    :cond_b1
    const v3, 0x7f08017f

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiLayer;->error(I)V

    goto :goto_7e

    .line 1313
    :cond_b8
    const-string v3, "SettingsWifiLayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Did not update any AP to primary, could have updated "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " but we aren\'t connected or connecting"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7e
.end method

.method private handleScanResultsAvailable()V
    .registers 14

    .prologue
    const/4 v12, 0x1

    const-string v9, "any"

    const-string v9, "SettingsWifiLayer"

    .line 1350
    monitor-enter p0

    .line 1352
    :try_start_6
    iget-object v4, p0, Lcom/android/settings/wifi/WifiLayer;->mApScanList:Ljava/util/List;

    .line 1353
    .local v4, oldScanList:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/wifi/AccessPointState;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    invoke-direct {v3, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 1356
    .local v3, newScanList:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/wifi/AccessPointState;>;"
    iget-object v9, p0, Lcom/android/settings/wifi/WifiLayer;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v2

    .line 1359
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    const-string v9, "SettingsWifiLayer"

    const-string v10, "handleScanResultsAvailable : start "

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    if-nez v2, :cond_27

    .line 1361
    const-string v9, "SettingsWifiLayer"

    const-string v10, "handleScanResultsAvailable : scan list is null "

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1363
    :cond_27
    if-eqz v2, :cond_e5

    .line 1364
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    sub-int v1, v9, v12

    .local v1, i:I
    :goto_2f
    if-ltz v1, :cond_e5

    .line 1365
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/ScanResult;

    .line 1370
    .local v6, scanResult:Landroid/net/wifi/ScanResult;
    const-string v9, "SettingsWifiLayer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "    "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1374
    if-nez v6, :cond_54

    .line 1364
    :cond_51
    :goto_51
    add-int/lit8 v1, v1, -0x1

    goto :goto_2f

    .line 1382
    :cond_54
    invoke-static {v6}, Lcom/android/settings/wifi/AccessPointState;->isAdhoc(Landroid/net/wifi/ScanResult;)Z

    move-result v9

    if-nez v9, :cond_51

    invoke-static {v6}, Lcom/android/settings/wifi/AccessPointState;->isEnterprise(Landroid/net/wifi/ScanResult;)Z

    move-result v9

    if-nez v9, :cond_51

    iget-object v9, v6, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_51

    .line 1390
    iget-object v9, v6, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v9}, Lcom/android/settings/wifi/AccessPointState;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1391
    .local v8, ssid:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/settings/wifi/AccessPointState;->getScanResultSecurity(Landroid/net/wifi/ScanResult;)Ljava/lang/String;

    move-result-object v7

    .line 1396
    .local v7, security:Ljava/lang/String;
    const/4 v9, -0x2

    const-string v10, "any"

    invoke-static {v3, v9, v10, v8, v7}, Lcom/android/settings/wifi/WifiLayer;->findApLocked(Ljava/util/List;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/wifi/AccessPointState;

    move-result-object v0

    .line 1400
    .local v0, ap:Lcom/android/settings/wifi/AccessPointState;
    if-eqz v0, :cond_95

    .line 1402
    iget v9, v6, Landroid/net/wifi/ScanResult;->level:I

    iget v10, v0, Lcom/android/settings/wifi/AccessPointState;->signal:I

    invoke-static {v9, v10}, Landroid/net/wifi/WifiManager;->compareSignalLevel(II)I

    move-result v9

    if-lez v9, :cond_8a

    .line 1403
    iget v9, v6, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v0, v9}, Lcom/android/settings/wifi/AccessPointState;->setSignal(I)V

    .line 1409
    :cond_8a
    const-string v9, "SettingsWifiLayer"

    const-string v10, "         Already seen, continuing.."

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_51

    .line 1513
    .end local v0           #ap:Lcom/android/settings/wifi/AccessPointState;
    .end local v1           #i:I
    .end local v2           #list:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    .end local v3           #newScanList:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/wifi/AccessPointState;>;"
    .end local v4           #oldScanList:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/wifi/AccessPointState;>;"
    .end local v6           #scanResult:Landroid/net/wifi/ScanResult;
    .end local v7           #security:Ljava/lang/String;
    .end local v8           #ssid:Ljava/lang/String;
    :catchall_92
    move-exception v9

    monitor-exit p0
    :try_end_94
    .catchall {:try_start_6 .. :try_end_94} :catchall_92

    throw v9

    .line 1418
    .restart local v0       #ap:Lcom/android/settings/wifi/AccessPointState;
    .restart local v1       #i:I
    .restart local v2       #list:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    .restart local v3       #newScanList:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/wifi/AccessPointState;>;"
    .restart local v4       #oldScanList:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/wifi/AccessPointState;>;"
    .restart local v6       #scanResult:Landroid/net/wifi/ScanResult;
    .restart local v7       #security:Ljava/lang/String;
    .restart local v8       #ssid:Ljava/lang/String;
    :cond_95
    const/4 v9, -0x2

    :try_start_96
    const-string v10, "any"

    invoke-direct {p0, v9, v10, v8, v7}, Lcom/android/settings/wifi/WifiLayer;->findApLocked(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/wifi/AccessPointState;

    move-result-object v0

    .line 1421
    if-eqz v0, :cond_c5

    .line 1423
    invoke-interface {v4, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1424
    iget-object v9, p0, Lcom/android/settings/wifi/WifiLayer;->mApOtherList:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1434
    :goto_a6
    invoke-virtual {v0, v6}, Lcom/android/settings/wifi/AccessPointState;->updateFromScanResult(Landroid/net/wifi/ScanResult;)V

    .line 1436
    iget-object v9, p0, Lcom/android/settings/wifi/WifiLayer;->mCallback:Lcom/android/settings/wifi/WifiLayer$Callback;

    if-eqz v9, :cond_b3

    .line 1437
    iget-object v9, p0, Lcom/android/settings/wifi/WifiLayer;->mCallback:Lcom/android/settings/wifi/WifiLayer$Callback;

    const/4 v10, 0x1

    invoke-interface {v9, v0, v10}, Lcom/android/settings/wifi/WifiLayer$Callback;->onAccessPointSetChanged(Lcom/android/settings/wifi/AccessPointState;Z)V

    .line 1440
    :cond_b3
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1446
    iget-boolean v9, v0, Lcom/android/settings/wifi/AccessPointState;->hiddenSsid:Z

    if-eqz v9, :cond_51

    .line 1448
    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPointState;->Reset_notSeen()V

    .line 1449
    const-string v9, "SettingsWifiLayer"

    const-string v10, "[yoohoo] handleScanResultsAvailable: hidden ssid is in scan result. Reset notSeen"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_51

    .line 1426
    :cond_c5
    new-instance v0, Lcom/android/settings/wifi/AccessPointState;

    .end local v0           #ap:Lcom/android/settings/wifi/AccessPointState;
    iget-object v9, p0, Lcom/android/settings/wifi/WifiLayer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v9}, Lcom/android/settings/wifi/AccessPointState;-><init>(Landroid/content/Context;)V

    .line 1429
    .restart local v0       #ap:Lcom/android/settings/wifi/AccessPointState;
    const-string v9, "SettingsWifiLayer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Created "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a6

    .line 1458
    .end local v0           #ap:Lcom/android/settings/wifi/AccessPointState;
    .end local v1           #i:I
    .end local v6           #scanResult:Landroid/net/wifi/ScanResult;
    .end local v7           #security:Ljava/lang/String;
    .end local v8           #ssid:Ljava/lang/String;
    :cond_e5
    iget-object v5, p0, Lcom/android/settings/wifi/WifiLayer;->mApOtherList:Ljava/util/List;

    .line 1459
    .local v5, otherList:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/wifi/AccessPointState;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    sub-int v1, v9, v12

    .restart local v1       #i:I
    :goto_ed
    if-ltz v1, :cond_185

    .line 1460
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/AccessPointState;

    .line 1462
    .restart local v0       #ap:Lcom/android/settings/wifi/AccessPointState;
    iget-boolean v9, v0, Lcom/android/settings/wifi/AccessPointState;->configured:Z

    if-eqz v9, :cond_17a

    .line 1470
    iget-boolean v9, v0, Lcom/android/settings/wifi/AccessPointState;->hiddenSsid:Z

    if-eqz v9, :cond_16b

    .line 1472
    const-string v9, "SettingsWifiLayer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[yoohoo] handleScanResultsAvailable: hidden ssid :  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v0, Lcom/android/settings/wifi/AccessPointState;->ssid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1473
    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPointState;->get_notSeen()I

    move-result v9

    iget v10, p0, Lcom/android/settings/wifi/WifiLayer;->mNumofHiddenSSID:I

    add-int/lit8 v10, v10, 0x2

    if-le v9, v10, :cond_135

    .line 1475
    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPointState;->Reset_notSeen()V

    .line 1476
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Lcom/android/settings/wifi/AccessPointState;->setSeen(Z)V

    .line 1477
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1478
    const-string v9, "SettingsWifiLayer"

    const-string v10, "handleScanResultsAvailable : Delete Hidden SSID"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1459
    :goto_132
    add-int/lit8 v1, v1, -0x1

    goto :goto_ed

    .line 1482
    :cond_135
    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPointState;->Increase_notSeen()V

    .line 1483
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1484
    const-string v9, "SettingsWifiLayer"

    const-string v10, "handleScanResultsAvailable : Skip deleting Hidden SSID"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1485
    const-string v9, "SettingsWifiLayer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handleScanResultsAvailable : Num of hidden "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/settings/wifi/WifiLayer;->mNumofHiddenSSID:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", notSeen "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPointState;->get_notSeen()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_132

    .line 1490
    :cond_16b
    const-string v9, "SettingsWifiLayer"

    const-string v10, "handleScanResultsAvailable: Set not seen"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1491
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Lcom/android/settings/wifi/AccessPointState;->setSeen(Z)V

    .line 1492
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_132

    .line 1504
    :cond_17a
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiLayer;->removeApFromUi(Lcom/android/settings/wifi/AccessPointState;)V

    .line 1507
    const-string v9, "SettingsWifiLayer"

    const-string v10, "handleScanResultsAvailable: Remove AP from UI"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_132

    .line 1512
    .end local v0           #ap:Lcom/android/settings/wifi/AccessPointState;
    :cond_185
    iput-object v3, p0, Lcom/android/settings/wifi/WifiLayer;->mApScanList:Ljava/util/List;

    .line 1513
    monitor-exit p0
    :try_end_188
    .catchall {:try_start_96 .. :try_end_188} :catchall_92

    .line 1515
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiLayer;->onScanningEnded()V

    .line 1520
    iget-object v9, p0, Lcom/android/settings/wifi/WifiLayer;->mHandler:Landroid/os/Handler;

    const/16 v10, 0x63

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 1523
    return-void
.end method

.method private handleSignalChanged(I)V
    .registers 3
    .parameter "rssi"

    .prologue
    .line 1600
    iget-object v0, p0, Lcom/android/settings/wifi/WifiLayer;->mCurrentPrimaryAp:Lcom/android/settings/wifi/AccessPointState;

    if-eqz v0, :cond_9

    .line 1601
    iget-object v0, p0, Lcom/android/settings/wifi/WifiLayer;->mCurrentPrimaryAp:Lcom/android/settings/wifi/AccessPointState;

    invoke-virtual {v0, p1}, Lcom/android/settings/wifi/AccessPointState;->setSignal(I)V

    .line 1603
    :cond_9
    return-void
.end method

.method private handleSupplicantConnectionChanged(Z)V
    .registers 5
    .parameter "connected"

    .prologue
    const-string v2, "SettingsWifiLayer"

    .line 1528
    const-string v0, "SettingsWifiLayer"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleSupplicantConnectionChanged: Connected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1530
    iget-object v0, p0, Lcom/android/settings/wifi/WifiLayer;->mCallback:Lcom/android/settings/wifi/WifiLayer$Callback;

    if-eqz v0, :cond_23

    .line 1531
    iget-object v0, p0, Lcom/android/settings/wifi/WifiLayer;->mCallback:Lcom/android/settings/wifi/WifiLayer$Callback;

    invoke-interface {v0, p1}, Lcom/android/settings/wifi/WifiLayer$Callback;->onAccessPointsStateChanged(Z)V

    .line 1534
    :cond_23
    if-eqz p1, :cond_2a

    .line 1535
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiLayer;->refreshAll(Z)V

    .line 1554
    :goto_29
    return-void

    .line 1544
    :cond_2a
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiLayer;->removeFutureScans()V

    .line 1547
    iget-object v0, p0, Lcom/android/settings/wifi/WifiLayer;->mCallback:Lcom/android/settings/wifi/WifiLayer$Callback;

    if-eqz v0, :cond_37

    .line 1548
    iget-object v0, p0, Lcom/android/settings/wifi/WifiLayer;->mCallback:Lcom/android/settings/wifi/WifiLayer$Callback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/settings/wifi/WifiLayer$Callback;->onScanningStatusChanged(Z)V

    .line 1551
    :cond_37
    const-string v0, "SettingsWifiLayer"

    const-string v0, "handleSupplicantConnectionChanged: removeFutureScans()"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29
.end method

.method private handleSupplicantStateChanged(Landroid/net/wifi/SupplicantState;ZI)V
    .registers 5
    .parameter "state"
    .parameter "hasError"
    .parameter "error"

    .prologue
    .line 1606
    iput-object p1, p0, Lcom/android/settings/wifi/WifiLayer;->mCurrentSupplicantState:Landroid/net/wifi/SupplicantState;

    .line 1608
    sget-object v0, Landroid/net/wifi/SupplicantState;->FOUR_WAY_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v0, p1}, Landroid/net/wifi/SupplicantState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1609
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiLayer;->getCurrentAp()Lcom/android/settings/wifi/AccessPointState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiLayer;->mLastAuthenticatingAp:Lcom/android/settings/wifi/AccessPointState;

    .line 1612
    :cond_10
    if-eqz p2, :cond_15

    .line 1613
    invoke-direct {p0, p3}, Lcom/android/settings/wifi/WifiLayer;->handleSupplicantStateError(I)V

    .line 1615
    :cond_15
    return-void
.end method

.method private handleSupplicantStateError(I)V
    .registers 4
    .parameter "supplicantError"

    .prologue
    .line 1618
    const/4 v0, 0x1

    if-ne p1, v0, :cond_12

    .line 1619
    iget-object v0, p0, Lcom/android/settings/wifi/WifiLayer;->mCallback:Lcom/android/settings/wifi/WifiLayer$Callback;

    if-eqz v0, :cond_12

    .line 1620
    iget-object v0, p0, Lcom/android/settings/wifi/WifiLayer;->mLastAuthenticatingAp:Lcom/android/settings/wifi/AccessPointState;

    if-eqz v0, :cond_12

    .line 1621
    iget-object v0, p0, Lcom/android/settings/wifi/WifiLayer;->mCallback:Lcom/android/settings/wifi/WifiLayer$Callback;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiLayer;->mLastAuthenticatingAp:Lcom/android/settings/wifi/AccessPointState;

    invoke-interface {v0, v1}, Lcom/android/settings/wifi/WifiLayer$Callback;->onRetryPassword(Lcom/android/settings/wifi/AccessPointState;)V

    .line 1625
    :cond_12
    return-void
.end method

.method private handleWifiStateChanged(I)V
    .registers 10
    .parameter "wifiState"

    .prologue
    const/16 v7, 0x63

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v3, "SettingsWifiLayer"

    .line 1559
    const-string v0, "SettingsWifiLayer"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleWifiStateChanged : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1562
    if-ne p1, v6, :cond_42

    .line 1563
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiLayer;->loadConfiguredAccessPoints()V

    .line 1564
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiLayer;->attemptScan()V

    .line 1569
    iget-object v0, p0, Lcom/android/settings/wifi/WifiLayer;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v7, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1570
    const-string v0, "SettingsWifiLayer"

    const-string v0, "handleWifiStateChanged : set timer to attemptScan"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1593
    :cond_35
    :goto_35
    iget-object v0, p0, Lcom/android/settings/wifi/WifiLayer;->mCallback:Lcom/android/settings/wifi/WifiLayer$Callback;

    if-eqz v0, :cond_41

    .line 1594
    iget-object v0, p0, Lcom/android/settings/wifi/WifiLayer;->mCallback:Lcom/android/settings/wifi/WifiLayer$Callback;

    if-ne p1, v6, :cond_60

    move v1, v5

    :goto_3e
    invoke-interface {v0, v1}, Lcom/android/settings/wifi/WifiLayer$Callback;->onAccessPointsStateChanged(Z)V

    .line 1596
    :cond_41
    return-void

    .line 1574
    :cond_42
    if-ne p1, v5, :cond_35

    .line 1575
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiLayer;->removeFutureScans()V

    .line 1576
    const-string v0, "SettingsWifiLayer"

    const-string v0, "Clearing AP lists because wifi is disabled"

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1577
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiLayer;->clearApLists()V

    .line 1582
    iget-object v0, p0, Lcom/android/settings/wifi/WifiLayer;->mCallback:Lcom/android/settings/wifi/WifiLayer$Callback;

    if-eqz v0, :cond_5a

    .line 1583
    iget-object v0, p0, Lcom/android/settings/wifi/WifiLayer;->mCallback:Lcom/android/settings/wifi/WifiLayer$Callback;

    invoke-interface {v0, v4}, Lcom/android/settings/wifi/WifiLayer$Callback;->onScanningStatusChanged(Z)V

    .line 1588
    :cond_5a
    iget-object v0, p0, Lcom/android/settings/wifi/WifiLayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_35

    :cond_60
    move v1, v4

    .line 1594
    goto :goto_3e
.end method

.method private hasApInstanceLocked(Lcom/android/settings/wifi/AccessPointState;)Z
    .registers 5
    .parameter "state"

    .prologue
    const/4 v2, 0x1

    .line 921
    iget-object v1, p0, Lcom/android/settings/wifi/WifiLayer;->mApScanList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int v0, v1, v2

    .local v0, i:I
    :goto_9
    if-ltz v0, :cond_18

    .line 922
    iget-object v1, p0, Lcom/android/settings/wifi/WifiLayer;->mApScanList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_15

    move v1, v2

    .line 933
    :goto_14
    return v1

    .line 921
    :cond_15
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 927
    :cond_18
    iget-object v1, p0, Lcom/android/settings/wifi/WifiLayer;->mApOtherList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int v0, v1, v2

    :goto_20
    if-ltz v0, :cond_2f

    .line 928
    iget-object v1, p0, Lcom/android/settings/wifi/WifiLayer;->mApOtherList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_2c

    move v1, v2

    .line 929
    goto :goto_14

    .line 927
    :cond_2c
    add-int/lit8 v0, v0, -0x1

    goto :goto_20

    .line 933
    :cond_2f
    const/4 v1, 0x0

    goto :goto_14
.end method

.method private isConsideredForHighestPriority(Lcom/android/settings/wifi/AccessPointState;)Z
    .registers 4
    .parameter "state"

    .prologue
    .line 1147
    iget-boolean v0, p1, Lcom/android/settings/wifi/AccessPointState;->configured:Z

    if-eqz v0, :cond_10

    iget v0, p1, Lcom/android/settings/wifi/AccessPointState;->networkId:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_10

    iget v0, p1, Lcom/android/settings/wifi/AccessPointState;->networkId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private loadConfiguredAccessPoints()V
    .registers 11

    .prologue
    const/4 v8, 0x1

    const-string v9, "SettingsWifiLayer"

    .line 937
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiLayer;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    .line 941
    .local v2, configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/settings/wifi/WifiLayer;->mNumofHiddenSSID:I

    .line 944
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    sub-int v3, v4, v8

    .local v3, i:I
    :goto_10
    if-ltz v3, :cond_77

    .line 945
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 949
    .local v1, config:Landroid/net/wifi/WifiConfiguration;
    iget-boolean v4, v1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    if-eqz v4, :cond_22

    .line 951
    iget v4, p0, Lcom/android/settings/wifi/WifiLayer;->mNumofHiddenSSID:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/settings/wifi/WifiLayer;->mNumofHiddenSSID:I

    .line 956
    :cond_22
    monitor-enter p0

    .line 957
    :try_start_23
    iget v4, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/settings/wifi/AccessPointState;->getWifiConfigurationSecurity(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/android/settings/wifi/WifiLayer;->findApLocked(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/wifi/AccessPointState;

    move-result-object v0

    .line 960
    .local v0, ap:Lcom/android/settings/wifi/AccessPointState;
    if-eqz v0, :cond_37

    .line 962
    monitor-exit p0

    .line 944
    :cond_34
    :goto_34
    add-int/lit8 v3, v3, -0x1

    goto :goto_10

    .line 965
    :cond_37
    new-instance v0, Lcom/android/settings/wifi/AccessPointState;

    .end local v0           #ap:Lcom/android/settings/wifi/AccessPointState;
    iget-object v4, p0, Lcom/android/settings/wifi/WifiLayer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Lcom/android/settings/wifi/AccessPointState;-><init>(Landroid/content/Context;)V

    .line 966
    .restart local v0       #ap:Lcom/android/settings/wifi/AccessPointState;
    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/AccessPointState;->updateFromWifiConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    .line 967
    const-string v4, "SettingsWifiLayer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Created "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in loadConfiguredAccessPoints"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    iget-object v4, p0, Lcom/android/settings/wifi/WifiLayer;->mApOtherList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 969
    monitor-exit p0
    :try_end_65
    .catchall {:try_start_23 .. :try_end_65} :catchall_74

    .line 972
    iget v4, v0, Lcom/android/settings/wifi/AccessPointState;->priority:I

    invoke-direct {p0, v4}, Lcom/android/settings/wifi/WifiLayer;->checkNextHighestPriority(I)V

    .line 974
    iget-object v4, p0, Lcom/android/settings/wifi/WifiLayer;->mCallback:Lcom/android/settings/wifi/WifiLayer$Callback;

    if-eqz v4, :cond_34

    .line 975
    iget-object v4, p0, Lcom/android/settings/wifi/WifiLayer;->mCallback:Lcom/android/settings/wifi/WifiLayer$Callback;

    invoke-interface {v4, v0, v8}, Lcom/android/settings/wifi/WifiLayer$Callback;->onAccessPointSetChanged(Lcom/android/settings/wifi/AccessPointState;Z)V

    goto :goto_34

    .line 969
    .end local v0           #ap:Lcom/android/settings/wifi/AccessPointState;
    :catchall_74
    move-exception v4

    :try_start_75
    monitor-exit p0
    :try_end_76
    .catchall {:try_start_75 .. :try_end_76} :catchall_74

    throw v4

    .line 980
    .end local v1           #config:Landroid/net/wifi/WifiConfiguration;
    :cond_77
    const-string v4, "SettingsWifiLayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadConfiguredAccessPoints : number of hidden ssid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/wifi/WifiLayer;->mNumofHiddenSSID:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    return-void
.end method

.method private managerEnableNetwork(Lcom/android/settings/wifi/AccessPointState;Z)Z
    .registers 6
    .parameter "state"
    .parameter "disableOthers"

    .prologue
    const/4 v2, 0x0

    .line 818
    iget-object v0, p0, Lcom/android/settings/wifi/WifiLayer;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v1, p1, Lcom/android/settings/wifi/AccessPointState;->networkId:I

    invoke-virtual {v0, v1, p2}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    move-result v0

    if-nez v0, :cond_d

    move v0, v2

    .line 825
    :goto_c
    return v0

    .line 823
    :cond_d
    invoke-virtual {p1, v2}, Lcom/android/settings/wifi/AccessPointState;->setDisabled(Z)V

    .line 825
    const/4 v0, 0x1

    goto :goto_c
.end method

.method private managerSaveConfiguration()Z
    .registers 3

    .prologue
    .line 804
    iget-object v1, p0, Lcom/android/settings/wifi/WifiLayer;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    move-result v0

    .line 812
    .local v0, retValue:Z
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiLayer;->handleNetworkIdsChanged()V

    .line 814
    return v0
.end method

.method private onScanningEnded()V
    .registers 3

    .prologue
    .line 780
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiLayer;->queueContinuousScan()V

    .line 782
    iget-object v0, p0, Lcom/android/settings/wifi/WifiLayer;->mCallback:Lcom/android/settings/wifi/WifiLayer$Callback;

    if-eqz v0, :cond_d

    .line 783
    iget-object v0, p0, Lcom/android/settings/wifi/WifiLayer;->mCallback:Lcom/android/settings/wifi/WifiLayer$Callback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/settings/wifi/WifiLayer$Callback;->onScanningStatusChanged(Z)V

    .line 785
    :cond_d
    return-void
.end method

.method private onScanningStarted()V
    .registers 3

    .prologue
    .line 774
    iget-object v0, p0, Lcom/android/settings/wifi/WifiLayer;->mCallback:Lcom/android/settings/wifi/WifiLayer$Callback;

    if-eqz v0, :cond_a

    .line 775
    iget-object v0, p0, Lcom/android/settings/wifi/WifiLayer;->mCallback:Lcom/android/settings/wifi/WifiLayer$Callback;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/settings/wifi/WifiLayer$Callback;->onScanningStatusChanged(Z)V

    .line 777
    :cond_a
    return-void
.end method

.method private postAttemptScan()V
    .registers 5

    .prologue
    const-string v2, "SettingsWifiLayer"

    .line 746
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiLayer;->onScanningStarted()V

    .line 748
    iget v0, p0, Lcom/android/settings/wifi/WifiLayer;->mScanRetryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/wifi/WifiLayer;->mScanRetryCount:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_21

    .line 751
    const-string v0, "SettingsWifiLayer"

    const-string v0, "postAttemptScan : scan retry"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiLayer;->removeFutureScans()V

    .line 755
    iget-object v0, p0, Lcom/android/settings/wifi/WifiLayer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 771
    :goto_20
    return-void

    .line 759
    :cond_21
    const-string v0, "SettingsWifiLayer"

    const-string v0, "postAttemptScan : scan retry count expired"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    const v0, 0x7f080163

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiLayer;->error(I)V

    .line 766
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/wifi/WifiLayer;->mScanRetryCount:I

    .line 769
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiLayer;->onScanningEnded()V

    goto :goto_20
.end method

.method private queueContinuousScan()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const-string v1, "SettingsWifiLayer"

    .line 688
    iget-object v0, p0, Lcom/android/settings/wifi/WifiLayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 690
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiLayer;->mIsObtainingAddress:Z

    if-nez v0, :cond_1e

    .line 695
    iget v0, p0, Lcom/android/settings/wifi/WifiLayer;->mScanRetryCount:I

    if-lez v0, :cond_1f

    .line 696
    const-string v0, "SettingsWifiLayer"

    const-string v0, "queueContinuousScan with SCAN_RETRY_DELAY_MS"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    iget-object v0, p0, Lcom/android/settings/wifi/WifiLayer;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 710
    :cond_1e
    :goto_1e
    return-void

    .line 699
    :cond_1f
    const-string v0, "SettingsWifiLayer"

    const-string v0, "queueContinuousScan with CONTINUOUS_SCAN_DELAY_MS"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    iget-object v0, p0, Lcom/android/settings/wifi/WifiLayer;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3a98

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1e
.end method

.method private refreshAll(Z)V
    .registers 4
    .parameter "attemptScan"

    .prologue
    .line 735
    const-string v0, "SettingsWifiLayer"

    const-string v1, "refreshAll"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiLayer;->loadConfiguredAccessPoints()V

    .line 738
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiLayer;->refreshStatus()V

    .line 740
    if-eqz p1, :cond_12

    .line 741
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiLayer;->attemptScan()V

    .line 743
    :cond_12
    return-void
.end method

.method private refreshStatus()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 1225
    invoke-direct {p0, v0, v0}, Lcom/android/settings/wifi/WifiLayer;->refreshStatus(Lcom/android/settings/wifi/AccessPointState;Landroid/net/NetworkInfo$DetailedState;)V

    .line 1226
    return-void
.end method

.method private refreshStatus(Lcom/android/settings/wifi/AccessPointState;Landroid/net/NetworkInfo$DetailedState;)V
    .registers 8
    .parameter "ap"
    .parameter "detailedState"

    .prologue
    .line 1229
    iget-object v1, p0, Lcom/android/settings/wifi/WifiLayer;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 1230
    .local v0, wifiInfo:Landroid/net/wifi/WifiInfo;
    if-nez p2, :cond_10

    .line 1231
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v1

    invoke-static {v1}, Landroid/net/wifi/WifiInfo;->getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object p2

    .line 1234
    :cond_10
    if-nez p1, :cond_29

    invoke-static {p2}, Lcom/android/settings/wifi/WifiStatus;->isLiveConnection(Landroid/net/NetworkInfo$DetailedState;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 1239
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/settings/wifi/WifiLayer;->findApLocked(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/wifi/AccessPointState;

    move-result-object p1

    .line 1243
    :cond_29
    if-eqz p1, :cond_37

    .line 1244
    invoke-virtual {p1}, Lcom/android/settings/wifi/AccessPointState;->blockRefresh()V

    .line 1247
    invoke-virtual {p1, v0, p2}, Lcom/android/settings/wifi/AccessPointState;->updateFromWifiInfo(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V

    .line 1252
    invoke-virtual {p1, p2}, Lcom/android/settings/wifi/AccessPointState;->setStatus(Landroid/net/NetworkInfo$DetailedState;)V

    .line 1253
    invoke-virtual {p1}, Lcom/android/settings/wifi/AccessPointState;->unblockRefresh()V

    .line 1255
    :cond_37
    return-void
.end method

.method private removeApFromUi(Lcom/android/settings/wifi/AccessPointState;)V
    .registers 4
    .parameter "ap"

    .prologue
    .line 1051
    iget-object v0, p0, Lcom/android/settings/wifi/WifiLayer;->mCallback:Lcom/android/settings/wifi/WifiLayer$Callback;

    if-eqz v0, :cond_a

    .line 1052
    iget-object v0, p0, Lcom/android/settings/wifi/WifiLayer;->mCallback:Lcom/android/settings/wifi/WifiLayer$Callback;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/settings/wifi/WifiLayer$Callback;->onAccessPointSetChanged(Lcom/android/settings/wifi/AccessPointState;Z)V

    .line 1054
    :cond_a
    return-void
.end method

.method private removeFutureScans()V
    .registers 3

    .prologue
    .line 713
    iget-object v0, p0, Lcom/android/settings/wifi/WifiLayer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 714
    return-void
.end method

.method private setHighestPriorityStateAndSave(Lcom/android/settings/wifi/AccessPointState;Landroid/net/wifi/WifiConfiguration;)Z
    .registers 8
    .parameter "state"
    .parameter "reusableConfiguration"

    .prologue
    const/4 v4, 0x0

    const-string v3, "SettingsWifiLayer"

    .line 1071
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiLayer;->isConsideredForHighestPriority(Lcom/android/settings/wifi/AccessPointState;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 1072
    const-string v1, "SettingsWifiLayer"

    const-string v1, "Could not set highest priority on state because state is not being considered."

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    .line 1107
    :goto_11
    return v1

    .line 1077
    :cond_12
    if-nez p2, :cond_19

    .line 1078
    new-instance p2, Landroid/net/wifi/WifiConfiguration;

    .end local p2
    invoke-direct {p2}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 1081
    .restart local p2
    :cond_19
    iget v0, p2, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 1082
    .local v0, oldPriority:I
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiLayer;->getNextHighestPriority()I

    move-result v1

    iput v1, p2, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 1083
    iget v1, p1, Lcom/android/settings/wifi/AccessPointState;->networkId:I

    iput v1, p2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 1085
    iget-object v1, p0, Lcom/android/settings/wifi/WifiLayer;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, p2}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_39

    .line 1087
    iput v0, p2, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 1088
    const-string v1, "SettingsWifiLayer"

    const-string v1, "Could not set highest priority on state because updating the supplicant network failed."

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    .line 1090
    goto :goto_11

    .line 1093
    :cond_39
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiLayer;->managerSaveConfiguration()Z

    move-result v1

    if-nez v1, :cond_4a

    .line 1094
    iput v0, p2, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 1095
    const-string v1, "SettingsWifiLayer"

    const-string v1, "Could not set highest priority on state because saving config failed."

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    .line 1097
    goto :goto_11

    .line 1100
    :cond_4a
    iget v1, p2, Landroid/net/wifi/WifiConfiguration;->priority:I

    iput v1, p1, Lcom/android/settings/wifi/AccessPointState;->priority:I

    .line 1103
    const-string v1, "SettingsWifiLayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Set highest priority to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/settings/wifi/AccessPointState;->priority:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    const/4 v1, 0x1

    goto :goto_11
.end method

.method private setPrimaryAp(Lcom/android/settings/wifi/AccessPointState;)V
    .registers 4
    .parameter "ap"

    .prologue
    .line 1000
    monitor-enter p0

    .line 1002
    :try_start_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiLayer;->mCurrentPrimaryAp:Lcom/android/settings/wifi/AccessPointState;

    if-eqz v0, :cond_b

    .line 1003
    iget-object v0, p0, Lcom/android/settings/wifi/WifiLayer;->mCurrentPrimaryAp:Lcom/android/settings/wifi/AccessPointState;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/AccessPointState;->setPrimary(Z)V

    .line 1006
    :cond_b
    iput-object p1, p0, Lcom/android/settings/wifi/WifiLayer;->mCurrentPrimaryAp:Lcom/android/settings/wifi/AccessPointState;

    .line 1007
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_15

    .line 1009
    if-eqz p1, :cond_14

    .line 1010
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/settings/wifi/AccessPointState;->setPrimary(Z)V

    .line 1012
    :cond_14
    return-void

    .line 1007
    :catchall_15
    move-exception v0

    :try_start_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v0
.end method

.method private shiftPriorities()Z
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 1175
    monitor-enter p0

    .line 1177
    :try_start_2
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiLayer;->getApsSortedByPriorityLocked()Ljava/util/ArrayList;

    move-result-object v0

    .line 1180
    .local v0, allAps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/wifi/AccessPointState;>;"
    new-instance v4, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v4}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 1183
    .local v4, updatePriorityConfig:Landroid/net/wifi/WifiConfiguration;
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/settings/wifi/WifiLayer;->mNextHighestPriority:I

    .line 1184
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1185
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_13
    if-ge v1, v2, :cond_34

    .line 1186
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/wifi/AccessPointState;

    .line 1188
    .local v3, state:Lcom/android/settings/wifi/AccessPointState;
    invoke-direct {p0, v3}, Lcom/android/settings/wifi/WifiLayer;->isConsideredForHighestPriority(Lcom/android/settings/wifi/AccessPointState;)Z

    move-result v5

    if-nez v5, :cond_24

    .line 1185
    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 1192
    :cond_24
    invoke-direct {p0, v3, v4}, Lcom/android/settings/wifi/WifiLayer;->setHighestPriorityStateAndSave(Lcom/android/settings/wifi/AccessPointState;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v5

    if-nez v5, :cond_21

    .line 1193
    const-string v5, "SettingsWifiLayer"

    const-string v6, "Could not shift priorities because setting the new priority failed."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    monitor-exit p0

    move v5, v7

    .line 1199
    .end local v3           #state:Lcom/android/settings/wifi/AccessPointState;
    :goto_33
    return v5

    :cond_34
    const/4 v5, 0x1

    monitor-exit p0

    goto :goto_33

    .line 1200
    .end local v0           #allAps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/wifi/AccessPointState;>;"
    .end local v1           #i:I
    .end local v2           #size:I
    .end local v4           #updatePriorityConfig:Landroid/net/wifi/WifiConfiguration;
    :catchall_37
    move-exception v5

    monitor-exit p0
    :try_end_39
    .catchall {:try_start_2 .. :try_end_39} :catchall_37

    throw v5
.end method


# virtual methods
.method public attemptScan()V
    .registers 3

    .prologue
    const-string v1, "SettingsWifiLayer"

    .line 664
    const-string v0, "SettingsWifiLayer"

    const-string v0, "attemptScan : start"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiLayer;->removeFutureScans()V

    .line 670
    iget-object v0, p0, Lcom/android/settings/wifi/WifiLayer;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_15

    .line 685
    :goto_14
    return-void

    .line 672
    :cond_15
    iget-object v0, p0, Lcom/android/settings/wifi/WifiLayer;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScanActive()Z

    move-result v0

    if-nez v0, :cond_28

    .line 675
    const-string v0, "SettingsWifiLayer"

    const-string v0, "attemptScan : fail to scan"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiLayer;->postAttemptScan()V

    goto :goto_14

    .line 681
    :cond_28
    const-string v0, "SettingsWifiLayer"

    const-string v0, "attemptScan : succeed to scan"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/wifi/WifiLayer;->mScanRetryCount:I

    goto :goto_14
.end method

.method public checkConfiguredNetwork(Lcom/android/settings/wifi/AccessPointState;)Z
    .registers 11
    .parameter "state"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v6, "SettingsWifiLayer"

    .line 511
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiLayer;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v3

    .line 512
    .local v3, wifiConfigs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    iget-object v1, p1, Lcom/android/settings/wifi/AccessPointState;->ssid:Ljava/lang/String;

    .line 514
    .local v1, org_ssid:Ljava/lang/String;
    const-string v4, "SettingsWifiLayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkConfiguredNetwork: ssid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    sub-int v0, v4, v8

    .local v0, i:I
    if-ltz v0, :cond_4a

    .line 517
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 519
    .local v2, wifiConfig:Landroid/net/wifi/WifiConfiguration;
    iget-object v4, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_41

    .line 520
    const-string v4, "SettingsWifiLayer"

    const-string v4, "checkConfiguredNetwork: the same AP exist"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v8

    .line 529
    .end local v2           #wifiConfig:Landroid/net/wifi/WifiConfiguration;
    :goto_40
    return v4

    .line 524
    .restart local v2       #wifiConfig:Landroid/net/wifi/WifiConfiguration;
    :cond_41
    const-string v4, "SettingsWifiLayer"

    const-string v4, "checkConfiguredNetwork: the same AP does not exist"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v7

    .line 525
    goto :goto_40

    .end local v2           #wifiConfig:Landroid/net/wifi/WifiConfiguration;
    :cond_4a
    move v4, v7

    .line 529
    goto :goto_40
.end method

.method public connectToNetwork(Lcom/android/settings/wifi/AccessPointState;)Z
    .registers 10
    .parameter "state"

    .prologue
    const v4, 0x7f080164

    const/4 v6, 0x1

    const/4 v3, 0x0

    const-string v7, "Could not enable network ID "

    const-string v5, "SettingsWifiLayer"

    .line 354
    const-string v1, "SettingsWifiLayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connecting to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiLayer;->findConfiguredNetwork(Lcom/android/settings/wifi/AccessPointState;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 361
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    const-string v1, "SettingsWifiLayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Found configured network "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    if-nez v0, :cond_79

    .line 369
    invoke-direct {p0, p1, v3}, Lcom/android/settings/wifi/WifiLayer;->addConfiguration(Lcom/android/settings/wifi/AccessPointState;I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 371
    if-nez v0, :cond_51

    .line 372
    const-string v1, "SettingsWifiLayer"

    const-string v1, "Config is still null, even after attempting to add it."

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/WifiLayer;->error(I)V

    move v1, v3

    .line 440
    :goto_50
    return v1

    .line 381
    :cond_51
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiLayer;->ensureTrackingState(Lcom/android/settings/wifi/AccessPointState;)V

    .line 388
    :goto_54
    invoke-direct {p0, p1, v3}, Lcom/android/settings/wifi/WifiLayer;->managerEnableNetwork(Lcom/android/settings/wifi/AccessPointState;Z)Z

    move-result v1

    if-nez v1, :cond_7d

    .line 389
    const-string v1, "SettingsWifiLayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not enable network ID "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/settings/wifi/AccessPointState;->networkId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/WifiLayer;->error(I)V

    move v1, v3

    .line 391
    goto :goto_50

    .line 384
    :cond_79
    invoke-virtual {p1, v0}, Lcom/android/settings/wifi/AccessPointState;->updateWifiConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_54

    .line 398
    :cond_7d
    invoke-direct {p0, p1, v0}, Lcom/android/settings/wifi/WifiLayer;->setHighestPriorityStateAndSave(Lcom/android/settings/wifi/AccessPointState;Landroid/net/wifi/WifiConfiguration;)Z

    .line 405
    iput-boolean v6, p0, Lcom/android/settings/wifi/WifiLayer;->mReenableApsOnNetworkStateChange:Z

    .line 406
    invoke-direct {p0, p1, v6}, Lcom/android/settings/wifi/WifiLayer;->managerEnableNetwork(Lcom/android/settings/wifi/AccessPointState;Z)Z

    move-result v1

    if-nez v1, :cond_a7

    .line 407
    const-string v1, "SettingsWifiLayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not enable network ID "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/settings/wifi/AccessPointState;->networkId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/WifiLayer;->error(I)V

    move v1, v3

    .line 409
    goto :goto_50

    .line 413
    :cond_a7
    const-string v1, "SettingsWifiLayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Enabled network "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/settings/wifi/AccessPointState;->networkId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    const-string v1, "SettingsWifiLayer"

    const-string v1, "Set timer to reenable AP disabled"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    iget-object v1, p0, Lcom/android/settings/wifi/WifiLayer;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x58

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 423
    iget-object v1, p0, Lcom/android/settings/wifi/WifiLayer;->mCurrentSupplicantState:Landroid/net/wifi/SupplicantState;

    sget-object v2, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    if-eq v1, v2, :cond_dd

    iget-object v1, p0, Lcom/android/settings/wifi/WifiLayer;->mCurrentSupplicantState:Landroid/net/wifi/SupplicantState;

    sget-object v2, Landroid/net/wifi/SupplicantState;->SCANNING:Landroid/net/wifi/SupplicantState;

    if-ne v1, v2, :cond_f7

    .line 427
    :cond_dd
    const-string v1, "SettingsWifiLayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connectToNetwork : reconnect : supplicant state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiLayer;->mCurrentSupplicantState:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    :cond_f7
    invoke-virtual {p1}, Lcom/android/settings/wifi/AccessPointState;->hasSecurity()Z

    move-result v1

    if-nez v1, :cond_100

    .line 437
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiLayer;->checkForExcessOpenNetworks()V

    :cond_100
    move v1, v6

    .line 440
    goto/16 :goto_50
.end method

.method public error(I)V
    .registers 4
    .parameter "messageResId"

    .prologue
    .line 721
    const-string v0, "SettingsWifiLayer"

    iget-object v1, p0, Lcom/android/settings/wifi/WifiLayer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    iget-object v0, p0, Lcom/android/settings/wifi/WifiLayer;->mCallback:Lcom/android/settings/wifi/WifiLayer$Callback;

    if-eqz v0, :cond_18

    .line 724
    iget-object v0, p0, Lcom/android/settings/wifi/WifiLayer;->mCallback:Lcom/android/settings/wifi/WifiLayer$Callback;

    invoke-interface {v0, p1}, Lcom/android/settings/wifi/WifiLayer$Callback;->onError(I)V

    .line 726
    :cond_18
    return-void
.end method

.method public forgetNetwork(Lcom/android/settings/wifi/AccessPointState;)Z
    .registers 9
    .parameter "state"

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    const-string v5, "SettingsWifiLayer"

    .line 593
    iget-boolean v2, p1, Lcom/android/settings/wifi/AccessPointState;->configured:Z

    if-nez v2, :cond_11

    .line 594
    const-string v2, "SettingsWifiLayer"

    const-string v2, "Inconsistent state:  Forgetting a network that is not configured."

    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v4

    .line 637
    :goto_10
    return v2

    .line 598
    :cond_11
    iget v1, p1, Lcom/android/settings/wifi/AccessPointState;->networkId:I

    .line 602
    .local v1, oldNetworkId:I
    iget-boolean v0, p1, Lcom/android/settings/wifi/AccessPointState;->hiddenSsid:Z

    .line 605
    .local v0, IsHiddenSsid:Z
    invoke-virtual {p1}, Lcom/android/settings/wifi/AccessPointState;->forget()V

    .line 607
    iget-boolean v2, p1, Lcom/android/settings/wifi/AccessPointState;->seen:Z

    if-nez v2, :cond_1f

    .line 609
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiLayer;->removeApFromUi(Lcom/android/settings/wifi/AccessPointState;)V

    .line 612
    :cond_1f
    monitor-enter p0

    .line 613
    :try_start_20
    iget-object v2, p0, Lcom/android/settings/wifi/WifiLayer;->mApOtherList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 616
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_20 .. :try_end_26} :catchall_5a

    .line 618
    iget-object v2, p0, Lcom/android/settings/wifi/WifiLayer;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    move-result v2

    if-nez v2, :cond_5d

    .line 619
    const-string v2, "SettingsWifiLayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing network "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/settings/wifi/AccessPointState;->ssid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (network ID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") failed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v6

    .line 621
    goto :goto_10

    .line 616
    :catchall_5a
    move-exception v2

    :try_start_5b
    monitor-exit p0
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5a

    throw v2

    .line 627
    :cond_5d
    iget v2, p0, Lcom/android/settings/wifi/WifiLayer;->mNumofHiddenSSID:I

    if-lez v2, :cond_68

    if-eqz v0, :cond_68

    .line 628
    iget v2, p0, Lcom/android/settings/wifi/WifiLayer;->mNumofHiddenSSID:I

    sub-int/2addr v2, v4

    iput v2, p0, Lcom/android/settings/wifi/WifiLayer;->mNumofHiddenSSID:I

    .line 629
    :cond_68
    const-string v2, "SettingsWifiLayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "forgetNetwork : mNumofHiddenSSID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/wifi/WifiLayer;->mNumofHiddenSSID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiLayer;->managerSaveConfiguration()Z

    move-result v2

    if-nez v2, :cond_90

    .line 633
    const v2, 0x7f080165

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiLayer;->error(I)V

    move v2, v6

    .line 634
    goto :goto_10

    :cond_90
    move v2, v4

    .line 637
    goto/16 :goto_10
.end method

.method public getWifiLayerApInstance(Lcom/android/settings/wifi/AccessPointState;)Lcom/android/settings/wifi/AccessPointState;
    .registers 6
    .parameter "state"

    .prologue
    .line 332
    monitor-enter p0

    .line 334
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiLayer;->hasApInstanceLocked(Lcom/android/settings/wifi/AccessPointState;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 335
    monitor-exit p0

    move-object v0, p1

    .line 338
    :goto_9
    return-object v0

    :cond_a
    iget v0, p1, Lcom/android/settings/wifi/AccessPointState;->networkId:I

    iget-object v1, p1, Lcom/android/settings/wifi/AccessPointState;->bssid:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/settings/wifi/AccessPointState;->ssid:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/settings/wifi/AccessPointState;->security:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiLayer;->findApLocked(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/wifi/AccessPointState;

    move-result-object v0

    monitor-exit p0

    goto :goto_9

    .line 339
    :catchall_18
    move-exception v0

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public isWifiEnabled()Z
    .registers 2

    .prologue
    .line 717
    iget-object v0, p0, Lcom/android/settings/wifi/WifiLayer;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    return v0
.end method

.method public onCreate()V
    .registers 4

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/settings/wifi/WifiLayer;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiLayer;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 260
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiLayer;->mIntentFilter:Landroid/content/IntentFilter;

    .line 261
    iget-object v0, p0, Lcom/android/settings/wifi/WifiLayer;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Lcom/android/settings/wifi/WifiLayer;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Lcom/android/settings/wifi/WifiLayer;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.supplicant.CONNECTION_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 264
    iget-object v0, p0, Lcom/android/settings/wifi/WifiLayer;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Lcom/android/settings/wifi/WifiLayer;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lcom/android/settings/wifi/WifiLayer;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lcom/android/settings/wifi/WifiLayer;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.NETWORK_IDS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Lcom/android/settings/wifi/WifiLayer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_num_open_networks_kept"

    const/16 v2, 0xa

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/WifiLayer;->WIFI_NUM_OPEN_NETWORKS_KEPT:I

    .line 271
    return-void
.end method

.method public onCreatedCallback()V
    .registers 2

    .prologue
    .line 279
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiLayer;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 280
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiLayer;->refreshAll(Z)V

    .line 282
    :cond_a
    return-void
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 304
    iget-object v0, p0, Lcom/android/settings/wifi/WifiLayer;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiLayer;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 306
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiLayer;->attemptReenableAllAps()V

    .line 308
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiLayer;->removeFutureScans()V

    .line 312
    iget-object v0, p0, Lcom/android/settings/wifi/WifiLayer;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x63

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 315
    return-void
.end method

.method public onResume()V
    .registers 4

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/settings/wifi/WifiLayer;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiLayer;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiLayer;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 292
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiLayer;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 294
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiLayer;->queueContinuousScan()V

    .line 296
    :cond_12
    return-void
.end method

.method public saveNetwork(Lcom/android/settings/wifi/AccessPointState;)Z
    .registers 9
    .parameter "state"

    .prologue
    const v6, 0x7f080165

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v3, "SettingsWifiLayer"

    .line 452
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiLayer;->findConfiguredNetwork(Lcom/android/settings/wifi/AccessPointState;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 454
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_54

    .line 456
    invoke-virtual {p1, v5}, Lcom/android/settings/wifi/AccessPointState;->setHiddenSsid(Z)V

    .line 458
    invoke-direct {p0, p1, v5}, Lcom/android/settings/wifi/WifiLayer;->addConfiguration(Lcom/android/settings/wifi/AccessPointState;I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 460
    if-nez v0, :cond_22

    .line 461
    const-string v1, "SettingsWifiLayer"

    const-string v1, "Could not save configuration, call to addConfiguration failed."

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    invoke-virtual {p0, v6}, Lcom/android/settings/wifi/WifiLayer;->error(I)V

    move v1, v4

    .line 496
    :goto_21
    return v1

    .line 469
    :cond_22
    iget v1, p0, Lcom/android/settings/wifi/WifiLayer;->mNumofHiddenSSID:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/settings/wifi/WifiLayer;->mNumofHiddenSSID:I

    .line 470
    const-string v1, "SettingsWifiLayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveNetwork : mNumofHiddenSSID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/wifi/WifiLayer;->mNumofHiddenSSID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    :cond_42
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiLayer;->managerSaveConfiguration()Z

    move-result v1

    if-nez v1, :cond_6c

    .line 485
    const-string v1, "SettingsWifiLayer"

    const-string v1, "Could not save configuration, call to WifiManager failed."

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    invoke-virtual {p0, v6}, Lcom/android/settings/wifi/WifiLayer;->error(I)V

    move v1, v4

    .line 487
    goto :goto_21

    .line 475
    :cond_54
    invoke-virtual {p1, v0}, Lcom/android/settings/wifi/AccessPointState;->updateWifiConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    .line 476
    iget-object v1, p0, Lcom/android/settings/wifi/WifiLayer;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_42

    .line 477
    const-string v1, "SettingsWifiLayer"

    const-string v1, "Could not update configuration, call to WifiManager failed."

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    invoke-virtual {p0, v6}, Lcom/android/settings/wifi/WifiLayer;->error(I)V

    move v1, v4

    .line 479
    goto :goto_21

    .line 494
    :cond_6c
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiLayer;->ensureTrackingState(Lcom/android/settings/wifi/AccessPointState;)V

    move v1, v5

    .line 496
    goto :goto_21
.end method

.method public saveNetwork_not_create(Lcom/android/settings/wifi/AccessPointState;)Z
    .registers 9
    .parameter "state"

    .prologue
    const v6, 0x7f080165

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v3, "SettingsWifiLayer"

    .line 536
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiLayer;->findConfiguredNetwork(Lcom/android/settings/wifi/AccessPointState;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 538
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_39

    .line 539
    const-string v1, "SettingsWifiLayer"

    const-string v1, "saveNetwork_not_create"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    invoke-virtual {p1, v5}, Lcom/android/settings/wifi/AccessPointState;->setHiddenSsid(Z)V

    .line 553
    iget v1, p0, Lcom/android/settings/wifi/WifiLayer;->mNumofHiddenSSID:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/settings/wifi/WifiLayer;->mNumofHiddenSSID:I

    .line 554
    const-string v1, "SettingsWifiLayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveNetwork_not_create : mNumofHiddenSSID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/wifi/WifiLayer;->mNumofHiddenSSID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_37
    move v1, v5

    .line 580
    :goto_38
    return v1

    .line 558
    :cond_39
    invoke-virtual {p1, v0}, Lcom/android/settings/wifi/AccessPointState;->updateWifiConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    .line 559
    iget-object v1, p0, Lcom/android/settings/wifi/WifiLayer;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_51

    .line 560
    const-string v1, "SettingsWifiLayer"

    const-string v1, "Could not update configuration, call to WifiManager failed."

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    invoke-virtual {p0, v6}, Lcom/android/settings/wifi/WifiLayer;->error(I)V

    move v1, v4

    .line 562
    goto :goto_38

    .line 567
    :cond_51
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiLayer;->managerSaveConfiguration()Z

    move-result v1

    if-nez v1, :cond_63

    .line 568
    const-string v1, "SettingsWifiLayer"

    const-string v1, "Could not save configuration, call to WifiManager failed."

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    invoke-virtual {p0, v6}, Lcom/android/settings/wifi/WifiLayer;->error(I)V

    move v1, v4

    .line 570
    goto :goto_38

    .line 577
    :cond_63
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiLayer;->ensureTrackingState(Lcom/android/settings/wifi/AccessPointState;)V

    goto :goto_37
.end method
