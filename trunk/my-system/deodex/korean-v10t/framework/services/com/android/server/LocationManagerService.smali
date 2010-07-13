.class public Lcom/android/server/LocationManagerService;
.super Landroid/location/ILocationManager$Stub;
.source "LocationManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/LocationManagerService$LocationWorkerHandler;,
        Lcom/android/server/LocationManagerService$ProximityListener;,
        Lcom/android/server/LocationManagerService$ProximityAlert;,
        Lcom/android/server/LocationManagerService$UpdateRecord;,
        Lcom/android/server/LocationManagerService$SettingsObserver;,
        Lcom/android/server/LocationManagerService$Receiver;
    }
.end annotation


# static fields
.field private static final ACCESS_COARSE_LOCATION:Ljava/lang/String; = "android.permission.ACCESS_COARSE_LOCATION"

.field private static final ACCESS_FINE_LOCATION:Ljava/lang/String; = "android.permission.ACCESS_FINE_LOCATION"

.field private static final ACCESS_LOCATION_EXTRA_COMMANDS:Ljava/lang/String; = "android.permission.ACCESS_LOCATION_EXTRA_COMMANDS"

.field private static final ACCESS_MOCK_LOCATION:Ljava/lang/String; = "android.permission.ACCESS_MOCK_LOCATION"

.field public static final AIRTEST_TEST_TYPE_PRESC_DWELL:I = 0x0

.field public static final GPSON_SMS_RECEIVED:Ljava/lang/String; = "com.android.mms.transaction.GPSONSMS_RECEIVED"

.field private static final INSTALL_LOCATION_PROVIDER:Ljava/lang/String; = "android.permission.INSTALL_LOCATION_PROVIDER"

.field private static final LOCAL_LOGV:Z = false

.field private static final MAX_TIME_FOR_WAKE_LOCK:J = 0xea60L

.field private static final MESSAGE_LOCATION_CHANGED:I = 0x1

.field private static final MIN_LAST_KNOWN_LOCATION_TIME:J = 0xea60L

.field private static final PATTERN_COMMA:Ljava/util/regex/Pattern; = null

.field private static final TAG:Ljava/lang/String; = "LocationManagerService"

.field private static final WAKELOCK_KEY:Ljava/lang/String; = "LocationManagerService"

.field private static sProvidersLoaded:Z


# instance fields
.field private mAirtestEnabled:Z

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private final mDisabledProviders:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mEnabledProviders:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mGeocodeProvider:Landroid/location/IGeocodeProvider;

.field mGpsLocationProvider:Lcom/android/internal/location/LocationProviderProxy;

.field private mGpsProvider:Lcom/android/internal/location/GpsLocationProvider;

.field private mGpsStatusProvider:Landroid/location/IGpsStatusProvider;

.field private mLastKnownLocation:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field

.field private mLastWriteTime:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

.field private mLocationManagerServiceStarted:Z

.field private final mLock:Ljava/lang/Object;

.field private final mMockProviders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/location/MockProvider;",
            ">;"
        }
    .end annotation
.end field

.field private mNetInitiatedListener:Landroid/location/INetInitiatedListener;

.field mNetworkLocationProvider:Lcom/android/internal/location/LocationProviderProxy;

.field private mNetworkState:I

.field private mPendingBroadcasts:I

.field private final mProviders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/location/LocationProviderProxy;",
            ">;"
        }
    .end annotation
.end field

.field private final mProvidersByName:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/location/LocationProviderProxy;",
            ">;"
        }
    .end annotation
.end field

.field private mProximitiesEntered:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/server/LocationManagerService$ProximityAlert;",
            ">;"
        }
    .end annotation
.end field

.field private mProximityAlerts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/app/PendingIntent;",
            "Lcom/android/server/LocationManagerService$ProximityAlert;",
            ">;"
        }
    .end annotation
.end field

.field private mProximityListener:Landroid/location/ILocationListener;

.field private mProximityReceiver:Lcom/android/server/LocationManagerService$Receiver;

.field private final mReceivers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/android/server/LocationManagerService$Receiver;",
            ">;"
        }
    .end annotation
.end field

.field private final mRecordsByProvider:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/LocationManagerService$UpdateRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSettings:Landroid/content/ContentQueryMap;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 114
    const-string v0, ","

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/LocationManagerService;->PATTERN_COMMA:Ljava/util/regex/Pattern;

    .line 136
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/LocationManagerService;->sProvidersLoaded:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 599
    invoke-direct {p0}, Landroid/location/ILocationManager$Stub;-><init>()V

    .line 100
    iput-boolean v1, p0, Lcom/android/server/LocationManagerService;->mAirtestEnabled:Z

    .line 102
    iput-boolean v1, p0, Lcom/android/server/LocationManagerService;->mLocationManagerServiceStarted:Z

    .line 112
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mLastWriteTime:Ljava/util/HashMap;

    .line 128
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mEnabledProviders:Ljava/util/Set;

    .line 131
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mDisabledProviders:Ljava/util/Set;

    .line 134
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    .line 160
    iput-object v2, p0, Lcom/android/server/LocationManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 166
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    .line 172
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    .line 174
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    .line 180
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    .line 185
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    .line 189
    iput-object v2, p0, Lcom/android/server/LocationManagerService;->mProximityReceiver:Lcom/android/server/LocationManagerService$Receiver;

    .line 190
    iput-object v2, p0, Lcom/android/server/LocationManagerService;->mProximityListener:Landroid/location/ILocationListener;

    .line 191
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mProximityAlerts:Ljava/util/HashMap;

    .line 193
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mProximitiesEntered:Ljava/util/HashSet;

    .line 197
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mLastKnownLocation:Ljava/util/HashMap;

    .line 200
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/LocationManagerService;->mNetworkState:I

    .line 1713
    new-instance v1, Lcom/android/server/LocationManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/LocationManagerService$1;-><init>(Lcom/android/server/LocationManagerService;)V

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 600
    iput-object p1, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    .line 602
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "LocationManagerService"

    invoke-direct {v0, v2, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 603
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 608
    return-void
.end method

.method private _getAllProvidersLocked()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 756
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 757
    .local v1, out:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int v0, v3, v4

    .local v0, i:I
    :goto_14
    if-ltz v0, :cond_28

    .line 758
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/location/LocationProviderProxy;

    .line 759
    .local v2, p:Lcom/android/internal/location/LocationProviderProxy;
    invoke-virtual {v2}, Lcom/android/internal/location/LocationProviderProxy;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 757
    add-int/lit8 v0, v0, -0x1

    goto :goto_14

    .line 761
    .end local v2           #p:Lcom/android/internal/location/LocationProviderProxy;
    :cond_28
    return-object v1
.end method

.method private _getLastKnownLocationLocked(Ljava/lang/String;)Landroid/location/Location;
    .registers 7
    .parameter "provider"

    .prologue
    .line 1558
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->checkPermissionsSafe(Ljava/lang/String;)V

    .line 1560
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/location/LocationProviderProxy;

    .line 1561
    .local v1, p:Lcom/android/internal/location/LocationProviderProxy;
    if-nez v1, :cond_26

    .line 1562
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "provider="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1565
    :cond_26
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->isAllowedBySettingsLocked(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2e

    .line 1566
    const/4 v2, 0x0

    .line 1578
    :goto_2d
    return-object v2

    .line 1569
    :cond_2e
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mLastKnownLocation:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    .line 1570
    .local v0, location:Landroid/location/Location;
    if-nez v0, :cond_43

    .line 1572
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->readLastKnownLocationLocked(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 1573
    if-eqz v0, :cond_43

    .line 1574
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mLastKnownLocation:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_43
    move-object v2, v0

    .line 1578
    goto :goto_2d
.end method

.method private _getProviderInfoLocked(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 6
    .parameter "provider"

    .prologue
    .line 1489
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/location/LocationProviderProxy;

    .line 1490
    .local v1, p:Lcom/android/internal/location/LocationProviderProxy;
    if-nez v1, :cond_c

    .line 1491
    const/4 v2, 0x0

    .line 1507
    :goto_b
    return-object v2

    .line 1494
    :cond_c
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->checkPermissionsSafe(Ljava/lang/String;)V

    .line 1496
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1497
    .local v0, b:Landroid/os/Bundle;
    const-string v2, "network"

    invoke-virtual {v1}, Lcom/android/internal/location/LocationProviderProxy;->requiresNetwork()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1498
    const-string v2, "satellite"

    invoke-virtual {v1}, Lcom/android/internal/location/LocationProviderProxy;->requiresSatellite()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1499
    const-string v2, "cell"

    invoke-virtual {v1}, Lcom/android/internal/location/LocationProviderProxy;->requiresCell()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1500
    const-string v2, "cost"

    invoke-virtual {v1}, Lcom/android/internal/location/LocationProviderProxy;->hasMonetaryCost()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1501
    const-string v2, "altitude"

    invoke-virtual {v1}, Lcom/android/internal/location/LocationProviderProxy;->supportsAltitude()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1502
    const-string v2, "speed"

    invoke-virtual {v1}, Lcom/android/internal/location/LocationProviderProxy;->supportsSpeed()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1503
    const-string v2, "bearing"

    invoke-virtual {v1}, Lcom/android/internal/location/LocationProviderProxy;->supportsBearing()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1504
    const-string v2, "power"

    invoke-virtual {v1}, Lcom/android/internal/location/LocationProviderProxy;->getPowerRequirement()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1505
    const-string v2, "accuracy"

    invoke-virtual {v1}, Lcom/android/internal/location/LocationProviderProxy;->getAccuracy()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v0

    .line 1507
    goto :goto_b
.end method

.method private _getProvidersLocked(Z)Ljava/util/List;
    .registers 8
    .parameter "enabledOnly"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 781
    new-instance v2, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 782
    .local v2, out:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int v0, v4, v5

    .local v0, i:I
    :goto_14
    if-ltz v0, :cond_37

    .line 783
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/location/LocationProviderProxy;

    .line 784
    .local v3, p:Lcom/android/internal/location/LocationProviderProxy;
    invoke-virtual {v3}, Lcom/android/internal/location/LocationProviderProxy;->getName()Ljava/lang/String;

    move-result-object v1

    .line 785
    .local v1, name:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/server/LocationManagerService;->isAllowedProviderSafe(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 786
    if-eqz p1, :cond_33

    invoke-direct {p0, v1}, Lcom/android/server/LocationManagerService;->isAllowedBySettingsLocked(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_33

    .line 782
    :cond_30
    :goto_30
    add-int/lit8 v0, v0, -0x1

    goto :goto_14

    .line 789
    :cond_33
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_30

    .line 792
    .end local v1           #name:Ljava/lang/String;
    .end local v3           #p:Lcom/android/internal/location/LocationProviderProxy;
    :cond_37
    return-object v2
.end method

.method private _isProviderEnabledLocked(Ljava/lang/String;)Z
    .registers 6
    .parameter "provider"

    .prologue
    .line 1535
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->checkPermissionsSafe(Ljava/lang/String;)V

    .line 1537
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/location/LocationProviderProxy;

    .line 1538
    .local v0, p:Lcom/android/internal/location/LocationProviderProxy;
    if-nez v0, :cond_26

    .line 1539
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "provider="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1541
    :cond_26
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->isAllowedBySettingsLocked(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private _loadProvidersLocked()V
    .registers 4

    .prologue
    .line 574
    invoke-static {}, Lcom/android/internal/location/GpsLocationProvider;->isSupported()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 583
    new-instance v1, Lcom/android/internal/location/GpsLocationProvider;

    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lcom/android/internal/location/GpsLocationProvider;-><init>(Landroid/content/Context;Landroid/location/ILocationManager;)V

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mGpsProvider:Lcom/android/internal/location/GpsLocationProvider;

    .line 584
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mGpsProvider:Lcom/android/internal/location/GpsLocationProvider;

    invoke-virtual {v1}, Lcom/android/internal/location/GpsLocationProvider;->getGpsStatusProvider()Landroid/location/IGpsStatusProvider;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mGpsStatusProvider:Landroid/location/IGpsStatusProvider;

    .line 585
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mGpsProvider:Lcom/android/internal/location/GpsLocationProvider;

    invoke-virtual {v1}, Lcom/android/internal/location/GpsLocationProvider;->getNetInitiatedListener()Landroid/location/INetInitiatedListener;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    .line 586
    new-instance v0, Lcom/android/internal/location/LocationProviderProxy;

    const-string v1, "gps"

    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mGpsProvider:Lcom/android/internal/location/GpsLocationProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/location/LocationProviderProxy;-><init>(Ljava/lang/String;Landroid/location/ILocationProvider;)V

    .line 588
    .local v0, proxy:Lcom/android/internal/location/LocationProviderProxy;
    invoke-direct {p0, v0}, Lcom/android/server/LocationManagerService;->addProvider(Lcom/android/internal/location/LocationProviderProxy;)V

    .line 589
    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mGpsLocationProvider:Lcom/android/internal/location/LocationProviderProxy;

    .line 592
    .end local v0           #proxy:Lcom/android/internal/location/LocationProviderProxy;
    :cond_2d
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->updateProvidersLocked()V

    .line 593
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/LocationManagerService;)Landroid/location/ILocationListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProximityListener:Landroid/location/ILocationListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/LocationManagerService;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProximityAlerts:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/LocationManagerService;)Ljava/util/HashSet;
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProximitiesEntered:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/LocationManagerService;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/LocationManagerService;Ljava/lang/String;)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->isAllowedBySettingsLocked(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/server/LocationManagerService;Landroid/location/Location;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->handleLocationChangedLocked(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/LocationManagerService;Landroid/app/PendingIntent;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->removeProximityAlertLocked(Landroid/app/PendingIntent;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/LocationManagerService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget v0, p0, Lcom/android/server/LocationManagerService;->mNetworkState:I

    return v0
.end method

.method static synthetic access$1802(Lcom/android/server/LocationManagerService;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput p1, p0, Lcom/android/server/LocationManagerService;->mNetworkState:I

    return p1
.end method

.method static synthetic access$1900(Lcom/android/server/LocationManagerService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/android/server/LocationManagerService;->mAirtestEnabled:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/LocationManagerService;)Lcom/android/server/LocationManagerService$LocationWorkerHandler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/LocationManagerService;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/LocationManagerService;Lcom/android/server/LocationManagerService$Receiver;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->removeUpdatesLocked(Lcom/android/server/LocationManagerService$Receiver;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/LocationManagerService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->decrementPendingBroadcasts()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/LocationManagerService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->incrementPendingBroadcasts()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/LocationManagerService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->updateProvidersLocked()V

    return-void
.end method

.method private addProvider(Lcom/android/internal/location/LocationProviderProxy;)V
    .registers 4
    .parameter "provider"

    .prologue
    .line 542
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 543
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/internal/location/LocationProviderProxy;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    return-void
.end method

.method private addProximityAlertLocked(DDFJLandroid/app/PendingIntent;)V
    .registers 25
    .parameter "latitude"
    .parameter "longitude"
    .parameter "radius"
    .parameter "expiration"
    .parameter "intent"

    .prologue
    .line 1422
    const-string v4, "gps"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/server/LocationManagerService;->isAllowedProviderSafe(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_16

    const-string v4, "network"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/server/LocationManagerService;->isAllowedProviderSafe(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1e

    .line 1424
    :cond_16
    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "Requires ACCESS_FINE_LOCATION permission"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1427
    :cond_1e
    const-wide/16 v4, -0x1

    cmp-long v4, p6, v4

    if-eqz v4, :cond_2a

    .line 1428
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long p6, p6, v4

    .line 1430
    :cond_2a
    new-instance v3, Lcom/android/server/LocationManagerService$ProximityAlert;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    move-object/from16 v4, p0

    move-wide/from16 v6, p1

    move-wide/from16 v8, p3

    move/from16 v10, p5

    move-wide/from16 v11, p6

    move-object/from16 v13, p8

    invoke-direct/range {v3 .. v13}, Lcom/android/server/LocationManagerService$ProximityAlert;-><init>(Lcom/android/server/LocationManagerService;IDDFJLandroid/app/PendingIntent;)V

    .line 1432
    .local v3, alert:Lcom/android/server/LocationManagerService$ProximityAlert;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mProximityAlerts:Ljava/util/HashMap;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p8

    move-object v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mProximityReceiver:Lcom/android/server/LocationManagerService$Receiver;

    move-object v4, v0

    if-nez v4, :cond_a0

    .line 1435
    new-instance v4, Lcom/android/server/LocationManagerService$ProximityListener;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/LocationManagerService$ProximityListener;-><init>(Lcom/android/server/LocationManagerService;)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/LocationManagerService;->mProximityListener:Landroid/location/ILocationListener;

    .line 1436
    new-instance v4, Lcom/android/server/LocationManagerService$Receiver;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mProximityListener:Landroid/location/ILocationListener;

    move-object v5, v0

    move-object v0, v4

    move-object/from16 v1, p0

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/server/LocationManagerService$Receiver;-><init>(Lcom/android/server/LocationManagerService;Landroid/location/ILocationListener;)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/LocationManagerService;->mProximityReceiver:Lcom/android/server/LocationManagerService$Receiver;

    .line 1438
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int v14, v4, v5

    .local v14, i:I
    :goto_7e
    if-ltz v14, :cond_a0

    .line 1439
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    move-object v4, v0

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/location/LocationProviderProxy;

    .line 1440
    .local v15, provider:Lcom/android/internal/location/LocationProviderProxy;
    invoke-virtual {v15}, Lcom/android/internal/location/LocationProviderProxy;->getName()Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, 0x3e8

    const/high16 v8, 0x3f80

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mProximityReceiver:Lcom/android/server/LocationManagerService$Receiver;

    move-object v9, v0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/LocationManagerService;->requestLocationUpdatesLocked(Ljava/lang/String;JFLcom/android/server/LocationManagerService$Receiver;)V

    .line 1438
    add-int/lit8 v14, v14, -0x1

    goto :goto_7e

    .line 1443
    .end local v14           #i:I
    .end local v15           #provider:Lcom/android/internal/location/LocationProviderProxy;
    :cond_a0
    return-void
.end method

.method private checkMockPermissionsSafe()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1867
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mock_location"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_1b

    move v0, v4

    .line 1869
    .local v0, allowMocks:Z
    :goto_11
    if-nez v0, :cond_1d

    .line 1870
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires ACCESS_MOCK_LOCATION secure setting"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .end local v0           #allowMocks:Z
    :cond_1b
    move v0, v3

    .line 1867
    goto :goto_11

    .line 1873
    .restart local v0       #allowMocks:Z
    :cond_1d
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_MOCK_LOCATION"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2f

    .line 1875
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires ACCESS_MOCK_LOCATION permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1877
    :cond_2f
    return-void
.end method

.method private checkPermissionsSafe(Ljava/lang/String;)V
    .registers 5
    .parameter "provider"

    .prologue
    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    .line 707
    const-string v0, "gps"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1c

    .line 710
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires ACCESS_FINE_LOCATION permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 712
    :cond_1c
    const-string v0, "network"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_40

    .line 717
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires ACCESS_FINE_LOCATION or ACCESS_COARSE_LOCATION permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 720
    :cond_40
    return-void
.end method

.method private decrementPendingBroadcasts()V
    .registers 5

    .prologue
    .line 1810
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1

    .line 1811
    :try_start_3
    iget v2, p0, Lcom/android/server/LocationManagerService;->mPendingBroadcasts:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/LocationManagerService;->mPendingBroadcasts:I
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_2f

    if-nez v2, :cond_1d

    .line 1814
    :try_start_b
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 1815
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1816
    const-string v2, "Released wakelock"

    invoke-direct {p0, v2}, Lcom/android/server/LocationManagerService;->log(Ljava/lang/String;)V
    :try_end_1d
    .catchall {:try_start_b .. :try_end_1d} :catchall_2f
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_1d} :catch_25

    .line 1826
    :cond_1d
    :goto_1d
    :try_start_1d
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_2f

    .line 1827
    return-void

    .line 1818
    :cond_1f
    :try_start_1f
    const-string v2, "Can\'t release wakelock again!"

    invoke-direct {p0, v2}, Lcom/android/server/LocationManagerService;->log(Ljava/lang/String;)V
    :try_end_24
    .catchall {:try_start_1f .. :try_end_24} :catchall_2f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_24} :catch_25

    goto :goto_1d

    .line 1820
    :catch_25
    move-exception v2

    move-object v0, v2

    .line 1823
    .local v0, e:Ljava/lang/Exception;
    :try_start_27
    const-string v2, "LocationManagerService"

    const-string v3, "exception in releaseWakeLock()"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1d

    .line 1826
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_2f
    move-exception v2

    monitor-exit v1
    :try_end_31
    .catchall {:try_start_27 .. :try_end_31} :catchall_2f

    throw v2
.end method

.method private getMinTimeLocked(Ljava/lang/String;)J
    .registers 8
    .parameter "provider"

    .prologue
    .line 856
    const-wide v1, 0x7fffffffffffffffL

    .line 857
    .local v1, minTime:J
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 858
    .local v3, records:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    if-eqz v3, :cond_27

    .line 859
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int v0, v4, v5

    .end local p0
    .local v0, i:I
    :goto_16
    if-ltz v0, :cond_27

    .line 860
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/LocationManagerService$UpdateRecord;

    iget-wide v4, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mMinTime:J

    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    .line 859
    add-int/lit8 v0, v0, -0x1

    goto :goto_16

    .line 863
    .end local v0           #i:I
    :cond_27
    return-wide v1
.end method

.method private getReceiver(Landroid/app/PendingIntent;)Lcom/android/server/LocationManagerService$Receiver;
    .registers 4
    .parameter "intent"

    .prologue
    .line 952
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/LocationManagerService$Receiver;

    .line 953
    .local v0, receiver:Lcom/android/server/LocationManagerService$Receiver;
    if-nez v0, :cond_14

    .line 954
    new-instance v0, Lcom/android/server/LocationManagerService$Receiver;

    .end local v0           #receiver:Lcom/android/server/LocationManagerService$Receiver;
    invoke-direct {v0, p0, p1}, Lcom/android/server/LocationManagerService$Receiver;-><init>(Lcom/android/server/LocationManagerService;Landroid/app/PendingIntent;)V

    .line 955
    .restart local v0       #receiver:Lcom/android/server/LocationManagerService$Receiver;
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 957
    :cond_14
    return-object v0
.end method

.method private getReceiver(Landroid/location/ILocationListener;)Lcom/android/server/LocationManagerService$Receiver;
    .registers 7
    .parameter "listener"

    .prologue
    .line 933
    invoke-interface {p1}, Landroid/location/ILocationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 934
    .local v0, binder:Landroid/os/IBinder;
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/LocationManagerService$Receiver;

    .line 935
    .local v2, receiver:Lcom/android/server/LocationManagerService$Receiver;
    if-nez v2, :cond_2a

    .line 936
    new-instance v2, Lcom/android/server/LocationManagerService$Receiver;

    .end local v2           #receiver:Lcom/android/server/LocationManagerService$Receiver;
    invoke-direct {v2, p0, p1}, Lcom/android/server/LocationManagerService$Receiver;-><init>(Lcom/android/server/LocationManagerService;Landroid/location/ILocationListener;)V

    .line 937
    .restart local v2       #receiver:Lcom/android/server/LocationManagerService$Receiver;
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 940
    :try_start_18
    invoke-virtual {v2}, Lcom/android/server/LocationManagerService$Receiver;->isListener()Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 941
    invoke-virtual {v2}, Lcom/android/server/LocationManagerService$Receiver;->getListener()Landroid/location/ILocationListener;

    move-result-object v3

    invoke-interface {v3}, Landroid/location/ILocationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_2a} :catch_2c

    :cond_2a
    move-object v3, v2

    .line 948
    :goto_2b
    return-object v3

    .line 943
    :catch_2c
    move-exception v3

    move-object v1, v3

    .line 944
    .local v1, e:Landroid/os/RemoteException;
    const-string v3, "LocationManagerService"

    const-string v4, "linkToDeath failed:"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 945
    const/4 v3, 0x0

    goto :goto_2b
.end method

.method private handleLocationChangedLocked(Landroid/location/Location;)V
    .registers 25
    .parameter "location"

    .prologue
    .line 1605
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v15

    .line 1606
    .local v15, provider:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/ArrayList;

    .line 1607
    .local v18, records:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    if-eqz v18, :cond_1b

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v20

    if-nez v20, :cond_1c

    .line 1679
    .end local p1
    :cond_1b
    return-void

    .line 1611
    .restart local p1
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/location/LocationProviderProxy;

    .line 1612
    .local v12, p:Lcom/android/internal/location/LocationProviderProxy;
    if-eqz v12, :cond_1b

    .line 1617
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mLastKnownLocation:Ljava/util/HashMap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/location/Location;

    .line 1618
    .local v9, lastLocation:Landroid/location/Location;
    if-nez v9, :cond_133

    .line 1619
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mLastKnownLocation:Ljava/util/HashMap;

    move-object/from16 v20, v0

    new-instance v21, Landroid/location/Location;

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    move-object/from16 v0, v20

    move-object v1, v15

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1623
    :goto_55
    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/LocationManagerService;->writeLastKnownLocationLocked(Ljava/lang/String;Landroid/location/Location;)V

    .line 1626
    invoke-virtual {v12}, Lcom/android/internal/location/LocationProviderProxy;->getStatusUpdateTime()J

    move-result-wide v10

    .line 1629
    .local v10, newStatusUpdateTime:J
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 1630
    .local v6, extras:Landroid/os/Bundle;
    invoke-virtual {v12, v6}, Lcom/android/internal/location/LocationProviderProxy;->getStatus(Landroid/os/Bundle;)I

    move-result v19

    .line 1632
    .local v19, status:I
    const/4 v5, 0x0

    .line 1635
    .local v5, deadReceivers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1636
    .local v4, N:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_70
    if-ge v7, v4, :cond_143

    .line 1637
    move-object/from16 v0, v18

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 1638
    .local v16, r:Lcom/android/server/LocationManagerService$UpdateRecord;
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    move-object/from16 v17, v0

    .line 1640
    .local v17, receiver:Lcom/android/server/LocationManagerService$Receiver;
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/LocationManagerService$UpdateRecord;->mLastFixBroadcast:Landroid/location/Location;

    move-object v8, v0

    .line 1641
    .local v8, lastLoc:Landroid/location/Location;
    if-eqz v8, :cond_93

    move-object/from16 v0, p1

    move-object v1, v8

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Lcom/android/server/LocationManagerService;->shouldBroadcastSafe(Landroid/location/Location;Landroid/location/Location;Lcom/android/server/LocationManagerService$UpdateRecord;)Z

    move-result v20

    if-eqz v20, :cond_d5

    .line 1642
    :cond_93
    if-nez v8, :cond_13b

    .line 1643
    new-instance v8, Landroid/location/Location;

    .end local v8           #lastLoc:Landroid/location/Location;
    move-object v0, v8

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    .line 1644
    .restart local v8       #lastLoc:Landroid/location/Location;
    move-object v0, v8

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/server/LocationManagerService$UpdateRecord;->mLastFixBroadcast:Landroid/location/Location;

    .line 1648
    :goto_a2
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/LocationManagerService$Receiver;->callLocationChangedLocked(Landroid/location/Location;)Z

    move-result v20

    if-nez v20, :cond_d5

    .line 1649
    const-string v20, "LocationManagerService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "RemoteException calling onLocationChanged on "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1650
    if-nez v5, :cond_cf

    .line 1651
    new-instance v5, Ljava/util/ArrayList;

    .end local v5           #deadReceivers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1653
    .restart local v5       #deadReceivers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    :cond_cf
    move-object v0, v5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1657
    :cond_d5
    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/android/server/LocationManagerService$UpdateRecord;->mLastStatusBroadcast:J

    move-wide v13, v0

    .line 1658
    .local v13, prevStatusUpdateTime:J
    cmp-long v20, v10, v13

    if-lez v20, :cond_12f

    const-wide/16 v20, 0x0

    cmp-long v20, v13, v20

    if-nez v20, :cond_ec

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_12f

    .line 1661
    :cond_ec
    move-wide v0, v10

    move-object/from16 v2, v16

    iput-wide v0, v2, Lcom/android/server/LocationManagerService$UpdateRecord;->mLastStatusBroadcast:J

    .line 1662
    move-object/from16 v0, v17

    move-object v1, v15

    move/from16 v2, v19

    move-object v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LocationManagerService$Receiver;->callStatusChangedLocked(Ljava/lang/String;ILandroid/os/Bundle;)Z

    move-result v20

    if-nez v20, :cond_12f

    .line 1663
    const-string v20, "LocationManagerService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "RemoteException calling onStatusChanged on "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1664
    if-nez v5, :cond_120

    .line 1665
    new-instance v5, Ljava/util/ArrayList;

    .end local v5           #deadReceivers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1667
    .restart local v5       #deadReceivers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    :cond_120
    move-object v0, v5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_12f

    .line 1668
    move-object v0, v5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1636
    :cond_12f
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_70

    .line 1621
    .end local v4           #N:I
    .end local v5           #deadReceivers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    .end local v6           #extras:Landroid/os/Bundle;
    .end local v7           #i:I
    .end local v8           #lastLoc:Landroid/location/Location;
    .end local v10           #newStatusUpdateTime:J
    .end local v13           #prevStatusUpdateTime:J
    .end local v16           #r:Lcom/android/server/LocationManagerService$UpdateRecord;
    .end local v17           #receiver:Lcom/android/server/LocationManagerService$Receiver;
    .end local v19           #status:I
    :cond_133
    move-object v0, v9

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/location/Location;->set(Landroid/location/Location;)V

    goto/16 :goto_55

    .line 1646
    .restart local v4       #N:I
    .restart local v5       #deadReceivers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    .restart local v6       #extras:Landroid/os/Bundle;
    .restart local v7       #i:I
    .restart local v8       #lastLoc:Landroid/location/Location;
    .restart local v10       #newStatusUpdateTime:J
    .restart local v16       #r:Lcom/android/server/LocationManagerService$UpdateRecord;
    .restart local v17       #receiver:Lcom/android/server/LocationManagerService$Receiver;
    .restart local v19       #status:I
    :cond_13b
    move-object v0, v8

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/location/Location;->set(Landroid/location/Location;)V

    goto/16 :goto_a2

    .line 1674
    .end local v8           #lastLoc:Landroid/location/Location;
    .end local v16           #r:Lcom/android/server/LocationManagerService$UpdateRecord;
    .end local v17           #receiver:Lcom/android/server/LocationManagerService$Receiver;
    :cond_143
    if-eqz v5, :cond_1b

    .line 1675
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v20

    const/16 v21, 0x1

    sub-int v7, v20, v21

    .end local p1
    :goto_14d
    if-ltz v7, :cond_1b

    .line 1676
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/LocationManagerService$Receiver;

    invoke-direct/range {p0 .. p1}, Lcom/android/server/LocationManagerService;->removeUpdatesLocked(Lcom/android/server/LocationManagerService$Receiver;)V

    .line 1675
    add-int/lit8 v7, v7, -0x1

    goto :goto_14d
.end method

.method private incrementPendingBroadcasts()V
    .registers 5

    .prologue
    .line 1795
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1

    .line 1796
    :try_start_3
    iget v2, p0, Lcom/android/server/LocationManagerService;->mPendingBroadcasts:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/server/LocationManagerService;->mPendingBroadcasts:I
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_21

    if-nez v2, :cond_15

    .line 1798
    :try_start_b
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1799
    const-string v2, "Acquired wakelock"

    invoke-direct {p0, v2}, Lcom/android/server/LocationManagerService;->log(Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_21
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_15} :catch_17

    .line 1806
    :cond_15
    :goto_15
    :try_start_15
    monitor-exit v1

    .line 1807
    return-void

    .line 1800
    :catch_17
    move-exception v2

    move-object v0, v2

    .line 1803
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "LocationManagerService"

    const-string v3, "exception in acquireWakeLock()"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15

    .line 1806
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_21
    move-exception v2

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_15 .. :try_end_23} :catchall_21

    throw v2
.end method

.method private initialize()V
    .registers 13

    .prologue
    const/4 v2, 0x0

    const/4 v11, 0x1

    .line 612
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/PowerManager;

    .line 613
    .local v7, powerManager:Landroid/os/PowerManager;
    const-string v1, "LocationManagerService"

    invoke-virtual {v7, v11, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 616
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->loadProviders()V

    .line 619
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 620
    .local v6, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v6, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 622
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v6, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 623
    const-string v1, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v6, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 627
    const-string v1, "com.android.mms.transaction.GPSONSMS_RECEIVED"

    invoke-virtual {v6, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 630
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v3, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 633
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 634
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "(name=?)"

    new-array v4, v11, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v10, "location_providers_allowed"

    aput-object v10, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 638
    .local v8, settingsCursor:Landroid/database/Cursor;
    new-instance v1, Landroid/content/ContentQueryMap;

    const-string v3, "name"

    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    invoke-direct {v1, v8, v3, v11, v4}, Landroid/content/ContentQueryMap;-><init>(Landroid/database/Cursor;Ljava/lang/String;ZLandroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mSettings:Landroid/content/ContentQueryMap;

    .line 639
    new-instance v9, Lcom/android/server/LocationManagerService$SettingsObserver;

    invoke-direct {v9, p0, v2}, Lcom/android/server/LocationManagerService$SettingsObserver;-><init>(Lcom/android/server/LocationManagerService;Lcom/android/server/LocationManagerService$1;)V

    .line 640
    .local v9, settingsObserver:Lcom/android/server/LocationManagerService$SettingsObserver;
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mSettings:Landroid/content/ContentQueryMap;

    invoke-virtual {v1, v9}, Landroid/content/ContentQueryMap;->addObserver(Ljava/util/Observer;)V

    .line 641
    return-void
.end method

.method private isAllowedBySettingsLocked(Ljava/lang/String;)Z
    .registers 7
    .parameter "provider"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 692
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mEnabledProviders:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    move v2, v4

    .line 703
    :goto_b
    return v2

    .line 695
    :cond_c
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mDisabledProviders:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    move v2, v3

    .line 696
    goto :goto_b

    .line 699
    :cond_16
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 700
    .local v1, resolver:Landroid/content/ContentResolver;
    const-string v2, "location_providers_allowed"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 703
    .local v0, allowedProviders:Ljava/lang/String;
    if-eqz v0, :cond_2c

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2c

    move v2, v4

    goto :goto_b

    :cond_2c
    move v2, v3

    goto :goto_b
.end method

.method private isAllowedProviderSafe(Ljava/lang/String;)Z
    .registers 6
    .parameter "provider"

    .prologue
    const/4 v2, 0x0

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    .line 723
    const-string v0, "gps"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_17

    move v0, v2

    .line 736
    :goto_16
    return v0

    .line 728
    :cond_17
    const-string v0, "network"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_35

    move v0, v2

    .line 733
    goto :goto_16

    .line 736
    :cond_35
    const/4 v0, 0x1

    goto :goto_16
.end method

.method private loadProviders()V
    .registers 3

    .prologue
    .line 553
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 554
    :try_start_3
    sget-boolean v1, Lcom/android/server/LocationManagerService;->sProvidersLoaded:Z

    if-eqz v1, :cond_9

    .line 555
    monitor-exit v0

    .line 562
    :goto_8
    return-void

    .line 559
    :cond_9
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->loadProvidersLocked()V

    .line 560
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/server/LocationManagerService;->sProvidersLoaded:Z

    .line 561
    monitor-exit v0

    goto :goto_8

    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method private loadProvidersLocked()V
    .registers 4

    .prologue
    .line 566
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->_loadProvidersLocked()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 570
    :goto_3
    return-void

    .line 567
    :catch_4
    move-exception v0

    .line 568
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "LocationManagerService"

    const-string v2, "Exception loading providers:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method private log(Ljava/lang/String;)V
    .registers 4
    .parameter "log"

    .prologue
    const-string v1, "LocationManagerService"

    .line 2011
    const-string v0, "LocationManagerService"

    const/4 v0, 0x2

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2012
    const-string v0, "LocationManagerService"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2014
    :cond_10
    return-void
.end method

.method private providerHasListener(Ljava/lang/String;ILcom/android/server/LocationManagerService$Receiver;)Z
    .registers 11
    .parameter "provider"
    .parameter "uid"
    .parameter "excludedReceiver"

    .prologue
    const/4 v6, 0x1

    .line 961
    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 962
    .local v4, records:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    if-eqz v4, :cond_26

    .line 963
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int v1, v5, v6

    .local v1, i:I
    :goto_11
    if-ltz v1, :cond_26

    .line 964
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 965
    .local v3, record:Lcom/android/server/LocationManagerService$UpdateRecord;
    iget v5, v3, Lcom/android/server/LocationManagerService$UpdateRecord;->mUid:I

    if-ne v5, p2, :cond_23

    iget-object v5, v3, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    if-eq v5, p3, :cond_23

    move v5, v6

    .line 975
    .end local v1           #i:I
    .end local v3           #record:Lcom/android/server/LocationManagerService$UpdateRecord;
    :goto_22
    return v5

    .line 963
    .restart local v1       #i:I
    .restart local v3       #record:Lcom/android/server/LocationManagerService$UpdateRecord;
    :cond_23
    add-int/lit8 v1, v1, -0x1

    goto :goto_11

    .line 970
    .end local v1           #i:I
    .end local v3           #record:Lcom/android/server/LocationManagerService$UpdateRecord;
    :cond_26
    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mProximityAlerts:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_30
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_42

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/LocationManagerService$ProximityAlert;

    .line 971
    .local v0, alert:Lcom/android/server/LocationManagerService$ProximityAlert;
    iget v5, v0, Lcom/android/server/LocationManagerService$ProximityAlert;->mUid:I

    if-ne v5, p2, :cond_30

    move v5, v6

    .line 972
    goto :goto_22

    .line 975
    .end local v0           #alert:Lcom/android/server/LocationManagerService$ProximityAlert;
    :cond_42
    const/4 v5, 0x0

    goto :goto_22
.end method

.method private readLastKnownLocationLocked(Ljava/lang/String;)Landroid/location/Location;
    .registers 27
    .parameter "provider"

    .prologue
    .line 451
    const/4 v12, 0x0

    .line 452
    .local v12, location:Landroid/location/Location;
    const/16 v18, 0x0

    .line 454
    .local v18, s:Ljava/lang/String;
    :try_start_3
    new-instance v7, Ljava/io/File;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "/data/system/location/location."

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object v0, v7

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 456
    .local v7, f:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v23

    if-nez v23, :cond_2b

    .line 457
    const/16 v23, 0x0

    .line 490
    .end local v7           #f:Ljava/io/File;
    :goto_2a
    return-object v23

    .line 459
    .restart local v7       #f:Ljava/io/File;
    :cond_2b
    new-instance v17, Ljava/io/BufferedReader;

    new-instance v23, Ljava/io/FileReader;

    move-object/from16 v0, v23

    move-object v1, v7

    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    const/16 v24, 0x100

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 460
    .local v17, reader:Ljava/io/BufferedReader;
    invoke-virtual/range {v17 .. v17}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_43} :catch_49

    move-result-object v18

    .line 465
    .end local v7           #f:Ljava/io/File;
    .end local v17           #reader:Ljava/io/BufferedReader;
    :goto_44
    if-nez v18, :cond_59

    .line 466
    const/16 v23, 0x0

    goto :goto_2a

    .line 461
    :catch_49
    move-exception v23

    move-object/from16 v6, v23

    .line 462
    .local v6, e:Ljava/io/IOException;
    const-string v23, "LocationManagerService"

    const-string v24, "Unable to read last known location"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object v2, v6

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_44

    .line 469
    .end local v6           #e:Ljava/io/IOException;
    :cond_59
    :try_start_59
    sget-object v23, Lcom/android/server/LocationManagerService;->PATTERN_COMMA:Ljava/util/regex/Pattern;

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v22

    .line 470
    .local v22, tokens:[Ljava/lang/String;
    const/4 v8, 0x0

    .line 471
    .local v8, idx:I
    add-int/lit8 v9, v8, 0x1

    .end local v8           #idx:I
    .local v9, idx:I
    aget-object v23, v22, v8

    invoke-static/range {v23 .. v23}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v20

    .line 472
    .local v20, time:J
    add-int/lit8 v8, v9, 0x1

    .end local v9           #idx:I
    .restart local v8       #idx:I
    aget-object v23, v22, v9

    invoke-static/range {v23 .. v23}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    .line 473
    .local v10, latitude:D
    add-int/lit8 v9, v8, 0x1

    .end local v8           #idx:I
    .restart local v9       #idx:I
    aget-object v23, v22, v8

    invoke-static/range {v23 .. v23}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    .line 474
    .local v14, longitude:D
    add-int/lit8 v8, v9, 0x1

    .end local v9           #idx:I
    .restart local v8       #idx:I
    aget-object v23, v22, v9

    invoke-static/range {v23 .. v23}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    .line 475
    .local v3, altitude:D
    add-int/lit8 v9, v8, 0x1

    .end local v8           #idx:I
    .restart local v9       #idx:I
    aget-object v23, v22, v8

    invoke-static/range {v23 .. v23}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    .line 476
    .local v5, bearing:F
    add-int/lit8 v8, v9, 0x1

    .end local v9           #idx:I
    .restart local v8       #idx:I
    aget-object v23, v22, v9

    invoke-static/range {v23 .. v23}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v19

    .line 478
    .local v19, speed:F
    new-instance v13, Landroid/location/Location;

    move-object v0, v13

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V
    :try_end_9c
    .catch Ljava/lang/NumberFormatException; {:try_start_59 .. :try_end_9c} :catch_b9

    .line 479
    .end local v12           #location:Landroid/location/Location;
    .local v13, location:Landroid/location/Location;
    :try_start_9c
    move-object v0, v13

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setTime(J)V

    .line 480
    invoke-virtual {v13, v10, v11}, Landroid/location/Location;->setLatitude(D)V

    .line 481
    invoke-virtual {v13, v14, v15}, Landroid/location/Location;->setLongitude(D)V

    .line 482
    invoke-virtual {v13, v3, v4}, Landroid/location/Location;->setAltitude(D)V

    .line 483
    invoke-virtual {v13, v5}, Landroid/location/Location;->setBearing(F)V

    .line 484
    move-object v0, v13

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/location/Location;->setSpeed(F)V
    :try_end_b4
    .catch Ljava/lang/NumberFormatException; {:try_start_9c .. :try_end_b4} :catch_cd

    move-object v12, v13

    .end local v13           #location:Landroid/location/Location;
    .restart local v12       #location:Landroid/location/Location;
    move-object/from16 v23, v13

    .line 490
    goto/16 :goto_2a

    .line 485
    .end local v3           #altitude:D
    .end local v5           #bearing:F
    .end local v8           #idx:I
    .end local v10           #latitude:D
    .end local v14           #longitude:D
    .end local v19           #speed:F
    .end local v20           #time:J
    .end local v22           #tokens:[Ljava/lang/String;
    :catch_b9
    move-exception v23

    move-object/from16 v16, v23

    .line 486
    .local v16, nfe:Ljava/lang/NumberFormatException;
    :goto_bc
    const-string v23, "LocationManagerService"

    const-string v24, "NumberFormatException reading last known location"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 487
    const/16 v23, 0x0

    goto/16 :goto_2a

    .line 485
    .end local v12           #location:Landroid/location/Location;
    .end local v16           #nfe:Ljava/lang/NumberFormatException;
    .restart local v3       #altitude:D
    .restart local v5       #bearing:F
    .restart local v8       #idx:I
    .restart local v10       #latitude:D
    .restart local v13       #location:Landroid/location/Location;
    .restart local v14       #longitude:D
    .restart local v19       #speed:F
    .restart local v20       #time:J
    .restart local v22       #tokens:[Ljava/lang/String;
    :catch_cd
    move-exception v23

    move-object/from16 v16, v23

    move-object v12, v13

    .end local v13           #location:Landroid/location/Location;
    .restart local v12       #location:Landroid/location/Location;
    goto :goto_bc
.end method

.method private removeProvider(Lcom/android/internal/location/LocationProviderProxy;)V
    .registers 4
    .parameter "provider"

    .prologue
    .line 547
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 548
    invoke-virtual {p1}, Lcom/android/internal/location/LocationProviderProxy;->unlinkProvider()V

    .line 549
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/internal/location/LocationProviderProxy;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    return-void
.end method

.method private removeProximityAlertLocked(Landroid/app/PendingIntent;)V
    .registers 4
    .parameter "intent"

    .prologue
    const/4 v1, 0x0

    .line 1462
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProximityAlerts:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1463
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProximityAlerts:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_17

    .line 1464
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProximityReceiver:Lcom/android/server/LocationManagerService$Receiver;

    invoke-direct {p0, v0}, Lcom/android/server/LocationManagerService;->removeUpdatesLocked(Lcom/android/server/LocationManagerService$Receiver;)V

    .line 1465
    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mProximityReceiver:Lcom/android/server/LocationManagerService$Receiver;

    .line 1466
    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mProximityListener:Landroid/location/ILocationListener;

    .line 1468
    :cond_17
    return-void
.end method

.method private removeUpdatesLocked(Lcom/android/server/LocationManagerService$Receiver;)V
    .registers 16
    .parameter "receiver"

    .prologue
    .line 1077
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1078
    .local v0, callingUid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 1080
    .local v3, identity:J
    :try_start_8
    iget-object v12, p0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    iget-object v13, p1, Lcom/android/server/LocationManagerService$Receiver;->mKey:Ljava/lang/Object;

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_30

    invoke-virtual {p1}, Lcom/android/server/LocationManagerService$Receiver;->isListener()Z

    move-result v12

    if-eqz v12, :cond_30

    .line 1081
    invoke-virtual {p1}, Lcom/android/server/LocationManagerService$Receiver;->getListener()Landroid/location/ILocationListener;

    move-result-object v12

    invoke-interface {v12}, Landroid/location/ILocationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v12, p1, v13}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1082
    monitor-enter p1
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_68

    .line 1083
    :try_start_25
    iget v12, p1, Lcom/android/server/LocationManagerService$Receiver;->mPendingBroadcasts:I

    if-lez v12, :cond_2f

    .line 1084
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->decrementPendingBroadcasts()V

    .line 1085
    const/4 v12, 0x0

    iput v12, p1, Lcom/android/server/LocationManagerService$Receiver;->mPendingBroadcasts:I

    .line 1087
    :cond_2f
    monitor-exit p1
    :try_end_30
    .catchall {:try_start_25 .. :try_end_30} :catchall_6d

    .line 1092
    :cond_30
    :try_start_30
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 1093
    .local v8, providers:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v5, p1, Lcom/android/server/LocationManagerService$Receiver;->mUpdateRecords:Ljava/util/HashMap;

    .line 1094
    .local v5, oldRecords:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    if-eqz v5, :cond_77

    .line 1096
    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_41
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_70

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 1097
    .local v10, record:Lcom/android/server/LocationManagerService$UpdateRecord;
    iget-object v12, v10, Lcom/android/server/LocationManagerService$UpdateRecord;->mProvider:Ljava/lang/String;

    invoke-direct {p0, v12, v0, p1}, Lcom/android/server/LocationManagerService;->providerHasListener(Ljava/lang/String;ILcom/android/server/LocationManagerService$Receiver;)Z

    move-result v12

    if-nez v12, :cond_64

    .line 1098
    iget-object v12, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    iget-object v13, v10, Lcom/android/server/LocationManagerService$UpdateRecord;->mProvider:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/location/LocationProviderProxy;

    .line 1099
    .local v9, proxy:Lcom/android/internal/location/LocationProviderProxy;
    if-eqz v9, :cond_64

    .line 1100
    invoke-virtual {v9, v0}, Lcom/android/internal/location/LocationProviderProxy;->removeListener(I)V

    .line 1103
    .end local v9           #proxy:Lcom/android/internal/location/LocationProviderProxy;
    :cond_64
    invoke-virtual {v10}, Lcom/android/server/LocationManagerService$UpdateRecord;->disposeLocked()V
    :try_end_67
    .catchall {:try_start_30 .. :try_end_67} :catchall_68

    goto :goto_41

    .line 1134
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v5           #oldRecords:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    .end local v8           #providers:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v10           #record:Lcom/android/server/LocationManagerService$UpdateRecord;
    :catchall_68
    move-exception v12

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v12

    .line 1087
    :catchall_6d
    move-exception v12

    :try_start_6e
    monitor-exit p1
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_6d

    :try_start_6f
    throw v12

    .line 1106
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v5       #oldRecords:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    .restart local v8       #providers:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_70
    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 1112
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_77
    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_7b
    :goto_7b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_b8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1114
    .local v7, provider:Ljava/lang/String;
    invoke-direct {p0, v7}, Lcom/android/server/LocationManagerService;->isAllowedBySettingsLocked(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_7b

    .line 1118
    const/4 v1, 0x0

    .line 1119
    .local v1, hasOtherListener:Z
    iget-object v12, p0, Lcom/android/server/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    invoke-virtual {v12, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    .line 1120
    .local v11, recordsForProvider:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    if-eqz v11, :cond_9f

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_9f

    .line 1121
    const/4 v1, 0x1

    .line 1124
    :cond_9f
    iget-object v12, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v12, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/location/LocationProviderProxy;

    .line 1125
    .local v6, p:Lcom/android/internal/location/LocationProviderProxy;
    if-eqz v6, :cond_7b

    .line 1126
    if-eqz v1, :cond_b3

    .line 1127
    invoke-direct {p0, v7}, Lcom/android/server/LocationManagerService;->getMinTimeLocked(Ljava/lang/String;)J

    move-result-wide v12

    invoke-virtual {v6, v12, v13}, Lcom/android/internal/location/LocationProviderProxy;->setMinTime(J)V

    goto :goto_7b

    .line 1129
    :cond_b3
    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Lcom/android/internal/location/LocationProviderProxy;->enableLocationTracking(Z)V
    :try_end_b7
    .catchall {:try_start_6f .. :try_end_b7} :catchall_68

    goto :goto_7b

    .line 1134
    .end local v1           #hasOtherListener:Z
    .end local v6           #p:Lcom/android/internal/location/LocationProviderProxy;
    .end local v7           #provider:Ljava/lang/String;
    .end local v11           #recordsForProvider:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    :cond_b8
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1136
    return-void
.end method

.method private requestLocationUpdatesLocked(Ljava/lang/String;JFLcom/android/server/LocationManagerService$Receiver;)V
    .registers 26
    .parameter "provider"
    .parameter "minTime"
    .parameter "minDistance"
    .parameter "receiver"

    .prologue
    .line 1011
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/internal/location/LocationProviderProxy;

    .line 1012
    .local v19, proxy:Lcom/android/internal/location/LocationProviderProxy;
    if-nez v19, :cond_2c

    .line 1013
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "provider="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1016
    :cond_2c
    invoke-direct/range {p0 .. p1}, Lcom/android/server/LocationManagerService;->checkPermissionsSafe(Ljava/lang/String;)V

    .line 1019
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .line 1020
    .local v11, callingUid:I
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move-object v3, v5

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/LocationManagerService;->providerHasListener(Ljava/lang/String;ILcom/android/server/LocationManagerService$Receiver;)Z

    move-result v5

    if-nez v5, :cond_8d

    const/4 v5, 0x1

    move/from16 v17, v5

    .line 1021
    .local v17, newUid:Z
    :goto_43
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 1023
    .local v12, identity:J
    :try_start_47
    new-instance v4, Lcom/android/server/LocationManagerService$UpdateRecord;

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-wide/from16 v7, p2

    move/from16 v9, p4

    move-object/from16 v10, p5

    invoke-direct/range {v4 .. v11}, Lcom/android/server/LocationManagerService$UpdateRecord;-><init>(Lcom/android/server/LocationManagerService;Ljava/lang/String;JFLcom/android/server/LocationManagerService$Receiver;I)V

    .line 1024
    .local v4, r:Lcom/android/server/LocationManagerService$UpdateRecord;
    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/android/server/LocationManagerService$Receiver;->mUpdateRecords:Ljava/util/HashMap;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 1025
    .local v18, oldRecord:Lcom/android/server/LocationManagerService$UpdateRecord;
    if-eqz v18, :cond_6a

    .line 1026
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/LocationManagerService$UpdateRecord;->disposeLocked()V

    .line 1029
    :cond_6a
    if-eqz v17, :cond_72

    .line 1030
    move-object/from16 v0, v19

    move v1, v11

    invoke-virtual {v0, v1}, Lcom/android/internal/location/LocationProviderProxy;->addListener(I)V

    .line 1033
    :cond_72
    invoke-direct/range {p0 .. p1}, Lcom/android/server/LocationManagerService;->isAllowedBySettingsLocked(Ljava/lang/String;)Z

    move-result v14

    .line 1034
    .local v14, isProviderEnabled:Z
    if-eqz v14, :cond_91

    .line 1035
    invoke-direct/range {p0 .. p1}, Lcom/android/server/LocationManagerService;->getMinTimeLocked(Ljava/lang/String;)J

    move-result-wide v15

    .line 1036
    .local v15, minTimeForProvider:J
    move-object/from16 v0, v19

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/location/LocationProviderProxy;->setMinTime(J)V

    .line 1037
    const/4 v5, 0x1

    move-object/from16 v0, v19

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/location/LocationProviderProxy;->enableLocationTracking(Z)V
    :try_end_89
    .catchall {:try_start_47 .. :try_end_89} :catchall_9b

    .line 1043
    .end local v15           #minTimeForProvider:J
    :goto_89
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1045
    return-void

    .line 1020
    .end local v4           #r:Lcom/android/server/LocationManagerService$UpdateRecord;
    .end local v12           #identity:J
    .end local v14           #isProviderEnabled:Z
    .end local v17           #newUid:Z
    .end local v18           #oldRecord:Lcom/android/server/LocationManagerService$UpdateRecord;
    :cond_8d
    const/4 v5, 0x0

    move/from16 v17, v5

    goto :goto_43

    .line 1040
    .restart local v4       #r:Lcom/android/server/LocationManagerService$UpdateRecord;
    .restart local v12       #identity:J
    .restart local v14       #isProviderEnabled:Z
    .restart local v17       #newUid:Z
    .restart local v18       #oldRecord:Lcom/android/server/LocationManagerService$UpdateRecord;
    :cond_91
    const/4 v5, 0x0

    :try_start_92
    move-object/from16 v0, p5

    move-object/from16 v1, p1

    move v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/server/LocationManagerService$Receiver;->callProviderEnabledLocked(Ljava/lang/String;Z)Z
    :try_end_9a
    .catchall {:try_start_92 .. :try_end_9a} :catchall_9b

    goto :goto_89

    .line 1043
    .end local v4           #r:Lcom/android/server/LocationManagerService$UpdateRecord;
    .end local v14           #isProviderEnabled:Z
    .end local v18           #oldRecord:Lcom/android/server/LocationManagerService$UpdateRecord;
    :catchall_9b
    move-exception v5

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method private static shouldBroadcastSafe(Landroid/location/Location;Landroid/location/Location;Lcom/android/server/LocationManagerService$UpdateRecord;)Z
    .registers 11
    .parameter "loc"
    .parameter "lastLoc"
    .parameter "record"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1583
    if-nez p1, :cond_6

    move v2, v7

    .line 1601
    :goto_5
    return v2

    .line 1589
    :cond_6
    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_14

    move v2, v6

    .line 1590
    goto :goto_5

    .line 1594
    :cond_14
    iget v2, p2, Lcom/android/server/LocationManagerService$UpdateRecord;->mMinDistance:F

    float-to-double v0, v2

    .line 1595
    .local v0, minDistance:D
    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-lez v2, :cond_28

    .line 1596
    invoke-virtual {p0, p1}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v2

    float-to-double v2, v2

    cmpg-double v2, v2, v0

    if-gtz v2, :cond_28

    move v2, v6

    .line 1597
    goto :goto_5

    :cond_28
    move v2, v7

    .line 1601
    goto :goto_5
.end method

.method private updateProviderListenersLocked(Ljava/lang/String;Z)V
    .registers 13
    .parameter "provider"
    .parameter "enabled"

    .prologue
    const/4 v9, 0x1

    .line 812
    const/4 v3, 0x0

    .line 814
    .local v3, listeners:I
    iget-object v7, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/location/LocationProviderProxy;

    .line 815
    .local v4, p:Lcom/android/internal/location/LocationProviderProxy;
    if-nez v4, :cond_d

    .line 853
    :cond_c
    :goto_c
    return-void

    .line 819
    :cond_d
    const/4 v1, 0x0

    .line 821
    .local v1, deadReceivers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    iget-object v7, p0, Lcom/android/server/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 822
    .local v6, records:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    if-eqz v6, :cond_3e

    .line 823
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 824
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1d
    if-ge v2, v0, :cond_3e

    .line 825
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 827
    .local v5, record:Lcom/android/server/LocationManagerService$UpdateRecord;
    iget-object v7, v5, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    invoke-virtual {v7, p1, p2}, Lcom/android/server/LocationManagerService$Receiver;->callProviderEnabledLocked(Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_39

    .line 828
    if-nez v1, :cond_34

    .line 829
    new-instance v1, Ljava/util/ArrayList;

    .end local v1           #deadReceivers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 831
    .restart local v1       #deadReceivers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    :cond_34
    iget-object v7, v5, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 833
    :cond_39
    add-int/lit8 v3, v3, 0x1

    .line 824
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 837
    .end local v0           #N:I
    .end local v2           #i:I
    .end local v5           #record:Lcom/android/server/LocationManagerService$UpdateRecord;
    :cond_3e
    if-eqz v1, :cond_54

    .line 838
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int v2, v7, v9

    .restart local v2       #i:I
    :goto_46
    if-ltz v2, :cond_54

    .line 839
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/LocationManagerService$Receiver;

    invoke-direct {p0, v7}, Lcom/android/server/LocationManagerService;->removeUpdatesLocked(Lcom/android/server/LocationManagerService$Receiver;)V

    .line 838
    add-int/lit8 v2, v2, -0x1

    goto :goto_46

    .line 843
    .end local v2           #i:I
    :cond_54
    if-eqz p2, :cond_66

    .line 844
    invoke-virtual {v4}, Lcom/android/internal/location/LocationProviderProxy;->enable()V

    .line 845
    if-lez v3, :cond_c

    .line 846
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->getMinTimeLocked(Ljava/lang/String;)J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Lcom/android/internal/location/LocationProviderProxy;->setMinTime(J)V

    .line 847
    invoke-virtual {v4, v9}, Lcom/android/internal/location/LocationProviderProxy;->enableLocationTracking(Z)V

    goto :goto_c

    .line 850
    :cond_66
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Lcom/android/internal/location/LocationProviderProxy;->enableLocationTracking(Z)V

    .line 851
    invoke-virtual {v4}, Lcom/android/internal/location/LocationProviderProxy;->disable()V

    goto :goto_c
.end method

.method private updateProvidersLocked()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    .line 796
    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int v0, v5, v6

    .local v0, i:I
    :goto_9
    if-ltz v0, :cond_32

    .line 797
    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/location/LocationProviderProxy;

    .line 798
    .local v3, p:Lcom/android/internal/location/LocationProviderProxy;
    invoke-virtual {v3}, Lcom/android/internal/location/LocationProviderProxy;->isEnabled()Z

    move-result v1

    .line 799
    .local v1, isEnabled:Z
    invoke-virtual {v3}, Lcom/android/internal/location/LocationProviderProxy;->getName()Ljava/lang/String;

    move-result-object v2

    .line 800
    .local v2, name:Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/server/LocationManagerService;->isAllowedBySettingsLocked(Ljava/lang/String;)Z

    move-result v4

    .line 802
    .local v4, shouldBeEnabled:Z
    if-eqz v1, :cond_2a

    if-nez v4, :cond_2a

    .line 803
    const/4 v5, 0x0

    invoke-direct {p0, v2, v5}, Lcom/android/server/LocationManagerService;->updateProviderListenersLocked(Ljava/lang/String;Z)V

    .line 796
    :cond_27
    :goto_27
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 804
    :cond_2a
    if-nez v1, :cond_27

    if-eqz v4, :cond_27

    .line 805
    invoke-direct {p0, v2, v6}, Lcom/android/server/LocationManagerService;->updateProviderListenersLocked(Ljava/lang/String;Z)V

    goto :goto_27

    .line 809
    .end local v1           #isEnabled:Z
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #p:Lcom/android/internal/location/LocationProviderProxy;
    .end local v4           #shouldBeEnabled:Z
    :cond_32
    return-void
.end method

.method private writeLastKnownLocationLocked(Ljava/lang/String;Landroid/location/Location;)V
    .registers 16
    .parameter "provider"
    .parameter "location"

    .prologue
    .line 495
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 496
    .local v4, now:J
    iget-object v9, p0, Lcom/android/server/LocationManagerService;->mLastWriteTime:Ljava/util/HashMap;

    invoke-virtual {v9, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 497
    .local v3, last:Ljava/lang/Long;
    if-eqz v3, :cond_1c

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    sub-long v9, v4, v9

    const-wide/32 v11, 0xea60

    cmp-long v9, v9, v11

    if-gez v9, :cond_1c

    .line 539
    :cond_1b
    :goto_1b
    return-void

    .line 501
    :cond_1c
    iget-object v9, p0, Lcom/android/server/LocationManagerService;->mLastWriteTime:Ljava/util/HashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, p1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v9, 0x64

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 504
    .local v6, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p2}, Landroid/location/Location;->getTime()J

    move-result-wide v9

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 505
    const/16 v9, 0x2c

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 506
    invoke-virtual {p2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v9

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 507
    const/16 v9, 0x2c

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 508
    invoke-virtual {p2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v9

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 509
    const/16 v9, 0x2c

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 510
    invoke-virtual {p2}, Landroid/location/Location;->getAltitude()D

    move-result-wide v9

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 511
    const/16 v9, 0x2c

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 512
    invoke-virtual {p2}, Landroid/location/Location;->getBearing()F

    move-result v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 513
    const/16 v9, 0x2c

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 514
    invoke-virtual {p2}, Landroid/location/Location;->getSpeed()F

    move-result v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 516
    const/4 v7, 0x0

    .line 518
    .local v7, writer:Ljava/io/FileWriter;
    :try_start_70
    new-instance v0, Ljava/io/File;

    const-string v9, "/data/system/location"

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 519
    .local v0, d:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_99

    .line 520
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v9

    if-nez v9, :cond_99

    .line 521
    const-string v9, "LocationManagerService"

    const-string v10, "Unable to create directory to write location"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8a
    .catchall {:try_start_70 .. :try_end_8a} :catchall_db
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_8a} :catch_c5

    .line 531
    if-eqz v7, :cond_1b

    .line 533
    :try_start_8c
    #Replaced unresolvable odex instruction with a throw
    throw v7
    #invoke-virtual-quick {v7}, vtable@0x11
    :try_end_8f
    .catch Ljava/io/IOException; {:try_start_8c .. :try_end_8f} :catch_90

    goto :goto_1b

    .line 534
    :catch_90
    move-exception v1

    .line 535
    .local v1, e:Ljava/io/IOException;
    const-string v9, "LocationManagerService"

    const-string v10, "Exception closing file"

    .end local v0           #d:Ljava/io/File;
    :goto_95
    invoke-static {v9, v10, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1b

    .line 525
    .end local v1           #e:Ljava/io/IOException;
    .restart local v0       #d:Ljava/io/File;
    :cond_99
    :try_start_99
    new-instance v2, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "/data/system/location/location."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 526
    .local v2, f:Ljava/io/File;
    new-instance v8, Ljava/io/FileWriter;

    invoke-direct {v8, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_b6
    .catchall {:try_start_99 .. :try_end_b6} :catchall_db
    .catch Ljava/io/IOException; {:try_start_99 .. :try_end_b6} :catch_c5

    .line 527
    .end local v7           #writer:Ljava/io/FileWriter;
    .local v8, writer:Ljava/io/FileWriter;
    :try_start_b6
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_bd
    .catchall {:try_start_b6 .. :try_end_bd} :catchall_f4
    .catch Ljava/io/IOException; {:try_start_b6 .. :try_end_bd} :catch_f7

    .line 531
    if-eqz v8, :cond_c2

    .line 533
    :try_start_bf
    invoke-virtual {v8}, Ljava/io/FileWriter;->close()V
    :try_end_c2
    .catch Ljava/io/IOException; {:try_start_bf .. :try_end_c2} :catch_eb

    :cond_c2
    :goto_c2
    move-object v7, v8

    .line 538
    .end local v8           #writer:Ljava/io/FileWriter;
    .restart local v7       #writer:Ljava/io/FileWriter;
    goto/16 :goto_1b

    .line 528
    .end local v0           #d:Ljava/io/File;
    .end local v2           #f:Ljava/io/File;
    :catch_c5
    move-exception v9

    move-object v1, v9

    .line 529
    .restart local v1       #e:Ljava/io/IOException;
    :goto_c7
    :try_start_c7
    const-string v9, "LocationManagerService"

    const-string v10, "Unable to write location"

    invoke-static {v9, v10, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_ce
    .catchall {:try_start_c7 .. :try_end_ce} :catchall_db

    .line 531
    if-eqz v7, :cond_1b

    .line 533
    :try_start_d0
    invoke-virtual {v7}, Ljava/io/FileWriter;->close()V
    :try_end_d3
    .catch Ljava/io/IOException; {:try_start_d0 .. :try_end_d3} :catch_d5

    goto/16 :goto_1b

    .line 534
    :catch_d5
    move-exception v1

    .line 535
    const-string v9, "LocationManagerService"

    const-string v10, "Exception closing file"

    goto :goto_95

    .line 531
    .end local v1           #e:Ljava/io/IOException;
    :catchall_db
    move-exception v9

    :goto_dc
    if-eqz v7, :cond_e1

    .line 533
    :try_start_de
    invoke-virtual {v7}, Ljava/io/FileWriter;->close()V
    :try_end_e1
    .catch Ljava/io/IOException; {:try_start_de .. :try_end_e1} :catch_e2

    .line 531
    :cond_e1
    :goto_e1
    throw v9

    .line 534
    :catch_e2
    move-exception v1

    .line 535
    .restart local v1       #e:Ljava/io/IOException;
    const-string v10, "LocationManagerService"

    const-string v11, "Exception closing file"

    invoke-static {v10, v11, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e1

    .line 534
    .end local v1           #e:Ljava/io/IOException;
    .end local v7           #writer:Ljava/io/FileWriter;
    .restart local v0       #d:Ljava/io/File;
    .restart local v2       #f:Ljava/io/File;
    .restart local v8       #writer:Ljava/io/FileWriter;
    :catch_eb
    move-exception v1

    .line 535
    .restart local v1       #e:Ljava/io/IOException;
    const-string v9, "LocationManagerService"

    const-string v10, "Exception closing file"

    invoke-static {v9, v10, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c2

    .line 531
    .end local v1           #e:Ljava/io/IOException;
    :catchall_f4
    move-exception v9

    move-object v7, v8

    .end local v8           #writer:Ljava/io/FileWriter;
    .restart local v7       #writer:Ljava/io/FileWriter;
    goto :goto_dc

    .line 528
    .end local v7           #writer:Ljava/io/FileWriter;
    .restart local v8       #writer:Ljava/io/FileWriter;
    :catch_f7
    move-exception v9

    move-object v1, v9

    move-object v7, v8

    .end local v8           #writer:Ljava/io/FileWriter;
    .restart local v7       #writer:Ljava/io/FileWriter;
    goto :goto_c7
.end method


# virtual methods
.method public addGpsStatusListener(Landroid/location/IGpsStatusListener;)Z
    .registers 6
    .parameter "listener"

    .prologue
    const/4 v3, 0x0

    .line 1139
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mGpsStatusProvider:Landroid/location/IGpsStatusProvider;

    if-nez v1, :cond_7

    move v1, v3

    .line 1153
    :goto_6
    return v1

    .line 1142
    :cond_7
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_19

    .line 1144
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires ACCESS_FINE_LOCATION permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1148
    :cond_19
    :try_start_19
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mGpsStatusProvider:Landroid/location/IGpsStatusProvider;

    invoke-interface {v1, p1}, Landroid/location/IGpsStatusProvider;->addGpsStatusListener(Landroid/location/IGpsStatusListener;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_1e} :catch_20

    .line 1153
    const/4 v1, 0x1

    goto :goto_6

    .line 1149
    :catch_20
    move-exception v1

    move-object v0, v1

    .line 1150
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "LocationManagerService"

    const-string v2, "mGpsStatusProvider.addGpsStatusListener failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v3

    .line 1151
    goto :goto_6
.end method

.method public addProximityAlert(DDFJLandroid/app/PendingIntent;)V
    .registers 13
    .parameter "latitude"
    .parameter "longitude"
    .parameter "radius"
    .parameter "expiration"
    .parameter "intent"

    .prologue
    .line 1402
    :try_start_0
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_3} :catch_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_e

    .line 1403
    :try_start_3
    invoke-direct/range {p0 .. p8}, Lcom/android/server/LocationManagerService;->addProximityAlertLocked(DDFJLandroid/app/PendingIntent;)V

    .line 1404
    monitor-exit v2

    .line 1410
    :goto_7
    return-void

    .line 1404
    :catchall_8
    move-exception v3

    monitor-exit v2
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    :try_start_a
    throw v3
    :try_end_b
    .catch Ljava/lang/SecurityException; {:try_start_a .. :try_end_b} :catch_b
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_b} :catch_e

    .line 1405
    :catch_b
    move-exception v2

    move-object v1, v2

    .line 1406
    .local v1, se:Ljava/lang/SecurityException;
    throw v1

    .line 1407
    .end local v1           #se:Ljava/lang/SecurityException;
    :catch_e
    move-exception v2

    move-object v0, v2

    .line 1408
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "LocationManagerService"

    const-string v3, "addProximityAlert got exception:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7
.end method

.method public addTestProvider(Ljava/lang/String;ZZZZZZZII)V
    .registers 25
    .parameter "name"
    .parameter "requiresNetwork"
    .parameter "requiresSatellite"
    .parameter "requiresCell"
    .parameter "hasMonetaryCost"
    .parameter "supportsAltitude"
    .parameter "supportsSpeed"
    .parameter "supportsBearing"
    .parameter "powerRequirement"
    .parameter "accuracy"

    .prologue
    .line 1882
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->checkMockPermissionsSafe()V

    .line 1884
    iget-object v13, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v13

    .line 1885
    :try_start_6
    new-instance v0, Lcom/android/internal/location/MockProvider;

    move-object v1, p1

    move-object v2, p0

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Lcom/android/internal/location/MockProvider;-><init>(Ljava/lang/String;Landroid/location/ILocationManager;ZZZZZZZII)V

    .line 1890
    .local v0, provider:Lcom/android/internal/location/MockProvider;
    const-string v1, "gps"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2f

    const-string v1, "network"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 1892
    :cond_2f
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/location/LocationProviderProxy;

    .line 1893
    .local v12, proxy:Lcom/android/internal/location/LocationProviderProxy;
    if-eqz v12, :cond_40

    .line 1894
    const/4 v1, 0x0

    invoke-virtual {v12, v1}, Lcom/android/internal/location/LocationProviderProxy;->enableLocationTracking(Z)V

    .line 1895
    invoke-direct {p0, v12}, Lcom/android/server/LocationManagerService;->removeProvider(Lcom/android/internal/location/LocationProviderProxy;)V

    .line 1898
    .end local v12           #proxy:Lcom/android/internal/location/LocationProviderProxy;
    :cond_40
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_6a

    .line 1899
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Provider \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" already exists"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1905
    .end local v0           #provider:Lcom/android/internal/location/MockProvider;
    :catchall_67
    move-exception v1

    monitor-exit v13
    :try_end_69
    .catchall {:try_start_6 .. :try_end_69} :catchall_67

    throw v1

    .line 1901
    .restart local v0       #provider:Lcom/android/internal/location/MockProvider;
    :cond_6a
    :try_start_6a
    new-instance v1, Lcom/android/internal/location/LocationProviderProxy;

    invoke-direct {v1, p1, v0}, Lcom/android/internal/location/LocationProviderProxy;-><init>(Ljava/lang/String;Landroid/location/ILocationProvider;)V

    invoke-direct {p0, v1}, Lcom/android/server/LocationManagerService;->addProvider(Lcom/android/internal/location/LocationProviderProxy;)V

    .line 1902
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1903
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mLastKnownLocation:Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1904
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->updateProvidersLocked()V

    .line 1905
    monitor-exit v13
    :try_end_81
    .catchall {:try_start_6a .. :try_end_81} :catchall_67

    .line 1906
    return-void
.end method

.method public clearTestProviderEnabled(Ljava/lang/String;)V
    .registers 7
    .parameter "provider"

    .prologue
    .line 1976
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->checkMockPermissionsSafe()V

    .line 1977
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1978
    :try_start_6
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/location/MockProvider;

    .line 1979
    .local v0, mockProvider:Lcom/android/internal/location/MockProvider;
    if-nez v0, :cond_32

    .line 1980
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Provider \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" unknown"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1985
    .end local v0           #mockProvider:Lcom/android/internal/location/MockProvider;
    :catchall_2f
    move-exception v2

    monitor-exit v1
    :try_end_31
    .catchall {:try_start_6 .. :try_end_31} :catchall_2f

    throw v2

    .line 1982
    .restart local v0       #mockProvider:Lcom/android/internal/location/MockProvider;
    :cond_32
    :try_start_32
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mEnabledProviders:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1983
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mDisabledProviders:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1984
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->updateProvidersLocked()V

    .line 1985
    monitor-exit v1
    :try_end_40
    .catchall {:try_start_32 .. :try_end_40} :catchall_2f

    .line 1986
    return-void
.end method

.method public clearTestProviderLocation(Ljava/lang/String;)V
    .registers 7
    .parameter "provider"

    .prologue
    .line 1945
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->checkMockPermissionsSafe()V

    .line 1946
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1947
    :try_start_6
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/location/MockProvider;

    .line 1948
    .local v0, mockProvider:Lcom/android/internal/location/MockProvider;
    if-nez v0, :cond_32

    .line 1949
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Provider \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" unknown"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1952
    .end local v0           #mockProvider:Lcom/android/internal/location/MockProvider;
    :catchall_2f
    move-exception v2

    monitor-exit v1
    :try_end_31
    .catchall {:try_start_6 .. :try_end_31} :catchall_2f

    throw v2

    .line 1951
    .restart local v0       #mockProvider:Lcom/android/internal/location/MockProvider;
    :cond_32
    :try_start_32
    invoke-virtual {v0}, Lcom/android/internal/location/MockProvider;->clearLocation()V

    .line 1952
    monitor-exit v1
    :try_end_36
    .catchall {:try_start_32 .. :try_end_36} :catchall_2f

    .line 1953
    return-void
.end method

.method public clearTestProviderStatus(Ljava/lang/String;)V
    .registers 7
    .parameter "provider"

    .prologue
    .line 2000
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->checkMockPermissionsSafe()V

    .line 2001
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2002
    :try_start_6
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/location/MockProvider;

    .line 2003
    .local v0, mockProvider:Lcom/android/internal/location/MockProvider;
    if-nez v0, :cond_32

    .line 2004
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Provider \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" unknown"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2007
    .end local v0           #mockProvider:Lcom/android/internal/location/MockProvider;
    :catchall_2f
    move-exception v2

    monitor-exit v1
    :try_end_31
    .catchall {:try_start_6 .. :try_end_31} :catchall_2f

    throw v2

    .line 2006
    .restart local v0       #mockProvider:Lcom/android/internal/location/MockProvider;
    :cond_32
    :try_start_32
    invoke-virtual {v0}, Lcom/android/internal/location/MockProvider;->clearStatus()V

    .line 2007
    monitor-exit v1
    :try_end_36
    .catchall {:try_start_32 .. :try_end_36} :catchall_2f

    .line 2008
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 21
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 2017
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    move-object v13, v0

    const-string v14, "android.permission.DUMP"

    invoke-virtual {v13, v14}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v13

    if-eqz v13, :cond_39

    .line 2019
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Permission Denial: can\'t dump LocationManagerService from from pid="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", uid="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2094
    .end local p0
    .end local p1
    :goto_38
    return-void

    .line 2025
    .restart local p0
    .restart local p1
    :cond_39
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    move-object v13, v0

    monitor-enter v13

    .line 2026
    :try_start_3f
    const-string v14, "Current Location Manager state:"

    move-object/from16 v0, p2

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2027
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "  sProvidersLoaded="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-boolean v15, Lcom/android/server/LocationManagerService;->sProvidersLoaded:Z

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2028
    const-string v14, "  Listeners:"

    move-object/from16 v0, p2

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2029
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    move-object v14, v0

    invoke-virtual {v14}, Ljava/util/HashMap;->size()I

    move-result v3

    .line 2030
    .local v3, N:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_74
    if-ge v4, v3, :cond_9f

    .line 2031
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "    "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    move-object v15, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2030
    add-int/lit8 v4, v4, 0x1

    goto :goto_74

    .line 2033
    :cond_9f
    const-string v14, "  Location Listeners:"

    move-object/from16 v0, p2

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2034
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    move-object v14, v0

    invoke-virtual {v14}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .end local v4           #i:I
    .end local p1
    :cond_b4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_131

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/LocationManagerService$Receiver;

    .line 2035
    .local v4, i:Lcom/android/server/LocationManagerService$Receiver;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "    "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ":"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2036
    iget-object v14, v4, Lcom/android/server/LocationManagerService$Receiver;->mUpdateRecords:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_e9
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_b4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 2037
    .local v12, j:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "      "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    move-object v0, v14

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ":"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2038
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/LocationManagerService$UpdateRecord;

    const-string v14, "        "

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Lcom/android/server/LocationManagerService$UpdateRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_e9

    .line 2093
    .end local v3           #N:I
    .end local v4           #i:Lcom/android/server/LocationManagerService$Receiver;
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v12           #j:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    .end local p0
    :catchall_12e
    move-exception v14

    monitor-exit v13
    :try_end_130
    .catchall {:try_start_3f .. :try_end_130} :catchall_12e

    throw v14

    .line 2041
    .restart local v3       #N:I
    .restart local p0
    :cond_131
    :try_start_131
    const-string v14, "  Records by Provider:"

    move-object/from16 v0, p2

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2043
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    move-object v14, v0

    invoke-virtual {v14}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_146
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1b9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 2044
    .local v8, i:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;>;"
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "    "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    move-object v0, v14

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ":"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2045
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10       #i$:Ljava/util/Iterator;
    :goto_184
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_146

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 2046
    .local v11, j:Lcom/android/server/LocationManagerService$UpdateRecord;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "      "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ":"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2047
    const-string v14, "        "

    move-object v0, v11

    move-object/from16 v1, p2

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Lcom/android/server/LocationManagerService$UpdateRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_184

    .line 2050
    .end local v8           #i:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;>;"
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v11           #j:Lcom/android/server/LocationManagerService$UpdateRecord;
    :cond_1b9
    const-string v14, "  Last Known Locations:"

    move-object/from16 v0, p2

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2052
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mLastKnownLocation:Ljava/util/HashMap;

    move-object v14, v0

    invoke-virtual {v14}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_1ce
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_21a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 2053
    .local v6, i:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Landroid/location/Location;>;"
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "    "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    move-object v0, v14

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ":"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2054
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/Location;

    new-instance v14, Landroid/util/PrintWriterPrinter;

    move-object v0, v14

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    const-string v15, "      "

    move-object/from16 v0, p1

    move-object v1, v14

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    goto :goto_1ce

    .line 2056
    .end local v6           #i:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Landroid/location/Location;>;"
    :cond_21a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mProximityAlerts:Ljava/util/HashMap;

    move-object v14, v0

    invoke-virtual {v14}, Ljava/util/HashMap;->size()I

    move-result v14

    if-lez v14, :cond_27a

    .line 2057
    const-string v14, "  Proximity Alerts:"

    move-object/from16 v0, p2

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2059
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mProximityAlerts:Ljava/util/HashMap;

    move-object v14, v0

    invoke-virtual {v14}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_23a
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_27a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 2060
    .local v5, i:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/app/PendingIntent;Lcom/android/server/LocationManagerService$ProximityAlert;>;"
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "    "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ":"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2061
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/LocationManagerService$ProximityAlert;

    const-string v14, "      "

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Lcom/android/server/LocationManagerService$ProximityAlert;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_23a

    .line 2064
    .end local v5           #i:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/app/PendingIntent;Lcom/android/server/LocationManagerService$ProximityAlert;>;"
    :cond_27a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mProximitiesEntered:Ljava/util/HashSet;

    move-object v14, v0

    invoke-virtual {v14}, Ljava/util/HashSet;->size()I

    move-result v14

    if-lez v14, :cond_2cb

    .line 2065
    const-string v14, "  Proximities Entered:"

    move-object/from16 v0, p2

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2066
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mProximitiesEntered:Ljava/util/HashSet;

    move-object v14, v0

    invoke-virtual {v14}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_296
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2cb

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/LocationManagerService$ProximityAlert;

    .line 2067
    .local v4, i:Lcom/android/server/LocationManagerService$ProximityAlert;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "    "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ":"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2068
    const-string v14, "      "

    move-object v0, v4

    move-object/from16 v1, p2

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Lcom/android/server/LocationManagerService$ProximityAlert;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_296

    .line 2071
    .end local v4           #i:Lcom/android/server/LocationManagerService$ProximityAlert;
    :cond_2cb
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "  mProximityReceiver="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mProximityReceiver:Lcom/android/server/LocationManagerService$Receiver;

    move-object v15, v0

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2072
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "  mProximityListener="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mProximityListener:Landroid/location/ILocationListener;

    move-object v15, v0

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2073
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mEnabledProviders:Ljava/util/Set;

    move-object v14, v0

    invoke-interface {v14}, Ljava/util/Set;->size()I

    move-result v14

    if-lez v14, :cond_349

    .line 2074
    const-string v14, "  Enabled Providers:"

    move-object/from16 v0, p2

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2075
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mEnabledProviders:Ljava/util/Set;

    move-object v14, v0

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_323
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_349

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2076
    .local v4, i:Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "    "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_323

    .line 2080
    .end local v4           #i:Ljava/lang/String;
    :cond_349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mDisabledProviders:Ljava/util/Set;

    move-object v14, v0

    invoke-interface {v14}, Ljava/util/Set;->size()I

    move-result v14

    if-lez v14, :cond_38b

    .line 2081
    const-string v14, "  Disabled Providers:"

    move-object/from16 v0, p2

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2082
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mDisabledProviders:Ljava/util/Set;

    move-object v14, v0

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_365
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_38b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2083
    .restart local v4       #i:Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "    "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_365

    .line 2087
    .end local v4           #i:Ljava/lang/String;
    :cond_38b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    move-object v14, v0

    invoke-virtual {v14}, Ljava/util/HashMap;->size()I

    move-result v14

    if-lez v14, :cond_3c8

    .line 2088
    const-string v14, "  Mock Providers:"

    move-object/from16 v0, p2

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2089
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    move-object v14, v0

    invoke-virtual {v14}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .end local p0
    :goto_3ab
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3c8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 2090
    .local v7, i:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/location/MockProvider;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/location/MockProvider;

    const-string v14, "      "

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/location/MockProvider;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_3ab

    .line 2093
    .end local v7           #i:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/location/MockProvider;>;"
    :cond_3c8
    monitor-exit v13
    :try_end_3c9
    .catchall {:try_start_131 .. :try_end_3c9} :catchall_12e

    goto/16 :goto_38
.end method

.method public getAllProviders()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 741
    :try_start_0
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_3} :catch_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_10

    .line 742
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->_getAllProvidersLocked()Ljava/util/List;

    move-result-object v3

    monitor-exit v2

    move-object v2, v3

    .line 748
    :goto_9
    return-object v2

    .line 743
    :catchall_a
    move-exception v3

    monitor-exit v2
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    :try_start_c
    throw v3
    :try_end_d
    .catch Ljava/lang/SecurityException; {:try_start_c .. :try_end_d} :catch_d
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_d} :catch_10

    .line 744
    :catch_d
    move-exception v2

    move-object v1, v2

    .line 745
    .local v1, se:Ljava/lang/SecurityException;
    throw v1

    .line 746
    .end local v1           #se:Ljava/lang/SecurityException;
    :catch_10
    move-exception v2

    move-object v0, v2

    .line 747
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "LocationManagerService"

    const-string v3, "getAllProviders got exception:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 748
    const/4 v2, 0x0

    goto :goto_9
.end method

.method public getFromLocation(DDILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .registers 23
    .parameter "latitude"
    .parameter "longitude"
    .parameter "maxResults"
    .parameter "language"
    .parameter "country"
    .parameter "variant"
    .parameter "appName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDI",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1833
    .local p10, addrs:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGeocodeProvider:Landroid/location/IGeocodeProvider;

    if-eqz v0, :cond_25

    .line 1835
    :try_start_4
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGeocodeProvider:Landroid/location/IGeocodeProvider;

    move-wide v1, p1

    move-wide v3, p3

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-interface/range {v0 .. v10}, Landroid/location/IGeocodeProvider;->getFromLocation(DDILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_17} :catch_19

    move-result-object v0

    .line 1842
    :goto_18
    return-object v0

    .line 1837
    :catch_19
    move-exception v0

    move-object v11, v0

    .line 1838
    .local v11, e:Landroid/os/RemoteException;
    const-string v0, "LocationManagerService"

    const-string v1, "getFromLocation failed"

    invoke-static {v0, v1, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1839
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mGeocodeProvider:Landroid/location/IGeocodeProvider;

    .line 1842
    .end local v11           #e:Landroid/os/RemoteException;
    :cond_25
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public getFromLocationName(Ljava/lang/String;DDDDILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .registers 36
    .parameter "locationName"
    .parameter "lowerLeftLatitude"
    .parameter "lowerLeftLongitude"
    .parameter "upperRightLatitude"
    .parameter "upperRightLongitude"
    .parameter "maxResults"
    .parameter "language"
    .parameter "country"
    .parameter "variant"
    .parameter "appName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "DDDDI",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1851
    .local p15, addrs:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mGeocodeProvider:Landroid/location/IGeocodeProvider;

    move-object v3, v0

    if-eqz v3, :cond_3b

    .line 1853
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mGeocodeProvider:Landroid/location/IGeocodeProvider;

    move-object v3, v0

    move-object/from16 v4, p1

    move-wide/from16 v5, p2

    move-wide/from16 v7, p4

    move-wide/from16 v9, p6

    move-wide/from16 v11, p8

    move/from16 v13, p10

    move-object/from16 v14, p11

    move-object/from16 v15, p12

    move-object/from16 v16, p13

    move-object/from16 v17, p14

    move-object/from16 v18, p15

    invoke-interface/range {v3 .. v18}, Landroid/location/IGeocodeProvider;->getFromLocationName(Ljava/lang/String;DDDDILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_25} :catch_27

    move-result-object v3

    .line 1861
    :goto_26
    return-object v3

    .line 1856
    :catch_27
    move-exception v3

    move-object/from16 v19, v3

    .line 1857
    .local v19, e:Landroid/os/RemoteException;
    const-string v3, "LocationManagerService"

    const-string v4, "getFromLocationName failed"

    move-object v0, v3

    move-object v1, v4

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1858
    const/4 v3, 0x0

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/LocationManagerService;->mGeocodeProvider:Landroid/location/IGeocodeProvider;

    .line 1861
    .end local v19           #e:Landroid/os/RemoteException;
    :cond_3b
    const/4 v3, 0x0

    goto :goto_26
.end method

.method public getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;
    .registers 6
    .parameter "provider"

    .prologue
    .line 1546
    :try_start_0
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_3} :catch_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_10

    .line 1547
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->_getLastKnownLocationLocked(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v3

    monitor-exit v2

    move-object v2, v3

    .line 1553
    :goto_9
    return-object v2

    .line 1548
    :catchall_a
    move-exception v3

    monitor-exit v2
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    :try_start_c
    throw v3
    :try_end_d
    .catch Ljava/lang/SecurityException; {:try_start_c .. :try_end_d} :catch_d
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_d} :catch_10

    .line 1549
    :catch_d
    move-exception v2

    move-object v1, v2

    .line 1550
    .local v1, se:Ljava/lang/SecurityException;
    throw v1

    .line 1551
    .end local v1           #se:Ljava/lang/SecurityException;
    :catch_10
    move-exception v2

    move-object v0, v2

    .line 1552
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "LocationManagerService"

    const-string v3, "getLastKnownLocation got exception:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1553
    const/4 v2, 0x0

    goto :goto_9
.end method

.method public getPositionMode()I
    .registers 2

    .prologue
    .line 2100
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGpsProvider:Lcom/android/internal/location/GpsLocationProvider;

    if-nez v0, :cond_6

    .line 2104
    const/4 v0, -0x1

    .line 2107
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGpsProvider:Lcom/android/internal/location/GpsLocationProvider;

    invoke-virtual {v0}, Lcom/android/internal/location/GpsLocationProvider;->getPositionMode()I

    move-result v0

    goto :goto_5
.end method

.method public getProviderInfo(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 6
    .parameter "provider"

    .prologue
    .line 1477
    :try_start_0
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_3} :catch_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_10

    .line 1478
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->_getProviderInfoLocked(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    monitor-exit v2

    move-object v2, v3

    .line 1484
    :goto_9
    return-object v2

    .line 1479
    :catchall_a
    move-exception v3

    monitor-exit v2
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    :try_start_c
    throw v3
    :try_end_d
    .catch Ljava/lang/SecurityException; {:try_start_c .. :try_end_d} :catch_d
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_d} :catch_10

    .line 1480
    :catch_d
    move-exception v2

    move-object v1, v2

    .line 1481
    .local v1, se:Ljava/lang/SecurityException;
    throw v1

    .line 1482
    .end local v1           #se:Ljava/lang/SecurityException;
    :catch_10
    move-exception v2

    move-object v0, v2

    .line 1483
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "LocationManagerService"

    const-string v3, "_getProviderInfo got exception:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1484
    const/4 v2, 0x0

    goto :goto_9
.end method

.method public getProviders(Z)Ljava/util/List;
    .registers 6
    .parameter "enabledOnly"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 766
    :try_start_0
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_3} :catch_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_10

    .line 767
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->_getProvidersLocked(Z)Ljava/util/List;

    move-result-object v3

    monitor-exit v2

    move-object v2, v3

    .line 773
    :goto_9
    return-object v2

    .line 768
    :catchall_a
    move-exception v3

    monitor-exit v2
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    :try_start_c
    throw v3
    :try_end_d
    .catch Ljava/lang/SecurityException; {:try_start_c .. :try_end_d} :catch_d
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_d} :catch_10

    .line 769
    :catch_d
    move-exception v2

    move-object v1, v2

    .line 770
    .local v1, se:Ljava/lang/SecurityException;
    throw v1

    .line 771
    .end local v1           #se:Ljava/lang/SecurityException;
    :catch_10
    move-exception v2

    move-object v0, v2

    .line 772
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "LocationManagerService"

    const-string v3, "getProviders got exception:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 773
    const/4 v2, 0x0

    goto :goto_9
.end method

.method public getSlpMode()I
    .registers 2

    .prologue
    .line 2142
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGpsProvider:Lcom/android/internal/location/GpsLocationProvider;

    invoke-virtual {v0}, Lcom/android/internal/location/GpsLocationProvider;->getSlpMode()I

    move-result v0

    return v0
.end method

.method public getSuplAddress()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2134
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGpsProvider:Lcom/android/internal/location/GpsLocationProvider;

    invoke-virtual {v0}, Lcom/android/internal/location/GpsLocationProvider;->getSuplAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSuplPort()I
    .registers 2

    .prologue
    .line 2138
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGpsProvider:Lcom/android/internal/location/GpsLocationProvider;

    invoke-virtual {v0}, Lcom/android/internal/location/GpsLocationProvider;->getSuplPort()I

    move-result v0

    return v0
.end method

.method public injectTime(JJI)V
    .registers 12
    .parameter "time"
    .parameter "timeReference"
    .parameter "uncertainty"

    .prologue
    .line 2162
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGpsProvider:Lcom/android/internal/location/GpsLocationProvider;

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/location/GpsLocationProvider;->injectTime(JJI)V

    .line 2163
    return-void
.end method

.method public injectXtraData([BI)V
    .registers 4
    .parameter "data"
    .parameter "length"

    .prologue
    .line 2168
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGpsProvider:Lcom/android/internal/location/GpsLocationProvider;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/location/GpsLocationProvider;->injectXtraData([BI)V

    .line 2169
    return-void
.end method

.method public installGeocodeProvider(Landroid/location/IGeocodeProvider;)V
    .registers 4
    .parameter "provider"

    .prologue
    .line 683
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INSTALL_LOCATION_PROVIDER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_12

    .line 685
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires INSTALL_LOCATION_PROVIDER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 688
    :cond_12
    iput-object p1, p0, Lcom/android/server/LocationManagerService;->mGeocodeProvider:Landroid/location/IGeocodeProvider;

    .line 689
    return-void
.end method

.method public installLocationProvider(Ljava/lang/String;Landroid/location/ILocationProvider;)V
    .registers 9
    .parameter "name"
    .parameter "provider"

    .prologue
    .line 653
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.INSTALL_LOCATION_PROVIDER"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_12

    .line 655
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires INSTALL_LOCATION_PROVIDER permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 658
    :cond_12
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 660
    :try_start_15
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/location/LocationProviderProxy;

    .line 661
    .local v0, oldProvider:Lcom/android/internal/location/LocationProviderProxy;
    if-eqz v0, :cond_2f

    .line 662
    invoke-virtual {v0}, Lcom/android/internal/location/LocationProviderProxy;->isDead()Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 663
    const-string v3, "LocationManagerService"

    const-string v4, "replacing dead provider"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    invoke-direct {p0, v0}, Lcom/android/server/LocationManagerService;->removeProvider(Lcom/android/internal/location/LocationProviderProxy;)V

    .line 670
    :cond_2f
    new-instance v1, Lcom/android/internal/location/LocationProviderProxy;

    invoke-direct {v1, p1, p2}, Lcom/android/internal/location/LocationProviderProxy;-><init>(Ljava/lang/String;Landroid/location/ILocationProvider;)V

    .line 671
    .local v1, proxy:Lcom/android/internal/location/LocationProviderProxy;
    invoke-direct {p0, v1}, Lcom/android/server/LocationManagerService;->addProvider(Lcom/android/internal/location/LocationProviderProxy;)V

    .line 672
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->updateProvidersLocked()V

    .line 673
    const-string v3, "network"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    .line 674
    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mNetworkLocationProvider:Lcom/android/internal/location/LocationProviderProxy;

    .line 678
    :cond_44
    iget v3, p0, Lcom/android/server/LocationManagerService;->mNetworkState:I

    invoke-virtual {v1, v3}, Lcom/android/internal/location/LocationProviderProxy;->updateNetworkState(I)V

    .line 679
    monitor-exit v2

    .line 680
    return-void

    .line 666
    .end local v1           #proxy:Lcom/android/internal/location/LocationProviderProxy;
    :cond_4b
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Provider \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\" already exists"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 679
    .end local v0           #oldProvider:Lcom/android/internal/location/LocationProviderProxy;
    :catchall_6a
    move-exception v3

    monitor-exit v2
    :try_end_6c
    .catchall {:try_start_15 .. :try_end_6c} :catchall_6a

    throw v3
.end method

.method public isProviderEnabled(Ljava/lang/String;)Z
    .registers 6
    .parameter "provider"

    .prologue
    .line 1512
    :try_start_0
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_3} :catch_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_10

    .line 1513
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->_isProviderEnabledLocked(Ljava/lang/String;)Z

    move-result v3

    monitor-exit v2

    move v2, v3

    .line 1519
    :goto_9
    return v2

    .line 1514
    :catchall_a
    move-exception v3

    monitor-exit v2
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    :try_start_c
    throw v3
    :try_end_d
    .catch Ljava/lang/SecurityException; {:try_start_c .. :try_end_d} :catch_d
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_d} :catch_10

    .line 1515
    :catch_d
    move-exception v2

    move-object v1, v2

    .line 1516
    .local v1, se:Ljava/lang/SecurityException;
    throw v1

    .line 1517
    .end local v1           #se:Ljava/lang/SecurityException;
    :catch_10
    move-exception v2

    move-object v0, v2

    .line 1518
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "LocationManagerService"

    const-string v3, "isProviderEnabled got exception:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1519
    const/4 v2, 0x0

    goto :goto_9
.end method

.method public locationCallbackFinished(Landroid/location/ILocationListener;)V
    .registers 7
    .parameter "listener"

    .prologue
    .line 429
    invoke-interface {p1}, Landroid/location/ILocationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 430
    .local v0, binder:Landroid/os/IBinder;
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/LocationManagerService$Receiver;

    .line 432
    .local v3, receiver:Lcom/android/server/LocationManagerService$Receiver;
    if-eqz v3, :cond_1a

    .line 433
    monitor-enter v3

    .line 435
    :try_start_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 436
    .local v1, identity:J
    invoke-static {v3}, Lcom/android/server/LocationManagerService$Receiver;->access$700(Lcom/android/server/LocationManagerService$Receiver;)V

    .line 437
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 438
    monitor-exit v3

    .line 440
    .end local v1           #identity:J
    :cond_1a
    return-void

    .line 438
    :catchall_1b
    move-exception v4

    monitor-exit v3
    :try_end_1d
    .catchall {:try_start_f .. :try_end_1d} :catchall_1b

    throw v4
.end method

.method public removeGpsStatusListener(Landroid/location/IGpsStatusListener;)V
    .registers 6
    .parameter "listener"

    .prologue
    .line 1157
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1159
    :try_start_3
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mGpsStatusProvider:Landroid/location/IGpsStatusProvider;

    invoke-interface {v2, p1}, Landroid/location/IGpsStatusProvider;->removeGpsStatusListener(Landroid/location/IGpsStatusListener;)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_14
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_8} :catch_a

    .line 1163
    :goto_8
    :try_start_8
    monitor-exit v1

    .line 1164
    return-void

    .line 1160
    :catch_a
    move-exception v2

    move-object v0, v2

    .line 1161
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "LocationManagerService"

    const-string v3, "mGpsStatusProvider.removeGpsStatusListener failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 1163
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_14
    move-exception v2

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_14

    throw v2
.end method

.method public removeProximityAlert(Landroid/app/PendingIntent;)V
    .registers 6
    .parameter "intent"

    .prologue
    .line 1447
    :try_start_0
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_3} :catch_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_e

    .line 1448
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->removeProximityAlertLocked(Landroid/app/PendingIntent;)V

    .line 1449
    monitor-exit v2

    .line 1455
    :goto_7
    return-void

    .line 1449
    :catchall_8
    move-exception v3

    monitor-exit v2
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    :try_start_a
    throw v3
    :try_end_b
    .catch Ljava/lang/SecurityException; {:try_start_a .. :try_end_b} :catch_b
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_b} :catch_e

    .line 1450
    :catch_b
    move-exception v2

    move-object v1, v2

    .line 1451
    .local v1, se:Ljava/lang/SecurityException;
    throw v1

    .line 1452
    .end local v1           #se:Ljava/lang/SecurityException;
    :catch_e
    move-exception v2

    move-object v0, v2

    .line 1453
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "LocationManagerService"

    const-string v3, "removeProximityAlert got exception:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7
.end method

.method public removeTestProvider(Ljava/lang/String;)V
    .registers 7
    .parameter "provider"

    .prologue
    .line 1909
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->checkMockPermissionsSafe()V

    .line 1910
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1911
    :try_start_6
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/location/MockProvider;

    .line 1912
    .local v0, mockProvider:Lcom/android/internal/location/MockProvider;
    if-nez v0, :cond_32

    .line 1913
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Provider \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" unknown"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1927
    .end local v0           #mockProvider:Lcom/android/internal/location/MockProvider;
    :catchall_2f
    move-exception v1

    monitor-exit v2
    :try_end_31
    .catchall {:try_start_6 .. :try_end_31} :catchall_2f

    throw v1

    .line 1915
    .restart local v0       #mockProvider:Lcom/android/internal/location/MockProvider;
    :cond_32
    :try_start_32
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/location/LocationProviderProxy;

    invoke-direct {p0, v1}, Lcom/android/server/LocationManagerService;->removeProvider(Lcom/android/internal/location/LocationProviderProxy;)V

    .line 1916
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1918
    const-string v1, "gps"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5e

    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mGpsLocationProvider:Lcom/android/internal/location/LocationProviderProxy;

    if-eqz v1, :cond_5e

    .line 1920
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mGpsLocationProvider:Lcom/android/internal/location/LocationProviderProxy;

    invoke-direct {p0, v1}, Lcom/android/server/LocationManagerService;->addProvider(Lcom/android/internal/location/LocationProviderProxy;)V

    .line 1925
    :cond_53
    :goto_53
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mLastKnownLocation:Ljava/util/HashMap;

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1926
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->updateProvidersLocked()V

    .line 1927
    monitor-exit v2

    .line 1928
    return-void

    .line 1921
    :cond_5e
    const-string v1, "network"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_53

    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mNetworkLocationProvider:Lcom/android/internal/location/LocationProviderProxy;

    if-eqz v1, :cond_53

    .line 1923
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mNetworkLocationProvider:Lcom/android/internal/location/LocationProviderProxy;

    invoke-direct {p0, v1}, Lcom/android/server/LocationManagerService;->addProvider(Lcom/android/internal/location/LocationProviderProxy;)V
    :try_end_6f
    .catchall {:try_start_32 .. :try_end_6f} :catchall_2f

    goto :goto_53
.end method

.method public removeUpdates(Landroid/location/ILocationListener;)V
    .registers 6
    .parameter "listener"

    .prologue
    .line 1049
    :try_start_0
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_3} :catch_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_12

    .line 1050
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->getReceiver(Landroid/location/ILocationListener;)Lcom/android/server/LocationManagerService$Receiver;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/LocationManagerService;->removeUpdatesLocked(Lcom/android/server/LocationManagerService$Receiver;)V

    .line 1051
    monitor-exit v2

    .line 1057
    :goto_b
    return-void

    .line 1051
    :catchall_c
    move-exception v3

    monitor-exit v2
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    :try_start_e
    throw v3
    :try_end_f
    .catch Ljava/lang/SecurityException; {:try_start_e .. :try_end_f} :catch_f
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_f} :catch_12

    .line 1052
    :catch_f
    move-exception v2

    move-object v1, v2

    .line 1053
    .local v1, se:Ljava/lang/SecurityException;
    throw v1

    .line 1054
    .end local v1           #se:Ljava/lang/SecurityException;
    :catch_12
    move-exception v2

    move-object v0, v2

    .line 1055
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "LocationManagerService"

    const-string v3, "removeUpdates got exception:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b
.end method

.method public removeUpdatesPI(Landroid/app/PendingIntent;)V
    .registers 6
    .parameter "intent"

    .prologue
    .line 1061
    :try_start_0
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_3} :catch_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_12

    .line 1062
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->getReceiver(Landroid/app/PendingIntent;)Lcom/android/server/LocationManagerService$Receiver;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/LocationManagerService;->removeUpdatesLocked(Lcom/android/server/LocationManagerService$Receiver;)V

    .line 1063
    monitor-exit v2

    .line 1069
    :goto_b
    return-void

    .line 1063
    :catchall_c
    move-exception v3

    monitor-exit v2
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    :try_start_e
    throw v3
    :try_end_f
    .catch Ljava/lang/SecurityException; {:try_start_e .. :try_end_f} :catch_f
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_f} :catch_12

    .line 1064
    :catch_f
    move-exception v2

    move-object v1, v2

    .line 1065
    .local v1, se:Ljava/lang/SecurityException;
    throw v1

    .line 1066
    .end local v1           #se:Ljava/lang/SecurityException;
    :catch_12
    move-exception v2

    move-object v0, v2

    .line 1067
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "LocationManagerService"

    const-string v3, "removeUpdates got exception:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b
.end method

.method public reportLocation(Landroid/location/Location;)V
    .registers 6
    .parameter "location"

    .prologue
    const/4 v3, 0x1

    .line 1524
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.INSTALL_LOCATION_PROVIDER"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_13

    .line 1526
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires INSTALL_LOCATION_PROVIDER permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1529
    :cond_13
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    invoke-virtual {v1, v3, p1}, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->removeMessages(ILjava/lang/Object;)V

    .line 1530
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    invoke-static {v1, v3, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1531
    .local v0, m:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 1532
    return-void
.end method

.method public requestLocationUpdates(Ljava/lang/String;JFLandroid/location/ILocationListener;)V
    .registers 15
    .parameter "provider"
    .parameter "minTime"
    .parameter "minDistance"
    .parameter "listener"

    .prologue
    .line 982
    :try_start_0
    iget-object v8, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_3} :catch_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_16

    .line 983
    :try_start_3
    invoke-direct {p0, p5}, Lcom/android/server/LocationManagerService;->getReceiver(Landroid/location/ILocationListener;)Lcom/android/server/LocationManagerService$Receiver;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/LocationManagerService;->requestLocationUpdatesLocked(Ljava/lang/String;JFLcom/android/server/LocationManagerService$Receiver;)V

    .line 984
    monitor-exit v8

    .line 990
    :goto_f
    return-void

    .line 984
    :catchall_10
    move-exception v0

    monitor-exit v8
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    :try_start_12
    throw v0
    :try_end_13
    .catch Ljava/lang/SecurityException; {:try_start_12 .. :try_end_13} :catch_13
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_13} :catch_16

    .line 985
    :catch_13
    move-exception v0

    move-object v7, v0

    .line 986
    .local v7, se:Ljava/lang/SecurityException;
    throw v7

    .line 987
    .end local v7           #se:Ljava/lang/SecurityException;
    :catch_16
    move-exception v0

    move-object v6, v0

    .line 988
    .local v6, e:Ljava/lang/Exception;
    const-string v0, "LocationManagerService"

    const-string v1, "requestUpdates got exception:"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f
.end method

.method public requestLocationUpdatesPI(Ljava/lang/String;JFLandroid/app/PendingIntent;)V
    .registers 15
    .parameter "provider"
    .parameter "minTime"
    .parameter "minDistance"
    .parameter "intent"

    .prologue
    .line 995
    :try_start_0
    iget-object v8, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_3} :catch_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_16

    .line 996
    :try_start_3
    invoke-direct {p0, p5}, Lcom/android/server/LocationManagerService;->getReceiver(Landroid/app/PendingIntent;)Lcom/android/server/LocationManagerService$Receiver;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/LocationManagerService;->requestLocationUpdatesLocked(Ljava/lang/String;JFLcom/android/server/LocationManagerService$Receiver;)V

    .line 997
    monitor-exit v8

    .line 1003
    :goto_f
    return-void

    .line 997
    :catchall_10
    move-exception v0

    monitor-exit v8
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    :try_start_12
    throw v0
    :try_end_13
    .catch Ljava/lang/SecurityException; {:try_start_12 .. :try_end_13} :catch_13
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_13} :catch_16

    .line 998
    :catch_13
    move-exception v0

    move-object v7, v0

    .line 999
    .local v7, se:Ljava/lang/SecurityException;
    throw v7

    .line 1000
    .end local v7           #se:Ljava/lang/SecurityException;
    :catch_16
    move-exception v0

    move-object v6, v0

    .line 1001
    .local v6, e:Ljava/lang/Exception;
    const-string v0, "LocationManagerService"

    const-string v1, "requestUpdates got exception:"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f
.end method

.method public run()V
    .registers 3

    .prologue
    .line 645
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 646
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 647
    new-instance v0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/LocationManagerService$LocationWorkerHandler;-><init>(Lcom/android/server/LocationManagerService;Lcom/android/server/LocationManagerService$1;)V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    .line 648
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->initialize()V

    .line 649
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 650
    return-void
.end method

.method public sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 9
    .parameter "provider"
    .parameter "command"
    .parameter "extras"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1168
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->checkPermissionsSafe(Ljava/lang/String;)V

    .line 1170
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_LOCATION_EXTRA_COMMANDS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_17

    .line 1172
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires ACCESS_LOCATION_EXTRA_COMMANDS permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1175
    :cond_17
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1176
    :try_start_1a
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/location/LocationProviderProxy;

    .line 1177
    .local v0, proxy:Lcom/android/internal/location/LocationProviderProxy;
    if-nez p1, :cond_27

    .line 1178
    monitor-exit v1

    move v1, v4

    .line 1192
    :goto_26
    return v1

    .line 1182
    :cond_27
    const-string v2, "enable_airtest"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 1183
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/LocationManagerService;->mAirtestEnabled:Z

    .line 1184
    monitor-exit v1

    move v1, v3

    goto :goto_26

    .line 1186
    :cond_35
    const-string v2, "disable_airtest"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 1187
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/LocationManagerService;->mAirtestEnabled:Z

    .line 1188
    monitor-exit v1

    move v1, v3

    goto :goto_26

    .line 1192
    :cond_43
    invoke-virtual {v0, p2, p3}, Lcom/android/internal/location/LocationProviderProxy;->sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v2

    monitor-exit v1

    move v1, v2

    goto :goto_26

    .line 1193
    .end local v0           #proxy:Lcom/android/internal/location/LocationProviderProxy;
    :catchall_4a
    move-exception v2

    monitor-exit v1
    :try_end_4c
    .catchall {:try_start_1a .. :try_end_4c} :catchall_4a

    throw v2
.end method

.method public sendNiResponse(II)Z
    .registers 6
    .parameter "notifId"
    .parameter "userResponse"

    .prologue
    .line 1199
    :try_start_0
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    invoke-interface {v1, p1, p2}, Landroid/location/INetInitiatedListener;->sendNiResponse(II)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 1204
    :goto_6
    return v1

    .line 1201
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 1203
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "LocationManagerService"

    const-string v2, "RemoteException in LocationManagerService.sendNiResponse"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1204
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public setPositionMode(I)V
    .registers 3
    .parameter "positionMode"

    .prologue
    .line 2112
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGpsProvider:Lcom/android/internal/location/GpsLocationProvider;

    if-nez v0, :cond_5

    .line 2120
    :goto_4
    return-void

    .line 2119
    :cond_5
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGpsProvider:Lcom/android/internal/location/GpsLocationProvider;

    invoke-virtual {v0, p1}, Lcom/android/internal/location/GpsLocationProvider;->setPositionMode(I)V

    goto :goto_4
.end method

.method public setSlpMode(I)V
    .registers 3
    .parameter "slpMode"

    .prologue
    .line 2154
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGpsProvider:Lcom/android/internal/location/GpsLocationProvider;

    invoke-virtual {v0, p1}, Lcom/android/internal/location/GpsLocationProvider;->setSlpMode(I)V

    .line 2155
    return-void
.end method

.method public setSuplAddress(Ljava/lang/String;)V
    .registers 3
    .parameter "addr"

    .prologue
    .line 2146
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGpsProvider:Lcom/android/internal/location/GpsLocationProvider;

    invoke-virtual {v0, p1}, Lcom/android/internal/location/GpsLocationProvider;->setSuplAddress(Ljava/lang/String;)V

    .line 2147
    return-void
.end method

.method public setSuplAuto()V
    .registers 2

    .prologue
    .line 2158
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGpsProvider:Lcom/android/internal/location/GpsLocationProvider;

    invoke-virtual {v0}, Lcom/android/internal/location/GpsLocationProvider;->setSuplAuto()V

    .line 2159
    return-void
.end method

.method public setSuplPort(I)V
    .registers 3
    .parameter "port"

    .prologue
    .line 2150
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGpsProvider:Lcom/android/internal/location/GpsLocationProvider;

    invoke-virtual {v0, p1}, Lcom/android/internal/location/GpsLocationProvider;->setSuplPort(I)V

    .line 2151
    return-void
.end method

.method public setTestProviderEnabled(Ljava/lang/String;Z)V
    .registers 8
    .parameter "provider"
    .parameter "enabled"

    .prologue
    .line 1956
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->checkMockPermissionsSafe()V

    .line 1957
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1958
    :try_start_6
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/location/MockProvider;

    .line 1959
    .local v0, mockProvider:Lcom/android/internal/location/MockProvider;
    if-nez v0, :cond_32

    .line 1960
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Provider \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" unknown"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1972
    .end local v0           #mockProvider:Lcom/android/internal/location/MockProvider;
    :catchall_2f
    move-exception v2

    monitor-exit v1
    :try_end_31
    .catchall {:try_start_6 .. :try_end_31} :catchall_2f

    throw v2

    .line 1962
    .restart local v0       #mockProvider:Lcom/android/internal/location/MockProvider;
    :cond_32
    if-eqz p2, :cond_46

    .line 1963
    :try_start_34
    invoke-virtual {v0}, Lcom/android/internal/location/MockProvider;->enable()V

    .line 1964
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mEnabledProviders:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1965
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mDisabledProviders:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1971
    :goto_41
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->updateProvidersLocked()V

    .line 1972
    monitor-exit v1

    .line 1973
    return-void

    .line 1967
    :cond_46
    invoke-virtual {v0}, Lcom/android/internal/location/MockProvider;->disable()V

    .line 1968
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mEnabledProviders:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1969
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mDisabledProviders:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_53
    .catchall {:try_start_34 .. :try_end_53} :catchall_2f

    goto :goto_41
.end method

.method public setTestProviderLocation(Ljava/lang/String;Landroid/location/Location;)V
    .registers 10
    .parameter "provider"
    .parameter "loc"

    .prologue
    .line 1931
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->checkMockPermissionsSafe()V

    .line 1932
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1933
    :try_start_6
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/location/MockProvider;

    .line 1934
    .local v2, mockProvider:Lcom/android/internal/location/MockProvider;
    if-nez v2, :cond_32

    .line 1935
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Provider \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\" unknown"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1941
    .end local v2           #mockProvider:Lcom/android/internal/location/MockProvider;
    :catchall_2f
    move-exception v4

    monitor-exit v3
    :try_end_31
    .catchall {:try_start_6 .. :try_end_31} :catchall_2f

    throw v4

    .line 1938
    .restart local v2       #mockProvider:Lcom/android/internal/location/MockProvider;
    :cond_32
    :try_start_32
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1939
    .local v0, identity:J
    invoke-virtual {v2, p2}, Lcom/android/internal/location/MockProvider;->setLocation(Landroid/location/Location;)V

    .line 1940
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1941
    monitor-exit v3
    :try_end_3d
    .catchall {:try_start_32 .. :try_end_3d} :catchall_2f

    .line 1942
    return-void
.end method

.method public setTestProviderStatus(Ljava/lang/String;ILandroid/os/Bundle;J)V
    .registers 11
    .parameter "provider"
    .parameter "status"
    .parameter "extras"
    .parameter "updateTime"

    .prologue
    .line 1989
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->checkMockPermissionsSafe()V

    .line 1990
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1991
    :try_start_6
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/location/MockProvider;

    .line 1992
    .local v0, mockProvider:Lcom/android/internal/location/MockProvider;
    if-nez v0, :cond_32

    .line 1993
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Provider \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" unknown"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1996
    .end local v0           #mockProvider:Lcom/android/internal/location/MockProvider;
    :catchall_2f
    move-exception v2

    monitor-exit v1
    :try_end_31
    .catchall {:try_start_6 .. :try_end_31} :catchall_2f

    throw v2

    .line 1995
    .restart local v0       #mockProvider:Lcom/android/internal/location/MockProvider;
    :cond_32
    :try_start_32
    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/android/internal/location/MockProvider;->setStatus(ILandroid/os/Bundle;J)V

    .line 1996
    monitor-exit v1
    :try_end_36
    .catchall {:try_start_32 .. :try_end_36} :catchall_2f

    .line 1997
    return-void
.end method

.method public singleFixTest()V
    .registers 2

    .prologue
    .line 2129
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGpsProvider:Lcom/android/internal/location/GpsLocationProvider;

    invoke-virtual {v0}, Lcom/android/internal/location/GpsLocationProvider;->singleFixTest()V

    .line 2130
    return-void
.end method

.method public startAirTest(II)Z
    .registers 4
    .parameter "testType"
    .parameter "testNum"

    .prologue
    .line 2124
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGpsProvider:Lcom/android/internal/location/GpsLocationProvider;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/location/GpsLocationProvider;->startAirTest(II)Z

    move-result v0

    return v0
.end method

.method public supportsXtra()Z
    .registers 2

    .prologue
    .line 2165
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGpsProvider:Lcom/android/internal/location/GpsLocationProvider;

    invoke-virtual {v0}, Lcom/android/internal/location/GpsLocationProvider;->supportsXtra()Z

    move-result v0

    return v0
.end method

.method public xtraDownloadRequest()V
    .registers 2

    .prologue
    .line 2171
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGpsProvider:Lcom/android/internal/location/GpsLocationProvider;

    invoke-virtual {v0}, Lcom/android/internal/location/GpsLocationProvider;->xtraDownloadRequest()V

    .line 2172
    return-void
.end method
