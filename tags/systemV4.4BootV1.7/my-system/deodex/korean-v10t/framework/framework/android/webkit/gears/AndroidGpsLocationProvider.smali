.class public final Landroid/webkit/gears/AndroidGpsLocationProvider;
.super Ljava/lang/Object;
.source "AndroidGpsLocationProvider.java"

# interfaces
.implements Landroid/location/LocationListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "Gears-J-GpsProvider"


# instance fields
.field private locationManager:Landroid/location/LocationManager;

.field private nativeObject:J


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;J)V
    .registers 12
    .parameter "webview"
    .parameter "object"

    .prologue
    const-string v7, "Gears-J-GpsProvider"

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-wide p2, p0, Landroid/webkit/gears/AndroidGpsLocationProvider;->nativeObject:J

    .line 56
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Landroid/webkit/gears/AndroidGpsLocationProvider;->locationManager:Landroid/location/LocationManager;

    .line 58
    iget-object v0, p0, Landroid/webkit/gears/AndroidGpsLocationProvider;->locationManager:Landroid/location/LocationManager;

    if-nez v0, :cond_28

    .line 59
    const-string v0, "Gears-J-GpsProvider"

    const-string v0, "AndroidGpsLocationProvider: could not get location manager."

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "AndroidGpsLocationProvider: locationManager is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_28
    :try_start_28
    iget-object v0, p0, Landroid/webkit/gears/AndroidGpsLocationProvider;->locationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_33
    .catch Ljava/lang/IllegalArgumentException; {:try_start_28 .. :try_end_33} :catch_34
    .catch Ljava/lang/SecurityException; {:try_start_28 .. :try_end_33} :catch_4f

    .line 78
    return-void

    .line 68
    :catch_34
    move-exception v0

    move-object v6, v0

    .line 69
    .local v6, ex:Ljava/lang/IllegalArgumentException;
    const-string v0, "Gears-J-GpsProvider"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AndroidLocationGpsProvider: could not register for updates: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    throw v6

    .line 72
    .end local v6           #ex:Ljava/lang/IllegalArgumentException;
    :catch_4f
    move-exception v0

    move-object v6, v0

    .line 73
    .local v6, ex:Ljava/lang/SecurityException;
    const-string v0, "Gears-J-GpsProvider"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AndroidGpsLocationProvider: not allowed to register for update: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    throw v6
.end method

.method private native nativeLocationChanged(Landroid/location/Location;J)V
.end method

.method private native nativeProviderError(ZJ)V
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .registers 5
    .parameter "location"

    .prologue
    .line 93
    const-string v0, "Gears-J-GpsProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Location changed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-wide v0, p0, Landroid/webkit/gears/AndroidGpsLocationProvider;->nativeObject:J

    invoke-direct {p0, p1, v0, v1}, Landroid/webkit/gears/AndroidGpsLocationProvider;->nativeLocationChanged(Landroid/location/Location;J)V

    .line 95
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 5
    .parameter "provider"

    .prologue
    .line 136
    const-string v0, "Gears-J-GpsProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Provider "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " disabled."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const/4 v0, 0x1

    iget-wide v1, p0, Landroid/webkit/gears/AndroidGpsLocationProvider;->nativeObject:J

    invoke-direct {p0, v0, v1, v2}, Landroid/webkit/gears/AndroidGpsLocationProvider;->nativeProviderError(ZJ)V

    .line 138
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 5
    .parameter "provider"

    .prologue
    .line 125
    const-string v0, "Gears-J-GpsProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Provider "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " enabled."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 7
    .parameter "provider"
    .parameter "status"
    .parameter "extras"

    .prologue
    .line 112
    const-string v0, "Gears-J-GpsProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Provider "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " status changed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    if-eqz p2, :cond_27

    const/4 v0, 0x1

    if-ne p2, v0, :cond_2d

    .line 115
    :cond_27
    const/4 v0, 0x0

    iget-wide v1, p0, Landroid/webkit/gears/AndroidGpsLocationProvider;->nativeObject:J

    invoke-direct {p0, v0, v1, v2}, Landroid/webkit/gears/AndroidGpsLocationProvider;->nativeProviderError(ZJ)V

    .line 117
    :cond_2d
    return-void
.end method

.method public shutdown()V
    .registers 3

    .prologue
    .line 84
    iget-object v0, p0, Landroid/webkit/gears/AndroidGpsLocationProvider;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 85
    const-string v0, "Gears-J-GpsProvider"

    const-string v1, "GPS provider closed."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    return-void
.end method
