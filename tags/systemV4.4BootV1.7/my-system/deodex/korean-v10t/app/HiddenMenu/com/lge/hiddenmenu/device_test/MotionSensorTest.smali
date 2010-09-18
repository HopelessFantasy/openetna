.class public Lcom/lge/hiddenmenu/device_test/MotionSensorTest;
.super Landroid/app/Activity;
.source "MotionSensorTest.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/hiddenmenu/device_test/MotionSensorTest$SampleView;,
        Lcom/lge/hiddenmenu/device_test/MotionSensorTest$RefleshHandler;
    }
.end annotation


# static fields
.field private static final DEGREE_EAST:I = 0x5a

.field private static final DEGREE_NORTH:I = 0x0

.field private static final DEGREE_SOUTH:I = 0xb4

.field private static final DEGREE_WEST:I = 0x10e

.field private static final PIVOT:I = 0x14

.field private static final PIVOT_LOWER:I = -0xa

.field private static final PIVOT_UPPER:I = 0x41

.field public static final ROTATION_EAST:I = 0x3

.field public static final ROTATION_NORTH:I = 0x0

.field public static final ROTATION_SOUTH:I = 0x2

.field public static final ROTATION_WEST:I = 0x1

.field private static final SCREEN_UPDATE_PERIOD:J = 0xfaL


# instance fields
.field private final AK_MESSAGE_ID:I

.field private accuracyOfA:I

.field private accuracyOfM:I

.field private accuracyOfO:I

.field private availableSensorNames:Ljava/lang/String;

.field bAutoAllTest:Ljava/lang/Integer;

.field private canvas:Landroid/graphics/Canvas;

.field private dataAcc:[F

.field private dataMag:[F

.field private dataOri:[F

.field private mBackButton:Landroid/widget/Button;

.field private mOrientation:I

.field private mView:Lcom/lge/hiddenmenu/device_test/MotionSensorTest$SampleView;

.field private redrawHandler:Lcom/lge/hiddenmenu/device_test/MotionSensorTest$RefleshHandler;

.field private sMan:Landroid/hardware/SensorManager;

.field private textview:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x6

    .line 66
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 112
    new-array v0, v1, [F

    fill-array-data v0, :array_28

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/MotionSensorTest;->dataAcc:[F

    .line 115
    new-array v0, v1, [F

    fill-array-data v0, :array_38

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/MotionSensorTest;->dataOri:[F

    .line 118
    new-array v0, v1, [F

    fill-array-data v0, :array_48

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/MotionSensorTest;->dataMag:[F

    .line 127
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/MotionSensorTest;->canvas:Landroid/graphics/Canvas;

    .line 137
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/hiddenmenu/device_test/MotionSensorTest;->AK_MESSAGE_ID:I

    .line 140
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/MotionSensorTest;->availableSensorNames:Ljava/lang/String;

    .line 450
    return-void

    .line 112
    :array_28
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 115
    :array_38
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 118
    :array_48
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$000(Lcom/lge/hiddenmenu/device_test/MotionSensorTest;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/lge/hiddenmenu/device_test/MotionSensorTest;->updateUI()V

    return-void
.end method

.method static synthetic access$100(Lcom/lge/hiddenmenu/device_test/MotionSensorTest;)[F
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/MotionSensorTest;->dataAcc:[F

    return-object v0
.end method

.method static synthetic access$200(Lcom/lge/hiddenmenu/device_test/MotionSensorTest;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Lcom/lge/hiddenmenu/device_test/MotionSensorTest;->mOrientation:I

    return v0
.end method

.method private getMessage()Ljava/lang/String;
    .registers 15

    .prologue
    .line 228
    const/4 v6, 0x0

    .line 229
    .local v6, x:I
    const/4 v7, 0x1

    .line 230
    .local v7, y:I
    const/4 v8, 0x2

    .line 231
    .local v8, z:I
    iget-object v9, p0, Lcom/lge/hiddenmenu/device_test/MotionSensorTest;->dataAcc:[F

    aget v9, v9, v6

    iget-object v10, p0, Lcom/lge/hiddenmenu/device_test/MotionSensorTest;->dataAcc:[F

    aget v10, v10, v6

    mul-float/2addr v9, v10

    iget-object v10, p0, Lcom/lge/hiddenmenu/device_test/MotionSensorTest;->dataAcc:[F

    aget v10, v10, v7

    iget-object v11, p0, Lcom/lge/hiddenmenu/device_test/MotionSensorTest;->dataAcc:[F

    aget v11, v11, v7

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    iget-object v10, p0, Lcom/lge/hiddenmenu/device_test/MotionSensorTest;->dataAcc:[F

    aget v10, v10, v8

    iget-object v11, p0, Lcom/lge/hiddenmenu/device_test/MotionSensorTest;->dataAcc:[F

    aget v11, v11, v8

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 233
    .local v0, absAcc:D
    iget-object v9, p0, Lcom/lge/hiddenmenu/device_test/MotionSensorTest;->dataMag:[F

    aget v9, v9, v6

    iget-object v10, p0, Lcom/lge/hiddenmenu/device_test/MotionSensorTest;->dataMag:[F

    aget v10, v10, v6

    mul-float/2addr v9, v10

    iget-object v10, p0, Lcom/lge/hiddenmenu/device_test/MotionSensorTest;->dataMag:[F

    aget v10, v10, v7

    iget-object v11, p0, Lcom/lge/hiddenmenu/device_test/MotionSensorTest;->dataMag:[F

    aget v11, v11, v7

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    iget-object v10, p0, Lcom/lge/hiddenmenu/device_test/MotionSensorTest;->dataMag:[F

    aget v10, v10, v8

    iget-object v11, p0, Lcom/lge/hiddenmenu/device_test/MotionSensorTest;->dataMag:[F

    aget v11, v11, v8

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 236
    .local v2, absMag:D
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Date;->toGMTString()Ljava/lang/String;

    move-result-object v4

    .line 238
    .local v4, now:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "Available Sensor(s) : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/lge/hiddenmenu/device_test/MotionSensorTest;->availableSensorNames:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "Accuracy :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "  Orientation : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/MotionSensorTest;->accuracyOfO:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "  Accel : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/MotionSensorTest;->accuracyOfA:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "  Magnet : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/MotionSensorTest;->accuracyOfM:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "Data : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "  Accel [m/s^2]: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "    x="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "%2.2f"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/lge/hiddenmenu/device_test/MotionSensorTest;->dataAcc:[F

    aget v13, v13, v6

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", y="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "%2.2f"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/lge/hiddenmenu/device_test/MotionSensorTest;->dataAcc:[F

    aget v13, v13, v7

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", z="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "%2.2f"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/lge/hiddenmenu/device_test/MotionSensorTest;->dataAcc:[F

    aget v13, v13, v8

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", |a|="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "%2.2f"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "  Magnet [uT]: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "    x="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "%2.1f"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/lge/hiddenmenu/device_test/MotionSensorTest;->dataMag:[F

    aget v13, v13, v6

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", y="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "%2.1f"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/lge/hiddenmenu/device_test/MotionSensorTest;->dataMag:[F

    aget v13, v13, v7

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", z="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "%2.1f"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/lge/hiddenmenu/device_test/MotionSensorTest;->dataMag:[F

    aget v13, v13, v8

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", |M|="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "%2.2f"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "  Orientation [deg]: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "    Azimuth="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/lge/hiddenmenu/device_test/MotionSensorTest;->dataOri:[F

    const/4 v11, 0x0

    aget v10, v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "    Pitch="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/lge/hiddenmenu/device_test/MotionSensorTest;->dataOri:[F

    const/4 v11, 0x1

    aget v10, v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "    Roll="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/lge/hiddenmenu/device_test/MotionSensorTest;->dataOri:[F

    const/4 v11, 0x2

    aget v10, v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 256
    .local v5, s:Ljava/lang/String;
    return-object v5
.end method

.method private updateUI()V
    .registers 4

    .prologue
    .line 167
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/MotionSensorTest;->redrawHandler:Lcom/lge/hiddenmenu/device_test/MotionSensorTest$RefleshHandler;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Lcom/lge/hiddenmenu/device_test/MotionSensorTest$RefleshHandler;->sleep(J)V

    .line 169
    const-string v0, "TestCase"

    const-string v1, "Error: Could not nullify field!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/MotionSensorTest;->mView:Lcom/lge/hiddenmenu/device_test/MotionSensorTest$SampleView;

    if-eqz v0, :cond_17

    .line 172
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/MotionSensorTest;->mView:Lcom/lge/hiddenmenu/device_test/MotionSensorTest$SampleView;

    invoke-virtual {v0}, Lcom/lge/hiddenmenu/device_test/MotionSensorTest$SampleView;->invalidate()V

    .line 176
    :cond_17
    return-void
.end method


# virtual methods
.method protected getOrientation([F)I
    .registers 16
    .parameter "values"

    .prologue
    .line 393
    move-object v8, p1

    .line 394
    .local v8, tem_values:[F
    const/4 v10, 0x0

    aget v1, v8, v10

    .line 395
    .local v1, X:F
    const/4 v10, 0x1

    aget v2, v8, v10

    .line 396
    .local v2, Y:F
    const/4 v10, 0x2

    aget v3, v8, v10

    .line 397
    .local v3, Z:F
    const v0, 0x42652ee1

    .line 398
    .local v0, OneEightyOverPi:F
    mul-float v10, v1, v1

    mul-float v11, v2, v2

    add-float/2addr v10, v11

    mul-float v11, v3, v3

    add-float/2addr v10, v11

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-float v5, v10

    .line 399
    .local v5, gravity:F
    div-float v10, v3, v5

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->asin(D)D

    move-result-wide v10

    double-to-float v10, v10

    mul-float v9, v10, v0

    .line 401
    .local v9, zyangle:F
    const/4 v7, -0x1

    .line 403
    .local v7, rotation:I
    const/high16 v10, 0x4282

    cmpg-float v10, v9, v10

    if-gtz v10, :cond_76

    const/high16 v10, -0x3ee0

    cmpl-float v10, v9, v10

    if-ltz v10, :cond_76

    .line 406
    float-to-double v10, v2

    neg-float v12, v1

    float-to-double v12, v12

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v10

    double-to-float v10, v10

    mul-float v4, v10, v0

    .line 407
    .local v4, angle:F
    const/16 v10, 0x5a

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v11

    sub-int v6, v10, v11

    .line 410
    .local v6, orientation:I
    :goto_44
    const/16 v10, 0x168

    if-lt v6, v10, :cond_4b

    .line 411
    add-int/lit16 v6, v6, -0x168

    goto :goto_44

    .line 414
    :cond_4b
    :goto_4b
    if-gez v6, :cond_50

    .line 415
    add-int/lit16 v6, v6, 0x168

    goto :goto_4b

    .line 418
    :cond_50
    if-ltz v6, :cond_58

    const/16 v10, 0xf

    if-gt v6, v10, :cond_58

    .line 419
    const/4 v10, 0x0

    .line 432
    .end local v4           #angle:F
    .end local v6           #orientation:I
    :goto_57
    return v10

    .line 420
    .restart local v4       #angle:F
    .restart local v6       #orientation:I
    :cond_58
    const/16 v10, 0xff

    if-lt v6, v10, :cond_62

    const/16 v10, 0x11d

    if-gt v6, v10, :cond_62

    .line 422
    const/4 v10, 0x1

    goto :goto_57

    .line 423
    :cond_62
    const/16 v10, 0xa5

    if-lt v6, v10, :cond_6c

    const/16 v10, 0xc3

    if-gt v6, v10, :cond_6c

    .line 425
    const/4 v10, 0x2

    goto :goto_57

    .line 426
    :cond_6c
    const/16 v10, 0x4b

    if-lt v6, v10, :cond_76

    const/16 v10, 0x69

    if-gt v6, v10, :cond_76

    .line 428
    const/4 v10, 0x3

    goto :goto_57

    .line 432
    .end local v4           #angle:F
    .end local v6           #orientation:I
    :cond_76
    const/4 v10, -0x1

    goto :goto_57
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 370
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, -0x1

    const/4 v5, -0x2

    const/4 v4, 0x5

    .line 181
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 183
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 184
    .local v2, mlinearLayout:Landroid/widget/LinearLayout;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 185
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 186
    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 188
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 191
    .local v0, lp:Landroid/widget/LinearLayout$LayoutParams;
    new-instance v3, Landroid/widget/Button;

    invoke-direct {v3, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/lge/hiddenmenu/device_test/MotionSensorTest;->mBackButton:Landroid/widget/Button;

    .line 192
    iget-object v3, p0, Lcom/lge/hiddenmenu/device_test/MotionSensorTest;->mBackButton:Landroid/widget/Button;

    const-string v4, "EXIT"

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 194
    iget-object v3, p0, Lcom/lge/hiddenmenu/device_test/MotionSensorTest;->mBackButton:Landroid/widget/Button;

    invoke-virtual {v2, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 195
    iget-object v3, p0, Lcom/lge/hiddenmenu/device_test/MotionSensorTest;->mBackButton:Landroid/widget/Button;

    new-instance v4, Lcom/lge/hiddenmenu/device_test/MotionSensorTest$1;

    invoke-direct {v4, p0}, Lcom/lge/hiddenmenu/device_test/MotionSensorTest$1;-><init>(Lcom/lge/hiddenmenu/device_test/MotionSensorTest;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 204
    .local v1, lp2:Landroid/widget/LinearLayout$LayoutParams;
    new-instance v3, Lcom/lge/hiddenmenu/device_test/MotionSensorTest$SampleView;

    invoke-direct {v3, p0, p0}, Lcom/lge/hiddenmenu/device_test/MotionSensorTest$SampleView;-><init>(Lcom/lge/hiddenmenu/device_test/MotionSensorTest;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/lge/hiddenmenu/device_test/MotionSensorTest;->mView:Lcom/lge/hiddenmenu/device_test/MotionSensorTest$SampleView;

    .line 205
    iget-object v3, p0, Lcom/lge/hiddenmenu/device_test/MotionSensorTest;->mView:Lcom/lge/hiddenmenu/device_test/MotionSensorTest$SampleView;

    invoke-virtual {v2, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 206
    invoke-virtual {p0, v2}, Lcom/lge/hiddenmenu/device_test/MotionSensorTest;->setContentView(Landroid/view/View;)V

    .line 216
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/hiddenmenu/device_test/MotionSensorTest;->bAutoAllTest:Ljava/lang/Integer;

    .line 218
    iput v6, p0, Lcom/lge/hiddenmenu/device_test/MotionSensorTest;->mOrientation:I

    .line 220
    const-string v3, "sensor"

    invoke-virtual {p0, v3}, Lcom/lge/hiddenmenu/device_test/MotionSensorTest;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/SensorManager;

    iput-object v3, p0, Lcom/lge/hiddenmenu/device_test/MotionSensorTest;->sMan:Landroid/hardware/SensorManager;

    .line 221
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 13
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v9, 0x1

    .line 310
    sparse-switch p1, :sswitch_data_76

    .line 351
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v7

    :goto_8
    return v7

    .line 313
    :sswitch_9
    iget-object v7, p0, Lcom/lge/hiddenmenu/device_test/MotionSensorTest;->bAutoAllTest:Ljava/lang/Integer;

    if-eqz v7, :cond_20

    iget-object v7, p0, Lcom/lge/hiddenmenu/device_test/MotionSensorTest;->bAutoAllTest:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v9, :cond_20

    .line 315
    const-string v7, "Back Key doesn\'t work in Auto All Test"

    invoke-static {p0, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 318
    .local v4, mToast1:Landroid/widget/Toast;
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .end local v4           #mToast1:Landroid/widget/Toast;
    :goto_1e
    move v7, v9

    .line 323
    goto :goto_8

    .line 320
    :cond_20
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/MotionSensorTest;->finish()V

    goto :goto_1e

    .line 327
    :sswitch_24
    iget-object v7, p0, Lcom/lge/hiddenmenu/device_test/MotionSensorTest;->bAutoAllTest:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v9, :cond_4

    .line 328
    const-string v5, "com.lge.hiddenmenu"

    .line 329
    .local v5, packageName:Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 330
    .local v3, intent:Landroid/content/Intent;
    const/4 v2, 0x0

    .line 331
    .local v2, className:Ljava/lang/String;
    const/4 v6, 0x0

    .line 332
    .local v6, packageName2:Ljava/lang/String;
    const-string v1, "AutoAllTest"

    .line 333
    .local v1, ExtraName:Ljava/lang/String;
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 335
    .local v0, AutoAllTest:Ljava/lang/Integer;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".device_test"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 336
    const-string v2, "ALCProximityTest"

    .line 338
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v5, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 340
    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 341
    invoke-virtual {p0, v3}, Lcom/lge/hiddenmenu/device_test/MotionSensorTest;->startActivity(Landroid/content/Intent;)V

    .line 342
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/MotionSensorTest;->finish()V

    move v7, v9

    .line 344
    goto :goto_8

    .line 310
    nop

    :sswitch_data_76
    .sparse-switch
        0x4 -> :sswitch_9
        0x52 -> :sswitch_24
    .end sparse-switch
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 359
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/MotionSensorTest;->redrawHandler:Lcom/lge/hiddenmenu/device_test/MotionSensorTest$RefleshHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/hiddenmenu/device_test/MotionSensorTest$RefleshHandler;->removeMessages(I)V

    .line 360
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/MotionSensorTest;->redrawHandler:Lcom/lge/hiddenmenu/device_test/MotionSensorTest$RefleshHandler;

    .line 361
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/MotionSensorTest;->sMan:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 362
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/MotionSensorTest;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 363
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 364
    return-void
.end method

.method protected onResume()V
    .registers 10

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x1

    .line 264
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 265
    new-instance v5, Lcom/lge/hiddenmenu/device_test/MotionSensorTest$RefleshHandler;

    invoke-direct {v5, p0}, Lcom/lge/hiddenmenu/device_test/MotionSensorTest$RefleshHandler;-><init>(Lcom/lge/hiddenmenu/device_test/MotionSensorTest;)V

    iput-object v5, p0, Lcom/lge/hiddenmenu/device_test/MotionSensorTest;->redrawHandler:Lcom/lge/hiddenmenu/device_test/MotionSensorTest$RefleshHandler;

    .line 267
    iget-object v5, p0, Lcom/lge/hiddenmenu/device_test/MotionSensorTest;->sMan:Landroid/hardware/SensorManager;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v3

    .line 269
    .local v3, l:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Sensor;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_14
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_67

    .line 270
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/Sensor;

    invoke-virtual {v5}, Landroid/hardware/Sensor;->getType()I

    move-result v4

    .line 272
    .local v4, type:I
    if-eq v4, v7, :cond_2b

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2b

    if-ne v4, v8, :cond_64

    .line 275
    :cond_2b
    iget-object v6, p0, Lcom/lge/hiddenmenu/device_test/MotionSensorTest;->sMan:Landroid/hardware/SensorManager;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/Sensor;

    invoke-virtual {v6, p0, v5, v8}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    .line 278
    .local v0, b:Z
    if-eqz v0, :cond_64

    .line 279
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/lge/hiddenmenu/device_test/MotionSensorTest;->availableSensorNames:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/Sensor;

    invoke-virtual {v5}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/lge/hiddenmenu/device_test/MotionSensorTest;->availableSensorNames:Ljava/lang/String;

    .line 269
    .end local v0           #b:Z
    :cond_64
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 284
    .end local v4           #type:I
    :cond_67
    iget-object v5, p0, Lcom/lge/hiddenmenu/device_test/MotionSensorTest;->availableSensorNames:Ljava/lang/String;

    if-eqz v5, :cond_75

    const-string v5, ""

    iget-object v6, p0, Lcom/lge/hiddenmenu/device_test/MotionSensorTest;->availableSensorNames:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_79

    .line 285
    :cond_75
    const-string v5, "  No available sensor."

    iput-object v5, p0, Lcom/lge/hiddenmenu/device_test/MotionSensorTest;->availableSensorNames:Ljava/lang/String;

    .line 293
    :cond_79
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/MotionSensorTest;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 294
    .local v2, intent:Landroid/content/Intent;
    const-string v5, "AutoAllTest"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    check-cast v5, Ljava/lang/Integer;

    iput-object v5, p0, Lcom/lge/hiddenmenu/device_test/MotionSensorTest;->bAutoAllTest:Ljava/lang/Integer;

    .line 296
    iget-object v5, p0, Lcom/lge/hiddenmenu/device_test/MotionSensorTest;->bAutoAllTest:Ljava/lang/Integer;

    if-eqz v5, :cond_9e

    iget-object v5, p0, Lcom/lge/hiddenmenu/device_test/MotionSensorTest;->bAutoAllTest:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v7, :cond_9e

    .line 297
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/MotionSensorTest;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x80

    invoke-virtual {v5, v6}, Landroid/view/Window;->addFlags(I)V

    .line 301
    :cond_9e
    invoke-direct {p0}, Lcom/lge/hiddenmenu/device_test/MotionSensorTest;->updateUI()V

    .line 302
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 5
    .parameter "arg0"

    .prologue
    .line 374
    iget-object v2, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    .line 375
    .local v0, type:I
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 377
    .local v1, val:[F
    if-nez v1, :cond_b

    .line 390
    :cond_a
    :goto_a
    return-void

    .line 379
    :cond_b
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1d

    .line 380
    iput-object v1, p0, Lcom/lge/hiddenmenu/device_test/MotionSensorTest;->dataAcc:[F

    .line 381
    iget v2, p1, Landroid/hardware/SensorEvent;->accuracy:I

    iput v2, p0, Lcom/lge/hiddenmenu/device_test/MotionSensorTest;->accuracyOfA:I

    .line 382
    iget-object v2, p0, Lcom/lge/hiddenmenu/device_test/MotionSensorTest;->dataAcc:[F

    invoke-virtual {p0, v2}, Lcom/lge/hiddenmenu/device_test/MotionSensorTest;->getOrientation([F)I

    move-result v2

    iput v2, p0, Lcom/lge/hiddenmenu/device_test/MotionSensorTest;->mOrientation:I

    goto :goto_a

    .line 383
    :cond_1d
    const/4 v2, 0x2

    if-ne v0, v2, :cond_27

    .line 384
    iput-object v1, p0, Lcom/lge/hiddenmenu/device_test/MotionSensorTest;->dataMag:[F

    .line 385
    iget v2, p1, Landroid/hardware/SensorEvent;->accuracy:I

    iput v2, p0, Lcom/lge/hiddenmenu/device_test/MotionSensorTest;->accuracyOfM:I

    goto :goto_a

    .line 386
    :cond_27
    const/4 v2, 0x3

    if-ne v0, v2, :cond_a

    .line 387
    iput-object v1, p0, Lcom/lge/hiddenmenu/device_test/MotionSensorTest;->dataOri:[F

    .line 388
    iget v2, p1, Landroid/hardware/SensorEvent;->accuracy:I

    iput v2, p0, Lcom/lge/hiddenmenu/device_test/MotionSensorTest;->accuracyOfO:I

    goto :goto_a
.end method

.method public setContentView(Landroid/view/View;)V
    .registers 2
    .parameter "view"

    .prologue
    .line 160
    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 161
    return-void
.end method
