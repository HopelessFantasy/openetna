.class public Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest$MyView;
.super Landroid/view/View;
.source "GridTouchTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyView"
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapPaint:Landroid/graphics/Paint;

.field private mCanvas:Landroid/graphics/Canvas;

.field private mPath:Landroid/graphics/Path;

.field private mPoint:Landroid/graphics/Point;

.field private mX:F

.field private mY:F

.field final synthetic this$0:Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest;


# direct methods
.method public constructor <init>(Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest;Landroid/content/Context;)V
    .registers 6
    .parameter
    .parameter "c"

    .prologue
    .line 128
    iput-object p1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest$MyView;->this$0:Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest;

    .line 129
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 131
    const/16 v0, 0x140

    const/16 v1, 0x1e0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest$MyView;->mBitmap:Landroid/graphics/Bitmap;

    .line 132
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest$MyView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest$MyView;->mCanvas:Landroid/graphics/Canvas;

    .line 133
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest$MyView;->mPath:Landroid/graphics/Path;

    .line 134
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest$MyView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 136
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest$MyView;->mPoint:Landroid/graphics/Point;

    .line 137
    return-void
.end method

.method private DrawTestResult()V
    .registers 16

    .prologue
    const/16 v6, 0x9

    const/4 v14, 0x5

    const/4 v1, 0x0

    .line 218
    const/4 v10, 0x0

    .line 219
    .local v10, numTotal:I
    const/4 v9, 0x0

    .line 220
    .local v9, numSuccess:I
    const/4 v8, 0x0

    .line 223
    .local v8, numFail:I
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest$MyView;->clear()V

    .line 224
    const/4 v12, 0x0

    .local v12, ny:I
    :goto_b
    if-ge v12, v6, :cond_51

    .line 225
    const/4 v11, 0x0

    .local v11, nx:I
    :goto_e
    if-ge v11, v14, :cond_4e

    .line 226
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest$MyView;->mCanvas:Landroid/graphics/Canvas;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest$MyView;->this$0:Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest;

    iget-object v3, v3, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest;->nNumOfTouch:[I

    mul-int/lit8 v4, v12, 0x5

    add-int/2addr v4, v11

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v3, v11, 0x40

    int-to-float v3, v3

    add-int/lit8 v4, v12, 0x1

    mul-int/lit8 v4, v4, 0x28

    const/4 v5, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest$MyView;->this$0:Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest;

    invoke-static {v5}, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest;->access$100(Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest;)Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 227
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest$MyView;->this$0:Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest;

    iget-object v0, v0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest;->nNumOfTouch:[I

    mul-int/lit8 v2, v12, 0x5

    add-int/2addr v2, v11

    aget v0, v0, v2

    add-int/2addr v9, v0

    .line 225
    add-int/lit8 v11, v11, 0x1

    goto :goto_e

    .line 224
    :cond_4e
    add-int/lit8 v12, v12, 0x1

    goto :goto_b

    .line 231
    .end local v11           #nx:I
    :cond_51
    const/4 v12, 0x0

    :goto_52
    if-gt v12, v6, :cond_71

    .line 232
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest$MyView;->mCanvas:Landroid/graphics/Canvas;

    mul-int/lit8 v2, v12, 0x28

    add-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest$MyView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-int/lit8 v4, v12, 0x28

    add-int/lit8 v4, v4, 0x1

    int-to-float v4, v4

    iget-object v5, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest$MyView;->this$0:Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest;

    invoke-static {v5}, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest;->access$100(Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest;)Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 231
    add-int/lit8 v12, v12, 0x1

    goto :goto_52

    .line 234
    :cond_71
    const/4 v11, 0x0

    .restart local v11       #nx:I
    :goto_72
    if-gt v11, v14, :cond_8b

    .line 235
    iget-object v2, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest$MyView;->mCanvas:Landroid/graphics/Canvas;

    mul-int/lit8 v0, v11, 0x40

    int-to-float v3, v0

    mul-int/lit8 v0, v11, 0x40

    int-to-float v5, v0

    const/high16 v6, 0x43b4

    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest$MyView;->this$0:Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest;

    invoke-static {v0}, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest;->access$100(Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest;)Landroid/graphics/Paint;

    move-result-object v7

    move v4, v1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 234
    add-int/lit8 v11, v11, 0x1

    goto :goto_72

    .line 237
    :cond_8b
    const v10, 0x36ee8

    .line 238
    const v0, 0x36ee8

    sub-int v8, v0, v9

    .line 239
    int-to-float v0, v9

    int-to-float v2, v10

    div-float/2addr v0, v2

    const/high16 v2, 0x42c8

    mul-float v13, v0, v2

    .line 241
    .local v13, ratio:F
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest$MyView;->mCanvas:Landroid/graphics/Canvas;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Total: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x43c8

    iget-object v4, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest$MyView;->this$0:Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest;

    invoke-static {v4}, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest;->access$100(Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest;)Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 242
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest$MyView;->mCanvas:Landroid/graphics/Canvas;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Success: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const v3, 0x43d48000

    iget-object v4, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest$MyView;->this$0:Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest;

    invoke-static {v4}, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest;->access$100(Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest;)Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 243
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest$MyView;->mCanvas:Landroid/graphics/Canvas;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x43e1

    iget-object v4, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest$MyView;->this$0:Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest;

    invoke-static {v4}, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest;->access$100(Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest;)Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 244
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest$MyView;->mCanvas:Landroid/graphics/Canvas;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Recognition Percent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const v3, 0x43ed8000

    iget-object v4, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest$MyView;->this$0:Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest;

    invoke-static {v4}, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest;->access$100(Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest;)Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 245
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest$MyView;->invalidate()V

    .line 247
    return-void
.end method

.method private InitDraw(II)V
    .registers 13
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v1, 0x0

    .line 197
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest$MyView;->clear()V

    .line 198
    const/4 v9, 0x0

    .local v9, ny:I
    :goto_5
    const/16 v0, 0x9

    if-gt v9, v0, :cond_26

    .line 199
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest$MyView;->mCanvas:Landroid/graphics/Canvas;

    mul-int v2, v9, p2

    add-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest$MyView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-int v4, v9, p2

    add-int/lit8 v4, v4, 0x1

    int-to-float v4, v4

    iget-object v5, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest$MyView;->this$0:Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest;

    invoke-static {v5}, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest;->access$100(Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest;)Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 198
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 201
    :cond_26
    const/4 v8, 0x0

    .local v8, nx:I
    :goto_27
    const/4 v0, 0x5

    if-gt v8, v0, :cond_46

    .line 202
    iget-object v2, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest$MyView;->mCanvas:Landroid/graphics/Canvas;

    mul-int v0, v8, p1

    int-to-float v3, v0

    mul-int v0, v8, p1

    int-to-float v5, v0

    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest$MyView;->getHeight()I

    move-result v0

    const/4 v4, 0x1

    sub-int/2addr v0, v4

    int-to-float v6, v0

    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest$MyView;->this$0:Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest;

    invoke-static {v0}, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest;->access$100(Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest;)Landroid/graphics/Paint;

    move-result-object v7

    move v4, v1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 201
    add-int/lit8 v8, v8, 0x1

    goto :goto_27

    .line 204
    :cond_46
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest$MyView;->invalidate()V

    .line 205
    return-void
.end method

.method static synthetic access$200(Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest$MyView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest$MyView;->DrawTestResult()V

    return-void
.end method

.method private touch_down(FF)V
    .registers 10
    .parameter "x"
    .parameter "y"

    .prologue
    const-string v6, ")"

    const-string v5, "("

    .line 156
    iput p1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest$MyView;->mX:F

    .line 157
    iput p2, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest$MyView;->mY:F

    .line 160
    iget v2, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest$MyView;->mX:F

    const/high16 v3, 0x4280

    div-float/2addr v2, v3

    float-to-int v0, v2

    .line 161
    .local v0, indexX:I
    iget v2, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest$MyView;->mY:F

    const/high16 v3, 0x4254

    div-float/2addr v2, v3

    float-to-int v1, v2

    .line 162
    .local v1, indexY:I
    if-ltz v0, :cond_1f

    if-ltz v1, :cond_1f

    const/4 v2, 0x5

    if-ge v0, v2, :cond_1f

    const/16 v2, 0x9

    if-lt v1, v2, :cond_66

    .line 163
    :cond_1f
    const-string v2, "GridTouchTest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wrong Touch event !!! :: X = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest$MyView;->mX:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Y = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest$MyView;->mY:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :goto_65
    return-void

    .line 166
    :cond_66
    iget-object v2, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest$MyView;->this$0:Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest;

    iget-object v2, v2, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest;->nNumOfTouch:[I

    mul-int/lit8 v3, v1, 0x5

    add-int/2addr v3, v0

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    goto :goto_65
.end method

.method private touch_up()V
    .registers 5

    .prologue
    .line 171
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest$MyView;->mCanvas:Landroid/graphics/Canvas;

    iget v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest$MyView;->mX:F

    iget v2, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest$MyView;->mY:F

    iget-object v3, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest$MyView;->this$0:Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest;

    invoke-static {v3}, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest;->access$000(Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest;)Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 172
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 208
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest$MyView;->mCanvas:Landroid/graphics/Canvas;

    if-eqz v0, :cond_15

    .line 212
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest$MyView;->mCanvas:Landroid/graphics/Canvas;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 213
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest$MyView;->mCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest$MyView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest$MyView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 215
    :cond_15
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 5
    .parameter "canvas"

    .prologue
    const/4 v2, 0x0

    .line 147
    const/high16 v0, -0x100

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 148
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest$MyView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest$MyView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 150
    iget v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest$MyView;->mX:F

    iget v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest$MyView;->mY:F

    iget-object v2, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest$MyView;->this$0:Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest;

    invoke-static {v2}, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest;->access$000(Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest;)Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 151
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 7
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 141
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 142
    const/16 v0, 0x40

    const/16 v1, 0x35

    invoke-direct {p0, v0, v1}, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest$MyView;->InitDraw(II)V

    .line 143
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    .line 176
    iget-object v2, p0, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest$MyView;->this$0:Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest;

    iget-object v2, v2, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest;->bFirstPress:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_e

    move v2, v4

    .line 191
    :goto_d
    return v2

    .line 178
    :cond_e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 179
    .local v0, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 181
    .local v1, y:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_2e

    :goto_1d
    move v2, v4

    .line 191
    goto :goto_d

    .line 183
    :pswitch_1f
    invoke-direct {p0, v0, v1}, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest$MyView;->touch_down(FF)V

    .line 184
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest$MyView;->invalidate()V

    goto :goto_1d

    .line 187
    :pswitch_26
    invoke-direct {p0}, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest$MyView;->touch_up()V

    .line 188
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/touch_test/GridTouchTest$MyView;->invalidate()V

    goto :goto_1d

    .line 181
    nop

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_26
    .end packed-switch
.end method
