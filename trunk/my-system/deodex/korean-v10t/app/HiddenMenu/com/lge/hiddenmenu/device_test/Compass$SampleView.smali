.class Lcom/lge/hiddenmenu/device_test/Compass$SampleView;
.super Landroid/view/View;
.source "Compass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/hiddenmenu/device_test/Compass;
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

.field final synthetic this$0:Lcom/lge/hiddenmenu/device_test/Compass;


# direct methods
.method public constructor <init>(Lcom/lge/hiddenmenu/device_test/Compass;Landroid/content/Context;)V
    .registers 7
    .parameter
    .parameter "context"

    .prologue
    const/high16 v3, 0x4270

    const/4 v2, 0x0

    .line 168
    iput-object p1, p0, Lcom/lge/hiddenmenu/device_test/Compass$SampleView;->this$0:Lcom/lge/hiddenmenu/device_test/Compass;

    .line 169
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 161
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/Compass$SampleView;->this$0:Lcom/lge/hiddenmenu/device_test/Compass;

    invoke-static {v0}, Lcom/lge/hiddenmenu/device_test/Compass;->access$200(Lcom/lge/hiddenmenu/device_test/Compass;)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/Compass$SampleView;->paint:Landroid/graphics/Paint;

    .line 164
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/Compass$SampleView;->mPath:Landroid/graphics/Path;

    .line 172
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/Compass$SampleView;->mPath:Landroid/graphics/Path;

    const/high16 v1, -0x3db8

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 173
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/Compass$SampleView;->mPath:Landroid/graphics/Path;

    const/high16 v1, -0x3e60

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 174
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/Compass$SampleView;->mPath:Landroid/graphics/Path;

    const/high16 v1, 0x4248

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 175
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/Compass$SampleView;->mPath:Landroid/graphics/Path;

    const/high16 v1, 0x41a0

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 176
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/Compass$SampleView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 177
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .registers 2

    .prologue
    .line 210
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/hiddenmenu/device_test/Compass$SampleView;->mAnimate:Z

    .line 211
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 212
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 216
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/hiddenmenu/device_test/Compass$SampleView;->mAnimate:Z

    .line 217
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 218
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 13
    .parameter "canvas"

    .prologue
    const/high16 v9, 0x41a0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v10, "%2.2f"

    .line 183
    const/high16 v4, -0x100

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 185
    iget-object v4, p0, Lcom/lge/hiddenmenu/device_test/Compass$SampleView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 186
    iget-object v4, p0, Lcom/lge/hiddenmenu/device_test/Compass$SampleView;->paint:Landroid/graphics/Paint;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 187
    iget-object v4, p0, Lcom/lge/hiddenmenu/device_test/Compass$SampleView;->paint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 188
    iget-object v4, p0, Lcom/lge/hiddenmenu/device_test/Compass$SampleView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 190
    iget-object v4, p0, Lcom/lge/hiddenmenu/device_test/Compass$SampleView;->this$0:Lcom/lge/hiddenmenu/device_test/Compass;

    invoke-static {v4}, Lcom/lge/hiddenmenu/device_test/Compass;->access$000(Lcom/lge/hiddenmenu/device_test/Compass;)[F

    move-result-object v4

    if-eqz v4, :cond_bb

    .line 191
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Azim ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%2.2f"

    new-array v5, v7, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/lge/hiddenmenu/device_test/Compass$SampleView;->this$0:Lcom/lge/hiddenmenu/device_test/Compass;

    invoke-static {v6}, Lcom/lge/hiddenmenu/device_test/Compass;->access$000(Lcom/lge/hiddenmenu/device_test/Compass;)[F

    move-result-object v6

    aget v6, v6, v8

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v10, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/high16 v5, 0x4234

    iget-object v6, p0, Lcom/lge/hiddenmenu/device_test/Compass$SampleView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v9, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 192
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Roll ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%2.2f"

    new-array v5, v7, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/lge/hiddenmenu/device_test/Compass$SampleView;->this$0:Lcom/lge/hiddenmenu/device_test/Compass;

    invoke-static {v6}, Lcom/lge/hiddenmenu/device_test/Compass;->access$000(Lcom/lge/hiddenmenu/device_test/Compass;)[F

    move-result-object v6

    aget v6, v6, v7

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v10, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/high16 v5, 0x4296

    iget-object v6, p0, Lcom/lge/hiddenmenu/device_test/Compass$SampleView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v9, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 193
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Pitch="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%2.2f"

    new-array v5, v7, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/lge/hiddenmenu/device_test/Compass$SampleView;->this$0:Lcom/lge/hiddenmenu/device_test/Compass;

    invoke-static {v6}, Lcom/lge/hiddenmenu/device_test/Compass;->access$000(Lcom/lge/hiddenmenu/device_test/Compass;)[F

    move-result-object v6

    const/4 v7, 0x2

    aget v6, v6, v7

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v10, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/high16 v5, 0x42d2

    iget-object v6, p0, Lcom/lge/hiddenmenu/device_test/Compass$SampleView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v9, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 196
    :cond_bb
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    .line 197
    .local v3, w:I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    .line 198
    .local v2, h:I
    div-int/lit8 v0, v3, 0x2

    .line 199
    .local v0, cx:I
    div-int/lit8 v1, v2, 0x2

    .line 201
    .local v1, cy:I
    int-to-float v4, v0

    int-to-float v5, v1

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 202
    iget-object v4, p0, Lcom/lge/hiddenmenu/device_test/Compass$SampleView;->this$0:Lcom/lge/hiddenmenu/device_test/Compass;

    invoke-static {v4}, Lcom/lge/hiddenmenu/device_test/Compass;->access$000(Lcom/lge/hiddenmenu/device_test/Compass;)[F

    move-result-object v4

    if-eqz v4, :cond_e0

    .line 203
    iget-object v4, p0, Lcom/lge/hiddenmenu/device_test/Compass$SampleView;->this$0:Lcom/lge/hiddenmenu/device_test/Compass;

    invoke-static {v4}, Lcom/lge/hiddenmenu/device_test/Compass;->access$000(Lcom/lge/hiddenmenu/device_test/Compass;)[F

    move-result-object v4

    aget v4, v4, v8

    neg-float v4, v4

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 205
    :cond_e0
    iget-object v4, p0, Lcom/lge/hiddenmenu/device_test/Compass$SampleView;->mPath:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/lge/hiddenmenu/device_test/Compass$SampleView;->this$0:Lcom/lge/hiddenmenu/device_test/Compass;

    invoke-static {v5}, Lcom/lge/hiddenmenu/device_test/Compass;->access$200(Lcom/lge/hiddenmenu/device_test/Compass;)Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 206
    return-void
.end method
