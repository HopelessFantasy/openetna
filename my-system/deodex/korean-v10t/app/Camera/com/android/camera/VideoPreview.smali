.class Lcom/android/camera/VideoPreview;
.super Landroid/view/SurfaceView;
.source "VideoPreview.java"


# static fields
.field public static DONT_CARE:F


# instance fields
.field private mAspectRatio:F

.field private mHorizontalTileSize:I

.field private mVerticalTileSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 33
    const/4 v0, 0x0

    sput v0, Lcom/android/camera/VideoPreview;->DONT_CARE:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    const/4 v0, 0x1

    .line 36
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 27
    iput v0, p0, Lcom/android/camera/VideoPreview;->mHorizontalTileSize:I

    .line 28
    iput v0, p0, Lcom/android/camera/VideoPreview;->mVerticalTileSize:I

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x1

    .line 40
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    iput v0, p0, Lcom/android/camera/VideoPreview;->mHorizontalTileSize:I

    .line 28
    iput v0, p0, Lcom/android/camera/VideoPreview;->mVerticalTileSize:I

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x1

    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    iput v0, p0, Lcom/android/camera/VideoPreview;->mHorizontalTileSize:I

    .line 28
    iput v0, p0, Lcom/android/camera/VideoPreview;->mVerticalTileSize:I

    .line 45
    return-void
.end method

.method private roundUpToTile(III)I
    .registers 6
    .parameter "dimension"
    .parameter "tileSize"
    .parameter "maxDimension"

    .prologue
    .line 97
    add-int v0, p1, p2

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    div-int/2addr v0, p2

    mul-int/2addr v0, p2

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method


# virtual methods
.method protected onMeasure(II)V
    .registers 11
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 71
    iget v5, p0, Lcom/android/camera/VideoPreview;->mAspectRatio:F

    sget v6, Lcom/android/camera/VideoPreview;->DONT_CARE:F

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_6f

    .line 72
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 73
    .local v4, widthSpecSize:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 75
    .local v2, heightSpecSize:I
    move v3, v4

    .line 76
    .local v3, width:I
    move v1, v2

    .line 78
    .local v1, height:I
    if-lez v3, :cond_6f

    if-lez v1, :cond_6f

    .line 79
    int-to-float v5, v3

    int-to-float v6, v1

    div-float v0, v5, v6

    .line 80
    .local v0, defaultRatio:F
    iget v5, p0, Lcom/android/camera/VideoPreview;->mAspectRatio:F

    cmpg-float v5, v0, v5

    if-gez v5, :cond_63

    .line 82
    int-to-float v5, v3

    iget v6, p0, Lcom/android/camera/VideoPreview;->mAspectRatio:F

    div-float/2addr v5, v6

    float-to-int v1, v5

    .line 86
    :cond_25
    :goto_25
    iget v5, p0, Lcom/android/camera/VideoPreview;->mHorizontalTileSize:I

    invoke-direct {p0, v3, v5, v4}, Lcom/android/camera/VideoPreview;->roundUpToTile(III)I

    move-result v3

    .line 87
    iget v5, p0, Lcom/android/camera/VideoPreview;->mVerticalTileSize:I

    invoke-direct {p0, v1, v5, v2}, Lcom/android/camera/VideoPreview;->roundUpToTile(III)I

    move-result v1

    .line 88
    const-string v5, "VideoPreview"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ar "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/camera/VideoPreview;->mAspectRatio:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " setting size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x78

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-virtual {p0, v3, v1}, Lcom/android/camera/VideoPreview;->setMeasuredDimension(II)V

    .line 94
    .end local v0           #defaultRatio:F
    .end local v1           #height:I
    .end local v2           #heightSpecSize:I
    .end local v3           #width:I
    .end local v4           #widthSpecSize:I
    :goto_62
    return-void

    .line 83
    .restart local v0       #defaultRatio:F
    .restart local v1       #height:I
    .restart local v2       #heightSpecSize:I
    .restart local v3       #width:I
    .restart local v4       #widthSpecSize:I
    :cond_63
    iget v5, p0, Lcom/android/camera/VideoPreview;->mAspectRatio:F

    cmpl-float v5, v0, v5

    if-lez v5, :cond_25

    .line 84
    int-to-float v5, v1

    iget v6, p0, Lcom/android/camera/VideoPreview;->mAspectRatio:F

    mul-float/2addr v5, v6

    float-to-int v3, v5

    goto :goto_25

    .line 93
    .end local v0           #defaultRatio:F
    .end local v1           #height:I
    .end local v2           #heightSpecSize:I
    .end local v3           #width:I
    .end local v4           #widthSpecSize:I
    :cond_6f
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onMeasure(II)V

    goto :goto_62
.end method

.method public setAspectRatio(F)V
    .registers 3
    .parameter "aspectRatio"

    .prologue
    .line 62
    iget v0, p0, Lcom/android/camera/VideoPreview;->mAspectRatio:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_e

    .line 63
    iput p1, p0, Lcom/android/camera/VideoPreview;->mAspectRatio:F

    .line 64
    invoke-virtual {p0}, Lcom/android/camera/VideoPreview;->requestLayout()V

    .line 65
    invoke-virtual {p0}, Lcom/android/camera/VideoPreview;->invalidate()V

    .line 67
    :cond_e
    return-void
.end method

.method public setAspectRatio(II)V
    .registers 5
    .parameter "width"
    .parameter "height"

    .prologue
    .line 58
    int-to-float v0, p1

    int-to-float v1, p2

    div-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoPreview;->setAspectRatio(F)V

    .line 59
    return-void
.end method

.method public setTileSize(II)V
    .registers 4
    .parameter "horizontalTileSize"
    .parameter "verticalTileSize"

    .prologue
    .line 48
    iget v0, p0, Lcom/android/camera/VideoPreview;->mHorizontalTileSize:I

    if-ne v0, p1, :cond_8

    iget v0, p0, Lcom/android/camera/VideoPreview;->mVerticalTileSize:I

    if-eq v0, p2, :cond_12

    .line 50
    :cond_8
    iput p1, p0, Lcom/android/camera/VideoPreview;->mHorizontalTileSize:I

    .line 51
    iput p2, p0, Lcom/android/camera/VideoPreview;->mVerticalTileSize:I

    .line 52
    invoke-virtual {p0}, Lcom/android/camera/VideoPreview;->requestLayout()V

    .line 53
    invoke-virtual {p0}, Lcom/android/camera/VideoPreview;->invalidate()V

    .line 55
    :cond_12
    return-void
.end method
