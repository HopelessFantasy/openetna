.class public Lcom/android/internal/location/LocationProviderProxy;
.super Ljava/lang/Object;
.source "LocationProviderProxy.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# static fields
.field private static final TAG:Ljava/lang/String; = "LocationProviderProxy"


# instance fields
.field private mDead:Z

.field private mLocationTracking:Z

.field private mMinTime:J

.field private final mName:Ljava/lang/String;

.field private final mProvider:Landroid/location/ILocationProvider;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/location/ILocationProvider;)V
    .registers 6
    .parameter "name"
    .parameter "provider"

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-boolean v1, p0, Lcom/android/internal/location/LocationProviderProxy;->mLocationTracking:Z

    .line 42
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/internal/location/LocationProviderProxy;->mMinTime:J

    .line 46
    iput-object p1, p0, Lcom/android/internal/location/LocationProviderProxy;->mName:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lcom/android/internal/location/LocationProviderProxy;->mProvider:Landroid/location/ILocationProvider;

    .line 49
    :try_start_e
    invoke-interface {p2}, Landroid/location/ILocationProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_16} :catch_17

    .line 54
    :goto_16
    return-void

    .line 50
    :catch_17
    move-exception v1

    move-object v0, v1

    .line 51
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "LocationProviderProxy"

    const-string v2, "linkToDeath failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 52
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/location/LocationProviderProxy;->mDead:Z

    goto :goto_16
.end method


# virtual methods
.method public addListener(I)V
    .registers 5
    .parameter "uid"

    .prologue
    .line 247
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/location/LocationProviderProxy;->mProvider:Landroid/location/ILocationProvider;

    invoke-interface {v1, p1}, Landroid/location/ILocationProvider;->addListener(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 251
    :goto_5
    return-void

    .line 248
    :catch_6
    move-exception v1

    move-object v0, v1

    .line 249
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "LocationProviderProxy"

    const-string v2, "addListener failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public binderDied()V
    .registers 4

    .prologue
    .line 262
    const-string v0, "LocationProviderProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Location Provider "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/location/LocationProviderProxy;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " died"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/location/LocationProviderProxy;->mDead:Z

    .line 264
    iget-object v0, p0, Lcom/android/internal/location/LocationProviderProxy;->mProvider:Landroid/location/ILocationProvider;

    invoke-interface {v0}, Landroid/location/ILocationProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 265
    return-void
.end method

.method public disable()V
    .registers 4

    .prologue
    .line 161
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/location/LocationProviderProxy;->mProvider:Landroid/location/ILocationProvider;

    invoke-interface {v1}, Landroid/location/ILocationProvider;->disable()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 165
    :goto_5
    return-void

    .line 162
    :catch_6
    move-exception v1

    move-object v0, v1

    .line 163
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "LocationProviderProxy"

    const-string v2, "disable failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public enable()V
    .registers 4

    .prologue
    .line 153
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/location/LocationProviderProxy;->mProvider:Landroid/location/ILocationProvider;

    invoke-interface {v1}, Landroid/location/ILocationProvider;->enable()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 157
    :goto_5
    return-void

    .line 154
    :catch_6
    move-exception v1

    move-object v0, v1

    .line 155
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "LocationProviderProxy"

    const-string v2, "enable failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public enableLocationTracking(Z)V
    .registers 5
    .parameter "enable"

    .prologue
    .line 199
    iput-boolean p1, p0, Lcom/android/internal/location/LocationProviderProxy;->mLocationTracking:Z

    .line 201
    :try_start_2
    iget-object v1, p0, Lcom/android/internal/location/LocationProviderProxy;->mProvider:Landroid/location/ILocationProvider;

    invoke-interface {v1, p1}, Landroid/location/ILocationProvider;->enableLocationTracking(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_8

    .line 205
    :goto_7
    return-void

    .line 202
    :catch_8
    move-exception v1

    move-object v0, v1

    .line 203
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "LocationProviderProxy"

    const-string v2, "enableLocationTracking failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7
.end method

.method public getAccuracy()I
    .registers 4

    .prologue
    .line 144
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/location/LocationProviderProxy;->mProvider:Landroid/location/ILocationProvider;

    invoke-interface {v1}, Landroid/location/ILocationProvider;->getAccuracy()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 147
    :goto_6
    return v1

    .line 145
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 146
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "LocationProviderProxy"

    const-string v2, "getAccuracy failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 147
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getMinTime()J
    .registers 3

    .prologue
    .line 208
    iget-wide v0, p0, Lcom/android/internal/location/LocationProviderProxy;->mMinTime:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/internal/location/LocationProviderProxy;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPowerRequirement()I
    .registers 4

    .prologue
    .line 135
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/location/LocationProviderProxy;->mProvider:Landroid/location/ILocationProvider;

    invoke-interface {v1}, Landroid/location/ILocationProvider;->getPowerRequirement()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 138
    :goto_6
    return v1

    .line 136
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 137
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "LocationProviderProxy"

    const-string v2, "getPowerRequirement failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 138
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getStatus(Landroid/os/Bundle;)I
    .registers 5
    .parameter "extras"

    .prologue
    .line 178
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/location/LocationProviderProxy;->mProvider:Landroid/location/ILocationProvider;

    invoke-interface {v1, p1}, Landroid/location/ILocationProvider;->getStatus(Landroid/os/Bundle;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 181
    :goto_6
    return v1

    .line 179
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 180
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "LocationProviderProxy"

    const-string v2, "getStatus failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 181
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getStatusUpdateTime()J
    .registers 4

    .prologue
    .line 187
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/location/LocationProviderProxy;->mProvider:Landroid/location/ILocationProvider;

    invoke-interface {v1}, Landroid/location/ILocationProvider;->getStatusUpdateTime()J
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-wide v1

    .line 190
    :goto_6
    return-wide v1

    .line 188
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 189
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "LocationProviderProxy"

    const-string v2, "getStatusUpdateTime failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 190
    const-wide/16 v1, 0x0

    goto :goto_6
.end method

.method public hasMonetaryCost()Z
    .registers 4

    .prologue
    .line 99
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/location/LocationProviderProxy;->mProvider:Landroid/location/ILocationProvider;

    invoke-interface {v1}, Landroid/location/ILocationProvider;->hasMonetaryCost()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 102
    :goto_6
    return v1

    .line 100
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 101
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "LocationProviderProxy"

    const-string v2, "hasMonetaryCost failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 102
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public isDead()Z
    .registers 2

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/android/internal/location/LocationProviderProxy;->mDead:Z

    return v0
.end method

.method public isEnabled()Z
    .registers 4

    .prologue
    .line 169
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/location/LocationProviderProxy;->mProvider:Landroid/location/ILocationProvider;

    invoke-interface {v1}, Landroid/location/ILocationProvider;->isEnabled()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 172
    :goto_6
    return v1

    .line 170
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 171
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "LocationProviderProxy"

    const-string v2, "isEnabled failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 172
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public isLocationTracking()Z
    .registers 2

    .prologue
    .line 195
    iget-boolean v0, p0, Lcom/android/internal/location/LocationProviderProxy;->mLocationTracking:Z

    return v0
.end method

.method public removeListener(I)V
    .registers 5
    .parameter "uid"

    .prologue
    .line 255
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/location/LocationProviderProxy;->mProvider:Landroid/location/ILocationProvider;

    invoke-interface {v1, p1}, Landroid/location/ILocationProvider;->removeListener(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 259
    :goto_5
    return-void

    .line 256
    :catch_6
    move-exception v1

    move-object v0, v1

    .line 257
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "LocationProviderProxy"

    const-string v2, "removeListener failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public requiresCell()Z
    .registers 4

    .prologue
    .line 90
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/location/LocationProviderProxy;->mProvider:Landroid/location/ILocationProvider;

    invoke-interface {v1}, Landroid/location/ILocationProvider;->requiresCell()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 93
    :goto_6
    return v1

    .line 91
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 92
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "LocationProviderProxy"

    const-string v2, "requiresCell failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 93
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public requiresNetwork()Z
    .registers 4

    .prologue
    .line 72
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/location/LocationProviderProxy;->mProvider:Landroid/location/ILocationProvider;

    invoke-interface {v1}, Landroid/location/ILocationProvider;->requiresNetwork()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 75
    :goto_6
    return v1

    .line 73
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 74
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "LocationProviderProxy"

    const-string v2, "requiresNetwork failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 75
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public requiresSatellite()Z
    .registers 4

    .prologue
    .line 81
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/location/LocationProviderProxy;->mProvider:Landroid/location/ILocationProvider;

    invoke-interface {v1}, Landroid/location/ILocationProvider;->requiresSatellite()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 84
    :goto_6
    return v1

    .line 82
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 83
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "LocationProviderProxy"

    const-string v2, "requiresSatellite failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 84
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 6
    .parameter "command"
    .parameter "extras"

    .prologue
    .line 238
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/location/LocationProviderProxy;->mProvider:Landroid/location/ILocationProvider;

    invoke-interface {v1, p1, p2}, Landroid/location/ILocationProvider;->sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 241
    :goto_6
    return v1

    .line 239
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 240
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "LocationProviderProxy"

    const-string v2, "sendExtraCommand failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 241
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public setMinTime(J)V
    .registers 6
    .parameter "minTime"

    .prologue
    .line 212
    iput-wide p1, p0, Lcom/android/internal/location/LocationProviderProxy;->mMinTime:J

    .line 214
    :try_start_2
    iget-object v1, p0, Lcom/android/internal/location/LocationProviderProxy;->mProvider:Landroid/location/ILocationProvider;

    invoke-interface {v1, p1, p2}, Landroid/location/ILocationProvider;->setMinTime(J)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_8

    .line 218
    :goto_7
    return-void

    .line 215
    :catch_8
    move-exception v1

    move-object v0, v1

    .line 216
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "LocationProviderProxy"

    const-string v2, "setMinTime failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7
.end method

.method public supportsAltitude()Z
    .registers 4

    .prologue
    .line 108
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/location/LocationProviderProxy;->mProvider:Landroid/location/ILocationProvider;

    invoke-interface {v1}, Landroid/location/ILocationProvider;->supportsAltitude()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 111
    :goto_6
    return v1

    .line 109
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 110
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "LocationProviderProxy"

    const-string v2, "supportsAltitude failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 111
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public supportsBearing()Z
    .registers 4

    .prologue
    .line 126
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/location/LocationProviderProxy;->mProvider:Landroid/location/ILocationProvider;

    invoke-interface {v1}, Landroid/location/ILocationProvider;->supportsBearing()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 129
    :goto_6
    return v1

    .line 127
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 128
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "LocationProviderProxy"

    const-string v2, "supportsBearing failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 129
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public supportsSpeed()Z
    .registers 4

    .prologue
    .line 117
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/location/LocationProviderProxy;->mProvider:Landroid/location/ILocationProvider;

    invoke-interface {v1}, Landroid/location/ILocationProvider;->supportsSpeed()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 120
    :goto_6
    return v1

    .line 118
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 119
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "LocationProviderProxy"

    const-string v2, "supportsSpeed failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 120
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public unlinkProvider()V
    .registers 3

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/internal/location/LocationProviderProxy;->mProvider:Landroid/location/ILocationProvider;

    if-eqz v0, :cond_e

    .line 58
    iget-object v0, p0, Lcom/android/internal/location/LocationProviderProxy;->mProvider:Landroid/location/ILocationProvider;

    invoke-interface {v0}, Landroid/location/ILocationProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 60
    :cond_e
    return-void
.end method

.method public updateLocation(Landroid/location/Location;)V
    .registers 5
    .parameter "location"

    .prologue
    .line 230
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/location/LocationProviderProxy;->mProvider:Landroid/location/ILocationProvider;

    invoke-interface {v1, p1}, Landroid/location/ILocationProvider;->updateLocation(Landroid/location/Location;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 234
    :goto_5
    return-void

    .line 231
    :catch_6
    move-exception v1

    move-object v0, v1

    .line 232
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "LocationProviderProxy"

    const-string v2, "updateLocation failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public updateNetworkState(I)V
    .registers 5
    .parameter "state"

    .prologue
    .line 222
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/location/LocationProviderProxy;->mProvider:Landroid/location/ILocationProvider;

    invoke-interface {v1, p1}, Landroid/location/ILocationProvider;->updateNetworkState(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 226
    :goto_5
    return-void

    .line 223
    :catch_6
    move-exception v1

    move-object v0, v1

    .line 224
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "LocationProviderProxy"

    const-string v2, "updateNetworkState failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method
