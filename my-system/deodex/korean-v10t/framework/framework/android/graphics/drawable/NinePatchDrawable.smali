.class public Landroid/graphics/drawable/NinePatchDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "NinePatchDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/NinePatchDrawable$1;,
        Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;
    }
.end annotation


# instance fields
.field private mBitmapHeight:I

.field private mBitmapWidth:I

.field private mMutated:Z

.field private mNinePatch:Landroid/graphics/NinePatch;

.field private mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

.field private mPadding:Landroid/graphics/Rect;

.field private mPaint:Landroid/graphics/Paint;

.field private mTargetDensity:I


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 45
    const/16 v0, 0xa0

    iput v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mTargetDensity:I

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V
    .registers 8
    .parameter "res"
    .parameter "bitmap"
    .parameter "chunk"
    .parameter "padding"
    .parameter "srcName"

    .prologue
    .line 69
    new-instance v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    new-instance v1, Landroid/graphics/NinePatch;

    invoke-direct {v1, p2, p3, p5}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    invoke-direct {v0, v1, p4}, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;-><init>(Landroid/graphics/NinePatch;Landroid/graphics/Rect;)V

    invoke-direct {p0, v0}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;)V

    .line 70
    if-eqz p1, :cond_1c

    .line 71
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/NinePatchDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    .line 72
    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    iget v1, p0, Landroid/graphics/drawable/NinePatchDrawable;->mTargetDensity:I

    iput v1, v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTargetDensity:I

    .line 74
    :cond_1c
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/graphics/NinePatch;)V
    .registers 5
    .parameter "res"
    .parameter "patch"

    .prologue
    .line 90
    new-instance v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;-><init>(Landroid/graphics/NinePatch;Landroid/graphics/Rect;)V

    invoke-direct {p0, v0}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;)V

    .line 91
    if-eqz p1, :cond_18

    .line 92
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/NinePatchDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    .line 93
    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    iget v1, p0, Landroid/graphics/drawable/NinePatchDrawable;->mTargetDensity:I

    iput v1, v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTargetDensity:I

    .line 95
    :cond_18
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V
    .registers 7
    .parameter "bitmap"
    .parameter "chunk"
    .parameter "padding"
    .parameter "srcName"

    .prologue
    .line 60
    new-instance v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    new-instance v1, Landroid/graphics/NinePatch;

    invoke-direct {v1, p1, p2, p4}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    invoke-direct {v0, v1, p3}, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;-><init>(Landroid/graphics/NinePatch;Landroid/graphics/Rect;)V

    invoke-direct {p0, v0}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/graphics/NinePatch;)V
    .registers 4
    .parameter "patch"

    .prologue
    .line 82
    new-instance v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;-><init>(Landroid/graphics/NinePatch;Landroid/graphics/Rect;)V

    invoke-direct {p0, v0}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;)V

    .line 83
    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;)V
    .registers 3
    .parameter "state"

    .prologue
    .line 360
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 45
    const/16 v0, 0xa0

    iput v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mTargetDensity:I

    .line 361
    invoke-direct {p0, p1}, Landroid/graphics/drawable/NinePatchDrawable;->setNinePatchState(Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;)V

    .line 362
    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;Landroid/graphics/drawable/NinePatchDrawable$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;)V

    return-void
.end method

.method private computeBitmapSize()V
    .registers 6

    .prologue
    .line 153
    iget-object v4, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatch:Landroid/graphics/NinePatch;

    invoke-virtual {v4}, Landroid/graphics/NinePatch;->getDensity()I

    move-result v1

    .line 154
    .local v1, sdensity:I
    iget v3, p0, Landroid/graphics/drawable/NinePatchDrawable;->mTargetDensity:I

    .line 155
    .local v3, tdensity:I
    if-ne v1, v3, :cond_1b

    .line 156
    iget-object v4, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatch:Landroid/graphics/NinePatch;

    invoke-virtual {v4}, Landroid/graphics/NinePatch;->getWidth()I

    move-result v4

    iput v4, p0, Landroid/graphics/drawable/NinePatchDrawable;->mBitmapWidth:I

    .line 157
    iget-object v4, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatch:Landroid/graphics/NinePatch;

    invoke-virtual {v4}, Landroid/graphics/NinePatch;->getHeight()I

    move-result v4

    iput v4, p0, Landroid/graphics/drawable/NinePatchDrawable;->mBitmapHeight:I

    .line 173
    :goto_1a
    return-void

    .line 159
    :cond_1b
    iget-object v4, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatch:Landroid/graphics/NinePatch;

    invoke-virtual {v4}, Landroid/graphics/NinePatch;->getWidth()I

    move-result v4

    invoke-static {v4, v1, v3}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v4

    iput v4, p0, Landroid/graphics/drawable/NinePatchDrawable;->mBitmapWidth:I

    .line 161
    iget-object v4, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatch:Landroid/graphics/NinePatch;

    invoke-virtual {v4}, Landroid/graphics/NinePatch;->getHeight()I

    move-result v4

    invoke-static {v4, v1, v3}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v4

    iput v4, p0, Landroid/graphics/drawable/NinePatchDrawable;->mBitmapHeight:I

    .line 163
    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mPadding:Landroid/graphics/Rect;

    .line 164
    .local v0, dest:Landroid/graphics/Rect;
    iget-object v4, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    iget-object v2, v4, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mPadding:Landroid/graphics/Rect;

    .line 165
    .local v2, src:Landroid/graphics/Rect;
    if-ne v0, v2, :cond_42

    .line 166
    new-instance v0, Landroid/graphics/Rect;

    .end local v0           #dest:Landroid/graphics/Rect;
    invoke-direct {v0, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .restart local v0       #dest:Landroid/graphics/Rect;
    iput-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mPadding:Landroid/graphics/Rect;

    .line 168
    :cond_42
    iget v4, v2, Landroid/graphics/Rect;->left:I

    invoke-static {v4, v1, v3}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v4

    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 169
    iget v4, v2, Landroid/graphics/Rect;->top:I

    invoke-static {v4, v1, v3}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v4

    iput v4, v0, Landroid/graphics/Rect;->top:I

    .line 170
    iget v4, v2, Landroid/graphics/Rect;->right:I

    invoke-static {v4, v1, v3}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v4

    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 171
    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    invoke-static {v4, v1, v3}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v4

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_1a
.end method

.method private setNinePatchState(Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;)V
    .registers 3
    .parameter "state"

    .prologue
    .line 98
    iput-object p1, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    .line 99
    iget-object v0, p1, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mNinePatch:Landroid/graphics/NinePatch;

    iput-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatch:Landroid/graphics/NinePatch;

    .line 100
    iget-object v0, p1, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mPadding:Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mPadding:Landroid/graphics/Rect;

    .line 101
    iget v0, p1, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTargetDensity:I

    iput v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mTargetDensity:I

    .line 102
    iget-boolean v0, p1, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mDither:Z

    if-eqz v0, :cond_17

    iget-boolean v0, p1, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mDither:Z

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/NinePatchDrawable;->setDither(Z)V

    .line 103
    :cond_17
    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatch:Landroid/graphics/NinePatch;

    if-eqz v0, :cond_1e

    .line 104
    invoke-direct {p0}, Landroid/graphics/drawable/NinePatchDrawable;->computeBitmapSize()V

    .line 106
    :cond_1e
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 5
    .parameter "canvas"

    .prologue
    .line 179
    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatch:Landroid/graphics/NinePatch;

    invoke-virtual {p0}, Landroid/graphics/drawable/NinePatchDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Landroid/graphics/drawable/NinePatchDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v1, v2}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 180
    return-void
.end method

.method public getChangingConfigurations()I
    .registers 3

    .prologue
    .line 184
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    iget v1, v1, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mChangingConfigurations:I

    or-int/2addr v0, v1

    return v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .registers 3

    .prologue
    .line 309
    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mChangingConfigurations:I

    .line 310
    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .registers 2

    .prologue
    .line 279
    iget v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mBitmapHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .registers 2

    .prologue
    .line 271
    iget v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mBitmapWidth:I

    return v0
.end method

.method public getMinimumHeight()I
    .registers 2

    .prologue
    .line 289
    iget v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mBitmapHeight:I

    return v0
.end method

.method public getMinimumWidth()I
    .registers 2

    .prologue
    .line 284
    iget v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mBitmapWidth:I

    return v0
.end method

.method public getOpacity()I
    .registers 3

    .prologue
    .line 298
    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatch:Landroid/graphics/NinePatch;

    invoke-virtual {v0}, Landroid/graphics/NinePatch;->hasAlpha()Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_18

    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    const/16 v1, 0xff

    if-ge v0, v1, :cond_18

    :cond_16
    const/4 v0, -0x3

    :goto_17
    return v0

    :cond_18
    const/4 v0, -0x1

    goto :goto_17
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .registers 3
    .parameter "padding"

    .prologue
    .line 189
    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 190
    const/4 v0, 0x1

    return v0
.end method

.method public getPaint()Landroid/graphics/Paint;
    .registers 2

    .prologue
    .line 260
    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_b

    .line 261
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mPaint:Landroid/graphics/Paint;

    .line 263
    :cond_b
    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getTransparentRegion()Landroid/graphics/Region;
    .registers 3

    .prologue
    .line 304
    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatch:Landroid/graphics/NinePatch;

    invoke-virtual {p0}, Landroid/graphics/drawable/NinePatchDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/NinePatch;->getTransparentRegion(Landroid/graphics/Rect;)Landroid/graphics/Region;

    move-result-object v0

    return-object v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .registers 16
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
    const/4 v9, 0x0

    const-string v11, ": <nine-patch> requires a valid src attribute"

    .line 211
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V

    .line 213
    sget-object v8, Lcom/android/internal/R$styleable;->NinePatchDrawable:[I

    invoke-virtual {p1, p3, v8}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 215
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v9, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 216
    .local v3, id:I
    if-nez v3, :cond_2f

    .line 217
    new-instance v8, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": <nine-patch> requires a valid src attribute"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 221
    :cond_2f
    const/4 v8, 0x1

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 223
    .local v2, dither:Z
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 224
    .local v5, options:Landroid/graphics/BitmapFactory$Options;
    if-eqz v2, :cond_3d

    .line 225
    iput-boolean v9, v5, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 227
    :cond_3d
    sget v8, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    iput v8, v5, Landroid/graphics/BitmapFactory$Options;->inScreenDensity:I

    .line 229
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 230
    .local v6, padding:Landroid/graphics/Rect;
    const/4 v1, 0x0

    .line 233
    .local v1, bitmap:Landroid/graphics/Bitmap;
    :try_start_47
    new-instance v7, Landroid/util/TypedValue;

    invoke-direct {v7}, Landroid/util/TypedValue;-><init>()V

    .line 234
    .local v7, value:Landroid/util/TypedValue;
    invoke-virtual {p1, v3, v7}, Landroid/content/res/Resources;->openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v4

    .line 236
    .local v4, is:Ljava/io/InputStream;
    invoke-static {p1, v7, v4, v6, v5}, Landroid/graphics/BitmapFactory;->decodeResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 238
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_57} :catch_b6

    .line 243
    .end local v4           #is:Ljava/io/InputStream;
    .end local v7           #value:Landroid/util/TypedValue;
    :goto_57
    if-nez v1, :cond_76

    .line 244
    new-instance v8, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": <nine-patch> requires a valid src attribute"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 246
    :cond_76
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v8

    if-nez v8, :cond_99

    .line 247
    new-instance v8, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": <nine-patch> requires a valid 9-patch source image"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 251
    :cond_99
    new-instance v8, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    new-instance v9, Landroid/graphics/NinePatch;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v10

    const-string v11, "XML 9-patch"

    invoke-direct {v9, v1, v10, v11}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    invoke-direct {v8, v9, v6, v2}, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;-><init>(Landroid/graphics/NinePatch;Landroid/graphics/Rect;Z)V

    invoke-direct {p0, v8}, Landroid/graphics/drawable/NinePatchDrawable;->setNinePatchState(Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;)V

    .line 253
    iget-object v8, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    iget v9, p0, Landroid/graphics/drawable/NinePatchDrawable;->mTargetDensity:I

    iput v9, v8, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTargetDensity:I

    .line 255
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 256
    return-void

    .line 239
    :catch_b6
    move-exception v8

    goto :goto_57
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .registers 3

    .prologue
    .line 315
    iget-boolean v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mMutated:Z

    if-nez v0, :cond_1c

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_1c

    .line 316
    new-instance v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    iget-object v1, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;-><init>(Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;)V

    iput-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    .line 317
    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    iget-object v0, v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mNinePatch:Landroid/graphics/NinePatch;

    iput-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatch:Landroid/graphics/NinePatch;

    .line 318
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mMutated:Z

    .line 320
    :cond_1c
    return-object p0
.end method

.method public setAlpha(I)V
    .registers 3
    .parameter "alpha"

    .prologue
    .line 195
    invoke-virtual {p0}, Landroid/graphics/drawable/NinePatchDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 196
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3
    .parameter "cf"

    .prologue
    .line 200
    invoke-virtual {p0}, Landroid/graphics/drawable/NinePatchDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 201
    return-void
.end method

.method public setDither(Z)V
    .registers 3
    .parameter "dither"

    .prologue
    .line 205
    invoke-virtual {p0}, Landroid/graphics/drawable/NinePatchDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 206
    return-void
.end method

.method public setTargetDensity(I)V
    .registers 3
    .parameter "density"

    .prologue
    .line 146
    if-nez p1, :cond_e

    const/16 v0, 0xa0

    :goto_4
    iput v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mTargetDensity:I

    .line 147
    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatch:Landroid/graphics/NinePatch;

    if-eqz v0, :cond_d

    .line 148
    invoke-direct {p0}, Landroid/graphics/drawable/NinePatchDrawable;->computeBitmapSize()V

    .line 150
    :cond_d
    return-void

    :cond_e
    move v0, p1

    .line 146
    goto :goto_4
.end method

.method public setTargetDensity(Landroid/graphics/Canvas;)V
    .registers 3
    .parameter "canvas"

    .prologue
    .line 119
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getDensity()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/NinePatchDrawable;->setTargetDensity(I)V

    .line 120
    return-void
.end method

.method public setTargetDensity(Landroid/util/DisplayMetrics;)V
    .registers 3
    .parameter "metrics"

    .prologue
    .line 131
    iget v0, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mTargetDensity:I

    .line 132
    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatch:Landroid/graphics/NinePatch;

    if-eqz v0, :cond_b

    .line 133
    invoke-direct {p0}, Landroid/graphics/drawable/NinePatchDrawable;->computeBitmapSize()V

    .line 135
    :cond_b
    return-void
.end method
