.class public Landroid/app/LauncherActivity$IconResizer;
.super Ljava/lang/Object;
.source "LauncherActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/LauncherActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IconResizer"
.end annotation


# instance fields
.field private mCanvas:Landroid/graphics/Canvas;

.field private mIconHeight:I

.field private mIconWidth:I

.field private final mOldBounds:Landroid/graphics/Rect;

.field final synthetic this$0:Landroid/app/LauncherActivity;


# direct methods
.method public constructor <init>(Landroid/app/LauncherActivity;)V
    .registers 7
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 240
    iput-object p1, p0, Landroid/app/LauncherActivity$IconResizer;->this$0:Landroid/app/LauncherActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    iput v1, p0, Landroid/app/LauncherActivity$IconResizer;->mIconWidth:I

    .line 235
    iput v1, p0, Landroid/app/LauncherActivity$IconResizer;->mIconHeight:I

    .line 237
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/app/LauncherActivity$IconResizer;->mOldBounds:Landroid/graphics/Rect;

    .line 238
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1}, Landroid/graphics/Canvas;-><init>()V

    iput-object v1, p0, Landroid/app/LauncherActivity$IconResizer;->mCanvas:Landroid/graphics/Canvas;

    .line 241
    iget-object v1, p0, Landroid/app/LauncherActivity$IconResizer;->mCanvas:Landroid/graphics/Canvas;

    new-instance v2, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v3, 0x4

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 244
    invoke-virtual {p1}, Landroid/app/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 245
    .local v0, resources:Landroid/content/res/Resources;
    const/high16 v1, 0x105

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Landroid/app/LauncherActivity$IconResizer;->mIconHeight:I

    iput v1, p0, Landroid/app/LauncherActivity$IconResizer;->mIconWidth:I

    .line 247
    return-void
.end method


# virtual methods
.method public createIconThumbnail(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 16
    .parameter "icon"

    .prologue
    .line 262
    iget v9, p0, Landroid/app/LauncherActivity$IconResizer;->mIconWidth:I

    .line 263
    .local v9, width:I
    iget v3, p0, Landroid/app/LauncherActivity$IconResizer;->mIconHeight:I

    .line 265
    .local v3, height:I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    .line 266
    .local v5, iconWidth:I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 268
    .local v4, iconHeight:I
    instance-of v12, p1, Landroid/graphics/drawable/PaintDrawable;

    if-eqz v12, :cond_1a

    .line 269
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/PaintDrawable;

    move-object v6, v0

    .line 270
    .local v6, painter:Landroid/graphics/drawable/PaintDrawable;
    invoke-virtual {v6, v9}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicWidth(I)V

    .line 271
    invoke-virtual {v6, v3}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicHeight(I)V

    .line 274
    .end local v6           #painter:Landroid/graphics/drawable/PaintDrawable;
    :cond_1a
    if-lez v9, :cond_6f

    if-lez v3, :cond_6f

    .line 275
    if-lt v9, v5, :cond_22

    if-ge v3, v4, :cond_7a

    .line 276
    :cond_22
    int-to-float v12, v5

    int-to-float v13, v4

    div-float v7, v12, v13

    .line 278
    .local v7, ratio:F
    if-le v5, v4, :cond_70

    .line 279
    int-to-float v12, v9

    div-float/2addr v12, v7

    float-to-int v3, v12

    .line 284
    :cond_2b
    :goto_2b
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_76

    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object v1, v12

    .line 286
    .local v1, c:Landroid/graphics/Bitmap$Config;
    :goto_35
    iget v12, p0, Landroid/app/LauncherActivity$IconResizer;->mIconWidth:I

    iget v13, p0, Landroid/app/LauncherActivity$IconResizer;->mIconHeight:I

    invoke-static {v12, v13, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 287
    .local v8, thumb:Landroid/graphics/Bitmap;
    iget-object v2, p0, Landroid/app/LauncherActivity$IconResizer;->mCanvas:Landroid/graphics/Canvas;

    .line 288
    .local v2, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v2, v8}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 294
    iget-object v12, p0, Landroid/app/LauncherActivity$IconResizer;->mOldBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 295
    iget v12, p0, Landroid/app/LauncherActivity$IconResizer;->mIconWidth:I

    sub-int/2addr v12, v9

    div-int/lit8 v10, v12, 0x2

    .line 296
    .local v10, x:I
    iget v12, p0, Landroid/app/LauncherActivity$IconResizer;->mIconHeight:I

    sub-int/2addr v12, v3

    div-int/lit8 v11, v12, 0x2

    .line 297
    .local v11, y:I
    add-int v12, v10, v9

    add-int v13, v11, v3

    invoke-virtual {p1, v10, v11, v12, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 298
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 299
    iget-object v12, p0, Landroid/app/LauncherActivity$IconResizer;->mOldBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v12}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 300
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1
    iget-object v12, p0, Landroid/app/LauncherActivity$IconResizer;->this$0:Landroid/app/LauncherActivity;

    invoke-virtual {v12}, Landroid/app/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-direct {p1, v12, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 316
    .end local v1           #c:Landroid/graphics/Bitmap$Config;
    .end local v2           #canvas:Landroid/graphics/Canvas;
    .end local v7           #ratio:F
    .end local v8           #thumb:Landroid/graphics/Bitmap;
    .end local v10           #x:I
    .end local v11           #y:I
    .restart local p1
    :cond_6f
    :goto_6f
    return-object p1

    .line 280
    .restart local v7       #ratio:F
    :cond_70
    if-le v4, v5, :cond_2b

    .line 281
    int-to-float v12, v3

    mul-float/2addr v12, v7

    float-to-int v9, v12

    goto :goto_2b

    .line 284
    :cond_76
    sget-object v12, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move-object v1, v12

    goto :goto_35

    .line 301
    .end local v7           #ratio:F
    :cond_7a
    if-ge v5, v9, :cond_6f

    if-ge v4, v3, :cond_6f

    .line 302
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 303
    .restart local v1       #c:Landroid/graphics/Bitmap$Config;
    iget v12, p0, Landroid/app/LauncherActivity$IconResizer;->mIconWidth:I

    iget v13, p0, Landroid/app/LauncherActivity$IconResizer;->mIconHeight:I

    invoke-static {v12, v13, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 304
    .restart local v8       #thumb:Landroid/graphics/Bitmap;
    iget-object v2, p0, Landroid/app/LauncherActivity$IconResizer;->mCanvas:Landroid/graphics/Canvas;

    .line 305
    .restart local v2       #canvas:Landroid/graphics/Canvas;
    invoke-virtual {v2, v8}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 306
    iget-object v12, p0, Landroid/app/LauncherActivity$IconResizer;->mOldBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 307
    sub-int v12, v9, v5

    div-int/lit8 v10, v12, 0x2

    .line 308
    .restart local v10       #x:I
    sub-int v12, v3, v4

    div-int/lit8 v11, v12, 0x2

    .line 309
    .restart local v11       #y:I
    add-int v12, v10, v5

    add-int v13, v11, v4

    invoke-virtual {p1, v10, v11, v12, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 310
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 311
    iget-object v12, p0, Landroid/app/LauncherActivity$IconResizer;->mOldBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v12}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 312
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1
    iget-object v12, p0, Landroid/app/LauncherActivity$IconResizer;->this$0:Landroid/app/LauncherActivity;

    invoke-virtual {v12}, Landroid/app/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-direct {p1, v12, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .restart local p1
    goto :goto_6f
.end method
