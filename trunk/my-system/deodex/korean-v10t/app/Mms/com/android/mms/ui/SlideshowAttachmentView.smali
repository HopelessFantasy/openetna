.class public Lcom/android/mms/ui/SlideshowAttachmentView;
.super Landroid/widget/LinearLayout;
.source "SlideshowAttachmentView.java"

# interfaces
.implements Lcom/android/mms/ui/SlideViewInterface;


# static fields
.field private static final TAG:Ljava/lang/String; = "SlideshowAttachmentView"


# instance fields
.field private mImageView:Landroid/widget/ImageView;

.field private mSlideShowSizeCounter:Landroid/widget/TextView;

.field private mTextView:Landroid/widget/TextView;


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


# virtual methods
.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 64
    const v0, 0x7f090068

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SlideshowAttachmentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowAttachmentView;->mImageView:Landroid/widget/ImageView;

    .line 65
    const v0, 0x7f090069

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SlideshowAttachmentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowAttachmentView;->mTextView:Landroid/widget/TextView;

    .line 66
    const v0, 0x7f09006a

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SlideshowAttachmentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowAttachmentView;->mSlideShowSizeCounter:Landroid/widget/TextView;

    .line 67
    return-void
.end method

.method public pauseAudio()V
    .registers 1

    .prologue
    .line 256
    return-void
.end method

.method public pauseVideo()V
    .registers 1

    .prologue
    .line 261
    return-void
.end method

.method public reset()V
    .registers 3

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowAttachmentView;->mImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 246
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowAttachmentView;->mTextView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    return-void
.end method

.method public seekAudio(I)V
    .registers 2
    .parameter "seekTo"

    .prologue
    .line 266
    return-void
.end method

.method public seekVideo(I)V
    .registers 2
    .parameter "seekTo"

    .prologue
    .line 271
    return-void
.end method

.method public setAttachSizeCounter(Lcom/android/mms/model/SlideshowModel;)V
    .registers 12
    .parameter "slideShow"

    .prologue
    const/4 v9, 0x0

    .line 276
    invoke-virtual {p0, v9}, Lcom/android/mms/ui/SlideshowAttachmentView;->setImageVisibility(Z)V

    .line 278
    if-eqz p1, :cond_3f

    .line 280
    const/4 v0, 0x0

    .line 281
    .local v0, currentSize:I
    const/4 v2, 0x0

    .line 283
    .local v2, maxSize:I
    invoke-virtual {p1}, Lcom/android/mms/model/SlideshowModel;->getRestriction()Lcom/android/mms/model/ContentRestriction;

    move-result-object v1

    .line 284
    .local v1, ir:Lcom/android/mms/model/ContentRestriction;
    if-eqz v1, :cond_1a

    .line 285
    invoke-interface {v1}, Lcom/android/mms/model/ContentRestriction;->getMessageCurrentSize()I

    move-result v3

    div-int/lit16 v0, v3, 0x400

    .line 286
    invoke-interface {v1}, Lcom/android/mms/model/ContentRestriction;->getMessageMaxSize()I

    move-result v3

    div-int/lit16 v2, v3, 0x400

    .line 288
    :cond_1a
    if-lez v0, :cond_40

    .line 289
    iget-object v3, p0, Lcom/android/mms/ui/SlideshowAttachmentView;->mSlideShowSizeCounter:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/mms/ui/SlideshowAttachmentView;->mContext:Landroid/content/Context;

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

    .line 290
    iget-object v3, p0, Lcom/android/mms/ui/SlideshowAttachmentView;->mSlideShowSizeCounter:Landroid/widget/TextView;

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 294
    .end local v0           #currentSize:I
    .end local v1           #ir:Lcom/android/mms/model/ContentRestriction;
    .end local v2           #maxSize:I
    :cond_3f
    :goto_3f
    return-void

    .line 292
    .restart local v0       #currentSize:I
    .restart local v1       #ir:Lcom/android/mms/model/ContentRestriction;
    .restart local v2       #maxSize:I
    :cond_40
    iget-object v3, p0, Lcom/android/mms/ui/SlideshowAttachmentView;->mSlideShowSizeCounter:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3f
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
    .line 79
    .local p4, extras:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    return-void
.end method

.method public setAudio(Lcom/android/mms/model/SlideshowModel;Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;)V
    .registers 15
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
    .local p4, extras:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    const/4 v9, 0x0

    .line 85
    if-eqz p1, :cond_3c

    .line 87
    const/4 v0, 0x0

    .line 88
    .local v0, currentSize:I
    const/4 v2, 0x0

    .line 90
    .local v2, maxSize:I
    invoke-virtual {p1}, Lcom/android/mms/model/SlideshowModel;->getRestriction()Lcom/android/mms/model/ContentRestriction;

    move-result-object v1

    .line 91
    .local v1, ir:Lcom/android/mms/model/ContentRestriction;
    if-eqz v1, :cond_17

    .line 92
    invoke-interface {v1}, Lcom/android/mms/model/ContentRestriction;->getMessageCurrentSize()I

    move-result v3

    div-int/lit16 v0, v3, 0x400

    .line 93
    invoke-interface {v1}, Lcom/android/mms/model/ContentRestriction;->getMessageMaxSize()I

    move-result v3

    div-int/lit16 v2, v3, 0x400

    .line 95
    :cond_17
    if-lez v0, :cond_3d

    .line 96
    iget-object v3, p0, Lcom/android/mms/ui/SlideshowAttachmentView;->mSlideShowSizeCounter:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/mms/ui/SlideshowAttachmentView;->mContext:Landroid/content/Context;

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

    .line 97
    iget-object v3, p0, Lcom/android/mms/ui/SlideshowAttachmentView;->mSlideShowSizeCounter:Landroid/widget/TextView;

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 101
    .end local v0           #currentSize:I
    .end local v1           #ir:Lcom/android/mms/model/ContentRestriction;
    .end local v2           #maxSize:I
    :cond_3c
    :goto_3c
    return-void

    .line 99
    .restart local v0       #currentSize:I
    .restart local v1       #ir:Lcom/android/mms/model/ContentRestriction;
    .restart local v2       #maxSize:I
    :cond_3d
    iget-object v3, p0, Lcom/android/mms/ui/SlideshowAttachmentView;->mSlideShowSizeCounter:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3c
.end method

.method public setDrmAudio(Lcom/android/mms/model/AudioModel;I)V
    .registers 3
    .parameter "audio"
    .parameter "icID"

    .prologue
    .line 106
    return-void
.end method

.method public setDrmImage(Lcom/android/mms/model/ImageModel;Landroid/graphics/Bitmap;I)V
    .registers 4
    .parameter "image"
    .parameter "bitmap"
    .parameter "icID"

    .prologue
    .line 147
    return-void
.end method

.method public setDrmVideo(Lcom/android/mms/model/VideoModel;I)V
    .registers 3
    .parameter "video"
    .parameter "icID"

    .prologue
    .line 230
    return-void
.end method

.method public setImage(Lcom/android/mms/model/ImageModel;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 6
    .parameter "image"
    .parameter "name"
    .parameter "bitmap"

    .prologue
    .line 109
    if-nez p3, :cond_d

    .line 110
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowAttachmentView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020025

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p3

    .line 113
    :cond_d
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowAttachmentView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 114
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SlideshowAttachmentView;->setImageVisibility(Z)V

    .line 115
    return-void
.end method

.method public setImage(Lcom/android/mms/model/SlideshowModel;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 14
    .parameter "slideShow"
    .parameter "name"
    .parameter "bitmap"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 119
    if-nez p3, :cond_f

    .line 120
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowAttachmentView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020025

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p3

    .line 123
    :cond_f
    iget-object v3, p0, Lcom/android/mms/ui/SlideshowAttachmentView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 124
    invoke-virtual {p0, v9}, Lcom/android/mms/ui/SlideshowAttachmentView;->setImageVisibility(Z)V

    .line 126
    if-eqz p1, :cond_51

    .line 128
    const/4 v0, 0x0

    .line 129
    .local v0, currentSize:I
    const/4 v2, 0x0

    .line 131
    .local v2, maxSize:I
    invoke-virtual {p1}, Lcom/android/mms/model/SlideshowModel;->getRestriction()Lcom/android/mms/model/ContentRestriction;

    move-result-object v1

    .line 132
    .local v1, ir:Lcom/android/mms/model/ContentRestriction;
    if-eqz v1, :cond_2d

    .line 133
    invoke-interface {v1}, Lcom/android/mms/model/ContentRestriction;->getMessageCurrentSize()I

    move-result v3

    div-int/lit16 v0, v3, 0x400

    .line 134
    invoke-interface {v1}, Lcom/android/mms/model/ContentRestriction;->getMessageMaxSize()I

    move-result v3

    div-int/lit16 v2, v3, 0x400

    .line 136
    :cond_2d
    if-lez v0, :cond_52

    .line 137
    iget-object v3, p0, Lcom/android/mms/ui/SlideshowAttachmentView;->mSlideShowSizeCounter:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/mms/ui/SlideshowAttachmentView;->mContext:Landroid/content/Context;

    const v5, 0x7f070034

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v3, p0, Lcom/android/mms/ui/SlideshowAttachmentView;->mSlideShowSizeCounter:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 142
    .end local v0           #currentSize:I
    .end local v1           #ir:Lcom/android/mms/model/ContentRestriction;
    .end local v2           #maxSize:I
    :cond_51
    :goto_51
    return-void

    .line 140
    .restart local v0       #currentSize:I
    .restart local v1       #ir:Lcom/android/mms/model/ContentRestriction;
    .restart local v2       #maxSize:I
    :cond_52
    iget-object v3, p0, Lcom/android/mms/ui/SlideshowAttachmentView;->mSlideShowSizeCounter:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_51
.end method

.method public setImageRegionFit(Ljava/lang/String;)V
    .registers 2
    .parameter "fit"

    .prologue
    .line 151
    return-void
.end method

.method public setImageVisibility(Z)V
    .registers 4
    .parameter "visible"

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowAttachmentView;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_c

    .line 155
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowAttachmentView;->mImageView:Landroid/widget/ImageView;

    if-eqz p1, :cond_d

    const/4 v1, 0x0

    :goto_9
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 157
    :cond_c
    return-void

    .line 155
    :cond_d
    const/4 v1, 0x4

    goto :goto_9
.end method

.method public setText(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "name"
    .parameter "text"

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowAttachmentView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    return-void
.end method

.method public setTextVisibility(Z)V
    .registers 4
    .parameter "visible"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowAttachmentView;->mTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_9

    const/4 v1, 0x0

    :goto_5
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 165
    return-void

    .line 164
    :cond_9
    const/4 v1, 0x4

    goto :goto_5
.end method

.method public setVideo(Lcom/android/mms/model/SlideshowModel;Ljava/lang/String;Landroid/net/Uri;)V
    .registers 16
    .parameter "slideShow"
    .parameter "name"
    .parameter "videoUri"

    .prologue
    .line 190
    new-instance v5, Landroid/media/MediaPlayer;

    invoke-direct {v5}, Landroid/media/MediaPlayer;-><init>()V

    .line 192
    .local v5, mp:Landroid/media/MediaPlayer;
    :try_start_5
    iget-object v6, p0, Lcom/android/mms/ui/SlideshowAttachmentView;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6, p3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 193
    iget-object v6, p0, Lcom/android/mms/ui/SlideshowAttachmentView;->mImageView:Landroid/widget/ImageView;

    const/16 v7, 0x3e8

    invoke-virtual {v5, v7}, Landroid/media/MediaPlayer;->getFrameAt(I)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 194
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/SlideshowAttachmentView;->setImageVisibility(Z)V
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_83
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_19} :catch_76

    .line 198
    invoke-virtual {v5}, Landroid/media/MediaPlayer;->release()V

    .line 201
    :goto_1c
    iget-object v6, p0, Lcom/android/mms/ui/SlideshowAttachmentView;->mContext:Landroid/content/Context;

    invoke-static {v6, p3}, Lcom/android/mms/ui/VideoAttachmentView;->createVideoThumbnail(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 202
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_2f

    .line 203
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowAttachmentView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020026

    invoke-static {v6, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 206
    :cond_2f
    iget-object v6, p0, Lcom/android/mms/ui/SlideshowAttachmentView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 207
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/SlideshowAttachmentView;->setImageVisibility(Z)V

    .line 209
    if-eqz p1, :cond_75

    .line 211
    const/4 v1, 0x0

    .line 212
    .local v1, currentSize:I
    const/4 v4, 0x0

    .line 214
    .local v4, maxSize:I
    invoke-virtual {p1}, Lcom/android/mms/model/SlideshowModel;->getRestriction()Lcom/android/mms/model/ContentRestriction;

    move-result-object v3

    .line 215
    .local v3, ir:Lcom/android/mms/model/ContentRestriction;
    if-eqz v3, :cond_4e

    .line 216
    invoke-interface {v3}, Lcom/android/mms/model/ContentRestriction;->getMessageCurrentSize()I

    move-result v6

    div-int/lit16 v1, v6, 0x400

    .line 217
    invoke-interface {v3}, Lcom/android/mms/model/ContentRestriction;->getMessageMaxSize()I

    move-result v6

    div-int/lit16 v4, v6, 0x400

    .line 219
    :cond_4e
    if-lez v1, :cond_88

    .line 220
    iget-object v6, p0, Lcom/android/mms/ui/SlideshowAttachmentView;->mSlideShowSizeCounter:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/mms/ui/SlideshowAttachmentView;->mContext:Landroid/content/Context;

    const v8, 0x7f070034

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    iget-object v6, p0, Lcom/android/mms/ui/SlideshowAttachmentView;->mSlideShowSizeCounter:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 225
    .end local v1           #currentSize:I
    .end local v3           #ir:Lcom/android/mms/model/ContentRestriction;
    .end local v4           #maxSize:I
    :cond_75
    :goto_75
    return-void

    .line 195
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :catch_76
    move-exception v6

    move-object v2, v6

    .line 196
    .local v2, e:Ljava/io/IOException;
    :try_start_78
    const-string v6, "SlideshowAttachmentView"

    const-string v7, "Unexpected IOException."

    invoke-static {v6, v7, v2}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7f
    .catchall {:try_start_78 .. :try_end_7f} :catchall_83

    .line 198
    invoke-virtual {v5}, Landroid/media/MediaPlayer;->release()V

    goto :goto_1c

    .end local v2           #e:Ljava/io/IOException;
    :catchall_83
    move-exception v6

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->release()V

    throw v6

    .line 223
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    .restart local v1       #currentSize:I
    .restart local v3       #ir:Lcom/android/mms/model/ContentRestriction;
    .restart local v4       #maxSize:I
    :cond_88
    iget-object v6, p0, Lcom/android/mms/ui/SlideshowAttachmentView;->mSlideShowSizeCounter:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_75
.end method

.method public setVideo(Lcom/android/mms/model/VideoModel;Ljava/lang/String;Landroid/net/Uri;)V
    .registers 10
    .parameter "video"
    .parameter "name"
    .parameter "videoUri"

    .prologue
    const/4 v5, 0x1

    .line 168
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    .line 170
    .local v2, mp:Landroid/media/MediaPlayer;
    :try_start_6
    iget-object v3, p0, Lcom/android/mms/ui/SlideshowAttachmentView;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, p3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 171
    iget-object v3, p0, Lcom/android/mms/ui/SlideshowAttachmentView;->mImageView:Landroid/widget/ImageView;

    const/16 v4, 0x3e8

    invoke-virtual {v2, v4}, Landroid/media/MediaPlayer;->getFrameAt(I)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 172
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/SlideshowAttachmentView;->setImageVisibility(Z)V
    :try_end_1a
    .catchall {:try_start_6 .. :try_end_1a} :catchall_46
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_1a} :catch_39

    .line 176
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    .line 179
    :goto_1d
    iget-object v3, p0, Lcom/android/mms/ui/SlideshowAttachmentView;->mContext:Landroid/content/Context;

    invoke-static {v3, p3}, Lcom/android/mms/ui/VideoAttachmentView;->createVideoThumbnail(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 180
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_30

    .line 181
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowAttachmentView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020026

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 184
    :cond_30
    iget-object v3, p0, Lcom/android/mms/ui/SlideshowAttachmentView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 185
    invoke-virtual {p0, v5}, Lcom/android/mms/ui/SlideshowAttachmentView;->setImageVisibility(Z)V

    .line 186
    return-void

    .line 173
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :catch_39
    move-exception v3

    move-object v1, v3

    .line 174
    .local v1, e:Ljava/io/IOException;
    :try_start_3b
    const-string v3, "SlideshowAttachmentView"

    const-string v4, "Unexpected IOException."

    invoke-static {v3, v4, v1}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_42
    .catchall {:try_start_3b .. :try_end_42} :catchall_46

    .line 176
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    goto :goto_1d

    .end local v1           #e:Ljava/io/IOException;
    :catchall_46
    move-exception v3

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    throw v3
.end method

.method public setVideoVisibility(Z)V
    .registers 2
    .parameter "visible"

    .prologue
    .line 234
    return-void
.end method

.method public setVisibility(Z)V
    .registers 2
    .parameter "visible"

    .prologue
    .line 251
    return-void
.end method

.method public startAudio()V
    .registers 1

    .prologue
    .line 71
    return-void
.end method

.method public startVideo()V
    .registers 1

    .prologue
    .line 75
    return-void
.end method

.method public stopAudio()V
    .registers 1

    .prologue
    .line 238
    return-void
.end method

.method public stopVideo()V
    .registers 1

    .prologue
    .line 242
    return-void
.end method
