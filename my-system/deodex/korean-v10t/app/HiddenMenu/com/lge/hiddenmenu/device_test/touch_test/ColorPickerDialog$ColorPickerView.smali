.class Lcom/lge/hiddenmenu/device_test/touch_test/ColorPickerDialog$ColorPickerView;
.super Landroid/view/View;
.source "ColorPickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/hiddenmenu/device_test/touch_test/ColorPickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ColorPickerView"
.end annotation


# static fields
.field private static final CENTER_RADIUS:I = 0x20

.field private static final CENTER_X:I = 0x64

.field private static final CENTER_Y:I = 0x64

.field private static final PI:F = 3.1415925f


# instance fields
.field private mCenterPaint:Landroid/graphics/Paint;

.field private final mColors:[I

.field private mHighlightCenter:Z

.field private mListener:Lcom/lge/hiddenmenu/device_test/touch_test/ColorPickerDialog$OnColorChangedListener;

.field private mPaint:Landroid/graphics/Paint;

.field private mTrackingCenter:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/lge/hiddenmenu/device_test/touch_test/ColorPickerDialog$OnColorChangedListener;I)V
    .registers 9
    .parameter "c"
    .parameter "l"
    .parameter "color"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 43
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 44
    iput-object p2, p0, Lcom/lge/hiddenmenu/device_test/touch_test/ColorPickerDialog$ColorPickerView;->mListener:Lcom/lge/hiddenmenu/device_test/touch_test/ColorPickerDialog$OnColorChangedListener;

    .line 45
    const/4 v1, 0x7

    new-array v1, v1, [I

    fill-array-data v1, :array_46

    iput-object v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/ColorPickerDialog$ColorPickerView;->mColors:[I

    .line 49
    new-instance v0, Landroid/graphics/SweepGradient;

    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/ColorPickerDialog$ColorPickerView;->mColors:[I

    const/4 v2, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    .line 51
    .local v0, s:Landroid/graphics/Shader;
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/ColorPickerDialog$ColorPickerView;->mPaint:Landroid/graphics/Paint;

    .line 52
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/ColorPickerDialog$ColorPickerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 53
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/ColorPickerDialog$ColorPickerView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 54
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/ColorPickerDialog$ColorPickerView;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x4200

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 56
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/ColorPickerDialog$ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    .line 57
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/ColorPickerDialog$ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 58
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/ColorPickerDialog$ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x40a0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 59
    return-void

    .line 45
    nop

    :array_46
    .array-data 0x4
        0x0t 0x0t 0xfft 0xfft
        0xfft 0x0t 0xfft 0xfft
        0xfft 0x0t 0x0t 0xfft
        0xfft 0xfft 0x0t 0xfft
        0x0t 0xfft 0x0t 0xfft
        0x0t 0xfft 0xfft 0xfft
        0x0t 0x0t 0xfft 0xfft
    .end array-data
.end method

.method private ave(IIF)I
    .registers 5
    .parameter "s"
    .parameter "d"
    .parameter "p"

    .prologue
    .line 114
    sub-int v0, p2, p1

    int-to-float v0, v0

    mul-float/2addr v0, p3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method private floatToByte(F)I
    .registers 3
    .parameter "x"

    .prologue
    .line 101
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 102
    .local v0, n:I
    return v0
.end method

.method private interpColor([IF)I
    .registers 13
    .parameter "colors"
    .parameter "unit"

    .prologue
    const/4 v9, 0x1

    .line 118
    const/4 v8, 0x0

    cmpg-float v8, p2, v8

    if-gtz v8, :cond_a

    .line 119
    const/4 v8, 0x0

    aget v8, p1, v8

    .line 137
    :goto_9
    return v8

    .line 121
    :cond_a
    const/high16 v8, 0x3f80

    cmpl-float v8, p2, v8

    if-ltz v8, :cond_15

    .line 122
    array-length v8, p1

    sub-int/2addr v8, v9

    aget v8, p1, v8

    goto :goto_9

    .line 125
    :cond_15
    array-length v8, p1

    sub-int/2addr v8, v9

    int-to-float v8, v8

    mul-float v6, p2, v8

    .line 126
    .local v6, p:F
    float-to-int v5, v6

    .line 127
    .local v5, i:I
    int-to-float v8, v5

    sub-float/2addr v6, v8

    .line 130
    aget v2, p1, v5

    .line 131
    .local v2, c0:I
    add-int/lit8 v8, v5, 0x1

    aget v3, p1, v8

    .line 132
    .local v3, c1:I
    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v8

    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v9

    invoke-direct {p0, v8, v9, v6}, Lcom/lge/hiddenmenu/device_test/touch_test/ColorPickerDialog$ColorPickerView;->ave(IIF)I

    move-result v0

    .line 133
    .local v0, a:I
    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v8

    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v9

    invoke-direct {p0, v8, v9, v6}, Lcom/lge/hiddenmenu/device_test/touch_test/ColorPickerDialog$ColorPickerView;->ave(IIF)I

    move-result v7

    .line 134
    .local v7, r:I
    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v8

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v9

    invoke-direct {p0, v8, v9, v6}, Lcom/lge/hiddenmenu/device_test/touch_test/ColorPickerDialog$ColorPickerView;->ave(IIF)I

    move-result v4

    .line 135
    .local v4, g:I
    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v8

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v9

    invoke-direct {p0, v8, v9, v6}, Lcom/lge/hiddenmenu/device_test/touch_test/ColorPickerDialog$ColorPickerView;->ave(IIF)I

    move-result v1

    .line 137
    .local v1, b:I
    invoke-static {v0, v7, v4, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    goto :goto_9
.end method

.method private pinToByte(I)I
    .registers 3
    .parameter "n"

    .prologue
    .line 105
    if-gez p1, :cond_4

    .line 106
    const/4 p1, 0x0

    .line 110
    :cond_3
    :goto_3
    return p1

    .line 107
    :cond_4
    const/16 v0, 0xff

    if-le p1, v0, :cond_3

    .line 108
    const/16 p1, 0xff

    goto :goto_3
.end method

.method private rotateColor(IF)I
    .registers 17
    .parameter "color"
    .parameter "rad"

    .prologue
    .line 141
    const/high16 v10, 0x4334

    mul-float v10, v10, p2

    const v11, 0x40490fdb

    div-float v3, v10, v11

    .line 142
    .local v3, deg:F
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v8

    .line 143
    .local v8, r:I
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    .line 144
    .local v4, g:I
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    .line 146
    .local v1, b:I
    new-instance v2, Landroid/graphics/ColorMatrix;

    invoke-direct {v2}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 147
    .local v2, cm:Landroid/graphics/ColorMatrix;
    new-instance v9, Landroid/graphics/ColorMatrix;

    invoke-direct {v9}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 149
    .local v9, tmp:Landroid/graphics/ColorMatrix;
    invoke-virtual {v2}, Landroid/graphics/ColorMatrix;->setRGB2YUV()V

    .line 150
    const/4 v10, 0x0

    invoke-virtual {v9, v10, v3}, Landroid/graphics/ColorMatrix;->setRotate(IF)V

    .line 151
    invoke-virtual {v2, v9}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    .line 152
    invoke-virtual {v9}, Landroid/graphics/ColorMatrix;->setYUV2RGB()V

    .line 153
    invoke-virtual {v2, v9}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    .line 155
    invoke-virtual {v2}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object v0

    .line 157
    .local v0, a:[F
    const/4 v10, 0x0

    aget v10, v0, v10

    int-to-float v11, v8

    mul-float/2addr v10, v11

    const/4 v11, 0x1

    aget v11, v0, v11

    int-to-float v12, v4

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    const/4 v11, 0x2

    aget v11, v0, v11

    int-to-float v12, v1

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    invoke-direct {p0, v10}, Lcom/lge/hiddenmenu/device_test/touch_test/ColorPickerDialog$ColorPickerView;->floatToByte(F)I

    move-result v7

    .line 158
    .local v7, ir:I
    const/4 v10, 0x5

    aget v10, v0, v10

    int-to-float v11, v8

    mul-float/2addr v10, v11

    const/4 v11, 0x6

    aget v11, v0, v11

    int-to-float v12, v4

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    const/4 v11, 0x7

    aget v11, v0, v11

    int-to-float v12, v1

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    invoke-direct {p0, v10}, Lcom/lge/hiddenmenu/device_test/touch_test/ColorPickerDialog$ColorPickerView;->floatToByte(F)I

    move-result v6

    .line 159
    .local v6, ig:I
    const/16 v10, 0xa

    aget v10, v0, v10

    int-to-float v11, v8

    mul-float/2addr v10, v11

    const/16 v11, 0xb

    aget v11, v0, v11

    int-to-float v12, v4

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    const/16 v11, 0xc

    aget v11, v0, v11

    int-to-float v12, v1

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    invoke-direct {p0, v10}, Lcom/lge/hiddenmenu/device_test/touch_test/ColorPickerDialog$ColorPickerView;->floatToByte(F)I

    move-result v5

    .line 161
    .local v5, ib:I
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v10

    invoke-direct {p0, v7}, Lcom/lge/hiddenmenu/device_test/touch_test/ColorPickerDialog$ColorPickerView;->pinToByte(I)I

    move-result v11

    invoke-direct {p0, v6}, Lcom/lge/hiddenmenu/device_test/touch_test/ColorPickerDialog$ColorPickerView;->pinToByte(I)I

    move-result v12

    invoke-direct {p0, v5}, Lcom/lge/hiddenmenu/device_test/touch_test/ColorPickerDialog$ColorPickerView;->pinToByte(I)I

    move-result v13

    invoke-static {v10, v11, v12, v13}, Landroid/graphics/Color;->argb(IIII)I

    move-result v10

    return v10
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 9
    .parameter "canvas"

    .prologue
    const/high16 v6, 0x4200

    const/high16 v4, 0x42c8

    const/4 v5, 0x0

    .line 66
    iget-object v2, p0, Lcom/lge/hiddenmenu/device_test/touch_test/ColorPickerDialog$ColorPickerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    const/high16 v3, 0x3f00

    mul-float/2addr v2, v3

    sub-float v1, v4, v2

    .line 68
    .local v1, r:F
    invoke-virtual {p1, v4, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 70
    new-instance v2, Landroid/graphics/RectF;

    neg-float v3, v1

    neg-float v4, v1

    invoke-direct {v2, v3, v4, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v3, p0, Lcom/lge/hiddenmenu/device_test/touch_test/ColorPickerDialog$ColorPickerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 71
    iget-object v2, p0, Lcom/lge/hiddenmenu/device_test/touch_test/ColorPickerDialog$ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v5, v6, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 73
    iget-boolean v2, p0, Lcom/lge/hiddenmenu/device_test/touch_test/ColorPickerDialog$ColorPickerView;->mTrackingCenter:Z

    if-eqz v2, :cond_58

    .line 74
    iget-object v2, p0, Lcom/lge/hiddenmenu/device_test/touch_test/ColorPickerDialog$ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    .line 75
    .local v0, c:I
    iget-object v2, p0, Lcom/lge/hiddenmenu/device_test/touch_test/ColorPickerDialog$ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 77
    iget-boolean v2, p0, Lcom/lge/hiddenmenu/device_test/touch_test/ColorPickerDialog$ColorPickerView;->mHighlightCenter:Z

    if-eqz v2, :cond_59

    .line 78
    iget-object v2, p0, Lcom/lge/hiddenmenu/device_test/touch_test/ColorPickerDialog$ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 82
    :goto_40
    iget-object v2, p0, Lcom/lge/hiddenmenu/device_test/touch_test/ColorPickerDialog$ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    add-float/2addr v2, v6

    iget-object v3, p0, Lcom/lge/hiddenmenu/device_test/touch_test/ColorPickerDialog$ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v5, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 86
    iget-object v2, p0, Lcom/lge/hiddenmenu/device_test/touch_test/ColorPickerDialog$ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 87
    iget-object v2, p0, Lcom/lge/hiddenmenu/device_test/touch_test/ColorPickerDialog$ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 89
    .end local v0           #c:I
    :cond_58
    return-void

    .line 80
    .restart local v0       #c:I
    :cond_59
    iget-object v2, p0, Lcom/lge/hiddenmenu/device_test/touch_test/ColorPickerDialog$ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    const/16 v3, 0x80

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_40
.end method

.method protected onMeasure(II)V
    .registers 4
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/16 v0, 0xc8

    .line 93
    invoke-virtual {p0, v0, v0}, Lcom/lge/hiddenmenu/device_test/touch_test/ColorPickerDialog$ColorPickerView;->setMeasuredDimension(II)V

    .line 94
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 13
    .parameter "event"

    .prologue
    const/4 v10, 0x0

    const/high16 v6, 0x42c8

    const/4 v9, 0x1

    .line 169
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    sub-float v3, v5, v6

    .line 170
    .local v3, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    sub-float v4, v5, v6

    .line 171
    .local v4, y:F
    mul-float v5, v3, v3

    mul-float v6, v4, v4

    add-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    const-wide/high16 v7, 0x4040

    cmpg-double v5, v5, v7

    if-gtz v5, :cond_29

    move v1, v9

    .line 173
    .local v1, inCenter:Z
    :goto_21
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_7e

    .line 208
    :cond_28
    :goto_28
    return v9

    .end local v1           #inCenter:Z
    :cond_29
    move v1, v10

    .line 171
    goto :goto_21

    .line 175
    .restart local v1       #inCenter:Z
    :pswitch_2b
    iput-boolean v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/ColorPickerDialog$ColorPickerView;->mTrackingCenter:Z

    .line 176
    if-eqz v1, :cond_35

    .line 177
    iput-boolean v9, p0, Lcom/lge/hiddenmenu/device_test/touch_test/ColorPickerDialog$ColorPickerView;->mHighlightCenter:Z

    .line 178
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/touch_test/ColorPickerDialog$ColorPickerView;->invalidate()V

    goto :goto_28

    .line 182
    :cond_35
    :pswitch_35
    iget-boolean v5, p0, Lcom/lge/hiddenmenu/device_test/touch_test/ColorPickerDialog$ColorPickerView;->mTrackingCenter:Z

    if-eqz v5, :cond_43

    .line 183
    iget-boolean v5, p0, Lcom/lge/hiddenmenu/device_test/touch_test/ColorPickerDialog$ColorPickerView;->mHighlightCenter:Z

    if-eq v5, v1, :cond_28

    .line 184
    iput-boolean v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/ColorPickerDialog$ColorPickerView;->mHighlightCenter:Z

    .line 185
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/touch_test/ColorPickerDialog$ColorPickerView;->invalidate()V

    goto :goto_28

    .line 188
    :cond_43
    float-to-double v5, v4

    float-to-double v7, v3

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v5

    double-to-float v0, v5

    .line 190
    .local v0, angle:F
    const v5, 0x40c90fda

    div-float v2, v0, v5

    .line 191
    .local v2, unit:F
    const/4 v5, 0x0

    cmpg-float v5, v2, v5

    if-gez v5, :cond_57

    .line 192
    const/high16 v5, 0x3f80

    add-float/2addr v2, v5

    .line 194
    :cond_57
    iget-object v5, p0, Lcom/lge/hiddenmenu/device_test/touch_test/ColorPickerDialog$ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/lge/hiddenmenu/device_test/touch_test/ColorPickerDialog$ColorPickerView;->mColors:[I

    invoke-direct {p0, v6, v2}, Lcom/lge/hiddenmenu/device_test/touch_test/ColorPickerDialog$ColorPickerView;->interpColor([IF)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 195
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/touch_test/ColorPickerDialog$ColorPickerView;->invalidate()V

    goto :goto_28

    .line 199
    .end local v0           #angle:F
    .end local v2           #unit:F
    :pswitch_66
    iget-boolean v5, p0, Lcom/lge/hiddenmenu/device_test/touch_test/ColorPickerDialog$ColorPickerView;->mTrackingCenter:Z

    if-eqz v5, :cond_28

    .line 200
    if-eqz v1, :cond_77

    .line 201
    iget-object v5, p0, Lcom/lge/hiddenmenu/device_test/touch_test/ColorPickerDialog$ColorPickerView;->mListener:Lcom/lge/hiddenmenu/device_test/touch_test/ColorPickerDialog$OnColorChangedListener;

    iget-object v6, p0, Lcom/lge/hiddenmenu/device_test/touch_test/ColorPickerDialog$ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->getColor()I

    move-result v6

    invoke-interface {v5, v6}, Lcom/lge/hiddenmenu/device_test/touch_test/ColorPickerDialog$OnColorChangedListener;->colorChanged(I)V

    .line 203
    :cond_77
    iput-boolean v10, p0, Lcom/lge/hiddenmenu/device_test/touch_test/ColorPickerDialog$ColorPickerView;->mTrackingCenter:Z

    .line 204
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/touch_test/ColorPickerDialog$ColorPickerView;->invalidate()V

    goto :goto_28

    .line 173
    nop

    :pswitch_data_7e
    .packed-switch 0x0
        :pswitch_2b
        :pswitch_66
        :pswitch_35
    .end packed-switch
.end method
