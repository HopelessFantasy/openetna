.class Lcom/android/server/SensorService;
.super Landroid/hardware/ISensorService$Stub;
.source "SensorService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SensorService$Listener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final SENSOR_DISABLE:I = -0x1

.field static final TAG:Ljava/lang/String;

.field private static final localLOGV:Z


# instance fields
.field final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/SensorService$Listener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 42
    const-class v0, Lcom/android/server/SensorService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/SensorService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 99
    invoke-direct {p0}, Landroid/hardware/ISensorService$Stub;-><init>()V

    .line 50
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/SensorService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 190
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/SensorService;->mListeners:Ljava/util/ArrayList;

    .line 101
    invoke-static {}, Lcom/android/server/SensorService;->_sensors_control_init()I

    .line 102
    return-void
.end method

.method private static native _sensors_control_activate(IZ)Z
.end method

.method private static native _sensors_control_init()I
.end method

.method private static native _sensors_control_open()Landroid/os/Bundle;
.end method

.method private static native _sensors_control_set_delay(I)I
.end method

.method private static native _sensors_control_wake()I
.end method


# virtual methods
.method deactivateIfUnused(I)V
    .registers 5
    .parameter "sensor"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 182
    iget-object v2, p0, Lcom/android/server/SensorService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 183
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_7
    if-ge v0, v1, :cond_1b

    .line 184
    iget-object v2, p0, Lcom/android/server/SensorService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/SensorService$Listener;

    invoke-virtual {v2, p1}, Lcom/android/server/SensorService$Listener;->hasSensor(I)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 188
    :goto_17
    return-void

    .line 183
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 187
    :cond_1b
    const/4 v2, 0x0

    invoke-static {p1, v2}, Lcom/android/server/SensorService;->_sensors_control_activate(IZ)Z

    goto :goto_17
.end method

.method public enableSensor(Landroid/os/IBinder;Ljava/lang/String;II)Z
    .registers 16
    .parameter "binder"
    .parameter "name"
    .parameter "sensor"
    .parameter "enable"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 113
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 114
    .local v6, uid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 115
    .local v1, identity:J
    const/4 v7, -0x1

    if-ne p4, v7, :cond_3f

    .line 116
    iget-object v7, p0, Lcom/android/server/SensorService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v7, v6, p3}, Lcom/android/internal/app/IBatteryStats;->noteStopSensor(II)V

    .line 120
    :goto_10
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 122
    if-nez p1, :cond_45

    .line 123
    sget-object v7, Lcom/android/server/SensorService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "listener is null (sensor="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const/4 v7, 0x0

    .line 178
    :goto_3e
    return v7

    .line 118
    :cond_3f
    iget-object v7, p0, Lcom/android/server/SensorService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v7, v6, p3}, Lcom/android/internal/app/IBatteryStats;->noteStartSensor(II)V

    goto :goto_10

    .line 127
    :cond_45
    iget-object v7, p0, Lcom/android/server/SensorService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v7

    .line 128
    const/4 v8, -0x1

    if-eq p4, v8, :cond_6e

    const/4 v8, 0x1

    :try_start_4c
    invoke-static {p3, v8}, Lcom/android/server/SensorService;->_sensors_control_activate(IZ)Z

    move-result v8

    if-nez v8, :cond_6e

    .line 129
    sget-object v8, Lcom/android/server/SensorService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "could not enable sensor "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const/4 v8, 0x0

    monitor-exit v7

    move v7, v8

    goto :goto_3e

    .line 133
    :cond_6e
    const/4 v3, 0x0

    .line 134
    .local v3, l:Lcom/android/server/SensorService$Listener;
    move v5, p4

    .line 135
    .local v5, minDelay:I
    iget-object v8, p0, Lcom/android/server/SensorService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_76
    :goto_76
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/SensorService$Listener;

    .line 136
    .local v4, listener:Lcom/android/server/SensorService$Listener;
    iget-object v8, v4, Lcom/android/server/SensorService$Listener;->mToken:Landroid/os/IBinder;

    if-ne p1, v8, :cond_87

    .line 137
    move-object v3, v4

    .line 139
    :cond_87
    iget v8, v4, Lcom/android/server/SensorService$Listener;->mDelay:I

    if-le v5, v8, :cond_76

    .line 140
    iget v5, v4, Lcom/android/server/SensorService$Listener;->mDelay:I

    goto :goto_76

    .line 143
    .end local v4           #listener:Lcom/android/server/SensorService$Listener;
    :cond_8e
    if-nez v3, :cond_a6

    const/4 v8, -0x1

    if-eq p4, v8, :cond_a6

    .line 144
    new-instance v3, Lcom/android/server/SensorService$Listener;

    .end local v3           #l:Lcom/android/server/SensorService$Listener;
    invoke-direct {v3, p0, p1}, Lcom/android/server/SensorService$Listener;-><init>(Lcom/android/server/SensorService;Landroid/os/IBinder;)V

    .line 145
    .restart local v3       #l:Lcom/android/server/SensorService$Listener;
    const/4 v8, 0x0

    invoke-interface {p1, v3, v8}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 146
    iget-object v8, p0, Lcom/android/server/SensorService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    iget-object v8, p0, Lcom/android/server/SensorService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/lang/Object;->notify()V

    .line 150
    :cond_a6
    if-nez v3, :cond_df

    .line 153
    sget-object v8, Lcom/android/server/SensorService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "listener with binder "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", doesn\'t exist (sensor="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", id="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const/4 v8, 0x0

    monitor-exit v7

    move v7, v8

    goto/16 :goto_3e

    .line 158
    :cond_df
    if-ltz v5, :cond_e4

    .line 159
    invoke-static {v5}, Lcom/android/server/SensorService;->_sensors_control_set_delay(I)I

    .line 162
    :cond_e4
    const/4 v8, -0x1

    if-eq p4, v8, :cond_f9

    .line 163
    invoke-virtual {v3, p3, p4}, Lcom/android/server/SensorService$Listener;->addSensor(II)V

    .line 174
    :cond_ea
    :goto_ea
    iget-object v8, p0, Lcom/android/server/SensorService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_f5

    .line 175
    invoke-static {}, Lcom/android/server/SensorService;->_sensors_control_wake()I

    .line 177
    :cond_f5
    monitor-exit v7

    .line 178
    const/4 v7, 0x1

    goto/16 :goto_3e

    .line 165
    :cond_f9
    invoke-virtual {v3, p3}, Lcom/android/server/SensorService$Listener;->removeSensor(I)V

    .line 166
    invoke-virtual {p0, p3}, Lcom/android/server/SensorService;->deactivateIfUnused(I)V

    .line 167
    iget v8, v3, Lcom/android/server/SensorService$Listener;->mSensors:I

    if-nez v8, :cond_ea

    .line 168
    iget-object v8, p0, Lcom/android/server/SensorService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 169
    const/4 v8, 0x0

    invoke-interface {p1, v3, v8}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 170
    iget-object v8, p0, Lcom/android/server/SensorService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/lang/Object;->notify()V

    goto :goto_ea

    .line 177
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v3           #l:Lcom/android/server/SensorService$Listener;
    .end local v5           #minDelay:I
    :catchall_112
    move-exception v8

    monitor-exit v7
    :try_end_114
    .catchall {:try_start_4c .. :try_end_114} :catchall_112

    throw v8
.end method

.method public getDataChannel()Landroid/os/Bundle;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 105
    invoke-static {}, Lcom/android/server/SensorService;->_sensors_control_open()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
