.class public Lcom/android/mms/ui/SlideshowPresenter;
.super Lcom/android/mms/ui/Presenter;
.source "SlideshowPresenter.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "SlideshowPresenter"


# instance fields
.field protected final mHandler:Landroid/os/Handler;

.field protected mHeightTransformRatio:F

.field protected mLocation:I

.field protected final mSlideNumber:I

.field private final mViewSizeChangedListener:Lcom/android/mms/ui/AdaptableSlideViewInterface$OnSizeChangedListener;

.field protected mWidthTransformRatio:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/mms/ui/ViewInterface;Lcom/android/mms/model/Model;)V
    .registers 5
    .parameter "context"
    .parameter "view"
    .parameter "model"

    .prologue
    .line 72
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/Presenter;-><init>(Landroid/content/Context;Lcom/android/mms/ui/ViewInterface;Lcom/android/mms/model/Model;)V

    .line 69
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mHandler:Landroid/os/Handler;

    .line 82
    new-instance v0, Lcom/android/mms/ui/SlideshowPresenter$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideshowPresenter$1;-><init>(Lcom/android/mms/ui/SlideshowPresenter;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mViewSizeChangedListener:Lcom/android/mms/ui/AdaptableSlideViewInterface$OnSizeChangedListener;

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLocation:I

    .line 74
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mModel:Lcom/android/mms/model/Model;

    check-cast v0, Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mSlideNumber:I

    .line 76
    instance-of v0, p2, Lcom/android/mms/ui/AdaptableSlideViewInterface;

    if-eqz v0, :cond_29

    .line 77
    check-cast p2, Lcom/android/mms/ui/AdaptableSlideViewInterface;

    .end local p2
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mViewSizeChangedListener:Lcom/android/mms/ui/AdaptableSlideViewInterface$OnSizeChangedListener;

    invoke-interface {p2, v0}, Lcom/android/mms/ui/AdaptableSlideViewInterface;->setOnSizeChangedListener(Lcom/android/mms/ui/AdaptableSlideViewInterface$OnSizeChangedListener;)V

    .line 80
    :cond_29
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/SlideshowPresenter;II)F
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/SlideshowPresenter;->getWidthTransformRatio(II)F

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/SlideshowPresenter;II)F
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/SlideshowPresenter;->getHeightTransformRatio(II)F

    move-result v0

    return v0
.end method

.method private getHeightTransformRatio(II)F
    .registers 5
    .parameter "height"
    .parameter "layoutHeight"

    .prologue
    .line 104
    if-lez p1, :cond_6

    .line 105
    int-to-float v0, p2

    int-to-float v1, p1

    div-float/2addr v0, v1

    .line 107
    :goto_5
    return v0

    :cond_6
    const/high16 v0, 0x3f80

    goto :goto_5
.end method

.method private getWidthTransformRatio(II)F
    .registers 5
    .parameter "width"
    .parameter "layoutWidth"

    .prologue
    .line 97
    if-lez p1, :cond_6

    .line 98
    int-to-float v0, p2

    int-to-float v1, p1

    div-float/2addr v0, v1

    .line 100
    :goto_5
    return v0

    :cond_6
    const/high16 v0, 0x3f80

    goto :goto_5
.end method

.method private transformHeight(I)I
    .registers 4
    .parameter "height"

    .prologue
    .line 115
    int-to-float v0, p1

    iget v1, p0, Lcom/android/mms/ui/SlideshowPresenter;->mHeightTransformRatio:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private transformWidth(I)I
    .registers 4
    .parameter "width"

    .prologue
    .line 111
    int-to-float v0, p1

    iget v1, p0, Lcom/android/mms/ui/SlideshowPresenter;->mWidthTransformRatio:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method


# virtual methods
.method public getLocation()I
    .registers 2

    .prologue
    .line 298
    iget v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLocation:I

    return v0
.end method

.method public goBackward()V
    .registers 3

    .prologue
    .line 302
    iget v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLocation:I

    if-lez v0, :cond_a

    .line 303
    iget v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLocation:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLocation:I

    .line 305
    :cond_a
    return-void
.end method

.method public goForward()V
    .registers 4

    .prologue
    .line 308
    iget v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLocation:I

    iget v1, p0, Lcom/android/mms/ui/SlideshowPresenter;->mSlideNumber:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_e

    .line 309
    iget v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLocation:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLocation:I

    .line 311
    :cond_e
    return-void
.end method

.method public onModelChanged(Lcom/android/mms/model/Model;Z)V
    .registers 7
    .parameter "model"
    .parameter "dataChanged"

    .prologue
    .line 314
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowPresenter;->mView:Lcom/android/mms/ui/ViewInterface;

    check-cast v1, Lcom/android/mms/ui/SlideViewInterface;

    .line 317
    .local v1, view:Lcom/android/mms/ui/SlideViewInterface;
    instance-of v2, p1, Lcom/android/mms/model/SlideshowModel;

    if-eqz v2, :cond_9

    .line 364
    :cond_8
    :goto_8
    return-void

    .line 319
    :cond_9
    instance-of v2, p1, Lcom/android/mms/model/SlideModel;

    if-eqz v2, :cond_2d

    .line 320
    move-object v0, p1

    check-cast v0, Lcom/android/mms/model/SlideModel;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 321
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowPresenter;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/mms/ui/SlideshowPresenter$2;

    invoke-direct {v3, p0, v1, p1}, Lcom/android/mms/ui/SlideshowPresenter$2;-><init>(Lcom/android/mms/ui/SlideshowPresenter;Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/Model;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_8

    .line 327
    :cond_22
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowPresenter;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/mms/ui/SlideshowPresenter$3;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/SlideshowPresenter$3;-><init>(Lcom/android/mms/ui/SlideshowPresenter;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_8

    .line 333
    :cond_2d
    instance-of v2, p1, Lcom/android/mms/model/MediaModel;

    if-eqz v2, :cond_55

    .line 334
    instance-of v2, p1, Lcom/android/mms/model/RegionMediaModel;

    if-eqz v2, :cond_40

    .line 335
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowPresenter;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/mms/ui/SlideshowPresenter$4;

    invoke-direct {v3, p0, v1, p1, p2}, Lcom/android/mms/ui/SlideshowPresenter$4;-><init>(Lcom/android/mms/ui/SlideshowPresenter;Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/Model;Z)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_8

    .line 347
    :cond_40
    move-object v0, p1

    check-cast v0, Lcom/android/mms/model/MediaModel;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/mms/model/MediaModel;->isAudio()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 348
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowPresenter;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/mms/ui/SlideshowPresenter$5;

    invoke-direct {v3, p0, v1, p1, p2}, Lcom/android/mms/ui/SlideshowPresenter$5;-><init>(Lcom/android/mms/ui/SlideshowPresenter;Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/Model;Z)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_8

    .line 361
    :cond_55
    instance-of v2, p1, Lcom/android/mms/model/RegionModel;

    if-eqz v2, :cond_8

    goto :goto_8
.end method

.method public present()V
    .registers 4

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mModel:Lcom/android/mms/model/Model;

    check-cast v0, Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v0

    iget v1, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLocation:I

    if-gt v0, v1, :cond_d

    .line 126
    :goto_c
    return-void

    .line 125
    :cond_d
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mView:Lcom/android/mms/ui/ViewInterface;

    check-cast v0, Lcom/android/mms/ui/SlideViewInterface;

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowPresenter;->mModel:Lcom/android/mms/model/Model;

    check-cast v1, Lcom/android/mms/model/SlideshowModel;

    iget v2, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLocation:I

    invoke-virtual {v1, v2}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/SlideshowPresenter;->presentSlide(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/SlideModel;)V

    goto :goto_c
.end method

.method protected presentAudio(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/AudioModel;Z)V
    .registers 8
    .parameter "view"
    .parameter "audio"
    .parameter "dataChanged"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/lge/lgdrm/DrmException;
        }
    .end annotation

    .prologue
    .line 171
    if-eqz p3, :cond_16

    .line 172
    invoke-virtual {p2}, Lcom/android/mms/model/AudioModel;->getDrmContent()Landroid/lge/lgdrm/DrmContent;

    move-result-object v1

    if-eqz v1, :cond_32

    .line 174
    invoke-virtual {p2}, Lcom/android/mms/model/AudioModel;->getDrmContent()Landroid/lge/lgdrm/DrmContent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/lge/lgdrm/DrmContent;->getDrmContentType()I

    move-result v1

    if-eqz v1, :cond_22

    .line 175
    const/4 v1, 0x0

    invoke-interface {p1, p2, v1}, Lcom/android/mms/ui/SlideViewInterface;->setDrmAudio(Lcom/android/mms/model/AudioModel;I)V

    .line 183
    :cond_16
    :goto_16
    invoke-virtual {p2}, Lcom/android/mms/model/AudioModel;->getCurrentAction()Lcom/android/mms/model/MediaModel$MediaAction;

    move-result-object v0

    .line 184
    .local v0, action:Lcom/android/mms/model/MediaModel$MediaAction;
    sget-object v1, Lcom/android/mms/model/MediaModel$MediaAction;->START:Lcom/android/mms/model/MediaModel$MediaAction;

    if-ne v0, v1, :cond_42

    .line 185
    invoke-interface {p1}, Lcom/android/mms/ui/SlideViewInterface;->startAudio()V

    .line 193
    :cond_21
    :goto_21
    return-void

    .line 177
    .end local v0           #action:Lcom/android/mms/model/MediaModel$MediaAction;
    :cond_22
    invoke-virtual {p2}, Lcom/android/mms/model/AudioModel;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/mms/model/AudioModel;->getSrc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/mms/model/AudioModel;->getExtras()Ljava/util/Map;

    move-result-object v3

    invoke-interface {p1, p2, v1, v2, v3}, Lcom/android/mms/ui/SlideViewInterface;->setAudio(Lcom/android/mms/model/AudioModel;Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_16

    .line 180
    :cond_32
    invoke-virtual {p2}, Lcom/android/mms/model/AudioModel;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/mms/model/AudioModel;->getSrc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/mms/model/AudioModel;->getExtras()Ljava/util/Map;

    move-result-object v3

    invoke-interface {p1, p2, v1, v2, v3}, Lcom/android/mms/ui/SlideViewInterface;->setAudio(Lcom/android/mms/model/AudioModel;Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_16

    .line 186
    .restart local v0       #action:Lcom/android/mms/model/MediaModel$MediaAction;
    :cond_42
    sget-object v1, Lcom/android/mms/model/MediaModel$MediaAction;->PAUSE:Lcom/android/mms/model/MediaModel$MediaAction;

    if-ne v0, v1, :cond_4a

    .line 187
    invoke-interface {p1}, Lcom/android/mms/ui/SlideViewInterface;->pauseAudio()V

    goto :goto_21

    .line 188
    :cond_4a
    sget-object v1, Lcom/android/mms/model/MediaModel$MediaAction;->STOP:Lcom/android/mms/model/MediaModel$MediaAction;

    if-ne v0, v1, :cond_52

    .line 189
    invoke-interface {p1}, Lcom/android/mms/ui/SlideViewInterface;->stopAudio()V

    goto :goto_21

    .line 190
    :cond_52
    sget-object v1, Lcom/android/mms/model/MediaModel$MediaAction;->SEEK:Lcom/android/mms/model/MediaModel$MediaAction;

    if-ne v0, v1, :cond_21

    .line 191
    invoke-virtual {p2}, Lcom/android/mms/model/AudioModel;->getSeekTo()I

    move-result v1

    invoke-interface {p1, v1}, Lcom/android/mms/ui/SlideViewInterface;->seekAudio(I)V

    goto :goto_21
.end method

.method protected presentImage(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/ImageModel;Lcom/android/mms/model/RegionModel;Z)V
    .registers 11
    .parameter "view"
    .parameter "image"
    .parameter "r"
    .parameter "dataChanged"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/lge/lgdrm/DrmException;
        }
    .end annotation

    .prologue
    .line 237
    if-eqz p4, :cond_e

    .line 238
    invoke-virtual {p2}, Lcom/android/mms/model/ImageModel;->getSrc()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Lcom/android/mms/model/ImageModel;->getBitmapWithDrmCheck(Z)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-interface {p1, p2, v1, v2}, Lcom/android/mms/ui/SlideViewInterface;->setImage(Lcom/android/mms/model/ImageModel;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 241
    :cond_e
    instance-of v1, p1, Lcom/android/mms/ui/AdaptableSlideViewInterface;

    if-eqz v1, :cond_39

    .line 242
    move-object v0, p1

    check-cast v0, Lcom/android/mms/ui/AdaptableSlideViewInterface;

    move-object v1, v0

    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getLeft()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/mms/ui/SlideshowPresenter;->transformWidth(I)I

    move-result v2

    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getTop()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/mms/ui/SlideshowPresenter;->transformHeight(I)I

    move-result v3

    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getWidth()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/mms/ui/SlideshowPresenter;->transformWidth(I)I

    move-result v4

    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getHeight()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/mms/ui/SlideshowPresenter;->transformHeight(I)I

    move-result v5

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/android/mms/ui/AdaptableSlideViewInterface;->setImageRegion(IIII)V

    .line 248
    :cond_39
    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getFit()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/android/mms/ui/SlideViewInterface;->setImageRegionFit(Ljava/lang/String;)V

    .line 249
    invoke-virtual {p2}, Lcom/android/mms/model/ImageModel;->isVisible()Z

    move-result v1

    invoke-interface {p1, v1}, Lcom/android/mms/ui/SlideViewInterface;->setImageVisibility(Z)V

    .line 250
    return-void
.end method

.method protected presentRegionMedia(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/RegionMediaModel;Z)V
    .registers 6
    .parameter "view"
    .parameter "rMedia"
    .parameter "dataChanged"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/lge/lgdrm/DrmException;
        }
    .end annotation

    .prologue
    .line 158
    invoke-virtual {p2}, Lcom/android/mms/model/RegionMediaModel;->getRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v0

    .line 159
    .local v0, r:Lcom/android/mms/model/RegionModel;
    invoke-virtual {p2}, Lcom/android/mms/model/RegionMediaModel;->isText()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 160
    check-cast p2, Lcom/android/mms/model/TextModel;

    .end local p2
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/mms/ui/SlideshowPresenter;->presentText(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/TextModel;Lcom/android/mms/model/RegionModel;Z)V

    .line 166
    :cond_f
    :goto_f
    return-void

    .line 161
    .restart local p2
    :cond_10
    invoke-virtual {p2}, Lcom/android/mms/model/RegionMediaModel;->isImage()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 162
    check-cast p2, Lcom/android/mms/model/ImageModel;

    .end local p2
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/mms/ui/SlideshowPresenter;->presentImage(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/ImageModel;Lcom/android/mms/model/RegionModel;Z)V

    goto :goto_f

    .line 163
    .restart local p2
    :cond_1c
    invoke-virtual {p2}, Lcom/android/mms/model/RegionMediaModel;->isVideo()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 164
    check-cast p2, Lcom/android/mms/model/VideoModel;

    .end local p2
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/mms/ui/SlideshowPresenter;->presentVideo(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/VideoModel;Lcom/android/mms/model/RegionModel;Z)V

    goto :goto_f
.end method

.method protected presentSlide(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/SlideModel;)V
    .registers 9
    .parameter "view"
    .parameter "model"

    .prologue
    .line 133
    invoke-interface {p1}, Lcom/android/mms/ui/SlideViewInterface;->reset()V

    .line 136
    :try_start_3
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_7
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/model/MediaModel;

    .line 137
    .local v2, media:Lcom/android/mms/model/MediaModel;
    instance-of v3, v2, Lcom/android/mms/model/RegionMediaModel;

    if-eqz v3, :cond_3d

    .line 138
    check-cast v2, Lcom/android/mms/model/RegionMediaModel;

    .end local v2           #media:Lcom/android/mms/model/MediaModel;
    const/4 v3, 0x1

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/mms/ui/SlideshowPresenter;->presentRegionMedia(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/RegionMediaModel;Z)V
    :try_end_1d
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_3 .. :try_end_1d} :catch_1e

    goto :goto_7

    .line 143
    .end local v1           #i$:Ljava/util/Iterator;
    :catch_1e
    move-exception v3

    move-object v0, v3

    .line 144
    .local v0, e:Landroid/lge/lgdrm/DrmException;
    const-string v3, "SlideshowPresenter"

    invoke-virtual {v0}, Landroid/lge/lgdrm/DrmException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 145
    iget-object v3, p0, Lcom/android/mms/ui/SlideshowPresenter;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/mms/ui/SlideshowPresenter;->mContext:Landroid/content/Context;

    const v5, 0x7f070025

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 149
    .end local v0           #e:Landroid/lge/lgdrm/DrmException;
    :cond_3c
    return-void

    .line 139
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #media:Lcom/android/mms/model/MediaModel;
    :cond_3d
    :try_start_3d
    invoke-virtual {v2}, Lcom/android/mms/model/MediaModel;->isAudio()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 140
    check-cast v2, Lcom/android/mms/model/AudioModel;

    .end local v2           #media:Lcom/android/mms/model/MediaModel;
    const/4 v3, 0x1

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/mms/ui/SlideshowPresenter;->presentAudio(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/AudioModel;Z)V
    :try_end_49
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_3d .. :try_end_49} :catch_1e

    goto :goto_7
.end method

.method protected presentText(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/TextModel;Lcom/android/mms/model/RegionModel;Z)V
    .registers 15
    .parameter "view"
    .parameter "text"
    .parameter "r"
    .parameter "dataChanged"

    .prologue
    .line 200
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getOperatorCode()Ljava/lang/String;

    move-result-object v2

    .line 201
    .local v2, operatorCode:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v3

    .line 203
    .local v3, strBody:Ljava/lang/String;
    const-string v5, "KTF"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_42

    .line 205
    invoke-virtual {p2}, Lcom/android/mms/model/TextModel;->getCharset()I

    move-result v1

    .line 206
    .local v1, bodyChSet:I
    const-string v5, "SlideshowPresenter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Slide Charset: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const/4 v5, 0x4

    if-ne v1, v5, :cond_42

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_42

    .line 209
    new-instance v4, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-static {v3}, Lcom/google/android/mms/pdu/PduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>([B)V

    .line 210
    .local v4, v:Lcom/google/android/mms/pdu/EncodedStringValue;
    invoke-virtual {v4}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v3

    .line 215
    .end local v1           #bodyChSet:I
    .end local v4           #v:Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_42
    if-eqz p4, :cond_4b

    .line 216
    invoke-virtual {p2}, Lcom/android/mms/model/TextModel;->getSrc()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5, v3}, Lcom/android/mms/ui/SlideViewInterface;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    :cond_4b
    instance-of v5, p1, Lcom/android/mms/ui/AdaptableSlideViewInterface;

    if-eqz v5, :cond_76

    .line 220
    move-object v0, p1

    check-cast v0, Lcom/android/mms/ui/AdaptableSlideViewInterface;

    move-object v5, v0

    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getLeft()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/mms/ui/SlideshowPresenter;->transformWidth(I)I

    move-result v6

    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getTop()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/mms/ui/SlideshowPresenter;->transformHeight(I)I

    move-result v7

    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getWidth()I

    move-result v8

    invoke-direct {p0, v8}, Lcom/android/mms/ui/SlideshowPresenter;->transformWidth(I)I

    move-result v8

    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getHeight()I

    move-result v9

    invoke-direct {p0, v9}, Lcom/android/mms/ui/SlideshowPresenter;->transformHeight(I)I

    move-result v9

    invoke-interface {v5, v6, v7, v8, v9}, Lcom/android/mms/ui/AdaptableSlideViewInterface;->setTextRegion(IIII)V

    .line 226
    :cond_76
    invoke-virtual {p2}, Lcom/android/mms/model/TextModel;->isVisible()Z

    move-result v5

    invoke-interface {p1, v5}, Lcom/android/mms/ui/SlideViewInterface;->setTextVisibility(Z)V

    .line 227
    return-void
.end method

.method protected presentVideo(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/VideoModel;Lcom/android/mms/model/RegionModel;Z)V
    .registers 12
    .parameter "view"
    .parameter "video"
    .parameter "r"
    .parameter "dataChanged"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/lge/lgdrm/DrmException;
        }
    .end annotation

    .prologue
    .line 260
    if-eqz p4, :cond_16

    .line 261
    invoke-virtual {p2}, Lcom/android/mms/model/VideoModel;->getDrmContent()Landroid/lge/lgdrm/DrmContent;

    move-result-object v2

    if-eqz v2, :cond_60

    .line 263
    invoke-virtual {p2}, Lcom/android/mms/model/VideoModel;->getDrmContent()Landroid/lge/lgdrm/DrmContent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/lge/lgdrm/DrmContent;->getDrmContentType()I

    move-result v2

    if-eqz v2, :cond_54

    .line 264
    const/4 v2, 0x0

    invoke-interface {p1, p2, v2}, Lcom/android/mms/ui/SlideViewInterface;->setDrmVideo(Lcom/android/mms/model/VideoModel;I)V

    .line 272
    :cond_16
    :goto_16
    instance-of v2, p1, Lcom/android/mms/ui/AdaptableSlideViewInterface;

    if-eqz v2, :cond_41

    .line 273
    move-object v0, p1

    check-cast v0, Lcom/android/mms/ui/AdaptableSlideViewInterface;

    move-object v2, v0

    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getLeft()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/mms/ui/SlideshowPresenter;->transformWidth(I)I

    move-result v3

    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getTop()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/mms/ui/SlideshowPresenter;->transformHeight(I)I

    move-result v4

    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getWidth()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/mms/ui/SlideshowPresenter;->transformWidth(I)I

    move-result v5

    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getHeight()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/mms/ui/SlideshowPresenter;->transformHeight(I)I

    move-result v6

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/android/mms/ui/AdaptableSlideViewInterface;->setVideoRegion(IIII)V

    .line 279
    :cond_41
    invoke-virtual {p2}, Lcom/android/mms/model/VideoModel;->isVisible()Z

    move-result v2

    invoke-interface {p1, v2}, Lcom/android/mms/ui/SlideViewInterface;->setVideoVisibility(Z)V

    .line 281
    invoke-virtual {p2}, Lcom/android/mms/model/VideoModel;->getCurrentAction()Lcom/android/mms/model/MediaModel$MediaAction;

    move-result-object v1

    .line 282
    .local v1, action:Lcom/android/mms/model/MediaModel$MediaAction;
    sget-object v2, Lcom/android/mms/model/MediaModel$MediaAction;->START:Lcom/android/mms/model/MediaModel$MediaAction;

    if-ne v1, v2, :cond_6c

    .line 283
    invoke-interface {p1}, Lcom/android/mms/ui/SlideViewInterface;->startVideo()V

    .line 291
    :cond_53
    :goto_53
    return-void

    .line 266
    .end local v1           #action:Lcom/android/mms/model/MediaModel$MediaAction;
    :cond_54
    invoke-virtual {p2}, Lcom/android/mms/model/VideoModel;->getSrc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/mms/model/VideoModel;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-interface {p1, p2, v2, v3}, Lcom/android/mms/ui/SlideViewInterface;->setVideo(Lcom/android/mms/model/VideoModel;Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_16

    .line 269
    :cond_60
    invoke-virtual {p2}, Lcom/android/mms/model/VideoModel;->getSrc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/mms/model/VideoModel;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-interface {p1, p2, v2, v3}, Lcom/android/mms/ui/SlideViewInterface;->setVideo(Lcom/android/mms/model/VideoModel;Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_16

    .line 284
    .restart local v1       #action:Lcom/android/mms/model/MediaModel$MediaAction;
    :cond_6c
    sget-object v2, Lcom/android/mms/model/MediaModel$MediaAction;->PAUSE:Lcom/android/mms/model/MediaModel$MediaAction;

    if-ne v1, v2, :cond_74

    .line 285
    invoke-interface {p1}, Lcom/android/mms/ui/SlideViewInterface;->pauseVideo()V

    goto :goto_53

    .line 286
    :cond_74
    sget-object v2, Lcom/android/mms/model/MediaModel$MediaAction;->STOP:Lcom/android/mms/model/MediaModel$MediaAction;

    if-ne v1, v2, :cond_7c

    .line 287
    invoke-interface {p1}, Lcom/android/mms/ui/SlideViewInterface;->stopVideo()V

    goto :goto_53

    .line 288
    :cond_7c
    sget-object v2, Lcom/android/mms/model/MediaModel$MediaAction;->SEEK:Lcom/android/mms/model/MediaModel$MediaAction;

    if-ne v1, v2, :cond_53

    .line 289
    invoke-virtual {p2}, Lcom/android/mms/model/VideoModel;->getSeekTo()I

    move-result v2

    invoke-interface {p1, v2}, Lcom/android/mms/ui/SlideViewInterface;->seekVideo(I)V

    goto :goto_53
.end method

.method public setLocation(I)V
    .registers 2
    .parameter "location"

    .prologue
    .line 294
    iput p1, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLocation:I

    .line 295
    return-void
.end method
