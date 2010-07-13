.class final Lcom/lge/homecube/Utilities;
.super Ljava/lang/Object;
.source "Utilities.java"


# static fields
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

    .line 34
    sput v0, Lcom/lge/homecube/Utilities;->sIconWidth:I

    .line 35
    sput v0, Lcom/lge/homecube/Utilities;->sIconHeight:I

    .line 37
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/lge/homecube/Utilities;->sPaint:Landroid/graphics/Paint;

    .line 38
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/lge/homecube/Utilities;->sBounds:Landroid/graphics/Rect;

    .line 39
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/lge/homecube/Utilities;->sOldBounds:Landroid/graphics/Rect;

    .line 40
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    sput-object v0, Lcom/lge/homecube/Utilities;->sCanvas:Landroid/graphics/Canvas;

    .line 43
    sget-object v0, Lcom/lge/homecube/Utilities;->sCanvas:Landroid/graphics/Canvas;

    new-instance v1, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v2, 0x4

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 45
    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 33
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

    .line 48
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 49
    .local v1, bitmapWidth:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 51
    .local v0, bitmapHeight:I
    if-lt v1, p1, :cond_e

    if-ge v0, p2, :cond_39

    .line 52
    :cond_e
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v6, 0x7f06

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 54
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

    .line 56
    .local v3, centered:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 57
    .local v2, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v2, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 58
    sub-int v5, p1, v1

    int-to-float v5, v5

    div-float/2addr v5, v8

    sub-int v6, p2, v0

    int-to-float v6, v6

    div-float/2addr v6, v8

    const/4 v7, 0x0

    invoke-virtual {v2, p0, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 61
    move-object p0, v3

    .line 64
    .end local v2           #canvas:Landroid/graphics/Canvas;
    .end local v3           #centered:Landroid/graphics/Bitmap;
    .end local v4           #color:I
    :cond_39
    return-object p0

    .restart local v4       #color:I
    :cond_3a
    move v5, v1

    .line 54
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

    .line 158
    sget v10, Lcom/lge/homecube/Utilities;->sIconWidth:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_15

    .line 159
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 160
    .local v7, resources:Landroid/content/res/Resources;
    const/high16 v10, 0x105

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v10, v10

    sput v10, Lcom/lge/homecube/Utilities;->sIconHeight:I

    sput v10, Lcom/lge/homecube/Utilities;->sIconWidth:I

    .line 164
    .end local v7           #resources:Landroid/content/res/Resources;
    :cond_15
    sget v9, Lcom/lge/homecube/Utilities;->sIconWidth:I

    .line 165
    .local v9, width:I
    sget v4, Lcom/lge/homecube/Utilities;->sIconHeight:I

    .line 167
    .local v4, height:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 168
    .local v1, bitmapWidth:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 170
    .local v0, bitmapHeight:I
    if-lez v9, :cond_7c

    if-lez v4, :cond_7c

    if-lt v9, v1, :cond_29

    if-ge v4, v0, :cond_7c

    .line 171
    :cond_29
    int-to-float v10, v1

    int-to-float v11, v0

    div-float v6, v10, v11

    .line 173
    .local v6, ratio:F
    if-le v1, v0, :cond_72

    .line 174
    int-to-float v10, v9

    div-float/2addr v10, v6

    float-to-int v4, v10

    .line 179
    :cond_32
    :goto_32
    sget v10, Lcom/lge/homecube/Utilities;->sIconWidth:I

    if-ne v9, v10, :cond_78

    sget v10, Lcom/lge/homecube/Utilities;->sIconHeight:I

    if-ne v4, v10, :cond_78

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v10

    move-object v2, v10

    .line 181
    .local v2, c:Landroid/graphics/Bitmap$Config;
    :goto_3f
    sget v10, Lcom/lge/homecube/Utilities;->sIconWidth:I

    sget v11, Lcom/lge/homecube/Utilities;->sIconHeight:I

    invoke-static {v10, v11, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 182
    .local v8, thumb:Landroid/graphics/Bitmap;
    sget-object v3, Lcom/lge/homecube/Utilities;->sCanvas:Landroid/graphics/Canvas;

    .line 183
    .local v3, canvas:Landroid/graphics/Canvas;
    sget-object v5, Lcom/lge/homecube/Utilities;->sPaint:Landroid/graphics/Paint;

    .line 184
    .local v5, paint:Landroid/graphics/Paint;
    invoke-virtual {v3, v8}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 185
    invoke-virtual {v5, v13}, Landroid/graphics/Paint;->setDither(Z)V

    .line 186
    const/4 v10, 0x1

    invoke-virtual {v5, v10}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 187
    sget-object v10, Lcom/lge/homecube/Utilities;->sBounds:Landroid/graphics/Rect;

    sget v11, Lcom/lge/homecube/Utilities;->sIconWidth:I

    sub-int/2addr v11, v9

    div-int/lit8 v11, v11, 0x2

    sget v12, Lcom/lge/homecube/Utilities;->sIconHeight:I

    sub-int/2addr v12, v4

    div-int/lit8 v12, v12, 0x2

    invoke-virtual {v10, v11, v12, v9, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 188
    sget-object v10, Lcom/lge/homecube/Utilities;->sOldBounds:Landroid/graphics/Rect;

    invoke-virtual {v10, v13, v13, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 189
    sget-object v10, Lcom/lge/homecube/Utilities;->sOldBounds:Landroid/graphics/Rect;

    sget-object v11, Lcom/lge/homecube/Utilities;->sBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, p0, v10, v11, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    move-object v10, v8

    .line 193
    .end local v2           #c:Landroid/graphics/Bitmap$Config;
    .end local v3           #canvas:Landroid/graphics/Canvas;
    .end local v5           #paint:Landroid/graphics/Paint;
    .end local v6           #ratio:F
    .end local v8           #thumb:Landroid/graphics/Bitmap;
    :goto_71
    return-object v10

    .line 175
    .restart local v6       #ratio:F
    :cond_72
    if-le v0, v1, :cond_32

    .line 176
    int-to-float v10, v4

    mul-float/2addr v10, v6

    float-to-int v9, v10

    goto :goto_32

    .line 179
    :cond_78
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object v2, v10

    goto :goto_3f

    .end local v6           #ratio:F
    :cond_7c
    move-object v10, p0

    .line 193
    goto :goto_71
.end method

.method static createIconThumbnail(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .registers 10
    .parameter "icon"
    .parameter "context"

    .prologue
    .line 81
    sget v1, Lcom/lge/homecube/Utilities;->sIconWidth:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_14

    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 83
    .local p1, resources:Landroid/content/res/Resources;
    const/high16 v1, 0x105

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    .end local p1           #resources:Landroid/content/res/Resources;
    float-to-int p1, p1

    sput p1, Lcom/lge/homecube/Utilities;->sIconHeight:I

    sput p1, Lcom/lge/homecube/Utilities;->sIconWidth:I

    .line 87
    :cond_14
    sget v5, Lcom/lge/homecube/Utilities;->sIconWidth:I

    .line 88
    .local v5, width:I
    sget v1, Lcom/lge/homecube/Utilities;->sIconHeight:I

    .line 90
    .local v1, height:I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 91
    .local v3, iconWidth:I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 93
    .local v2, iconHeight:I
    instance-of p1, p0, Landroid/graphics/drawable/PaintDrawable;

    if-eqz p1, :cond_2e

    .line 94
    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/PaintDrawable;

    move-object p1, v0

    .line 95
    .local p1, painter:Landroid/graphics/drawable/PaintDrawable;
    invoke-virtual {p1, v5}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicWidth(I)V

    .line 96
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicHeight(I)V

    .line 99
    .end local p1           #painter:Landroid/graphics/drawable/PaintDrawable;
    :cond_2e
    if-lez v5, :cond_c4

    if-lez v1, :cond_c4

    .line 100
    if-lt v5, v3, :cond_36

    if-ge v1, v2, :cond_8b

    .line 101
    :cond_36
    int-to-float p1, v3

    int-to-float v4, v2

    div-float/2addr p1, v4

    .line 103
    .local p1, ratio:F
    if-le v3, v2, :cond_81

    .line 104
    int-to-float v1, v5

    div-float p1, v1, p1

    float-to-int p1, p1

    .end local v1           #height:I
    .local p1, height:I
    move v1, p1

    .end local p1           #height:I
    .restart local v1       #height:I
    move v3, v5

    .line 109
    .end local v2           #iconHeight:I
    .end local v5           #width:I
    .local v3, width:I
    :goto_41
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result p1

    const/4 v2, -0x1

    if-eq p1, v2, :cond_88

    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 111
    .local p1, c:Landroid/graphics/Bitmap$Config;
    :goto_4a
    sget v2, Lcom/lge/homecube/Utilities;->sIconWidth:I

    sget v4, Lcom/lge/homecube/Utilities;->sIconHeight:I

    invoke-static {v2, v4, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 112
    .local v2, thumb:Landroid/graphics/Bitmap;
    sget-object p1, Lcom/lge/homecube/Utilities;->sCanvas:Landroid/graphics/Canvas;

    .line 113
    .local p1, canvas:Landroid/graphics/Canvas;
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 119
    sget-object v4, Lcom/lge/homecube/Utilities;->sOldBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 120
    sget v4, Lcom/lge/homecube/Utilities;->sIconWidth:I

    sub-int/2addr v4, v3

    div-int/lit8 v4, v4, 0x2

    .line 121
    .local v4, x:I
    sget v5, Lcom/lge/homecube/Utilities;->sIconHeight:I

    sub-int/2addr v5, v1

    div-int/lit8 v5, v5, 0x2

    .line 122
    .local v5, y:I
    add-int v6, v4, v3

    add-int v7, v5, v1

    invoke-virtual {p0, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 123
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 124
    sget-object p1, Lcom/lge/homecube/Utilities;->sOldBounds:Landroid/graphics/Rect;

    .end local p1           #canvas:Landroid/graphics/Canvas;
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 125
    new-instance p0, Lcom/lge/homecube/FastBitmapDrawable;

    .end local p0
    invoke-direct {p0, v2}, Lcom/lge/homecube/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .restart local p0
    move p1, v1

    .end local v1           #height:I
    .local p1, height:I
    move v1, v3

    .line 141
    .end local v2           #thumb:Landroid/graphics/Bitmap;
    .end local v3           #width:I
    .end local v4           #x:I
    .end local v5           #y:I
    .local v1, width:I
    :goto_80
    return-object p0

    .line 105
    .local v1, height:I
    .local v2, iconHeight:I
    .local v3, iconWidth:I
    .local v5, width:I
    .local p1, ratio:F
    :cond_81
    if-le v2, v3, :cond_c7

    .line 106
    int-to-float v2, v1

    mul-float/2addr p1, v2

    float-to-int p1, p1

    .end local v5           #width:I
    .local p1, width:I
    move v3, p1

    .end local p1           #width:I
    .local v3, width:I
    goto :goto_41

    .line 109
    .end local v2           #iconHeight:I
    :cond_88
    sget-object p1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_4a

    .line 126
    .restart local v2       #iconHeight:I
    .local v3, iconWidth:I
    .restart local v5       #width:I
    :cond_8b
    if-ge v3, v5, :cond_c4

    if-ge v2, v1, :cond_c4

    .line 127
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 128
    .local p1, c:Landroid/graphics/Bitmap$Config;
    sget v4, Lcom/lge/homecube/Utilities;->sIconWidth:I

    sget v6, Lcom/lge/homecube/Utilities;->sIconHeight:I

    invoke-static {v4, v6, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 129
    .local v4, thumb:Landroid/graphics/Bitmap;
    sget-object p1, Lcom/lge/homecube/Utilities;->sCanvas:Landroid/graphics/Canvas;

    .line 130
    .local p1, canvas:Landroid/graphics/Canvas;
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 131
    sget-object v6, Lcom/lge/homecube/Utilities;->sOldBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 132
    sub-int v6, v5, v3

    div-int/lit8 v6, v6, 0x2

    .line 133
    .local v6, x:I
    sub-int v7, v1, v2

    div-int/lit8 v7, v7, 0x2

    .line 134
    .local v7, y:I
    add-int/2addr v3, v6

    add-int/2addr v2, v7

    invoke-virtual {p0, v6, v7, v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 135
    .end local v2           #iconHeight:I
    .end local v3           #iconWidth:I
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 136
    sget-object p1, Lcom/lge/homecube/Utilities;->sOldBounds:Landroid/graphics/Rect;

    .end local p1           #canvas:Landroid/graphics/Canvas;
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 137
    new-instance p0, Lcom/lge/homecube/FastBitmapDrawable;

    .end local p0
    invoke-direct {p0, v4}, Lcom/lge/homecube/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .restart local p0
    move p1, v1

    .end local v1           #height:I
    .local p1, height:I
    move v1, v5

    .end local v5           #width:I
    .local v1, width:I
    goto :goto_80

    .end local v4           #thumb:Landroid/graphics/Bitmap;
    .end local v6           #x:I
    .end local v7           #y:I
    .end local p1           #height:I
    .local v1, height:I
    .restart local v2       #iconHeight:I
    .restart local v3       #iconWidth:I
    .restart local v5       #width:I
    :cond_c4
    move p1, v1

    .end local v1           #height:I
    .restart local p1       #height:I
    move v1, v5

    .end local v5           #width:I
    .local v1, width:I
    goto :goto_80

    .local v1, height:I
    .restart local v5       #width:I
    .local p1, ratio:F
    :cond_c7
    move v3, v5

    .end local v5           #width:I
    .local v3, width:I
    goto/16 :goto_41
.end method
