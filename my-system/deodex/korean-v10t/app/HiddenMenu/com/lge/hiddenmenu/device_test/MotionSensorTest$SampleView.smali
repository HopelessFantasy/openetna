.class Lcom/lge/hiddenmenu/device_test/MotionSensorTest$SampleView;
.super Landroid/view/View;
.source "MotionSensorTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/hiddenmenu/device_test/MotionSensorTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SampleView"
.end annotation


# instance fields
.field private mAnimate:Z

.field private mNextTime:J

.field private mPaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field final synthetic this$0:Lcom/lge/hiddenmenu/device_test/MotionSensorTest;


# direct methods
.method public constructor <init>(Lcom/lge/hiddenmenu/device_test/MotionSensorTest;Landroid/content/Context;)V
    .registers 7
    .parameter
    .parameter "context"

    .prologue
    const/high16 v3, 0x4270

    const/4 v2, 0x0

    .line 457
    iput-object p1, p0, Lcom/lge/hiddenmenu/device_test/MotionSensorTest$SampleView;->this$0:Lcom/lge/hiddenmenu/device_test/MotionSensorTest;

    .line 458
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 451
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/MotionSensorTest$SampleView;->mPaint:Landroid/graphics/Paint;

    .line 452
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/MotionSensorTest$SampleView;->mPath:Landroid/graphics/Path;

    .line 461
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/MotionSensorTest$SampleView;->mPath:Landroid/graphics/Path;

    const/high16 v1, -0x3db8

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 462
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/MotionSensorTest$SampleView;->mPath:Landroid/graphics/Path;

    const/high16 v1, -0x3e60

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 463
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/MotionSensorTest$SampleView;->mPath:Landroid/graphics/Path;

    const/high16 v1, 0x4248

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 464
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/MotionSensorTest$SampleView;->mPath:Landroid/graphics/Path;

    const/high16 v1, 0x41a0

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 465
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/MotionSensorTest$SampleView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 466
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .registers 2

    .prologue
    .line 545
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/hiddenmenu/device_test/MotionSensorTest$SampleView;->mAnimate:Z

    .line 546
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 547
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 551
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/hiddenmenu/device_test/MotionSensorTest$SampleView;->mAnimate:Z

    .line 552
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 553
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 13
    .parameter "canvas"

    .prologue
    .line 471
    iget-object v3, p0, Lcom/lge/hiddenmenu/device_test/MotionSensorTest$SampleView;->mPaint:Landroid/graphics/Paint;

    .line 472
    .local v3, paint:Landroid/graphics/Paint;
    iget-object v6, p0, Lcom/lge/hiddenmenu/device_test/MotionSensorTest$SampleView;->this$0:Lcom/lge/hiddenmenu/device_test/MotionSensorTest;

    invoke-static {v6}, Lcom/lge/hiddenmenu/device_test/MotionSensorTest;->access$100(Lcom/lge/hiddenmenu/device_test/MotionSensorTest;)[F

    move-result-object v4

    .line 474
    .local v4, values_temp:[F
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 475
    const/high16 v6, 0x41a0

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 476
    const/16 v6, 0xff

    const/16 v7, 0xff

    const/16 v8, 0xff

    const/16 v9, 0xff

    invoke-virtual {v3, v6, v7, v8, v9}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 489
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "X = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%2.2f"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x0

    aget v10, v4, v10

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/high16 v7, 0x41a0

    const/high16 v8, 0x4234

    invoke-virtual {p1, v6, v7, v8, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 491
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Y = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%2.2f"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x1

    aget v10, v4, v10

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/high16 v7, 0x41a0

    const/high16 v8, 0x4296

    invoke-virtual {p1, v6, v7, v8, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 493
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Z = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%2.2f"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x2

    aget v10, v4, v10

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/high16 v7, 0x41a0

    const/high16 v8, 0x42d2

    invoke-virtual {p1, v6, v7, v8, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 499
    iget-object v6, p0, Lcom/lge/hiddenmenu/device_test/MotionSensorTest$SampleView;->this$0:Lcom/lge/hiddenmenu/device_test/MotionSensorTest;

    invoke-static {v6}, Lcom/lge/hiddenmenu/device_test/MotionSensorTest;->access$200(Lcom/lge/hiddenmenu/device_test/MotionSensorTest;)I

    move-result v6

    if-nez v6, :cond_10a

    .line 500
    const-string v6, "Orientation=NORTH"

    const/high16 v7, 0x41a0

    const/high16 v8, 0x4307

    invoke-virtual {p1, v6, v7, v8, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 511
    :goto_b4
    iget-object v6, p0, Lcom/lge/hiddenmenu/device_test/MotionSensorTest$SampleView;->this$0:Lcom/lge/hiddenmenu/device_test/MotionSensorTest;

    invoke-static {v6}, Lcom/lge/hiddenmenu/device_test/MotionSensorTest;->access$200(Lcom/lge/hiddenmenu/device_test/MotionSensorTest;)I

    move-result v6

    if-eqz v6, :cond_d7

    iget-object v6, p0, Lcom/lge/hiddenmenu/device_test/MotionSensorTest$SampleView;->this$0:Lcom/lge/hiddenmenu/device_test/MotionSensorTest;

    invoke-static {v6}, Lcom/lge/hiddenmenu/device_test/MotionSensorTest;->access$200(Lcom/lge/hiddenmenu/device_test/MotionSensorTest;)I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_d7

    iget-object v6, p0, Lcom/lge/hiddenmenu/device_test/MotionSensorTest$SampleView;->this$0:Lcom/lge/hiddenmenu/device_test/MotionSensorTest;

    invoke-static {v6}, Lcom/lge/hiddenmenu/device_test/MotionSensorTest;->access$200(Lcom/lge/hiddenmenu/device_test/MotionSensorTest;)I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_d7

    iget-object v6, p0, Lcom/lge/hiddenmenu/device_test/MotionSensorTest$SampleView;->this$0:Lcom/lge/hiddenmenu/device_test/MotionSensorTest;

    invoke-static {v6}, Lcom/lge/hiddenmenu/device_test/MotionSensorTest;->access$200(Lcom/lge/hiddenmenu/device_test/MotionSensorTest;)I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_109

    .line 515
    :cond_d7
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 516
    const/high16 v6, -0x1

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 517
    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 519
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    .line 520
    .local v5, w:I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    .line 521
    .local v2, h:I
    div-int/lit8 v0, v5, 0x2

    .line 522
    .local v0, cx:I
    div-int/lit8 v1, v2, 0x2

    .line 524
    .local v1, cy:I
    int-to-float v6, v0

    int-to-float v7, v1

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 528
    iget-object v6, p0, Lcom/lge/hiddenmenu/device_test/MotionSensorTest$SampleView;->this$0:Lcom/lge/hiddenmenu/device_test/MotionSensorTest;

    invoke-static {v6}, Lcom/lge/hiddenmenu/device_test/MotionSensorTest;->access$200(Lcom/lge/hiddenmenu/device_test/MotionSensorTest;)I

    move-result v6

    if-nez v6, :cond_14f

    .line 529
    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->rotate(F)V

    .line 539
    :cond_102
    :goto_102
    iget-object v6, p0, Lcom/lge/hiddenmenu/device_test/MotionSensorTest$SampleView;->mPath:Landroid/graphics/Path;

    iget-object v7, p0, Lcom/lge/hiddenmenu/device_test/MotionSensorTest$SampleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 541
    .end local v0           #cx:I
    .end local v1           #cy:I
    .end local v2           #h:I
    .end local v5           #w:I
    :cond_109
    return-void

    .line 501
    :cond_10a
    iget-object v6, p0, Lcom/lge/hiddenmenu/device_test/MotionSensorTest$SampleView;->this$0:Lcom/lge/hiddenmenu/device_test/MotionSensorTest;

    invoke-static {v6}, Lcom/lge/hiddenmenu/device_test/MotionSensorTest;->access$200(Lcom/lge/hiddenmenu/device_test/MotionSensorTest;)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_11d

    .line 502
    const-string v6, "Orientation=WEST"

    const/high16 v7, 0x41a0

    const/high16 v8, 0x4307

    invoke-virtual {p1, v6, v7, v8, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_b4

    .line 503
    :cond_11d
    iget-object v6, p0, Lcom/lge/hiddenmenu/device_test/MotionSensorTest$SampleView;->this$0:Lcom/lge/hiddenmenu/device_test/MotionSensorTest;

    invoke-static {v6}, Lcom/lge/hiddenmenu/device_test/MotionSensorTest;->access$200(Lcom/lge/hiddenmenu/device_test/MotionSensorTest;)I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_130

    .line 504
    const-string v6, "Orientation=SOUTH"

    const/high16 v7, 0x41a0

    const/high16 v8, 0x4307

    invoke-virtual {p1, v6, v7, v8, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_b4

    .line 505
    :cond_130
    iget-object v6, p0, Lcom/lge/hiddenmenu/device_test/MotionSensorTest$SampleView;->this$0:Lcom/lge/hiddenmenu/device_test/MotionSensorTest;

    invoke-static {v6}, Lcom/lge/hiddenmenu/device_test/MotionSensorTest;->access$200(Lcom/lge/hiddenmenu/device_test/MotionSensorTest;)I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_144

    .line 506
    const-string v6, "Orientation=EAST"

    const/high16 v7, 0x41a0

    const/high16 v8, 0x4307

    invoke-virtual {p1, v6, v7, v8, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_b4

    .line 508
    :cond_144
    const-string v6, "Orientation=Ambiguous"

    const/high16 v7, 0x41a0

    const/high16 v8, 0x4307

    invoke-virtual {p1, v6, v7, v8, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_b4

    .line 530
    .restart local v0       #cx:I
    .restart local v1       #cy:I
    .restart local v2       #h:I
    .restart local v5       #w:I
    :cond_14f
    iget-object v6, p0, Lcom/lge/hiddenmenu/device_test/MotionSensorTest$SampleView;->this$0:Lcom/lge/hiddenmenu/device_test/MotionSensorTest;

    invoke-static {v6}, Lcom/lge/hiddenmenu/device_test/MotionSensorTest;->access$200(Lcom/lge/hiddenmenu/device_test/MotionSensorTest;)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_15e

    .line 531
    const/high16 v6, 0x4387

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->rotate(F)V

    goto :goto_102

    .line 532
    :cond_15e
    iget-object v6, p0, Lcom/lge/hiddenmenu/device_test/MotionSensorTest$SampleView;->this$0:Lcom/lge/hiddenmenu/device_test/MotionSensorTest;

    invoke-static {v6}, Lcom/lge/hiddenmenu/device_test/MotionSensorTest;->access$200(Lcom/lge/hiddenmenu/device_test/MotionSensorTest;)I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_16d

    .line 533
    const/high16 v6, 0x4334

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->rotate(F)V

    goto :goto_102

    .line 534
    :cond_16d
    iget-object v6, p0, Lcom/lge/hiddenmenu/device_test/MotionSensorTest$SampleView;->this$0:Lcom/lge/hiddenmenu/device_test/MotionSensorTest;

    invoke-static {v6}, Lcom/lge/hiddenmenu/device_test/MotionSensorTest;->access$200(Lcom/lge/hiddenmenu/device_test/MotionSensorTest;)I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_102

    .line 535
    const/high16 v6, 0x42b4

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->rotate(F)V

    goto :goto_102
.end method
