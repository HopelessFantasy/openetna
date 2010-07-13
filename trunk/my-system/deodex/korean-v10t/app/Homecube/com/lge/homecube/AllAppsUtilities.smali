.class final Lcom/lge/homecube/AllAppsUtilities;
.super Ljava/lang/Object;
.source "AllAppsUtilities.java"


# static fields
.field private static mLauncher:Lcom/lge/homecube/Launcher;

.field private static final sBounds:Landroid/graphics/Rect;

.field private static sCanvas:Landroid/graphics/Canvas;

.field private static sIconHeight:I

.field private static sIconWidth:I

.field private static final sOldBounds:Landroid/graphics/Rect;

.field private static final sPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v0, -0x1

    .line 40
    sput v0, Lcom/lge/homecube/AllAppsUtilities;->sIconWidth:I

    .line 41
    sput v0, Lcom/lge/homecube/AllAppsUtilities;->sIconHeight:I

    .line 43
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/lge/homecube/AllAppsUtilities;->sPaint:Landroid/graphics/Paint;

    .line 44
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/lge/homecube/AllAppsUtilities;->sBounds:Landroid/graphics/Rect;

    .line 45
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/lge/homecube/AllAppsUtilities;->sOldBounds:Landroid/graphics/Rect;

    .line 46
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    sput-object v0, Lcom/lge/homecube/AllAppsUtilities;->sCanvas:Landroid/graphics/Canvas;

    .line 48
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/homecube/AllAppsUtilities;->mLauncher:Lcom/lge/homecube/Launcher;

    .line 51
    sget-object v0, Lcom/lge/homecube/AllAppsUtilities;->sCanvas:Landroid/graphics/Canvas;

    new-instance v1, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v2, 0x4

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 53
    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static centerToFit(Landroid/graphics/Bitmap;IILandroid/content/Context;)Landroid/graphics/Bitmap;
    .registers 13
    .parameter "bitmap"
    .parameter "width"
    .parameter "height"
    .parameter "context"

    .prologue
    const/high16 v8, 0x4000

    .line 56
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 57
    .local v1, bitmapWidth:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 59
    .local v0, bitmapHeight:I
    if-lt v1, p1, :cond_e

    if-ge v0, p2, :cond_39

    .line 60
    :cond_e
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v6, 0x7f06

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 62
    .local v4, color:I
    if-ge v1, p1, :cond_3a

    move v5, p1

    :goto_1b
    if-ge v0, p2, :cond_3c

    move v6, p2

    :goto_1e
    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 64
    .local v3, centered:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 65
    .local v2, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v2, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 66
    sub-int v5, p1, v1

    int-to-float v5, v5

    div-float/2addr v5, v8

    sub-int v6, p2, v0

    int-to-float v6, v6

    div-float/2addr v6, v8

    const/4 v7, 0x0

    invoke-virtual {v2, p0, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 69
    move-object p0, v3

    .line 72
    .end local v2           #canvas:Landroid/graphics/Canvas;
    .end local v3           #centered:Landroid/graphics/Bitmap;
    .end local v4           #color:I
    :cond_39
    return-object p0

    .restart local v4       #color:I
    :cond_3a
    move v5, v1

    .line 62
    goto :goto_1b

    :cond_3c
    move v6, v0

    goto :goto_1e
.end method

.method static createBitmapThumbnail(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .registers 16
    .parameter "bitmap"
    .parameter "context"

    .prologue
    const/4 v13, 0x0

    .line 236
    sget v10, Lcom/lge/homecube/AllAppsUtilities;->sIconWidth:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_15

    .line 237
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 238
    .local v7, resources:Landroid/content/res/Resources;
    const/high16 v10, 0x105

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v10, v10

    sput v10, Lcom/lge/homecube/AllAppsUtilities;->sIconHeight:I

    sput v10, Lcom/lge/homecube/AllAppsUtilities;->sIconWidth:I

    .line 242
    .end local v7           #resources:Landroid/content/res/Resources;
    :cond_15
    sget v9, Lcom/lge/homecube/AllAppsUtilities;->sIconWidth:I

    .line 243
    .local v9, width:I
    sget v4, Lcom/lge/homecube/AllAppsUtilities;->sIconHeight:I

    .line 245
    .local v4, height:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 246
    .local v1, bitmapWidth:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 248
    .local v0, bitmapHeight:I
    if-lez v9, :cond_7c

    if-lez v4, :cond_7c

    if-lt v9, v1, :cond_29

    if-ge v4, v0, :cond_7c

    .line 249
    :cond_29
    int-to-float v10, v1

    int-to-float v11, v0

    div-float v6, v10, v11

    .line 251
    .local v6, ratio:F
    if-le v1, v0, :cond_72

    .line 252
    int-to-float v10, v9

    div-float/2addr v10, v6

    float-to-int v4, v10

    .line 257
    :cond_32
    :goto_32
    sget v10, Lcom/lge/homecube/AllAppsUtilities;->sIconWidth:I

    if-ne v9, v10, :cond_78

    sget v10, Lcom/lge/homecube/AllAppsUtilities;->sIconHeight:I

    if-ne v4, v10, :cond_78

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v10

    move-object v2, v10

    .line 259
    .local v2, c:Landroid/graphics/Bitmap$Config;
    :goto_3f
    sget v10, Lcom/lge/homecube/AllAppsUtilities;->sIconWidth:I

    sget v11, Lcom/lge/homecube/AllAppsUtilities;->sIconHeight:I

    invoke-static {v10, v11, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 260
    .local v8, thumb:Landroid/graphics/Bitmap;
    sget-object v3, Lcom/lge/homecube/AllAppsUtilities;->sCanvas:Landroid/graphics/Canvas;

    .line 261
    .local v3, canvas:Landroid/graphics/Canvas;
    sget-object v5, Lcom/lge/homecube/AllAppsUtilities;->sPaint:Landroid/graphics/Paint;

    .line 262
    .local v5, paint:Landroid/graphics/Paint;
    invoke-virtual {v3, v8}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 263
    invoke-virtual {v5, v13}, Landroid/graphics/Paint;->setDither(Z)V

    .line 264
    const/4 v10, 0x1

    invoke-virtual {v5, v10}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 265
    sget-object v10, Lcom/lge/homecube/AllAppsUtilities;->sBounds:Landroid/graphics/Rect;

    sget v11, Lcom/lge/homecube/AllAppsUtilities;->sIconWidth:I

    sub-int/2addr v11, v9

    div-int/lit8 v11, v11, 0x2

    sget v12, Lcom/lge/homecube/AllAppsUtilities;->sIconHeight:I

    sub-int/2addr v12, v4

    div-int/lit8 v12, v12, 0x2

    invoke-virtual {v10, v11, v12, v9, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 266
    sget-object v10, Lcom/lge/homecube/AllAppsUtilities;->sOldBounds:Landroid/graphics/Rect;

    invoke-virtual {v10, v13, v13, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 267
    sget-object v10, Lcom/lge/homecube/AllAppsUtilities;->sOldBounds:Landroid/graphics/Rect;

    sget-object v11, Lcom/lge/homecube/AllAppsUtilities;->sBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, p0, v10, v11, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    move-object v10, v8

    .line 271
    .end local v2           #c:Landroid/graphics/Bitmap$Config;
    .end local v3           #canvas:Landroid/graphics/Canvas;
    .end local v5           #paint:Landroid/graphics/Paint;
    .end local v6           #ratio:F
    .end local v8           #thumb:Landroid/graphics/Bitmap;
    :goto_71
    return-object v10

    .line 253
    .restart local v6       #ratio:F
    :cond_72
    if-le v0, v1, :cond_32

    .line 254
    int-to-float v10, v4

    mul-float/2addr v10, v6

    float-to-int v9, v10

    goto :goto_32

    .line 257
    :cond_78
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object v2, v10

    goto :goto_3f

    .end local v6           #ratio:F
    :cond_7c
    move-object v10, p0

    .line 271
    goto :goto_71
.end method

.method static createIconThumbnail(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .registers 10
    .parameter "icon"
    .parameter "context"

    .prologue
    .line 104
    sget v1, Lcom/lge/homecube/AllAppsUtilities;->sIconWidth:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_f

    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 106
    .local p1, resources:Landroid/content/res/Resources;
    const/16 p1, 0x36

    sput p1, Lcom/lge/homecube/AllAppsUtilities;->sIconHeight:I

    .end local p1           #resources:Landroid/content/res/Resources;
    sput p1, Lcom/lge/homecube/AllAppsUtilities;->sIconWidth:I

    .line 110
    :cond_f
    sget v3, Lcom/lge/homecube/AllAppsUtilities;->sIconWidth:I

    .line 111
    .local v3, width:I
    sget v1, Lcom/lge/homecube/AllAppsUtilities;->sIconHeight:I

    .line 164
    .local v1, height:I
    const/16 p1, 0x36

    .line 165
    .local p1, iconWidth:I
    const/16 p1, 0x36

    .line 167
    .local p1, iconHeight:I
    if-lez v3, :cond_6a

    if-lez v1, :cond_6a

    .line 169
    const/16 p1, 0x36

    if-lt v3, p1, :cond_2b

    .end local p1           #iconHeight:I
    const/16 p1, 0x36

    if-lt v1, p1, :cond_2b

    const/16 p1, 0x36

    if-eq v3, p1, :cond_2b

    const/16 p1, 0x36

    if-ne v1, p1, :cond_7c

    .line 170
    :cond_2b
    const/high16 p1, 0x3f80

    .line 178
    .local p1, ratio:F
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result p1

    .end local p1           #ratio:F
    const/4 v2, -0x1

    if-eq p1, v2, :cond_79

    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 180
    .local p1, c:Landroid/graphics/Bitmap$Config;
    :goto_36
    sget v2, Lcom/lge/homecube/AllAppsUtilities;->sIconWidth:I

    sget v4, Lcom/lge/homecube/AllAppsUtilities;->sIconHeight:I

    invoke-static {v2, v4, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 181
    .local v2, thumb:Landroid/graphics/Bitmap;
    sget-object p1, Lcom/lge/homecube/AllAppsUtilities;->sCanvas:Landroid/graphics/Canvas;

    .line 182
    .local p1, canvas:Landroid/graphics/Canvas;
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 188
    sget-object v4, Lcom/lge/homecube/AllAppsUtilities;->sOldBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 189
    sget v4, Lcom/lge/homecube/AllAppsUtilities;->sIconWidth:I

    sub-int/2addr v4, v3

    div-int/lit8 v4, v4, 0x2

    .line 190
    .local v4, x:I
    sget v5, Lcom/lge/homecube/AllAppsUtilities;->sIconHeight:I

    sub-int/2addr v5, v1

    div-int/lit8 v5, v5, 0x2

    .line 191
    .local v5, y:I
    add-int v6, v4, v3

    add-int v7, v5, v1

    invoke-virtual {p0, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 192
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 193
    sget-object p1, Lcom/lge/homecube/AllAppsUtilities;->sOldBounds:Landroid/graphics/Rect;

    .end local p1           #canvas:Landroid/graphics/Canvas;
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 194
    new-instance p0, Lcom/lge/homecube/FastBitmapDrawable;

    .end local p0
    invoke-direct {p0, v2}, Lcom/lge/homecube/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 211
    .end local v2           #thumb:Landroid/graphics/Bitmap;
    .end local v4           #x:I
    .end local v5           #y:I
    .restart local p0
    :cond_6a
    :goto_6a
    instance-of p1, p0, Landroid/graphics/drawable/PaintDrawable;

    if-eqz p1, :cond_78

    .line 212
    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/PaintDrawable;

    move-object p1, v0

    .line 213
    .local p1, painter:Landroid/graphics/drawable/PaintDrawable;
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicWidth(I)V

    .line 214
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicHeight(I)V

    .line 219
    .end local p1           #painter:Landroid/graphics/drawable/PaintDrawable;
    :cond_78
    return-object p0

    .line 178
    :cond_79
    sget-object p1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_36

    .line 195
    :cond_7c
    const/16 p1, 0x36

    if-ge p1, v3, :cond_6a

    const/16 p1, 0x36

    if-ge p1, v1, :cond_6a

    .line 196
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 197
    .local p1, c:Landroid/graphics/Bitmap$Config;
    sget v2, Lcom/lge/homecube/AllAppsUtilities;->sIconWidth:I

    sget v4, Lcom/lge/homecube/AllAppsUtilities;->sIconHeight:I

    invoke-static {v2, v4, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 198
    .restart local v2       #thumb:Landroid/graphics/Bitmap;
    sget-object p1, Lcom/lge/homecube/AllAppsUtilities;->sCanvas:Landroid/graphics/Canvas;

    .line 199
    .local p1, canvas:Landroid/graphics/Canvas;
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 200
    sget-object v4, Lcom/lge/homecube/AllAppsUtilities;->sOldBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 201
    const/16 v4, 0x36

    sub-int v4, v3, v4

    div-int/lit8 v4, v4, 0x2

    .line 202
    .restart local v4       #x:I
    const/16 v5, 0x36

    sub-int v5, v1, v5

    div-int/lit8 v5, v5, 0x2

    .line 203
    .restart local v5       #y:I
    add-int/lit8 v6, v4, 0x36

    add-int/lit8 v7, v5, 0x36

    invoke-virtual {p0, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 204
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 205
    sget-object p1, Lcom/lge/homecube/AllAppsUtilities;->sOldBounds:Landroid/graphics/Rect;

    .end local p1           #canvas:Landroid/graphics/Canvas;
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 206
    new-instance p0, Lcom/lge/homecube/FastBitmapDrawable;

    .end local p0
    invoke-direct {p0, v2}, Lcom/lge/homecube/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .restart local p0
    goto :goto_6a
.end method


# virtual methods
.method setLauncher(Lcom/lge/homecube/Launcher;)V
    .registers 2
    .parameter "launcher"

    .prologue
    .line 275
    sput-object p1, Lcom/lge/homecube/AllAppsUtilities;->mLauncher:Lcom/lge/homecube/Launcher;

    .line 276
    return-void
.end method
