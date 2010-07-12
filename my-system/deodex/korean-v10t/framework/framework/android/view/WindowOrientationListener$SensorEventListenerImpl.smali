.class Landroid/view/WindowOrientationListener$SensorEventListenerImpl;
.super Ljava/lang/Object;
.source "WindowOrientationListener.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/WindowOrientationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SensorEventListenerImpl"
.end annotation


# static fields
.field private static final LANDSCAPE_LOWER:I = 0xeb

.field private static final LP_LF_LOWER:F = 1.3f

.field private static final LP_LF_UPPER:F = 0.8666667f

.field private static final LP_LOWER:I = 0x140

.field private static final LP_UPPER:I = 0x167

.field private static final PIVOT:I = 0x14

.field private static final PIVOT_LOWER:I = -0xa

.field private static final PIVOT_UPPER:I = 0x41

.field private static final PL_LF_LOWER:F = 0.8333333f

.field private static final PL_LF_UPPER:F = 0.5555556f

.field private static final PL_LOWER:I = 0x10e

.field private static final PL_UPPER:I = 0x127

.field private static final PORTRAIT_LOWER:I = 0x3c

.field private static final _DATA_X:I = 0x0

.field private static final _DATA_Y:I = 0x1

.field private static final _DATA_Z:I = 0x2


# instance fields
.field final synthetic this$0:Landroid/view/WindowOrientationListener;


# direct methods
.method constructor <init>(Landroid/view/WindowOrientationListener;)V
    .registers 2
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->this$0:Landroid/view/WindowOrientationListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 208
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 19
    .parameter "event"

    .prologue
    .line 149
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object v11, v0

    .line 150
    .local v11, values:[F
    const/4 v13, 0x0

    aget v2, v11, v13

    .line 151
    .local v2, X:F
    const/4 v13, 0x1

    aget v3, v11, v13

    .line 152
    .local v3, Y:F
    const/4 v13, 0x2

    aget v4, v11, v13

    .line 153
    .local v4, Z:F
    const v1, 0x42652ee1

    .line 154
    .local v1, OneEightyOverPi:F
    mul-float v13, v2, v2

    mul-float v14, v3, v3

    add-float/2addr v13, v14

    mul-float v14, v4, v4

    add-float/2addr v13, v14

    float-to-double v13, v13

    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    double-to-float v7, v13

    .line 155
    .local v7, gravity:F
    div-float v13, v4, v7

    float-to-double v13, v13

    invoke-static {v13, v14}, Ljava/lang/Math;->asin(D)D

    move-result-wide v13

    double-to-float v13, v13

    mul-float v12, v13, v1

    .line 156
    .local v12, zyangle:F
    const/4 v9, -0x1

    .line 157
    .local v9, rotation:I
    const/high16 v13, 0x4282

    cmpg-float v13, v12, v13

    if-gtz v13, :cond_a7

    const/high16 v13, -0x3ee0

    cmpl-float v13, v12, v13

    if-ltz v13, :cond_a7

    .line 160
    float-to-double v13, v3

    neg-float v15, v2

    float-to-double v15, v15

    invoke-static/range {v13 .. v16}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v13

    double-to-float v13, v13

    mul-float v5, v13, v1

    .line 161
    .local v5, angle:F
    const/16 v13, 0x5a

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v14

    sub-int v8, v13, v14

    .line 163
    .local v8, orientation:I
    :goto_48
    const/16 v13, 0x168

    if-lt v8, v13, :cond_4f

    .line 164
    add-int/lit16 v8, v8, -0x168

    goto :goto_48

    .line 166
    :cond_4f
    :goto_4f
    if-gez v8, :cond_54

    .line 167
    add-int/lit16 v8, v8, 0x168

    goto :goto_4f

    .line 174
    :cond_54
    const/16 v13, 0x10e

    if-lt v8, v13, :cond_d7

    const/16 v13, 0x167

    if-gt v8, v13, :cond_d7

    .line 176
    const/high16 v13, 0x41a0

    sub-float v6, v12, v13

    .line 177
    .local v6, delta:F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->this$0:Landroid/view/WindowOrientationListener;

    move-object v13, v0

    invoke-static {v13}, Landroid/view/WindowOrientationListener;->access$000(Landroid/view/WindowOrientationListener;)I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_b4

    .line 178
    const/4 v13, 0x0

    cmpg-float v13, v6, v13

    if-gez v13, :cond_a8

    .line 180
    const/high16 v13, 0x43a0

    const v14, 0x3fa66666

    mul-float/2addr v14, v6

    sub-float v10, v13, v14

    .line 184
    .local v10, threshold:F
    :goto_79
    int-to-float v13, v8

    cmpl-float v13, v13, v10

    if-ltz v13, :cond_b1

    const/4 v13, 0x0

    move v9, v13

    .line 199
    .end local v6           #delta:F
    .end local v10           #threshold:F
    :cond_80
    :goto_80
    const/4 v13, -0x1

    if-eq v9, v13, :cond_a7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->this$0:Landroid/view/WindowOrientationListener;

    move-object v13, v0

    invoke-static {v13}, Landroid/view/WindowOrientationListener;->access$000(Landroid/view/WindowOrientationListener;)I

    move-result v13

    if-eq v9, v13, :cond_a7

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->this$0:Landroid/view/WindowOrientationListener;

    move-object v13, v0

    invoke-static {v13, v9}, Landroid/view/WindowOrientationListener;->access$002(Landroid/view/WindowOrientationListener;I)I

    .line 201
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->this$0:Landroid/view/WindowOrientationListener;

    move-object v13, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->this$0:Landroid/view/WindowOrientationListener;

    move-object v14, v0

    invoke-static {v14}, Landroid/view/WindowOrientationListener;->access$000(Landroid/view/WindowOrientationListener;)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/view/WindowOrientationListener;->onOrientationChanged(I)V

    .line 204
    .end local v5           #angle:F
    .end local v8           #orientation:I
    :cond_a7
    return-void

    .line 182
    .restart local v5       #angle:F
    .restart local v6       #delta:F
    .restart local v8       #orientation:I
    :cond_a8
    const/high16 v13, 0x43a0

    const v14, 0x3f5dddde

    mul-float/2addr v14, v6

    add-float v10, v13, v14

    .restart local v10       #threshold:F
    goto :goto_79

    .line 184
    :cond_b1
    const/4 v13, 0x1

    move v9, v13

    goto :goto_80

    .line 186
    .end local v10           #threshold:F
    :cond_b4
    const/4 v13, 0x0

    cmpg-float v13, v6, v13

    if-gez v13, :cond_ca

    .line 188
    const v13, 0x43938000

    const v14, 0x3f555555

    mul-float/2addr v14, v6

    add-float v10, v13, v14

    .line 192
    .restart local v10       #threshold:F
    :goto_c2
    int-to-float v13, v8

    cmpg-float v13, v13, v10

    if-gtz v13, :cond_d4

    const/4 v13, 0x1

    move v9, v13

    :goto_c9
    goto :goto_80

    .line 190
    .end local v10           #threshold:F
    :cond_ca
    const v13, 0x43938000

    const v14, 0x3f0e38e4

    mul-float/2addr v14, v6

    sub-float v10, v13, v14

    .restart local v10       #threshold:F
    goto :goto_c2

    .line 192
    :cond_d4
    const/4 v13, 0x0

    move v9, v13

    goto :goto_c9

    .line 194
    .end local v6           #delta:F
    .end local v10           #threshold:F
    :cond_d7
    const/16 v13, 0xeb

    if-lt v8, v13, :cond_e1

    const/16 v13, 0x140

    if-ge v8, v13, :cond_e1

    .line 195
    const/4 v9, 0x1

    goto :goto_80

    .line 196
    :cond_e1
    const/16 v13, 0x127

    if-ge v8, v13, :cond_e9

    const/16 v13, 0x3c

    if-gt v8, v13, :cond_80

    .line 197
    :cond_e9
    const/4 v9, 0x0

    goto :goto_80
.end method
