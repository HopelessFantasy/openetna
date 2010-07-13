.class public Landroid/test/TestLocationProvider;
.super Landroid/location/ILocationProvider$Stub;
.source "TestLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/test/TestLocationProvider$TestLocationProviderThread;
    }
.end annotation


# static fields
.field public static final ALTITUDE:D = 10000.0

.field public static final BEARING:F = 1.0f

.field public static final LAT:D = 0.0

.field private static final LOCATION_INTERVAL:J = 0x3e8L

.field public static final LON:D = 1.0

.field public static final PROVIDER_NAME:Ljava/lang/String; = "test"

.field public static final SPEED:F = 10.0f

.field public static final STATUS:I = 0x2

.field private static final TAG:Ljava/lang/String; = "TestLocationProvider"


# instance fields
.field private mEnabled:Z

.field private mLocation:Landroid/location/Location;

.field private final mLocationManager:Landroid/location/ILocationManager;

.field private mThread:Landroid/test/TestLocationProvider$TestLocationProviderThread;


# direct methods
.method public constructor <init>(Landroid/location/ILocationManager;)V
    .registers 4
    .parameter "locationManager"

    .prologue
    .line 82
    invoke-direct {p0}, Landroid/location/ILocationProvider$Stub;-><init>()V

    .line 83
    iput-object p1, p0, Landroid/test/TestLocationProvider;->mLocationManager:Landroid/location/ILocationManager;

    .line 84
    new-instance v0, Landroid/location/Location;

    const-string v1, "test"

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/test/TestLocationProvider;->mLocation:Landroid/location/Location;

    .line 85
    return-void
.end method

.method static synthetic access$000(Landroid/test/TestLocationProvider;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/test/TestLocationProvider;->updateLocation()V

    return-void
.end method

.method private updateLocation()V
    .registers 12

    .prologue
    .line 176
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 177
    .local v4, time:J
    const-wide/16 v6, 0x1388

    div-long v6, v4, v6

    const-wide/32 v8, 0x7a120

    rem-long v2, v6, v8

    .line 178
    .local v2, multiplier:J
    iget-object v6, p0, Landroid/test/TestLocationProvider;->mLocation:Landroid/location/Location;

    const-wide/16 v7, 0x0

    long-to-double v9, v2

    mul-double/2addr v7, v9

    invoke-virtual {v6, v7, v8}, Landroid/location/Location;->setLatitude(D)V

    .line 179
    iget-object v6, p0, Landroid/test/TestLocationProvider;->mLocation:Landroid/location/Location;

    const-wide/high16 v7, 0x3ff0

    long-to-double v9, v2

    mul-double/2addr v7, v9

    invoke-virtual {v6, v7, v8}, Landroid/location/Location;->setLongitude(D)V

    .line 180
    iget-object v6, p0, Landroid/test/TestLocationProvider;->mLocation:Landroid/location/Location;

    const-wide v7, 0x40c3880000000000L

    invoke-virtual {v6, v7, v8}, Landroid/location/Location;->setAltitude(D)V

    .line 181
    iget-object v6, p0, Landroid/test/TestLocationProvider;->mLocation:Landroid/location/Location;

    const/high16 v7, 0x4120

    invoke-virtual {v6, v7}, Landroid/location/Location;->setSpeed(F)V

    .line 182
    iget-object v6, p0, Landroid/test/TestLocationProvider;->mLocation:Landroid/location/Location;

    const/high16 v7, 0x3f80

    long-to-float v8, v2

    mul-float/2addr v7, v8

    invoke-virtual {v6, v7}, Landroid/location/Location;->setBearing(F)V

    .line 184
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 185
    .local v1, extras:Landroid/os/Bundle;
    const-string v6, "extraTest"

    const/16 v7, 0x18

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 186
    iget-object v6, p0, Landroid/test/TestLocationProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {v6, v1}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    .line 187
    iget-object v6, p0, Landroid/test/TestLocationProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {v6, v4, v5}, Landroid/location/Location;->setTime(J)V

    .line 189
    :try_start_4f
    iget-object v6, p0, Landroid/test/TestLocationProvider;->mLocationManager:Landroid/location/ILocationManager;

    iget-object v7, p0, Landroid/test/TestLocationProvider;->mLocation:Landroid/location/Location;

    invoke-interface {v6, v7}, Landroid/location/ILocationManager;->reportLocation(Landroid/location/Location;)V
    :try_end_56
    .catch Landroid/os/RemoteException; {:try_start_4f .. :try_end_56} :catch_57

    .line 193
    :goto_56
    return-void

    .line 190
    :catch_57
    move-exception v6

    move-object v0, v6

    .line 191
    .local v0, e:Landroid/os/RemoteException;
    const-string v6, "TestLocationProvider"

    const-string v7, "RemoteException calling updateLocation"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_56
.end method


# virtual methods
.method public addListener(I)V
    .registers 2
    .parameter "uid"

    .prologue
    .line 170
    return-void
.end method

.method public declared-synchronized disable()V
    .registers 2

    .prologue
    .line 124
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Landroid/test/TestLocationProvider;->mEnabled:Z

    .line 125
    iget-object v0, p0, Landroid/test/TestLocationProvider;->mThread:Landroid/test/TestLocationProvider$TestLocationProviderThread;

    if-eqz v0, :cond_15

    .line 126
    iget-object v0, p0, Landroid/test/TestLocationProvider;->mThread:Landroid/test/TestLocationProvider$TestLocationProviderThread;

    invoke-virtual {v0}, Landroid/test/TestLocationProvider$TestLocationProviderThread;->setDone()V
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_17

    .line 128
    :try_start_d
    iget-object v0, p0, Landroid/test/TestLocationProvider;->mThread:Landroid/test/TestLocationProvider$TestLocationProviderThread;

    invoke-virtual {v0}, Landroid/test/TestLocationProvider$TestLocationProviderThread;->join()V
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_17
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_12} :catch_1a

    .line 131
    :goto_12
    const/4 v0, 0x0

    :try_start_13
    iput-object v0, p0, Landroid/test/TestLocationProvider;->mThread:Landroid/test/TestLocationProvider$TestLocationProviderThread;
    :try_end_15
    .catchall {:try_start_13 .. :try_end_15} :catchall_17

    .line 133
    :cond_15
    monitor-exit p0

    return-void

    .line 124
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0

    .line 129
    :catch_1a
    move-exception v0

    goto :goto_12
.end method

.method public declared-synchronized enable()V
    .registers 2

    .prologue
    .line 136
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Landroid/test/TestLocationProvider;->mEnabled:Z

    .line 137
    new-instance v0, Landroid/test/TestLocationProvider$TestLocationProviderThread;

    invoke-direct {v0, p0}, Landroid/test/TestLocationProvider$TestLocationProviderThread;-><init>(Landroid/test/TestLocationProvider;)V

    iput-object v0, p0, Landroid/test/TestLocationProvider;->mThread:Landroid/test/TestLocationProvider$TestLocationProviderThread;

    .line 138
    iget-object v0, p0, Landroid/test/TestLocationProvider;->mThread:Landroid/test/TestLocationProvider$TestLocationProviderThread;

    invoke-virtual {v0}, Landroid/test/TestLocationProvider$TestLocationProviderThread;->start()V
    :try_end_10
    .catchall {:try_start_2 .. :try_end_10} :catchall_12

    .line 139
    monitor-exit p0

    return-void

    .line 136
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public enableLocationTracking(Z)V
    .registers 2
    .parameter "enable"

    .prologue
    .line 154
    return-void
.end method

.method public getAccuracy()I
    .registers 2

    .prologue
    .line 88
    const/4 v0, 0x2

    return v0
.end method

.method public getPowerRequirement()I
    .registers 2

    .prologue
    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method public getStatus(Landroid/os/Bundle;)I
    .registers 3
    .parameter "extras"

    .prologue
    .line 146
    const/4 v0, 0x2

    return v0
.end method

.method public getStatusUpdateTime()J
    .registers 3

    .prologue
    .line 150
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public hasMonetaryCost()Z
    .registers 2

    .prologue
    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled()Z
    .registers 2

    .prologue
    .line 142
    iget-boolean v0, p0, Landroid/test/TestLocationProvider;->mEnabled:Z

    return v0
.end method

.method public removeListener(I)V
    .registers 2
    .parameter "uid"

    .prologue
    .line 173
    return-void
.end method

.method public requiresCell()Z
    .registers 2

    .prologue
    .line 100
    const/4 v0, 0x0

    return v0
.end method

.method public requiresNetwork()Z
    .registers 2

    .prologue
    .line 104
    const/4 v0, 0x0

    return v0
.end method

.method public requiresSatellite()Z
    .registers 2

    .prologue
    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method public sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 4
    .parameter "command"
    .parameter "extras"

    .prologue
    .line 166
    const/4 v0, 0x0

    return v0
.end method

.method public setMinTime(J)V
    .registers 3
    .parameter "minTime"

    .prologue
    .line 157
    return-void
.end method

.method public supportsAltitude()Z
    .registers 2

    .prologue
    .line 112
    const/4 v0, 0x1

    return v0
.end method

.method public supportsBearing()Z
    .registers 2

    .prologue
    .line 116
    const/4 v0, 0x1

    return v0
.end method

.method public supportsSpeed()Z
    .registers 2

    .prologue
    .line 120
    const/4 v0, 0x1

    return v0
.end method

.method public updateLocation(Landroid/location/Location;)V
    .registers 2
    .parameter "location"

    .prologue
    .line 163
    return-void
.end method

.method public updateNetworkState(I)V
    .registers 2
    .parameter "state"

    .prologue
    .line 160
    return-void
.end method
