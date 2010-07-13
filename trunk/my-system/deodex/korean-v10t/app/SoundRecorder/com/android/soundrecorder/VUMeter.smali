.class public Lcom/android/soundrecorder/VUMeter;
.super Landroid/view/View;
.source "VUMeter.java"


# static fields
.field static final ANIMATION_INTERVAL:J = 0x46L

.field static final DROPOFF_STEP:F = 0.18f

.field static final PIVOT_RADIUS:F = 3.5f

.field static final PIVOT_Y_OFFSET:F = 10.0f

.field static final SHADOW_OFFSET:F = 2.0f

.field static final SURGE_STEP:F = 0.35f


# instance fields
.field mCurrentAngle:F

.field mPaint:Landroid/graphics/Paint;

.field mRecorder:Lcom/android/soundrecorder/Recorder;

.field mShadow:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 28
    invoke-virtual {p0, p1}, Lcom/android/soundrecorder/VUMeter;->init(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    invoke-virtual {p0, p1}, Lcom/android/soundrecorder/VUMeter;->init(Landroid/content/Context;)V

    .line 34
    return-void
.end method


# virtual methods
.method init(Landroid/content/Context;)V
    .registers 7
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 38
    .local v0, background:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/VUMeter;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 40
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/android/soundrecorder/VUMeter;->mPaint:Landroid/graphics/Paint;

    .line 41
    iget-object v1, p0, Lcom/android/soundrecorder/VUMeter;->mPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 42
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/android/soundrecorder/VUMeter;->mShadow:Landroid/graphics/Paint;

    .line 43
    iget-object v1, p0, Lcom/android/soundrecorder/VUMeter;->mShadow:Landroid/graphics/Paint;

    const/16 v2, 0x3c

    invoke-static {v2, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 45
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/soundrecorder/VUMeter;->mRecorder:Lcom/android/soundrecorder/Recorder;

    .line 47
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/soundrecorder/VUMeter;->mCurrentAngle:F

    .line 48
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 25
    .parameter "canvas"

    .prologue
    .line 57
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 59
    const v16, 0x3ec90fdb

    .line 61
    .local v16, minAngle:F
    const v15, 0x402fede0

    .line 65
    .local v15, maxAngle:F
    const v11, 0x3ec90fdb

    .line 66
    .local v11, angle:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/soundrecorder/VUMeter;->mRecorder:Lcom/android/soundrecorder/Recorder;

    move-object v5, v0

    if-eqz v5, :cond_25

    .line 67
    const v5, 0x4016cbe5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/soundrecorder/VUMeter;->mRecorder:Lcom/android/soundrecorder/Recorder;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/soundrecorder/Recorder;->getMaxAmplitude()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    const/high16 v6, 0x4700

    div-float/2addr v5, v6

    add-float/2addr v11, v5

    .line 69
    :cond_25
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/soundrecorder/VUMeter;->mCurrentAngle:F

    move v5, v0

    cmpl-float v5, v11, v5

    if-lez v5, :cond_f7

    .line 70
    move v0, v11

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/soundrecorder/VUMeter;->mCurrentAngle:F

    .line 74
    :goto_33
    const v5, 0x402fede0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/soundrecorder/VUMeter;->mCurrentAngle:F

    move v6, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/soundrecorder/VUMeter;->mCurrentAngle:F

    .line 76
    invoke-virtual/range {p0 .. p0}, Lcom/android/soundrecorder/VUMeter;->getWidth()I

    move-result v5

    move v0, v5

    int-to-float v0, v0

    move/from16 v20, v0

    .line 77
    .local v20, w:F
    invoke-virtual/range {p0 .. p0}, Lcom/android/soundrecorder/VUMeter;->getHeight()I

    move-result v5

    int-to-float v13, v5

    .line 78
    .local v13, h:F
    const/high16 v5, 0x4000

    div-float v17, v20, v5

    .line 79
    .local v17, pivotX:F
    const/high16 v5, 0x4060

    sub-float v5, v13, v5

    const/high16 v6, 0x4120

    sub-float v18, v5, v6

    .line 80
    .local v18, pivotY:F
    const/high16 v5, 0x4080

    mul-float/2addr v5, v13

    const/high16 v6, 0x40a0

    div-float v14, v5, v6

    .line 81
    .local v14, l:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/soundrecorder/VUMeter;->mCurrentAngle:F

    move v5, v0

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    move-wide v0, v5

    double-to-float v0, v0

    move/from16 v19, v0

    .line 82
    .local v19, sin:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/soundrecorder/VUMeter;->mCurrentAngle:F

    move v5, v0

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    double-to-float v12, v5

    .line 83
    .local v12, cos:F
    mul-float v5, v14, v12

    sub-float v21, v17, v5

    .line 84
    .local v21, x0:F
    mul-float v5, v14, v19

    sub-float v22, v18, v5

    .line 85
    .local v22, y0:F
    const/high16 v5, 0x4000

    add-float v6, v21, v5

    const/high16 v5, 0x4000

    add-float v7, v22, v5

    const/high16 v5, 0x4000

    add-float v8, v17, v5

    const/high16 v5, 0x4000

    add-float v9, v18, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/soundrecorder/VUMeter;->mShadow:Landroid/graphics/Paint;

    move-object v10, v0

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 86
    const/high16 v5, 0x4000

    add-float v5, v5, v17

    const/high16 v6, 0x4000

    add-float v6, v6, v18

    const/high16 v7, 0x4060

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/soundrecorder/VUMeter;->mShadow:Landroid/graphics/Paint;

    move-object v8, v0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 87
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/soundrecorder/VUMeter;->mPaint:Landroid/graphics/Paint;

    move-object v10, v0

    move-object/from16 v5, p1

    move/from16 v6, v21

    move/from16 v7, v22

    move/from16 v8, v17

    move/from16 v9, v18

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 88
    const/high16 v5, 0x4060

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/soundrecorder/VUMeter;->mPaint:Landroid/graphics/Paint;

    move-object v6, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    move v3, v5

    move-object v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 90
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/soundrecorder/VUMeter;->mRecorder:Lcom/android/soundrecorder/Recorder;

    move-object v5, v0

    if-eqz v5, :cond_f6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/soundrecorder/VUMeter;->mRecorder:Lcom/android/soundrecorder/Recorder;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/soundrecorder/Recorder;->state()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_f6

    .line 91
    const-wide/16 v5, 0x46

    move-object/from16 v0, p0

    move-wide v1, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/soundrecorder/VUMeter;->postInvalidateDelayed(J)V

    .line 92
    :cond_f6
    return-void

    .line 72
    .end local v12           #cos:F
    .end local v13           #h:F
    .end local v14           #l:F
    .end local v17           #pivotX:F
    .end local v18           #pivotY:F
    .end local v19           #sin:F
    .end local v20           #w:F
    .end local v21           #x0:F
    .end local v22           #y0:F
    :cond_f7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/soundrecorder/VUMeter;->mCurrentAngle:F

    move v5, v0

    const v6, 0x3e3851ec

    sub-float/2addr v5, v6

    invoke-static {v11, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/soundrecorder/VUMeter;->mCurrentAngle:F

    goto/16 :goto_33
.end method

.method public setRecorder(Lcom/android/soundrecorder/Recorder;)V
    .registers 2
    .parameter "recorder"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/soundrecorder/VUMeter;->mRecorder:Lcom/android/soundrecorder/Recorder;

    .line 52
    invoke-virtual {p0}, Lcom/android/soundrecorder/VUMeter;->invalidate()V

    .line 53
    return-void
.end method
