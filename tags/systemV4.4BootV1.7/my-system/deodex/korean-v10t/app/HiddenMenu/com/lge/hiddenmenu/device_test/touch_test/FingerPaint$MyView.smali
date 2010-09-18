.class public Lcom/lge/hiddenmenu/device_test/touch_test/FingerPaint$MyView;
.super Landroid/view/View;
.source "FingerPaint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/hiddenmenu/device_test/touch_test/FingerPaint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyView"
.end annotation


# static fields
.field private static final MAXP:F = 0.75f

.field private static final MINP:F = 0.25f

.field private static final TOUCH_TOLERANCE:F = 4.0f


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapPaint:Landroid/graphics/Paint;

.field private mCanvas:Landroid/graphics/Canvas;

.field private mPath:Landroid/graphics/Path;

.field private mX:F

.field private mY:F

.field final synthetic this$0:Lcom/lge/hiddenmenu/device_test/touch_test/FingerPaint;


# direct methods
.method public constructor <init>(Lcom/lge/hiddenmenu/device_test/touch_test/FingerPaint;Landroid/content/Context;)V
    .registers 6
    .parameter
    .parameter "c"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/FingerPaint$MyView;->this$0:Lcom/lge/hiddenmenu/device_test/touch_test/FingerPaint;

    .line 91
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 93
    const/16 v0, 0x140

    const/16 v1, 0x1e0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/FingerPaint$MyView;->mBitmap:Landroid/graphics/Bitmap;

    .line 94
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/FingerPaint$MyView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/FingerPaint$MyView;->mCanvas:Landroid/graphics/Canvas;

    .line 95
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/FingerPaint$MyView;->mPath:Landroid/graphics/Path;

    .line 96
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/FingerPaint$MyView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 97
    return-void
.end method

.method private touch_move(FF)V
    .registers 11
    .parameter "x"
    .parameter "y"

    .prologue
    const/high16 v3, 0x4080

    const/high16 v7, 0x4000

    .line 123
    iget v2, p0, Lcom/lge/hiddenmenu/device_test/touch_test/FingerPaint$MyView;->mX:F

    sub-float v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 124
    .local v0, dx:F
    iget v2, p0, Lcom/lge/hiddenmenu/device_test/touch_test/FingerPaint$MyView;->mY:F

    sub-float v2, p2, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 125
    .local v1, dy:F
    cmpl-float v2, v0, v3

    if-gez v2, :cond_1c

    cmpl-float v2, v1, v3

    if-ltz v2, :cond_31

    .line 126
    :cond_1c
    iget-object v2, p0, Lcom/lge/hiddenmenu/device_test/touch_test/FingerPaint$MyView;->mPath:Landroid/graphics/Path;

    iget v3, p0, Lcom/lge/hiddenmenu/device_test/touch_test/FingerPaint$MyView;->mX:F

    iget v4, p0, Lcom/lge/hiddenmenu/device_test/touch_test/FingerPaint$MyView;->mY:F

    iget v5, p0, Lcom/lge/hiddenmenu/device_test/touch_test/FingerPaint$MyView;->mX:F

    add-float/2addr v5, p1

    div-float/2addr v5, v7

    iget v6, p0, Lcom/lge/hiddenmenu/device_test/touch_test/FingerPaint$MyView;->mY:F

    add-float/2addr v6, p2

    div-float/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 127
    iput p1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/FingerPaint$MyView;->mX:F

    .line 128
    iput p2, p0, Lcom/lge/hiddenmenu/device_test/touch_test/FingerPaint$MyView;->mY:F

    .line 130
    :cond_31
    return-void
.end method

.method private touch_start(FF)V
    .registers 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/FingerPaint$MyView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 118
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/FingerPaint$MyView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 119
    iput p1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/FingerPaint$MyView;->mX:F

    .line 120
    iput p2, p0, Lcom/lge/hiddenmenu/device_test/touch_test/FingerPaint$MyView;->mY:F

    .line 121
    return-void
.end method

.method private touch_up()V
    .registers 4

    .prologue
    .line 132
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/FingerPaint$MyView;->mPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/FingerPaint$MyView;->mX:F

    iget v2, p0, Lcom/lge/hiddenmenu/device_test/touch_test/FingerPaint$MyView;->mY:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 134
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/FingerPaint$MyView;->mCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/FingerPaint$MyView;->mPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/lge/hiddenmenu/device_test/touch_test/FingerPaint$MyView;->this$0:Lcom/lge/hiddenmenu/device_test/touch_test/FingerPaint;

    invoke-static {v2}, Lcom/lge/hiddenmenu/device_test/touch_test/FingerPaint;->access$000(Lcom/lge/hiddenmenu/device_test/touch_test/FingerPaint;)Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 136
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/FingerPaint$MyView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 137
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 5
    .parameter "canvas"

    .prologue
    const/4 v2, 0x0

    .line 106
    const v0, -0x555556

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 108
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/FingerPaint$MyView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/FingerPaint$MyView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 110
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/FingerPaint$MyView;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/FingerPaint$MyView;->this$0:Lcom/lge/hiddenmenu/device_test/touch_test/FingerPaint;

    invoke-static {v1}, Lcom/lge/hiddenmenu/device_test/touch_test/FingerPaint;->access$000(Lcom/lge/hiddenmenu/device_test/touch_test/FingerPaint;)Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 111
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 5
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 101
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 102
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter "event"

    .prologue
    .line 141
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 142
    .local v0, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 144
    .local v1, y:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_26

    .line 158
    :goto_f
    const/4 v2, 0x1

    return v2

    .line 146
    :pswitch_11
    invoke-direct {p0, v0, v1}, Lcom/lge/hiddenmenu/device_test/touch_test/FingerPaint$MyView;->touch_start(FF)V

    .line 147
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/touch_test/FingerPaint$MyView;->invalidate()V

    goto :goto_f

    .line 150
    :pswitch_18
    invoke-direct {p0, v0, v1}, Lcom/lge/hiddenmenu/device_test/touch_test/FingerPaint$MyView;->touch_move(FF)V

    .line 151
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/touch_test/FingerPaint$MyView;->invalidate()V

    goto :goto_f

    .line 154
    :pswitch_1f
    invoke-direct {p0}, Lcom/lge/hiddenmenu/device_test/touch_test/FingerPaint$MyView;->touch_up()V

    .line 155
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/touch_test/FingerPaint$MyView;->invalidate()V

    goto :goto_f

    .line 144
    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_11
        :pswitch_1f
        :pswitch_18
    .end packed-switch
.end method
