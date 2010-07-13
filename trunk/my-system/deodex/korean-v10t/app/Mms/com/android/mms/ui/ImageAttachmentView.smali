.class public Lcom/android/mms/ui/ImageAttachmentView;
.super Landroid/widget/LinearLayout;
.source "ImageAttachmentView.java"

# interfaces
.implements Lcom/android/mms/ui/SlideViewInterface;


# instance fields
.field private mImageSizeCounter:Landroid/widget/TextView;

.field private mImageView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 57
    const v0, 0x7f090044

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ImageAttachmentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/ImageAttachmentView;->mImageView:Landroid/widget/ImageView;

    .line 58
    const v0, 0x7f090045

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ImageAttachmentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/ImageAttachmentView;->mImageSizeCounter:Landroid/widget/TextView;

    .line 59
    return-void
.end method

.method public pauseAudio()V
    .registers 1

    .prologue
    .line 231
    return-void
.end method

.method public pauseVideo()V
    .registers 1

    .prologue
    .line 236
    return-void
.end method

.method public reset()V
    .registers 3

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/mms/ui/ImageAttachmentView;->mImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 222
    return-void
.end method

.method public seekAudio(I)V
    .registers 2
    .parameter "seekTo"

    .prologue
    .line 241
    return-void
.end method

.method public seekVideo(I)V
    .registers 2
    .parameter "seekTo"

    .prologue
    .line 246
    return-void
.end method

.method public setAttachSizeCounter(Lcom/android/mms/model/SlideshowModel;)V
    .registers 2
    .parameter "slideShow"

    .prologue
    .line 251
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
    .line 74
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
    .line 80
    .local p4, extras:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    return-void
.end method

.method public setDrmAudio(Lcom/android/mms/model/AudioModel;I)V
    .registers 3
    .parameter "audio"
    .parameter "icID"

    .prologue
    .line 85
    return-void
.end method

.method public setDrmImage(Lcom/android/mms/model/ImageModel;Landroid/graphics/Bitmap;I)V
    .registers 14
    .parameter "image"
    .parameter "bitmap"
    .parameter "icID"

    .prologue
    const/4 v9, 0x0

    .line 146
    if-nez p2, :cond_e

    .line 147
    invoke-virtual {p0}, Lcom/android/mms/ui/ImageAttachmentView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020025

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 150
    :cond_e
    iget-object v3, p0, Lcom/android/mms/ui/ImageAttachmentView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 152
    if-eqz p1, :cond_4e

    .line 154
    const/4 v0, 0x0

    .line 155
    .local v0, currentSize:I
    const/4 v2, 0x0

    .line 157
    .local v2, maxSize:I
    invoke-virtual {p1}, Lcom/android/mms/model/ImageModel;->getRestriction()Lcom/android/mms/model/ContentRestriction;

    move-result-object v1

    .line 158
    .local v1, ir:Lcom/android/mms/model/ContentRestriction;
    if-eqz v1, :cond_29

    .line 159
    invoke-interface {v1}, Lcom/android/mms/model/ContentRestriction;->getMessageCurrentSize()I

    move-result v3

    div-int/lit16 v0, v3, 0x400

    .line 160
    invoke-interface {v1}, Lcom/android/mms/model/ContentRestriction;->getMessageMaxSize()I

    move-result v3

    div-int/lit16 v2, v3, 0x400

    .line 162
    :cond_29
    if-lez v0, :cond_4f

    .line 163
    iget-object v3, p0, Lcom/android/mms/ui/ImageAttachmentView;->mImageSizeCounter:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/mms/ui/ImageAttachmentView;->mContext:Landroid/content/Context;

    const v5, 0x7f070034

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    const/4 v7, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    iget-object v3, p0, Lcom/android/mms/ui/ImageAttachmentView;->mImageSizeCounter:Landroid/widget/TextView;

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 168
    .end local v0           #currentSize:I
    .end local v1           #ir:Lcom/android/mms/model/ContentRestriction;
    .end local v2           #maxSize:I
    :cond_4e
    :goto_4e
    return-void

    .line 166
    .restart local v0       #currentSize:I
    .restart local v1       #ir:Lcom/android/mms/model/ContentRestriction;
    .restart local v2       #maxSize:I
    :cond_4f
    iget-object v3, p0, Lcom/android/mms/ui/ImageAttachmentView;->mImageSizeCounter:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4e
.end method

.method public setDrmVideo(Lcom/android/mms/model/VideoModel;I)V
    .registers 3
    .parameter "video"
    .parameter "icID"

    .prologue
    .line 203
    return-void
.end method

.method public setImage(Lcom/android/mms/model/ImageModel;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 14
    .parameter "image"
    .parameter "name"
    .parameter "bitmap"

    .prologue
    const/4 v9, 0x0

    .line 89
    if-nez p3, :cond_e

    .line 90
    invoke-virtual {p0}, Lcom/android/mms/ui/ImageAttachmentView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020025

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p3

    .line 93
    :cond_e
    iget-object v3, p0, Lcom/android/mms/ui/ImageAttachmentView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 95
    if-eqz p1, :cond_4e

    .line 97
    const/4 v0, 0x0

    .line 98
    .local v0, currentSize:I
    const/4 v2, 0x0

    .line 100
    .local v2, maxSize:I
    invoke-virtual {p1}, Lcom/android/mms/model/ImageModel;->getRestriction()Lcom/android/mms/model/ContentRestriction;

    move-result-object v1

    .line 101
    .local v1, ir:Lcom/android/mms/model/ContentRestriction;
    if-eqz v1, :cond_29

    .line 102
    invoke-interface {v1}, Lcom/android/mms/model/ContentRestriction;->getMessageCurrentSize()I

    move-result v3

    div-int/lit16 v0, v3, 0x400

    .line 103
    invoke-interface {v1}, Lcom/android/mms/model/ContentRestriction;->getMessageMaxSize()I

    move-result v3

    div-int/lit16 v2, v3, 0x400

    .line 105
    :cond_29
    if-lez v0, :cond_4f

    .line 106
    iget-object v3, p0, Lcom/android/mms/ui/ImageAttachmentView;->mImageSizeCounter:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/mms/ui/ImageAttachmentView;->mContext:Landroid/content/Context;

    const v5, 0x7f070034

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    const/4 v7, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v3, p0, Lcom/android/mms/ui/ImageAttachmentView;->mImageSizeCounter:Landroid/widget/TextView;

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 111
    .end local v0           #currentSize:I
    .end local v1           #ir:Lcom/android/mms/model/ContentRestriction;
    .end local v2           #maxSize:I
    :cond_4e
    :goto_4e
    return-void

    .line 109
    .restart local v0       #currentSize:I
    .restart local v1       #ir:Lcom/android/mms/model/ContentRestriction;
    .restart local v2       #maxSize:I
    :cond_4f
    iget-object v3, p0, Lcom/android/mms/ui/ImageAttachmentView;->mImageSizeCounter:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4e
.end method

.method public setImage(Lcom/android/mms/model/SlideshowModel;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 15
    .parameter "slideShow"
    .parameter "name"
    .parameter "bitmap"

    .prologue
    const/4 v10, 0x0

    .line 116
    const/4 v1, 0x0

    .line 117
    .local v1, image:Lcom/android/mms/model/ImageModel;
    if-eqz p1, :cond_c

    .line 118
    invoke-virtual {p1, v10}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v1

    .line 120
    :cond_c
    if-nez p3, :cond_19

    .line 121
    invoke-virtual {p0}, Lcom/android/mms/ui/ImageAttachmentView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020025

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p3

    .line 124
    :cond_19
    iget-object v4, p0, Lcom/android/mms/ui/ImageAttachmentView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 126
    if-eqz v1, :cond_59

    .line 128
    const/4 v0, 0x0

    .line 129
    .local v0, currentSize:I
    const/4 v3, 0x0

    .line 131
    .local v3, maxSize:I
    invoke-virtual {v1}, Lcom/android/mms/model/ImageModel;->getRestriction()Lcom/android/mms/model/ContentRestriction;

    move-result-object v2

    .line 132
    .local v2, ir:Lcom/android/mms/model/ContentRestriction;
    if-eqz v2, :cond_34

    .line 133
    invoke-interface {v2}, Lcom/android/mms/model/ContentRestriction;->getMessageCurrentSize()I

    move-result v4

    div-int/lit16 v0, v4, 0x400

    .line 134
    invoke-interface {v2}, Lcom/android/mms/model/ContentRestriction;->getMessageMaxSize()I

    move-result v4

    div-int/lit16 v3, v4, 0x400

    .line 136
    :cond_34
    if-lez v0, :cond_5a

    .line 137
    iget-object v4, p0, Lcom/android/mms/ui/ImageAttachmentView;->mImageSizeCounter:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/mms/ui/ImageAttachmentView;->mContext:Landroid/content/Context;

    const v6, 0x7f070034

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    const/4 v8, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v4, p0, Lcom/android/mms/ui/ImageAttachmentView;->mImageSizeCounter:Landroid/widget/TextView;

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 142
    .end local v0           #currentSize:I
    .end local v2           #ir:Lcom/android/mms/model/ContentRestriction;
    .end local v3           #maxSize:I
    :cond_59
    :goto_59
    return-void

    .line 140
    .restart local v0       #currentSize:I
    .restart local v2       #ir:Lcom/android/mms/model/ContentRestriction;
    .restart local v3       #maxSize:I
    :cond_5a
    iget-object v4, p0, Lcom/android/mms/ui/ImageAttachmentView;->mImageSizeCounter:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_59
.end method

.method public setImageRegionFit(Ljava/lang/String;)V
    .registers 2
    .parameter "fit"

    .prologue
    .line 173
    return-void
.end method

.method public setImageVisibility(Z)V
    .registers 2
    .parameter "visible"

    .prologue
    .line 178
    return-void
.end method

.method public setText(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "name"
    .parameter "text"

    .prologue
    .line 183
    return-void
.end method

.method public setTextVisibility(Z)V
    .registers 2
    .parameter "visible"

    .prologue
    .line 188
    return-void
.end method

.method public setVideo(Lcom/android/mms/model/SlideshowModel;Ljava/lang/String;Landroid/net/Uri;)V
    .registers 4
    .parameter "slideShow"
    .parameter "name"
    .parameter "videoUri"

    .prologue
    .line 198
    return-void
.end method

.method public setVideo(Lcom/android/mms/model/VideoModel;Ljava/lang/String;Landroid/net/Uri;)V
    .registers 4
    .parameter "video"
    .parameter "name"
    .parameter "videoUri"

    .prologue
    .line 193
    return-void
.end method

.method public setVideoVisibility(Z)V
    .registers 2
    .parameter "visible"

    .prologue
    .line 208
    return-void
.end method

.method public setVisibility(Z)V
    .registers 3
    .parameter "visible"

    .prologue
    .line 225
    if-eqz p1, :cond_7

    const/4 v0, 0x0

    :goto_3
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ImageAttachmentView;->setVisibility(I)V

    .line 226
    return-void

    .line 225
    :cond_7
    const/16 v0, 0x8

    goto :goto_3
.end method

.method public startAudio()V
    .registers 1

    .prologue
    .line 64
    return-void
.end method

.method public startVideo()V
    .registers 1

    .prologue
    .line 69
    return-void
.end method

.method public stopAudio()V
    .registers 1

    .prologue
    .line 213
    return-void
.end method

.method public stopVideo()V
    .registers 1

    .prologue
    .line 218
    return-void
.end method
