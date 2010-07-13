.class public Lcom/android/mms/ui/MmsThumbnailPresenter;
.super Lcom/android/mms/ui/Presenter;
.source "MmsThumbnailPresenter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/mms/ui/ViewInterface;Lcom/android/mms/model/Model;)V
    .registers 4
    .parameter "context"
    .parameter "view"
    .parameter "model"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/Presenter;-><init>(Landroid/content/Context;Lcom/android/mms/ui/ViewInterface;Lcom/android/mms/model/Model;)V

    .line 40
    return-void
.end method

.method private presentFirstSlide(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/SlideModel;)V
    .registers 4
    .parameter "view"
    .parameter "slide"

    .prologue
    .line 57
    invoke-interface {p1}, Lcom/android/mms/ui/SlideViewInterface;->reset()V

    .line 59
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 60
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/MmsThumbnailPresenter;->presentImageThumbnail(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/ImageModel;)V

    .line 66
    :cond_10
    :goto_10
    return-void

    .line 61
    :cond_11
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 62
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->getVideo()Lcom/android/mms/model/VideoModel;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/MmsThumbnailPresenter;->presentVideoThumbnail(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/VideoModel;)V

    goto :goto_10

    .line 63
    :cond_1f
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 64
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->getAudio()Lcom/android/mms/model/AudioModel;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/mms/ui/MmsThumbnailPresenter;->presentAudioThumbnail(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/AudioModel;)V

    goto :goto_10
.end method

.method private presentFirstSlide(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/SlideshowModel;)V
    .registers 7
    .parameter "view"
    .parameter "slideShow"

    .prologue
    .line 70
    invoke-interface {p1}, Lcom/android/mms/ui/SlideViewInterface;->reset()V

    .line 72
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    .line 73
    .local v0, slide:Lcom/android/mms/model/SlideModel;
    if-eqz v0, :cond_23

    .line 74
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 75
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/model/ImageModel;->getSrc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/model/ImageModel;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-interface {p1, p2, v1, v2}, Lcom/android/mms/ui/SlideViewInterface;->setImage(Lcom/android/mms/model/SlideshowModel;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 84
    :cond_23
    :goto_23
    return-void

    .line 76
    :cond_24
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 77
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->getVideo()Lcom/android/mms/model/VideoModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/model/VideoModel;->getSrc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->getVideo()Lcom/android/mms/model/VideoModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/model/VideoModel;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-interface {p1, p2, v1, v2}, Lcom/android/mms/ui/SlideViewInterface;->setVideo(Lcom/android/mms/model/SlideshowModel;Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_23

    .line 78
    :cond_3e
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v1

    if-eqz v1, :cond_60

    .line 79
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->getAudio()Lcom/android/mms/model/AudioModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/model/AudioModel;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->getAudio()Lcom/android/mms/model/AudioModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/model/AudioModel;->getSrc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->getAudio()Lcom/android/mms/model/AudioModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/model/AudioModel;->getExtras()Ljava/util/Map;

    move-result-object v3

    invoke-interface {p1, p2, v1, v2, v3}, Lcom/android/mms/ui/SlideViewInterface;->setAudio(Lcom/android/mms/model/SlideshowModel;Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_23

    .line 81
    :cond_60
    invoke-interface {p1, p2}, Lcom/android/mms/ui/SlideViewInterface;->setAttachSizeCounter(Lcom/android/mms/model/SlideshowModel;)V

    goto :goto_23
.end method

.method private presentImageThumbnail(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/ImageModel;)V
    .registers 8
    .parameter "view"
    .parameter "image"

    .prologue
    const-string v3, "MmsThumbnailPresenter"

    .line 106
    const-string v2, "MmsThumbnailPresenter"

    const-string v2, "presentImageThumbnail()"

    invoke-static {v3, v2}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :try_start_9
    invoke-virtual {p2}, Lcom/android/mms/model/ImageModel;->isDrmProtected()Z

    move-result v2

    if-eqz v2, :cond_58

    .line 109
    const-string v2, "MmsThumbnailPresenter"

    const-string v3, "isDrmProtected()"

    invoke-static {v2, v3}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-virtual {p2}, Lcom/android/mms/model/ImageModel;->getDrmSession()Landroid/lge/lgdrm/DrmContentSession;

    move-result-object v2

    if-eqz v2, :cond_4d

    .line 112
    invoke-virtual {p2}, Lcom/android/mms/model/ImageModel;->getDrmSession()Landroid/lge/lgdrm/DrmContentSession;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/mms/model/ImageModel;->getDrmContent()Landroid/lge/lgdrm/DrmContent;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/drm/DrmUtils;->getPermission(Landroid/lge/lgdrm/DrmContent;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/lge/lgdrm/DrmContentSession;->judgeRight(IZ)I

    move-result v1

    .line 113
    .local v1, retVal:I
    if-nez v1, :cond_3b

    .line 114
    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Lcom/android/mms/model/ImageModel;->getBitmapWithDrmCheck(Z)Landroid/graphics/Bitmap;

    move-result-object v2

    const v3, 0x7f020028

    invoke-interface {p1, p2, v2, v3}, Lcom/android/mms/ui/SlideViewInterface;->setDrmImage(Lcom/android/mms/model/ImageModel;Landroid/graphics/Bitmap;I)V

    .line 126
    .end local v1           #retVal:I
    :goto_3a
    return-void

    .line 116
    .restart local v1       #retVal:I
    :cond_3b
    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Lcom/android/mms/model/ImageModel;->getBitmapWithDrmCheck(Z)Landroid/graphics/Bitmap;

    move-result-object v2

    const v3, 0x7f020027

    invoke-interface {p1, p2, v2, v3}, Lcom/android/mms/ui/SlideViewInterface;->setDrmImage(Lcom/android/mms/model/ImageModel;Landroid/graphics/Bitmap;I)V
    :try_end_46
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_9 .. :try_end_46} :catch_47

    goto :goto_3a

    .line 123
    .end local v1           #retVal:I
    :catch_47
    move-exception v2

    move-object v0, v2

    .line 124
    .local v0, e:Landroid/lge/lgdrm/DrmException;
    invoke-virtual {v0}, Landroid/lge/lgdrm/DrmException;->printStackTrace()V

    goto :goto_3a

    .line 119
    .end local v0           #e:Landroid/lge/lgdrm/DrmException;
    :cond_4d
    :try_start_4d
    invoke-virtual {p2}, Lcom/android/mms/model/ImageModel;->getSrc()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f020029

    invoke-direct {p0, p1, v2, v3}, Lcom/android/mms/ui/MmsThumbnailPresenter;->showDrmIcon(Lcom/android/mms/ui/SlideViewInterface;Ljava/lang/String;I)V

    goto :goto_3a

    .line 121
    :cond_58
    invoke-virtual {p2}, Lcom/android/mms/model/ImageModel;->getSrc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/mms/model/ImageModel;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-interface {p1, p2, v2, v3}, Lcom/android/mms/ui/SlideViewInterface;->setImage(Lcom/android/mms/model/ImageModel;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    :try_end_63
    .catch Landroid/lge/lgdrm/DrmException; {:try_start_4d .. :try_end_63} :catch_47

    goto :goto_3a
.end method

.method private presentVideoThumbnail(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/VideoModel;)V
    .registers 7
    .parameter "view"
    .parameter "video"

    .prologue
    const-string v2, "MmsThumbnailPresenter"

    .line 87
    const-string v1, "MmsThumbnailPresenter"

    const-string v1, "presentVideoThumbnail()"

    invoke-static {v2, v1}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Lcom/android/mms/model/VideoModel;->isDrmProtected()Z

    move-result v1

    if-eqz v1, :cond_48

    .line 89
    const-string v1, "MmsThumbnailPresenter"

    const-string v1, "isDrmProtected()"

    invoke-static {v2, v1}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-virtual {p2}, Lcom/android/mms/model/VideoModel;->getDrmSession()Landroid/lge/lgdrm/DrmContentSession;

    move-result-object v1

    if-eqz v1, :cond_3d

    .line 92
    invoke-virtual {p2}, Lcom/android/mms/model/VideoModel;->getDrmSession()Landroid/lge/lgdrm/DrmContentSession;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/mms/model/VideoModel;->getDrmContent()Landroid/lge/lgdrm/DrmContent;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/drm/DrmUtils;->getPermission(Landroid/lge/lgdrm/DrmContent;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/lge/lgdrm/DrmContentSession;->judgeRight(IZ)I

    move-result v0

    .line 93
    .local v0, retVal:I
    if-nez v0, :cond_36

    .line 94
    const v1, 0x7f020028

    invoke-interface {p1, p2, v1}, Lcom/android/mms/ui/SlideViewInterface;->setDrmVideo(Lcom/android/mms/model/VideoModel;I)V

    .line 103
    .end local v0           #retVal:I
    :goto_35
    return-void

    .line 96
    .restart local v0       #retVal:I
    :cond_36
    const v1, 0x7f020027

    invoke-interface {p1, p2, v1}, Lcom/android/mms/ui/SlideViewInterface;->setDrmVideo(Lcom/android/mms/model/VideoModel;I)V

    goto :goto_35

    .line 99
    .end local v0           #retVal:I
    :cond_3d
    invoke-virtual {p2}, Lcom/android/mms/model/VideoModel;->getSrc()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020029

    invoke-direct {p0, p1, v1, v2}, Lcom/android/mms/ui/MmsThumbnailPresenter;->showDrmIcon(Lcom/android/mms/ui/SlideViewInterface;Ljava/lang/String;I)V

    goto :goto_35

    .line 101
    :cond_48
    invoke-virtual {p2}, Lcom/android/mms/model/VideoModel;->getSrc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/mms/model/VideoModel;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-interface {p1, p2, v1, v2}, Lcom/android/mms/ui/SlideViewInterface;->setVideo(Lcom/android/mms/model/VideoModel;Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_35
.end method

.method private showDrmIcon(Lcom/android/mms/ui/SlideViewInterface;Ljava/lang/String;I)V
    .registers 7
    .parameter "view"
    .parameter "name"
    .parameter "icID"

    .prologue
    .line 149
    const/4 v1, 0x0

    .line 150
    .local v1, image:Lcom/android/mms/model/ImageModel;
    iget-object v2, p0, Lcom/android/mms/ui/MmsThumbnailPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, p3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 152
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-interface {p1, v1, p2, v0}, Lcom/android/mms/ui/SlideViewInterface;->setImage(Lcom/android/mms/model/ImageModel;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 153
    return-void
.end method


# virtual methods
.method public onModelChanged(Lcom/android/mms/model/Model;Z)V
    .registers 3
    .parameter "model"
    .parameter "dataChanged"

    .prologue
    .line 157
    return-void
.end method

.method public present()V
    .registers 4

    .prologue
    .line 45
    iget-object v1, p0, Lcom/android/mms/ui/MmsThumbnailPresenter;->mModel:Lcom/android/mms/model/Model;

    check-cast v1, Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_17

    .line 46
    iget-object v1, p0, Lcom/android/mms/ui/MmsThumbnailPresenter;->mView:Lcom/android/mms/ui/ViewInterface;

    check-cast v1, Lcom/android/mms/ui/SlideViewInterface;

    iget-object v2, p0, Lcom/android/mms/ui/MmsThumbnailPresenter;->mModel:Lcom/android/mms/model/Model;

    check-cast v2, Lcom/android/mms/model/SlideshowModel;

    invoke-direct {p0, v1, v2}, Lcom/android/mms/ui/MmsThumbnailPresenter;->presentFirstSlide(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/SlideshowModel;)V

    .line 54
    :cond_16
    :goto_16
    return-void

    .line 49
    :cond_17
    iget-object v1, p0, Lcom/android/mms/ui/MmsThumbnailPresenter;->mModel:Lcom/android/mms/model/Model;

    check-cast v1, Lcom/android/mms/model/SlideshowModel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    .line 50
    .local v0, slide:Lcom/android/mms/model/SlideModel;
    if-eqz v0, :cond_16

    .line 51
    iget-object v1, p0, Lcom/android/mms/ui/MmsThumbnailPresenter;->mView:Lcom/android/mms/ui/ViewInterface;

    check-cast v1, Lcom/android/mms/ui/SlideViewInterface;

    invoke-direct {p0, v1, v0}, Lcom/android/mms/ui/MmsThumbnailPresenter;->presentFirstSlide(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/SlideModel;)V

    goto :goto_16
.end method

.method protected presentAudioThumbnail(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/AudioModel;)V
    .registers 7
    .parameter "view"
    .parameter "audio"

    .prologue
    const-string v2, "MmsThumbnailPresenter"

    .line 129
    const-string v1, "MmsThumbnailPresenter"

    const-string v1, "presentAudioThumbnail()"

    invoke-static {v2, v1}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-virtual {p2}, Lcom/android/mms/model/AudioModel;->isDrmProtected()Z

    move-result v1

    if-eqz v1, :cond_48

    .line 131
    const-string v1, "MmsThumbnailPresenter"

    const-string v1, "isDrmProtected()"

    invoke-static {v2, v1}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-virtual {p2}, Lcom/android/mms/model/AudioModel;->getDrmSession()Landroid/lge/lgdrm/DrmContentSession;

    move-result-object v1

    if-eqz v1, :cond_3d

    .line 134
    invoke-virtual {p2}, Lcom/android/mms/model/AudioModel;->getDrmSession()Landroid/lge/lgdrm/DrmContentSession;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/mms/model/AudioModel;->getDrmContent()Landroid/lge/lgdrm/DrmContent;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/drm/DrmUtils;->getPermission(Landroid/lge/lgdrm/DrmContent;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/lge/lgdrm/DrmContentSession;->judgeRight(IZ)I

    move-result v0

    .line 135
    .local v0, retVal:I
    if-nez v0, :cond_36

    .line 136
    const v1, 0x7f020028

    invoke-interface {p1, p2, v1}, Lcom/android/mms/ui/SlideViewInterface;->setDrmAudio(Lcom/android/mms/model/AudioModel;I)V

    .line 145
    .end local v0           #retVal:I
    :goto_35
    return-void

    .line 138
    .restart local v0       #retVal:I
    :cond_36
    const v1, 0x7f020027

    invoke-interface {p1, p2, v1}, Lcom/android/mms/ui/SlideViewInterface;->setDrmAudio(Lcom/android/mms/model/AudioModel;I)V

    goto :goto_35

    .line 141
    .end local v0           #retVal:I
    :cond_3d
    invoke-virtual {p2}, Lcom/android/mms/model/AudioModel;->getSrc()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020029

    invoke-direct {p0, p1, v1, v2}, Lcom/android/mms/ui/MmsThumbnailPresenter;->showDrmIcon(Lcom/android/mms/ui/SlideViewInterface;Ljava/lang/String;I)V

    goto :goto_35

    .line 143
    :cond_48
    invoke-virtual {p2}, Lcom/android/mms/model/AudioModel;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/mms/model/AudioModel;->getSrc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/mms/model/AudioModel;->getExtras()Ljava/util/Map;

    move-result-object v3

    invoke-interface {p1, p2, v1, v2, v3}, Lcom/android/mms/ui/SlideViewInterface;->setAudio(Lcom/android/mms/model/AudioModel;Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_35
.end method
