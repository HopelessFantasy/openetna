.class public Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;
.super Landroid/view/View;
.source "TSCalibration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration;
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

.field private ny:F

.field private printCurX:I

.field private printCurY:I

.field private printLastX:I

.field private printLastY:I

.field private raw_x_shift:F

.field private raw_y_shift:F

.field public scale_factor:I

.field public scale_factorOrig:I

.field final synthetic this$0:Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration;

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
.method public constructor <init>(Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration;Landroid/content/Context;)V
    .registers 9
    .parameter
    .parameter "c"

    .prologue
    const/4 v5, -0x1

    const/16 v4, 0xff

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 226
    iput-object p1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->this$0:Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration;

    .line 227
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 166
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mRect:Landroid/graphics/Rect;

    .line 210
    iput v5, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCurrentState:I

    .line 211
    iput v5, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mFirstState:I

    .line 228
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mTextPaint:Landroid/graphics/Paint;

    .line 229
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 230
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mTextPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4120

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 231
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4, v3, v4, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 233
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mMessageTextPaint:Landroid/graphics/Paint;

    .line 234
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mMessageTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 235
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mMessageTextPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4170

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 236
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mMessageTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 238
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mPaint:Landroid/graphics/Paint;

    .line 239
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 240
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 241
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 242
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40a0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 244
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCrossPaint:Landroid/graphics/Paint;

    .line 245
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCrossPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 246
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCrossPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 248
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCrossPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 251
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCirclePaint:Landroid/graphics/Paint;

    .line 252
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 253
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCirclePaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 256
    iput v3, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCurrentState:I

    .line 257
    iput v3, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mFirstState:I

    .line 260
    invoke-direct {p0}, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->readTSCal()V

    .line 261
    iget v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->xscale:I

    iput v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->xscaleOrig:I

    .line 262
    iget v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->xtrans:I

    iput v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->xtransOrig:I

    .line 263
    iget v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->yscale:I

    iput v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->yscaleOrig:I

    .line 264
    iget v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->ytrans:I

    iput v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->ytransOrig:I

    .line 265
    iget v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->scale_factor:I

    iput v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->scale_factorOrig:I

    .line 266
    iput-boolean v3, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCalComplete:Z

    .line 268
    iput v2, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->xscale:I

    .line 269
    iput v3, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->xtrans:I

    .line 270
    iput v2, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->yscale:I

    .line 271
    iput v3, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->ytrans:I

    .line 272
    iput v2, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->scale_factor:I

    .line 273
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->save()V

    .line 274
    return-void
.end method

.method private calibrate()Z
    .registers 16

    .prologue
    .line 619
    const/4 v0, 0x0

    .line 621
    .local v0, calibrated:Z
    iget v9, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x1:I

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x2:I

    add-int/2addr v9, v10

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x3:I

    add-int/2addr v9, v10

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x4:I

    add-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x4

    int-to-float v9, v9

    iput v9, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->raw_x_shift:F

    .line 622
    iget v9, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y1:I

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y2:I

    add-int/2addr v9, v10

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y3:I

    add-int/2addr v9, v10

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y4:I

    add-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x4

    int-to-float v9, v9

    iput v9, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->raw_y_shift:F

    .line 623
    iget v9, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x1_:I

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x2_:I

    add-int/2addr v9, v10

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x3_:I

    add-int/2addr v9, v10

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x4_:I

    add-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x4

    int-to-float v9, v9

    iput v9, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->cal_x_shift:F

    .line 624
    iget v9, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y1_:I

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y2_:I

    add-int/2addr v9, v10

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y3_:I

    add-int/2addr v9, v10

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y4_:I

    add-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x4

    int-to-float v9, v9

    iput v9, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->cal_y_shift:F

    .line 626
    iget v9, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x1:I

    int-to-float v9, v9

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->raw_x_shift:F

    sub-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x1:I

    iget v9, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x2:I

    int-to-float v9, v9

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->raw_x_shift:F

    sub-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x2:I

    iget v9, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x3:I

    int-to-float v9, v9

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->raw_x_shift:F

    sub-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x3:I

    iget v9, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x4:I

    int-to-float v9, v9

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->raw_x_shift:F

    sub-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x4:I

    .line 627
    iget v9, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y1:I

    int-to-float v9, v9

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->raw_y_shift:F

    sub-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y1:I

    iget v9, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y2:I

    int-to-float v9, v9

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->raw_y_shift:F

    sub-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y2:I

    iget v9, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y3:I

    int-to-float v9, v9

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->raw_y_shift:F

    sub-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y3:I

    iget v9, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y4:I

    int-to-float v9, v9

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->raw_y_shift:F

    sub-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y4:I

    .line 628
    iget v9, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x1_:I

    int-to-float v9, v9

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->cal_x_shift:F

    sub-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x1_:I

    iget v9, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x2_:I

    int-to-float v9, v9

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->cal_x_shift:F

    sub-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x2_:I

    iget v9, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x3_:I

    int-to-float v9, v9

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->cal_x_shift:F

    sub-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x3_:I

    iget v9, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x4_:I

    int-to-float v9, v9

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->cal_x_shift:F

    sub-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x4_:I

    .line 629
    iget v9, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y1_:I

    int-to-float v9, v9

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->cal_y_shift:F

    sub-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y1_:I

    iget v9, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y2_:I

    int-to-float v9, v9

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->cal_y_shift:F

    sub-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y2_:I

    iget v9, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y3_:I

    int-to-float v9, v9

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->cal_y_shift:F

    sub-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y3_:I

    iget v9, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y4_:I

    int-to-float v9, v9

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->cal_y_shift:F

    sub-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y4_:I

    .line 631
    iget v9, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x3:I

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x4:I

    mul-int/2addr v9, v10

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y1:I

    iget v11, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y2:I

    sub-int/2addr v10, v11

    mul-int/2addr v9, v10

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y3:I

    iget v11, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y4:I

    sub-int/2addr v10, v11

    mul-int/2addr v9, v10

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x2:I

    iget v11, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x3:I

    iget v12, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y1:I

    mul-int/2addr v11, v12

    iget v12, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y2:I

    mul-int/2addr v11, v12

    iget v12, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x4:I

    iget v13, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y1:I

    mul-int/2addr v12, v13

    iget v13, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y2:I

    mul-int/2addr v12, v13

    sub-int/2addr v11, v12

    iget v12, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x3:I

    iget v13, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y1:I

    mul-int/2addr v12, v13

    iget v13, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y3:I

    mul-int/2addr v12, v13

    sub-int/2addr v11, v12

    iget v12, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x4:I

    iget v13, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y2:I

    mul-int/2addr v12, v13

    iget v13, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y3:I

    mul-int/2addr v12, v13

    add-int/2addr v11, v12

    iget v12, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x4:I

    iget v13, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y1:I

    mul-int/2addr v12, v13

    iget v13, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y4:I

    mul-int/2addr v12, v13

    add-int/2addr v11, v12

    iget v12, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x3:I

    iget v13, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y2:I

    mul-int/2addr v12, v13

    iget v13, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y4:I

    mul-int/2addr v12, v13

    sub-int/2addr v11, v12

    iget v12, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x3:I

    iget v13, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y3:I

    mul-int/2addr v12, v13

    iget v13, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y4:I

    mul-int/2addr v12, v13

    add-int/2addr v11, v12

    iget v12, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x4:I

    iget v13, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y3:I

    mul-int/2addr v12, v13

    iget v13, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y4:I

    mul-int/2addr v12, v13

    sub-int/2addr v11, v12

    mul-int/2addr v10, v11

    add-int/2addr v9, v10

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x1:I

    iget v11, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x4:I

    iget v12, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y1:I

    mul-int/2addr v11, v12

    iget v12, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y2:I

    mul-int/2addr v11, v12

    iget v12, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x2:I

    iget v13, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y1:I

    mul-int/2addr v12, v13

    iget v13, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y3:I

    mul-int/2addr v12, v13

    add-int/2addr v11, v12

    iget v12, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x4:I

    iget v13, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y1:I

    mul-int/2addr v12, v13

    iget v13, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y3:I

    mul-int/2addr v12, v13

    sub-int/2addr v11, v12

    iget v12, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x2:I

    iget v13, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y2:I

    mul-int/2addr v12, v13

    iget v13, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y3:I

    mul-int/2addr v12, v13

    sub-int/2addr v11, v12

    iget v12, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x3:I

    iget v13, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y1:I

    iget v14, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y3:I

    sub-int/2addr v13, v14

    mul-int/2addr v12, v13

    iget v13, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y2:I

    iget v14, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y4:I

    sub-int/2addr v13, v14

    mul-int/2addr v12, v13

    sub-int/2addr v11, v12

    iget v12, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x2:I

    iget v13, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y1:I

    mul-int/2addr v12, v13

    iget v13, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y4:I

    mul-int/2addr v12, v13

    sub-int/2addr v11, v12

    iget v12, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x2:I

    iget v13, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y2:I

    mul-int/2addr v12, v13

    iget v13, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y4:I

    mul-int/2addr v12, v13

    add-int/2addr v11, v12

    iget v12, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x4:I

    iget v13, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y2:I

    mul-int/2addr v12, v13

    iget v13, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y4:I

    mul-int/2addr v12, v13

    sub-int/2addr v11, v12

    iget v12, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x4:I

    iget v13, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y3:I

    mul-int/2addr v12, v13

    iget v13, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y4:I

    mul-int/2addr v12, v13

    add-int/2addr v11, v12

    mul-int/2addr v10, v11

    add-int/2addr v9, v10

    int-to-float v9, v9

    iput v9, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->det:F

    .line 633
    iget v9, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x3:I

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y3:I

    mul-int/2addr v9, v10

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y2:I

    iget v11, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y4:I

    sub-int/2addr v10, v11

    mul-int/2addr v9, v10

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x4:I

    iget v11, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y2:I

    neg-int v11, v11

    iget v12, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y3:I

    add-int/2addr v11, v12

    mul-int/2addr v10, v11

    iget v11, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y4:I

    mul-int/2addr v10, v11

    add-int/2addr v9, v10

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x2:I

    iget v11, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y2:I

    mul-int/2addr v10, v11

    iget v11, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y3:I

    neg-int v11, v11

    iget v12, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y4:I

    add-int/2addr v11, v12

    mul-int/2addr v10, v11

    add-int/2addr v9, v10

    int-to-float v9, v9

    iput v9, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->M11:F

    .line 634
    iget v9, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x1:I

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y1:I

    mul-int/2addr v9, v10

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y3:I

    iget v11, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y4:I

    sub-int/2addr v10, v11

    mul-int/2addr v9, v10

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x4:I

    iget v11, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y1:I

    iget v12, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y3:I

    sub-int/2addr v11, v12

    mul-int/2addr v10, v11

    iget v11, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y4:I

    mul-int/2addr v10, v11

    add-int/2addr v9, v10

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x3:I

    iget v11, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y3:I

    mul-int/2addr v10, v11

    iget v11, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y1:I

    neg-int v11, v11

    iget v12, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y4:I

    add-int/2addr v11, v12

    mul-int/2addr v10, v11

    add-int/2addr v9, v10

    int-to-float v9, v9

    iput v9, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->M12:F

    .line 635
    iget v9, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x2:I

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y2:I

    mul-int/2addr v9, v10

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y1:I

    iget v11, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y4:I

    sub-int/2addr v10, v11

    mul-int/2addr v9, v10

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x4:I

    iget v11, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y1:I

    neg-int v11, v11

    iget v12, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y2:I

    add-int/2addr v11, v12

    mul-int/2addr v10, v11

    iget v11, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y4:I

    mul-int/2addr v10, v11

    add-int/2addr v9, v10

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x1:I

    iget v11, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y1:I

    mul-int/2addr v10, v11

    iget v11, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y2:I

    neg-int v11, v11

    iget v12, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y4:I

    add-int/2addr v11, v12

    mul-int/2addr v10, v11

    add-int/2addr v9, v10

    int-to-float v9, v9

    iput v9, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->M13:F

    .line 636
    iget v9, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x1:I

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y1:I

    mul-int/2addr v9, v10

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y2:I

    iget v11, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y3:I

    sub-int/2addr v10, v11

    mul-int/2addr v9, v10

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x3:I

    iget v11, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y1:I

    iget v12, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y2:I

    sub-int/2addr v11, v12

    mul-int/2addr v10, v11

    iget v11, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y3:I

    mul-int/2addr v10, v11

    add-int/2addr v9, v10

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x2:I

    iget v11, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y2:I

    mul-int/2addr v10, v11

    iget v11, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y1:I

    neg-int v11, v11

    iget v12, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y3:I

    add-int/2addr v11, v12

    mul-int/2addr v10, v11

    add-int/2addr v9, v10

    int-to-float v9, v9

    iput v9, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->M14:F

    .line 638
    iget v9, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x3:I

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x4:I

    mul-int/2addr v9, v10

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y3:I

    iget v11, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y4:I

    sub-int/2addr v10, v11

    mul-int/2addr v9, v10

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x2:I

    iget v11, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x3:I

    iget v12, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y2:I

    iget v13, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y3:I

    sub-int/2addr v12, v13

    mul-int/2addr v11, v12

    iget v12, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x4:I

    iget v13, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y2:I

    neg-int v13, v13

    iget v14, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y4:I

    add-int/2addr v13, v14

    mul-int/2addr v12, v13

    add-int/2addr v11, v12

    mul-int/2addr v10, v11

    add-int/2addr v9, v10

    int-to-float v9, v9

    iput v9, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->M21:F

    .line 639
    iget v9, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x1:I

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x3:I

    iget v11, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y1:I

    neg-int v11, v11

    iget v12, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y3:I

    add-int/2addr v11, v12

    mul-int/2addr v10, v11

    iget v11, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x4:I

    iget v12, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y1:I

    iget v13, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y4:I

    sub-int/2addr v12, v13

    mul-int/2addr v11, v12

    add-int/2addr v10, v11

    mul-int/2addr v9, v10

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x3:I

    iget v11, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x4:I

    mul-int/2addr v10, v11

    iget v11, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y3:I

    neg-int v11, v11

    iget v12, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y4:I

    add-int/2addr v11, v12

    mul-int/2addr v10, v11

    add-int/2addr v9, v10

    int-to-float v9, v9

    iput v9, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->M22:F

    .line 640
    iget v9, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x2:I

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x4:I

    mul-int/2addr v9, v10

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y2:I

    iget v11, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y4:I

    sub-int/2addr v10, v11

    mul-int/2addr v9, v10

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x1:I

    iget v11, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x2:I

    iget v12, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y1:I

    iget v13, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y2:I

    sub-int/2addr v12, v13

    mul-int/2addr v11, v12

    iget v12, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x4:I

    iget v13, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y1:I

    neg-int v13, v13

    iget v14, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y4:I

    add-int/2addr v13, v14

    mul-int/2addr v12, v13

    add-int/2addr v11, v12

    mul-int/2addr v10, v11

    add-int/2addr v9, v10

    int-to-float v9, v9

    iput v9, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->M23:F

    .line 641
    iget v9, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x1:I

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x2:I

    iget v11, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y1:I

    neg-int v11, v11

    iget v12, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y2:I

    add-int/2addr v11, v12

    mul-int/2addr v10, v11

    iget v11, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x3:I

    iget v12, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y1:I

    iget v13, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y3:I

    sub-int/2addr v12, v13

    mul-int/2addr v11, v12

    add-int/2addr v10, v11

    mul-int/2addr v9, v10

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x2:I

    iget v11, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x3:I

    mul-int/2addr v10, v11

    iget v11, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y2:I

    neg-int v11, v11

    iget v12, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y3:I

    add-int/2addr v11, v12

    mul-int/2addr v10, v11

    add-int/2addr v9, v10

    int-to-float v9, v9

    iput v9, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->M24:F

    .line 643
    iget v9, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x4:I

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y2:I

    iget v11, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y3:I

    sub-int/2addr v10, v11

    mul-int/2addr v9, v10

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x2:I

    iget v11, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y3:I

    iget v12, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y4:I

    sub-int/2addr v11, v12

    mul-int/2addr v10, v11

    add-int/2addr v9, v10

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x3:I

    iget v11, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y2:I

    neg-int v11, v11

    iget v12, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y4:I

    add-int/2addr v11, v12

    mul-int/2addr v10, v11

    add-int/2addr v9, v10

    int-to-float v9, v9

    iput v9, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->M31:F

    .line 644
    iget v9, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x4:I

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y1:I

    neg-int v10, v10

    iget v11, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y3:I

    add-int/2addr v10, v11

    mul-int/2addr v9, v10

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x3:I

    iget v11, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y1:I

    iget v12, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y4:I

    sub-int/2addr v11, v12

    mul-int/2addr v10, v11

    add-int/2addr v9, v10

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x1:I

    iget v11, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y3:I

    neg-int v11, v11

    iget v12, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y4:I

    add-int/2addr v11, v12

    mul-int/2addr v10, v11

    add-int/2addr v9, v10

    int-to-float v9, v9

    iput v9, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->M32:F

    .line 645
    iget v9, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x4:I

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y1:I

    iget v11, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y2:I

    sub-int/2addr v10, v11

    mul-int/2addr v9, v10

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x1:I

    iget v11, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y2:I

    iget v12, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y4:I

    sub-int/2addr v11, v12

    mul-int/2addr v10, v11

    add-int/2addr v9, v10

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x2:I

    iget v11, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y1:I

    neg-int v11, v11

    iget v12, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y4:I

    add-int/2addr v11, v12

    mul-int/2addr v10, v11

    add-int/2addr v9, v10

    int-to-float v9, v9

    iput v9, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->M33:F

    .line 646
    iget v9, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x3:I

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y1:I

    neg-int v10, v10

    iget v11, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y2:I

    add-int/2addr v10, v11

    mul-int/2addr v9, v10

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x2:I

    iget v11, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y1:I

    iget v12, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y3:I

    sub-int/2addr v11, v12

    mul-int/2addr v10, v11

    add-int/2addr v9, v10

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x1:I

    iget v11, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y2:I

    neg-int v11, v11

    iget v12, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y3:I

    add-int/2addr v11, v12

    mul-int/2addr v10, v11

    add-int/2addr v9, v10

    int-to-float v9, v9

    iput v9, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->M34:F

    .line 648
    iget v9, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x3:I

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x4:I

    mul-int/2addr v9, v10

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y2:I

    mul-int/2addr v9, v10

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y3:I

    neg-int v10, v10

    iget v11, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y4:I

    add-int/2addr v10, v11

    mul-int/2addr v9, v10

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x2:I

    iget v11, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x4:I

    iget v12, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y3:I

    mul-int/2addr v11, v12

    iget v12, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y2:I

    iget v13, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y4:I

    sub-int/2addr v12, v13

    mul-int/2addr v11, v12

    iget v12, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x3:I

    iget v13, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y2:I

    neg-int v13, v13

    iget v14, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y3:I

    add-int/2addr v13, v14

    mul-int/2addr v12, v13

    iget v13, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y4:I

    mul-int/2addr v12, v13

    add-int/2addr v11, v12

    mul-int/2addr v10, v11

    add-int/2addr v9, v10

    int-to-float v9, v9

    iput v9, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->M41:F

    .line 649
    iget v9, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x3:I

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x4:I

    mul-int/2addr v9, v10

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y1:I

    mul-int/2addr v9, v10

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y3:I

    iget v11, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y4:I

    sub-int/2addr v10, v11

    mul-int/2addr v9, v10

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x1:I

    iget v11, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x3:I

    iget v12, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y1:I

    iget v13, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y3:I

    sub-int/2addr v12, v13

    mul-int/2addr v11, v12

    iget v12, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y4:I

    mul-int/2addr v11, v12

    iget v12, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x4:I

    iget v13, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y3:I

    mul-int/2addr v12, v13

    iget v13, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y1:I

    neg-int v13, v13

    iget v14, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y4:I

    add-int/2addr v13, v14

    mul-int/2addr v12, v13

    add-int/2addr v11, v12

    mul-int/2addr v10, v11

    add-int/2addr v9, v10

    int-to-float v9, v9

    iput v9, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->M42:F

    .line 650
    iget v9, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x2:I

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x4:I

    mul-int/2addr v9, v10

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y1:I

    mul-int/2addr v9, v10

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y2:I

    neg-int v10, v10

    iget v11, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y4:I

    add-int/2addr v10, v11

    mul-int/2addr v9, v10

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x1:I

    iget v11, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x4:I

    iget v12, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y2:I

    mul-int/2addr v11, v12

    iget v12, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y1:I

    iget v13, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y4:I

    sub-int/2addr v12, v13

    mul-int/2addr v11, v12

    iget v12, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x2:I

    iget v13, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y1:I

    neg-int v13, v13

    iget v14, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y2:I

    add-int/2addr v13, v14

    mul-int/2addr v12, v13

    iget v13, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y4:I

    mul-int/2addr v12, v13

    add-int/2addr v11, v12

    mul-int/2addr v10, v11

    add-int/2addr v9, v10

    int-to-float v9, v9

    iput v9, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->M43:F

    .line 651
    iget v9, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x2:I

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x3:I

    mul-int/2addr v9, v10

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y1:I

    mul-int/2addr v9, v10

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y2:I

    iget v11, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y3:I

    sub-int/2addr v10, v11

    mul-int/2addr v9, v10

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x1:I

    iget v11, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x2:I

    iget v12, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y1:I

    iget v13, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y2:I

    sub-int/2addr v12, v13

    mul-int/2addr v11, v12

    iget v12, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y3:I

    mul-int/2addr v11, v12

    iget v12, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x3:I

    iget v13, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y2:I

    mul-int/2addr v12, v13

    iget v13, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y1:I

    neg-int v13, v13

    iget v14, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y3:I

    add-int/2addr v13, v14

    mul-int/2addr v12, v13

    add-int/2addr v11, v12

    mul-int/2addr v10, v11

    add-int/2addr v9, v10

    int-to-float v9, v9

    iput v9, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->M44:F

    .line 653
    iget v9, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->M11:F

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x1_:I

    int-to-float v10, v10

    mul-float/2addr v9, v10

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->M12:F

    iget v11, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x2_:I

    int-to-float v11, v11

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->M13:F

    iget v11, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x3_:I

    int-to-float v11, v11

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->M14:F

    iget v11, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x4_:I

    int-to-float v11, v11

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->det:F

    div-float/2addr v9, v10

    iput v9, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->ax:F

    .line 654
    iget v9, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->M21:F

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x1_:I

    int-to-float v10, v10

    mul-float/2addr v9, v10

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->M22:F

    iget v11, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x2_:I

    int-to-float v11, v11

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->M23:F

    iget v11, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x3_:I

    int-to-float v11, v11

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->M24:F

    iget v11, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x4_:I

    int-to-float v11, v11

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->det:F

    div-float/2addr v9, v10

    iput v9, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->bx:F

    .line 655
    iget v9, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->M31:F

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x1_:I

    int-to-float v10, v10

    mul-float/2addr v9, v10

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->M32:F

    iget v11, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x2_:I

    int-to-float v11, v11

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->M33:F

    iget v11, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x3_:I

    int-to-float v11, v11

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->M34:F

    iget v11, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x4_:I

    int-to-float v11, v11

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->det:F

    div-float/2addr v9, v10

    iput v9, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->cx:F

    .line 656
    iget v9, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->M41:F

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x1_:I

    int-to-float v10, v10

    mul-float/2addr v9, v10

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->M42:F

    iget v11, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x2_:I

    int-to-float v11, v11

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->M43:F

    iget v11, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x3_:I

    int-to-float v11, v11

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->M44:F

    iget v11, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x4_:I

    int-to-float v11, v11

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->det:F

    div-float/2addr v9, v10

    iput v9, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->dx:F

    .line 658
    iget v9, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->M11:F

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y1_:I

    int-to-float v10, v10

    mul-float/2addr v9, v10

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->M12:F

    iget v11, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y2_:I

    int-to-float v11, v11

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->M13:F

    iget v11, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y3_:I

    int-to-float v11, v11

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->M14:F

    iget v11, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y4_:I

    int-to-float v11, v11

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->det:F

    div-float/2addr v9, v10

    iput v9, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->ky:F

    .line 659
    iget v9, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->M21:F

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y1_:I

    int-to-float v10, v10

    mul-float/2addr v9, v10

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->M22:F

    iget v11, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y2_:I

    int-to-float v11, v11

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->M23:F

    iget v11, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y3_:I

    int-to-float v11, v11

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->M24:F

    iget v11, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y4_:I

    int-to-float v11, v11

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->det:F

    div-float/2addr v9, v10

    iput v9, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->ly:F

    .line 660
    iget v9, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->M31:F

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y1_:I

    int-to-float v10, v10

    mul-float/2addr v9, v10

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->M32:F

    iget v11, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y2_:I

    int-to-float v11, v11

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->M33:F

    iget v11, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y3_:I

    int-to-float v11, v11

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->M34:F

    iget v11, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y4_:I

    int-to-float v11, v11

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->det:F

    div-float/2addr v9, v10

    iput v9, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->my:F

    .line 661
    iget v9, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->M41:F

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y1_:I

    int-to-float v10, v10

    mul-float/2addr v9, v10

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->M42:F

    iget v11, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y2_:I

    int-to-float v11, v11

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->M43:F

    iget v11, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y3_:I

    int-to-float v11, v11

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->M44:F

    iget v11, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y4_:I

    int-to-float v11, v11

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->det:F

    div-float/2addr v9, v10

    iput v9, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->ny:F

    .line 664
    iget v9, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->ax:F

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x5:I

    int-to-float v10, v10

    iget v11, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->raw_x_shift:F

    sub-float/2addr v10, v11

    mul-float/2addr v9, v10

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->bx:F

    iget v11, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y5:I

    int-to-float v11, v11

    iget v12, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->raw_y_shift:F

    sub-float/2addr v11, v12

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->cx:F

    iget v11, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x5:I

    int-to-float v11, v11

    iget v12, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->raw_x_shift:F

    sub-float/2addr v11, v12

    mul-float/2addr v10, v11

    iget v11, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y5:I

    int-to-float v11, v11

    iget v12, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->raw_y_shift:F

    sub-float/2addr v11, v12

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->dx:F

    add-float/2addr v9, v10

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->cal_x_shift:F

    add-float/2addr v9, v10

    iput v9, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x5_cal:F

    .line 665
    iget v9, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->ky:F

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x5:I

    int-to-float v10, v10

    iget v11, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->raw_x_shift:F

    sub-float/2addr v10, v11

    mul-float/2addr v9, v10

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->ly:F

    iget v11, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y5:I

    int-to-float v11, v11

    iget v12, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->raw_y_shift:F

    sub-float/2addr v11, v12

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->my:F

    iget v11, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x5:I

    int-to-float v11, v11

    iget v12, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->raw_x_shift:F

    sub-float/2addr v11, v12

    mul-float/2addr v10, v11

    iget v11, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y5:I

    int-to-float v11, v11

    iget v12, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->raw_y_shift:F

    sub-float/2addr v11, v12

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->ny:F

    add-float/2addr v9, v10

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->cal_y_shift:F

    add-float/2addr v9, v10

    iput v9, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y5_cal:F

    .line 667
    iget v9, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x5_:I

    int-to-float v9, v9

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x5_cal:F

    sub-float/2addr v9, v10

    const/high16 v10, 0x42c8

    mul-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x5_:I

    div-int/lit8 v10, v10, 0x28

    mul-int/lit8 v10, v10, 0x64

    int-to-float v10, v10

    cmpl-float v9, v9, v10

    if-lez v9, :cond_55d

    .line 668
    const/4 v0, 0x0

    .line 669
    const/4 v9, 0x0

    .line 734
    :goto_55c
    return v9

    .line 670
    :cond_55d
    iget v9, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y5_:I

    int-to-float v9, v9

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y5_cal:F

    sub-float/2addr v9, v10

    const/high16 v10, 0x42c8

    mul-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y5_:I

    div-int/lit8 v10, v10, 0x28

    mul-int/lit8 v10, v10, 0x64

    int-to-float v10, v10

    cmpl-float v9, v9, v10

    if-lez v9, :cond_578

    .line 671
    const/4 v0, 0x0

    .line 672
    const/4 v9, 0x0

    goto :goto_55c

    .line 674
    :cond_578
    const/4 v0, 0x1

    .line 677
    const/16 v9, 0x400

    iput v9, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->scale_factor:I

    .line 679
    iget v9, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->ax:F

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->scale_factor:I

    int-to-float v10, v10

    mul-float/2addr v9, v10

    iput v9, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->ax:F

    .line 680
    iget v9, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->bx:F

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->scale_factor:I

    int-to-float v10, v10

    mul-float/2addr v9, v10

    iput v9, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->bx:F

    .line 681
    iget v9, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->cx:F

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->scale_factor:I

    int-to-float v10, v10

    mul-float/2addr v9, v10

    iput v9, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->cx:F

    .line 682
    iget v9, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->dx:F

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->scale_factor:I

    int-to-float v10, v10

    mul-float/2addr v9, v10

    iput v9, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->dx:F

    .line 683
    iget v9, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->ky:F

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->scale_factor:I

    int-to-float v10, v10

    mul-float/2addr v9, v10

    iput v9, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->ky:F

    .line 684
    iget v9, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->ly:F

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->scale_factor:I

    int-to-float v10, v10

    mul-float/2addr v9, v10

    iput v9, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->ly:F

    .line 685
    iget v9, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->my:F

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->scale_factor:I

    int-to-float v10, v10

    mul-float/2addr v9, v10

    iput v9, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->my:F

    .line 686
    iget v9, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->ny:F

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->scale_factor:I

    int-to-float v10, v10

    mul-float/2addr v9, v10

    iput v9, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->ny:F

    .line 688
    if-eqz v0, :cond_666

    .line 689
    iget v9, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->ax:F

    float-to-int v9, v9

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->cx:F

    float-to-int v10, v10

    iget v11, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->raw_y_shift:F

    float-to-int v11, v11

    mul-int/2addr v10, v11

    sub-int v1, v9, v10

    .line 690
    .local v1, simple_ax:I
    iget v9, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->bx:F

    float-to-int v9, v9

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->cx:F

    float-to-int v10, v10

    iget v11, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->raw_x_shift:F

    float-to-int v11, v11

    mul-int/2addr v10, v11

    sub-int v2, v9, v10

    .line 691
    .local v2, simple_bx:I
    iget v9, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->cx:F

    float-to-int v3, v9

    .line 692
    .local v3, simple_cx:I
    iget v9, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->cx:F

    float-to-int v9, v9

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->raw_x_shift:F

    float-to-int v10, v10

    mul-int/2addr v9, v10

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->raw_y_shift:F

    float-to-int v10, v10

    mul-int/2addr v9, v10

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->bx:F

    float-to-int v10, v10

    iget v11, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->raw_y_shift:F

    float-to-int v11, v11

    mul-int/2addr v10, v11

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->ax:F

    float-to-int v10, v10

    iget v11, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->raw_x_shift:F

    float-to-int v11, v11

    mul-int/2addr v10, v11

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->dx:F

    float-to-int v10, v10

    add-int/2addr v9, v10

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->cal_x_shift:F

    float-to-int v10, v10

    iget v11, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->scale_factor:I

    mul-int/2addr v10, v11

    add-int v4, v9, v10

    .line 694
    .local v4, simple_dx:I
    iget v9, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->ky:F

    float-to-int v9, v9

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->my:F

    float-to-int v10, v10

    iget v11, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->raw_y_shift:F

    float-to-int v11, v11

    mul-int/2addr v10, v11

    sub-int v5, v9, v10

    .line 695
    .local v5, simple_ky:I
    iget v9, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->ly:F

    float-to-int v9, v9

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->my:F

    float-to-int v10, v10

    iget v11, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->raw_x_shift:F

    float-to-int v11, v11

    mul-int/2addr v10, v11

    sub-int v6, v9, v10

    .line 696
    .local v6, simple_ly:I
    iget v9, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->my:F

    float-to-int v7, v9

    .line 697
    .local v7, simple_my:I
    iget v9, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->my:F

    float-to-int v9, v9

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->raw_x_shift:F

    float-to-int v10, v10

    mul-int/2addr v9, v10

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->raw_y_shift:F

    float-to-int v10, v10

    mul-int/2addr v9, v10

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->ly:F

    float-to-int v10, v10

    iget v11, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->raw_y_shift:F

    float-to-int v11, v11

    mul-int/2addr v10, v11

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->ky:F

    float-to-int v10, v10

    iget v11, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->raw_x_shift:F

    float-to-int v11, v11

    mul-int/2addr v10, v11

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->ny:F

    float-to-int v10, v10

    add-int/2addr v9, v10

    iget v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->cal_y_shift:F

    float-to-int v10, v10

    iget v11, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->scale_factor:I

    mul-int/2addr v10, v11

    add-int v8, v9, v10

    .line 699
    .local v8, simple_ny:I
    const/4 v9, 0x2

    if-gt v3, v9, :cond_649

    const/4 v9, 0x2

    if-le v7, v9, :cond_653

    .line 700
    :cond_649
    const-string v9, "TS"

    const-string v10, "######## hopemini #######  touch error \n"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    const/4 v9, 0x0

    goto/16 :goto_55c

    .line 704
    :cond_653
    iput v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->xscale:I

    .line 705
    iget v9, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->scale_factor:I

    div-int v9, v4, v9

    iput v9, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->xtrans:I

    .line 706
    iput v6, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->yscale:I

    .line 707
    iget v9, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->scale_factor:I

    div-int v9, v8, v9

    iput v9, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->ytrans:I

    .line 731
    const/4 v9, 0x1

    goto/16 :goto_55c

    .line 733
    .end local v1           #simple_ax:I
    .end local v2           #simple_bx:I
    .end local v3           #simple_cx:I
    .end local v4           #simple_dx:I
    .end local v5           #simple_ky:I
    .end local v6           #simple_ly:I
    .end local v7           #simple_my:I
    .end local v8           #simple_ny:I
    :cond_666
    const/4 v0, 0x0

    .line 734
    const/4 v9, 0x0

    goto/16 :goto_55c
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

    .line 280
    sub-int v0, p2, v3

    int-to-float v0, v0

    sub-int v1, p3, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 281
    sub-int v0, p2, v3

    int-to-float v0, v0

    add-int/lit8 v1, p3, 0x4

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 282
    sub-int v0, p2, v4

    int-to-float v0, v0

    int-to-float v1, p3

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 283
    sub-int v0, p2, v3

    int-to-float v0, v0

    sub-int v1, p3, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 284
    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    .line 289
    add-int/lit8 v0, p2, 0xa

    int-to-float v0, v0

    sub-int v1, p3, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 290
    add-int/lit8 v0, p2, 0xa

    int-to-float v0, v0

    add-int/lit8 v1, p3, 0x4

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 291
    add-int/lit8 v0, p2, 0x5

    int-to-float v0, v0

    int-to-float v1, p3

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 292
    add-int/lit8 v0, p2, 0xa

    int-to-float v0, v0

    sub-int v1, p3, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 293
    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    .line 298
    sub-int v0, p2, v2

    int-to-float v0, v0

    sub-int v1, p3, v3

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 299
    add-int/lit8 v0, p2, 0x4

    int-to-float v0, v0

    sub-int v1, p3, v3

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 300
    int-to-float v0, p2

    sub-int v1, p3, v4

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 301
    sub-int v0, p2, v2

    int-to-float v0, v0

    sub-int v1, p3, v3

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 302
    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    .line 307
    sub-int v0, p2, v2

    int-to-float v0, v0

    add-int/lit8 v1, p3, 0xa

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 308
    add-int/lit8 v0, p2, 0x4

    int-to-float v0, v0

    add-int/lit8 v1, p3, 0xa

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 309
    int-to-float v0, p2

    add-int/lit8 v1, p3, 0x5

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 310
    sub-int v0, p2, v2

    int-to-float v0, v0

    add-int/lit8 v1, p3, 0xa

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 311
    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    .line 312
    return-void
.end method

.method private final readTSCal()V
    .registers 13

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 756
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    .line 757
    .local v2, dataDir:Ljava/io/File;
    new-instance v7, Ljava/io/File;

    const-string v8, "misc/ts_cal"

    invoke-direct {v7, v2, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 758
    .local v7, ts_cal:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_25

    .line 759
    const-string v8, "TS"

    const-string v9, "++++++++ /data/misc/ts_cal does not exist"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    iput v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->xscale:I

    .line 761
    iput v11, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->xtrans:I

    .line 762
    iput v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->yscale:I

    .line 763
    iput v11, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->ytrans:I

    .line 764
    iput v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->scale_factor:I

    .line 793
    :cond_24
    :goto_24
    return-void

    .line 767
    :cond_25
    const/4 v0, 0x0

    .line 769
    .local v0, br:Ljava/io/BufferedReader;
    :try_start_26
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    invoke-direct {v8, v7}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    const/16 v9, 0x20

    invoke-direct {v1, v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_32
    .catchall {:try_start_26 .. :try_end_32} :catchall_82
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_32} :catch_79

    .line 770
    .end local v0           #br:Ljava/io/BufferedReader;
    .local v1, br:Ljava/io/BufferedReader;
    :try_start_32
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 771
    .local v5, s:Ljava/lang/String;
    const-string v8, ","

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 772
    .local v6, tokens:[Ljava/lang/String;
    const/4 v3, 0x0

    .line 774
    .local v3, idx:I
    add-int/lit8 v4, v3, 0x1

    .end local v3           #idx:I
    .local v4, idx:I
    aget-object v8, v6, v3

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->xscale:I

    .line 775
    add-int/lit8 v3, v4, 0x1

    .end local v4           #idx:I
    .restart local v3       #idx:I
    aget-object v8, v6, v4

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->xtrans:I

    .line 776
    add-int/lit8 v4, v3, 0x1

    .end local v3           #idx:I
    .restart local v4       #idx:I
    aget-object v8, v6, v3

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->yscale:I

    .line 777
    add-int/lit8 v3, v4, 0x1

    .end local v4           #idx:I
    .restart local v3       #idx:I
    aget-object v8, v6, v4

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->ytrans:I

    .line 778
    add-int/lit8 v4, v3, 0x1

    .end local v3           #idx:I
    .restart local v4       #idx:I
    aget-object v8, v6, v3

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->scale_factor:I
    :try_end_6f
    .catchall {:try_start_32 .. :try_end_6f} :catchall_8b
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_6f} :catch_8e

    .line 788
    if-eqz v1, :cond_74

    .line 789
    :try_start_71
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_74} :catch_76

    :cond_74
    move-object v0, v1

    .line 791
    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_24

    .line 790
    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :catch_76
    move-exception v8

    move-object v0, v1

    .line 792
    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_24

    .line 785
    .end local v4           #idx:I
    .end local v5           #s:Ljava/lang/String;
    .end local v6           #tokens:[Ljava/lang/String;
    :catch_79
    move-exception v8

    .line 788
    :goto_7a
    if-eqz v0, :cond_24

    .line 789
    :try_start_7c
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_7f} :catch_80

    goto :goto_24

    .line 790
    :catch_80
    move-exception v8

    goto :goto_24

    .line 787
    :catchall_82
    move-exception v8

    .line 788
    :goto_83
    if-eqz v0, :cond_88

    .line 789
    :try_start_85
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_88} :catch_89

    .line 791
    :cond_88
    :goto_88
    throw v8

    .line 790
    :catch_89
    move-exception v9

    goto :goto_88

    .line 787
    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :catchall_8b
    move-exception v8

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_83

    .line 785
    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :catch_8e
    move-exception v8

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_7a
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 16
    .parameter "canvas"

    .prologue
    const/16 v13, 0xa

    const/16 v12, 0x14

    const/4 v11, 0x0

    const/16 v4, 0x32

    const-string v10, "TS"

    .line 318
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->getMeasuredWidth()I

    move-result v9

    .line 319
    .local v9, width:I
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->getMeasuredHeight()I

    move-result v6

    .line 320
    .local v6, height:I
    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    .line 322
    .local v7, path:Landroid/graphics/Path;
    const/16 v0, 0x64

    iput v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mStand:I

    .line 323
    const/16 v0, 0x64

    iput v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x1_:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y1_:I

    .line 324
    const/16 v0, 0x64

    iput v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x2_:I

    const/16 v0, 0x64

    sub-int v0, v6, v0

    iput v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y2_:I

    .line 325
    const/16 v0, 0x64

    sub-int v0, v9, v0

    iput v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x3_:I

    const/16 v0, 0x64

    sub-int v0, v6, v0

    iput v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y3_:I

    .line 326
    const/16 v0, 0x64

    sub-int v0, v9, v0

    iput v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x4_:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y4_:I

    .line 327
    div-int/lit8 v0, v9, 0x2

    iput v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x5_:I

    div-int/lit8 v0, v6, 0x2

    iput v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y5_:I

    .line 335
    iget v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCurrentState:I

    packed-switch v0, :pswitch_data_53e

    .line 467
    :goto_4f
    :pswitch_4f
    iget-boolean v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCurDown:Z

    if-eqz v0, :cond_4b7

    .line 468
    iget v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCurPressure:F

    const/high16 v1, 0x437f

    mul-float/2addr v0, v1

    float-to-int v8, v0

    .line 469
    .local v8, pressureLevel:I
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    const/16 v2, 0x80

    const/16 v3, 0xff

    sub-int/2addr v3, v8

    invoke-virtual {v0, v1, v8, v2, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 470
    const-string v0, "TS"

    const-string v0, " mCurrentState  mCurDown-Print"

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "X:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->printCurX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Y: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->printCurY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " P: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCurPressure:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " S:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCurSize:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " State: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCurrentState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/high16 v2, 0x4140

    iget-object v3, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 474
    iget v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->printCurX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->printCurY:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 475
    iget v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->printCurX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->printCurY:I

    int-to-float v1, v1

    iget v2, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCurWidth:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 476
    iget v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->printCurX:I

    iput v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->printLastX:I

    .line 477
    iget v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->printCurY:I

    iput v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->printLastY:I

    .line 485
    .end local v8           #pressureLevel:I
    :goto_da
    const-wide/16 v0, 0x64

    :try_start_dc
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_df
    .catch Ljava/lang/InterruptedException; {:try_start_dc .. :try_end_df} :catch_53b

    .line 488
    :goto_df
    iget v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCurrentState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_113

    .line 489
    invoke-direct {p0}, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->calibrate()Z

    move-result v0

    if-eqz v0, :cond_50d

    .line 490
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCurrentState:I

    .line 491
    iput v11, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mFirstState:I

    .line 492
    const-string v0, "TS"

    const-string v0, "#### hopemini #### calibration ok"

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->save()V

    .line 494
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCalComplete:Z

    .line 495
    const-string v0, "TS"

    const-string v0, " mCurrentState  COMPLETED"

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->this$0:Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration;

    const-string v1, "Complete Calibration"

    invoke-static {v0, v1, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 497
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->this$0:Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration;

    invoke-virtual {v0}, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration;->finish()V

    .line 510
    :cond_113
    :goto_113
    return-void

    .line 337
    :pswitch_114
    iget v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mFirstState:I

    if-nez v0, :cond_15b

    .line 338
    const-string v0, "Touch the target"

    iget v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x5_:I

    sub-int/2addr v1, v4

    int-to-float v1, v1

    iget v2, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y5_:I

    const/16 v3, 0x41

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mMessageTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 340
    const-string v0, "to calibrate"

    iget v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x5_:I

    sub-int/2addr v1, v4

    int-to-float v1, v1

    iget v2, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y5_:I

    sub-int/2addr v2, v4

    int-to-float v2, v2

    iget-object v3, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mMessageTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 342
    const-string v0, "touch accuracy"

    iget v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x5_:I

    sub-int/2addr v1, v4

    int-to-float v1, v1

    iget v2, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y5_:I

    const/16 v3, 0x23

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mMessageTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 344
    const-string v0, "with a stylus pen."

    iget v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x5_:I

    sub-int/2addr v1, v4

    int-to-float v1, v1

    iget v2, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y5_:I

    sub-int/2addr v2, v12

    int-to-float v2, v2

    iget-object v3, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mMessageTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 346
    const/4 v0, 0x1

    iput v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mFirstState:I

    .line 349
    :cond_15b
    iget v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x5_:I

    int-to-float v0, v0

    iget v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y5_:I

    int-to-float v1, v1

    const/high16 v2, 0x4000

    iget-object v3, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 351
    iget v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x5_:I

    sub-int/2addr v0, v12

    int-to-float v1, v0

    iget v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y5_:I

    int-to-float v2, v0

    iget v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x5_:I

    sub-int/2addr v0, v13

    int-to-float v3, v0

    iget v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y5_:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCrossPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 352
    iget v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x5_:I

    add-int/lit8 v0, v0, 0xa

    int-to-float v1, v0

    iget v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y5_:I

    int-to-float v2, v0

    iget v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x5_:I

    add-int/lit8 v0, v0, 0x14

    int-to-float v3, v0

    iget v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y5_:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCrossPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 353
    iget v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x5_:I

    int-to-float v1, v0

    iget v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y5_:I

    sub-int/2addr v0, v12

    int-to-float v2, v0

    iget v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x5_:I

    int-to-float v3, v0

    iget v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y5_:I

    sub-int/2addr v0, v13

    int-to-float v4, v0

    iget-object v5, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCrossPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 354
    iget v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x5_:I

    int-to-float v1, v0

    iget v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y5_:I

    add-int/lit8 v0, v0, 0xa

    int-to-float v2, v0

    iget v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x5_:I

    int-to-float v3, v0

    iget v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y5_:I

    add-int/lit8 v0, v0, 0x14

    int-to-float v4, v0

    iget-object v5, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCrossPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 356
    iget v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x5_:I

    iget v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y5_:I

    invoke-direct {p0, v7, v0, v1}, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->drawLineFill(Landroid/graphics/Path;II)V

    .line 357
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCrossPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 358
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCrossPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 359
    const-string v0, "TS"

    const-string v0, " mCurrentState  CENTER"

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4f

    .line 364
    :pswitch_1d8
    iget v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x1_:I

    int-to-float v0, v0

    iget v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y1_:I

    int-to-float v1, v1

    const/high16 v2, 0x4000

    iget-object v3, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 366
    iget v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x1_:I

    sub-int/2addr v0, v12

    int-to-float v1, v0

    iget v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y1_:I

    int-to-float v2, v0

    iget v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x1_:I

    sub-int/2addr v0, v13

    int-to-float v3, v0

    iget v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y1_:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCrossPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 367
    iget v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x1_:I

    add-int/lit8 v0, v0, 0xa

    int-to-float v1, v0

    iget v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y1_:I

    int-to-float v2, v0

    iget v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x1_:I

    add-int/lit8 v0, v0, 0x14

    int-to-float v3, v0

    iget v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y1_:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCrossPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 368
    iget v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x1_:I

    int-to-float v1, v0

    iget v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y1_:I

    sub-int/2addr v0, v12

    int-to-float v2, v0

    iget v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x1_:I

    int-to-float v3, v0

    iget v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y1_:I

    sub-int/2addr v0, v13

    int-to-float v4, v0

    iget-object v5, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCrossPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 369
    iget v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x1_:I

    int-to-float v1, v0

    iget v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y1_:I

    add-int/lit8 v0, v0, 0xa

    int-to-float v2, v0

    iget v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x1_:I

    int-to-float v3, v0

    iget v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y1_:I

    add-int/lit8 v0, v0, 0x14

    int-to-float v4, v0

    iget-object v5, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCrossPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 372
    iget v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x1_:I

    iget v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y1_:I

    invoke-direct {p0, v7, v0, v1}, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->drawLineFill(Landroid/graphics/Path;II)V

    .line 373
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCrossPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 374
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCrossPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 375
    const-string v0, "TS"

    const-string v0, " mCurrentState  TOP_LEFT"

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4f

    .line 379
    :pswitch_255
    iget v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x2_:I

    int-to-float v0, v0

    iget v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y2_:I

    int-to-float v1, v1

    const/high16 v2, 0x4000

    iget-object v3, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 381
    iget v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x2_:I

    sub-int/2addr v0, v12

    int-to-float v1, v0

    iget v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y2_:I

    int-to-float v2, v0

    iget v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x2_:I

    sub-int/2addr v0, v13

    int-to-float v3, v0

    iget v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y2_:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCrossPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 382
    iget v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x2_:I

    add-int/lit8 v0, v0, 0xa

    int-to-float v1, v0

    iget v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y2_:I

    int-to-float v2, v0

    iget v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x2_:I

    add-int/lit8 v0, v0, 0x14

    int-to-float v3, v0

    iget v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y2_:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCrossPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 383
    iget v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x2_:I

    int-to-float v1, v0

    iget v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y2_:I

    sub-int/2addr v0, v12

    int-to-float v2, v0

    iget v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x2_:I

    int-to-float v3, v0

    iget v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y2_:I

    sub-int/2addr v0, v13

    int-to-float v4, v0

    iget-object v5, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCrossPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 384
    iget v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x2_:I

    int-to-float v1, v0

    iget v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y2_:I

    add-int/lit8 v0, v0, 0xa

    int-to-float v2, v0

    iget v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x2_:I

    int-to-float v3, v0

    iget v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y2_:I

    add-int/lit8 v0, v0, 0x14

    int-to-float v4, v0

    iget-object v5, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCrossPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 386
    iget v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x2_:I

    iget v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y2_:I

    invoke-direct {p0, v7, v0, v1}, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->drawLineFill(Landroid/graphics/Path;II)V

    .line 387
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCrossPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 388
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCrossPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 389
    const-string v0, "TS"

    const-string v0, " mCurrentState  BOTTOM_LEFT"

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4f

    .line 393
    :pswitch_2d2
    iget v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x3_:I

    int-to-float v0, v0

    iget v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y3_:I

    int-to-float v1, v1

    const/high16 v2, 0x4000

    iget-object v3, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 395
    iget v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x3_:I

    sub-int/2addr v0, v12

    int-to-float v1, v0

    iget v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y3_:I

    int-to-float v2, v0

    iget v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x3_:I

    sub-int/2addr v0, v13

    int-to-float v3, v0

    iget v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y3_:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCrossPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 396
    iget v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x3_:I

    add-int/lit8 v0, v0, 0xa

    int-to-float v1, v0

    iget v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y3_:I

    int-to-float v2, v0

    iget v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x3_:I

    add-int/lit8 v0, v0, 0x14

    int-to-float v3, v0

    iget v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y3_:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCrossPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 397
    iget v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x3_:I

    int-to-float v1, v0

    iget v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y3_:I

    sub-int/2addr v0, v12

    int-to-float v2, v0

    iget v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x3_:I

    int-to-float v3, v0

    iget v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y3_:I

    sub-int/2addr v0, v13

    int-to-float v4, v0

    iget-object v5, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCrossPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 398
    iget v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x3_:I

    int-to-float v1, v0

    iget v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y3_:I

    add-int/lit8 v0, v0, 0xa

    int-to-float v2, v0

    iget v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x3_:I

    int-to-float v3, v0

    iget v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y3_:I

    add-int/lit8 v0, v0, 0x14

    int-to-float v4, v0

    iget-object v5, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCrossPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 400
    iget v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x3_:I

    iget v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y3_:I

    invoke-direct {p0, v7, v0, v1}, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->drawLineFill(Landroid/graphics/Path;II)V

    .line 401
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCrossPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 402
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCrossPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 403
    const-string v0, "TS"

    const-string v0, " mCurrentState  BOTTOM_RIGHT"

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4f

    .line 407
    :pswitch_34f
    iget v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x4_:I

    int-to-float v0, v0

    iget v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y4_:I

    int-to-float v1, v1

    const/high16 v2, 0x4000

    iget-object v3, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 409
    iget v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x4_:I

    sub-int/2addr v0, v12

    int-to-float v1, v0

    iget v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y4_:I

    int-to-float v2, v0

    iget v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x4_:I

    sub-int/2addr v0, v13

    int-to-float v3, v0

    iget v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y4_:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCrossPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 410
    iget v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x4_:I

    add-int/lit8 v0, v0, 0xa

    int-to-float v1, v0

    iget v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y4_:I

    int-to-float v2, v0

    iget v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x4_:I

    add-int/lit8 v0, v0, 0x14

    int-to-float v3, v0

    iget v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y4_:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCrossPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 411
    iget v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x4_:I

    int-to-float v1, v0

    iget v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y4_:I

    sub-int/2addr v0, v12

    int-to-float v2, v0

    iget v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x4_:I

    int-to-float v3, v0

    iget v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y4_:I

    sub-int/2addr v0, v13

    int-to-float v4, v0

    iget-object v5, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCrossPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 412
    iget v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x4_:I

    int-to-float v1, v0

    iget v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y4_:I

    add-int/lit8 v0, v0, 0xa

    int-to-float v2, v0

    iget v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x4_:I

    int-to-float v3, v0

    iget v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y4_:I

    add-int/lit8 v0, v0, 0x14

    int-to-float v4, v0

    iget-object v5, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCrossPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 414
    iget v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x4_:I

    iget v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y4_:I

    invoke-direct {p0, v7, v0, v1}, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->drawLineFill(Landroid/graphics/Path;II)V

    .line 415
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCrossPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 416
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCrossPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 417
    const-string v0, "TS"

    const-string v0, " mCurrentState  TOP_RIGHT"

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4f

    .line 421
    :pswitch_3cc
    const-string v0, "Out of range."

    iget v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x5_:I

    sub-int/2addr v1, v4

    int-to-float v1, v1

    iget v2, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y5_:I

    const/16 v3, 0x2d

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mMessageTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 423
    const-string v0, "Please try again"

    iget v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x5_:I

    sub-int/2addr v1, v4

    int-to-float v1, v1

    iget v2, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y5_:I

    const/16 v3, 0x1e

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mMessageTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 425
    const-string v0, "TS"

    const-string v0, " mCurrentState  CENTER_ERROR"

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    iput v11, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCurrentState:I

    .line 427
    iput-boolean v11, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCurDown:Z

    goto/16 :goto_4f

    .line 430
    :pswitch_3fb
    const-string v0, "Out of range."

    iget v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x5_:I

    sub-int/2addr v1, v4

    int-to-float v1, v1

    iget v2, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y5_:I

    const/16 v3, 0x8

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mMessageTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 432
    const-string v0, "Please try again"

    iget v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x5_:I

    sub-int/2addr v1, v4

    int-to-float v1, v1

    iget v2, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y5_:I

    add-int/lit8 v2, v2, 0x7

    int-to-float v2, v2

    iget-object v3, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mMessageTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 435
    const-string v0, "TS"

    const-string v0, " mCurrentState  TOP_LEFT_ERROR"

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    const/4 v0, 0x1

    iput v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCurrentState:I

    .line 437
    iput-boolean v11, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCurDown:Z

    goto/16 :goto_4f

    .line 440
    :pswitch_42a
    const-string v0, "Out of range."

    iget v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x5_:I

    sub-int/2addr v1, v4

    int-to-float v1, v1

    iget v2, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y5_:I

    const/16 v3, 0x8

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mMessageTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 442
    const-string v0, "Please try again"

    iget v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x5_:I

    sub-int/2addr v1, v4

    int-to-float v1, v1

    iget v2, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y5_:I

    add-int/lit8 v2, v2, 0x7

    int-to-float v2, v2

    iget-object v3, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mMessageTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 444
    const-string v0, "TS"

    const-string v0, " mCurrentState  BOTTOM_LEFT_ERROR"

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    const/4 v0, 0x2

    iput v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCurrentState:I

    .line 446
    iput-boolean v11, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCurDown:Z

    goto/16 :goto_4f

    .line 449
    :pswitch_459
    const-string v0, "Out of range."

    iget v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x5_:I

    sub-int/2addr v1, v4

    int-to-float v1, v1

    iget v2, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y5_:I

    const/16 v3, 0x8

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mMessageTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 451
    const-string v0, "Please try again"

    iget v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x5_:I

    sub-int/2addr v1, v4

    int-to-float v1, v1

    iget v2, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y5_:I

    add-int/lit8 v2, v2, 0x7

    int-to-float v2, v2

    iget-object v3, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mMessageTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 453
    const-string v0, "TS"

    const-string v0, " mCurrentState  BOTTOM_RIGHT_ERROR"

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    const/4 v0, 0x3

    iput v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCurrentState:I

    .line 455
    iput-boolean v11, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCurDown:Z

    goto/16 :goto_4f

    .line 458
    :pswitch_488
    const-string v0, "Out of range."

    iget v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x5_:I

    sub-int/2addr v1, v4

    int-to-float v1, v1

    iget v2, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y5_:I

    const/16 v3, 0x8

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mMessageTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 460
    const-string v0, "Please try again"

    iget v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x5_:I

    sub-int/2addr v1, v4

    int-to-float v1, v1

    iget v2, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y5_:I

    add-int/lit8 v2, v2, 0x7

    int-to-float v2, v2

    iget-object v3, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mMessageTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 462
    const-string v0, "TS"

    const-string v0, " mCurrentState  TOP_RIGHT_ERROR"

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    const/4 v0, 0x4

    iput v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCurrentState:I

    .line 464
    iput-boolean v11, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCurDown:Z

    goto/16 :goto_4f

    .line 479
    :cond_4b7
    const-string v0, "TS"

    const-string v0, "   mLastPoint-Print"

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "X:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->printLastX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Y: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->printLastY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " P: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCurPressure:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " S:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCurSize:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " State: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCurrentState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/high16 v2, 0x4140

    iget-object v3, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_da

    .line 499
    :cond_50d
    iput v11, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCurrentState:I

    .line 500
    iput-boolean v11, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCalComplete:Z

    .line 501
    const-string v0, "TS"

    const-string v0, "#### hopemini #### calibration NOT ok"

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->this$0:Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Calibration Failed"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Please, re-start calibration"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_113

    .line 486
    :catch_53b
    move-exception v0

    goto/16 :goto_df

    .line 335
    :pswitch_data_53e
    .packed-switch 0x0
        :pswitch_114
        :pswitch_1d8
        :pswitch_255
        :pswitch_2d2
        :pswitch_34f
        :pswitch_4f
        :pswitch_3cc
        :pswitch_3fb
        :pswitch_42a
        :pswitch_459
        :pswitch_488
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 12
    .parameter "event"

    .prologue
    .line 514
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 515
    .local v0, action:I
    iget-object v4, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mRect:Landroid/graphics/Rect;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->getWidth()I

    move-result v7

    const/16 v8, 0xf

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 516
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->getMeasuredWidth()I

    move-result v2

    .line 517
    .local v2, mWidth:I
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->getMeasuredHeight()I

    move-result v1

    .line 518
    .local v1, mHeight:I
    const/4 v3, 0x0

    .line 520
    .local v3, tempTest:I
    iget-object v4, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v4}, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->invalidate(Landroid/graphics/Rect;)V

    .line 521
    iget-boolean v4, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCurDown:Z

    if-eqz v4, :cond_a7

    .line 522
    iget-object v4, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mRect:Landroid/graphics/Rect;

    iget v5, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCurX:I

    iget v6, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCurWidth:I

    sub-int/2addr v5, v6

    const/4 v6, 0x3

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCurY:I

    iget v7, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCurWidth:I

    sub-int/2addr v6, v7

    const/4 v7, 0x3

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCurX:I

    iget v8, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCurWidth:I

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x3

    iget v8, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCurY:I

    iget v9, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCurWidth:I

    add-int/2addr v8, v9

    add-int/lit8 v8, v8, 0x3

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 527
    :goto_44
    if-nez v0, :cond_ad

    const/4 v4, 0x1

    :goto_47
    iput-boolean v4, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCurDown:Z

    .line 528
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCurX:I

    .line 529
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCurY:I

    .line 530
    iget v4, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCurX:I

    iput v4, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->printCurX:I

    .line 531
    iget v4, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCurY:I

    iput v4, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->printCurY:I

    .line 532
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v4

    iput v4, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCurPressure:F

    .line 533
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSize()F

    move-result v4

    iput v4, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCurSize:F

    .line 534
    iget v4, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCurSize:F

    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x3

    int-to-float v5, v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCurWidth:I

    .line 536
    iget-boolean v4, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCurDown:Z

    if-eqz v4, :cond_a2

    .line 537
    iget-object v4, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mRect:Landroid/graphics/Rect;

    iget v5, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCurX:I

    iget v6, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCurWidth:I

    sub-int/2addr v5, v6

    const/4 v6, 0x3

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCurY:I

    iget v7, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCurWidth:I

    sub-int/2addr v6, v7

    const/4 v7, 0x3

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCurX:I

    iget v8, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCurWidth:I

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x3

    iget v8, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCurY:I

    iget v9, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCurWidth:I

    add-int/2addr v8, v9

    add-int/lit8 v8, v8, 0x3

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->union(IIII)V

    .line 539
    iget v4, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCurrentState:I

    packed-switch v4, :pswitch_data_3f8

    .line 614
    :cond_a2
    :goto_a2
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->invalidate()V

    .line 615
    const/4 v4, 0x1

    return v4

    .line 525
    :cond_a7
    iget-object v4, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_44

    .line 527
    :cond_ad
    const/4 v4, 0x0

    goto :goto_47

    .line 541
    :pswitch_af
    iget v4, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCurX:I

    iget v5, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mStand:I

    const/16 v6, 0xf

    sub-int/2addr v5, v6

    if-le v4, v5, :cond_11a

    iget v4, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCurX:I

    iget v5, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mStand:I

    add-int/lit8 v5, v5, 0xf

    if-ge v4, v5, :cond_11a

    iget v4, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCurY:I

    iget v5, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mStand:I

    const/16 v6, 0xf

    sub-int/2addr v5, v6

    if-le v4, v5, :cond_11a

    iget v4, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCurY:I

    iget v5, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mStand:I

    add-int/lit8 v5, v5, 0xf

    if-ge v4, v5, :cond_11a

    .line 542
    iget v4, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCurX:I

    iput v4, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x1:I

    .line 543
    iget v4, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCurY:I

    iput v4, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y1:I

    .line 544
    const/4 v4, 0x2

    iput v4, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCurrentState:I

    .line 545
    const/4 v4, 0x1

    if-ne v3, v4, :cond_e7

    .line 546
    const/16 v4, 0x64

    iput v4, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x1:I

    const/16 v4, 0x64

    iput v4, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y1:I

    .line 549
    :cond_e7
    const-string v4, "TS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "x1 :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCurX:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "    y1:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCurY:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mCurrentState "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " TOP_LEFT"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a2

    .line 551
    :cond_11a
    const-string v4, "TS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "x1 :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCurX:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "    y1:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCurY:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mCurrentState "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " TOP_LEFT_ERROR"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    const/4 v4, 0x7

    iput v4, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCurrentState:I

    goto/16 :goto_a2

    .line 556
    :pswitch_151
    iget v4, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCurX:I

    iget v5, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mStand:I

    const/16 v6, 0xf

    sub-int/2addr v5, v6

    if-le v4, v5, :cond_1c3

    iget v4, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCurX:I

    iget v5, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mStand:I

    add-int/lit8 v5, v5, 0xf

    if-ge v4, v5, :cond_1c3

    iget v4, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCurY:I

    iget v5, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mStand:I

    add-int/lit8 v5, v5, 0xf

    sub-int v5, v1, v5

    if-le v4, v5, :cond_1c3

    iget v4, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCurY:I

    iget v5, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mStand:I

    const/16 v6, 0xf

    sub-int/2addr v5, v6

    sub-int v5, v1, v5

    if-ge v4, v5, :cond_1c3

    .line 557
    iget v4, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCurX:I

    iput v4, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x2:I

    .line 558
    iget v4, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCurY:I

    iput v4, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y2:I

    .line 559
    const/4 v4, 0x1

    if-ne v3, v4, :cond_18c

    .line 560
    const/16 v4, 0x64

    iput v4, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x2:I

    const/16 v4, 0x64

    sub-int v4, v1, v4

    iput v4, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y2:I

    .line 562
    :cond_18c
    const/4 v4, 0x3

    iput v4, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCurrentState:I

    .line 563
    const-string v4, "TS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "x1 :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCurX:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "    y1:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCurY:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mCurrentState "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " BOTTOM_LEFT "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a2

    .line 565
    :cond_1c3
    const-string v4, "TS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "x1 :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCurX:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "    y1:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCurY:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mCurrentState "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " BOTTOM_LEFT_ERROR"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    const/16 v4, 0x8

    iput v4, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCurrentState:I

    goto/16 :goto_a2

    .line 570
    :pswitch_1fb
    iget v4, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCurX:I

    iget v5, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mStand:I

    add-int/lit8 v5, v5, 0xf

    sub-int v5, v2, v5

    if-le v4, v5, :cond_273

    iget v4, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCurX:I

    iget v5, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mStand:I

    const/16 v6, 0xf

    sub-int/2addr v5, v6

    sub-int v5, v2, v5

    if-ge v4, v5, :cond_273

    iget v4, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCurY:I

    iget v5, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mStand:I

    add-int/lit8 v5, v5, 0xf

    sub-int v5, v1, v5

    if-le v4, v5, :cond_273

    iget v4, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCurY:I

    iget v5, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mStand:I

    const/16 v6, 0xf

    sub-int/2addr v5, v6

    sub-int v5, v1, v5

    if-ge v4, v5, :cond_273

    .line 571
    iget v4, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCurX:I

    iput v4, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x3:I

    .line 572
    iget v4, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCurY:I

    iput v4, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y3:I

    .line 573
    const/4 v4, 0x4

    iput v4, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCurrentState:I

    .line 574
    const/4 v4, 0x1

    if-ne v3, v4, :cond_23f

    .line 575
    const/16 v4, 0x64

    sub-int v4, v2, v4

    iput v4, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x3:I

    const/16 v4, 0x64

    sub-int v4, v1, v4

    iput v4, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y3:I

    .line 577
    :cond_23f
    const-string v4, "TS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "x1 :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCurX:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "    y1:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCurY:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mCurrentState "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " BOTTOM_RIGHT"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a2

    .line 579
    :cond_273
    const-string v4, "TS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "x1 :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCurX:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "    y1:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCurY:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mCurrentState "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " BOTTOM_RIGHT_ERROR"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    const/16 v4, 0x9

    iput v4, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCurrentState:I

    goto/16 :goto_a2

    .line 584
    :pswitch_2ab
    iget v4, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCurX:I

    iget v5, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mStand:I

    add-int/lit8 v5, v5, 0xf

    sub-int v5, v2, v5

    if-le v4, v5, :cond_31d

    iget v4, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCurX:I

    iget v5, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mStand:I

    const/16 v6, 0xf

    sub-int/2addr v5, v6

    sub-int v5, v2, v5

    if-ge v4, v5, :cond_31d

    iget v4, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCurY:I

    iget v5, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mStand:I

    const/16 v6, 0xf

    sub-int/2addr v5, v6

    if-le v4, v5, :cond_31d

    iget v4, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCurY:I

    iget v5, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mStand:I

    add-int/lit8 v5, v5, 0xf

    if-ge v4, v5, :cond_31d

    .line 585
    iget v4, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCurX:I

    iput v4, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x4:I

    .line 586
    iget v4, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCurY:I

    iput v4, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y4:I

    .line 587
    const/4 v4, 0x1

    if-ne v3, v4, :cond_2e6

    .line 588
    const/16 v4, 0x64

    sub-int v4, v2, v4

    iput v4, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x4:I

    const/16 v4, 0x64

    iput v4, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y4:I

    .line 590
    :cond_2e6
    const/4 v4, 0x5

    iput v4, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCurrentState:I

    .line 591
    const-string v4, "TS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "x1 :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCurX:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "    y1:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCurY:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mCurrentState "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "COMPLETED"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a2

    .line 593
    :cond_31d
    const-string v4, "TS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "x1 :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCurX:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "    y1:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCurY:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mCurrentState "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "TOP_RIGHT_ERROR"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    const/16 v4, 0xa

    iput v4, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCurrentState:I

    goto/16 :goto_a2

    .line 598
    :pswitch_355
    iget v4, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCurX:I

    div-int/lit8 v5, v2, 0x2

    const/16 v6, 0xf

    sub-int/2addr v5, v6

    if-le v4, v5, :cond_3c1

    iget v4, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCurX:I

    div-int/lit8 v5, v2, 0x2

    add-int/lit8 v5, v5, 0xf

    if-ge v4, v5, :cond_3c1

    iget v4, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCurY:I

    div-int/lit8 v5, v1, 0x2

    const/16 v6, 0xf

    sub-int/2addr v5, v6

    if-le v4, v5, :cond_3c1

    iget v4, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCurY:I

    div-int/lit8 v5, v1, 0x2

    add-int/lit8 v5, v5, 0xf

    if-ge v4, v5, :cond_3c1

    .line 599
    iget v4, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCurX:I

    iput v4, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x5:I

    .line 600
    iget v4, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCurY:I

    iput v4, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y5:I

    .line 601
    const/4 v4, 0x1

    iput v4, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCurrentState:I

    .line 602
    const/4 v4, 0x1

    if-ne v3, v4, :cond_38d

    .line 603
    div-int/lit8 v4, v2, 0x2

    iput v4, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->x5:I

    div-int/lit8 v4, v1, 0x2

    iput v4, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->y5:I

    .line 605
    :cond_38d
    const-string v4, "TS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "x1 :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCurX:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "    y1:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCurY:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mCurrentState "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "CENTER"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a2

    .line 607
    :cond_3c1
    const-string v4, "TS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "x1 :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCurX:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "    y1:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCurY:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mCurrentState "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "CENTER_ERROR"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    const/4 v4, 0x6

    iput v4, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCurrentState:I

    goto/16 :goto_a2

    .line 539
    :pswitch_data_3f8
    .packed-switch 0x0
        :pswitch_355
        :pswitch_af
        :pswitch_151
        :pswitch_1fb
        :pswitch_2ab
    .end packed-switch
.end method

.method public save()V
    .registers 10

    .prologue
    const-string v5, ","

    .line 739
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 740
    .local v0, dataDir:Ljava/io/File;
    new-instance v4, Ljava/io/File;

    const-string v5, "misc/ts_cal"

    invoke-direct {v4, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 742
    .local v4, wp:Ljava/io/File;
    :try_start_d
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 743
    .local v2, fos:Ljava/io/FileOutputStream;
    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x1b6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v8}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 747
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->xscale:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->xtrans:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->yscale:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->ytrans:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->scale_factor:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 749
    .local v3, s:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 750
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_6d} :catch_6e

    .line 754
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .end local v3           #s:Ljava/lang/String;
    :goto_6d
    return-void

    .line 751
    :catch_6e
    move-exception v5

    move-object v1, v5

    .line 752
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "TS"

    const-string v6, "File Not Found error!! "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6d
.end method
