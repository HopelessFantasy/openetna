.class public Lcom/android/settings/TSCalibration$MyView;
.super Landroid/view/View;
.source "TSCalibration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/TSCalibration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyView"
.end annotation


# static fields
.field private static final BOTTOM_LEFT:I = 0x2

.field private static final BOTTOM_LEFT_ERROR:I = 0x8

.field private static final BOTTOM_RIGHT:I = 0x3

.field private static final BOTTOM_RIGHT_ERROR:I = 0x9

.field private static final CENTER:I = 0x0

.field private static final CENTER_ERROR:I = 0x6

.field private static final COMPLETED:I = 0x5

.field private static final TOP_LEFT:I = 0x1

.field private static final TOP_LEFT_ERROR:I = 0x7

.field private static final TOP_RIGHT:I = 0x4

.field private static final TOP_RIGHT_ERROR:I = 0xa


# instance fields
.field private M11:F

.field private M12:F

.field private M13:F

.field private M14:F

.field private M21:F

.field private M22:F

.field private M23:F

.field private M24:F

.field private M31:F

.field private M32:F

.field private M33:F

.field private M34:F

.field private M41:F

.field private M42:F

.field private M43:F

.field private M44:F

.field private ax:F

.field private bCheckCalibration:Z

.field private bx:F

.field private cal_x_shift:F

.field private cal_y_shift:F

.field private cx:F

.field private det:F

.field private dx:F

.field private ky:F

.field private ly:F

.field public mCalComplete:Z

.field private final mCirclePaint:Landroid/graphics/Paint;

.field private final mCrossPaint:Landroid/graphics/Paint;

.field private mCurDown:Z

.field private mCurPressure:F

.field private mCurSize:F

.field private mCurWidth:I

.field private mCurX:I

.field private mCurY:I

.field private mCurrentState:I

.field private mFirstState:I

.field private final mMessageTextPaint:Landroid/graphics/Paint;

.field private final mPaint:Landroid/graphics/Paint;

.field private final mRect:Landroid/graphics/Rect;

.field private mStand:I

.field private final mTextPaint:Landroid/graphics/Paint;

.field private my:F

.field public nSelectList:I

.field private ny:F

.field private printCurX:I

.field private printCurY:I

.field private printLastX:I

.field private printLastY:I

.field private raw_x_shift:F

.field private raw_y_shift:F

.field public scale_factor:I

.field public scale_factorOrig:I

.field private tempCurX:[[I

.field private tempCurY:[[I

.field private final tempPaint:Landroid/graphics/Paint;

.field final synthetic this$0:Lcom/android/settings/TSCalibration;

.field private x1:I

.field private x1_:I

.field private x2:I

.field private x2_:I

.field private x3:I

.field private x3_:I

.field private x4:I

.field private x4_:I

.field private x5:I

.field private x5_:I

.field private x5_cal:F

.field public xscale:I

.field public xscaleOrig:I

.field public xtrans:I

.field public xtransOrig:I

.field private y1:I

.field private y1_:I

.field private y2:I

.field private y2_:I

.field private y3:I

.field private y3_:I

.field private y4:I

.field private y4_:I

.field private y5:I

.field private y5_:I

.field private y5_cal:F

.field public yscale:I

.field public yscaleOrig:I

.field public ytrans:I

.field public ytransOrig:I


# direct methods
.method public constructor <init>(Lcom/android/settings/TSCalibration;Landroid/content/Context;)V
    .registers 10
    .parameter
    .parameter "c"

    .prologue
    const/4 v6, 0x2

    const/4 v5, -0x1

    const/16 v4, 0xff

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 187
    iput-object p1, p0, Lcom/android/settings/TSCalibration$MyView;->this$0:Lcom/android/settings/TSCalibration;

    .line 188
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 117
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/settings/TSCalibration$MyView;->mRect:Landroid/graphics/Rect;

    .line 162
    iput v5, p0, Lcom/android/settings/TSCalibration$MyView;->mCurrentState:I

    .line 163
    iput v5, p0, Lcom/android/settings/TSCalibration$MyView;->mFirstState:I

    .line 181
    const/4 v0, 0x5

    filled-new-array {v6, v0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lcom/android/settings/TSCalibration$MyView;->tempCurX:[[I

    .line 182
    const/4 v0, 0x5

    filled-new-array {v6, v0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lcom/android/settings/TSCalibration$MyView;->tempCurY:[[I

    .line 183
    iput-boolean v3, p0, Lcom/android/settings/TSCalibration$MyView;->bCheckCalibration:Z

    .line 190
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/TSCalibration$MyView;->mTextPaint:Landroid/graphics/Paint;

    .line 191
    iget-object v0, p0, Lcom/android/settings/TSCalibration$MyView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 192
    iget-object v0, p0, Lcom/android/settings/TSCalibration$MyView;->mTextPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4120

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 193
    iget-object v0, p0, Lcom/android/settings/TSCalibration$MyView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4, v3, v4, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 195
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/TSCalibration$MyView;->mMessageTextPaint:Landroid/graphics/Paint;

    .line 196
    iget-object v0, p0, Lcom/android/settings/TSCalibration$MyView;->mMessageTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 197
    iget-object v0, p0, Lcom/android/settings/TSCalibration$MyView;->mMessageTextPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4170

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 198
    iget-object v0, p0, Lcom/android/settings/TSCalibration$MyView;->mMessageTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 200
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/TSCalibration$MyView;->mPaint:Landroid/graphics/Paint;

    .line 201
    iget-object v0, p0, Lcom/android/settings/TSCalibration$MyView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 202
    iget-object v0, p0, Lcom/android/settings/TSCalibration$MyView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 203
    iget-object v0, p0, Lcom/android/settings/TSCalibration$MyView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 204
    iget-object v0, p0, Lcom/android/settings/TSCalibration$MyView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40a0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 206
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/TSCalibration$MyView;->mCrossPaint:Landroid/graphics/Paint;

    .line 207
    iget-object v0, p0, Lcom/android/settings/TSCalibration$MyView;->mCrossPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 208
    iget-object v0, p0, Lcom/android/settings/TSCalibration$MyView;->mCrossPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 210
    iget-object v0, p0, Lcom/android/settings/TSCalibration$MyView;->mCrossPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 214
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/TSCalibration$MyView;->mCirclePaint:Landroid/graphics/Paint;

    .line 215
    iget-object v0, p0, Lcom/android/settings/TSCalibration$MyView;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 216
    iget-object v0, p0, Lcom/android/settings/TSCalibration$MyView;->mCirclePaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 218
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/TSCalibration$MyView;->tempPaint:Landroid/graphics/Paint;

    .line 219
    iget-object v0, p0, Lcom/android/settings/TSCalibration$MyView;->tempPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 220
    iget-object v0, p0, Lcom/android/settings/TSCalibration$MyView;->tempPaint:Landroid/graphics/Paint;

    const v1, -0xffff01

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 222
    iput v3, p0, Lcom/android/settings/TSCalibration$MyView;->mCurrentState:I

    .line 223
    iput v3, p0, Lcom/android/settings/TSCalibration$MyView;->mFirstState:I

    .line 226
    invoke-direct {p0}, Lcom/android/settings/TSCalibration$MyView;->readTSCal()V

    .line 228
    iget v0, p0, Lcom/android/settings/TSCalibration$MyView;->xscale:I

    iput v0, p0, Lcom/android/settings/TSCalibration$MyView;->xscaleOrig:I

    .line 229
    iget v0, p0, Lcom/android/settings/TSCalibration$MyView;->xtrans:I

    iput v0, p0, Lcom/android/settings/TSCalibration$MyView;->xtransOrig:I

    .line 230
    iget v0, p0, Lcom/android/settings/TSCalibration$MyView;->yscale:I

    iput v0, p0, Lcom/android/settings/TSCalibration$MyView;->yscaleOrig:I

    .line 231
    iget v0, p0, Lcom/android/settings/TSCalibration$MyView;->ytrans:I

    iput v0, p0, Lcom/android/settings/TSCalibration$MyView;->ytransOrig:I

    .line 232
    iget v0, p0, Lcom/android/settings/TSCalibration$MyView;->scale_factor:I

    iput v0, p0, Lcom/android/settings/TSCalibration$MyView;->scale_factorOrig:I

    .line 233
    iput-boolean v3, p0, Lcom/android/settings/TSCalibration$MyView;->mCalComplete:Z

    .line 235
    iput v2, p0, Lcom/android/settings/TSCalibration$MyView;->xscale:I

    .line 236
    iput v3, p0, Lcom/android/settings/TSCalibration$MyView;->xtrans:I

    .line 237
    iput v2, p0, Lcom/android/settings/TSCalibration$MyView;->yscale:I

    .line 238
    iput v3, p0, Lcom/android/settings/TSCalibration$MyView;->ytrans:I

    .line 239
    iput v2, p0, Lcom/android/settings/TSCalibration$MyView;->scale_factor:I

    .line 240
    invoke-virtual {p0}, Lcom/android/settings/TSCalibration$MyView;->save()V

    .line 241
    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/TSCalibration$MyView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/android/settings/TSCalibration$MyView;->bCheckCalibration:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/settings/TSCalibration$MyView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    iput p1, p0, Lcom/android/settings/TSCalibration$MyView;->mCurrentState:I

    return p1
.end method

.method private calibrate()Z
    .registers 30

    .prologue
    .line 992
    const/16 v25, 0x5

    move/from16 v0, v25

    new-array v0, v0, [I

    move-object v6, v0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->x1:I

    move/from16 v26, v0

    aput v26, v6, v25

    const/16 v25, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->x2:I

    move/from16 v26, v0

    aput v26, v6, v25

    const/16 v25, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->x3:I

    move/from16 v26, v0

    aput v26, v6, v25

    const/16 v25, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->x4:I

    move/from16 v26, v0

    aput v26, v6, v25

    const/16 v25, 0x4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->x5:I

    move/from16 v26, v0

    aput v26, v6, v25

    .line 993
    .local v6, cal_x:[I
    const/16 v25, 0x5

    move/from16 v0, v25

    new-array v0, v0, [I

    move-object v8, v0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->y1:I

    move/from16 v26, v0

    aput v26, v8, v25

    const/16 v25, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->y2:I

    move/from16 v26, v0

    aput v26, v8, v25

    const/16 v25, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->y3:I

    move/from16 v26, v0

    aput v26, v8, v25

    const/16 v25, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->y4:I

    move/from16 v26, v0

    aput v26, v8, v25

    const/16 v25, 0x4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->y5:I

    move/from16 v26, v0

    aput v26, v8, v25

    .line 994
    .local v8, cal_y:[I
    const/16 v25, 0x5

    move/from16 v0, v25

    new-array v0, v0, [I

    move-object v7, v0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->x1_:I

    move/from16 v26, v0

    aput v26, v7, v25

    const/16 v25, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->x2_:I

    move/from16 v26, v0

    aput v26, v7, v25

    const/16 v25, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->x3_:I

    move/from16 v26, v0

    aput v26, v7, v25

    const/16 v25, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->x4_:I

    move/from16 v26, v0

    aput v26, v7, v25

    const/16 v25, 0x4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->x5_:I

    move/from16 v26, v0

    aput v26, v7, v25

    .line 995
    .local v7, cal_xfb:[I
    const/16 v25, 0x5

    move/from16 v0, v25

    new-array v0, v0, [I

    move-object v9, v0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->y1_:I

    move/from16 v26, v0

    aput v26, v9, v25

    const/16 v25, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->y2_:I

    move/from16 v26, v0

    aput v26, v9, v25

    const/16 v25, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->y3_:I

    move/from16 v26, v0

    aput v26, v9, v25

    const/16 v25, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->y4_:I

    move/from16 v26, v0

    aput v26, v9, v25

    const/16 v25, 0x4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->y5_:I

    move/from16 v26, v0

    aput v26, v9, v25

    .line 996
    .local v9, cal_yfb:[I
    const/16 v25, 0x7

    move/from16 v0, v25

    new-array v0, v0, [I

    move-object v3, v0

    .line 1001
    .local v3, arr:[I
    const/high16 v16, 0x4780

    .line 1004
    .local v16, scaling:F
    const/16 v19, 0x0

    .local v19, xy:F
    move/from16 v21, v19

    .local v21, y2:F
    move/from16 v18, v19

    .local v18, x2:F
    move/from16 v20, v19

    .local v20, y:F
    move/from16 v17, v19

    .local v17, x:F
    move/from16 v15, v19

    .line 1005
    .local v15, n:F
    const/4 v14, 0x0

    .local v14, j:I
    :goto_fa
    const/16 v25, 0x5

    move v0, v14

    move/from16 v1, v25

    if-ge v0, v1, :cond_149

    .line 1006
    move v0, v15

    float-to-double v0, v0

    move-wide/from16 v25, v0

    const-wide/high16 v27, 0x3ff0

    add-double v25, v25, v27

    move-wide/from16 v0, v25

    double-to-float v0, v0

    move v15, v0

    .line 1007
    aget v25, v6, v14

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    add-float v17, v17, v25

    .line 1008
    aget v25, v8, v14

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    add-float v20, v20, v25

    .line 1009
    aget v25, v6, v14

    aget v26, v6, v14

    mul-int v25, v25, v26

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    add-float v18, v18, v25

    .line 1010
    aget v25, v8, v14

    aget v26, v8, v14

    mul-int v25, v25, v26

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    add-float v21, v21, v25

    .line 1011
    aget v25, v6, v14

    aget v26, v8, v14

    mul-int v25, v25, v26

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    add-float v19, v19, v25

    .line 1005
    add-int/lit8 v14, v14, 0x1

    goto :goto_fa

    .line 1015
    :cond_149
    mul-float v25, v18, v21

    mul-float v26, v19, v19

    sub-float v25, v25, v26

    mul-float v25, v25, v15

    mul-float v26, v19, v20

    mul-float v27, v17, v21

    sub-float v26, v26, v27

    mul-float v26, v26, v17

    add-float v25, v25, v26

    mul-float v26, v17, v19

    mul-float v27, v20, v18

    sub-float v26, v26, v27

    mul-float v26, v26, v20

    add-float v10, v25, v26

    .line 1016
    .local v10, det:F
    move v0, v10

    float-to-double v0, v0

    move-wide/from16 v25, v0

    const-wide v27, 0x3fb999999999999aL

    cmpg-double v25, v25, v27

    if-gez v25, :cond_19d

    move v0, v10

    float-to-double v0, v0

    move-wide/from16 v25, v0

    const-wide v27, -0x4046666666666666L

    cmpl-double v25, v25, v27

    if-lez v25, :cond_19d

    .line 1017
    const-string v25, "TS"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "ts_calibrate: determinant is too small -- "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    const/16 v25, 0x0

    .line 1072
    :goto_19c
    return v25

    .line 1022
    :cond_19d
    mul-float v25, v18, v21

    mul-float v26, v19, v19

    sub-float v25, v25, v26

    div-float v2, v25, v10

    .line 1023
    .local v2, a:F
    mul-float v25, v19, v20

    mul-float v26, v17, v21

    sub-float v25, v25, v26

    div-float v4, v25, v10

    .line 1024
    .local v4, b:F
    mul-float v25, v17, v19

    mul-float v26, v20, v18

    sub-float v25, v25, v26

    div-float v5, v25, v10

    .line 1025
    .local v5, c:F
    mul-float v25, v15, v21

    mul-float v26, v20, v20

    sub-float v25, v25, v26

    div-float v11, v25, v10

    .line 1026
    .local v11, e:F
    mul-float v25, v17, v20

    mul-float v26, v15, v19

    sub-float v25, v25, v26

    div-float v12, v25, v10

    .line 1027
    .local v12, f:F
    mul-float v25, v15, v18

    mul-float v26, v17, v17

    sub-float v25, v25, v26

    div-float v13, v25, v10

    .line 1030
    .local v13, i:F
    const/16 v24, 0x0

    .local v24, zy:F
    move/from16 v23, v24

    .local v23, zx:F
    move/from16 v22, v24

    .line 1031
    .local v22, z:F
    const/4 v14, 0x0

    :goto_1d4
    const/16 v25, 0x5

    move v0, v14

    move/from16 v1, v25

    if-ge v0, v1, :cond_201

    .line 1032
    aget v25, v7, v14

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    add-float v22, v22, v25

    .line 1033
    aget v25, v7, v14

    aget v26, v6, v14

    mul-int v25, v25, v26

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    add-float v23, v23, v25

    .line 1034
    aget v25, v7, v14

    aget v26, v8, v14

    mul-int v25, v25, v26

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    add-float v24, v24, v25

    .line 1031
    add-int/lit8 v14, v14, 0x1

    goto :goto_1d4

    .line 1038
    :cond_201
    const/16 v25, 0x2

    mul-float v26, v2, v22

    mul-float v27, v4, v23

    add-float v26, v26, v27

    mul-float v27, v5, v24

    add-float v26, v26, v27

    mul-float v26, v26, v16

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    aput v26, v3, v25

    .line 1039
    const/16 v25, 0x0

    mul-float v26, v4, v22

    mul-float v27, v11, v23

    add-float v26, v26, v27

    mul-float v27, v12, v24

    add-float v26, v26, v27

    mul-float v26, v26, v16

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    aput v26, v3, v25

    .line 1040
    const/16 v25, 0x1

    mul-float v26, v5, v22

    mul-float v27, v12, v23

    add-float v26, v26, v27

    mul-float v27, v13, v24

    add-float v26, v26, v27

    mul-float v26, v26, v16

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    aput v26, v3, v25

    .line 1043
    const/16 v24, 0x0

    move/from16 v23, v24

    move/from16 v22, v24

    .line 1044
    const/4 v14, 0x0

    :goto_247
    const/16 v25, 0x5

    move v0, v14

    move/from16 v1, v25

    if-ge v0, v1, :cond_274

    .line 1045
    aget v25, v9, v14

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    add-float v22, v22, v25

    .line 1046
    aget v25, v9, v14

    aget v26, v6, v14

    mul-int v25, v25, v26

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    add-float v23, v23, v25

    .line 1047
    aget v25, v9, v14

    aget v26, v8, v14

    mul-int v25, v25, v26

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    add-float v24, v24, v25

    .line 1044
    add-int/lit8 v14, v14, 0x1

    goto :goto_247

    .line 1051
    :cond_274
    const/16 v25, 0x5

    mul-float v26, v2, v22

    mul-float v27, v4, v23

    add-float v26, v26, v27

    mul-float v27, v5, v24

    add-float v26, v26, v27

    mul-float v26, v26, v16

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    aput v26, v3, v25

    .line 1052
    const/16 v25, 0x3

    mul-float v26, v4, v22

    mul-float v27, v11, v23

    add-float v26, v26, v27

    mul-float v27, v12, v24

    add-float v26, v26, v27

    mul-float v26, v26, v16

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    aput v26, v3, v25

    .line 1053
    const/16 v25, 0x4

    mul-float v26, v5, v22

    mul-float v27, v12, v23

    add-float v26, v26, v27

    mul-float v27, v13, v24

    add-float v26, v26, v27

    mul-float v26, v26, v16

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    aput v26, v3, v25

    .line 1056
    const/16 v25, 0x6

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v26, v0

    aput v26, v3, v25

    .line 1058
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->x5:I

    move/from16 v25, v0

    const/16 v26, 0x0

    aget v26, v3, v26

    mul-int v25, v25, v26

    const/16 v26, 0x2

    aget v26, v3, v26

    add-int v25, v25, v26

    const/16 v26, 0x6

    aget v26, v3, v26

    div-int v25, v25, v26

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/TSCalibration$MyView;->x5_cal:F

    .line 1059
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->y5:I

    move/from16 v25, v0

    const/16 v26, 0x4

    aget v26, v3, v26

    mul-int v25, v25, v26

    const/16 v26, 0x5

    aget v26, v3, v26

    add-int v25, v25, v26

    const/16 v26, 0x6

    aget v26, v3, v26

    div-int v25, v25, v26

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/TSCalibration$MyView;->y5_cal:F

    .line 1061
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->x5_:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->x5_cal:F

    move/from16 v26, v0

    sub-float v25, v25, v26

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v25

    const/high16 v26, 0x4120

    cmpl-float v25, v25, v26

    if-lez v25, :cond_323

    .line 1062
    const/16 v25, 0x0

    goto/16 :goto_19c

    .line 1063
    :cond_323
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->y5_:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->y5_cal:F

    move/from16 v26, v0

    sub-float v25, v25, v26

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v25

    const/high16 v26, 0x4120

    cmpl-float v25, v25, v26

    if-lez v25, :cond_344

    .line 1064
    const/16 v25, 0x0

    goto/16 :goto_19c

    .line 1066
    :cond_344
    const/16 v25, 0x6

    aget v25, v3, v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/TSCalibration$MyView;->scale_factor:I

    .line 1067
    const/16 v25, 0x0

    aget v25, v3, v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/TSCalibration$MyView;->xscale:I

    .line 1068
    const/16 v25, 0x2

    aget v25, v3, v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->scale_factor:I

    move/from16 v26, v0

    div-int v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/TSCalibration$MyView;->xtrans:I

    .line 1069
    const/16 v25, 0x4

    aget v25, v3, v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/TSCalibration$MyView;->yscale:I

    .line 1070
    const/16 v25, 0x5

    aget v25, v3, v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->scale_factor:I

    move/from16 v26, v0

    div-int v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/TSCalibration$MyView;->ytrans:I

    .line 1072
    const/16 v25, 0x1

    goto/16 :goto_19c
.end method

.method private drawLineFill(Landroid/graphics/Path;II)V
    .registers 9
    .parameter "path"
    .parameter "xx"
    .parameter "yy"

    .prologue
    const/4 v4, 0x5

    const/16 v3, 0xa

    const/4 v2, 0x4

    .line 245
    sub-int v0, p2, v3

    int-to-float v0, v0

    sub-int v1, p3, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 246
    sub-int v0, p2, v3

    int-to-float v0, v0

    add-int/lit8 v1, p3, 0x4

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 247
    sub-int v0, p2, v4

    int-to-float v0, v0

    int-to-float v1, p3

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 248
    sub-int v0, p2, v3

    int-to-float v0, v0

    sub-int v1, p3, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 249
    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    .line 254
    add-int/lit8 v0, p2, 0xa

    int-to-float v0, v0

    sub-int v1, p3, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 255
    add-int/lit8 v0, p2, 0xa

    int-to-float v0, v0

    add-int/lit8 v1, p3, 0x4

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 256
    add-int/lit8 v0, p2, 0x5

    int-to-float v0, v0

    int-to-float v1, p3

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 257
    add-int/lit8 v0, p2, 0xa

    int-to-float v0, v0

    sub-int v1, p3, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 258
    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    .line 262
    sub-int v0, p2, v2

    int-to-float v0, v0

    sub-int v1, p3, v3

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 263
    add-int/lit8 v0, p2, 0x4

    int-to-float v0, v0

    sub-int v1, p3, v3

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 264
    int-to-float v0, p2

    sub-int v1, p3, v4

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 265
    sub-int v0, p2, v2

    int-to-float v0, v0

    sub-int v1, p3, v3

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 266
    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    .line 271
    sub-int v0, p2, v2

    int-to-float v0, v0

    add-int/lit8 v1, p3, 0xa

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 272
    add-int/lit8 v0, p2, 0x4

    int-to-float v0, v0

    add-int/lit8 v1, p3, 0xa

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 273
    int-to-float v0, p2

    add-int/lit8 v1, p3, 0x5

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 274
    sub-int v0, p2, v2

    int-to-float v0, v0

    add-int/lit8 v1, p3, 0xa

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 275
    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    .line 276
    return-void
.end method

.method private final readTSCal()V
    .registers 13

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 1105
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    .line 1106
    .local v2, dataDir:Ljava/io/File;
    new-instance v8, Ljava/io/File;

    const-string v9, "misc/ts_cal"

    invoke-direct {v8, v2, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1108
    .local v8, ts_cal:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_1e

    .line 1111
    iput v10, p0, Lcom/android/settings/TSCalibration$MyView;->xscale:I

    .line 1112
    iput v11, p0, Lcom/android/settings/TSCalibration$MyView;->xtrans:I

    .line 1113
    iput v10, p0, Lcom/android/settings/TSCalibration$MyView;->yscale:I

    .line 1114
    iput v11, p0, Lcom/android/settings/TSCalibration$MyView;->ytrans:I

    .line 1115
    iput v10, p0, Lcom/android/settings/TSCalibration$MyView;->scale_factor:I

    .line 1198
    :cond_1d
    :goto_1d
    return-void

    .line 1120
    :cond_1e
    const/4 v0, 0x0

    .line 1128
    .local v0, br:Ljava/io/BufferedReader;
    :try_start_1f
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/FileReader;

    invoke-direct {v9, v8}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_29
    .catchall {:try_start_1f .. :try_end_29} :catchall_a7
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_29} :catch_7c

    .line 1134
    .end local v0           #br:Ljava/io/BufferedReader;
    .local v1, br:Ljava/io/BufferedReader;
    :try_start_29
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_74

    move-result-object v6

    .line 1138
    .local v6, s:Ljava/lang/String;
    if-eqz v1, :cond_c3

    .line 1140
    :try_start_2f
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_b7
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_32} :catch_ba

    .line 1141
    const/4 v0, 0x0

    .line 1145
    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    :goto_33
    :try_start_33
    const-string v9, ","

    invoke-virtual {v6, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_38
    .catchall {:try_start_33 .. :try_end_38} :catchall_a7
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_38} :catch_7c

    move-result-object v7

    .line 1146
    .local v7, tokens:[Ljava/lang/String;
    const/4 v4, 0x0

    .line 1150
    .local v4, idx:I
    add-int/lit8 v5, v4, 0x1

    .end local v4           #idx:I
    .local v5, idx:I
    :try_start_3c
    aget-object v9, v7, v4

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/android/settings/TSCalibration$MyView;->xscale:I
    :try_end_44
    .catchall {:try_start_3c .. :try_end_44} :catchall_a7
    .catch Ljava/lang/NumberFormatException; {:try_start_3c .. :try_end_44} :catch_94
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_44} :catch_7c

    .line 1151
    add-int/lit8 v4, v5, 0x1

    .end local v5           #idx:I
    .restart local v4       #idx:I
    :try_start_46
    aget-object v9, v7, v5

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/android/settings/TSCalibration$MyView;->xtrans:I
    :try_end_4e
    .catchall {:try_start_46 .. :try_end_4e} :catchall_a7
    .catch Ljava/lang/NumberFormatException; {:try_start_46 .. :try_end_4e} :catch_be
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_4e} :catch_7c

    .line 1152
    add-int/lit8 v5, v4, 0x1

    .end local v4           #idx:I
    .restart local v5       #idx:I
    :try_start_50
    aget-object v9, v7, v4

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/android/settings/TSCalibration$MyView;->yscale:I
    :try_end_58
    .catchall {:try_start_50 .. :try_end_58} :catchall_a7
    .catch Ljava/lang/NumberFormatException; {:try_start_50 .. :try_end_58} :catch_94
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_58} :catch_7c

    .line 1153
    add-int/lit8 v4, v5, 0x1

    .end local v5           #idx:I
    .restart local v4       #idx:I
    :try_start_5a
    aget-object v9, v7, v5

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/android/settings/TSCalibration$MyView;->ytrans:I
    :try_end_62
    .catchall {:try_start_5a .. :try_end_62} :catchall_a7
    .catch Ljava/lang/NumberFormatException; {:try_start_5a .. :try_end_62} :catch_be
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_62} :catch_7c

    .line 1154
    add-int/lit8 v5, v4, 0x1

    .end local v4           #idx:I
    .restart local v5       #idx:I
    :try_start_64
    aget-object v9, v7, v4

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/android/settings/TSCalibration$MyView;->scale_factor:I
    :try_end_6c
    .catchall {:try_start_64 .. :try_end_6c} :catchall_a7
    .catch Ljava/lang/NumberFormatException; {:try_start_64 .. :try_end_6c} :catch_94
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_6c} :catch_7c

    move v4, v5

    .line 1188
    .end local v5           #idx:I
    .restart local v4       #idx:I
    :goto_6d
    if-eqz v0, :cond_1d

    .line 1190
    :try_start_6f
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_72} :catch_af

    .line 1191
    const/4 v0, 0x0

    goto :goto_1d

    .line 1138
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v4           #idx:I
    .end local v6           #s:Ljava/lang/String;
    .end local v7           #tokens:[Ljava/lang/String;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :catchall_74
    move-exception v9

    if-eqz v1, :cond_c1

    .line 1140
    :try_start_77
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7a
    .catchall {:try_start_77 .. :try_end_7a} :catchall_b7
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_7a} :catch_ba

    .line 1141
    const/4 v0, 0x0

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    :goto_7b
    :try_start_7b
    throw v9
    :try_end_7c
    .catchall {:try_start_7b .. :try_end_7c} :catchall_a7
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_7c} :catch_7c

    .line 1172
    :catch_7c
    move-exception v9

    move-object v3, v9

    .line 1177
    .local v3, e:Ljava/lang/Exception;
    :goto_7e
    const/4 v9, 0x1

    :try_start_7f
    iput v9, p0, Lcom/android/settings/TSCalibration$MyView;->xscale:I

    .line 1178
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/settings/TSCalibration$MyView;->xtrans:I

    .line 1179
    const/4 v9, 0x1

    iput v9, p0, Lcom/android/settings/TSCalibration$MyView;->yscale:I

    .line 1180
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/settings/TSCalibration$MyView;->ytrans:I

    .line 1181
    const/4 v9, 0x1

    iput v9, p0, Lcom/android/settings/TSCalibration$MyView;->scale_factor:I
    :try_end_8d
    .catchall {:try_start_7f .. :try_end_8d} :catchall_a7

    .line 1188
    if-eqz v0, :cond_1d

    .line 1190
    :try_start_8f
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_92} :catch_b2

    .line 1191
    const/4 v0, 0x0

    goto :goto_1d

    .line 1156
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v5       #idx:I
    .restart local v6       #s:Ljava/lang/String;
    .restart local v7       #tokens:[Ljava/lang/String;
    :catch_94
    move-exception v9

    move-object v3, v9

    move v4, v5

    .line 1158
    .end local v5           #idx:I
    .local v3, e:Ljava/lang/NumberFormatException;
    .restart local v4       #idx:I
    :goto_97
    const/4 v9, 0x1

    :try_start_98
    iput v9, p0, Lcom/android/settings/TSCalibration$MyView;->xscale:I

    .line 1159
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/settings/TSCalibration$MyView;->xtrans:I

    .line 1160
    const/4 v9, 0x1

    iput v9, p0, Lcom/android/settings/TSCalibration$MyView;->yscale:I

    .line 1161
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/settings/TSCalibration$MyView;->ytrans:I

    .line 1162
    const/4 v9, 0x1

    iput v9, p0, Lcom/android/settings/TSCalibration$MyView;->scale_factor:I
    :try_end_a6
    .catchall {:try_start_98 .. :try_end_a6} :catchall_a7
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_a6} :catch_7c

    goto :goto_6d

    .line 1186
    .end local v3           #e:Ljava/lang/NumberFormatException;
    .end local v4           #idx:I
    .end local v6           #s:Ljava/lang/String;
    .end local v7           #tokens:[Ljava/lang/String;
    :catchall_a7
    move-exception v9

    .line 1188
    :goto_a8
    if-eqz v0, :cond_ae

    .line 1190
    :try_start_aa
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_ad
    .catch Ljava/lang/Exception; {:try_start_aa .. :try_end_ad} :catch_b5

    .line 1191
    const/4 v0, 0x0

    .line 1196
    :cond_ae
    :goto_ae
    throw v9

    .line 1194
    .restart local v4       #idx:I
    .restart local v6       #s:Ljava/lang/String;
    .restart local v7       #tokens:[Ljava/lang/String;
    :catch_af
    move-exception v9

    goto/16 :goto_1d

    .end local v4           #idx:I
    .end local v6           #s:Ljava/lang/String;
    .end local v7           #tokens:[Ljava/lang/String;
    .local v3, e:Ljava/lang/Exception;
    :catch_b2
    move-exception v9

    goto/16 :goto_1d

    .end local v3           #e:Ljava/lang/Exception;
    :catch_b5
    move-exception v10

    goto :goto_ae

    .line 1186
    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :catchall_b7
    move-exception v9

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_a8

    .line 1172
    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :catch_ba
    move-exception v9

    move-object v3, v9

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_7e

    .line 1156
    .restart local v4       #idx:I
    .restart local v6       #s:Ljava/lang/String;
    .restart local v7       #tokens:[Ljava/lang/String;
    :catch_be
    move-exception v9

    move-object v3, v9

    goto :goto_97

    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v4           #idx:I
    .end local v6           #s:Ljava/lang/String;
    .end local v7           #tokens:[Ljava/lang/String;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :cond_c1
    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_7b

    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v6       #s:Ljava/lang/String;
    :cond_c3
    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto/16 :goto_33
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 27
    .parameter "canvas"

    .prologue
    .line 281
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TSCalibration$MyView;->getMeasuredWidth()I

    move-result v24

    .line 282
    .local v24, width:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TSCalibration$MyView;->getMeasuredHeight()I

    move-result v15

    .line 284
    .local v15, height:I
    new-instance v20, Landroid/graphics/Path;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Path;-><init>()V

    .line 288
    .local v20, path:Landroid/graphics/Path;
    const/16 v5, 0x19

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/TSCalibration$MyView;->mStand:I

    .line 289
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->mStand:I

    move v5, v0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/TSCalibration$MyView;->x1_:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->mStand:I

    move v5, v0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/TSCalibration$MyView;->y1_:I

    .line 290
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->mStand:I

    move v5, v0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/TSCalibration$MyView;->x2_:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->mStand:I

    move v5, v0

    sub-int v5, v15, v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/TSCalibration$MyView;->y2_:I

    .line 291
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->mStand:I

    move v5, v0

    sub-int v5, v24, v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/TSCalibration$MyView;->x3_:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->mStand:I

    move v5, v0

    sub-int v5, v15, v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/TSCalibration$MyView;->y3_:I

    .line 292
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->mStand:I

    move v5, v0

    sub-int v5, v24, v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/TSCalibration$MyView;->x4_:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->mStand:I

    move v5, v0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/TSCalibration$MyView;->y4_:I

    .line 293
    div-int/lit8 v5, v24, 0x2

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/TSCalibration$MyView;->x5_:I

    div-int/lit8 v5, v15, 0x2

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/TSCalibration$MyView;->y5_:I

    .line 296
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->mCurrentState:I

    move v5, v0

    packed-switch v5, :pswitch_data_ccc

    .line 514
    :goto_82
    :pswitch_82
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/TSCalibration$MyView;->bCheckCalibration:Z

    move v5, v0

    if-eqz v5, :cond_ae

    .line 536
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->tempPaint:Landroid/graphics/Paint;

    move-object v5, v0

    const v6, -0xffff01

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 538
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->mCurrentState:I

    move v5, v0

    packed-switch v5, :pswitch_data_ce6

    .line 572
    :goto_9c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->tempPaint:Landroid/graphics/Paint;

    move-object v5, v0

    const/high16 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 574
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->mCurrentState:I

    move v5, v0

    packed-switch v5, :pswitch_data_d00

    .line 601
    :cond_ae
    :goto_ae
    :pswitch_ae
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/TSCalibration$MyView;->mCurDown:Z

    move v5, v0

    if-eqz v5, :cond_124

    .line 603
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->mCurPressure:F

    move v5, v0

    const/high16 v6, 0x437f

    mul-float/2addr v5, v6

    move v0, v5

    float-to-int v0, v0

    move/from16 v21, v0

    .line 605
    .local v21, pressureLevel:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    const/16 v6, 0xff

    const/16 v7, 0x80

    const/16 v8, 0xff

    sub-int v8, v8, v21

    move-object v0, v5

    move v1, v6

    move/from16 v2, v21

    move v3, v7

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 618
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->printCurX:I

    move v5, v0

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->printCurY:I

    move v6, v0

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->mPaint:Landroid/graphics/Paint;

    move-object v7, v0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 619
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->printCurX:I

    move v5, v0

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->printCurY:I

    move v6, v0

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->mCurWidth:I

    move v7, v0

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->mPaint:Landroid/graphics/Paint;

    move-object v8, v0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 621
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->printCurX:I

    move v5, v0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/TSCalibration$MyView;->printLastX:I

    .line 622
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->printCurY:I

    move v5, v0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/TSCalibration$MyView;->printLastY:I

    .line 639
    .end local v21           #pressureLevel:I
    :cond_124
    const-wide/16 v9, 0x64

    :try_start_126
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_129
    .catch Ljava/lang/InterruptedException; {:try_start_126 .. :try_end_129} :catch_cc8

    .line 645
    :goto_129
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->mCurrentState:I

    move v5, v0

    const/4 v6, 0x5

    if-ne v5, v6, :cond_1bf

    .line 647
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/TSCalibration$MyView;->calibrate()Z

    move-result v5

    if-eqz v5, :cond_c71

    .line 649
    const/4 v5, -0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/TSCalibration$MyView;->mCurrentState:I

    .line 650
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/TSCalibration$MyView;->mFirstState:I

    .line 654
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/TSCalibration$MyView;->bCheckCalibration:Z

    move v5, v0

    if-nez v5, :cond_c1f

    .line 658
    const/4 v5, 0x2

    move v0, v5

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    .line 659
    .local v22, strEntries:[Ljava/lang/String;
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->this$0:Lcom/android/settings/TSCalibration;

    move-object v6, v0

    const v7, 0x7f080448

    invoke-virtual {v6, v7}, Lcom/android/settings/TSCalibration;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v22, v5

    .line 660
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->this$0:Lcom/android/settings/TSCalibration;

    move-object v6, v0

    const v7, 0x7f080449

    invoke-virtual {v6, v7}, Lcom/android/settings/TSCalibration;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v22, v5

    .line 662
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/TSCalibration$MyView;->nSelectList:I

    .line 664
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TSCalibration$MyView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->this$0:Lcom/android/settings/TSCalibration;

    move-object v6, v0

    const v7, 0x7f08044a

    invoke-virtual {v6, v7}, Lcom/android/settings/TSCalibration;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const/4 v6, 0x0

    new-instance v7, Lcom/android/settings/TSCalibration$MyView$3;

    move-object v0, v7

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/TSCalibration$MyView$3;-><init>(Lcom/android/settings/TSCalibration$MyView;)V

    move-object v0, v5

    move-object/from16 v1, v22

    move v2, v6

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x104000a

    new-instance v7, Lcom/android/settings/TSCalibration$MyView$2;

    move-object v0, v7

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/TSCalibration$MyView$2;-><init>(Lcom/android/settings/TSCalibration$MyView;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const/high16 v6, 0x104

    new-instance v7, Lcom/android/settings/TSCalibration$MyView$1;

    move-object v0, v7

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/TSCalibration$MyView$1;-><init>(Lcom/android/settings/TSCalibration$MyView;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 788
    .end local v22           #strEntries:[Ljava/lang/String;
    :cond_1bf
    :goto_1bf
    return-void

    .line 299
    :pswitch_1c0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->mFirstState:I

    move v5, v0

    if-nez v5, :cond_25a

    .line 309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->this$0:Lcom/android/settings/TSCalibration;

    move-object v5, v0

    const v6, 0x7f08044d

    invoke-virtual {v5, v6}, Lcom/android/settings/TSCalibration;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 311
    .local v6, strTemp:Ljava/lang/String;
    const/16 v17, 0x0

    .local v17, nIndex:I
    const/16 v16, 0x0

    .line 312
    .local v16, nCnt:I
    const/4 v7, 0x0

    .local v7, nStart:I
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    .line 313
    .local v8, nEnd:I
    const/16 v18, 0x96

    .line 315
    .local v18, nMeasureLength:I
    :goto_1de
    add-int v5, v7, v17

    if-ge v5, v8, :cond_254

    .line 317
    add-int v7, v7, v17

    .line 319
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->mMessageTextPaint:Landroid/graphics/Paint;

    move-object v5, v0

    const/4 v9, 0x1

    move/from16 v0, v18

    int-to-float v0, v0

    move v10, v0

    const/4 v11, 0x0

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Paint;->breakText(Ljava/lang/CharSequence;IIZF[F)I

    move-result v17

    .line 321
    add-int v5, v7, v17

    invoke-virtual {v6, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    .line 323
    .local v23, strTemp2:Ljava/lang/String;
    add-int v5, v7, v17

    if-ge v5, v8, :cond_22a

    .line 325
    add-int v5, v7, v17

    add-int v9, v7, v17

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v6, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v9, " "

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_251

    .line 327
    const-string v5, " "

    move-object/from16 v0, v23

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v19

    .line 329
    .local v19, nTemp:I
    const/4 v5, -0x1

    move/from16 v0, v19

    move v1, v5

    if-eq v0, v1, :cond_22a

    .line 331
    const/4 v5, 0x0

    move-object/from16 v0, v23

    move v1, v5

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    .line 333
    add-int/lit8 v17, v19, 0x1

    .line 342
    .end local v19           #nTemp:I
    :cond_22a
    :goto_22a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->x5_:I

    move v5, v0

    const/16 v9, 0x4b

    sub-int/2addr v5, v9

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->y5_:I

    move v9, v0

    const/16 v10, 0x64

    sub-int/2addr v9, v10

    mul-int/lit8 v10, v16, 0x11

    add-int/2addr v9, v10

    int-to-float v9, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->mMessageTextPaint:Landroid/graphics/Paint;

    move-object v10, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move v2, v5

    move v3, v9

    move-object v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 344
    add-int/lit8 v16, v16, 0x1

    goto :goto_1de

    .line 338
    :cond_251
    add-int/lit8 v17, v17, 0x1

    goto :goto_22a

    .line 348
    .end local v23           #strTemp2:Ljava/lang/String;
    :cond_254
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/TSCalibration$MyView;->mFirstState:I

    .line 351
    .end local v6           #strTemp:Ljava/lang/String;
    .end local v7           #nStart:I
    .end local v8           #nEnd:I
    .end local v16           #nCnt:I
    .end local v17           #nIndex:I
    .end local v18           #nMeasureLength:I
    :cond_25a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->x5_:I

    move v5, v0

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->y5_:I

    move v6, v0

    int-to-float v6, v6

    const/high16 v7, 0x4000

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->mCirclePaint:Landroid/graphics/Paint;

    move-object v8, v0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 353
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->x5_:I

    move v5, v0

    const/16 v6, 0x14

    sub-int/2addr v5, v6

    int-to-float v10, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->y5_:I

    move v5, v0

    int-to-float v11, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->x5_:I

    move v5, v0

    const/16 v6, 0xa

    sub-int/2addr v5, v6

    int-to-float v12, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->y5_:I

    move v5, v0

    int-to-float v13, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->mCrossPaint:Landroid/graphics/Paint;

    move-object v14, v0

    move-object/from16 v9, p1

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 354
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->x5_:I

    move v5, v0

    add-int/lit8 v5, v5, 0xa

    int-to-float v10, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->y5_:I

    move v5, v0

    int-to-float v11, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->x5_:I

    move v5, v0

    add-int/lit8 v5, v5, 0x14

    int-to-float v12, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->y5_:I

    move v5, v0

    int-to-float v13, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->mCrossPaint:Landroid/graphics/Paint;

    move-object v14, v0

    move-object/from16 v9, p1

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 355
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->x5_:I

    move v5, v0

    int-to-float v10, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->y5_:I

    move v5, v0

    const/16 v6, 0x14

    sub-int/2addr v5, v6

    int-to-float v11, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->x5_:I

    move v5, v0

    int-to-float v12, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->y5_:I

    move v5, v0

    const/16 v6, 0xa

    sub-int/2addr v5, v6

    int-to-float v13, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->mCrossPaint:Landroid/graphics/Paint;

    move-object v14, v0

    move-object/from16 v9, p1

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 356
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->x5_:I

    move v5, v0

    int-to-float v10, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->y5_:I

    move v5, v0

    add-int/lit8 v5, v5, 0xa

    int-to-float v11, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->x5_:I

    move v5, v0

    int-to-float v12, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->y5_:I

    move v5, v0

    add-int/lit8 v5, v5, 0x14

    int-to-float v13, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->mCrossPaint:Landroid/graphics/Paint;

    move-object v14, v0

    move-object/from16 v9, p1

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 358
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->x5_:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->y5_:I

    move v6, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move v2, v5

    move v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/TSCalibration$MyView;->drawLineFill(Landroid/graphics/Path;II)V

    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->mCrossPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->mCrossPaint:Landroid/graphics/Paint;

    move-object v5, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_82

    .line 366
    :pswitch_33e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->x1_:I

    move v5, v0

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->y1_:I

    move v6, v0

    int-to-float v6, v6

    const/high16 v7, 0x4000

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->mCirclePaint:Landroid/graphics/Paint;

    move-object v8, v0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 368
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->x1_:I

    move v5, v0

    const/16 v6, 0x14

    sub-int/2addr v5, v6

    int-to-float v10, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->y1_:I

    move v5, v0

    int-to-float v11, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->x1_:I

    move v5, v0

    const/16 v6, 0xa

    sub-int/2addr v5, v6

    int-to-float v12, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->y1_:I

    move v5, v0

    int-to-float v13, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->mCrossPaint:Landroid/graphics/Paint;

    move-object v14, v0

    move-object/from16 v9, p1

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 369
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->x1_:I

    move v5, v0

    add-int/lit8 v5, v5, 0xa

    int-to-float v10, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->y1_:I

    move v5, v0

    int-to-float v11, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->x1_:I

    move v5, v0

    add-int/lit8 v5, v5, 0x14

    int-to-float v12, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->y1_:I

    move v5, v0

    int-to-float v13, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->mCrossPaint:Landroid/graphics/Paint;

    move-object v14, v0

    move-object/from16 v9, p1

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 370
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->x1_:I

    move v5, v0

    int-to-float v10, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->y1_:I

    move v5, v0

    const/16 v6, 0x14

    sub-int/2addr v5, v6

    int-to-float v11, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->x1_:I

    move v5, v0

    int-to-float v12, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->y1_:I

    move v5, v0

    const/16 v6, 0xa

    sub-int/2addr v5, v6

    int-to-float v13, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->mCrossPaint:Landroid/graphics/Paint;

    move-object v14, v0

    move-object/from16 v9, p1

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 371
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->x1_:I

    move v5, v0

    int-to-float v10, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->y1_:I

    move v5, v0

    add-int/lit8 v5, v5, 0xa

    int-to-float v11, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->x1_:I

    move v5, v0

    int-to-float v12, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->y1_:I

    move v5, v0

    add-int/lit8 v5, v5, 0x14

    int-to-float v13, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->mCrossPaint:Landroid/graphics/Paint;

    move-object v14, v0

    move-object/from16 v9, p1

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 374
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->x1_:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->y1_:I

    move v6, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move v2, v5

    move v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/TSCalibration$MyView;->drawLineFill(Landroid/graphics/Path;II)V

    .line 375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->mCrossPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->mCrossPaint:Landroid/graphics/Paint;

    move-object v5, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_82

    .line 381
    :pswitch_422
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->x2_:I

    move v5, v0

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->y2_:I

    move v6, v0

    int-to-float v6, v6

    const/high16 v7, 0x4000

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->mCirclePaint:Landroid/graphics/Paint;

    move-object v8, v0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 383
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->x2_:I

    move v5, v0

    const/16 v6, 0x14

    sub-int/2addr v5, v6

    int-to-float v10, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->y2_:I

    move v5, v0

    int-to-float v11, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->x2_:I

    move v5, v0

    const/16 v6, 0xa

    sub-int/2addr v5, v6

    int-to-float v12, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->y2_:I

    move v5, v0

    int-to-float v13, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->mCrossPaint:Landroid/graphics/Paint;

    move-object v14, v0

    move-object/from16 v9, p1

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 384
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->x2_:I

    move v5, v0

    add-int/lit8 v5, v5, 0xa

    int-to-float v10, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->y2_:I

    move v5, v0

    int-to-float v11, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->x2_:I

    move v5, v0

    add-int/lit8 v5, v5, 0x14

    int-to-float v12, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->y2_:I

    move v5, v0

    int-to-float v13, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->mCrossPaint:Landroid/graphics/Paint;

    move-object v14, v0

    move-object/from16 v9, p1

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 385
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->x2_:I

    move v5, v0

    int-to-float v10, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->y2_:I

    move v5, v0

    const/16 v6, 0x14

    sub-int/2addr v5, v6

    int-to-float v11, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->x2_:I

    move v5, v0

    int-to-float v12, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->y2_:I

    move v5, v0

    const/16 v6, 0xa

    sub-int/2addr v5, v6

    int-to-float v13, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->mCrossPaint:Landroid/graphics/Paint;

    move-object v14, v0

    move-object/from16 v9, p1

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 386
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->x2_:I

    move v5, v0

    int-to-float v10, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->y2_:I

    move v5, v0

    add-int/lit8 v5, v5, 0xa

    int-to-float v11, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->x2_:I

    move v5, v0

    int-to-float v12, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->y2_:I

    move v5, v0

    add-int/lit8 v5, v5, 0x14

    int-to-float v13, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->mCrossPaint:Landroid/graphics/Paint;

    move-object v14, v0

    move-object/from16 v9, p1

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 388
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->x2_:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->y2_:I

    move v6, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move v2, v5

    move v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/TSCalibration$MyView;->drawLineFill(Landroid/graphics/Path;II)V

    .line 389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->mCrossPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->mCrossPaint:Landroid/graphics/Paint;

    move-object v5, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_82

    .line 395
    :pswitch_506
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->x3_:I

    move v5, v0

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->y3_:I

    move v6, v0

    int-to-float v6, v6

    const/high16 v7, 0x4000

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->mCirclePaint:Landroid/graphics/Paint;

    move-object v8, v0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 397
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->x3_:I

    move v5, v0

    const/16 v6, 0x14

    sub-int/2addr v5, v6

    int-to-float v10, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->y3_:I

    move v5, v0

    int-to-float v11, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->x3_:I

    move v5, v0

    const/16 v6, 0xa

    sub-int/2addr v5, v6

    int-to-float v12, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->y3_:I

    move v5, v0

    int-to-float v13, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->mCrossPaint:Landroid/graphics/Paint;

    move-object v14, v0

    move-object/from16 v9, p1

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 398
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->x3_:I

    move v5, v0

    add-int/lit8 v5, v5, 0xa

    int-to-float v10, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->y3_:I

    move v5, v0

    int-to-float v11, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->x3_:I

    move v5, v0

    add-int/lit8 v5, v5, 0x14

    int-to-float v12, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->y3_:I

    move v5, v0

    int-to-float v13, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->mCrossPaint:Landroid/graphics/Paint;

    move-object v14, v0

    move-object/from16 v9, p1

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 399
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->x3_:I

    move v5, v0

    int-to-float v10, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->y3_:I

    move v5, v0

    const/16 v6, 0x14

    sub-int/2addr v5, v6

    int-to-float v11, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->x3_:I

    move v5, v0

    int-to-float v12, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->y3_:I

    move v5, v0

    const/16 v6, 0xa

    sub-int/2addr v5, v6

    int-to-float v13, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->mCrossPaint:Landroid/graphics/Paint;

    move-object v14, v0

    move-object/from16 v9, p1

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 400
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->x3_:I

    move v5, v0

    int-to-float v10, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->y3_:I

    move v5, v0

    add-int/lit8 v5, v5, 0xa

    int-to-float v11, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->x3_:I

    move v5, v0

    int-to-float v12, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->y3_:I

    move v5, v0

    add-int/lit8 v5, v5, 0x14

    int-to-float v13, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->mCrossPaint:Landroid/graphics/Paint;

    move-object v14, v0

    move-object/from16 v9, p1

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 402
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->x3_:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->y3_:I

    move v6, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move v2, v5

    move v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/TSCalibration$MyView;->drawLineFill(Landroid/graphics/Path;II)V

    .line 403
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->mCrossPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 404
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->mCrossPaint:Landroid/graphics/Paint;

    move-object v5, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_82

    .line 409
    :pswitch_5ea
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->x4_:I

    move v5, v0

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->y4_:I

    move v6, v0

    int-to-float v6, v6

    const/high16 v7, 0x4000

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->mCirclePaint:Landroid/graphics/Paint;

    move-object v8, v0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 411
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->x4_:I

    move v5, v0

    const/16 v6, 0x14

    sub-int/2addr v5, v6

    int-to-float v10, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->y4_:I

    move v5, v0

    int-to-float v11, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->x4_:I

    move v5, v0

    const/16 v6, 0xa

    sub-int/2addr v5, v6

    int-to-float v12, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->y4_:I

    move v5, v0

    int-to-float v13, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->mCrossPaint:Landroid/graphics/Paint;

    move-object v14, v0

    move-object/from16 v9, p1

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 412
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->x4_:I

    move v5, v0

    add-int/lit8 v5, v5, 0xa

    int-to-float v10, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->y4_:I

    move v5, v0

    int-to-float v11, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->x4_:I

    move v5, v0

    add-int/lit8 v5, v5, 0x14

    int-to-float v12, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->y4_:I

    move v5, v0

    int-to-float v13, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->mCrossPaint:Landroid/graphics/Paint;

    move-object v14, v0

    move-object/from16 v9, p1

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 413
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->x4_:I

    move v5, v0

    int-to-float v10, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->y4_:I

    move v5, v0

    const/16 v6, 0x14

    sub-int/2addr v5, v6

    int-to-float v11, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->x4_:I

    move v5, v0

    int-to-float v12, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->y4_:I

    move v5, v0

    const/16 v6, 0xa

    sub-int/2addr v5, v6

    int-to-float v13, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->mCrossPaint:Landroid/graphics/Paint;

    move-object v14, v0

    move-object/from16 v9, p1

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 414
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->x4_:I

    move v5, v0

    int-to-float v10, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->y4_:I

    move v5, v0

    add-int/lit8 v5, v5, 0xa

    int-to-float v11, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->x4_:I

    move v5, v0

    int-to-float v12, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->y4_:I

    move v5, v0

    add-int/lit8 v5, v5, 0x14

    int-to-float v13, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->mCrossPaint:Landroid/graphics/Paint;

    move-object v14, v0

    move-object/from16 v9, p1

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 416
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->x4_:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->y4_:I

    move v6, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move v2, v5

    move v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/TSCalibration$MyView;->drawLineFill(Landroid/graphics/Path;II)V

    .line 417
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->mCrossPaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 418
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->mCrossPaint:Landroid/graphics/Paint;

    move-object v5, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_82

    .line 430
    :pswitch_6ce
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->this$0:Lcom/android/settings/TSCalibration;

    move-object v5, v0

    const v6, 0x7f08044e

    invoke-virtual {v5, v6}, Lcom/android/settings/TSCalibration;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->x5_:I

    move v6, v0

    const/16 v7, 0x32

    sub-int/2addr v6, v7

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->y5_:I

    move v7, v0

    const/16 v8, 0x2d

    sub-int/2addr v7, v8

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->mMessageTextPaint:Landroid/graphics/Paint;

    move-object v8, v0

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 432
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->this$0:Lcom/android/settings/TSCalibration;

    move-object v5, v0

    const v6, 0x7f08044f

    invoke-virtual {v5, v6}, Lcom/android/settings/TSCalibration;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->x5_:I

    move v6, v0

    const/16 v7, 0x32

    sub-int/2addr v6, v7

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->y5_:I

    move v7, v0

    const/16 v8, 0x1e

    sub-int/2addr v7, v8

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->mMessageTextPaint:Landroid/graphics/Paint;

    move-object v8, v0

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 436
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/TSCalibration$MyView;->mCurrentState:I

    .line 437
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/TSCalibration$MyView;->mCurDown:Z

    goto/16 :goto_82

    .line 448
    :pswitch_734
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->this$0:Lcom/android/settings/TSCalibration;

    move-object v5, v0

    const v6, 0x7f08044e

    invoke-virtual {v5, v6}, Lcom/android/settings/TSCalibration;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->x5_:I

    move v6, v0

    const/16 v7, 0x32

    sub-int/2addr v6, v7

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->y5_:I

    move v7, v0

    const/16 v8, 0x2d

    sub-int/2addr v7, v8

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->mMessageTextPaint:Landroid/graphics/Paint;

    move-object v8, v0

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->this$0:Lcom/android/settings/TSCalibration;

    move-object v5, v0

    const v6, 0x7f08044f

    invoke-virtual {v5, v6}, Lcom/android/settings/TSCalibration;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->x5_:I

    move v6, v0

    const/16 v7, 0x32

    sub-int/2addr v6, v7

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->y5_:I

    move v7, v0

    const/16 v8, 0x1e

    sub-int/2addr v7, v8

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->mMessageTextPaint:Landroid/graphics/Paint;

    move-object v8, v0

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 455
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/TSCalibration$MyView;->mCurrentState:I

    .line 456
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/TSCalibration$MyView;->mCurDown:Z

    goto/16 :goto_82

    .line 467
    :pswitch_79a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->this$0:Lcom/android/settings/TSCalibration;

    move-object v5, v0

    const v6, 0x7f08044e

    invoke-virtual {v5, v6}, Lcom/android/settings/TSCalibration;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->x5_:I

    move v6, v0

    const/16 v7, 0x32

    sub-int/2addr v6, v7

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->y5_:I

    move v7, v0

    const/16 v8, 0x2d

    sub-int/2addr v7, v8

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->mMessageTextPaint:Landroid/graphics/Paint;

    move-object v8, v0

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 469
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->this$0:Lcom/android/settings/TSCalibration;

    move-object v5, v0

    const v6, 0x7f08044f

    invoke-virtual {v5, v6}, Lcom/android/settings/TSCalibration;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->x5_:I

    move v6, v0

    const/16 v7, 0x32

    sub-int/2addr v6, v7

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->y5_:I

    move v7, v0

    const/16 v8, 0x1e

    sub-int/2addr v7, v8

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->mMessageTextPaint:Landroid/graphics/Paint;

    move-object v8, v0

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 473
    const/4 v5, 0x2

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/TSCalibration$MyView;->mCurrentState:I

    .line 474
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/TSCalibration$MyView;->mCurDown:Z

    goto/16 :goto_82

    .line 485
    :pswitch_800
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->this$0:Lcom/android/settings/TSCalibration;

    move-object v5, v0

    const v6, 0x7f08044e

    invoke-virtual {v5, v6}, Lcom/android/settings/TSCalibration;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->x5_:I

    move v6, v0

    const/16 v7, 0x32

    sub-int/2addr v6, v7

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->y5_:I

    move v7, v0

    const/16 v8, 0x2d

    sub-int/2addr v7, v8

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->mMessageTextPaint:Landroid/graphics/Paint;

    move-object v8, v0

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 487
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->this$0:Lcom/android/settings/TSCalibration;

    move-object v5, v0

    const v6, 0x7f08044f

    invoke-virtual {v5, v6}, Lcom/android/settings/TSCalibration;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->x5_:I

    move v6, v0

    const/16 v7, 0x32

    sub-int/2addr v6, v7

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->y5_:I

    move v7, v0

    const/16 v8, 0x1e

    sub-int/2addr v7, v8

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->mMessageTextPaint:Landroid/graphics/Paint;

    move-object v8, v0

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 491
    const/4 v5, 0x3

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/TSCalibration$MyView;->mCurrentState:I

    .line 492
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/TSCalibration$MyView;->mCurDown:Z

    goto/16 :goto_82

    .line 503
    :pswitch_866
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->this$0:Lcom/android/settings/TSCalibration;

    move-object v5, v0

    const v6, 0x7f08044e

    invoke-virtual {v5, v6}, Lcom/android/settings/TSCalibration;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->x5_:I

    move v6, v0

    const/16 v7, 0x32

    sub-int/2addr v6, v7

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->y5_:I

    move v7, v0

    const/16 v8, 0x2d

    sub-int/2addr v7, v8

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->mMessageTextPaint:Landroid/graphics/Paint;

    move-object v8, v0

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 505
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->this$0:Lcom/android/settings/TSCalibration;

    move-object v5, v0

    const v6, 0x7f08044f

    invoke-virtual {v5, v6}, Lcom/android/settings/TSCalibration;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->x5_:I

    move v6, v0

    const/16 v7, 0x32

    sub-int/2addr v6, v7

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/TSCalibration$MyView;->y5_:I

    move v7, v0

    const/16 v8, 0x1e

    sub-int/2addr v7, v8

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->mMessageTextPaint:Landroid/graphics/Paint;

    move-object v8, v0

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 509
    const/4 v5, 0x4

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/TSCalibration$MyView;->mCurrentState:I

    .line 510
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/TSCalibration$MyView;->mCurDown:Z

    goto/16 :goto_82

    .line 542
    :pswitch_8cc
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->tempCurX:[[I

    move-object v5, v0

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const/4 v6, 0x4

    aget v5, v5, v6

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->tempCurY:[[I

    move-object v6, v0

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const/4 v7, 0x4

    aget v6, v6, v7

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->tempPaint:Landroid/graphics/Paint;

    move-object v7, v0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 543
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->tempCurX:[[I

    move-object v5, v0

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const/4 v6, 0x4

    aget v5, v5, v6

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->tempCurY:[[I

    move-object v6, v0

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const/4 v7, 0x4

    aget v6, v6, v7

    int-to-float v6, v6

    const/high16 v7, 0x4000

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->tempPaint:Landroid/graphics/Paint;

    move-object v8, v0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 547
    :pswitch_919
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->tempCurX:[[I

    move-object v5, v0

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/4 v6, 0x4

    aget v5, v5, v6

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->tempCurY:[[I

    move-object v6, v0

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/4 v7, 0x4

    aget v6, v6, v7

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->tempPaint:Landroid/graphics/Paint;

    move-object v7, v0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 548
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->tempCurX:[[I

    move-object v5, v0

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/4 v6, 0x4

    aget v5, v5, v6

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->tempCurY:[[I

    move-object v6, v0

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/4 v7, 0x4

    aget v6, v6, v7

    int-to-float v6, v6

    const/high16 v7, 0x4000

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->tempPaint:Landroid/graphics/Paint;

    move-object v8, v0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 552
    :pswitch_966
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->tempCurX:[[I

    move-object v5, v0

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/4 v6, 0x3

    aget v5, v5, v6

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->tempCurY:[[I

    move-object v6, v0

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/4 v7, 0x3

    aget v6, v6, v7

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->tempPaint:Landroid/graphics/Paint;

    move-object v7, v0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 553
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->tempCurX:[[I

    move-object v5, v0

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/4 v6, 0x3

    aget v5, v5, v6

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->tempCurY:[[I

    move-object v6, v0

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/4 v7, 0x3

    aget v6, v6, v7

    int-to-float v6, v6

    const/high16 v7, 0x4000

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->tempPaint:Landroid/graphics/Paint;

    move-object v8, v0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 557
    :pswitch_9b3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->tempCurX:[[I

    move-object v5, v0

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/4 v6, 0x2

    aget v5, v5, v6

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->tempCurY:[[I

    move-object v6, v0

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/4 v7, 0x2

    aget v6, v6, v7

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->tempPaint:Landroid/graphics/Paint;

    move-object v7, v0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 558
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->tempCurX:[[I

    move-object v5, v0

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/4 v6, 0x2

    aget v5, v5, v6

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->tempCurY:[[I

    move-object v6, v0

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/4 v7, 0x2

    aget v6, v6, v7

    int-to-float v6, v6

    const/high16 v7, 0x4000

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->tempPaint:Landroid/graphics/Paint;

    move-object v8, v0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 562
    :pswitch_a00
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->tempCurX:[[I

    move-object v5, v0

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/4 v6, 0x1

    aget v5, v5, v6

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->tempCurY:[[I

    move-object v6, v0

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/4 v7, 0x1

    aget v6, v6, v7

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->tempPaint:Landroid/graphics/Paint;

    move-object v7, v0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 563
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->tempCurX:[[I

    move-object v5, v0

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/4 v6, 0x1

    aget v5, v5, v6

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->tempCurY:[[I

    move-object v6, v0

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/4 v7, 0x1

    aget v6, v6, v7

    int-to-float v6, v6

    const/high16 v7, 0x4000

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->tempPaint:Landroid/graphics/Paint;

    move-object v8, v0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 567
    :pswitch_a4d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->tempCurX:[[I

    move-object v5, v0

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/4 v6, 0x0

    aget v5, v5, v6

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->tempCurY:[[I

    move-object v6, v0

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/4 v7, 0x0

    aget v6, v6, v7

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->tempPaint:Landroid/graphics/Paint;

    move-object v7, v0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 568
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->tempCurX:[[I

    move-object v5, v0

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/4 v6, 0x0

    aget v5, v5, v6

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->tempCurY:[[I

    move-object v6, v0

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/4 v7, 0x0

    aget v6, v6, v7

    int-to-float v6, v6

    const/high16 v7, 0x4000

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->tempPaint:Landroid/graphics/Paint;

    move-object v8, v0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_9c

    .line 577
    :pswitch_a9c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->tempCurX:[[I

    move-object v5, v0

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const/4 v6, 0x4

    aget v5, v5, v6

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->tempCurY:[[I

    move-object v6, v0

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const/4 v7, 0x4

    aget v6, v6, v7

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->tempPaint:Landroid/graphics/Paint;

    move-object v7, v0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 578
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->tempCurX:[[I

    move-object v5, v0

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const/4 v6, 0x4

    aget v5, v5, v6

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->tempCurY:[[I

    move-object v6, v0

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const/4 v7, 0x4

    aget v6, v6, v7

    int-to-float v6, v6

    const/high16 v7, 0x4000

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->tempPaint:Landroid/graphics/Paint;

    move-object v8, v0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 581
    :pswitch_ae9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->tempCurX:[[I

    move-object v5, v0

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const/4 v6, 0x3

    aget v5, v5, v6

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->tempCurY:[[I

    move-object v6, v0

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const/4 v7, 0x3

    aget v6, v6, v7

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->tempPaint:Landroid/graphics/Paint;

    move-object v7, v0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 582
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->tempCurX:[[I

    move-object v5, v0

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const/4 v6, 0x3

    aget v5, v5, v6

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->tempCurY:[[I

    move-object v6, v0

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const/4 v7, 0x3

    aget v6, v6, v7

    int-to-float v6, v6

    const/high16 v7, 0x4000

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->tempPaint:Landroid/graphics/Paint;

    move-object v8, v0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 585
    :pswitch_b36
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->tempCurX:[[I

    move-object v5, v0

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const/4 v6, 0x2

    aget v5, v5, v6

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->tempCurY:[[I

    move-object v6, v0

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const/4 v7, 0x2

    aget v6, v6, v7

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->tempPaint:Landroid/graphics/Paint;

    move-object v7, v0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 586
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->tempCurX:[[I

    move-object v5, v0

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const/4 v6, 0x2

    aget v5, v5, v6

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->tempCurY:[[I

    move-object v6, v0

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const/4 v7, 0x2

    aget v6, v6, v7

    int-to-float v6, v6

    const/high16 v7, 0x4000

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->tempPaint:Landroid/graphics/Paint;

    move-object v8, v0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 589
    :pswitch_b83
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->tempCurX:[[I

    move-object v5, v0

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const/4 v6, 0x1

    aget v5, v5, v6

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->tempCurY:[[I

    move-object v6, v0

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const/4 v7, 0x1

    aget v6, v6, v7

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->tempPaint:Landroid/graphics/Paint;

    move-object v7, v0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 590
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->tempCurX:[[I

    move-object v5, v0

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const/4 v6, 0x1

    aget v5, v5, v6

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->tempCurY:[[I

    move-object v6, v0

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const/4 v7, 0x1

    aget v6, v6, v7

    int-to-float v6, v6

    const/high16 v7, 0x4000

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->tempPaint:Landroid/graphics/Paint;

    move-object v8, v0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 593
    :pswitch_bd0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->tempCurX:[[I

    move-object v5, v0

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const/4 v6, 0x0

    aget v5, v5, v6

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->tempCurY:[[I

    move-object v6, v0

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const/4 v7, 0x0

    aget v6, v6, v7

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->tempPaint:Landroid/graphics/Paint;

    move-object v7, v0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 594
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->tempCurX:[[I

    move-object v5, v0

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const/4 v6, 0x0

    aget v5, v5, v6

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->tempCurY:[[I

    move-object v6, v0

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const/4 v7, 0x0

    aget v6, v6, v7

    int-to-float v6, v6

    const/high16 v7, 0x4000

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->tempPaint:Landroid/graphics/Paint;

    move-object v8, v0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_ae

    .line 727
    :cond_c1f
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TSCalibration$MyView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x1080027

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->this$0:Lcom/android/settings/TSCalibration;

    move-object v6, v0

    const v7, 0x7f08044b

    invoke-virtual {v6, v7}, Lcom/android/settings/TSCalibration;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->this$0:Lcom/android/settings/TSCalibration;

    move-object v6, v0

    const v7, 0x7f08044c

    invoke-virtual {v6, v7}, Lcom/android/settings/TSCalibration;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x104000a

    new-instance v7, Lcom/android/settings/TSCalibration$MyView$5;

    move-object v0, v7

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/TSCalibration$MyView$5;-><init>(Lcom/android/settings/TSCalibration$MyView;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const/high16 v6, 0x104

    new-instance v7, Lcom/android/settings/TSCalibration$MyView$4;

    move-object v0, v7

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/TSCalibration$MyView$4;-><init>(Lcom/android/settings/TSCalibration$MyView;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1bf

    .line 764
    :cond_c71
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/TSCalibration$MyView;->mCurrentState:I

    .line 765
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/TSCalibration$MyView;->mCalComplete:Z

    .line 766
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/TSCalibration$MyView;->bCheckCalibration:Z

    .line 779
    new-instance v5, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->this$0:Lcom/android/settings/TSCalibration;

    move-object v6, v0

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->this$0:Lcom/android/settings/TSCalibration;

    move-object v6, v0

    const v7, 0x7f080451

    invoke-virtual {v6, v7}, Lcom/android/settings/TSCalibration;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->this$0:Lcom/android/settings/TSCalibration;

    move-object v6, v0

    const v7, 0x7f080452

    invoke-virtual {v6, v7}, Lcom/android/settings/TSCalibration;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TSCalibration$MyView;->this$0:Lcom/android/settings/TSCalibration;

    move-object v6, v0

    const v7, 0x104000a

    invoke-virtual {v6, v7}, Lcom/android/settings/TSCalibration;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1bf

    .line 641
    :catch_cc8
    move-exception v5

    goto/16 :goto_129

    .line 296
    nop

    :pswitch_data_ccc
    .packed-switch 0x0
        :pswitch_1c0
        :pswitch_33e
        :pswitch_422
        :pswitch_506
        :pswitch_5ea
        :pswitch_82
        :pswitch_6ce
        :pswitch_734
        :pswitch_79a
        :pswitch_800
        :pswitch_866
    .end packed-switch

    .line 538
    :pswitch_data_ce6
    .packed-switch 0x0
        :pswitch_a4d
        :pswitch_a00
        :pswitch_9b3
        :pswitch_966
        :pswitch_919
        :pswitch_8cc
        :pswitch_a4d
        :pswitch_a00
        :pswitch_9b3
        :pswitch_966
        :pswitch_919
    .end packed-switch

    .line 574
    :pswitch_data_d00
    .packed-switch 0x1
        :pswitch_bd0
        :pswitch_b83
        :pswitch_b36
        :pswitch_ae9
        :pswitch_a9c
        :pswitch_ae
        :pswitch_bd0
        :pswitch_b83
        :pswitch_b36
        :pswitch_ae9
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 12
    .parameter "event"

    .prologue
    .line 793
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 794
    .local v0, action:I
    iget-object v4, p0, Lcom/android/settings/TSCalibration$MyView;->mRect:Landroid/graphics/Rect;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/settings/TSCalibration$MyView;->getWidth()I

    move-result v7

    const/16 v8, 0xf

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 795
    invoke-virtual {p0}, Lcom/android/settings/TSCalibration$MyView;->getMeasuredWidth()I

    move-result v2

    .line 796
    .local v2, mWidth:I
    invoke-virtual {p0}, Lcom/android/settings/TSCalibration$MyView;->getMeasuredHeight()I

    move-result v1

    .line 797
    .local v1, mHeight:I
    const/4 v3, 0x0

    .line 799
    .local v3, tempTest:I
    iget-object v4, p0, Lcom/android/settings/TSCalibration$MyView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v4}, Lcom/android/settings/TSCalibration$MyView;->invalidate(Landroid/graphics/Rect;)V

    .line 801
    iget-boolean v4, p0, Lcom/android/settings/TSCalibration$MyView;->mCurDown:Z

    if-eqz v4, :cond_a7

    .line 803
    iget-object v4, p0, Lcom/android/settings/TSCalibration$MyView;->mRect:Landroid/graphics/Rect;

    iget v5, p0, Lcom/android/settings/TSCalibration$MyView;->mCurX:I

    iget v6, p0, Lcom/android/settings/TSCalibration$MyView;->mCurWidth:I

    sub-int/2addr v5, v6

    const/4 v6, 0x3

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/android/settings/TSCalibration$MyView;->mCurY:I

    iget v7, p0, Lcom/android/settings/TSCalibration$MyView;->mCurWidth:I

    sub-int/2addr v6, v7

    const/4 v7, 0x3

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/android/settings/TSCalibration$MyView;->mCurX:I

    iget v8, p0, Lcom/android/settings/TSCalibration$MyView;->mCurWidth:I

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x3

    iget v8, p0, Lcom/android/settings/TSCalibration$MyView;->mCurY:I

    iget v9, p0, Lcom/android/settings/TSCalibration$MyView;->mCurWidth:I

    add-int/2addr v8, v9

    add-int/lit8 v8, v8, 0x3

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 810
    :goto_44
    if-nez v0, :cond_ad

    const/4 v4, 0x1

    :goto_47
    iput-boolean v4, p0, Lcom/android/settings/TSCalibration$MyView;->mCurDown:Z

    .line 811
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/android/settings/TSCalibration$MyView;->mCurX:I

    .line 812
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/android/settings/TSCalibration$MyView;->mCurY:I

    .line 813
    iget v4, p0, Lcom/android/settings/TSCalibration$MyView;->mCurX:I

    iput v4, p0, Lcom/android/settings/TSCalibration$MyView;->printCurX:I

    .line 814
    iget v4, p0, Lcom/android/settings/TSCalibration$MyView;->mCurY:I

    iput v4, p0, Lcom/android/settings/TSCalibration$MyView;->printCurY:I

    .line 815
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v4

    iput v4, p0, Lcom/android/settings/TSCalibration$MyView;->mCurPressure:F

    .line 816
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSize()F

    move-result v4

    iput v4, p0, Lcom/android/settings/TSCalibration$MyView;->mCurSize:F

    .line 817
    iget v4, p0, Lcom/android/settings/TSCalibration$MyView;->mCurSize:F

    invoke-virtual {p0}, Lcom/android/settings/TSCalibration$MyView;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x3

    int-to-float v5, v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/android/settings/TSCalibration$MyView;->mCurWidth:I

    .line 819
    iget-boolean v4, p0, Lcom/android/settings/TSCalibration$MyView;->mCurDown:Z

    if-eqz v4, :cond_a2

    .line 821
    iget-object v4, p0, Lcom/android/settings/TSCalibration$MyView;->mRect:Landroid/graphics/Rect;

    iget v5, p0, Lcom/android/settings/TSCalibration$MyView;->mCurX:I

    iget v6, p0, Lcom/android/settings/TSCalibration$MyView;->mCurWidth:I

    sub-int/2addr v5, v6

    const/4 v6, 0x3

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/android/settings/TSCalibration$MyView;->mCurY:I

    iget v7, p0, Lcom/android/settings/TSCalibration$MyView;->mCurWidth:I

    sub-int/2addr v6, v7

    const/4 v7, 0x3

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/android/settings/TSCalibration$MyView;->mCurX:I

    iget v8, p0, Lcom/android/settings/TSCalibration$MyView;->mCurWidth:I

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x3

    iget v8, p0, Lcom/android/settings/TSCalibration$MyView;->mCurY:I

    iget v9, p0, Lcom/android/settings/TSCalibration$MyView;->mCurWidth:I

    add-int/2addr v8, v9

    add-int/lit8 v8, v8, 0x3

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->union(IIII)V

    .line 823
    iget v4, p0, Lcom/android/settings/TSCalibration$MyView;->mCurrentState:I

    packed-switch v4, :pswitch_data_2e8

    .line 984
    :cond_a2
    :goto_a2
    invoke-virtual {p0}, Lcom/android/settings/TSCalibration$MyView;->invalidate()V

    .line 986
    const/4 v4, 0x1

    return v4

    .line 807
    :cond_a7
    iget-object v4, p0, Lcom/android/settings/TSCalibration$MyView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_44

    .line 810
    :cond_ad
    const/4 v4, 0x0

    goto :goto_47

    .line 826
    :pswitch_af
    iget v4, p0, Lcom/android/settings/TSCalibration$MyView;->mCurX:I

    iget v5, p0, Lcom/android/settings/TSCalibration$MyView;->mStand:I

    const/16 v6, 0xf

    sub-int/2addr v5, v6

    if-le v4, v5, :cond_115

    iget v4, p0, Lcom/android/settings/TSCalibration$MyView;->mCurX:I

    iget v5, p0, Lcom/android/settings/TSCalibration$MyView;->mStand:I

    add-int/lit8 v5, v5, 0xf

    if-ge v4, v5, :cond_115

    iget v4, p0, Lcom/android/settings/TSCalibration$MyView;->mCurY:I

    iget v5, p0, Lcom/android/settings/TSCalibration$MyView;->mStand:I

    const/16 v6, 0xf

    sub-int/2addr v5, v6

    if-le v4, v5, :cond_115

    iget v4, p0, Lcom/android/settings/TSCalibration$MyView;->mCurY:I

    iget v5, p0, Lcom/android/settings/TSCalibration$MyView;->mStand:I

    add-int/lit8 v5, v5, 0xf

    if-ge v4, v5, :cond_115

    .line 828
    iget v4, p0, Lcom/android/settings/TSCalibration$MyView;->mCurX:I

    iput v4, p0, Lcom/android/settings/TSCalibration$MyView;->x1:I

    .line 829
    iget v4, p0, Lcom/android/settings/TSCalibration$MyView;->mCurY:I

    iput v4, p0, Lcom/android/settings/TSCalibration$MyView;->y1:I

    .line 830
    const/4 v4, 0x2

    iput v4, p0, Lcom/android/settings/TSCalibration$MyView;->mCurrentState:I

    .line 832
    const/4 v4, 0x1

    if-ne v3, v4, :cond_e7

    .line 834
    const/16 v4, 0x64

    iput v4, p0, Lcom/android/settings/TSCalibration$MyView;->x1:I

    const/16 v4, 0x64

    iput v4, p0, Lcom/android/settings/TSCalibration$MyView;->y1:I

    .line 839
    :cond_e7
    iget-boolean v4, p0, Lcom/android/settings/TSCalibration$MyView;->bCheckCalibration:Z

    if-eqz v4, :cond_100

    .line 841
    iget-object v4, p0, Lcom/android/settings/TSCalibration$MyView;->tempCurX:[[I

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x1

    iget v6, p0, Lcom/android/settings/TSCalibration$MyView;->mCurX:I

    aput v6, v4, v5

    .line 842
    iget-object v4, p0, Lcom/android/settings/TSCalibration$MyView;->tempCurY:[[I

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x1

    iget v6, p0, Lcom/android/settings/TSCalibration$MyView;->mCurY:I

    aput v6, v4, v5

    goto :goto_a2

    .line 846
    :cond_100
    iget-object v4, p0, Lcom/android/settings/TSCalibration$MyView;->tempCurX:[[I

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x1

    iget v6, p0, Lcom/android/settings/TSCalibration$MyView;->mCurX:I

    aput v6, v4, v5

    .line 847
    iget-object v4, p0, Lcom/android/settings/TSCalibration$MyView;->tempCurY:[[I

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x1

    iget v6, p0, Lcom/android/settings/TSCalibration$MyView;->mCurY:I

    aput v6, v4, v5

    goto :goto_a2

    .line 853
    :cond_115
    const/4 v4, 0x7

    iput v4, p0, Lcom/android/settings/TSCalibration$MyView;->mCurrentState:I

    goto :goto_a2

    .line 857
    :pswitch_119
    iget v4, p0, Lcom/android/settings/TSCalibration$MyView;->mCurX:I

    iget v5, p0, Lcom/android/settings/TSCalibration$MyView;->mStand:I

    const/16 v6, 0xf

    sub-int/2addr v5, v6

    if-le v4, v5, :cond_187

    iget v4, p0, Lcom/android/settings/TSCalibration$MyView;->mCurX:I

    iget v5, p0, Lcom/android/settings/TSCalibration$MyView;->mStand:I

    add-int/lit8 v5, v5, 0xf

    if-ge v4, v5, :cond_187

    iget v4, p0, Lcom/android/settings/TSCalibration$MyView;->mCurY:I

    iget v5, p0, Lcom/android/settings/TSCalibration$MyView;->mStand:I

    add-int/lit8 v5, v5, 0xf

    sub-int v5, v1, v5

    if-le v4, v5, :cond_187

    iget v4, p0, Lcom/android/settings/TSCalibration$MyView;->mCurY:I

    iget v5, p0, Lcom/android/settings/TSCalibration$MyView;->mStand:I

    const/16 v6, 0xf

    sub-int/2addr v5, v6

    sub-int v5, v1, v5

    if-ge v4, v5, :cond_187

    .line 859
    iget v4, p0, Lcom/android/settings/TSCalibration$MyView;->mCurX:I

    iput v4, p0, Lcom/android/settings/TSCalibration$MyView;->x2:I

    .line 860
    iget v4, p0, Lcom/android/settings/TSCalibration$MyView;->mCurY:I

    iput v4, p0, Lcom/android/settings/TSCalibration$MyView;->y2:I

    .line 862
    const/4 v4, 0x1

    if-ne v3, v4, :cond_154

    .line 864
    const/16 v4, 0x64

    iput v4, p0, Lcom/android/settings/TSCalibration$MyView;->x2:I

    const/16 v4, 0x64

    sub-int v4, v1, v4

    iput v4, p0, Lcom/android/settings/TSCalibration$MyView;->y2:I

    .line 867
    :cond_154
    const/4 v4, 0x3

    iput v4, p0, Lcom/android/settings/TSCalibration$MyView;->mCurrentState:I

    .line 871
    iget-boolean v4, p0, Lcom/android/settings/TSCalibration$MyView;->bCheckCalibration:Z

    if-eqz v4, :cond_171

    .line 873
    iget-object v4, p0, Lcom/android/settings/TSCalibration$MyView;->tempCurX:[[I

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x2

    iget v6, p0, Lcom/android/settings/TSCalibration$MyView;->mCurX:I

    aput v6, v4, v5

    .line 874
    iget-object v4, p0, Lcom/android/settings/TSCalibration$MyView;->tempCurY:[[I

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x2

    iget v6, p0, Lcom/android/settings/TSCalibration$MyView;->mCurY:I

    aput v6, v4, v5

    goto/16 :goto_a2

    .line 878
    :cond_171
    iget-object v4, p0, Lcom/android/settings/TSCalibration$MyView;->tempCurX:[[I

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x2

    iget v6, p0, Lcom/android/settings/TSCalibration$MyView;->mCurX:I

    aput v6, v4, v5

    .line 879
    iget-object v4, p0, Lcom/android/settings/TSCalibration$MyView;->tempCurY:[[I

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x2

    iget v6, p0, Lcom/android/settings/TSCalibration$MyView;->mCurY:I

    aput v6, v4, v5

    goto/16 :goto_a2

    .line 885
    :cond_187
    const/16 v4, 0x8

    iput v4, p0, Lcom/android/settings/TSCalibration$MyView;->mCurrentState:I

    goto/16 :goto_a2

    .line 889
    :pswitch_18d
    iget v4, p0, Lcom/android/settings/TSCalibration$MyView;->mCurX:I

    iget v5, p0, Lcom/android/settings/TSCalibration$MyView;->mStand:I

    add-int/lit8 v5, v5, 0xf

    sub-int v5, v2, v5

    if-le v4, v5, :cond_201

    iget v4, p0, Lcom/android/settings/TSCalibration$MyView;->mCurX:I

    iget v5, p0, Lcom/android/settings/TSCalibration$MyView;->mStand:I

    const/16 v6, 0xf

    sub-int/2addr v5, v6

    sub-int v5, v2, v5

    if-ge v4, v5, :cond_201

    iget v4, p0, Lcom/android/settings/TSCalibration$MyView;->mCurY:I

    iget v5, p0, Lcom/android/settings/TSCalibration$MyView;->mStand:I

    add-int/lit8 v5, v5, 0xf

    sub-int v5, v1, v5

    if-le v4, v5, :cond_201

    iget v4, p0, Lcom/android/settings/TSCalibration$MyView;->mCurY:I

    iget v5, p0, Lcom/android/settings/TSCalibration$MyView;->mStand:I

    const/16 v6, 0xf

    sub-int/2addr v5, v6

    sub-int v5, v1, v5

    if-ge v4, v5, :cond_201

    .line 891
    iget v4, p0, Lcom/android/settings/TSCalibration$MyView;->mCurX:I

    iput v4, p0, Lcom/android/settings/TSCalibration$MyView;->x3:I

    .line 892
    iget v4, p0, Lcom/android/settings/TSCalibration$MyView;->mCurY:I

    iput v4, p0, Lcom/android/settings/TSCalibration$MyView;->y3:I

    .line 893
    const/4 v4, 0x4

    iput v4, p0, Lcom/android/settings/TSCalibration$MyView;->mCurrentState:I

    .line 895
    const/4 v4, 0x1

    if-ne v3, v4, :cond_1d1

    .line 897
    const/16 v4, 0x64

    sub-int v4, v2, v4

    iput v4, p0, Lcom/android/settings/TSCalibration$MyView;->x3:I

    const/16 v4, 0x64

    sub-int v4, v1, v4

    iput v4, p0, Lcom/android/settings/TSCalibration$MyView;->y3:I

    .line 902
    :cond_1d1
    iget-boolean v4, p0, Lcom/android/settings/TSCalibration$MyView;->bCheckCalibration:Z

    if-eqz v4, :cond_1eb

    .line 904
    iget-object v4, p0, Lcom/android/settings/TSCalibration$MyView;->tempCurX:[[I

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x3

    iget v6, p0, Lcom/android/settings/TSCalibration$MyView;->mCurX:I

    aput v6, v4, v5

    .line 905
    iget-object v4, p0, Lcom/android/settings/TSCalibration$MyView;->tempCurY:[[I

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x3

    iget v6, p0, Lcom/android/settings/TSCalibration$MyView;->mCurY:I

    aput v6, v4, v5

    goto/16 :goto_a2

    .line 909
    :cond_1eb
    iget-object v4, p0, Lcom/android/settings/TSCalibration$MyView;->tempCurX:[[I

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x3

    iget v6, p0, Lcom/android/settings/TSCalibration$MyView;->mCurX:I

    aput v6, v4, v5

    .line 910
    iget-object v4, p0, Lcom/android/settings/TSCalibration$MyView;->tempCurY:[[I

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x3

    iget v6, p0, Lcom/android/settings/TSCalibration$MyView;->mCurY:I

    aput v6, v4, v5

    goto/16 :goto_a2

    .line 916
    :cond_201
    const/16 v4, 0x9

    iput v4, p0, Lcom/android/settings/TSCalibration$MyView;->mCurrentState:I

    goto/16 :goto_a2

    .line 920
    :pswitch_207
    iget v4, p0, Lcom/android/settings/TSCalibration$MyView;->mCurX:I

    iget v5, p0, Lcom/android/settings/TSCalibration$MyView;->mStand:I

    add-int/lit8 v5, v5, 0xf

    sub-int v5, v2, v5

    if-le v4, v5, :cond_275

    iget v4, p0, Lcom/android/settings/TSCalibration$MyView;->mCurX:I

    iget v5, p0, Lcom/android/settings/TSCalibration$MyView;->mStand:I

    const/16 v6, 0xf

    sub-int/2addr v5, v6

    sub-int v5, v2, v5

    if-ge v4, v5, :cond_275

    iget v4, p0, Lcom/android/settings/TSCalibration$MyView;->mCurY:I

    iget v5, p0, Lcom/android/settings/TSCalibration$MyView;->mStand:I

    const/16 v6, 0xf

    sub-int/2addr v5, v6

    if-le v4, v5, :cond_275

    iget v4, p0, Lcom/android/settings/TSCalibration$MyView;->mCurY:I

    iget v5, p0, Lcom/android/settings/TSCalibration$MyView;->mStand:I

    add-int/lit8 v5, v5, 0xf

    if-ge v4, v5, :cond_275

    .line 922
    iget v4, p0, Lcom/android/settings/TSCalibration$MyView;->mCurX:I

    iput v4, p0, Lcom/android/settings/TSCalibration$MyView;->x4:I

    .line 923
    iget v4, p0, Lcom/android/settings/TSCalibration$MyView;->mCurY:I

    iput v4, p0, Lcom/android/settings/TSCalibration$MyView;->y4:I

    .line 925
    const/4 v4, 0x1

    if-ne v3, v4, :cond_242

    .line 927
    const/16 v4, 0x64

    sub-int v4, v2, v4

    iput v4, p0, Lcom/android/settings/TSCalibration$MyView;->x4:I

    const/16 v4, 0x64

    iput v4, p0, Lcom/android/settings/TSCalibration$MyView;->y4:I

    .line 930
    :cond_242
    const/4 v4, 0x5

    iput v4, p0, Lcom/android/settings/TSCalibration$MyView;->mCurrentState:I

    .line 933
    iget-boolean v4, p0, Lcom/android/settings/TSCalibration$MyView;->bCheckCalibration:Z

    if-eqz v4, :cond_25f

    .line 935
    iget-object v4, p0, Lcom/android/settings/TSCalibration$MyView;->tempCurX:[[I

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x4

    iget v6, p0, Lcom/android/settings/TSCalibration$MyView;->mCurX:I

    aput v6, v4, v5

    .line 936
    iget-object v4, p0, Lcom/android/settings/TSCalibration$MyView;->tempCurY:[[I

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x4

    iget v6, p0, Lcom/android/settings/TSCalibration$MyView;->mCurY:I

    aput v6, v4, v5

    goto/16 :goto_a2

    .line 940
    :cond_25f
    iget-object v4, p0, Lcom/android/settings/TSCalibration$MyView;->tempCurX:[[I

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x4

    iget v6, p0, Lcom/android/settings/TSCalibration$MyView;->mCurX:I

    aput v6, v4, v5

    .line 941
    iget-object v4, p0, Lcom/android/settings/TSCalibration$MyView;->tempCurY:[[I

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x4

    iget v6, p0, Lcom/android/settings/TSCalibration$MyView;->mCurY:I

    aput v6, v4, v5

    goto/16 :goto_a2

    .line 947
    :cond_275
    const/16 v4, 0xa

    iput v4, p0, Lcom/android/settings/TSCalibration$MyView;->mCurrentState:I

    goto/16 :goto_a2

    .line 951
    :pswitch_27b
    iget v4, p0, Lcom/android/settings/TSCalibration$MyView;->mCurX:I

    div-int/lit8 v5, v2, 0x2

    const/16 v6, 0xf

    sub-int/2addr v5, v6

    if-le v4, v5, :cond_2e3

    iget v4, p0, Lcom/android/settings/TSCalibration$MyView;->mCurX:I

    div-int/lit8 v5, v2, 0x2

    add-int/lit8 v5, v5, 0xf

    if-ge v4, v5, :cond_2e3

    iget v4, p0, Lcom/android/settings/TSCalibration$MyView;->mCurY:I

    div-int/lit8 v5, v1, 0x2

    const/16 v6, 0xf

    sub-int/2addr v5, v6

    if-le v4, v5, :cond_2e3

    iget v4, p0, Lcom/android/settings/TSCalibration$MyView;->mCurY:I

    div-int/lit8 v5, v1, 0x2

    add-int/lit8 v5, v5, 0xf

    if-ge v4, v5, :cond_2e3

    .line 953
    iget v4, p0, Lcom/android/settings/TSCalibration$MyView;->mCurX:I

    iput v4, p0, Lcom/android/settings/TSCalibration$MyView;->x5:I

    .line 954
    iget v4, p0, Lcom/android/settings/TSCalibration$MyView;->mCurY:I

    iput v4, p0, Lcom/android/settings/TSCalibration$MyView;->y5:I

    .line 955
    const/4 v4, 0x1

    iput v4, p0, Lcom/android/settings/TSCalibration$MyView;->mCurrentState:I

    .line 957
    const/4 v4, 0x1

    if-ne v3, v4, :cond_2b3

    .line 959
    div-int/lit8 v4, v2, 0x2

    iput v4, p0, Lcom/android/settings/TSCalibration$MyView;->x5:I

    div-int/lit8 v4, v1, 0x2

    iput v4, p0, Lcom/android/settings/TSCalibration$MyView;->y5:I

    .line 963
    :cond_2b3
    iget-boolean v4, p0, Lcom/android/settings/TSCalibration$MyView;->bCheckCalibration:Z

    if-eqz v4, :cond_2cd

    .line 965
    iget-object v4, p0, Lcom/android/settings/TSCalibration$MyView;->tempCurX:[[I

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iget v6, p0, Lcom/android/settings/TSCalibration$MyView;->mCurX:I

    aput v6, v4, v5

    .line 966
    iget-object v4, p0, Lcom/android/settings/TSCalibration$MyView;->tempCurY:[[I

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iget v6, p0, Lcom/android/settings/TSCalibration$MyView;->mCurY:I

    aput v6, v4, v5

    goto/16 :goto_a2

    .line 970
    :cond_2cd
    iget-object v4, p0, Lcom/android/settings/TSCalibration$MyView;->tempCurX:[[I

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iget v6, p0, Lcom/android/settings/TSCalibration$MyView;->mCurX:I

    aput v6, v4, v5

    .line 971
    iget-object v4, p0, Lcom/android/settings/TSCalibration$MyView;->tempCurY:[[I

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iget v6, p0, Lcom/android/settings/TSCalibration$MyView;->mCurY:I

    aput v6, v4, v5

    goto/16 :goto_a2

    .line 977
    :cond_2e3
    const/4 v4, 0x6

    iput v4, p0, Lcom/android/settings/TSCalibration$MyView;->mCurrentState:I

    goto/16 :goto_a2

    .line 823
    :pswitch_data_2e8
    .packed-switch 0x0
        :pswitch_27b
        :pswitch_af
        :pswitch_119
        :pswitch_18d
        :pswitch_207
    .end packed-switch
.end method

.method public save()V
    .registers 9

    .prologue
    const-string v4, ","

    .line 1079
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 1080
    .local v0, dataDir:Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string v4, "misc/ts_cal"

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1084
    .local v3, wp:Ljava/io/File;
    :try_start_d
    new-instance v1, Ljava/io/FileOutputStream;

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 1085
    .local v1, fos:Ljava/io/FileOutputStream;
    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x1b6

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 1090
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/android/settings/TSCalibration$MyView;->xscale:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/TSCalibration$MyView;->xtrans:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/TSCalibration$MyView;->yscale:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/TSCalibration$MyView;->ytrans:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/TSCalibration$MyView;->scale_factor:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1094
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 1095
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_6d} :catch_6e

    .line 1101
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .end local v2           #s:Ljava/lang/String;
    :goto_6d
    return-void

    .line 1097
    :catch_6e
    move-exception v4

    goto :goto_6d
.end method
