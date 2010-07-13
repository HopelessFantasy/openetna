.class public final Lcom/lge/render/FCImageFactory;
.super Ljava/lang/Object;
.source "FCImageFactory.java"


# static fields
.field private static mUniqueInstance:Lcom/lge/render/FCImageFactory;


# instance fields
.field private BACKGROUND_IMAGE:Landroid/graphics/Bitmap;

.field private BOTTOM_LANDSHADE_IMAGE:Landroid/graphics/Bitmap;

.field private BOTTOM_PORTSHADE_IMAGE:Landroid/graphics/Bitmap;

.field private BTN_SET_FAVORITE_N:Landroid/graphics/Bitmap;

.field private BTN_SET_FAVORITE_P:Landroid/graphics/Bitmap;

.field private CHANGER_ORDER_OVERLAY:Landroid/graphics/Bitmap;

.field private FRAME_IAMGE:Landroid/graphics/Bitmap;

.field private LOADING_IAMGE:[Landroid/graphics/Bitmap;

.field private Loading_Index:I

.field private NAME_BACKGROUND:Landroid/graphics/Bitmap;

.field private NORMAL_X_BTN:Landroid/graphics/Bitmap;

.field private NO_PHOTI_IMAGE_SHADOW:[Landroid/graphics/Bitmap;

.field private NO_PHOTO_IMAGE:Landroid/graphics/Bitmap;

.field private NO_PHOTO_IMAGE_ORI:Landroid/graphics/Bitmap;

.field private POPUP_BG:Landroid/graphics/Bitmap;

.field private POPUP_FRAME_IAMGE:Landroid/graphics/Bitmap;

.field private PRESS_X_BTN:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 13
    new-instance v0, Lcom/lge/render/FCImageFactory;

    invoke-direct {v0}, Lcom/lge/render/FCImageFactory;-><init>()V

    sput-object v0, Lcom/lge/render/FCImageFactory;->mUniqueInstance:Lcom/lge/render/FCImageFactory;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method public static final createLoadingImg()V
    .registers 2

    .prologue
    .line 128
    sget-object v0, Lcom/lge/render/FCImageFactory;->mUniqueInstance:Lcom/lge/render/FCImageFactory;

    iget v1, v0, Lcom/lge/render/FCImageFactory;->Loading_Index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/lge/render/FCImageFactory;->Loading_Index:I

    .line 129
    sget-object v0, Lcom/lge/render/FCImageFactory;->mUniqueInstance:Lcom/lge/render/FCImageFactory;

    iget v0, v0, Lcom/lge/render/FCImageFactory;->Loading_Index:I

    const/16 v1, 0x24

    if-lt v0, v1, :cond_15

    .line 130
    sget-object v0, Lcom/lge/render/FCImageFactory;->mUniqueInstance:Lcom/lge/render/FCImageFactory;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lge/render/FCImageFactory;->Loading_Index:I

    .line 131
    :cond_15
    return-void
.end method

.method public static final getBackgroundImg()Landroid/graphics/Bitmap;
    .registers 1

    .prologue
    .line 159
    sget-object v0, Lcom/lge/render/FCImageFactory;->mUniqueInstance:Lcom/lge/render/FCImageFactory;

    iget-object v0, v0, Lcom/lge/render/FCImageFactory;->BACKGROUND_IMAGE:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public static final getBottomLandShadeImg()Landroid/graphics/Bitmap;
    .registers 1

    .prologue
    .line 175
    sget-object v0, Lcom/lge/render/FCImageFactory;->mUniqueInstance:Lcom/lge/render/FCImageFactory;

    iget-object v0, v0, Lcom/lge/render/FCImageFactory;->BOTTOM_LANDSHADE_IMAGE:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public static final getBottomPortShadeImg()Landroid/graphics/Bitmap;
    .registers 1

    .prologue
    .line 171
    sget-object v0, Lcom/lge/render/FCImageFactory;->mUniqueInstance:Lcom/lge/render/FCImageFactory;

    iget-object v0, v0, Lcom/lge/render/FCImageFactory;->BOTTOM_PORTSHADE_IMAGE:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public static final getColorOverlay()Landroid/graphics/Bitmap;
    .registers 1

    .prologue
    .line 191
    sget-object v0, Lcom/lge/render/FCImageFactory;->mUniqueInstance:Lcom/lge/render/FCImageFactory;

    iget-object v0, v0, Lcom/lge/render/FCImageFactory;->CHANGER_ORDER_OVERLAY:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public static final getFrameImg()Landroid/graphics/Bitmap;
    .registers 1

    .prologue
    .line 147
    sget-object v0, Lcom/lge/render/FCImageFactory;->mUniqueInstance:Lcom/lge/render/FCImageFactory;

    iget-object v0, v0, Lcom/lge/render/FCImageFactory;->FRAME_IAMGE:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public static final getLoadingImg()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 124
    sget-object v0, Lcom/lge/render/FCImageFactory;->mUniqueInstance:Lcom/lge/render/FCImageFactory;

    iget-object v0, v0, Lcom/lge/render/FCImageFactory;->LOADING_IAMGE:[Landroid/graphics/Bitmap;

    sget-object v1, Lcom/lge/render/FCImageFactory;->mUniqueInstance:Lcom/lge/render/FCImageFactory;

    iget v1, v1, Lcom/lge/render/FCImageFactory;->Loading_Index:I

    div-int/lit8 v1, v1, 0x3

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static final getNameBackImg()Landroid/graphics/Bitmap;
    .registers 1

    .prologue
    .line 155
    sget-object v0, Lcom/lge/render/FCImageFactory;->mUniqueInstance:Lcom/lge/render/FCImageFactory;

    iget-object v0, v0, Lcom/lge/render/FCImageFactory;->NAME_BACKGROUND:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public static final getNoPhotoImgOri()Landroid/graphics/Bitmap;
    .registers 1

    .prologue
    .line 143
    sget-object v0, Lcom/lge/render/FCImageFactory;->mUniqueInstance:Lcom/lge/render/FCImageFactory;

    iget-object v0, v0, Lcom/lge/render/FCImageFactory;->NO_PHOTO_IMAGE_ORI:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public static final getNoPhotoShadow()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 139
    sget-object v0, Lcom/lge/render/FCImageFactory;->mUniqueInstance:Lcom/lge/render/FCImageFactory;

    iget-object v0, v0, Lcom/lge/render/FCImageFactory;->NO_PHOTI_IMAGE_SHADOW:[Landroid/graphics/Bitmap;

    sget-object v1, Lcom/lge/render/FCImageFactory;->mUniqueInstance:Lcom/lge/render/FCImageFactory;

    iget v1, v1, Lcom/lge/render/FCImageFactory;->Loading_Index:I

    div-int/lit8 v1, v1, 0x3

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static final getNormalXBtnImg()Landroid/graphics/Bitmap;
    .registers 1

    .prologue
    .line 163
    sget-object v0, Lcom/lge/render/FCImageFactory;->mUniqueInstance:Lcom/lge/render/FCImageFactory;

    iget-object v0, v0, Lcom/lge/render/FCImageFactory;->NORMAL_X_BTN:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public static final getPopupBG()Landroid/graphics/Bitmap;
    .registers 1

    .prologue
    .line 179
    sget-object v0, Lcom/lge/render/FCImageFactory;->mUniqueInstance:Lcom/lge/render/FCImageFactory;

    iget-object v0, v0, Lcom/lge/render/FCImageFactory;->POPUP_BG:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public static final getPopupFrameImg()Landroid/graphics/Bitmap;
    .registers 1

    .prologue
    .line 151
    sget-object v0, Lcom/lge/render/FCImageFactory;->mUniqueInstance:Lcom/lge/render/FCImageFactory;

    iget-object v0, v0, Lcom/lge/render/FCImageFactory;->POPUP_FRAME_IAMGE:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public static final getPressXBtnImg()Landroid/graphics/Bitmap;
    .registers 1

    .prologue
    .line 167
    sget-object v0, Lcom/lge/render/FCImageFactory;->mUniqueInstance:Lcom/lge/render/FCImageFactory;

    iget-object v0, v0, Lcom/lge/render/FCImageFactory;->PRESS_X_BTN:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public static final getSetFavoriteN()Landroid/graphics/Bitmap;
    .registers 1

    .prologue
    .line 183
    sget-object v0, Lcom/lge/render/FCImageFactory;->mUniqueInstance:Lcom/lge/render/FCImageFactory;

    iget-object v0, v0, Lcom/lge/render/FCImageFactory;->BTN_SET_FAVORITE_N:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public static final getSetFavoriteP()Landroid/graphics/Bitmap;
    .registers 1

    .prologue
    .line 187
    sget-object v0, Lcom/lge/render/FCImageFactory;->mUniqueInstance:Lcom/lge/render/FCImageFactory;

    iget-object v0, v0, Lcom/lge/render/FCImageFactory;->BTN_SET_FAVORITE_P:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public static final setImage(Landroid/content/Context;)V
    .registers 12
    .parameter "context"

    .prologue
    .line 45
    sget-object v0, Lcom/lge/render/FCImageFactory;->mUniqueInstance:Lcom/lge/render/FCImageFactory;

    iget-object v0, v0, Lcom/lge/render/FCImageFactory;->NO_PHOTO_IMAGE:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_7

    .line 120
    .end local p0
    :goto_6
    return-void

    .line 48
    .restart local p0
    :cond_7
    sget-object v0, Lcom/lge/render/FCImageFactory;->mUniqueInstance:Lcom/lge/render/FCImageFactory;

    const/16 v1, 0xc

    new-array v1, v1, [Landroid/graphics/Bitmap;

    iput-object v1, v0, Lcom/lge/render/FCImageFactory;->LOADING_IAMGE:[Landroid/graphics/Bitmap;

    .line 49
    const-string v3, "drawable"

    .line 50
    .local v3, type:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, pack:Ljava/lang/String;
    sget-object v0, Lcom/lge/render/FCImageFactory;->mUniqueInstance:Lcom/lge/render/FCImageFactory;

    const/4 v2, 0x0

    iput v2, v0, Lcom/lge/render/FCImageFactory;->Loading_Index:I

    .line 52
    const/4 v0, 0x1

    .local v0, i:I
    :goto_1b
    const/16 v2, 0xc

    if-gt v0, v2, :cond_50

    .line 53
    const-string v2, "common_icon_loading_"

    .line 54
    .local v2, resName:Ljava/lang/String;
    const-string v4, "%s%d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v2, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .end local v2           #resName:Ljava/lang/String;
    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 55
    .restart local v2       #resName:Ljava/lang/String;
    sget-object v4, Lcom/lge/render/FCImageFactory;->mUniqueInstance:Lcom/lge/render/FCImageFactory;

    iget-object v4, v4, Lcom/lge/render/FCImageFactory;->LOADING_IAMGE:[Landroid/graphics/Bitmap;

    const/4 v5, 0x1

    sub-int v5, v0, v5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .end local v2           #resName:Ljava/lang/String;
    invoke-static {v6, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v4, v5

    .line 52
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 60
    :cond_50
    sget-object v0, Lcom/lge/render/FCImageFactory;->mUniqueInstance:Lcom/lge/render/FCImageFactory;

    .end local v0           #i:I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .end local v1           #pack:Ljava/lang/String;
    const v2, 0x7f020011

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/lge/render/FCImageFactory;->NO_PHOTO_IMAGE:Landroid/graphics/Bitmap;

    .line 64
    sget-object v0, Lcom/lge/render/FCImageFactory;->mUniqueInstance:Lcom/lge/render/FCImageFactory;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020010

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/lge/render/FCImageFactory;->FRAME_IAMGE:Landroid/graphics/Bitmap;

    .line 67
    sget-object v0, Lcom/lge/render/FCImageFactory;->mUniqueInstance:Lcom/lge/render/FCImageFactory;

    const/16 v1, 0xc

    new-array v1, v1, [Landroid/graphics/Bitmap;

    iput-object v1, v0, Lcom/lge/render/FCImageFactory;->NO_PHOTI_IMAGE_SHADOW:[Landroid/graphics/Bitmap;

    .line 68
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 69
    .local v5, matrix:Landroid/graphics/Matrix;
    const/high16 v0, 0x3f80

    const/high16 v1, -0x4080

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 70
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 71
    .local v9, src:Landroid/graphics/Rect;
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 72
    .local v7, dst:Landroid/graphics/Rect;
    const/4 v0, 0x0

    const/4 v1, 0x0

    sget-object v2, Lcom/lge/render/FCImageFactory;->mUniqueInstance:Lcom/lge/render/FCImageFactory;

    iget-object v2, v2, Lcom/lge/render/FCImageFactory;->LOADING_IAMGE:[Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    .end local v3           #type:Ljava/lang/String;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sget-object v3, Lcom/lge/render/FCImageFactory;->mUniqueInstance:Lcom/lge/render/FCImageFactory;

    iget-object v3, v3, Lcom/lge/render/FCImageFactory;->LOADING_IAMGE:[Landroid/graphics/Bitmap;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 74
    const/16 v0, 0x9

    const/16 v1, 0x9

    sget-object v2, Lcom/lge/render/FCImageFactory;->mUniqueInstance:Lcom/lge/render/FCImageFactory;

    iget-object v2, v2, Lcom/lge/render/FCImageFactory;->FRAME_IAMGE:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    const/16 v3, 0x9

    sub-int/2addr v2, v3

    sget-object v3, Lcom/lge/render/FCImageFactory;->mUniqueInstance:Lcom/lge/render/FCImageFactory;

    iget-object v3, v3, Lcom/lge/render/FCImageFactory;->FRAME_IAMGE:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    const/16 v4, 0x9

    sub-int/2addr v3, v4

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 76
    const/4 v0, 0x0

    .restart local v0       #i:I
    move v8, v0

    .end local v0           #i:I
    .local v8, i:I
    :goto_c6
    const/16 v0, 0xc

    if-ge v8, v0, :cond_100

    .line 77
    sget-object v0, Lcom/lge/render/FCImageFactory;->mUniqueInstance:Lcom/lge/render/FCImageFactory;

    iget-object v0, v0, Lcom/lge/render/FCImageFactory;->FRAME_IAMGE:Landroid/graphics/Bitmap;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 79
    .local v0, b:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 80
    .local v1, c:Landroid/graphics/Canvas;
    sget-object v2, Lcom/lge/render/FCImageFactory;->mUniqueInstance:Lcom/lge/render/FCImageFactory;

    iget-object v2, v2, Lcom/lge/render/FCImageFactory;->LOADING_IAMGE:[Landroid/graphics/Bitmap;

    aget-object v2, v2, v8

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v9, v7, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 81
    sget-object v1, Lcom/lge/render/FCImageFactory;->mUniqueInstance:Lcom/lge/render/FCImageFactory;

    .end local v1           #c:Landroid/graphics/Canvas;
    iget-object v10, v1, Lcom/lge/render/FCImageFactory;->NO_PHOTI_IMAGE_SHADOW:[Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    aput-object v1, v10, v8

    .line 83
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 76
    add-int/lit8 v0, v8, 0x1

    .end local v8           #i:I
    .local v0, i:I
    move v8, v0

    .end local v0           #i:I
    .restart local v8       #i:I
    goto :goto_c6

    .line 86
    :cond_100
    sget-object v0, Lcom/lge/render/FCImageFactory;->mUniqueInstance:Lcom/lge/render/FCImageFactory;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02001e

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/lge/render/FCImageFactory;->NO_PHOTO_IMAGE_ORI:Landroid/graphics/Bitmap;

    .line 89
    sget-object v0, Lcom/lge/render/FCImageFactory;->mUniqueInstance:Lcom/lge/render/FCImageFactory;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020040

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/lge/render/FCImageFactory;->POPUP_FRAME_IAMGE:Landroid/graphics/Bitmap;

    .line 92
    sget-object v0, Lcom/lge/render/FCImageFactory;->mUniqueInstance:Lcom/lge/render/FCImageFactory;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020029

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/lge/render/FCImageFactory;->NAME_BACKGROUND:Landroid/graphics/Bitmap;

    .line 96
    sget-object v0, Lcom/lge/render/FCImageFactory;->mUniqueInstance:Lcom/lge/render/FCImageFactory;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020022

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/lge/render/FCImageFactory;->BACKGROUND_IMAGE:Landroid/graphics/Bitmap;

    .line 99
    sget-object v0, Lcom/lge/render/FCImageFactory;->mUniqueInstance:Lcom/lge/render/FCImageFactory;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020025

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/lge/render/FCImageFactory;->NORMAL_X_BTN:Landroid/graphics/Bitmap;

    .line 101
    sget-object v0, Lcom/lge/render/FCImageFactory;->mUniqueInstance:Lcom/lge/render/FCImageFactory;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020026

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/lge/render/FCImageFactory;->PRESS_X_BTN:Landroid/graphics/Bitmap;

    .line 104
    sget-object v0, Lcom/lge/render/FCImageFactory;->mUniqueInstance:Lcom/lge/render/FCImageFactory;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020041

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/lge/render/FCImageFactory;->BOTTOM_PORTSHADE_IMAGE:Landroid/graphics/Bitmap;

    .line 106
    sget-object v0, Lcom/lge/render/FCImageFactory;->mUniqueInstance:Lcom/lge/render/FCImageFactory;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02001d

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/lge/render/FCImageFactory;->BOTTOM_LANDSHADE_IMAGE:Landroid/graphics/Bitmap;

    .line 109
    sget-object v0, Lcom/lge/render/FCImageFactory;->mUniqueInstance:Lcom/lge/render/FCImageFactory;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020024

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/lge/render/FCImageFactory;->BTN_SET_FAVORITE_P:Landroid/graphics/Bitmap;

    .line 112
    sget-object v0, Lcom/lge/render/FCImageFactory;->mUniqueInstance:Lcom/lge/render/FCImageFactory;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020023

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/lge/render/FCImageFactory;->BTN_SET_FAVORITE_N:Landroid/graphics/Bitmap;

    .line 115
    sget-object v0, Lcom/lge/render/FCImageFactory;->mUniqueInstance:Lcom/lge/render/FCImageFactory;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020030

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/lge/render/FCImageFactory;->POPUP_BG:Landroid/graphics/Bitmap;

    .line 118
    sget-object v0, Lcom/lge/render/FCImageFactory;->mUniqueInstance:Lcom/lge/render/FCImageFactory;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .end local p0
    const v1, 0x7f020003

    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p0

    iput-object p0, v0, Lcom/lge/render/FCImageFactory;->CHANGER_ORDER_OVERLAY:Landroid/graphics/Bitmap;

    goto/16 :goto_6
.end method
