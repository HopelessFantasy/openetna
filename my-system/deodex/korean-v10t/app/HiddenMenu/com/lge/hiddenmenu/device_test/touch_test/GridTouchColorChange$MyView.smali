.class public Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;
.super Landroid/view/View;
.source "GridTouchColorChange.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyView"
.end annotation


# static fields
.field private static final FADE_ALPHA:I = 0x6

.field private static final MAX_FADE_STEPS:I = 0x2e


# instance fields
.field private NumOfTouch:[I

.field private currBX:I

.field private currBY:I

.field private currEX:I

.field private currEY:I

.field private heightRect:I

.field private indexPrevX:I

.field private indexPrevY:I

.field private indexX:I

.field private indexY:I

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCanvas:Landroid/graphics/Canvas;

.field private mCurDown:Z

.field private mCurPressure:F

.field private mCurSize:F

.field private mCurWidth:I

.field private mCurX:I

.field private mCurY:I

.field private final mFadePaint:Landroid/graphics/Paint;

.field private mFadeSteps:I

.field private final mPaint:Landroid/graphics/Paint;

.field private final mRect:Landroid/graphics/Rect;

.field private numX:I

.field private numY:I

.field final synthetic this$0:Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange;

.field private widthRect:I


# direct methods
.method public constructor <init>(Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange;Landroid/content/Context;)V
    .registers 10
    .parameter
    .parameter "c"

    .prologue
    const/16 v6, 0x2d

    const/16 v5, 0x14

    const/4 v4, 0x1

    const/16 v2, 0xff

    const/4 v3, 0x0

    .line 237
    iput-object p1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->this$0:Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange;

    .line 238
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 214
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->mRect:Landroid/graphics/Rect;

    .line 223
    const/16 v1, 0x2e

    iput v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->mFadeSteps:I

    .line 225
    const/16 v1, 0x40

    iput v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->widthRect:I

    .line 226
    const/16 v1, 0x35

    iput v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->heightRect:I

    .line 229
    iput v5, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->indexPrevX:I

    .line 230
    iput v5, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->indexPrevY:I

    .line 231
    const/4 v1, 0x5

    iput v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->numX:I

    .line 232
    const/16 v1, 0x9

    iput v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->numY:I

    .line 234
    new-array v1, v6, [I

    iput-object v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->NumOfTouch:[I

    .line 239
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->mPaint:Landroid/graphics/Paint;

    .line 240
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 241
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 242
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x41a0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 243
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->mFadePaint:Landroid/graphics/Paint;

    .line 244
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->mFadePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setDither(Z)V

    .line 245
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->mFadePaint:Landroid/graphics/Paint;

    const/4 v2, 0x6

    invoke-virtual {v1, v2, v3, v3, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 247
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5a
    if-ge v0, v6, :cond_63

    .line 248
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->NumOfTouch:[I

    aput v3, v1, v0

    .line 247
    add-int/lit8 v0, v0, 0x1

    goto :goto_5a

    .line 250
    :cond_63
    return-void
.end method

.method private DrawTestResult()V
    .registers 15

    .prologue
    .line 417
    const/4 v9, 0x0

    .line 418
    .local v9, numTotal:I
    const/4 v8, 0x0

    .line 419
    .local v8, numSuccess:I
    const/4 v7, 0x0

    .line 422
    .local v7, numFail:I
    iget v13, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->widthRect:I

    .line 423
    .local v13, width:I
    const/16 v6, 0x28

    .line 425
    .local v6, height:I
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->clear()V

    .line 426
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->mPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    const/16 v2, 0xff

    const/16 v3, 0xff

    const/16 v4, 0xff

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 427
    const/4 v11, 0x0

    .local v11, ny:I
    :goto_18
    iget v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->numY:I

    if-ge v11, v0, :cond_59

    .line 428
    const/4 v10, 0x0

    .local v10, nx:I
    :goto_1d
    iget v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->numX:I

    if-ge v10, v0, :cond_56

    .line 429
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->mCanvas:Landroid/graphics/Canvas;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->NumOfTouch:[I

    mul-int/lit8 v3, v11, 0x5

    add-int/2addr v3, v10

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    mul-int v2, v10, v13

    int-to-float v2, v2

    add-int/lit8 v3, v11, 0x1

    mul-int/2addr v3, v6

    const/4 v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 431
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->NumOfTouch:[I

    mul-int/lit8 v1, v11, 0x5

    add-int/2addr v1, v10

    aget v0, v0, v1

    add-int/2addr v8, v0

    .line 428
    add-int/lit8 v10, v10, 0x1

    goto :goto_1d

    .line 427
    :cond_56
    add-int/lit8 v11, v11, 0x1

    goto :goto_18

    .line 436
    .end local v10           #nx:I
    :cond_59
    const/4 v11, 0x0

    :goto_5a
    iget v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->numY:I

    if-gt v11, v0, :cond_74

    .line 437
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->mCanvas:Landroid/graphics/Canvas;

    const/4 v1, 0x0

    mul-int v2, v11, v6

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-int v4, v11, v6

    int-to-float v4, v4

    iget-object v5, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 436
    add-int/lit8 v11, v11, 0x1

    goto :goto_5a

    .line 439
    :cond_74
    const/4 v10, 0x0

    .restart local v10       #nx:I
    :goto_75
    iget v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->numX:I

    if-gt v10, v0, :cond_8e

    .line 440
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->mCanvas:Landroid/graphics/Canvas;

    mul-int v1, v10, v13

    int-to-float v1, v1

    const/4 v2, 0x0

    mul-int v3, v10, v13

    int-to-float v3, v3

    iget v4, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->numY:I

    mul-int/2addr v4, v6

    int-to-float v4, v4

    iget-object v5, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 439
    add-int/lit8 v10, v10, 0x1

    goto :goto_75

    .line 442
    :cond_8e
    const v9, 0x41eb0

    .line 443
    const v0, 0x41eb0

    sub-int v7, v0, v8

    .line 444
    div-int v0, v8, v9

    mul-int/lit8 v0, v0, 0x64

    int-to-float v12, v0

    .line 446
    .local v12, ratio:F
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->mPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    const/16 v2, 0xff

    const/16 v3, 0xff

    const/16 v4, 0xff

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 447
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41a0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 449
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->mCanvas:Landroid/graphics/Canvas;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Total: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    iget v3, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->numY:I

    add-int/lit8 v3, v3, 0x1

    mul-int/2addr v3, v6

    int-to-float v3, v3

    iget-object v4, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 450
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->mCanvas:Landroid/graphics/Canvas;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Success: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    iget v3, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->numY:I

    add-int/lit8 v3, v3, 0x1

    mul-int/2addr v3, v6

    add-int/lit8 v3, v3, 0x19

    int-to-float v3, v3

    iget-object v4, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 451
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->mCanvas:Landroid/graphics/Canvas;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    iget v3, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->numY:I

    add-int/lit8 v3, v3, 0x1

    mul-int/2addr v3, v6

    add-int/lit8 v3, v3, 0x32

    int-to-float v3, v3

    iget-object v4, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 452
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->mCanvas:Landroid/graphics/Canvas;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Recognition Percent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    iget v3, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->numY:I

    add-int/lit8 v3, v3, 0x1

    mul-int/2addr v3, v6

    add-int/lit8 v3, v3, 0x4b

    int-to-float v3, v3

    iget-object v4, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 453
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->invalidate()V

    .line 455
    return-void
.end method

.method private InitDraw(II)V
    .registers 13
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v1, 0x0

    const/16 v2, 0xff

    .line 363
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->clear()V

    .line 364
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 366
    const/4 v9, 0x0

    .local v9, ny:I
    :goto_c
    iget v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->numY:I

    if-gt v9, v0, :cond_25

    .line 367
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->mCanvas:Landroid/graphics/Canvas;

    mul-int v2, v9, p2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-int v4, v9, p2

    int-to-float v4, v4

    iget-object v5, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 366
    add-int/lit8 v9, v9, 0x1

    goto :goto_c

    .line 369
    :cond_25
    const/4 v8, 0x0

    .local v8, nx:I
    :goto_26
    iget v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->numX:I

    if-gt v8, v0, :cond_42

    .line 370
    iget-object v2, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->mCanvas:Landroid/graphics/Canvas;

    mul-int v0, v8, p1

    int-to-float v3, v0

    mul-int v0, v8, p1

    int-to-float v5, v0

    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->getHeight()I

    move-result v0

    const/4 v4, 0x1

    sub-int/2addr v0, v4

    int-to-float v6, v0

    iget-object v7, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->mPaint:Landroid/graphics/Paint;

    move v4, v1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 369
    add-int/lit8 v8, v8, 0x1

    goto :goto_26

    .line 372
    :cond_42
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->invalidate()V

    .line 373
    return-void
.end method

.method static synthetic access$000(Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 209
    invoke-direct {p0}, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->DrawTestResult()V

    return-void
.end method

.method private drawPoint(FFFF)V
    .registers 12
    .parameter "x"
    .parameter "y"
    .parameter "pressure"
    .parameter "size"

    .prologue
    const/16 v4, 0xff

    const/4 v6, 0x0

    .line 377
    float-to-int v1, p1

    iput v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->mCurX:I

    .line 378
    float-to-int v1, p2

    iput v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->mCurY:I

    .line 379
    iput p3, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->mCurPressure:F

    .line 381
    iget v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->mCurX:I

    iget v2, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->widthRect:I

    div-int/2addr v1, v2

    iput v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->indexX:I

    .line 382
    iget v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->mCurY:I

    iget v2, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->heightRect:I

    div-int/2addr v1, v2

    iput v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->indexY:I

    .line 384
    iget v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->indexX:I

    iget v2, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->widthRect:I

    mul-int/2addr v1, v2

    iput v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->currBX:I

    .line 385
    iget v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->indexY:I

    iget v2, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->heightRect:I

    mul-int/2addr v1, v2

    iput v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->currBY:I

    .line 386
    iget v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->currBX:I

    iget v2, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->widthRect:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->currEX:I

    .line 387
    iget v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->currBY:I

    iget v2, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->heightRect:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->currEY:I

    .line 389
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->NumOfTouch:[I

    iget v2, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->indexY:I

    mul-int/lit8 v2, v2, 0x5

    iget v3, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->indexX:I

    add-int/2addr v2, v3

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    .line 398
    iget-boolean v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->mCurDown:Z

    if-eqz v1, :cond_ac

    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_ac

    .line 399
    iget v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->mCurPressure:F

    const/high16 v2, 0x437f

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 400
    .local v0, pressureLevel:I
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0, v4, v4, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 405
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->mRect:Landroid/graphics/Rect;

    iget v2, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->currBX:I

    iget v3, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->currBY:I

    iget v4, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->currEX:I

    iget v5, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->currEY:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 406
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->mCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->mRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 407
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0, v6, v6, v6}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 408
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->mCanvas:Landroid/graphics/Canvas;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->NumOfTouch:[I

    iget v4, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->indexY:I

    mul-int/lit8 v4, v4, 0x5

    iget v5, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->indexX:I

    add-int/2addr v4, v5

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->indexX:I

    iget v4, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->widthRect:I

    mul-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->indexY:I

    add-int/lit8 v4, v4, 0x1

    iget v5, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->heightRect:I

    mul-int/2addr v4, v5

    const/4 v5, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 409
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->invalidate(Landroid/graphics/Rect;)V

    .line 411
    .end local v0           #pressureLevel:I
    :cond_ac
    iput v6, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->mFadeSteps:I

    .line 413
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 253
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->mCanvas:Landroid/graphics/Canvas;

    if-eqz v0, :cond_1a

    .line 254
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->mPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 255
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->mCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 256
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->invalidate()V

    .line 257
    const/16 v0, 0x2e

    iput v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->mFadeSteps:I

    .line 261
    :cond_1a
    return-void
.end method

.method public fade()V
    .registers 3

    .prologue
    .line 264
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->mCanvas:Landroid/graphics/Canvas;

    if-eqz v0, :cond_1a

    iget v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->mFadeSteps:I

    const/16 v1, 0x2e

    if-ge v0, v1, :cond_1a

    .line 265
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->mCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->mFadePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 266
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->invalidate()V

    .line 267
    iget v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->mFadeSteps:I

    add-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->mFadeSteps:I

    .line 269
    :cond_1a
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->this$0:Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange;->bFirstPress:Ljava/lang/Integer;

    .line 270
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 5
    .parameter "canvas"

    .prologue
    const/4 v2, 0x0

    .line 309
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_b

    .line 310
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 312
    :cond_b
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 7
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    .line 462
    sparse-switch p1, :sswitch_data_8e

    .line 508
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_8
    return v1

    .line 469
    :sswitch_9
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->this$0:Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange;

    iget-object v1, v1, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange;->mView:Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;

    invoke-direct {v1}, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->DrawTestResult()V

    move v1, v3

    .line 470
    goto :goto_8

    .line 472
    :sswitch_12
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->this$0:Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange;

    iget-object v1, v1, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange;->bAutoAllTest:Ljava/lang/Integer;

    if-eqz v1, :cond_22

    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->this$0:Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange;

    iget-object v1, v1, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange;->bAutoAllTest:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v3, :cond_22

    .line 479
    :cond_22
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->this$0:Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange;

    invoke-virtual {v1}, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange;->finish()V

    move v1, v3

    .line 480
    goto :goto_8

    .line 482
    :sswitch_29
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->this$0:Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange;

    iget-object v1, v1, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange;->bFirstPress:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v3, :cond_58

    .line 483
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->this$0:Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange;

    iget-object v1, v1, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange;->bAutoAllTest:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_44

    .line 484
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->this$0:Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange;

    iget-object v1, v1, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange;->mView:Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;

    invoke-direct {v1}, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->DrawTestResult()V

    .line 485
    :cond_44
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->this$0:Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange;

    iget-object v2, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->this$0:Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange;

    iget-object v2, v2, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange;->bFirstPress:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange;->bFirstPress:Ljava/lang/Integer;

    move v1, v3

    .line 486
    goto :goto_8

    .line 487
    :cond_58
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->this$0:Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange;

    iget-object v1, v1, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange;->bFirstPress:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 488
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->this$0:Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange;

    iget-object v1, v1, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange;->bAutoAllTest:Ljava/lang/Integer;

    if-eqz v1, :cond_89

    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->this$0:Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange;

    iget-object v1, v1, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange;->bAutoAllTest:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v3, :cond_89

    .line 491
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.AUTO_CAMERA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 492
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 494
    :try_start_7f
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->this$0:Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange;

    invoke-virtual {v1, v0}, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange;->startActivity(Landroid/content/Intent;)V
    :try_end_84
    .catch Landroid/content/ActivityNotFoundException; {:try_start_7f .. :try_end_84} :catch_8c

    .line 499
    :goto_84
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->this$0:Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange;

    invoke-virtual {v1}, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange;->finish()V

    .end local v0           #intent:Landroid/content/Intent;
    :cond_89
    move v1, v3

    .line 501
    goto/16 :goto_8

    .line 496
    .restart local v0       #intent:Landroid/content/Intent;
    :catch_8c
    move-exception v1

    goto :goto_84

    .line 462
    :sswitch_data_8e
    .sparse-switch
        0x4 -> :sswitch_12
        0x13 -> :sswitch_9
        0x14 -> :sswitch_9
        0x15 -> :sswitch_9
        0x16 -> :sswitch_9
        0x17 -> :sswitch_9
        0x42 -> :sswitch_9
        0x52 -> :sswitch_29
    .end sparse-switch
.end method

.method protected onSizeChanged(IIII)V
    .registers 12
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 285
    iget-object v4, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_1d

    iget-object v4, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    move v1, v4

    .line 286
    .local v1, curW:I
    :goto_d
    iget-object v4, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_1f

    iget-object v4, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move v0, v4

    .line 287
    .local v0, curH:I
    :goto_18
    if-lt v1, p1, :cond_21

    if-lt v0, p2, :cond_21

    .line 306
    :goto_1c
    return-void

    .end local v0           #curH:I
    .end local v1           #curW:I
    :cond_1d
    move v1, v5

    .line 285
    goto :goto_d

    .restart local v1       #curW:I
    :cond_1f
    move v0, v5

    .line 286
    goto :goto_18

    .line 291
    .restart local v0       #curH:I
    :cond_21
    if-ge v1, p1, :cond_24

    move v1, p1

    .line 292
    :cond_24
    if-ge v0, p2, :cond_27

    move v0, p2

    .line 294
    :cond_27
    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 296
    .local v2, newBitmap:Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3}, Landroid/graphics/Canvas;-><init>()V

    .line 297
    .local v3, newCanvas:Landroid/graphics/Canvas;
    invoke-virtual {v3, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 298
    iget-object v4, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_3f

    .line 299
    iget-object v4, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v6, v6, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 301
    :cond_3f
    iput-object v2, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->mBitmap:Landroid/graphics/Bitmap;

    .line 302
    iput-object v3, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->mCanvas:Landroid/graphics/Canvas;

    .line 303
    const/16 v4, 0x2e

    iput v4, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->mFadeSteps:I

    .line 305
    iget v4, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->widthRect:I

    iget v5, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->heightRect:I

    invoke-direct {p0, v4, v5}, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->InitDraw(II)V

    goto :goto_1c
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    .line 340
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 342
    .local v0, action:I
    if-nez v0, :cond_2c

    move v1, v5

    :goto_8
    iput-boolean v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->mCurDown:Z

    .line 345
    iget-boolean v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->mCurDown:Z

    if-eqz v1, :cond_2b

    .line 353
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->this$0:Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange;

    iget-object v1, v1, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange;->dontClick:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_2b

    .line 354
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSize()F

    move-result v4

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->drawPoint(FFFF)V

    .line 358
    :cond_2b
    return v5

    .line 342
    :cond_2c
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public windowclear()V
    .registers 4

    .prologue
    .line 273
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->clear()V

    .line 275
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4
    const/16 v1, 0x2d

    if-ge v0, v1, :cond_10

    .line 276
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->NumOfTouch:[I

    const/4 v2, 0x0

    aput v2, v1, v0

    .line 275
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 278
    :cond_10
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x41a0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 279
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->this$0:Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange;->bFirstPress:Ljava/lang/Integer;

    .line 280
    iget v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->widthRect:I

    iget v2, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->heightRect:I

    invoke-direct {p0, v1, v2}, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchColorChange$MyView;->InitDraw(II)V

    .line 282
    return-void
.end method
