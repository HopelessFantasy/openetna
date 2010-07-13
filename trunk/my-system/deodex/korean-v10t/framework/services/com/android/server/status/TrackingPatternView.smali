.class public Lcom/android/server/status/TrackingPatternView;
.super Landroid/view/View;
.source "TrackingPatternView.java"


# instance fields
.field private mPaint:Landroid/graphics/Paint;

.field private mTexture:Landroid/graphics/Bitmap;

.field private mTextureHeight:I

.field private mTextureWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    invoke-virtual {p0}, Lcom/android/server/status/TrackingPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080292

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/status/TrackingPatternView;->mTexture:Landroid/graphics/Bitmap;

    .line 40
    iget-object v0, p0, Lcom/android/server/status/TrackingPatternView;->mTexture:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/server/status/TrackingPatternView;->mTextureWidth:I

    .line 41
    iget-object v0, p0, Lcom/android/server/status/TrackingPatternView;->mTexture:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/server/status/TrackingPatternView;->mTextureHeight:I

    .line 43
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/server/status/TrackingPatternView;->mPaint:Landroid/graphics/Paint;

    .line 44
    iget-object v0, p0, Lcom/android/server/status/TrackingPatternView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 45
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 13
    .parameter "canvas"

    .prologue
    .line 49
    iget-object v2, p0, Lcom/android/server/status/TrackingPatternView;->mTexture:Landroid/graphics/Bitmap;

    .line 50
    .local v2, texture:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/android/server/status/TrackingPatternView;->mPaint:Landroid/graphics/Paint;

    .line 52
    .local v1, paint:Landroid/graphics/Paint;
    invoke-virtual {p0}, Lcom/android/server/status/TrackingPatternView;->getWidth()I

    move-result v5

    .line 53
    .local v5, width:I
    invoke-virtual {p0}, Lcom/android/server/status/TrackingPatternView;->getHeight()I

    move-result v0

    .line 55
    .local v0, height:I
    iget v4, p0, Lcom/android/server/status/TrackingPatternView;->mTextureWidth:I

    .line 56
    .local v4, textureWidth:I
    iget v3, p0, Lcom/android/server/status/TrackingPatternView;->mTextureHeight:I

    .line 58
    .local v3, textureHeight:I
    const-string v8, "TrackingPatternView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "width="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " textureWidth="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const/4 v6, 0x0

    .line 63
    .local v6, x:I
    :goto_33
    if-ge v6, v5, :cond_41

    .line 64
    const/4 v7, 0x0

    .line 65
    .local v7, y:I
    :goto_36
    if-ge v7, v0, :cond_3f

    .line 66
    int-to-float v8, v6

    int-to-float v9, v7

    invoke-virtual {p1, v2, v8, v9, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 67
    add-int/2addr v7, v3

    goto :goto_36

    .line 69
    :cond_3f
    add-int/2addr v6, v4

    goto :goto_33

    .line 71
    .end local v7           #y:I
    :cond_41
    return-void
.end method
