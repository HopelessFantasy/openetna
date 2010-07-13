.class public final Lcom/android/server/am/BatteryStatsService;
.super Lcom/android/internal/app/IBatteryStats$Stub;
.source "BatteryStatsService.java"


# static fields
.field static sService:Lcom/android/internal/app/IBatteryStats;


# instance fields
.field mContext:Landroid/content/Context;

.field final mStats:Lcom/android/internal/os/BatteryStatsImpl;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "filename"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/internal/app/IBatteryStats$Stub;-><init>()V

    .line 46
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    .line 47
    return-void
.end method

.method public static getService()Lcom/android/internal/app/IBatteryStats;
    .registers 2

    .prologue
    .line 62
    sget-object v1, Lcom/android/server/am/BatteryStatsService;->sService:Lcom/android/internal/app/IBatteryStats;

    if-eqz v1, :cond_7

    .line 63
    sget-object v1, Lcom/android/server/am/BatteryStatsService;->sService:Lcom/android/internal/app/IBatteryStats;

    .line 67
    :goto_6
    return-object v1

    .line 65
    :cond_7
    const-string v1, "batteryinfo"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 66
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Lcom/android/server/am/BatteryStatsService;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v1

    sput-object v1, Lcom/android/server/am/BatteryStatsService;->sService:Lcom/android/internal/app/IBatteryStats;

    .line 67
    sget-object v1, Lcom/android/server/am/BatteryStatsService;->sService:Lcom/android/internal/app/IBatteryStats;

    goto :goto_6
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 11
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 351
    iget-object v5, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v5

    .line 352
    const/4 v3, 0x0

    .line 353
    .local v3, isCheckin:Z
    if-eqz p3, :cond_16

    .line 354
    move-object v1, p3

    .local v1, arr$:[Ljava/lang/String;
    :try_start_7
    array-length v4, v1

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_9
    if-ge v2, v4, :cond_16

    aget-object v0, v1, v2

    .line 355
    .local v0, arg:Ljava/lang/String;
    const-string v6, "--checkin"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 356
    const/4 v3, 0x1

    .line 361
    .end local v0           #arg:Ljava/lang/String;
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v4           #len$:I
    :cond_16
    if-eqz v3, :cond_22

    iget-object v6, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v6, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl;->dumpCheckinLocked(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 363
    :goto_1d
    monitor-exit v5

    .line 364
    return-void

    .line 354
    .restart local v0       #arg:Ljava/lang/String;
    .restart local v1       #arr$:[Ljava/lang/String;
    .restart local v2       #i$:I
    .restart local v4       #len$:I
    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 362
    .end local v0           #arg:Ljava/lang/String;
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v4           #len$:I
    :cond_22
    iget-object v6, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v6, p2}, Lcom/android/internal/os/BatteryStatsImpl;->dumpLocked(Ljava/io/PrintWriter;)V

    goto :goto_1d

    .line 363
    :catchall_28
    move-exception v6

    monitor-exit v5
    :try_end_2a
    .catchall {:try_start_7 .. :try_end_2a} :catchall_28

    throw v6
.end method

.method public enforceCallingPermission()V
    .registers 6

    .prologue
    .line 342
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_b

    .line 347
    :goto_a
    return-void

    .line 345
    :cond_b
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.UPDATE_DEVICE_STATS"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_a
.end method

.method public getActiveStatistics()Lcom/android/internal/os/BatteryStatsImpl;
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    return-object v0
.end method

.method public getAwakeTimeBattery()J
    .registers 4

    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BATTERY_STATS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->getAwakeTimeBattery()J

    move-result-wide v0

    return-wide v0
.end method

.method public getAwakeTimePlugged()J
    .registers 4

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BATTERY_STATS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->getAwakeTimePlugged()J

    move-result-wide v0

    return-wide v0
.end method

.method public getStatistics()[B
    .registers 6

    .prologue
    .line 80
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BATTERY_STATS"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 85
    .local v1, out:Landroid/os/Parcel;
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/android/internal/os/BatteryStatsImpl;->writeToParcel(Landroid/os/Parcel;I)V

    .line 86
    invoke-virtual {v1}, Landroid/os/Parcel;->marshall()[B

    move-result-object v0

    .line 87
    .local v0, data:[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 88
    return-object v0
.end method

.method public isOnBattery()Z
    .registers 2

    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->isOnBattery()Z

    move-result v0

    return v0
.end method

.method public noteAirplaneMode(Z)V
    .registers 4
    .parameter "airplaneMode"

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 198
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 199
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteAirplaneModeLocked(Z)V

    .line 200
    monitor-exit v0

    .line 201
    return-void

    .line 200
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public noteBluetoothOff()V
    .registers 3

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 268
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 269
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->noteBluetoothOffLocked()V

    .line 270
    monitor-exit v0

    .line 271
    return-void

    .line 270
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public noteBluetoothOn()V
    .registers 3

    .prologue
    .line 260
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 261
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 262
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->noteBluetoothOnLocked()V

    .line 263
    monitor-exit v0

    .line 264
    return-void

    .line 263
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public noteFullWifiLockAcquired(I)V
    .registers 4
    .parameter "uid"

    .prologue
    .line 274
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 275
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 276
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteFullWifiLockAcquiredLocked(I)V

    .line 277
    monitor-exit v0

    .line 278
    return-void

    .line 277
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public noteFullWifiLockReleased(I)V
    .registers 4
    .parameter "uid"

    .prologue
    .line 281
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 282
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 283
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteFullWifiLockReleasedLocked(I)V

    .line 284
    monitor-exit v0

    .line 285
    return-void

    .line 284
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public noteInputEvent()V
    .registers 3

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 156
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 157
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->noteInputEventLocked()V

    .line 158
    monitor-exit v0

    .line 159
    return-void

    .line 158
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public notePhoneDataConnectionState(IZ)V
    .registers 5
    .parameter "dataType"
    .parameter "hasData"

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 191
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 192
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->notePhoneDataConnectionStateLocked(IZ)V

    .line 193
    monitor-exit v0

    .line 194
    return-void

    .line 193
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public notePhoneOff()V
    .registers 3

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 177
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 178
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->notePhoneOffLocked()V

    .line 179
    monitor-exit v0

    .line 180
    return-void

    .line 179
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public notePhoneOn()V
    .registers 3

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 170
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 171
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->notePhoneOnLocked()V

    .line 172
    monitor-exit v0

    .line 173
    return-void

    .line 172
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public notePhoneSignalStrength(Landroid/telephony/SignalStrength;)V
    .registers 4
    .parameter "signalStrength"

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 184
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 185
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->notePhoneSignalStrengthLocked(Landroid/telephony/SignalStrength;)V

    .line 186
    monitor-exit v0

    .line 187
    return-void

    .line 186
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public noteScanWifiLockAcquired(I)V
    .registers 4
    .parameter "uid"

    .prologue
    .line 288
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 289
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 290
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteScanWifiLockAcquiredLocked(I)V

    .line 291
    monitor-exit v0

    .line 292
    return-void

    .line 291
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public noteScanWifiLockReleased(I)V
    .registers 4
    .parameter "uid"

    .prologue
    .line 295
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 296
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 297
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteScanWifiLockReleasedLocked(I)V

    .line 298
    monitor-exit v0

    .line 299
    return-void

    .line 298
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public noteScreenBrightness(I)V
    .registers 4
    .parameter "brightness"

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 142
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 143
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteScreenBrightnessLocked(I)V

    .line 144
    monitor-exit v0

    .line 145
    return-void

    .line 144
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public noteScreenOff()V
    .registers 3

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 149
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 150
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->noteScreenOffLocked()V

    .line 151
    monitor-exit v0

    .line 152
    return-void

    .line 151
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public noteScreenOn()V
    .registers 3

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 135
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 136
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->noteScreenOnLocked()V

    .line 137
    monitor-exit v0

    .line 138
    return-void

    .line 137
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public noteStartAudio(I)V
    .registers 4
    .parameter "uid"

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 219
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 220
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteAudioOnLocked(I)V

    .line 221
    monitor-exit v0

    .line 222
    return-void

    .line 221
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public noteStartGps(I)V
    .registers 4
    .parameter "uid"

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 121
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 122
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteStartGps(I)V

    .line 123
    monitor-exit v0

    .line 124
    return-void

    .line 123
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public noteStartSensor(II)V
    .registers 5
    .parameter "uid"
    .parameter "sensor"

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 107
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 108
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteStartSensor(I)V

    .line 109
    monitor-exit v0

    .line 110
    return-void

    .line 109
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public noteStartVideo(I)V
    .registers 4
    .parameter "uid"

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 233
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 234
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteVideoOnLocked(I)V

    .line 235
    monitor-exit v0

    .line 236
    return-void

    .line 235
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public noteStartWakelock(ILjava/lang/String;I)V
    .registers 6
    .parameter "uid"
    .parameter "name"
    .parameter "type"

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 93
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 94
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteStartWakeLocked(Ljava/lang/String;I)V

    .line 95
    monitor-exit v0

    .line 96
    return-void

    .line 95
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public noteStopAudio(I)V
    .registers 4
    .parameter "uid"

    .prologue
    .line 225
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 226
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 227
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteAudioOffLocked(I)V

    .line 228
    monitor-exit v0

    .line 229
    return-void

    .line 228
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public noteStopGps(I)V
    .registers 4
    .parameter "uid"

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 128
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 129
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteStopGps(I)V

    .line 130
    monitor-exit v0

    .line 131
    return-void

    .line 130
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public noteStopSensor(II)V
    .registers 5
    .parameter "uid"
    .parameter "sensor"

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 114
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 115
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteStopSensor(I)V

    .line 116
    monitor-exit v0

    .line 117
    return-void

    .line 116
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public noteStopVideo(I)V
    .registers 4
    .parameter "uid"

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 240
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 241
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteVideoOffLocked(I)V

    .line 242
    monitor-exit v0

    .line 243
    return-void

    .line 242
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public noteStopWakelock(ILjava/lang/String;I)V
    .registers 6
    .parameter "uid"
    .parameter "name"
    .parameter "type"

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 100
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 101
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteStopWakeLocked(Ljava/lang/String;I)V

    .line 102
    monitor-exit v0

    .line 103
    return-void

    .line 102
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public noteUserActivity(II)V
    .registers 5
    .parameter "uid"
    .parameter "event"

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 163
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 164
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteUserActivityLocked(II)V

    .line 165
    monitor-exit v0

    .line 166
    return-void

    .line 165
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public noteWifiMulticastDisabled(I)V
    .registers 4
    .parameter "uid"

    .prologue
    .line 309
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 310
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 311
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiMulticastDisabledLocked(I)V

    .line 312
    monitor-exit v0

    .line 313
    return-void

    .line 312
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public noteWifiMulticastEnabled(I)V
    .registers 4
    .parameter "uid"

    .prologue
    .line 302
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 303
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 304
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiMulticastEnabledLocked(I)V

    .line 305
    monitor-exit v0

    .line 306
    return-void

    .line 305
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public noteWifiOff(I)V
    .registers 4
    .parameter "uid"

    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 212
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 213
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiOffLocked(I)V

    .line 214
    monitor-exit v0

    .line 215
    return-void

    .line 214
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public noteWifiOn(I)V
    .registers 4
    .parameter "uid"

    .prologue
    .line 204
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 205
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 206
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiOnLocked(I)V

    .line 207
    monitor-exit v0

    .line 208
    return-void

    .line 207
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public noteWifiRunning()V
    .registers 3

    .prologue
    .line 246
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 247
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 248
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiRunningLocked()V

    .line 249
    monitor-exit v0

    .line 250
    return-void

    .line 249
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public noteWifiStopped()V
    .registers 3

    .prologue
    .line 253
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 254
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 255
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiStoppedLocked()V

    .line 256
    monitor-exit v0

    .line 257
    return-void

    .line 256
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public publish(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    .line 51
    const-string v0, "batteryinfo"

    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 52
    return-void
.end method

.method public recordCurrentLevel(I)V
    .registers 3
    .parameter "level"

    .prologue
    .line 325
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 326
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->recordCurrentLevel(I)V

    .line 327
    return-void
.end method

.method public setOnBattery(ZI)V
    .registers 4
    .parameter "onBattery"
    .parameter "level"

    .prologue
    .line 320
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 321
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->setOnBattery(ZI)V

    .line 322
    return-void
.end method

.method public shutdown()V
    .registers 3

    .prologue
    .line 55
    const-string v0, "BatteryStats"

    const-string v1, "Writing battery stats before shutdown..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 57
    :try_start_a
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->writeLocked()V

    .line 58
    monitor-exit v0

    .line 59
    return-void

    .line 58
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_a .. :try_end_13} :catchall_11

    throw v1
.end method
