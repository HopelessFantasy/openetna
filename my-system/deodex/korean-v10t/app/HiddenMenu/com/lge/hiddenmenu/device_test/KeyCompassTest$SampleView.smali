.class Lcom/lge/hiddenmenu/device_test/KeyCompassTest$SampleView;
.super Landroid/view/View;
.source "KeyCompassTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/hiddenmenu/device_test/KeyCompassTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SampleView"
.end annotation


# instance fields
.field private mAnimate:Z

.field private mNextTime:J

.field private mPath:Landroid/graphics/Path;

.field paint:Landroid/graphics/Paint;

.field final synthetic this$0:Lcom/lge/hiddenmenu/device_test/KeyCompassTest;


# direct methods
.method public constructor <init>(Lcom/lge/hiddenmenu/device_test/KeyCompassTest;Landroid/content/Context;)V
    .registers 7
    .parameter
    .parameter "context"

    .prologue
    const/high16 v3, 0x4270

    const/4 v2, 0x0

    .line 388
    iput-object p1, p0, Lcom/lge/hiddenmenu/device_test/KeyCompassTest$SampleView;->this$0:Lcom/lge/hiddenmenu/device_test/KeyCompassTest;

    .line 389
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 381
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/KeyCompassTest$SampleView;->this$0:Lcom/lge/hiddenmenu/device_test/KeyCompassTest;

    invoke-static {v0}, Lcom/lge/hiddenmenu/device_test/KeyCompassTest;->access$200(Lcom/lge/hiddenmenu/device_test/KeyCompassTest;)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/KeyCompassTest$SampleView;->paint:Landroid/graphics/Paint;

    .line 384
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/KeyCompassTest$SampleView;->mPath:Landroid/graphics/Path;

    .line 392
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/KeyCompassTest$SampleView;->mPath:Landroid/graphics/Path;

    const/high16 v1, -0x3db8

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 393
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/KeyCompassTest$SampleView;->mPath:Landroid/graphics/Path;

    const/high16 v1, -0x3e60

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 394
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/KeyCompassTest$SampleView;->mPath:Landroid/graphics/Path;

    const/high16 v1, 0x4248

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 395
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/KeyCompassTest$SampleView;->mPath:Landroid/graphics/Path;

    const/high16 v1, 0x41a0

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 396
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/KeyCompassTest$SampleView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 397
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .registers 2

    .prologue
    .line 445
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/hiddenmenu/device_test/KeyCompassTest$SampleView;->mAnimate:Z

    .line 446
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 447
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 451
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/hiddenmenu/device_test/KeyCompassTest$SampleView;->mAnimate:Z

    .line 452
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 453
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 15
    .parameter "canvas"

    .prologue
    const/high16 v11, 0x4307

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/high16 v8, 0x41a0

    const-string v12, "%2.2f"

    .line 402
    const/high16 v4, -0x100

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 404
    iget-object v4, p0, Lcom/lge/hiddenmenu/device_test/KeyCompassTest$SampleView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 405
    iget-object v4, p0, Lcom/lge/hiddenmenu/device_test/KeyCompassTest$SampleView;->paint:Landroid/graphics/Paint;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 406
    iget-object v4, p0, Lcom/lge/hiddenmenu/device_test/KeyCompassTest$SampleView;->paint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 407
    iget-object v4, p0, Lcom/lge/hiddenmenu/device_test/KeyCompassTest$SampleView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 409
    iget-object v4, p0, Lcom/lge/hiddenmenu/device_test/KeyCompassTest$SampleView;->this$0:Lcom/lge/hiddenmenu/device_test/KeyCompassTest;

    invoke-static {v4}, Lcom/lge/hiddenmenu/device_test/KeyCompassTest;->access$000(Lcom/lge/hiddenmenu/device_test/KeyCompassTest;)[F

    move-result-object v4

    if-eqz v4, :cond_bd

    .line 410
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Azim ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%2.2f"

    new-array v5, v9, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/lge/hiddenmenu/device_test/KeyCompassTest$SampleView;->this$0:Lcom/lge/hiddenmenu/device_test/KeyCompassTest;

    invoke-static {v6}, Lcom/lge/hiddenmenu/device_test/KeyCompassTest;->access$000(Lcom/lge/hiddenmenu/device_test/KeyCompassTest;)[F

    move-result-object v6

    aget v6, v6, v10

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-static {v12, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/high16 v5, 0x4220

    iget-object v6, p0, Lcom/lge/hiddenmenu/device_test/KeyCompassTest$SampleView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v8, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 411
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Roll ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%2.2f"

    new-array v5, v9, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/lge/hiddenmenu/device_test/KeyCompassTest$SampleView;->this$0:Lcom/lge/hiddenmenu/device_test/KeyCompassTest;

    invoke-static {v6}, Lcom/lge/hiddenmenu/device_test/KeyCompassTest;->access$000(Lcom/lge/hiddenmenu/device_test/KeyCompassTest;)[F

    move-result-object v6

    aget v6, v6, v9

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-static {v12, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/high16 v5, 0x4282

    iget-object v6, p0, Lcom/lge/hiddenmenu/device_test/KeyCompassTest$SampleView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v8, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 412
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Pitch="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%2.2f"

    new-array v5, v9, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/lge/hiddenmenu/device_test/KeyCompassTest$SampleView;->this$0:Lcom/lge/hiddenmenu/device_test/KeyCompassTest;

    invoke-static {v6}, Lcom/lge/hiddenmenu/device_test/KeyCompassTest;->access$000(Lcom/lge/hiddenmenu/device_test/KeyCompassTest;)[F

    move-result-object v6

    const/4 v7, 0x2

    aget v6, v6, v7

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-static {v12, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/high16 v5, 0x42b4

    iget-object v6, p0, Lcom/lge/hiddenmenu/device_test/KeyCompassTest$SampleView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v8, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 415
    :cond_bd
    iget-object v4, p0, Lcom/lge/hiddenmenu/device_test/KeyCompassTest$SampleView;->paint:Landroid/graphics/Paint;

    const/high16 v5, 0x4220

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 416
    iget-object v4, p0, Lcom/lge/hiddenmenu/device_test/KeyCompassTest$SampleView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 417
    iget-object v4, p0, Lcom/lge/hiddenmenu/device_test/KeyCompassTest$SampleView;->this$0:Lcom/lge/hiddenmenu/device_test/KeyCompassTest;

    invoke-virtual {v4}, Lcom/lge/hiddenmenu/device_test/KeyCompassTest;->ReadIntFromFile()I

    move-result v4

    if-nez v4, :cond_114

    .line 418
    iget-object v4, p0, Lcom/lge/hiddenmenu/device_test/KeyCompassTest$SampleView;->paint:Landroid/graphics/Paint;

    const/high16 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 419
    const-string v4, "== Fail =="

    iget-object v5, p0, Lcom/lge/hiddenmenu/device_test/KeyCompassTest$SampleView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v8, v11, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 431
    :goto_df
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    .line 432
    .local v3, w:I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    .line 433
    .local v2, h:I
    div-int/lit8 v0, v3, 0x2

    .line 434
    .local v0, cx:I
    div-int/lit8 v4, v2, 0x2

    const/16 v5, 0x14

    sub-int v1, v4, v5

    .line 436
    .local v1, cy:I
    int-to-float v4, v0

    int-to-float v5, v1

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 437
    iget-object v4, p0, Lcom/lge/hiddenmenu/device_test/KeyCompassTest$SampleView;->this$0:Lcom/lge/hiddenmenu/device_test/KeyCompassTest;

    invoke-static {v4}, Lcom/lge/hiddenmenu/device_test/KeyCompassTest;->access$000(Lcom/lge/hiddenmenu/device_test/KeyCompassTest;)[F

    move-result-object v4

    if-eqz v4, :cond_108

    .line 438
    iget-object v4, p0, Lcom/lge/hiddenmenu/device_test/KeyCompassTest$SampleView;->this$0:Lcom/lge/hiddenmenu/device_test/KeyCompassTest;

    invoke-static {v4}, Lcom/lge/hiddenmenu/device_test/KeyCompassTest;->access$000(Lcom/lge/hiddenmenu/device_test/KeyCompassTest;)[F

    move-result-object v4

    aget v4, v4, v10

    neg-float v4, v4

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 440
    :cond_108
    iget-object v4, p0, Lcom/lge/hiddenmenu/device_test/KeyCompassTest$SampleView;->mPath:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/lge/hiddenmenu/device_test/KeyCompassTest$SampleView;->this$0:Lcom/lge/hiddenmenu/device_test/KeyCompassTest;

    invoke-static {v5}, Lcom/lge/hiddenmenu/device_test/KeyCompassTest;->access$200(Lcom/lge/hiddenmenu/device_test/KeyCompassTest;)Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 441
    return-void

    .line 421
    .end local v0           #cx:I
    .end local v1           #cy:I
    .end local v2           #h:I
    .end local v3           #w:I
    :cond_114
    iget-object v4, p0, Lcom/lge/hiddenmenu/device_test/KeyCompassTest$SampleView;->this$0:Lcom/lge/hiddenmenu/device_test/KeyCompassTest;

    invoke-virtual {v4}, Lcom/lge/hiddenmenu/device_test/KeyCompassTest;->ReadIntFromFile()I

    move-result v4

    if-ne v4, v9, :cond_12c

    .line 422
    iget-object v4, p0, Lcom/lge/hiddenmenu/device_test/KeyCompassTest$SampleView;->paint:Landroid/graphics/Paint;

    const v5, -0xffff01

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 423
    const-string v4, "== Pass =="

    iget-object v5, p0, Lcom/lge/hiddenmenu/device_test/KeyCompassTest$SampleView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v8, v11, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_df

    .line 426
    :cond_12c
    const-string v4, "== Testing =="

    iget-object v5, p0, Lcom/lge/hiddenmenu/device_test/KeyCompassTest$SampleView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v8, v11, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_df
.end method
