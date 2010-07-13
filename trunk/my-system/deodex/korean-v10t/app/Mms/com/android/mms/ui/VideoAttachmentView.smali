.class public Lcom/android/mms/ui/VideoAttachmentView;
.super Landroid/widget/LinearLayout;
.source "VideoAttachmentView.java"

# interfaces
.implements Lcom/android/mms/ui/SlideViewInterface;


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoAttachmentView"


# instance fields
.field private mThumbnailView:Landroid/widget/ImageView;

.field private mVideoSizeCounter:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    return-void
.end method

.method public static createVideoThumbnail(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .registers 6
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 203
    const/4 v0, 0x0

    .line 204
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 206
    .local v1, retriever:Landroid/media/MediaMetadataRetriever;
    const/4 v2, 0x2

    :try_start_7
    invoke-virtual {v1, v2}, Landroid/media/MediaMetadataRetriever;->setMode(I)V

    .line 207
    invoke-virtual {v1, p0, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 208
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->captureFrame()Landroid/graphics/Bitmap;
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_1c
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_10} :catch_15

    move-result-object v0

    .line 213
    :try_start_11
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_14
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_14} :catch_21

    .line 218
    :goto_14
    return-object v0

    .line 209
    :catch_15
    move-exception v2

    .line 213
    :try_start_16
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_19
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_19} :catch_1a

    goto :goto_14

    .line 214
    :catch_1a
    move-exception v2

    goto :goto_14

    .line 212
    :catchall_1c
    move-exception v2

    .line 213
    :try_start_1d
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_20
    .catch Ljava/lang/RuntimeException; {:try_start_1d .. :try_end_20} :catch_23

    .line 216
    :goto_20
    throw v2

    .line 214
    :catch_21
    move-exception v2

    goto :goto_14

    :catch_23
    move-exception v3

    goto :goto_20
.end method


# virtual methods
.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 64
    const v0, 0x7f090077

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/VideoAttachmentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/VideoAttachmentView;->mThumbnailView:Landroid/widget/ImageView;

    .line 65
    const v0, 0x7f090078

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/VideoAttachmentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/VideoAttachmentView;->mVideoSizeCounter:Landroid/widget/TextView;

    .line 66
    return-void
.end method

.method public pauseAudio()V
    .registers 1

    .prologue
    .line 244
    return-void
.end method

.method public pauseVideo()V
    .registers 1

    .prologue
    .line 249
    return-void
.end method

.method public reset()V
    .registers 1

    .prologue
    .line 235
    return-void
.end method

.method public seekAudio(I)V
    .registers 2
    .parameter "seekTo"

    .prologue
    .line 254
    return-void
.end method

.method public seekVideo(I)V
    .registers 2
    .parameter "seekTo"

    .prologue
    .line 259
    return-void
.end method

.method public setAttachSizeCounter(Lcom/android/mms/model/SlideshowModel;)V
    .registers 2
    .parameter "slideShow"

    .prologue
    .line 264
    return-void
.end method

.method public setAudio(Lcom/android/mms/model/AudioModel;Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;)V
    .registers 5
    .parameter "audio"
    .parameter "audioUri"
    .parameter "name"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/mms/model/AudioModel;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .prologue
    .line 78
    .local p4, extras:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    return-void
.end method

.method public setAudio(Lcom/android/mms/model/SlideshowModel;Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;)V
    .registers 5
    .parameter "slideShow"
    .parameter "audioUri"
    .parameter "name"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/mms/model/SlideshowModel;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p4, extras:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    return-void
.end method

.method public setDrmAudio(Lcom/android/mms/model/AudioModel;I)V
    .registers 3
    .parameter "audio"
    .parameter "icID"

    .prologue
    .line 89
    return-void
.end method

.method public setDrmImage(Lcom/android/mms/model/ImageModel;Landroid/graphics/Bitmap;I)V
    .registers 4
    .parameter "image"
    .parameter "bitmap"
    .parameter "icID"

    .prologue
    .line 103
    return-void
.end method

.method public setDrmVideo(Lcom/android/mms/model/VideoModel;I)V
    .registers 14
    .parameter "video"
    .parameter "icID"

    .prologue
    const/4 v10, 0x0

    .line 177
    iget-object v4, p0, Lcom/android/mms/ui/VideoAttachmentView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/mms/model/VideoModel;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/ui/VideoAttachmentView;->createVideoThumbnail(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 178
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_18

    .line 179
    invoke-virtual {p0}, Lcom/android/mms/ui/VideoAttachmentView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020026

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 182
    :cond_18
    iget-object v4, p0, Lcom/android/mms/ui/VideoAttachmentView;->mThumbnailView:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 184
    if-eqz p1, :cond_58

    .line 186
    const/4 v1, 0x0

    .line 187
    .local v1, currentSize:I
    const/4 v3, 0x0

    .line 189
    .local v3, maxSize:I
    invoke-virtual {p1}, Lcom/android/mms/model/VideoModel;->getRestriction()Lcom/android/mms/model/ContentRestriction;

    move-result-object v2

    .line 190
    .local v2, ir:Lcom/android/mms/model/ContentRestriction;
    if-eqz v2, :cond_33

    .line 191
    invoke-interface {v2}, Lcom/android/mms/model/ContentRestriction;->getMessageCurrentSize()I

    move-result v4

    div-int/lit16 v1, v4, 0x400

    .line 192
    invoke-interface {v2}, Lcom/android/mms/model/ContentRestriction;->getMessageMaxSize()I

    move-result v4

    div-int/lit16 v3, v4, 0x400

    .line 194
    :cond_33
    if-lez v1, :cond_59

    .line 195
    iget-object v4, p0, Lcom/android/mms/ui/VideoAttachmentView;->mVideoSizeCounter:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/mms/ui/VideoAttachmentView;->mContext:Landroid/content/Context;

    const v6, 0x7f070034

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    const/4 v8, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    iget-object v4, p0, Lcom/android/mms/ui/VideoAttachmentView;->mVideoSizeCounter:Landroid/widget/TextView;

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 200
    .end local v1           #currentSize:I
    .end local v2           #ir:Lcom/android/mms/model/ContentRestriction;
    .end local v3           #maxSize:I
    :cond_58
    :goto_58
    return-void

    .line 198
    .restart local v1       #currentSize:I
    .restart local v2       #ir:Lcom/android/mms/model/ContentRestriction;
    .restart local v3       #maxSize:I
    :cond_59
    iget-object v4, p0, Lcom/android/mms/ui/VideoAttachmentView;->mVideoSizeCounter:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_58
.end method

.method public setImage(Lcom/android/mms/model/ImageModel;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 4
    .parameter "image"
    .parameter "name"
    .parameter "bitmap"

    .prologue
    .line 93
    return-void
.end method

.method public setImage(Lcom/android/mms/model/SlideshowModel;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 4
    .parameter "slideShow"
    .parameter "name"
    .parameter "bitmap"

    .prologue
    .line 97
    return-void
.end method

.method public setImageRegionFit(Ljava/lang/String;)V
    .registers 2
    .parameter "fit"

    .prologue
    .line 107
    return-void
.end method

.method public setImageVisibility(Z)V
    .registers 2
    .parameter "visible"

    .prologue
    .line 111
    return-void
.end method

.method public setText(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "name"
    .parameter "text"

    .prologue
    .line 115
    return-void
.end method

.method public setTextVisibility(Z)V
    .registers 2
    .parameter "visible"

    .prologue
    .line 119
    return-void
.end method

.method public setVideo(Lcom/android/mms/model/SlideshowModel;Ljava/lang/String;Landroid/net/Uri;)V
    .registers 15
    .parameter "slideShow"
    .parameter "name"
    .parameter "videoUri"

    .prologue
    const/4 v10, 0x0

    .line 150
    iget-object v4, p0, Lcom/android/mms/ui/VideoAttachmentView;->mContext:Landroid/content/Context;

    invoke-static {v4, p3}, Lcom/android/mms/ui/VideoAttachmentView;->createVideoThumbnail(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 151
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_14

    .line 152
    invoke-virtual {p0}, Lcom/android/mms/ui/VideoAttachmentView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020026

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 155
    :cond_14
    iget-object v4, p0, Lcom/android/mms/ui/VideoAttachmentView;->mThumbnailView:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 157
    if-eqz p1, :cond_54

    .line 159
    const/4 v1, 0x0

    .line 160
    .local v1, currentSize:I
    const/4 v3, 0x0

    .line 162
    .local v3, maxSize:I
    invoke-virtual {p1}, Lcom/android/mms/model/SlideshowModel;->getRestriction()Lcom/android/mms/model/ContentRestriction;

    move-result-object v2

    .line 163
    .local v2, ir:Lcom/android/mms/model/ContentRestriction;
    if-eqz v2, :cond_2f

    .line 164
    invoke-interface {v2}, Lcom/android/mms/model/ContentRestriction;->getMessageCurrentSize()I

    move-result v4

    div-int/lit16 v1, v4, 0x400

    .line 165
    invoke-interface {v2}, Lcom/android/mms/model/ContentRestriction;->getMessageMaxSize()I

    move-result v4

    div-int/lit16 v3, v4, 0x400

    .line 167
    :cond_2f
    if-lez v1, :cond_55

    .line 168
    iget-object v4, p0, Lcom/android/mms/ui/VideoAttachmentView;->mVideoSizeCounter:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/mms/ui/VideoAttachmentView;->mContext:Landroid/content/Context;

    const v6, 0x7f070034

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    const/4 v8, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    iget-object v4, p0, Lcom/android/mms/ui/VideoAttachmentView;->mVideoSizeCounter:Landroid/widget/TextView;

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 173
    .end local v1           #currentSize:I
    .end local v2           #ir:Lcom/android/mms/model/ContentRestriction;
    .end local v3           #maxSize:I
    :cond_54
    :goto_54
    return-void

    .line 171
    .restart local v1       #currentSize:I
    .restart local v2       #ir:Lcom/android/mms/model/ContentRestriction;
    .restart local v3       #maxSize:I
    :cond_55
    iget-object v4, p0, Lcom/android/mms/ui/VideoAttachmentView;->mVideoSizeCounter:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_54
.end method

.method public setVideo(Lcom/android/mms/model/VideoModel;Ljava/lang/String;Landroid/net/Uri;)V
    .registers 15
    .parameter "video"
    .parameter "name"
    .parameter "videoUri"

    .prologue
    const/4 v10, 0x0

    .line 123
    iget-object v4, p0, Lcom/android/mms/ui/VideoAttachmentView;->mContext:Landroid/content/Context;

    invoke-static {v4, p3}, Lcom/android/mms/ui/VideoAttachmentView;->createVideoThumbnail(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 124
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_14

    .line 125
    invoke-virtual {p0}, Lcom/android/mms/ui/VideoAttachmentView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020026

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 128
    :cond_14
    iget-object v4, p0, Lcom/android/mms/ui/VideoAttachmentView;->mThumbnailView:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 130
    if-eqz p1, :cond_54

    .line 132
    const/4 v1, 0x0

    .line 133
    .local v1, currentSize:I
    const/4 v3, 0x0

    .line 135
    .local v3, maxSize:I
    invoke-virtual {p1}, Lcom/android/mms/model/VideoModel;->getRestriction()Lcom/android/mms/model/ContentRestriction;

    move-result-object v2

    .line 136
    .local v2, ir:Lcom/android/mms/model/ContentRestriction;
    if-eqz v2, :cond_2f

    .line 137
    invoke-interface {v2}, Lcom/android/mms/model/ContentRestriction;->getMessageCurrentSize()I

    move-result v4

    div-int/lit16 v1, v4, 0x400

    .line 138
    invoke-interface {v2}, Lcom/android/mms/model/ContentRestriction;->getMessageMaxSize()I

    move-result v4

    div-int/lit16 v3, v4, 0x400

    .line 140
    :cond_2f
    if-lez v1, :cond_55

    .line 141
    iget-object v4, p0, Lcom/android/mms/ui/VideoAttachmentView;->mVideoSizeCounter:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/mms/ui/VideoAttachmentView;->mContext:Landroid/content/Context;

    const v6, 0x7f070034

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    const/4 v8, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v4, p0, Lcom/android/mms/ui/VideoAttachmentView;->mVideoSizeCounter:Landroid/widget/TextView;

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 146
    .end local v1           #currentSize:I
    .end local v2           #ir:Lcom/android/mms/model/ContentRestriction;
    .end local v3           #maxSize:I
    :cond_54
    :goto_54
    return-void

    .line 144
    .restart local v1       #currentSize:I
    .restart local v2       #ir:Lcom/android/mms/model/ContentRestriction;
    .restart local v3       #maxSize:I
    :cond_55
    iget-object v4, p0, Lcom/android/mms/ui/VideoAttachmentView;->mVideoSizeCounter:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_54
.end method

.method public setVideoVisibility(Z)V
    .registers 2
    .parameter "visible"

    .prologue
    .line 223
    return-void
.end method

.method public setVisibility(Z)V
    .registers 2
    .parameter "visible"

    .prologue
    .line 239
    return-void
.end method

.method public startAudio()V
    .registers 1

    .prologue
    .line 70
    return-void
.end method

.method public startVideo()V
    .registers 1

    .prologue
    .line 74
    return-void
.end method

.method public stopAudio()V
    .registers 1

    .prologue
    .line 227
    return-void
.end method

.method public stopVideo()V
    .registers 1

    .prologue
    .line 231
    return-void
.end method
