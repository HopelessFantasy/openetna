.class Landroid/hardware/SensorManager$ListenerDelegate;
.super Landroid/os/Binder;
.source "SensorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/SensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListenerDelegate"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field final mSensorEventListener:Landroid/hardware/SensorEventListener;

.field private final mSensorList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation
.end field

.field public mSensors:I

.field private mValuesPool:Landroid/hardware/SensorEvent;

.field final synthetic this$0:Landroid/hardware/SensorManager;


# direct methods
.method constructor <init>(Landroid/hardware/SensorManager;Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;Landroid/os/Handler;)V
    .registers 7
    .parameter
    .parameter "listener"
    .parameter "sensor"
    .parameter "handler"

    .prologue
    .line 447
    iput-object p1, p0, Landroid/hardware/SensorManager$ListenerDelegate;->this$0:Landroid/hardware/SensorManager;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 442
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/hardware/SensorManager$ListenerDelegate;->mSensorList:Ljava/util/ArrayList;

    .line 448
    iput-object p2, p0, Landroid/hardware/SensorManager$ListenerDelegate;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    .line 449
    if-eqz p4, :cond_20

    invoke-virtual {p4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    move-object v0, v1

    .line 453
    .local v0, looper:Landroid/os/Looper;
    :goto_15
    new-instance v1, Landroid/hardware/SensorManager$ListenerDelegate$1;

    invoke-direct {v1, p0, v0, p1}, Landroid/hardware/SensorManager$ListenerDelegate$1;-><init>(Landroid/hardware/SensorManager$ListenerDelegate;Landroid/os/Looper;Landroid/hardware/SensorManager;)V

    iput-object v1, p0, Landroid/hardware/SensorManager$ListenerDelegate;->mHandler:Landroid/os/Handler;

    .line 464
    invoke-virtual {p0, p3}, Landroid/hardware/SensorManager$ListenerDelegate;->addSensor(Landroid/hardware/Sensor;)I

    .line 465
    return-void

    .line 449
    .end local v0           #looper:Landroid/os/Looper;
    :cond_20
    iget-object v1, p1, Landroid/hardware/SensorManager;->mMainLooper:Landroid/os/Looper;

    move-object v0, v1

    goto :goto_15
.end method


# virtual methods
.method addSensor(Landroid/hardware/Sensor;)I
    .registers 5
    .parameter "sensor"

    .prologue
    .line 500
    iget v0, p0, Landroid/hardware/SensorManager$ListenerDelegate;->mSensors:I

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v2

    shl-int/2addr v1, v2

    or-int/2addr v0, v1

    iput v0, p0, Landroid/hardware/SensorManager$ListenerDelegate;->mSensors:I

    .line 501
    iget-object v0, p0, Landroid/hardware/SensorManager$ListenerDelegate;->mSensorList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 502
    iget v0, p0, Landroid/hardware/SensorManager$ListenerDelegate;->mSensors:I

    return v0
.end method

.method protected createSensorEvent()Landroid/hardware/SensorEvent;
    .registers 3

    .prologue
    .line 469
    new-instance v0, Landroid/hardware/SensorEvent;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/hardware/SensorEvent;-><init>(I)V

    return-object v0
.end method

.method protected getFromPool()Landroid/hardware/SensorEvent;
    .registers 3

    .prologue
    .line 473
    const/4 v0, 0x0

    .line 474
    .local v0, t:Landroid/hardware/SensorEvent;
    monitor-enter p0

    .line 476
    :try_start_2
    iget-object v0, p0, Landroid/hardware/SensorManager$ListenerDelegate;->mValuesPool:Landroid/hardware/SensorEvent;

    .line 477
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/hardware/SensorManager$ListenerDelegate;->mValuesPool:Landroid/hardware/SensorEvent;

    .line 478
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_f

    .line 479
    if-nez v0, :cond_e

    .line 481
    invoke-virtual {p0}, Landroid/hardware/SensorManager$ListenerDelegate;->createSensorEvent()Landroid/hardware/SensorEvent;

    move-result-object v0

    .line 483
    :cond_e
    return-object v0

    .line 478
    :catchall_f
    move-exception v1

    :try_start_10
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw v1
.end method

.method getListener()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 496
    iget-object v0, p0, Landroid/hardware/SensorManager$ListenerDelegate;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    return-object v0
.end method

.method getSensors()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 513
    iget-object v0, p0, Landroid/hardware/SensorManager$ListenerDelegate;->mSensorList:Ljava/util/ArrayList;

    return-object v0
.end method

.method hasSensor(Landroid/hardware/Sensor;)Z
    .registers 5
    .parameter "sensor"

    .prologue
    const/4 v2, 0x1

    .line 510
    iget v0, p0, Landroid/hardware/SensorManager$ListenerDelegate;->mSensors:I

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v1

    shl-int v1, v2, v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_e

    move v0, v2

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method onSensorChangedLocked(Landroid/hardware/Sensor;[F[JI)V
    .registers 12
    .parameter "sensor"
    .parameter "values"
    .parameter "timestamp"
    .parameter "accuracy"

    .prologue
    const/4 v6, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 517
    invoke-virtual {p0}, Landroid/hardware/SensorManager$ListenerDelegate;->getFromPool()Landroid/hardware/SensorEvent;

    move-result-object v1

    .line 518
    .local v1, t:Landroid/hardware/SensorEvent;
    iget-object v2, v1, Landroid/hardware/SensorEvent;->values:[F

    .line 519
    .local v2, v:[F
    aget v3, p2, v5

    aput v3, v2, v5

    .line 520
    aget v3, p2, v4

    aput v3, v2, v4

    .line 521
    aget v3, p2, v6

    aput v3, v2, v6

    .line 522
    aget-wide v3, p3, v5

    iput-wide v3, v1, Landroid/hardware/SensorEvent;->timestamp:J

    .line 523
    iput p4, v1, Landroid/hardware/SensorEvent;->accuracy:I

    .line 524
    iput-object p1, v1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 525
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 526
    .local v0, msg:Landroid/os/Message;
    iput v5, v0, Landroid/os/Message;->what:I

    .line 527
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 528
    iget-object v3, p0, Landroid/hardware/SensorManager$ListenerDelegate;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 529
    return-void
.end method

.method removeSensor(Landroid/hardware/Sensor;)I
    .registers 5
    .parameter "sensor"

    .prologue
    .line 505
    iget v0, p0, Landroid/hardware/SensorManager$ListenerDelegate;->mSensors:I

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v2

    shl-int/2addr v1, v2

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/hardware/SensorManager$ListenerDelegate;->mSensors:I

    .line 506
    iget-object v0, p0, Landroid/hardware/SensorManager$ListenerDelegate;->mSensorList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 507
    iget v0, p0, Landroid/hardware/SensorManager$ListenerDelegate;->mSensors:I

    return v0
.end method

.method protected returnToPool(Landroid/hardware/SensorEvent;)V
    .registers 3
    .parameter "t"

    .prologue
    .line 487
    monitor-enter p0

    .line 489
    :try_start_1
    iget-object v0, p0, Landroid/hardware/SensorManager$ListenerDelegate;->mValuesPool:Landroid/hardware/SensorEvent;

    if-nez v0, :cond_7

    .line 490
    iput-object p1, p0, Landroid/hardware/SensorManager$ListenerDelegate;->mValuesPool:Landroid/hardware/SensorEvent;

    .line 492
    :cond_7
    monitor-exit p0

    .line 493
    return-void

    .line 492
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw v0
.end method
