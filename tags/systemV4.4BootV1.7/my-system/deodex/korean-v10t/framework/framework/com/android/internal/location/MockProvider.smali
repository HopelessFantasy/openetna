.class public Lcom/android/internal/location/MockProvider;
.super Landroid/location/ILocationProvider$Stub;
.source "MockProvider.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MockProvider"


# instance fields
.field private final mAccuracy:I

.field private mEnabled:Z

.field private final mExtras:Landroid/os/Bundle;

.field private mHasLocation:Z

.field private final mHasMonetaryCost:Z

.field private mHasStatus:Z

.field private final mLocation:Landroid/location/Location;

.field private final mLocationManager:Landroid/location/ILocationManager;

.field private final mName:Ljava/lang/String;

.field private final mPowerRequirement:I

.field private final mRequiresCell:Z

.field private final mRequiresNetwork:Z

.field private final mRequiresSatellite:Z

.field private mStatus:I

.field private mStatusUpdateTime:J

.field private final mSupportsAltitude:Z

.field private final mSupportsBearing:Z

.field private final mSupportsSpeed:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/location/ILocationManager;ZZZZZZZII)V
    .registers 13
    .parameter "name"
    .parameter "locationManager"
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
    .line 60
    invoke-direct {p0}, Landroid/location/ILocationProvider$Stub;-><init>()V

    .line 50
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/internal/location/MockProvider;->mExtras:Landroid/os/Bundle;

    .line 61
    iput-object p1, p0, Lcom/android/internal/location/MockProvider;->mName:Ljava/lang/String;

    .line 62
    iput-object p2, p0, Lcom/android/internal/location/MockProvider;->mLocationManager:Landroid/location/ILocationManager;

    .line 63
    iput-boolean p3, p0, Lcom/android/internal/location/MockProvider;->mRequiresNetwork:Z

    .line 64
    iput-boolean p4, p0, Lcom/android/internal/location/MockProvider;->mRequiresSatellite:Z

    .line 65
    iput-boolean p5, p0, Lcom/android/internal/location/MockProvider;->mRequiresCell:Z

    .line 66
    iput-boolean p6, p0, Lcom/android/internal/location/MockProvider;->mHasMonetaryCost:Z

    .line 67
    iput-boolean p7, p0, Lcom/android/internal/location/MockProvider;->mSupportsAltitude:Z

    .line 68
    iput-boolean p9, p0, Lcom/android/internal/location/MockProvider;->mSupportsBearing:Z

    .line 69
    iput-boolean p8, p0, Lcom/android/internal/location/MockProvider;->mSupportsSpeed:Z

    .line 70
    iput p10, p0, Lcom/android/internal/location/MockProvider;->mPowerRequirement:I

    .line 71
    iput p11, p0, Lcom/android/internal/location/MockProvider;->mAccuracy:I

    .line 72
    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, p1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/location/MockProvider;->mLocation:Landroid/location/Location;

    .line 73
    return-void
.end method


# virtual methods
.method public addListener(I)V
    .registers 2
    .parameter "uid"

    .prologue
    .line 183
    return-void
.end method

.method public clearLocation()V
    .registers 2

    .prologue
    .line 148
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/location/MockProvider;->mHasLocation:Z

    .line 149
    return-void
.end method

.method public clearStatus()V
    .registers 3

    .prologue
    .line 162
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/location/MockProvider;->mHasStatus:Z

    .line 163
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/location/MockProvider;->mStatusUpdateTime:J

    .line 164
    return-void
.end method

.method public disable()V
    .registers 2

    .prologue
    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/location/MockProvider;->mEnabled:Z

    .line 77
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 7
    .parameter "pw"
    .parameter "prefix"

    .prologue
    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/location/MockProvider;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mHasLocation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/location/MockProvider;->mHasLocation:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mLocation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/android/internal/location/MockProvider;->mLocation:Landroid/location/Location;

    new-instance v1, Landroid/util/PrintWriterPrinter;

    invoke-direct {v1, p1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mHasStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/location/MockProvider;->mHasStatus:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/location/MockProvider;->mStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mStatusUpdateTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/location/MockProvider;->mStatusUpdateTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mExtras="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/location/MockProvider;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 197
    return-void
.end method

.method public enable()V
    .registers 2

    .prologue
    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/location/MockProvider;->mEnabled:Z

    .line 81
    return-void
.end method

.method public enableLocationTracking(Z)V
    .registers 2
    .parameter "enable"

    .prologue
    .line 167
    return-void
.end method

.method public getAccuracy()I
    .registers 2

    .prologue
    .line 102
    iget v0, p0, Lcom/android/internal/location/MockProvider;->mAccuracy:I

    return v0
.end method

.method public getPowerRequirement()I
    .registers 2

    .prologue
    .line 106
    iget v0, p0, Lcom/android/internal/location/MockProvider;->mPowerRequirement:I

    return v0
.end method

.method public getStatus(Landroid/os/Bundle;)I
    .registers 3
    .parameter "extras"

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/android/internal/location/MockProvider;->mHasStatus:Z

    if-eqz v0, :cond_f

    .line 85
    invoke-virtual {p1}, Landroid/os/Bundle;->clear()V

    .line 86
    iget-object v0, p0, Lcom/android/internal/location/MockProvider;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 87
    iget v0, p0, Lcom/android/internal/location/MockProvider;->mStatus:I

    .line 89
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x2

    goto :goto_e
.end method

.method public getStatusUpdateTime()J
    .registers 3

    .prologue
    .line 94
    iget-wide v0, p0, Lcom/android/internal/location/MockProvider;->mStatusUpdateTime:J

    return-wide v0
.end method

.method public hasMonetaryCost()Z
    .registers 2

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/android/internal/location/MockProvider;->mHasMonetaryCost:Z

    return v0
.end method

.method public isEnabled()Z
    .registers 2

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/android/internal/location/MockProvider;->mEnabled:Z

    return v0
.end method

.method public removeListener(I)V
    .registers 2
    .parameter "uid"

    .prologue
    .line 186
    return-void
.end method

.method public requiresCell()Z
    .registers 2

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/android/internal/location/MockProvider;->mRequiresCell:Z

    return v0
.end method

.method public requiresNetwork()Z
    .registers 2

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/android/internal/location/MockProvider;->mRequiresNetwork:Z

    return v0
.end method

.method public requiresSatellite()Z
    .registers 2

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/android/internal/location/MockProvider;->mRequiresSatellite:Z

    return v0
.end method

.method public sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 4
    .parameter "command"
    .parameter "extras"

    .prologue
    .line 179
    const/4 v0, 0x0

    return v0
.end method

.method public setLocation(Landroid/location/Location;)V
    .registers 5
    .parameter "l"

    .prologue
    .line 138
    iget-object v1, p0, Lcom/android/internal/location/MockProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {v1, p1}, Landroid/location/Location;->set(Landroid/location/Location;)V

    .line 139
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/location/MockProvider;->mHasLocation:Z

    .line 141
    :try_start_8
    iget-object v1, p0, Lcom/android/internal/location/MockProvider;->mLocationManager:Landroid/location/ILocationManager;

    iget-object v2, p0, Lcom/android/internal/location/MockProvider;->mLocation:Landroid/location/Location;

    invoke-interface {v1, v2}, Landroid/location/ILocationManager;->reportLocation(Landroid/location/Location;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_f} :catch_10

    .line 145
    :goto_f
    return-void

    .line 142
    :catch_10
    move-exception v1

    move-object v0, v1

    .line 143
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "MockProvider"

    const-string v2, "RemoteException calling reportLocation"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method

.method public setMinTime(J)V
    .registers 3
    .parameter "minTime"

    .prologue
    .line 170
    return-void
.end method

.method public setStatus(ILandroid/os/Bundle;J)V
    .registers 6
    .parameter "status"
    .parameter "extras"
    .parameter "updateTime"

    .prologue
    .line 152
    iput p1, p0, Lcom/android/internal/location/MockProvider;->mStatus:I

    .line 153
    iput-wide p3, p0, Lcom/android/internal/location/MockProvider;->mStatusUpdateTime:J

    .line 154
    iget-object v0, p0, Lcom/android/internal/location/MockProvider;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    .line 155
    if-eqz p2, :cond_10

    .line 156
    iget-object v0, p0, Lcom/android/internal/location/MockProvider;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 158
    :cond_10
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/location/MockProvider;->mHasStatus:Z

    .line 159
    return-void
.end method

.method public supportsAltitude()Z
    .registers 2

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/android/internal/location/MockProvider;->mSupportsAltitude:Z

    return v0
.end method

.method public supportsBearing()Z
    .registers 2

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/android/internal/location/MockProvider;->mSupportsBearing:Z

    return v0
.end method

.method public supportsSpeed()Z
    .registers 2

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/android/internal/location/MockProvider;->mSupportsSpeed:Z

    return v0
.end method

.method public updateLocation(Landroid/location/Location;)V
    .registers 2
    .parameter "location"

    .prologue
    .line 176
    return-void
.end method

.method public updateNetworkState(I)V
    .registers 2
    .parameter "state"

    .prologue
    .line 173
    return-void
.end method
