.class public Landroid/hardware/SensorManager;
.super Ljava/lang/Object;
.source "SensorManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/SensorManager$LmsFilter;,
        Landroid/hardware/SensorManager$LegacyListener;,
        Landroid/hardware/SensorManager$ListenerDelegate;,
        Landroid/hardware/SensorManager$SensorThread;
    }
.end annotation


# static fields
.field public static final AXIS_MINUS_X:I = 0x81

.field public static final AXIS_MINUS_Y:I = 0x82

.field public static final AXIS_MINUS_Z:I = 0x83

.field public static final AXIS_X:I = 0x1

.field public static final AXIS_Y:I = 0x2

.field public static final AXIS_Z:I = 0x3

.field public static final DATA_X:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DATA_Y:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DATA_Z:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final GRAVITY_DEATH_STAR_I:F = 3.5303614E-7f

.field public static final GRAVITY_EARTH:F = 9.80665f

.field public static final GRAVITY_JUPITER:F = 23.12f

.field public static final GRAVITY_MARS:F = 3.71f

.field public static final GRAVITY_MERCURY:F = 3.7f

.field public static final GRAVITY_MOON:F = 1.6f

.field public static final GRAVITY_NEPTUNE:F = 11.0f

.field public static final GRAVITY_PLUTO:F = 0.6f

.field public static final GRAVITY_SATURN:F = 8.96f

.field public static final GRAVITY_SUN:F = 275.0f

.field public static final GRAVITY_THE_ISLAND:F = 4.815162f

.field public static final GRAVITY_URANUS:F = 8.69f

.field public static final GRAVITY_VENUS:F = 8.87f

.field public static final LIGHT_CLOUDY:F = 100.0f

.field public static final LIGHT_FULLMOON:F = 0.25f

.field public static final LIGHT_NO_MOON:F = 0.0010f

.field public static final LIGHT_OVERCAST:F = 10000.0f

.field public static final LIGHT_SHADE:F = 20000.0f

.field public static final LIGHT_SUNLIGHT:F = 110000.0f

.field public static final LIGHT_SUNLIGHT_MAX:F = 120000.0f

.field public static final LIGHT_SUNRISE:F = 400.0f

.field public static final MAGNETIC_FIELD_EARTH_MAX:F = 60.0f

.field public static final MAGNETIC_FIELD_EARTH_MIN:F = 30.0f

.field public static final RAW_DATA_INDEX:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RAW_DATA_X:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RAW_DATA_Y:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RAW_DATA_Z:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_ACCELEROMETER:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_ALL:I = 0x7f
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_DELAY_FASTEST:I = 0x0

.field public static final SENSOR_DELAY_GAME:I = 0x1

.field public static final SENSOR_DELAY_NORMAL:I = 0x3

.field public static final SENSOR_DELAY_UI:I = 0x2

.field private static final SENSOR_DISABLE:I = -0x1

.field public static final SENSOR_LIGHT:I = 0x10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_MAGNETIC_FIELD:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_MAX:I = 0x40
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_MIN:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_ORIENTATION:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_ORIENTATION_RAW:I = 0x80
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_PROXIMITY:I = 0x20
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_STATUS_ACCURACY_HIGH:I = 0x3

.field public static final SENSOR_STATUS_ACCURACY_LOW:I = 0x1

.field public static final SENSOR_STATUS_ACCURACY_MEDIUM:I = 0x2

.field public static final SENSOR_STATUS_UNRELIABLE:I = 0x0

.field public static final SENSOR_TEMPERATURE:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_TRICORDER:I = 0x40
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STANDARD_GRAVITY:F = 9.80665f

.field private static final TAG:Ljava/lang/String; = "SensorManager"

.field private static final mTempMatrix:[F

.field private static recentProxSensor:I

.field private static recent_accuracy:I

.field private static recent_timestamp:[J

.field private static recent_value:[F

.field private static sFullSensorsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation
.end field

.field static sHandleToSensor:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation
.end field

.field static final sListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/SensorManager$ListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private static sRotation:I

.field private static sSensorListByType:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Sensor;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sSensorModuleInitialized:Z

.field private static sSensorThread:Landroid/hardware/SensorManager$SensorThread;

.field private static sWindowManager:Landroid/view/IWindowManager;


# instance fields
.field private mLegacyListenersMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/hardware/SensorListener;",
            "Landroid/hardware/SensorManager$LegacyListener;",
            ">;"
        }
    .end annotation
.end field

.field mMainLooper:Landroid/os/Looper;

.field private mSensorService:Landroid/hardware/ISensorService;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 54
    const/16 v0, 0x10

    new-array v0, v0, [F

    sput-object v0, Landroid/hardware/SensorManager;->mTempMatrix:[F

    .line 249
    const/4 v0, 0x3

    new-array v0, v0, [F

    sput-object v0, Landroid/hardware/SensorManager;->recent_value:[F

    .line 250
    sput v1, Landroid/hardware/SensorManager;->recent_accuracy:I

    .line 251
    const/4 v0, 0x1

    new-array v0, v0, [J

    sput-object v0, Landroid/hardware/SensorManager;->recent_timestamp:[J

    .line 252
    sput v1, Landroid/hardware/SensorManager;->recentProxSensor:I

    .line 262
    sput-boolean v1, Landroid/hardware/SensorManager;->sSensorModuleInitialized:Z

    .line 263
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/hardware/SensorManager;->sFullSensorsList:Ljava/util/ArrayList;

    .line 264
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/hardware/SensorManager;->sSensorListByType:Landroid/util/SparseArray;

    .line 266
    sput v1, Landroid/hardware/SensorManager;->sRotation:I

    .line 272
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/hardware/SensorManager;->sHandleToSensor:Landroid/util/SparseArray;

    .line 273
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .registers 9
    .parameter "mainLooper"

    .prologue
    .line 577
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 256
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Landroid/hardware/SensorManager;->mLegacyListenersMap:Ljava/util/HashMap;

    .line 578
    const-string v3, "sensor"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/ISensorService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/ISensorService;

    move-result-object v3

    iput-object v3, p0, Landroid/hardware/SensorManager;->mSensorService:Landroid/hardware/ISensorService;

    .line 580
    iput-object p1, p0, Landroid/hardware/SensorManager;->mMainLooper:Landroid/os/Looper;

    .line 583
    sget-object v3, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 584
    :try_start_1b
    sget-boolean v4, Landroid/hardware/SensorManager;->sSensorModuleInitialized:Z

    if-nez v4, :cond_9d

    .line 585
    const/4 v4, 0x1

    sput-boolean v4, Landroid/hardware/SensorManager;->sSensorModuleInitialized:Z

    .line 587
    invoke-static {}, Landroid/hardware/SensorManager;->nativeClassInit()V

    .line 589
    const-string v4, "window"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v4

    sput-object v4, Landroid/hardware/SensorManager;->sWindowManager:Landroid/view/IWindowManager;

    .line 591
    sget-object v4, Landroid/hardware/SensorManager;->sWindowManager:Landroid/view/IWindowManager;
    :try_end_33
    .catchall {:try_start_1b .. :try_end_33} :catchall_9f

    if-eqz v4, :cond_42

    .line 595
    :try_start_35
    sget-object v4, Landroid/hardware/SensorManager;->sWindowManager:Landroid/view/IWindowManager;

    new-instance v5, Landroid/hardware/SensorManager$1;

    invoke-direct {v5, p0}, Landroid/hardware/SensorManager$1;-><init>(Landroid/hardware/SensorManager;)V

    invoke-interface {v4, v5}, Landroid/view/IWindowManager;->watchRotation(Landroid/view/IRotationWatcher;)I

    move-result v4

    sput v4, Landroid/hardware/SensorManager;->sRotation:I
    :try_end_42
    .catchall {:try_start_35 .. :try_end_42} :catchall_9f
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_42} :catch_a2

    .line 607
    :cond_42
    :goto_42
    :try_start_42
    invoke-static {}, Landroid/hardware/SensorManager;->sensors_module_init()I

    .line 608
    sget-object v0, Landroid/hardware/SensorManager;->sFullSensorsList:Ljava/util/ArrayList;

    .line 609
    .local v0, fullList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/hardware/Sensor;>;"
    const/4 v1, 0x0

    .line 611
    .local v1, i:I
    :cond_48
    new-instance v2, Landroid/hardware/Sensor;

    invoke-direct {v2}, Landroid/hardware/Sensor;-><init>()V

    .line 612
    .local v2, sensor:Landroid/hardware/Sensor;
    invoke-static {v2, v1}, Landroid/hardware/SensorManager;->sensors_module_get_next_sensor(Landroid/hardware/Sensor;I)I

    move-result v1

    .line 614
    if-ltz v1, :cond_94

    .line 615
    const-string v4, "SensorManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "found sensor: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", handle="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getHandle()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v4

    invoke-direct {p0, v4}, Landroid/hardware/SensorManager;->getLegacySensorType(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/hardware/Sensor;->setLegacyType(I)V

    .line 618
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 619
    sget-object v4, Landroid/hardware/SensorManager;->sHandleToSensor:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getHandle()I

    move-result v5

    invoke-virtual {v4, v5, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 621
    :cond_94
    if-gtz v1, :cond_48

    .line 623
    new-instance v4, Landroid/hardware/SensorManager$SensorThread;

    invoke-direct {v4}, Landroid/hardware/SensorManager$SensorThread;-><init>()V

    sput-object v4, Landroid/hardware/SensorManager;->sSensorThread:Landroid/hardware/SensorManager$SensorThread;

    .line 625
    .end local v0           #fullList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/hardware/Sensor;>;"
    .end local v1           #i:I
    .end local v2           #sensor:Landroid/hardware/Sensor;
    :cond_9d
    monitor-exit v3

    .line 626
    return-void

    .line 625
    :catchall_9f
    move-exception v4

    monitor-exit v3
    :try_end_a1
    .catchall {:try_start_42 .. :try_end_a1} :catchall_9f

    throw v4

    .line 602
    :catch_a2
    move-exception v4

    goto :goto_42
.end method

.method static synthetic access$000()[F
    .registers 1

    .prologue
    .line 51
    sget-object v0, Landroid/hardware/SensorManager;->recent_value:[F

    return-object v0
.end method

.method static synthetic access$102(I)I
    .registers 1
    .parameter "x0"

    .prologue
    .line 51
    sput p0, Landroid/hardware/SensorManager;->recentProxSensor:I

    return p0
.end method

.method static synthetic access$202(I)I
    .registers 1
    .parameter "x0"

    .prologue
    .line 51
    sput p0, Landroid/hardware/SensorManager;->recent_accuracy:I

    return p0
.end method

.method static synthetic access$300()[J
    .registers 1

    .prologue
    .line 51
    sget-object v0, Landroid/hardware/SensorManager;->recent_timestamp:[J

    return-object v0
.end method

.method public static getInclination([F)F
    .registers 5
    .parameter "I"

    .prologue
    const/4 v2, 0x5

    .line 1241
    array-length v0, p0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_13

    .line 1242
    aget v0, p0, v2

    float-to-double v0, v0

    const/4 v2, 0x4

    aget v2, p0, v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    .line 1244
    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x6

    aget v0, p0, v0

    float-to-double v0, v0

    aget v2, p0, v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    goto :goto_12
.end method

.method private getLegacySensorType(I)I
    .registers 3
    .parameter "type"

    .prologue
    .line 629
    packed-switch p1, :pswitch_data_12

    .line 645
    :pswitch_3
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 631
    :pswitch_5
    const/4 v0, 0x2

    goto :goto_4

    .line 633
    :pswitch_7
    const/16 v0, 0x8

    goto :goto_4

    .line 635
    :pswitch_a
    const/16 v0, 0x80

    goto :goto_4

    .line 637
    :pswitch_d
    const/4 v0, 0x4

    goto :goto_4

    .line 641
    :pswitch_f
    const/16 v0, 0x20

    goto :goto_4

    .line 629
    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_5
        :pswitch_7
        :pswitch_a
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_d
        :pswitch_f
    .end packed-switch
.end method

.method public static getOrientation([F[F)[F
    .registers 11
    .parameter "R"
    .parameter "values"

    .prologue
    const/16 v8, 0x9

    const/16 v7, 0x8

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1398
    array-length v0, p0

    if-ne v0, v8, :cond_34

    .line 1399
    aget v0, p0, v4

    float-to-double v0, v0

    const/4 v2, 0x4

    aget v2, p0, v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p1, v5

    .line 1400
    const/4 v0, 0x7

    aget v0, p0, v0

    neg-float v0, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p1, v4

    .line 1401
    const/4 v0, 0x6

    aget v0, p0, v0

    neg-float v0, v0

    float-to-double v0, v0

    aget v2, p0, v7

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p1, v6

    .line 1407
    :goto_33
    return-object p1

    .line 1403
    :cond_34
    aget v0, p0, v4

    float-to-double v0, v0

    const/4 v2, 0x5

    aget v2, p0, v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p1, v5

    .line 1404
    aget v0, p0, v8

    neg-float v0, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p1, v4

    .line 1405
    aget v0, p0, v7

    neg-float v0, v0

    float-to-double v0, v0

    const/16 v2, 0xa

    aget v2, p0, v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p1, v6

    goto :goto_33
.end method

.method static getRotation()I
    .registers 2

    .prologue
    .line 1421
    sget-object v0, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1422
    :try_start_3
    sget v1, Landroid/hardware/SensorManager;->sRotation:I

    monitor-exit v0

    return v1

    .line 1423
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public static getRotationMatrix([F[F[F[F)Z
    .registers 19
    .parameter "R"
    .parameter "I"
    .parameter "gravity"
    .parameter "geomagnetic"

    .prologue
    .line 1174
    const/4 v2, 0x0

    aget v2, p2, v2

    .line 1175
    .local v2, Ax:F
    const/4 v3, 0x1

    aget v3, p2, v3

    .line 1176
    .local v3, Ay:F
    const/4 v4, 0x2

    aget v4, p2, v4

    .line 1177
    .local v4, Az:F
    const/16 p2, 0x0

    aget v5, p3, p2

    .line 1178
    .end local p2
    .local v5, Ex:F
    const/16 p2, 0x1

    aget v6, p3, p2

    .line 1179
    .local v6, Ey:F
    const/16 p2, 0x2

    aget v7, p3, p2

    .line 1180
    .local v7, Ez:F
    mul-float p2, v6, v4

    mul-float p3, v7, v3

    sub-float p2, p2, p3

    .line 1181
    .local p2, Hx:F
    mul-float p3, v7, v2

    mul-float v8, v5, v4

    sub-float p3, p3, v8

    .line 1182
    .local p3, Hy:F
    mul-float v8, v5, v3

    mul-float v9, v6, v2

    sub-float v10, v8, v9

    .line 1183
    .local v10, Hz:F
    mul-float v8, p2, p2

    mul-float v9, p3, p3

    add-float/2addr v8, v9

    mul-float v9, v10, v10

    add-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v8, v8

    .line 1184
    .local v8, normH:F
    const v9, 0x3dcccccd

    cmpg-float v9, v8, v9

    if-gez v9, :cond_4b

    .line 1187
    const/4 p0, 0x0

    move/from16 p1, v3

    .end local v3           #Ay:F
    .local p1, Ay:F
    move v3, v10

    .end local v10           #Hz:F
    .local v3, Hz:F
    move/from16 v14, p2

    .end local p2           #Hx:F
    .local v14, Hx:F
    move/from16 p2, v4

    .end local v4           #Az:F
    .local p2, Az:F
    move v4, p0

    move p0, v2

    .end local v2           #Ax:F
    .local p0, Ax:F
    move/from16 v2, p3

    .end local p3           #Hy:F
    .local v2, Hy:F
    move/from16 p3, v14

    .line 1231
    .end local v5           #Ex:F
    .end local v6           #Ey:F
    .end local v7           #Ez:F
    .end local v8           #normH:F
    .end local v14           #Hx:F
    .local p3, Hx:F
    :goto_4a
    return v4

    .line 1189
    .local v2, Ax:F
    .local v3, Ay:F
    .restart local v4       #Az:F
    .restart local v5       #Ex:F
    .restart local v6       #Ey:F
    .restart local v7       #Ez:F
    .restart local v8       #normH:F
    .restart local v10       #Hz:F
    .local p0, R:[F
    .local p1, I:[F
    .local p2, Hx:F
    .local p3, Hy:F
    :cond_4b
    const/high16 v9, 0x3f80

    div-float v11, v9, v8

    .line 1190
    .local v11, invH:F
    mul-float v8, p2, v11

    .line 1191
    .end local p2           #Hx:F
    .local v8, Hx:F
    mul-float v9, p3, v11

    .line 1192
    .end local p3           #Hy:F
    .local v9, Hy:F
    mul-float/2addr v10, v11

    .line 1193
    const/high16 p2, 0x3f80

    mul-float p3, v2, v2

    mul-float v11, v3, v3

    add-float p3, p3, v11

    mul-float v11, v4, v4

    add-float p3, p3, v11

    move/from16 v0, p3

    float-to-double v0, v0

    move-wide v11, v0

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    .end local v11           #invH:F
    move-result-wide v11

    move-wide v0, v11

    double-to-float v0, v0

    move/from16 p3, v0

    div-float v11, p2, p3

    .line 1194
    .local v11, invA:F
    mul-float p2, v2, v11

    .line 1195
    .end local v2           #Ax:F
    .local p2, Ax:F
    mul-float p3, v3, v11

    .line 1196
    .end local v3           #Ay:F
    .local p3, Ay:F
    mul-float v2, v4, v11

    .line 1197
    .end local v4           #Az:F
    .local v2, Az:F
    mul-float v3, p3, v10

    mul-float v4, v2, v9

    sub-float/2addr v3, v4

    .line 1198
    .local v3, Mx:F
    mul-float v4, v2, v8

    mul-float v11, p2, v10

    sub-float/2addr v4, v11

    .line 1199
    .local v4, My:F
    mul-float v11, p2, v9

    mul-float v12, p3, v8

    sub-float/2addr v11, v12

    .line 1200
    .local v11, Mz:F
    if-eqz p0, :cond_a6

    .line 1201
    array-length v12, p0

    const/16 v13, 0x9

    if-ne v12, v13, :cond_105

    .line 1202
    const/4 v12, 0x0

    aput v8, p0, v12

    const/4 v12, 0x1

    aput v9, p0, v12

    const/4 v12, 0x2

    aput v10, p0, v12

    .line 1203
    const/4 v12, 0x3

    aput v3, p0, v12

    const/4 v12, 0x4

    aput v4, p0, v12

    const/4 v12, 0x5

    aput v11, p0, v12

    .line 1204
    const/4 v12, 0x6

    aput p2, p0, v12

    const/4 v12, 0x7

    aput p3, p0, v12

    const/16 v12, 0x8

    aput v2, p0, v12

    .line 1212
    :cond_a6
    :goto_a6
    if-eqz p1, :cond_f7

    .line 1216
    const/high16 p0, 0x3f80

    mul-float v12, v5, v5

    mul-float v13, v6, v6

    add-float/2addr v12, v13

    mul-float v13, v7, v7

    add-float/2addr v12, v13

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    .end local p0           #R:[F
    move-result-wide v12

    double-to-float v12, v12

    div-float v12, p0, v12

    .line 1217
    .local v12, invE:F
    mul-float p0, v5, v3

    mul-float v3, v6, v4

    add-float/2addr p0, v3

    mul-float v3, v7, v11

    add-float/2addr p0, v3

    mul-float/2addr p0, v12

    .line 1218
    .local p0, c:F
    mul-float v3, v5, p2

    mul-float v4, v6, p3

    add-float/2addr v3, v4

    mul-float v4, v7, v2

    add-float/2addr v3, v4

    mul-float/2addr v3, v12

    .line 1219
    .local v3, s:F
    move-object/from16 v0, p1

    array-length v0, v0

    move v4, v0

    .end local v4           #My:F
    const/16 v5, 0x9

    if-ne v4, v5, :cond_14c

    .line 1220
    .end local v5           #Ex:F
    const/4 v4, 0x0

    const/high16 v5, 0x3f80

    aput v5, p1, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    aput v5, p1, v4

    const/4 v4, 0x2

    const/4 v5, 0x0

    aput v5, p1, v4

    .line 1221
    const/4 v4, 0x3

    const/4 v5, 0x0

    aput v5, p1, v4

    const/4 v4, 0x4

    aput p0, p1, v4

    const/4 v4, 0x5

    aput v3, p1, v4

    .line 1222
    const/4 v4, 0x6

    const/4 v5, 0x0

    aput v5, p1, v4

    const/4 v4, 0x7

    neg-float v3, v3

    aput v3, p1, v4

    .end local v3           #s:F
    const/16 v3, 0x8

    aput p0, p1, v3

    .line 1231
    .end local v6           #Ey:F
    .end local v7           #Ez:F
    .end local v11           #Mz:F
    .end local v12           #invE:F
    .end local p0           #c:F
    :cond_f7
    :goto_f7
    const/4 p0, 0x1

    move v3, v10

    .end local v10           #Hz:F
    .local v3, Hz:F
    move/from16 p1, p3

    .end local p3           #Ay:F
    .local p1, Ay:F
    move v4, p0

    move/from16 p0, p2

    .end local p2           #Ax:F
    .local p0, Ax:F
    move/from16 p3, v8

    .end local v8           #Hx:F
    .local p3, Hx:F
    move/from16 p2, v2

    .end local v2           #Az:F
    .local p2, Az:F
    move v2, v9

    .end local v9           #Hy:F
    .local v2, Hy:F
    goto/16 :goto_4a

    .line 1205
    .local v2, Az:F
    .local v3, Mx:F
    .restart local v4       #My:F
    .restart local v5       #Ex:F
    .restart local v6       #Ey:F
    .restart local v7       #Ez:F
    .restart local v8       #Hx:F
    .restart local v9       #Hy:F
    .restart local v10       #Hz:F
    .restart local v11       #Mz:F
    .local p0, R:[F
    .local p1, I:[F
    .local p2, Ax:F
    .local p3, Ay:F
    :cond_105
    array-length v12, p0

    const/16 v13, 0x10

    if-ne v12, v13, :cond_a6

    .line 1206
    const/4 v12, 0x0

    aput v8, p0, v12

    const/4 v12, 0x1

    aput v9, p0, v12

    const/4 v12, 0x2

    aput v10, p0, v12

    const/4 v12, 0x3

    const/4 v13, 0x0

    aput v13, p0, v12

    .line 1207
    const/4 v12, 0x4

    aput v3, p0, v12

    const/4 v12, 0x5

    aput v4, p0, v12

    const/4 v12, 0x6

    aput v11, p0, v12

    const/4 v12, 0x7

    const/4 v13, 0x0

    aput v13, p0, v12

    .line 1208
    const/16 v12, 0x8

    aput p2, p0, v12

    const/16 v12, 0x9

    aput p3, p0, v12

    const/16 v12, 0xa

    aput v2, p0, v12

    const/16 v12, 0xb

    const/4 v13, 0x0

    aput v13, p0, v12

    .line 1209
    const/16 v12, 0xc

    const/4 v13, 0x0

    aput v13, p0, v12

    const/16 v12, 0xd

    const/4 v13, 0x0

    aput v13, p0, v12

    const/16 v12, 0xe

    const/4 v13, 0x0

    aput v13, p0, v12

    const/16 v12, 0xf

    const/high16 v13, 0x3f80

    aput v13, p0, v12

    goto/16 :goto_a6

    .line 1223
    .end local v4           #My:F
    .end local v5           #Ex:F
    .local v3, s:F
    .restart local v12       #invE:F
    .local p0, c:F
    :cond_14c
    move-object/from16 v0, p1

    array-length v0, v0

    move v4, v0

    const/16 v5, 0x10

    if-ne v4, v5, :cond_f7

    .line 1224
    const/4 v4, 0x0

    const/high16 v5, 0x3f80

    aput v5, p1, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    aput v5, p1, v4

    const/4 v4, 0x2

    const/4 v5, 0x0

    aput v5, p1, v4

    .line 1225
    const/4 v4, 0x4

    const/4 v5, 0x0

    aput v5, p1, v4

    const/4 v4, 0x5

    aput p0, p1, v4

    const/4 v4, 0x6

    aput v3, p1, v4

    .line 1226
    const/16 v4, 0x8

    const/4 v5, 0x0

    aput v5, p1, v4

    const/16 v4, 0x9

    neg-float v3, v3

    aput v3, p1, v4

    .end local v3           #s:F
    const/16 v3, 0xa

    aput p0, p1, v3

    .line 1227
    const/4 p0, 0x3

    const/4 v3, 0x7

    const/16 v4, 0xb

    const/16 v5, 0xc

    const/16 v6, 0xd

    const/16 v7, 0xe

    const/4 v11, 0x0

    aput v11, p1, v7

    .end local v6           #Ey:F
    .end local v7           #Ez:F
    .end local v11           #Mz:F
    .end local p0           #c:F
    aput v11, p1, v6

    aput v11, p1, v5

    aput v11, p1, v4

    aput v11, p1, v3

    aput v11, p1, p0

    .line 1228
    const/16 p0, 0xf

    const/high16 v3, 0x3f80

    aput v3, p1, p0

    goto/16 :goto_f7
.end method

.method private static native nativeClassInit()V
.end method

.method private registerLegacyListener(IILandroid/hardware/SensorListener;II)Z
    .registers 13
    .parameter "legacyType"
    .parameter "type"
    .parameter "listener"
    .parameter "sensors"
    .parameter "rate"

    .prologue
    .line 789
    if-nez p3, :cond_4

    .line 790
    const/4 v5, 0x0

    .line 817
    :goto_3
    return v5

    .line 792
    :cond_4
    const/4 v3, 0x0

    .line 794
    .local v3, result:Z
    and-int v5, p4, p1

    if-eqz v5, :cond_32

    .line 796
    invoke-virtual {p0, p2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v4

    .line 797
    .local v4, sensor:Landroid/hardware/Sensor;
    if-eqz v4, :cond_32

    .line 801
    const/4 v1, 0x0

    .line 802
    .local v1, legacyListener:Landroid/hardware/SensorManager$LegacyListener;
    iget-object v6, p0, Landroid/hardware/SensorManager;->mLegacyListenersMap:Ljava/util/HashMap;

    monitor-enter v6

    .line 803
    :try_start_13
    iget-object v5, p0, Landroid/hardware/SensorManager;->mLegacyListenersMap:Ljava/util/HashMap;

    invoke-virtual {v5, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Landroid/hardware/SensorManager$LegacyListener;

    move-object v1, v0

    .line 804
    if-nez v1, :cond_2a

    .line 807
    new-instance v2, Landroid/hardware/SensorManager$LegacyListener;

    invoke-direct {v2, p0, p3}, Landroid/hardware/SensorManager$LegacyListener;-><init>(Landroid/hardware/SensorManager;Landroid/hardware/SensorListener;)V
    :try_end_24
    .catchall {:try_start_13 .. :try_end_24} :catchall_34

    .line 808
    .end local v1           #legacyListener:Landroid/hardware/SensorManager$LegacyListener;
    .local v2, legacyListener:Landroid/hardware/SensorManager$LegacyListener;
    :try_start_24
    iget-object v5, p0, Landroid/hardware/SensorManager;->mLegacyListenersMap:Ljava/util/HashMap;

    invoke-virtual {v5, p3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_29
    .catchall {:try_start_24 .. :try_end_29} :catchall_37

    move-object v1, v2

    .line 810
    .end local v2           #legacyListener:Landroid/hardware/SensorManager$LegacyListener;
    .restart local v1       #legacyListener:Landroid/hardware/SensorManager$LegacyListener;
    :cond_2a
    :try_start_2a
    monitor-exit v6
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_34

    .line 812
    invoke-virtual {v1, p1}, Landroid/hardware/SensorManager$LegacyListener;->registerSensor(I)V

    .line 814
    invoke-virtual {p0, v1, v4, p5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v3

    .end local v1           #legacyListener:Landroid/hardware/SensorManager$LegacyListener;
    .end local v4           #sensor:Landroid/hardware/Sensor;
    :cond_32
    move v5, v3

    .line 817
    goto :goto_3

    .line 810
    .restart local v1       #legacyListener:Landroid/hardware/SensorManager$LegacyListener;
    .restart local v4       #sensor:Landroid/hardware/Sensor;
    :catchall_34
    move-exception v5

    :goto_35
    :try_start_35
    monitor-exit v6
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw v5

    .end local v1           #legacyListener:Landroid/hardware/SensorManager$LegacyListener;
    .restart local v2       #legacyListener:Landroid/hardware/SensorManager$LegacyListener;
    :catchall_37
    move-exception v5

    move-object v1, v2

    .end local v2           #legacyListener:Landroid/hardware/SensorManager$LegacyListener;
    .restart local v1       #legacyListener:Landroid/hardware/SensorManager$LegacyListener;
    goto :goto_35
.end method

.method public static remapCoordinateSystem([FII[F)Z
    .registers 8
    .parameter "inR"
    .parameter "X"
    .parameter "Y"
    .parameter "outR"

    .prologue
    .line 1296
    if-ne p0, p3, :cond_1a

    .line 1297
    sget-object v2, Landroid/hardware/SensorManager;->mTempMatrix:[F

    .line 1298
    .local v2, temp:[F
    monitor-enter v2

    .line 1300
    :try_start_5
    invoke-static {p0, p1, p2, v2}, Landroid/hardware/SensorManager;->remapCoordinateSystemImpl([FII[F)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 1301
    array-length v1, p3

    .line 1302
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_d
    if-ge v0, v1, :cond_16

    .line 1303
    aget v3, v2, v0

    aput v3, p3, v0

    .line 1302
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 1304
    :cond_16
    const/4 v3, 0x1

    monitor-exit v2

    .line 1308
    .end local v0           #i:I
    .end local v1           #size:I
    .end local v2           #temp:[F
    :goto_18
    return v3

    .line 1306
    .restart local v2       #temp:[F
    :cond_19
    monitor-exit v2
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_1f

    .line 1308
    .end local v2           #temp:[F
    :cond_1a
    invoke-static {p0, p1, p2, p3}, Landroid/hardware/SensorManager;->remapCoordinateSystemImpl([FII[F)Z

    move-result v3

    goto :goto_18

    .line 1306
    .restart local v2       #temp:[F
    :catchall_1f
    move-exception v3

    :try_start_20
    monitor-exit v2
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v3
.end method

.method private static remapCoordinateSystemImpl([FII[F)Z
    .registers 15
    .parameter "inR"
    .parameter "X"
    .parameter "Y"
    .parameter "outR"

    .prologue
    .line 1325
    array-length v3, p3

    .line 1326
    .local v3, length:I
    array-length v0, p0

    if-eq v0, v3, :cond_6

    .line 1327
    const/4 p0, 0x0

    .line 1369
    .end local v3           #length:I
    .end local p0
    .end local p1
    .end local p2
    :goto_5
    return p0

    .line 1328
    .restart local v3       #length:I
    .restart local p0
    .restart local p1
    .restart local p2
    :cond_6
    and-int/lit8 v0, p1, 0x7c

    if-nez v0, :cond_e

    and-int/lit8 v0, p2, 0x7c

    if-eqz v0, :cond_10

    .line 1329
    :cond_e
    const/4 p0, 0x0

    goto :goto_5

    .line 1330
    :cond_10
    and-int/lit8 v0, p1, 0x3

    if-eqz v0, :cond_18

    and-int/lit8 v0, p2, 0x3

    if-nez v0, :cond_1a

    .line 1331
    :cond_18
    const/4 p0, 0x0

    goto :goto_5

    .line 1332
    :cond_1a
    and-int/lit8 v0, p1, 0x3

    and-int/lit8 v1, p2, 0x3

    if-ne v0, v1, :cond_22

    .line 1333
    const/4 p0, 0x0

    goto :goto_5

    .line 1338
    :cond_22
    xor-int v0, p1, p2

    .line 1341
    .local v0, Z:I
    and-int/lit8 v1, p1, 0x3

    const/4 v2, 0x1

    sub-int v6, v1, v2

    .line 1342
    .local v6, x:I
    and-int/lit8 v1, p2, 0x3

    const/4 v2, 0x1

    sub-int v7, v1, v2

    .line 1343
    .local v7, y:I
    and-int/lit8 v1, v0, 0x3

    const/4 v2, 0x1

    sub-int v8, v1, v2

    .line 1346
    .local v8, z:I
    add-int/lit8 v1, v8, 0x1

    rem-int/lit8 v1, v1, 0x3

    .line 1347
    .local v1, axis_y:I
    add-int/lit8 v2, v8, 0x2

    rem-int/lit8 v2, v2, 0x3

    .line 1348
    .local v2, axis_z:I
    xor-int/2addr v1, v6

    xor-int/2addr v2, v7

    or-int/2addr v1, v2

    if-eqz v1, :cond_42

    .line 1349
    .end local v1           #axis_y:I
    .end local v2           #axis_z:I
    xor-int/lit16 v0, v0, 0x80

    .line 1351
    :cond_42
    const/16 v1, 0x80

    if-lt p1, v1, :cond_8f

    const/4 p1, 0x1

    move v2, p1

    .line 1352
    .end local p1
    .local v2, sx:Z
    :goto_48
    const/16 p1, 0x80

    if-lt p2, p1, :cond_92

    const/4 p1, 0x1

    move v4, p1

    .line 1353
    .local v4, sy:Z
    :goto_4e
    const/16 p1, 0x80

    if-lt v0, p1, :cond_95

    const/4 p1, 0x1

    move v5, p1

    .line 1356
    .local v5, sz:Z
    :goto_54
    const/16 p1, 0x10

    if-ne v3, p1, :cond_98

    const/4 p1, 0x4

    move v1, p1

    .line 1357
    .local v1, rowLength:I
    :goto_5a
    const/4 p1, 0x0

    .local p1, j:I
    move p2, p1

    .end local v0           #Z:I
    .end local p1           #j:I
    .local p2, j:I
    :goto_5c
    const/4 p1, 0x3

    if-ge p2, p1, :cond_ae

    .line 1358
    mul-int v0, p2, v1

    .line 1359
    .local v0, offset:I
    const/4 p1, 0x0

    .local p1, i:I
    :goto_62
    const/4 v9, 0x3

    if-ge p1, v9, :cond_aa

    .line 1360
    if-ne v6, p1, :cond_72

    add-int v9, v0, p1

    if-eqz v2, :cond_9b

    add-int/lit8 v10, v0, 0x0

    aget v10, p0, v10

    neg-float v10, v10

    :goto_70
    aput v10, p3, v9

    .line 1361
    :cond_72
    if-ne v7, p1, :cond_7f

    add-int v9, v0, p1

    if-eqz v4, :cond_a0

    add-int/lit8 v10, v0, 0x1

    aget v10, p0, v10

    neg-float v10, v10

    :goto_7d
    aput v10, p3, v9

    .line 1362
    :cond_7f
    if-ne v8, p1, :cond_8c

    add-int v9, v0, p1

    if-eqz v5, :cond_a5

    add-int/lit8 v10, v0, 0x2

    aget v10, p0, v10

    neg-float v10, v10

    :goto_8a
    aput v10, p3, v9

    .line 1359
    :cond_8c
    add-int/lit8 p1, p1, 0x1

    goto :goto_62

    .line 1351
    .end local v1           #rowLength:I
    .end local v2           #sx:Z
    .end local v4           #sy:Z
    .end local v5           #sz:Z
    .local v0, Z:I
    .local p1, X:I
    .local p2, Y:I
    :cond_8f
    const/4 p1, 0x0

    move v2, p1

    goto :goto_48

    .line 1352
    .end local p1           #X:I
    .restart local v2       #sx:Z
    :cond_92
    const/4 p1, 0x0

    move v4, p1

    goto :goto_4e

    .line 1353
    .restart local v4       #sy:Z
    :cond_95
    const/4 p1, 0x0

    move v5, p1

    goto :goto_54

    .line 1356
    .restart local v5       #sz:Z
    :cond_98
    const/4 p1, 0x3

    move v1, p1

    goto :goto_5a

    .line 1360
    .local v0, offset:I
    .restart local v1       #rowLength:I
    .local p1, i:I
    .local p2, j:I
    :cond_9b
    add-int/lit8 v10, v0, 0x0

    aget v10, p0, v10

    goto :goto_70

    .line 1361
    :cond_a0
    add-int/lit8 v10, v0, 0x1

    aget v10, p0, v10

    goto :goto_7d

    .line 1362
    :cond_a5
    add-int/lit8 v10, v0, 0x2

    aget v10, p0, v10

    goto :goto_8a

    .line 1357
    :cond_aa
    add-int/lit8 p1, p2, 0x1

    .end local p2           #j:I
    .local p1, j:I
    move p2, p1

    .end local p1           #j:I
    .restart local p2       #j:I
    goto :goto_5c

    .line 1365
    .end local v0           #offset:I
    :cond_ae
    const/16 p0, 0x10

    if-ne v3, p0, :cond_cf

    .line 1366
    .end local p0
    const/4 p0, 0x3

    const/4 p1, 0x7

    const/16 p2, 0xb

    const/16 v0, 0xc

    const/16 v1, 0xd

    const/16 v2, 0xe

    const/4 v3, 0x0

    aput v3, p3, v2

    .end local v1           #rowLength:I
    .end local v2           #sx:Z
    .end local v3           #length:I
    .end local p2           #j:I
    aput v3, p3, v1

    aput v3, p3, v0

    aput v3, p3, p2

    aput v3, p3, p1

    aput v3, p3, p0

    .line 1367
    const/16 p0, 0xf

    const/high16 p1, 0x3f80

    aput p1, p3, p0

    .line 1369
    :cond_cf
    const/4 p0, 0x1

    goto/16 :goto_5
.end method

.method static native sensors_data_close()I
.end method

.method static native sensors_data_init()I
.end method

.method static native sensors_data_open([Ljava/io/FileDescriptor;[I)I
.end method

.method static native sensors_data_poll([F[I[J)I
.end method

.method static native sensors_data_uninit()I
.end method

.method private static native sensors_module_get_next_sensor(Landroid/hardware/Sensor;I)I
.end method

.method private static native sensors_module_init()I
.end method

.method private unregisterLegacyListener(IILandroid/hardware/SensorListener;I)V
    .registers 14
    .parameter "legacyType"
    .parameter "type"
    .parameter "listener"
    .parameter "sensors"

    .prologue
    .line 853
    if-nez p3, :cond_3

    .line 892
    :cond_2
    :goto_2
    return-void

    .line 857
    :cond_3
    const/4 v4, 0x0

    .line 858
    .local v4, legacyListener:Landroid/hardware/SensorManager$LegacyListener;
    iget-object v7, p0, Landroid/hardware/SensorManager;->mLegacyListenersMap:Ljava/util/HashMap;

    monitor-enter v7

    .line 859
    :try_start_7
    iget-object v6, p0, Landroid/hardware/SensorManager;->mLegacyListenersMap:Ljava/util/HashMap;

    invoke-virtual {v6, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Landroid/hardware/SensorManager$LegacyListener;

    move-object v4, v0

    .line 860
    monitor-exit v7
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_54

    .line 861
    if-eqz v4, :cond_2

    .line 863
    and-int v6, p4, p1

    if-eqz v6, :cond_2

    .line 865
    invoke-virtual {p0, p2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v5

    .line 866
    .local v5, sensor:Landroid/hardware/Sensor;
    if-eqz v5, :cond_2

    .line 869
    invoke-virtual {v4, p1}, Landroid/hardware/SensorManager$LegacyListener;->unregisterSensor(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 871
    invoke-virtual {p0, v4, v5}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 874
    sget-object v6, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    monitor-enter v6

    .line 875
    const/4 v1, 0x0

    .line 876
    .local v1, found:Z
    :try_start_2b
    sget-object v7, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_31
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_44

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager$ListenerDelegate;

    .line 877
    .local v2, i:Landroid/hardware/SensorManager$ListenerDelegate;
    invoke-virtual {v2}, Landroid/hardware/SensorManager$ListenerDelegate;->getListener()Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v4, :cond_31

    .line 878
    const/4 v1, 0x1

    .line 882
    .end local v2           #i:Landroid/hardware/SensorManager$ListenerDelegate;
    :cond_44
    if-nez v1, :cond_4f

    .line 883
    iget-object v7, p0, Landroid/hardware/SensorManager;->mLegacyListenersMap:Ljava/util/HashMap;

    monitor-enter v7
    :try_end_49
    .catchall {:try_start_2b .. :try_end_49} :catchall_51

    .line 884
    :try_start_49
    iget-object v8, p0, Landroid/hardware/SensorManager;->mLegacyListenersMap:Ljava/util/HashMap;

    invoke-virtual {v8, p3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 885
    monitor-exit v7
    :try_end_4f
    .catchall {:try_start_49 .. :try_end_4f} :catchall_57

    .line 887
    :cond_4f
    :try_start_4f
    monitor-exit v6

    goto :goto_2

    .end local v3           #i$:Ljava/util/Iterator;
    :catchall_51
    move-exception v7

    monitor-exit v6
    :try_end_53
    .catchall {:try_start_4f .. :try_end_53} :catchall_51

    throw v7

    .line 860
    .end local v1           #found:Z
    .end local v5           #sensor:Landroid/hardware/Sensor;
    :catchall_54
    move-exception v6

    :try_start_55
    monitor-exit v7
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_54

    throw v6

    .line 885
    .restart local v1       #found:Z
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v5       #sensor:Landroid/hardware/Sensor;
    :catchall_57
    move-exception v8

    :try_start_58
    monitor-exit v7
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_57

    :try_start_59
    throw v8
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_51
.end method

.method private unregisterListener(Ljava/lang/Object;)V
    .registers 13
    .parameter "listener"

    .prologue
    .line 1054
    if-nez p1, :cond_3

    .line 1077
    :goto_2
    return-void

    .line 1058
    :cond_3
    :try_start_3
    sget-object v8, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    monitor-enter v8
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_6} :catch_43

    .line 1059
    :try_start_6
    sget-object v9, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 1060
    .local v7, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_d
    if-ge v2, v7, :cond_52

    .line 1061
    sget-object v9, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/SensorManager$ListenerDelegate;

    .line 1062
    .local v4, l:Landroid/hardware/SensorManager$ListenerDelegate;
    invoke-virtual {v4}, Landroid/hardware/SensorManager$ListenerDelegate;->getListener()Ljava/lang/Object;

    move-result-object v9

    if-ne v9, p1, :cond_54

    .line 1064
    invoke-virtual {v4}, Landroid/hardware/SensorManager$ListenerDelegate;->getSensors()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_25
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/Sensor;

    .line 1065
    .local v6, sensor:Landroid/hardware/Sensor;
    invoke-virtual {v6}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v5

    .line 1066
    .local v5, name:Ljava/lang/String;
    invoke-virtual {v6}, Landroid/hardware/Sensor;->getHandle()I

    move-result v1

    .line 1067
    .local v1, handle:I
    iget-object v9, p0, Landroid/hardware/SensorManager;->mSensorService:Landroid/hardware/ISensorService;

    const/4 v10, -0x1

    invoke-interface {v9, v4, v5, v1, v10}, Landroid/hardware/ISensorService;->enableSensor(Landroid/os/IBinder;Ljava/lang/String;II)Z

    goto :goto_25

    .line 1073
    .end local v1           #handle:I
    .end local v2           #i:I
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #l:Landroid/hardware/SensorManager$ListenerDelegate;
    .end local v5           #name:Ljava/lang/String;
    .end local v6           #sensor:Landroid/hardware/Sensor;
    .end local v7           #size:I
    :catchall_40
    move-exception v9

    monitor-exit v8
    :try_end_42
    .catchall {:try_start_6 .. :try_end_42} :catchall_40

    :try_start_42
    throw v9
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_43} :catch_43

    .line 1074
    :catch_43
    move-exception v8

    move-object v0, v8

    .line 1075
    .local v0, e:Landroid/os/RemoteException;
    const-string v8, "SensorManager"

    const-string v9, "RemoteException in unregisterListener: "

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1069
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v2       #i:I
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v4       #l:Landroid/hardware/SensorManager$ListenerDelegate;
    .restart local v7       #size:I
    :cond_4d
    :try_start_4d
    sget-object v9, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1073
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #l:Landroid/hardware/SensorManager$ListenerDelegate;
    :cond_52
    monitor-exit v8
    :try_end_53
    .catchall {:try_start_4d .. :try_end_53} :catchall_40

    goto :goto_2

    .line 1060
    .restart local v4       #l:Landroid/hardware/SensorManager$ListenerDelegate;
    :cond_54
    add-int/lit8 v2, v2, 0x1

    goto :goto_d
.end method

.method private unregisterListener(Ljava/lang/Object;Landroid/hardware/Sensor;)V
    .registers 12
    .parameter "listener"
    .parameter "sensor"

    .prologue
    .line 1026
    if-eqz p1, :cond_4

    if-nez p2, :cond_5

    .line 1051
    :cond_4
    :goto_4
    return-void

    .line 1030
    :cond_5
    :try_start_5
    sget-object v6, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    monitor-enter v6
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_3d

    .line 1031
    :try_start_8
    sget-object v7, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1032
    .local v5, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_f
    if-ge v2, v5, :cond_38

    .line 1033
    sget-object v7, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/SensorManager$ListenerDelegate;

    .line 1034
    .local v3, l:Landroid/hardware/SensorManager$ListenerDelegate;
    invoke-virtual {v3}, Landroid/hardware/SensorManager$ListenerDelegate;->getListener()Ljava/lang/Object;

    move-result-object v7

    if-ne v7, p1, :cond_47

    .line 1036
    invoke-virtual {p2}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1037
    .local v4, name:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/hardware/Sensor;->getHandle()I

    move-result v1

    .line 1038
    .local v1, handle:I
    iget-object v7, p0, Landroid/hardware/SensorManager;->mSensorService:Landroid/hardware/ISensorService;

    const/4 v8, -0x1

    invoke-interface {v7, v3, v4, v1, v8}, Landroid/hardware/ISensorService;->enableSensor(Landroid/os/IBinder;Ljava/lang/String;II)Z

    .line 1041
    invoke-virtual {v3, p2}, Landroid/hardware/SensorManager$ListenerDelegate;->removeSensor(Landroid/hardware/Sensor;)I

    move-result v7

    if-nez v7, :cond_38

    .line 1042
    sget-object v7, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1047
    .end local v1           #handle:I
    .end local v3           #l:Landroid/hardware/SensorManager$ListenerDelegate;
    .end local v4           #name:Ljava/lang/String;
    :cond_38
    monitor-exit v6

    goto :goto_4

    .end local v2           #i:I
    .end local v5           #size:I
    :catchall_3a
    move-exception v7

    monitor-exit v6
    :try_end_3c
    .catchall {:try_start_8 .. :try_end_3c} :catchall_3a

    :try_start_3c
    throw v7
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_3d} :catch_3d

    .line 1048
    :catch_3d
    move-exception v6

    move-object v0, v6

    .line 1049
    .local v0, e:Landroid/os/RemoteException;
    const-string v6, "SensorManager"

    const-string v7, "RemoteException in unregisterListener: "

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 1032
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v2       #i:I
    .restart local v3       #l:Landroid/hardware/SensorManager$ListenerDelegate;
    .restart local v5       #size:I
    :cond_47
    add-int/lit8 v2, v2, 0x1

    goto :goto_f
.end method


# virtual methods
.method public getDefaultSensor(I)Landroid/hardware/Sensor;
    .registers 4
    .parameter "type"

    .prologue
    .line 724
    invoke-virtual {p0, p1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    .line 725
    .local v0, l:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x0

    .end local p0
    :goto_b
    return-object v1

    .restart local p0
    :cond_c
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/hardware/Sensor;

    move-object v1, p0

    goto :goto_b
.end method

.method public getRecentProximityValue()F
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 569
    const-string v0, "SensorManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRecentProximityValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/hardware/SensorManager;->recent_value:[F

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    sget-object v0, Landroid/hardware/SensorManager;->recent_value:[F

    aget v0, v0, v3

    return v0
.end method

.method public getSensorList(I)Ljava/util/List;
    .registers 7
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 692
    sget-object v0, Landroid/hardware/SensorManager;->sFullSensorsList:Ljava/util/ArrayList;

    .line 693
    .local v0, fullList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/hardware/Sensor;>;"
    monitor-enter v0

    .line 694
    :try_start_3
    sget-object v4, Landroid/hardware/SensorManager;->sSensorListByType:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 695
    .local v3, list:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Sensor;>;"
    if-nez v3, :cond_1a

    .line 696
    const/4 v4, -0x1

    if-ne p1, v4, :cond_1c

    .line 697
    move-object v3, v0

    .line 705
    :cond_11
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 706
    sget-object v4, Landroid/hardware/SensorManager;->sSensorListByType:Landroid/util/SparseArray;

    invoke-virtual {v4, p1, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 708
    :cond_1a
    monitor-exit v0

    .line 709
    return-object v3

    .line 699
    :cond_1c
    new-instance v3, Ljava/util/ArrayList;

    .end local v3           #list:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 700
    .restart local v3       #list:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_25
    :goto_25
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Sensor;

    .line 701
    .local v1, i:Landroid/hardware/Sensor;
    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v4

    if-ne v4, p1, :cond_25

    .line 702
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_25

    .line 708
    .end local v1           #i:Landroid/hardware/Sensor;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #list:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Sensor;>;"
    :catchall_3b
    move-exception v4

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3 .. :try_end_3d} :catchall_3b

    throw v4
.end method

.method public getSensors()I
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 654
    const/4 v3, 0x0

    .line 655
    .local v3, result:I
    sget-object v0, Landroid/hardware/SensorManager;->sFullSensorsList:Ljava/util/ArrayList;

    .line 656
    .local v0, fullList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/hardware/Sensor;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_27

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Sensor;

    .line 657
    .local v1, i:Landroid/hardware/Sensor;
    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v4

    packed-switch v4, :pswitch_data_28

    :pswitch_1a
    goto :goto_7

    .line 659
    :pswitch_1b
    or-int/lit8 v3, v3, 0x2

    .line 660
    goto :goto_7

    .line 662
    :pswitch_1e
    or-int/lit8 v3, v3, 0x8

    .line 663
    goto :goto_7

    .line 665
    :pswitch_21
    or-int/lit16 v3, v3, 0x81

    .line 667
    goto :goto_7

    .line 671
    :pswitch_24
    or-int/lit8 v3, v3, 0x20

    goto :goto_7

    .line 677
    .end local v1           #i:Landroid/hardware/Sensor;
    :cond_27
    return v3

    .line 657
    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_1e
        :pswitch_21
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_24
    .end packed-switch
.end method

.method public onRotationChanged(I)V
    .registers 4
    .parameter "rotation"

    .prologue
    .line 1415
    sget-object v0, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1416
    :try_start_3
    sput p1, Landroid/hardware/SensorManager;->sRotation:I

    .line 1417
    monitor-exit v0

    .line 1418
    return-void

    .line 1417
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    .registers 5
    .parameter "listener"
    .parameter "sensor"
    .parameter "rate"

    .prologue
    .line 945
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    move-result v0

    return v0
.end method

.method public registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z
    .registers 22
    .parameter "listener"
    .parameter "sensor"
    .parameter "rate"
    .parameter "handler"

    .prologue
    .line 967
    if-eqz p1, :cond_4

    if-nez p2, :cond_6

    .line 968
    :cond_4
    const/4 v14, 0x0

    .line 1022
    :goto_5
    return v14

    .line 971
    :cond_6
    const/4 v5, -0x1

    .line 972
    .local v5, delay:I
    packed-switch p3, :pswitch_data_a0

    .line 986
    const/4 v14, 0x0

    goto :goto_5

    .line 974
    :pswitch_c
    const/4 v5, 0x0

    .line 990
    :goto_d
    :try_start_d
    sget-object v14, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    monitor-enter v14
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_10} :catch_90

    .line 991
    const/4 v10, 0x0

    .line 992
    .local v10, l:Landroid/hardware/SensorManager$ListenerDelegate;
    :try_start_11
    sget-object v15, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_17
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_9e

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/SensorManager$ListenerDelegate;

    .line 993
    .local v8, i:Landroid/hardware/SensorManager$ListenerDelegate;
    invoke-virtual {v8}, Landroid/hardware/SensorManager$ListenerDelegate;->getListener()Ljava/lang/Object;
    :try_end_26
    .catchall {:try_start_11 .. :try_end_26} :catchall_8d

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_17

    .line 994
    move-object v10, v8

    move-object v11, v10

    .line 999
    .end local v8           #i:Landroid/hardware/SensorManager$ListenerDelegate;
    .end local v10           #l:Landroid/hardware/SensorManager$ListenerDelegate;
    .local v11, l:Landroid/hardware/SensorManager$ListenerDelegate;
    :goto_2e
    :try_start_2e
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v12

    .line 1000
    .local v12, name:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/Sensor;->getHandle()I

    move-result v7

    .line 1001
    .local v7, handle:I
    if-nez v11, :cond_7a

    .line 1002
    new-instance v10, Landroid/hardware/SensorManager$ListenerDelegate;

    move-object v0, v10

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/hardware/SensorManager$ListenerDelegate;-><init>(Landroid/hardware/SensorManager;Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;Landroid/os/Handler;)V
    :try_end_46
    .catchall {:try_start_2e .. :try_end_46} :catchall_9b

    .line 1003
    .end local v11           #l:Landroid/hardware/SensorManager$ListenerDelegate;
    .restart local v10       #l:Landroid/hardware/SensorManager$ListenerDelegate;
    :try_start_46
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/SensorManager;->mSensorService:Landroid/hardware/ISensorService;

    move-object v15, v0

    invoke-interface {v15, v10, v12, v7, v5}, Landroid/hardware/ISensorService;->enableSensor(Landroid/os/IBinder;Ljava/lang/String;II)Z

    move-result v13

    .line 1004
    .local v13, result:Z
    if-eqz v13, :cond_5b

    .line 1005
    sget-object v15, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1006
    sget-object v15, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/lang/Object;->notify()V

    .line 1008
    :cond_5b
    sget-object v15, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_6e

    .line 1009
    sget-object v15, Landroid/hardware/SensorManager;->sSensorThread:Landroid/hardware/SensorManager$SensorThread;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/SensorManager;->mSensorService:Landroid/hardware/ISensorService;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/hardware/SensorManager$SensorThread;->startLocked(Landroid/hardware/ISensorService;)V

    .line 1017
    :cond_6e
    :goto_6e
    monitor-exit v14
    :try_end_6f
    .catchall {:try_start_46 .. :try_end_6f} :catchall_8d

    .end local v7           #handle:I
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v10           #l:Landroid/hardware/SensorManager$ListenerDelegate;
    .end local v12           #name:Ljava/lang/String;
    :goto_6f
    move v14, v13

    .line 1022
    goto :goto_5

    .line 977
    .end local v13           #result:Z
    :pswitch_71
    const/16 v5, 0x14

    .line 978
    goto :goto_d

    .line 980
    :pswitch_74
    const/16 v5, 0x3c

    .line 981
    goto :goto_d

    .line 983
    :pswitch_77
    const/16 v5, 0xc8

    .line 984
    goto :goto_d

    .line 1012
    .restart local v7       #handle:I
    .restart local v9       #i$:Ljava/util/Iterator;
    .restart local v11       #l:Landroid/hardware/SensorManager$ListenerDelegate;
    .restart local v12       #name:Ljava/lang/String;
    :cond_7a
    :try_start_7a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/SensorManager;->mSensorService:Landroid/hardware/ISensorService;

    move-object v15, v0

    invoke-interface {v15, v11, v12, v7, v5}, Landroid/hardware/ISensorService;->enableSensor(Landroid/os/IBinder;Ljava/lang/String;II)Z

    move-result v13

    .line 1013
    .restart local v13       #result:Z
    if-eqz v13, :cond_8b

    .line 1014
    move-object v0, v11

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager$ListenerDelegate;->addSensor(Landroid/hardware/Sensor;)I
    :try_end_8b
    .catchall {:try_start_7a .. :try_end_8b} :catchall_9b

    :cond_8b
    move-object v10, v11

    .end local v11           #l:Landroid/hardware/SensorManager$ListenerDelegate;
    .restart local v10       #l:Landroid/hardware/SensorManager$ListenerDelegate;
    goto :goto_6e

    .line 1017
    .end local v7           #handle:I
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v12           #name:Ljava/lang/String;
    .end local v13           #result:Z
    :catchall_8d
    move-exception v15

    :goto_8e
    :try_start_8e
    monitor-exit v14
    :try_end_8f
    .catchall {:try_start_8e .. :try_end_8f} :catchall_8d

    :try_start_8f
    throw v15
    :try_end_90
    .catch Landroid/os/RemoteException; {:try_start_8f .. :try_end_90} :catch_90

    .line 1018
    .end local v10           #l:Landroid/hardware/SensorManager$ListenerDelegate;
    :catch_90
    move-exception v14

    move-object v6, v14

    .line 1019
    .local v6, e:Landroid/os/RemoteException;
    const-string v14, "SensorManager"

    const-string v15, "RemoteException in registerListener: "

    invoke-static {v14, v15, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1020
    const/4 v13, 0x0

    .restart local v13       #result:Z
    goto :goto_6f

    .line 1017
    .end local v6           #e:Landroid/os/RemoteException;
    .end local v13           #result:Z
    .restart local v9       #i$:Ljava/util/Iterator;
    .restart local v11       #l:Landroid/hardware/SensorManager$ListenerDelegate;
    :catchall_9b
    move-exception v15

    move-object v10, v11

    .end local v11           #l:Landroid/hardware/SensorManager$ListenerDelegate;
    .restart local v10       #l:Landroid/hardware/SensorManager$ListenerDelegate;
    goto :goto_8e

    :cond_9e
    move-object v11, v10

    .end local v10           #l:Landroid/hardware/SensorManager$ListenerDelegate;
    .restart local v11       #l:Landroid/hardware/SensorManager$ListenerDelegate;
    goto :goto_2e

    .line 972
    :pswitch_data_a0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_71
        :pswitch_74
        :pswitch_77
    .end packed-switch
.end method

.method public registerListener(Landroid/hardware/SensorListener;I)Z
    .registers 4
    .parameter "listener"
    .parameter "sensors"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 742
    const/4 v0, 0x3

    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorListener;II)Z

    move-result v0

    return v0
.end method

.method public registerListener(Landroid/hardware/SensorListener;II)Z
    .registers 11
    .parameter "listener"
    .parameter "sensors"
    .parameter "rate"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 762
    if-nez p1, :cond_4

    .line 763
    const/4 v0, 0x0

    .line 782
    :goto_3
    return v0

    .line 765
    :cond_4
    const/4 v6, 0x0

    .line 766
    .local v6, result:Z
    const/4 v1, 0x2

    const/4 v2, 0x1

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/hardware/SensorManager;->registerLegacyListener(IILandroid/hardware/SensorListener;II)Z

    move-result v0

    if-nez v0, :cond_13

    if-eqz v6, :cond_6b

    :cond_13
    const/4 v0, 0x1

    move v6, v0

    .line 768
    :goto_15
    const/16 v1, 0x8

    const/4 v2, 0x2

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/hardware/SensorManager;->registerLegacyListener(IILandroid/hardware/SensorListener;II)Z

    move-result v0

    if-nez v0, :cond_24

    if-eqz v6, :cond_6e

    :cond_24
    const/4 v0, 0x1

    move v6, v0

    .line 770
    :goto_26
    const/16 v1, 0x80

    const/4 v2, 0x3

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/hardware/SensorManager;->registerLegacyListener(IILandroid/hardware/SensorListener;II)Z

    move-result v0

    if-nez v0, :cond_35

    if-eqz v6, :cond_71

    :cond_35
    const/4 v0, 0x1

    move v6, v0

    .line 772
    :goto_37
    const/4 v1, 0x1

    const/4 v2, 0x3

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/hardware/SensorManager;->registerLegacyListener(IILandroid/hardware/SensorListener;II)Z

    move-result v0

    if-nez v0, :cond_45

    if-eqz v6, :cond_74

    :cond_45
    const/4 v0, 0x1

    move v6, v0

    .line 774
    :goto_47
    const/4 v1, 0x4

    const/4 v2, 0x7

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/hardware/SensorManager;->registerLegacyListener(IILandroid/hardware/SensorListener;II)Z

    move-result v0

    if-nez v0, :cond_55

    if-eqz v6, :cond_77

    :cond_55
    const/4 v0, 0x1

    move v6, v0

    .line 778
    :goto_57
    const/16 v1, 0x20

    const/16 v2, 0x8

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/hardware/SensorManager;->registerLegacyListener(IILandroid/hardware/SensorListener;II)Z

    move-result v0

    if-nez v0, :cond_67

    if-eqz v6, :cond_7a

    :cond_67
    const/4 v0, 0x1

    move v6, v0

    :goto_69
    move v0, v6

    .line 782
    goto :goto_3

    .line 766
    :cond_6b
    const/4 v0, 0x0

    move v6, v0

    goto :goto_15

    .line 768
    :cond_6e
    const/4 v0, 0x0

    move v6, v0

    goto :goto_26

    .line 770
    :cond_71
    const/4 v0, 0x0

    move v6, v0

    goto :goto_37

    .line 772
    :cond_74
    const/4 v0, 0x0

    move v6, v0

    goto :goto_47

    .line 774
    :cond_77
    const/4 v0, 0x0

    move v6, v0

    goto :goto_57

    .line 778
    :cond_7a
    const/4 v0, 0x0

    move v6, v0

    goto :goto_69
.end method

.method public unregisterListener(Landroid/hardware/SensorEventListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 925
    invoke-direct {p0, p1}, Landroid/hardware/SensorManager;->unregisterListener(Ljava/lang/Object;)V

    .line 926
    return-void
.end method

.method public unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V
    .registers 3
    .parameter "listener"
    .parameter "sensor"

    .prologue
    .line 915
    invoke-direct {p0, p1, p2}, Landroid/hardware/SensorManager;->unregisterListener(Ljava/lang/Object;Landroid/hardware/Sensor;)V

    .line 916
    return-void
.end method

.method public unregisterListener(Landroid/hardware/SensorListener;)V
    .registers 3
    .parameter "listener"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 904
    const/16 v0, 0xff

    invoke-virtual {p0, p1, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorListener;I)V

    .line 905
    return-void
.end method

.method public unregisterListener(Landroid/hardware/SensorListener;I)V
    .registers 7
    .parameter "listener"
    .parameter "sensors"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x3

    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 831
    invoke-direct {p0, v0, v1, p1, p2}, Landroid/hardware/SensorManager;->unregisterLegacyListener(IILandroid/hardware/SensorListener;I)V

    .line 833
    invoke-direct {p0, v3, v0, p1, p2}, Landroid/hardware/SensorManager;->unregisterLegacyListener(IILandroid/hardware/SensorListener;I)V

    .line 835
    const/16 v0, 0x80

    invoke-direct {p0, v0, v2, p1, p2}, Landroid/hardware/SensorManager;->unregisterLegacyListener(IILandroid/hardware/SensorListener;I)V

    .line 837
    invoke-direct {p0, v1, v2, p1, p2}, Landroid/hardware/SensorManager;->unregisterLegacyListener(IILandroid/hardware/SensorListener;I)V

    .line 839
    const/4 v0, 0x4

    const/4 v1, 0x7

    invoke-direct {p0, v0, v1, p1, p2}, Landroid/hardware/SensorManager;->unregisterLegacyListener(IILandroid/hardware/SensorListener;I)V

    .line 843
    const/16 v0, 0x20

    invoke-direct {p0, v0, v3, p1, p2}, Landroid/hardware/SensorManager;->unregisterLegacyListener(IILandroid/hardware/SensorListener;I)V

    .line 847
    return-void
.end method
