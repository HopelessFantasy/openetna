.class public Landroid/location/LocationManager;
.super Ljava/lang/Object;
.source "LocationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/LocationManager$1;,
        Landroid/location/LocationManager$GpsStatusListenerTransport;,
        Landroid/location/LocationManager$LpCapabilityComparator;,
        Landroid/location/LocationManager$LpAccuracyComparator;,
        Landroid/location/LocationManager$LpPowerComparator;,
        Landroid/location/LocationManager$LpComparator;,
        Landroid/location/LocationManager$ListenerTransport;
    }
.end annotation


# static fields
.field public static final GPS_POSITION_MODE_MS_ASSISTED:I = 0x2

.field public static final GPS_POSITION_MODE_MS_BASED:I = 0x1

.field public static final GPS_POSITION_MODE_STANDALONE:I = 0x0

.field public static final GPS_PROVIDER:Ljava/lang/String; = "gps"

.field public static final KEY_LOCATION_CHANGED:Ljava/lang/String; = "location"

.field public static final KEY_PROVIDER_ENABLED:Ljava/lang/String; = "providerEnabled"

.field public static final KEY_PROXIMITY_ENTERING:Ljava/lang/String; = "entering"

.field public static final KEY_STATUS_CHANGED:Ljava/lang/String; = "status"

.field public static final NETWORK_PROVIDER:Ljava/lang/String; = "network"

.field public static final SYSTEM_DIR:Ljava/lang/String; = "/data/system/location"

.field private static final TAG:Ljava/lang/String; = "LocationManager"

.field public static mAirTestEnabled:Z

.field private static mAirTestResult:Ljava/lang/String;


# instance fields
.field private final mGpsStatus:Landroid/location/GpsStatus;

.field private final mGpsStatusListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/location/GpsStatus$Listener;",
            "Landroid/location/LocationManager$GpsStatusListenerTransport;",
            ">;"
        }
    .end annotation
.end field

.field private mListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/location/LocationListener;",
            "Landroid/location/LocationManager$ListenerTransport;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Landroid/location/ILocationManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 78
    const-string v0, "none"

    sput-object v0, Landroid/location/LocationManager;->mAirTestResult:Ljava/lang/String;

    .line 84
    const/4 v0, 0x1

    sput-boolean v0, Landroid/location/LocationManager;->mAirTestEnabled:Z

    return-void
.end method

.method public constructor <init>(Landroid/location/ILocationManager;)V
    .registers 5
    .parameter "service"

    .prologue
    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/location/LocationManager;->mGpsStatusListeners:Ljava/util/HashMap;

    .line 56
    new-instance v0, Landroid/location/GpsStatus;

    invoke-direct {v0}, Landroid/location/GpsStatus;-><init>()V

    iput-object v0, p0, Landroid/location/LocationManager;->mGpsStatus:Landroid/location/GpsStatus;

    .line 140
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/location/LocationManager;->mListeners:Ljava/util/HashMap;

    .line 241
    const-string v0, "LocationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Constructor: service = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iput-object p1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    .line 244
    return-void
.end method

.method private _requestLocationUpdates(Ljava/lang/String;JFLandroid/app/PendingIntent;)V
    .registers 13
    .parameter "provider"
    .parameter "minTime"
    .parameter "minDistance"
    .parameter "intent"

    .prologue
    .line 795
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_8

    .line 796
    const-wide/16 p2, 0x0

    .line 798
    :cond_8
    const/4 v0, 0x0

    cmpg-float v0, p4, v0

    if-gez v0, :cond_e

    .line 799
    const/4 p4, 0x0

    .line 803
    :cond_e
    :try_start_e
    iget-object v0, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/location/ILocationManager;->requestLocationUpdatesPI(Ljava/lang/String;JFLandroid/app/PendingIntent;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_17} :catch_18

    .line 807
    :goto_17
    return-void

    .line 804
    :catch_18
    move-exception v0

    move-object v6, v0

    .line 805
    .local v6, ex:Landroid/os/RemoteException;
    const-string v0, "LocationManager"

    const-string v1, "requestLocationUpdates: RemoteException"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_17
.end method

.method private _requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V
    .registers 15
    .parameter "provider"
    .parameter "minTime"
    .parameter "minDistance"
    .parameter "listener"
    .parameter "looper"

    .prologue
    .line 716
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_8

    .line 717
    const-wide/16 p2, 0x0

    .line 719
    :cond_8
    const/4 v0, 0x0

    cmpg-float v0, p4, v0

    if-gez v0, :cond_e

    .line 720
    const/4 p4, 0x0

    .line 724
    :cond_e
    :try_start_e
    iget-object v7, p0, Landroid/location/LocationManager;->mListeners:Ljava/util/HashMap;

    monitor-enter v7
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_11} :catch_32

    .line 725
    :try_start_11
    iget-object v0, p0, Landroid/location/LocationManager;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/location/LocationManager$ListenerTransport;

    .line 726
    .local v5, transport:Landroid/location/LocationManager$ListenerTransport;
    if-nez v5, :cond_20

    .line 727
    new-instance v5, Landroid/location/LocationManager$ListenerTransport;

    .end local v5           #transport:Landroid/location/LocationManager$ListenerTransport;
    invoke-direct {v5, p0, p5, p6}, Landroid/location/LocationManager$ListenerTransport;-><init>(Landroid/location/LocationManager;Landroid/location/LocationListener;Landroid/os/Looper;)V

    .line 729
    .restart local v5       #transport:Landroid/location/LocationManager$ListenerTransport;
    :cond_20
    iget-object v0, p0, Landroid/location/LocationManager;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p5, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 730
    iget-object v0, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/location/ILocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/ILocationListener;)V

    .line 731
    monitor-exit v7

    .line 735
    .end local v5           #transport:Landroid/location/LocationManager$ListenerTransport;
    :goto_2e
    return-void

    .line 731
    :catchall_2f
    move-exception v0

    monitor-exit v7
    :try_end_31
    .catchall {:try_start_11 .. :try_end_31} :catchall_2f

    :try_start_31
    throw v0
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_32} :catch_32

    .line 732
    :catch_32
    move-exception v0

    move-object v6, v0

    .line 733
    .local v6, ex:Landroid/os/RemoteException;
    const-string v0, "LocationManager"

    const-string v1, "requestLocationUpdates: DeadObjectException"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2e
.end method

.method static synthetic access$100(Landroid/location/LocationManager;)Landroid/location/ILocationManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    return-object v0
.end method

.method static synthetic access$600(Landroid/location/LocationManager;)Landroid/location/GpsStatus;
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Landroid/location/LocationManager;->mGpsStatus:Landroid/location/GpsStatus;

    return-object v0
.end method

.method private best(Ljava/util/List;)Landroid/location/LocationProvider;
    .registers 16
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/location/LocationProvider;"
        }
    .end annotation

    .prologue
    .local p1, providerNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v13, 0x1

    const/4 v12, 0x0

    const/4 v11, 0x0

    .line 458
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v9

    invoke-direct {v5, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 459
    .local v5, providers:Ljava/util/List;,"Ljava/util/List<Landroid/location/LocationProvider;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 460
    .local v3, name:Ljava/lang/String;
    invoke-virtual {p0, v3}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 463
    .end local v3           #name:Ljava/lang/String;
    :cond_24
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x2

    if-ge v9, v10, :cond_33

    .line 464
    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/location/LocationProvider;

    move-object v9, p0

    .line 501
    :goto_32
    return-object v9

    .line 468
    .restart local p0
    :cond_33
    new-instance v9, Landroid/location/LocationManager$LpPowerComparator;

    invoke-direct {v9, p0, v12}, Landroid/location/LocationManager$LpPowerComparator;-><init>(Landroid/location/LocationManager;Landroid/location/LocationManager$1;)V

    invoke-static {v5, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 469
    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/location/LocationProvider;

    invoke-virtual {v9}, Landroid/location/LocationProvider;->getPowerRequirement()I

    move-result v4

    .line 470
    .local v4, power:I
    invoke-interface {v5, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/location/LocationProvider;

    invoke-virtual {v9}, Landroid/location/LocationProvider;->getPowerRequirement()I

    move-result v9

    if-ge v4, v9, :cond_59

    .line 471
    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/location/LocationProvider;

    move-object v9, p0

    goto :goto_32

    .line 476
    .restart local p0
    :cond_59
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 477
    .local v7, tmp:Ljava/util/List;,"Ljava/util/List<Landroid/location/LocationProvider;>;"
    const/4 v2, 0x0

    .line 478
    .local v2, idx:I
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    .line 479
    .local v6, size:I
    :goto_63
    if-ge v2, v6, :cond_7b

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/location/LocationProvider;

    invoke-virtual {v9}, Landroid/location/LocationProvider;->getPowerRequirement()I

    move-result v9

    if-ne v9, v4, :cond_7b

    .line 480
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 481
    add-int/lit8 v2, v2, 0x1

    goto :goto_63

    .line 485
    :cond_7b
    new-instance v9, Landroid/location/LocationManager$LpAccuracyComparator;

    invoke-direct {v9, p0, v12}, Landroid/location/LocationManager$LpAccuracyComparator;-><init>(Landroid/location/LocationManager;Landroid/location/LocationManager$1;)V

    invoke-static {v7, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 486
    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/location/LocationProvider;

    invoke-virtual {v9}, Landroid/location/LocationProvider;->getAccuracy()I

    move-result v0

    .line 487
    .local v0, acc:I
    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/location/LocationProvider;

    invoke-virtual {v9}, Landroid/location/LocationProvider;->getAccuracy()I

    move-result v9

    if-ge v0, v9, :cond_a1

    .line 488
    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/location/LocationProvider;

    move-object v9, p0

    goto :goto_32

    .line 491
    .restart local p0
    :cond_a1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 492
    .local v8, tmp2:Ljava/util/List;,"Ljava/util/List<Landroid/location/LocationProvider;>;"
    const/4 v2, 0x0

    .line 493
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    .line 494
    :goto_ab
    if-ge v2, v6, :cond_c3

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/location/LocationProvider;

    invoke-virtual {v9}, Landroid/location/LocationProvider;->getAccuracy()I

    move-result v9

    if-ne v9, v0, :cond_c3

    .line 495
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 496
    add-int/lit8 v2, v2, 0x1

    goto :goto_ab

    .line 500
    :cond_c3
    new-instance v9, Landroid/location/LocationManager$LpCapabilityComparator;

    invoke-direct {v9, p0, v12}, Landroid/location/LocationManager$LpCapabilityComparator;-><init>(Landroid/location/LocationManager;Landroid/location/LocationManager$1;)V

    invoke-static {v8, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 501
    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/location/LocationProvider;

    move-object v9, p0

    goto/16 :goto_32
.end method

.method private createProvider(Ljava/lang/String;Landroid/os/Bundle;)Landroid/location/LocationProvider;
    .registers 5
    .parameter "name"
    .parameter "info"

    .prologue
    .line 247
    new-instance v0, Lcom/android/internal/location/DummyLocationProvider;

    invoke-direct {v0, p1}, Lcom/android/internal/location/DummyLocationProvider;-><init>(Ljava/lang/String;)V

    .line 249
    .local v0, provider:Lcom/android/internal/location/DummyLocationProvider;
    const-string v1, "network"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/location/DummyLocationProvider;->setRequiresNetwork(Z)V

    .line 250
    const-string v1, "satellite"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/location/DummyLocationProvider;->setRequiresSatellite(Z)V

    .line 251
    const-string v1, "cell"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/location/DummyLocationProvider;->setRequiresCell(Z)V

    .line 252
    const-string v1, "cost"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/location/DummyLocationProvider;->setHasMonetaryCost(Z)V

    .line 253
    const-string v1, "altitude"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/location/DummyLocationProvider;->setSupportsAltitude(Z)V

    .line 254
    const-string v1, "speed"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/location/DummyLocationProvider;->setSupportsSpeed(Z)V

    .line 255
    const-string v1, "bearing"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/location/DummyLocationProvider;->setSupportsBearing(Z)V

    .line 256
    const-string v1, "power"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/location/DummyLocationProvider;->setPowerRequirement(I)V

    .line 257
    const-string v1, "accuracy"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/location/DummyLocationProvider;->setAccuracy(I)V

    .line 258
    return-object v0
.end method

.method public static getAirTestResult()Ljava/lang/String;
    .registers 1

    .prologue
    .line 1448
    sget-object v0, Landroid/location/LocationManager;->mAirTestResult:Ljava/lang/String;

    return-object v0
.end method

.method private nextAccuracy(I)I
    .registers 3
    .parameter "accuracy"

    .prologue
    .line 374
    const/4 v0, 0x1

    if-ne p1, v0, :cond_5

    .line 375
    const/4 v0, 0x2

    .line 377
    :goto_4
    return v0

    :cond_5
    const/4 v0, 0x0

    goto :goto_4
.end method

.method private nextPower(I)I
    .registers 3
    .parameter "power"

    .prologue
    const/4 v0, 0x0

    .line 355
    packed-switch p1, :pswitch_data_a

    .line 364
    :goto_4
    :pswitch_4
    return v0

    .line 357
    :pswitch_5
    const/4 v0, 0x2

    goto :goto_4

    .line 359
    :pswitch_7
    const/4 v0, 0x3

    goto :goto_4

    .line 355
    nop

    :pswitch_data_a
    .packed-switch 0x1
        :pswitch_5
        :pswitch_7
        :pswitch_4
    .end packed-switch
.end method

.method public static setAirTestResult(Ljava/lang/String;)V
    .registers 1
    .parameter "str"

    .prologue
    .line 1455
    sput-object p0, Landroid/location/LocationManager;->mAirTestResult:Ljava/lang/String;

    .line 1456
    return-void
.end method


# virtual methods
.method public addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z
    .registers 7
    .parameter "listener"

    .prologue
    .line 1216
    iget-object v3, p0, Landroid/location/LocationManager;->mGpsStatusListeners:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 1218
    const/4 v3, 0x1

    .line 1231
    :goto_9
    return v3

    .line 1221
    :cond_a
    :try_start_a
    new-instance v2, Landroid/location/LocationManager$GpsStatusListenerTransport;

    invoke-direct {v2, p0, p1}, Landroid/location/LocationManager$GpsStatusListenerTransport;-><init>(Landroid/location/LocationManager;Landroid/location/GpsStatus$Listener;)V

    .line 1222
    .local v2, transport:Landroid/location/LocationManager$GpsStatusListenerTransport;
    iget-object v3, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v3, v2}, Landroid/location/ILocationManager;->addGpsStatusListener(Landroid/location/IGpsStatusListener;)Z

    move-result v1

    .line 1223
    .local v1, result:Z
    if-eqz v1, :cond_1c

    .line 1224
    iget-object v3, p0, Landroid/location/LocationManager;->mGpsStatusListeners:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_1c} :catch_1e

    .end local v2           #transport:Landroid/location/LocationManager$GpsStatusListenerTransport;
    :cond_1c
    :goto_1c
    move v3, v1

    .line 1231
    goto :goto_9

    .line 1226
    .end local v1           #result:Z
    :catch_1e
    move-exception v3

    move-object v0, v3

    .line 1227
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "LocationManager"

    const-string v4, "RemoteException in registerGpsStatusListener: "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1228
    const/4 v1, 0x0

    .restart local v1       #result:Z
    goto :goto_1c
.end method

.method public addProximityAlert(DDFJLandroid/app/PendingIntent;)V
    .registers 22
    .parameter "latitude"
    .parameter "longitude"
    .parameter "radius"
    .parameter "expiration"
    .parameter "intent"

    .prologue
    .line 902
    const-string v3, "LocationManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addProximityAlert: latitude = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", longitude = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", radius = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", expiration = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-wide/from16 v1, p6

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", intent = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    :try_start_4c
    iget-object v3, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    move-wide v4, p1

    move-wide/from16 v6, p3

    move/from16 v8, p5

    move-wide/from16 v9, p6

    move-object/from16 v11, p8

    invoke-interface/range {v3 .. v11}, Landroid/location/ILocationManager;->addProximityAlert(DDFJLandroid/app/PendingIntent;)V
    :try_end_5a
    .catch Landroid/os/RemoteException; {:try_start_4c .. :try_end_5a} :catch_5b

    .line 913
    :goto_5a
    return-void

    .line 910
    :catch_5b
    move-exception v3

    move-object v12, v3

    .line 911
    .local v12, ex:Landroid/os/RemoteException;
    const-string v3, "LocationManager"

    const-string v4, "addProximityAlert: RemoteException"

    invoke-static {v3, v4, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5a
.end method

.method public addTestProvider(Ljava/lang/String;ZZZZZZZII)V
    .registers 23
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
    .line 1007
    :try_start_0
    iget-object v0, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-interface/range {v0 .. v10}, Landroid/location/ILocationManager;->addTestProvider(Ljava/lang/String;ZZZZZZZII)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_16} :catch_17

    .line 1013
    :goto_16
    return-void

    .line 1010
    :catch_17
    move-exception v0

    move-object v11, v0

    .line 1011
    .local v11, ex:Landroid/os/RemoteException;
    const-string v0, "LocationManager"

    const-string v1, "addTestProvider: RemoteException"

    invoke-static {v0, v1, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_16
.end method

.method public clearTestProviderEnabled(Ljava/lang/String;)V
    .registers 5
    .parameter "provider"

    .prologue
    .line 1103
    :try_start_0
    iget-object v1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v1, p1}, Landroid/location/ILocationManager;->clearTestProviderEnabled(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1108
    :goto_5
    return-void

    .line 1104
    :catch_6
    move-exception v1

    move-object v0, v1

    .line 1105
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "LocationManager"

    const-string v2, "clearTestProviderEnabled: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public clearTestProviderLocation(Ljava/lang/String;)V
    .registers 5
    .parameter "provider"

    .prologue
    .line 1065
    :try_start_0
    iget-object v1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v1, p1}, Landroid/location/ILocationManager;->clearTestProviderLocation(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1069
    :goto_5
    return-void

    .line 1066
    :catch_6
    move-exception v1

    move-object v0, v1

    .line 1067
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "LocationManager"

    const-string v2, "clearTestProviderLocation: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public clearTestProviderStatus(Ljava/lang/String;)V
    .registers 5
    .parameter "provider"

    .prologue
    .line 1144
    :try_start_0
    iget-object v1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v1, p1}, Landroid/location/ILocationManager;->clearTestProviderStatus(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1148
    :goto_5
    return-void

    .line 1145
    :catch_6
    move-exception v1

    move-object v0, v1

    .line 1146
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "LocationManager"

    const-string v2, "clearTestProviderStatus: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public getAllProviders()Ljava/util/List;
    .registers 4
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
    const-string v2, "LocationManager"

    .line 270
    const-string v1, "LocationManager"

    const-string v1, "getAllProviders"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :try_start_9
    iget-object v1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v1}, Landroid/location/ILocationManager;->getAllProviders()Ljava/util/List;
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_10

    move-result-object v1

    .line 277
    :goto_f
    return-object v1

    .line 274
    :catch_10
    move-exception v1

    move-object v0, v1

    .line 275
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "LocationManager"

    const-string v1, "getAllProviders: RemoteException"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 277
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;
    .registers 9
    .parameter "criteria"
    .parameter "enabledOnly"

    .prologue
    const/4 v5, 0x0

    .line 527
    invoke-virtual {p0, p1, p2}, Landroid/location/LocationManager;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    move-result-object v2

    .line 528
    .local v2, goodProviders:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_14

    .line 529
    invoke-direct {p0, v2}, Landroid/location/LocationManager;->best(Ljava/util/List;)Landroid/location/LocationProvider;

    move-result-object v4

    invoke-virtual {v4}, Landroid/location/LocationProvider;->getName()Ljava/lang/String;

    move-result-object v4

    .line 593
    :goto_13
    return-object v4

    .line 533
    :cond_14
    new-instance v1, Landroid/location/Criteria;

    invoke-direct {v1, p1}, Landroid/location/Criteria;-><init>(Landroid/location/Criteria;)V

    .line 536
    .end local p1
    .local v1, criteria:Landroid/location/Criteria;
    invoke-virtual {v1}, Landroid/location/Criteria;->getPowerRequirement()I

    move-result v3

    .line 537
    .local v3, power:I
    :goto_1d
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_31

    if-eqz v3, :cond_31

    .line 538
    invoke-direct {p0, v3}, Landroid/location/LocationManager;->nextPower(I)I

    move-result v3

    .line 539
    invoke-virtual {v1, v3}, Landroid/location/Criteria;->setPowerRequirement(I)V

    .line 540
    invoke-virtual {p0, v1, p2}, Landroid/location/LocationManager;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    move-result-object v2

    goto :goto_1d

    .line 542
    :cond_31
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_41

    .line 543
    invoke-direct {p0, v2}, Landroid/location/LocationManager;->best(Ljava/util/List;)Landroid/location/LocationProvider;

    move-result-object v4

    invoke-virtual {v4}, Landroid/location/LocationProvider;->getName()Ljava/lang/String;

    move-result-object v4

    move-object p1, v1

    .end local v1           #criteria:Landroid/location/Criteria;
    .restart local p1
    goto :goto_13

    .line 562
    .end local p1
    .restart local v1       #criteria:Landroid/location/Criteria;
    :cond_41
    invoke-virtual {v1}, Landroid/location/Criteria;->getAccuracy()I

    move-result v0

    .line 563
    .local v0, accuracy:I
    :goto_45
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_59

    if-eqz v0, :cond_59

    .line 564
    invoke-direct {p0, v0}, Landroid/location/LocationManager;->nextAccuracy(I)I

    move-result v0

    .line 565
    invoke-virtual {v1, v0}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 566
    invoke-virtual {p0, v1, p2}, Landroid/location/LocationManager;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    move-result-object v2

    goto :goto_45

    .line 568
    :cond_59
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_69

    .line 569
    invoke-direct {p0, v2}, Landroid/location/LocationManager;->best(Ljava/util/List;)Landroid/location/LocationProvider;

    move-result-object v4

    invoke-virtual {v4}, Landroid/location/LocationProvider;->getName()Ljava/lang/String;

    move-result-object v4

    move-object p1, v1

    .end local v1           #criteria:Landroid/location/Criteria;
    .restart local p1
    goto :goto_13

    .line 573
    .end local p1
    .restart local v1       #criteria:Landroid/location/Criteria;
    :cond_69
    invoke-virtual {v1, v5}, Landroid/location/Criteria;->setBearingRequired(Z)V

    .line 574
    invoke-virtual {p0, v1, p2}, Landroid/location/LocationManager;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    move-result-object v2

    .line 575
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_80

    .line 576
    invoke-direct {p0, v2}, Landroid/location/LocationManager;->best(Ljava/util/List;)Landroid/location/LocationProvider;

    move-result-object v4

    invoke-virtual {v4}, Landroid/location/LocationProvider;->getName()Ljava/lang/String;

    move-result-object v4

    move-object p1, v1

    .end local v1           #criteria:Landroid/location/Criteria;
    .restart local p1
    goto :goto_13

    .line 580
    .end local p1
    .restart local v1       #criteria:Landroid/location/Criteria;
    :cond_80
    invoke-virtual {v1, v5}, Landroid/location/Criteria;->setSpeedRequired(Z)V

    .line 581
    invoke-virtual {p0, v1, p2}, Landroid/location/LocationManager;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    move-result-object v2

    .line 582
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_98

    .line 583
    invoke-direct {p0, v2}, Landroid/location/LocationManager;->best(Ljava/util/List;)Landroid/location/LocationProvider;

    move-result-object v4

    invoke-virtual {v4}, Landroid/location/LocationProvider;->getName()Ljava/lang/String;

    move-result-object v4

    move-object p1, v1

    .end local v1           #criteria:Landroid/location/Criteria;
    .restart local p1
    goto/16 :goto_13

    .line 587
    .end local p1
    .restart local v1       #criteria:Landroid/location/Criteria;
    :cond_98
    invoke-virtual {v1, v5}, Landroid/location/Criteria;->setAltitudeRequired(Z)V

    .line 588
    invoke-virtual {p0, v1, p2}, Landroid/location/LocationManager;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    move-result-object v2

    .line 589
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_b0

    .line 590
    invoke-direct {p0, v2}, Landroid/location/LocationManager;->best(Ljava/util/List;)Landroid/location/LocationProvider;

    move-result-object v4

    invoke-virtual {v4}, Landroid/location/LocationProvider;->getName()Ljava/lang/String;

    move-result-object v4

    move-object p1, v1

    .end local v1           #criteria:Landroid/location/Criteria;
    .restart local p1
    goto/16 :goto_13

    .line 593
    .end local p1
    .restart local v1       #criteria:Landroid/location/Criteria;
    :cond_b0
    const/4 v4, 0x0

    move-object p1, v1

    .end local v1           #criteria:Landroid/location/Criteria;
    .restart local p1
    goto/16 :goto_13
.end method

.method public getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;
    .registers 3
    .parameter "status"

    .prologue
    .line 1262
    if-nez p1, :cond_7

    .line 1263
    new-instance p1, Landroid/location/GpsStatus;

    .end local p1
    invoke-direct {p1}, Landroid/location/GpsStatus;-><init>()V

    .line 1265
    .restart local p1
    :cond_7
    iget-object v0, p0, Landroid/location/LocationManager;->mGpsStatus:Landroid/location/GpsStatus;

    invoke-virtual {p1, v0}, Landroid/location/GpsStatus;->setStatus(Landroid/location/GpsStatus;)V

    .line 1266
    return-object p1
.end method

.method public getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;
    .registers 5
    .parameter "provider"

    .prologue
    .line 971
    if-nez p1, :cond_a

    .line 972
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "provider==null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 975
    :cond_a
    :try_start_a
    iget-object v1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v1, p1}, Landroid/location/ILocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_11

    move-result-object v1

    .line 978
    :goto_10
    return-object v1

    .line 976
    :catch_11
    move-exception v1

    move-object v0, v1

    .line 977
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "LocationManager"

    const-string v2, "getLastKnowLocation: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 978
    const/4 v1, 0x0

    goto :goto_10
.end method

.method public getPositionMode()I
    .registers 4

    .prologue
    .line 1371
    :try_start_0
    iget-object v1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v1}, Landroid/location/ILocationManager;->getPositionMode()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 1375
    :goto_6
    return v1

    .line 1372
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 1373
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "LocationManager"

    const-string v2, "getPositionMode: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1375
    const/4 v1, -0x1

    goto :goto_6
.end method

.method public getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;
    .registers 7
    .parameter "name"

    .prologue
    const/4 v4, 0x0

    .line 309
    if-nez p1, :cond_b

    .line 310
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "name==null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 313
    :cond_b
    :try_start_b
    iget-object v2, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v2, p1}, Landroid/location/ILocationManager;->getProviderInfo(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 314
    .local v1, info:Landroid/os/Bundle;
    if-nez v1, :cond_15

    move-object v2, v4

    .line 321
    .end local v1           #info:Landroid/os/Bundle;
    :goto_14
    return-object v2

    .line 317
    .restart local v1       #info:Landroid/os/Bundle;
    :cond_15
    invoke-direct {p0, p1, v1}, Landroid/location/LocationManager;->createProvider(Ljava/lang/String;Landroid/os/Bundle;)Landroid/location/LocationProvider;
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_18} :catch_1a

    move-result-object v2

    goto :goto_14

    .line 318
    .end local v1           #info:Landroid/os/Bundle;
    :catch_1a
    move-exception v2

    move-object v0, v2

    .line 319
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "LocationManager"

    const-string v3, "getProvider: RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v4

    .line 321
    goto :goto_14
.end method

.method public getProviders(Landroid/location/Criteria;Z)Ljava/util/List;
    .registers 9
    .parameter "criteria"
    .parameter "enabledOnly"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/Criteria;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 335
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 336
    .local v0, goodProviders:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, p2}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v4

    .line 337
    .local v4, providers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_c
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 338
    .local v3, providerName:Ljava/lang/String;
    invoke-virtual {p0, v3}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v2

    .line 339
    .local v2, provider:Landroid/location/LocationProvider;
    invoke-virtual {v2, p1}, Landroid/location/LocationProvider;->meetsCriteria(Landroid/location/Criteria;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 340
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 341
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #goodProviders:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 343
    .restart local v0       #goodProviders:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_2d
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 346
    .end local v2           #provider:Landroid/location/LocationProvider;
    .end local v3           #providerName:Ljava/lang/String;
    :cond_31
    return-object v0
.end method

.method public getProviders(Z)Ljava/util/List;
    .registers 5
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
    .line 290
    :try_start_0
    iget-object v1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v1, p1}, Landroid/location/ILocationManager;->getProviders(Z)Ljava/util/List;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 294
    :goto_6
    return-object v1

    .line 291
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 292
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "LocationManager"

    const-string v2, "getProviders: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 294
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public installGeocodeProvider(Landroid/location/IGeocodeProvider;)Z
    .registers 5
    .parameter "provider"

    .prologue
    .line 1324
    :try_start_0
    iget-object v1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v1, p1}, Landroid/location/ILocationManager;->installGeocodeProvider(Landroid/location/IGeocodeProvider;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1325
    const/4 v1, 0x1

    .line 1328
    :goto_6
    return v1

    .line 1326
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 1327
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "LocationManager"

    const-string v2, "RemoteException in setGeocodeProvider: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1328
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public installLocationProvider(Ljava/lang/String;Landroid/location/ILocationProvider;)Z
    .registers 6
    .parameter "name"
    .parameter "provider"

    .prologue
    .line 1303
    :try_start_0
    iget-object v1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v1, p1, p2}, Landroid/location/ILocationManager;->installLocationProvider(Ljava/lang/String;Landroid/location/ILocationProvider;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1304
    const/4 v1, 0x1

    .line 1307
    :goto_6
    return v1

    .line 1305
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 1306
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "LocationManager"

    const-string v2, "RemoteException in installLocationProvider: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1307
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public isAirTestEnabled()Z
    .registers 2

    .prologue
    .line 1420
    sget-boolean v0, Landroid/location/LocationManager;->mAirTestEnabled:Z

    return v0
.end method

.method public isProviderEnabled(Ljava/lang/String;)Z
    .registers 5
    .parameter "provider"

    .prologue
    .line 944
    if-nez p1, :cond_a

    .line 945
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "provider==null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 948
    :cond_a
    :try_start_a
    iget-object v1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v1, p1}, Landroid/location/ILocationManager;->isProviderEnabled(Ljava/lang/String;)Z
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_11

    move-result v1

    .line 951
    :goto_10
    return v1

    .line 949
    :catch_11
    move-exception v1

    move-object v0, v1

    .line 950
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "LocationManager"

    const-string v2, "isProviderEnabled: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 951
    const/4 v1, 0x0

    goto :goto_10
.end method

.method public removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V
    .registers 6
    .parameter "listener"

    .prologue
    .line 1241
    :try_start_0
    iget-object v2, p0, Landroid/location/LocationManager;->mGpsStatusListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager$GpsStatusListenerTransport;

    .line 1242
    .local v1, transport:Landroid/location/LocationManager$GpsStatusListenerTransport;
    if-eqz v1, :cond_f

    .line 1243
    iget-object v2, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v2, v1}, Landroid/location/ILocationManager;->removeGpsStatusListener(Landroid/location/IGpsStatusListener;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    .line 1248
    .end local v1           #transport:Landroid/location/LocationManager$GpsStatusListenerTransport;
    :cond_f
    :goto_f
    return-void

    .line 1245
    :catch_10
    move-exception v2

    move-object v0, v2

    .line 1246
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "LocationManager"

    const-string v3, "RemoteException in unregisterGpsStatusListener: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f
.end method

.method public removeProximityAlert(Landroid/app/PendingIntent;)V
    .registers 6
    .parameter "intent"

    .prologue
    const-string v3, "LocationManager"

    .line 923
    const-string v1, "LocationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeProximityAlert: intent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    :try_start_1a
    iget-object v1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v1, p1}, Landroid/location/ILocationManager;->removeProximityAlert(Landroid/app/PendingIntent;)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1f} :catch_20

    .line 930
    :goto_1f
    return-void

    .line 927
    :catch_20
    move-exception v1

    move-object v0, v1

    .line 928
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "LocationManager"

    const-string v1, "removeProximityAlert: RemoteException"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1f
.end method

.method public removeTestProvider(Ljava/lang/String;)V
    .registers 5
    .parameter "provider"

    .prologue
    .line 1027
    :try_start_0
    iget-object v1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v1, p1}, Landroid/location/ILocationManager;->removeTestProvider(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1031
    :goto_5
    return-void

    .line 1028
    :catch_6
    move-exception v1

    move-object v0, v1

    .line 1029
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "LocationManager"

    const-string v2, "removeTestProvider: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public removeUpdates(Landroid/app/PendingIntent;)V
    .registers 6
    .parameter "intent"

    .prologue
    const-string v3, "LocationManager"

    .line 843
    if-nez p1, :cond_c

    .line 844
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "intent==null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 847
    :cond_c
    const-string v1, "LocationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeUpdates: intent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    :try_start_24
    iget-object v1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v1, p1}, Landroid/location/ILocationManager;->removeUpdatesPI(Landroid/app/PendingIntent;)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_29} :catch_2a

    .line 854
    :goto_29
    return-void

    .line 851
    :catch_2a
    move-exception v1

    move-object v0, v1

    .line 852
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "LocationManager"

    const-string v1, "removeUpdates: RemoteException"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_29
.end method

.method public removeUpdates(Landroid/location/LocationListener;)V
    .registers 7
    .parameter "listener"

    .prologue
    const-string v4, "LocationManager"

    .line 818
    if-nez p1, :cond_c

    .line 819
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "listener==null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 822
    :cond_c
    const-string v2, "LocationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeUpdates: listener = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    :try_start_24
    iget-object v2, p0, Landroid/location/LocationManager;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager$ListenerTransport;

    .line 826
    .local v1, transport:Landroid/location/LocationManager$ListenerTransport;
    if-eqz v1, :cond_33

    .line 827
    iget-object v2, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v2, v1}, Landroid/location/ILocationManager;->removeUpdates(Landroid/location/ILocationListener;)V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_33} :catch_34

    .line 832
    .end local v1           #transport:Landroid/location/LocationManager$ListenerTransport;
    :cond_33
    :goto_33
    return-void

    .line 829
    :catch_34
    move-exception v2

    move-object v0, v2

    .line 830
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "LocationManager"

    const-string v2, "removeUpdates: DeadObjectException"

    invoke-static {v4, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_33
.end method

.method public reportLocation(Landroid/location/Location;)V
    .registers 5
    .parameter "location"

    .prologue
    .line 1343
    :try_start_0
    iget-object v1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v1, p1}, Landroid/location/ILocationManager;->reportLocation(Landroid/location/Location;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1347
    :goto_5
    return-void

    .line 1344
    :catch_6
    move-exception v1

    move-object v0, v1

    .line 1345
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "LocationManager"

    const-string v2, "RemoteException in reportLocation: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public requestLocationUpdates(Ljava/lang/String;JFLandroid/app/PendingIntent;)V
    .registers 8
    .parameter "provider"
    .parameter "minTime"
    .parameter "minDistance"
    .parameter "intent"

    .prologue
    .line 784
    if-nez p1, :cond_a

    .line 785
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "provider==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 787
    :cond_a
    if-nez p5, :cond_14

    .line 788
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "intent==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 790
    :cond_14
    invoke-direct/range {p0 .. p5}, Landroid/location/LocationManager;->_requestLocationUpdates(Ljava/lang/String;JFLandroid/app/PendingIntent;)V

    .line 791
    return-void
.end method

.method public requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    .registers 13
    .parameter "provider"
    .parameter "minTime"
    .parameter "minDistance"
    .parameter "listener"

    .prologue
    .line 643
    if-nez p1, :cond_a

    .line 644
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "provider==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 646
    :cond_a
    if-nez p5, :cond_14

    .line 647
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 649
    :cond_14
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Landroid/location/LocationManager;->_requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    .line 650
    return-void
.end method

.method public requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V
    .registers 9
    .parameter "provider"
    .parameter "minTime"
    .parameter "minDistance"
    .parameter "listener"
    .parameter "looper"

    .prologue
    .line 701
    if-nez p1, :cond_a

    .line 702
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "provider==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 704
    :cond_a
    if-nez p5, :cond_14

    .line 705
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 707
    :cond_14
    if-nez p6, :cond_1e

    .line 708
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "looper==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 710
    :cond_1e
    invoke-direct/range {p0 .. p6}, Landroid/location/LocationManager;->_requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    .line 711
    return-void
.end method

.method public sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 7
    .parameter "provider"
    .parameter "command"
    .parameter "extras"

    .prologue
    .line 1282
    :try_start_0
    iget-object v1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/location/ILocationManager;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 1285
    :goto_6
    return v1

    .line 1283
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 1284
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "LocationManager"

    const-string v2, "RemoteException in sendExtraCommand: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1285
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public sendNiResponse(II)Z
    .registers 7
    .parameter "notifId"
    .parameter "userResponse"

    .prologue
    .line 1353
    const/4 v1, 0x0

    .line 1355
    .local v1, rc:Z
    :try_start_1
    iget-object v2, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v2, p1, p2}, Landroid/location/ILocationManager;->sendNiResponse(II)Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_6} :catch_8

    move-result v1

    .line 1359
    :goto_7
    return v1

    .line 1356
    :catch_8
    move-exception v2

    move-object v0, v2

    .line 1357
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "LocationManager"

    const-string v3, "RemoteException in sendNiResponse: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7
.end method

.method public setAirTestDisable()V
    .registers 2

    .prologue
    .line 1413
    const/4 v0, 0x0

    sput-boolean v0, Landroid/location/LocationManager;->mAirTestEnabled:Z

    .line 1414
    return-void
.end method

.method public setAirTestEnable()V
    .registers 2

    .prologue
    .line 1406
    const/4 v0, 0x1

    sput-boolean v0, Landroid/location/LocationManager;->mAirTestEnabled:Z

    .line 1407
    return-void
.end method

.method public setPositionMode(I)V
    .registers 5
    .parameter "position_mode"

    .prologue
    .line 1385
    :try_start_0
    iget-object v1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v1, p1}, Landroid/location/ILocationManager;->setPositionMode(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1389
    :goto_5
    return-void

    .line 1386
    :catch_6
    move-exception v1

    move-object v0, v1

    .line 1387
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "LocationManager"

    const-string v2, "setPositionMode: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public setTestProviderEnabled(Ljava/lang/String;Z)V
    .registers 6
    .parameter "provider"
    .parameter "enabled"

    .prologue
    .line 1085
    :try_start_0
    iget-object v1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v1, p1, p2}, Landroid/location/ILocationManager;->setTestProviderEnabled(Ljava/lang/String;Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1089
    :goto_5
    return-void

    .line 1086
    :catch_6
    move-exception v1

    move-object v0, v1

    .line 1087
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "LocationManager"

    const-string v2, "setTestProviderEnabled: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public setTestProviderLocation(Ljava/lang/String;Landroid/location/Location;)V
    .registers 6
    .parameter "provider"
    .parameter "loc"

    .prologue
    .line 1047
    :try_start_0
    iget-object v1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v1, p1, p2}, Landroid/location/ILocationManager;->setTestProviderLocation(Ljava/lang/String;Landroid/location/Location;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1051
    :goto_5
    return-void

    .line 1048
    :catch_6
    move-exception v1

    move-object v0, v1

    .line 1049
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "LocationManager"

    const-string v2, "setTestProviderLocation: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public setTestProviderStatus(Ljava/lang/String;ILandroid/os/Bundle;J)V
    .registers 13
    .parameter "provider"
    .parameter "status"
    .parameter "extras"
    .parameter "updateTime"

    .prologue
    .line 1126
    :try_start_0
    iget-object v0, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/location/ILocationManager;->setTestProviderStatus(Ljava/lang/String;ILandroid/os/Bundle;J)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 1130
    :goto_9
    return-void

    .line 1127
    :catch_a
    move-exception v0

    move-object v6, v0

    .line 1128
    .local v6, ex:Landroid/os/RemoteException;
    const-string v0, "LocationManager"

    const-string v1, "setTestProviderStatus: RemoteException"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public singleFixTest()V
    .registers 4

    .prologue
    .line 1396
    :try_start_0
    iget-object v1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v1}, Landroid/location/ILocationManager;->singleFixTest()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1400
    :goto_5
    return-void

    .line 1397
    :catch_6
    move-exception v1

    move-object v0, v1

    .line 1398
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "AirTest"

    const-string v2, "[Air] singleFixTest(): RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public startAirTest(II)Z
    .registers 8
    .parameter "testType"
    .parameter "testNum"

    .prologue
    const/4 v4, 0x0

    .line 1428
    :try_start_1
    iget-object v2, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v2, p1, p2}, Landroid/location/ILocationManager;->startAirTest(II)Z

    move-result v1

    .line 1429
    .local v1, rv:Z
    if-eqz v1, :cond_13

    .line 1430
    const-string v2, "Started!"

    invoke-static {v2}, Landroid/location/LocationManager;->setAirTestResult(Ljava/lang/String;)V

    .line 1431
    const/4 v2, 0x1

    sput-boolean v2, Landroid/location/LocationManager;->mAirTestEnabled:Z

    :goto_11
    move v2, v1

    .line 1440
    .end local v1           #rv:Z
    :goto_12
    return v2

    .line 1433
    .restart local v1       #rv:Z
    :cond_13
    const-string v2, "Failed to start!"

    invoke-static {v2}, Landroid/location/LocationManager;->setAirTestResult(Ljava/lang/String;)V

    .line 1434
    const/4 v2, 0x0

    sput-boolean v2, Landroid/location/LocationManager;->mAirTestEnabled:Z
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1b} :catch_1c

    goto :goto_11

    .line 1437
    .end local v1           #rv:Z
    :catch_1c
    move-exception v2

    move-object v0, v2

    .line 1438
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "LocationManager"

    const-string v3, "startAirTest: RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1439
    const-string v2, "Err"

    invoke-static {v2}, Landroid/location/LocationManager;->setAirTestResult(Ljava/lang/String;)V

    move v2, v4

    .line 1440
    goto :goto_12
.end method
