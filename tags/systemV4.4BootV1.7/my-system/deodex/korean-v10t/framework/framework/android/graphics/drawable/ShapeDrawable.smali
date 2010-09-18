.class public Landroid/graphics/drawable/ShapeDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ShapeDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/ShapeDrawable$1;,
        Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;,
        Landroid/graphics/drawable/ShapeDrawable$ShapeState;
    }
.end annotation


# instance fields
.field private mMutated:Z

.field private mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 53
    const/4 v0, 0x0

    check-cast v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    invoke-direct {p0, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/ShapeDrawable$ShapeState;)V

    .line 54
    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/ShapeDrawable$ShapeState;)V
    .registers 3
    .parameter "state"

    .prologue
    .line 67
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 68
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ShapeDrawable$ShapeState;-><init>(Landroid/graphics/drawable/ShapeDrawable$ShapeState;)V

    iput-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    .line 69
    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/drawable/ShapeDrawable$ShapeState;Landroid/graphics/drawable/ShapeDrawable$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/ShapeDrawable$ShapeState;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/shapes/Shape;)V
    .registers 3
    .parameter "s"

    .prologue
    .line 62
    const/4 v0, 0x0

    check-cast v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    invoke-direct {p0, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/ShapeDrawable$ShapeState;)V

    .line 64
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iput-object p1, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mShape:Landroid/graphics/drawable/shapes/Shape;

    .line 65
    return-void
.end method

.method private static modulateAlpha(II)I
    .registers 4
    .parameter "paintAlpha"
    .parameter "alpha"

    .prologue
    .line 184
    ushr-int/lit8 v1, p1, 0x7

    add-int v0, p1, v1

    .line 185
    .local v0, scale:I
    mul-int v1, p0, v0

    ushr-int/lit8 v1, v1, 0x8

    return v1
.end method

.method private updateShape()V
    .registers 7

    .prologue
    .line 333
    iget-object v3, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iget-object v3, v3, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mShape:Landroid/graphics/drawable/shapes/Shape;

    if-eqz v3, :cond_30

    .line 334
    invoke-virtual {p0}, Landroid/graphics/drawable/ShapeDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 335
    .local v1, r:Landroid/graphics/Rect;
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 336
    .local v2, w:I
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 338
    .local v0, h:I
    iget-object v3, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iget-object v3, v3, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mShape:Landroid/graphics/drawable/shapes/Shape;

    int-to-float v4, v2

    int-to-float v5, v0

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/shapes/Shape;->resize(FF)V

    .line 339
    iget-object v3, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iget-object v3, v3, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mShaderFactory:Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;

    if-eqz v3, :cond_30

    .line 340
    iget-object v3, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iget-object v3, v3, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iget-object v4, v4, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mShaderFactory:Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;

    invoke-virtual {v4, v2, v0}, Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;->resize(II)Landroid/graphics/Shader;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 343
    .end local v0           #h:I
    .end local v1           #r:Landroid/graphics/Rect;
    .end local v2           #w:I
    :cond_30
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 8
    .parameter "canvas"

    .prologue
    .line 199
    invoke-virtual {p0}, Landroid/graphics/drawable/ShapeDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 200
    .local v3, r:Landroid/graphics/Rect;
    iget-object v4, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iget-object v1, v4, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPaint:Landroid/graphics/Paint;

    .line 202
    .local v1, paint:Landroid/graphics/Paint;
    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    .line 203
    .local v2, prevAlpha:I
    iget-object v4, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iget v4, v4, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mAlpha:I

    invoke-static {v2, v4}, Landroid/graphics/drawable/ShapeDrawable;->modulateAlpha(II)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 205
    iget-object v4, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iget-object v4, v4, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mShape:Landroid/graphics/drawable/shapes/Shape;

    if-eqz v4, :cond_38

    .line 207
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 208
    .local v0, count:I
    iget v4, v3, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget v5, v3, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 209
    iget-object v4, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iget-object v4, v4, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mShape:Landroid/graphics/drawable/shapes/Shape;

    invoke-virtual {p0, v4, p1, v1}, Landroid/graphics/drawable/ShapeDrawable;->onDraw(Landroid/graphics/drawable/shapes/Shape;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 210
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 216
    .end local v0           #count:I
    :goto_34
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 217
    return-void

    .line 212
    :cond_38
    invoke-virtual {p1, v3, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_34
.end method

.method public getChangingConfigurations()I
    .registers 3

    .prologue
    .line 221
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iget v1, v1, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mChangingConfigurations:I

    or-int/2addr v0, v1

    return v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .registers 3

    .prologue
    .line 347
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mChangingConfigurations:I

    .line 348
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .registers 2

    .prologue
    .line 170
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iget v0, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mIntrinsicHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .registers 2

    .prologue
    .line 165
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iget v0, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mIntrinsicWidth:I

    return v0
.end method

.method public getOpacity()I
    .registers 4

    .prologue
    .line 244
    iget-object v2, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iget-object v2, v2, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mShape:Landroid/graphics/drawable/shapes/Shape;

    if-nez v2, :cond_1e

    .line 245
    iget-object v2, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iget-object v1, v2, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPaint:Landroid/graphics/Paint;

    .line 246
    .local v1, p:Landroid/graphics/Paint;
    invoke-virtual {v1}, Landroid/graphics/Paint;->getXfermode()Landroid/graphics/Xfermode;

    move-result-object v2

    if-nez v2, :cond_1e

    .line 247
    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    .line 248
    .local v0, alpha:I
    if-nez v0, :cond_18

    .line 249
    const/4 v2, -0x2

    .line 257
    .end local v0           #alpha:I
    .end local v1           #p:Landroid/graphics/Paint;
    :goto_17
    return v2

    .line 251
    .restart local v0       #alpha:I
    .restart local v1       #p:Landroid/graphics/Paint;
    :cond_18
    const/16 v2, 0xff

    if-ne v0, v2, :cond_1e

    .line 252
    const/4 v2, -0x1

    goto :goto_17

    .line 257
    .end local v0           #alpha:I
    .end local v1           #p:Landroid/graphics/Paint;
    :cond_1e
    const/4 v2, -0x3

    goto :goto_17
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .registers 3
    .parameter "padding"

    .prologue
    .line 175
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iget-object v0, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPadding:Landroid/graphics/Rect;

    if-eqz v0, :cond_f

    .line 176
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iget-object v0, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 177
    const/4 v0, 0x1

    .line 179
    :goto_e
    return v0

    :cond_f
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    goto :goto_e
.end method

.method public getPaint()Landroid/graphics/Paint;
    .registers 2

    .prologue
    .line 108
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iget-object v0, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getShaderFactory()Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iget-object v0, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mShaderFactory:Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;

    return-object v0
.end method

.method public getShape()Landroid/graphics/drawable/shapes/Shape;
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iget-object v0, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mShape:Landroid/graphics/drawable/shapes/Shape;

    return-object v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .registers 14
    .parameter "r"
    .parameter "parser"
    .parameter "attrs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 300
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V

    .line 302
    sget-object v5, Lcom/android/internal/R$styleable;->ShapeDrawable:[I

    invoke-virtual {p1, p3, v5}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 304
    .local v0, a:Landroid/content/res/TypedArray;
    iget-object v5, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iget-object v5, v5, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    .line 305
    .local v1, color:I
    invoke-virtual {v0, v9, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 306
    iget-object v5, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iget-object v5, v5, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 308
    invoke-virtual {v0, v8, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p0, v5}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicWidth(I)V

    .line 310
    const/4 v5, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p0, v5}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicHeight(I)V

    .line 313
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 316
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 318
    .local v3, outerDepth:I
    :cond_37
    :goto_37
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .local v4, type:I
    if-eq v4, v8, :cond_75

    const/4 v5, 0x3

    if-ne v4, v5, :cond_46

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v3, :cond_75

    .line 319
    :cond_46
    if-ne v4, v9, :cond_37

    .line 323
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 325
    .local v2, name:Ljava/lang/String;
    invoke-virtual {p0, v2, p1, p2, p3}, Landroid/graphics/drawable/ShapeDrawable;->inflateTag(Ljava/lang/String;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Z

    move-result v5

    if-nez v5, :cond_37

    .line 326
    const-string v5, "drawable"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown element: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for ShapeDrawable "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_37

    .line 330
    .end local v2           #name:Ljava/lang/String;
    :cond_75
    return-void
.end method

.method protected inflateTag(Ljava/lang/String;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Z
    .registers 12
    .parameter "name"
    .parameter "r"
    .parameter "parser"
    .parameter "attrs"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 278
    const-string v1, "padding"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 279
    sget-object v1, Lcom/android/internal/R$styleable;->ShapeDrawablePadding:[I

    invoke-virtual {p2, p4, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 281
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    const/4 v4, 0x3

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/graphics/drawable/ShapeDrawable;->setPadding(IIII)V

    .line 290
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    move v1, v6

    .line 294
    .end local v0           #a:Landroid/content/res/TypedArray;
    :goto_29
    return v1

    :cond_2a
    move v1, v5

    goto :goto_29
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .registers 5

    .prologue
    .line 353
    iget-boolean v1, p0, Landroid/graphics/drawable/ShapeDrawable;->mMutated:Z

    if-nez v1, :cond_33

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-ne v1, p0, :cond_33

    .line 354
    iget-object v1, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    new-instance v2, Landroid/graphics/Paint;

    iget-object v3, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iget-object v3, v3, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPaint:Landroid/graphics/Paint;

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v2, v1, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPaint:Landroid/graphics/Paint;

    .line 355
    iget-object v1, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iget-object v3, v3, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPadding:Landroid/graphics/Rect;

    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v2, v1, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPadding:Landroid/graphics/Rect;

    .line 357
    :try_start_24
    iget-object v1, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iget-object v2, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iget-object v2, v2, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mShape:Landroid/graphics/drawable/shapes/Shape;

    invoke-virtual {v2}, Landroid/graphics/drawable/shapes/Shape;->clone()Landroid/graphics/drawable/shapes/Shape;

    move-result-object v2

    iput-object v2, v1, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mShape:Landroid/graphics/drawable/shapes/Shape;
    :try_end_30
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_24 .. :try_end_30} :catch_35

    .line 361
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/graphics/drawable/ShapeDrawable;->mMutated:Z

    :cond_33
    move-object v1, p0

    .line 363
    :goto_34
    return-object v1

    .line 358
    :catch_35
    move-exception v1

    move-object v0, v1

    .line 359
    .local v0, e:Ljava/lang/CloneNotSupportedException;
    const/4 v1, 0x0

    goto :goto_34
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .registers 2
    .parameter "bounds"

    .prologue
    .line 267
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 268
    invoke-direct {p0}, Landroid/graphics/drawable/ShapeDrawable;->updateShape()V

    .line 269
    return-void
.end method

.method protected onDraw(Landroid/graphics/drawable/shapes/Shape;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .registers 4
    .parameter "shape"
    .parameter "canvas"
    .parameter "paint"

    .prologue
    .line 194
    invoke-virtual {p1, p2, p3}, Landroid/graphics/drawable/shapes/Shape;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 195
    return-void
.end method

.method public setAlpha(I)V
    .registers 3
    .parameter "alpha"

    .prologue
    .line 234
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iput p1, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mAlpha:I

    .line 235
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3
    .parameter "cf"

    .prologue
    .line 239
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iget-object v0, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 240
    return-void
.end method

.method public setDither(Z)V
    .registers 3
    .parameter "dither"

    .prologue
    .line 262
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iget-object v0, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 263
    return-void
.end method

.method public setIntrinsicHeight(I)V
    .registers 3
    .parameter "height"

    .prologue
    .line 160
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iput p1, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mIntrinsicHeight:I

    .line 161
    return-void
.end method

.method public setIntrinsicWidth(I)V
    .registers 3
    .parameter "width"

    .prologue
    .line 151
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iput p1, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mIntrinsicWidth:I

    .line 152
    return-void
.end method

.method public setPadding(IIII)V
    .registers 7
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 120
    or-int v0, p1, p2

    or-int/2addr v0, p3

    or-int/2addr v0, p4

    if-nez v0, :cond_c

    .line 121
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPadding:Landroid/graphics/Rect;

    .line 128
    :goto_b
    return-void

    .line 123
    :cond_c
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iget-object v0, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPadding:Landroid/graphics/Rect;

    if-nez v0, :cond_1b

    .line 124
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPadding:Landroid/graphics/Rect;

    .line 126
    :cond_1b
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iget-object v0, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_b
.end method

.method public setPadding(Landroid/graphics/Rect;)V
    .registers 4
    .parameter "padding"

    .prologue
    .line 135
    if-nez p1, :cond_8

    .line 136
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPadding:Landroid/graphics/Rect;

    .line 143
    :goto_7
    return-void

    .line 138
    :cond_8
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iget-object v0, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPadding:Landroid/graphics/Rect;

    if-nez v0, :cond_17

    .line 139
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPadding:Landroid/graphics/Rect;

    .line 141
    :cond_17
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iget-object v0, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_7
.end method

.method public setShaderFactory(Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;)V
    .registers 3
    .parameter "fact"

    .prologue
    .line 93
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iput-object p1, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mShaderFactory:Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;

    .line 94
    return-void
.end method

.method public setShape(Landroid/graphics/drawable/shapes/Shape;)V
    .registers 3
    .parameter "s"

    .prologue
    .line 82
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iput-object p1, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mShape:Landroid/graphics/drawable/shapes/Shape;

    .line 83
    invoke-direct {p0}, Landroid/graphics/drawable/ShapeDrawable;->updateShape()V

    .line 84
    return-void
.end method
