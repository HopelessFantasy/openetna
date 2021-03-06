.class public Landroid/hardware/Sensor;
.super Ljava/lang/Object;
.source "Sensor.java"


# static fields
.field public static final TYPE_ACCELEROMETER:I = 0x1

.field public static final TYPE_ALL:I = -0x1

.field public static final TYPE_GYROSCOPE:I = 0x4

.field public static final TYPE_LIGHT:I = 0x5

.field public static final TYPE_MAGNETIC_FIELD:I = 0x2

.field public static final TYPE_ORIENTATION:I = 0x3

.field public static final TYPE_PRESSURE:I = 0x6

.field public static final TYPE_PROXIMITY:I = 0x8

.field public static final TYPE_TEMPERATURE:I = 0x7


# instance fields
.field private mHandle:I

.field private mLegacyType:I

.field private mMaxRange:F

.field private mName:Ljava/lang/String;

.field private mPower:F

.field private mResolution:F

.field private mType:I

.field private mVendor:Ljava/lang/String;

.field private mVersion:I


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    return-void
.end method


# virtual methods
.method getHandle()I
    .registers 2

    .prologue
    .line 131
    iget v0, p0, Landroid/hardware/Sensor;->mHandle:I

    return v0
.end method

.method getLegacyType()I
    .registers 2

    .prologue
    .line 144
    iget v0, p0, Landroid/hardware/Sensor;->mLegacyType:I

    return v0
.end method

.method public getMaximumRange()F
    .registers 2

    .prologue
    .line 113
    iget v0, p0, Landroid/hardware/Sensor;->mMaxRange:F

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Landroid/hardware/Sensor;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPower()F
    .registers 2

    .prologue
    .line 127
    iget v0, p0, Landroid/hardware/Sensor;->mPower:F

    return v0
.end method

.method public getResolution()F
    .registers 2

    .prologue
    .line 120
    iget v0, p0, Landroid/hardware/Sensor;->mResolution:F

    return v0
.end method

.method public getType()I
    .registers 2

    .prologue
    .line 99
    iget v0, p0, Landroid/hardware/Sensor;->mType:I

    return v0
.end method

.method public getVendor()Ljava/lang/String;
    .registers 2

    .prologue
    .line 92
    iget-object v0, p0, Landroid/hardware/Sensor;->mVendor:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .registers 2

    .prologue
    .line 106
    iget v0, p0, Landroid/hardware/Sensor;->mVersion:I

    return v0
.end method

.method setLegacyType(I)V
    .registers 2
    .parameter "legacyType"

    .prologue
    .line 140
    iput p1, p0, Landroid/hardware/Sensor;->mLegacyType:I

    .line 141
    return-void
.end method

.method setRange(FF)V
    .registers 3
    .parameter "max"
    .parameter "res"

    .prologue
    .line 135
    iput p1, p0, Landroid/hardware/Sensor;->mMaxRange:F

    .line 136
    iput p2, p0, Landroid/hardware/Sensor;->mResolution:F

    .line 137
    return-void
.end method
