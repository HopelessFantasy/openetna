.class public Lcom/android/mms/ui/SlideListItemView;
.super Landroid/widget/LinearLayout;
.source "SlideListItemView.java"

# interfaces
.implements Lcom/android/mms/ui/SlideViewInterface;


# static fields
.field private static final TAG:Ljava/lang/String; = "SlideListItemView"


# instance fields
.field private mAttachmentIcon:Landroid/widget/ImageView;

.field private mAttachmentName:Landroid/widget/TextView;

.field private mImagePreview:Landroid/widget/ImageView;

.field private mTextPreview:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .registers 3

    .prologue
    .line 65
    const v0, 0x7f090070

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SlideListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/SlideListItemView;->mTextPreview:Landroid/widget/TextView;

    .line 66
    iget-object v0, p0, Lcom/android/mms/ui/SlideListItemView;->mTextPreview:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 67
    const v0, 0x7f09006d

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SlideListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/SlideListItemView;->mImagePreview:Landroid/widget/ImageView;

    .line 68
    const v0, 0x7f090071

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SlideListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/SlideListItemView;->mAttachmentName:Landroid/widget/TextView;

    .line 69
    const v0, 0x7f090072

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SlideListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/SlideListItemView;->mAttachmentIcon:Landroid/widget/ImageView;

    .line 70
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
    .registers 9
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
    .local p4, extras:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 82
    if-eqz p3, :cond_1d

    .line 83
    iget-object v0, p0, Lcom/android/mms/ui/SlideListItemView;->mAttachmentName:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v0, p0, Lcom/android/mms/ui/SlideListItemView;->mAttachmentName:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 85
    iget-object v0, p0, Lcom/android/mms/ui/SlideListItemView;->mAttachmentIcon:Landroid/widget/ImageView;

    const v1, 0x7f02002d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 86
    iget-object v0, p0, Lcom/android/mms/ui/SlideListItemView;->mAttachmentIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 93
    :goto_1c
    return-void

    .line 88
    :cond_1d
    iget-object v0, p0, Lcom/android/mms/ui/SlideListItemView;->mAttachmentName:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v0, p0, Lcom/android/mms/ui/SlideListItemView;->mAttachmentName:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 90
    iget-object v0, p0, Lcom/android/mms/ui/SlideListItemView;->mAttachmentIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 91
    iget-object v0, p0, Lcom/android/mms/ui/SlideListItemView;->mAttachmentIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1c
.end method

.method public setAudio(Lcom/android/mms/model/SlideshowModel;Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;)V
    .registers 9
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
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 97
    if-eqz p3, :cond_1d

    .line 98
    iget-object v0, p0, Lcom/android/mms/ui/SlideListItemView;->mAttachmentName:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v0, p0, Lcom/android/mms/ui/SlideListItemView;->mAttachmentName:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 100
    iget-object v0, p0, Lcom/android/mms/ui/SlideListItemView;->mAttachmentIcon:Landroid/widget/ImageView;

    const v1, 0x7f02002d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 101
    iget-object v0, p0, Lcom/android/mms/ui/SlideListItemView;->mAttachmentIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 108
    :goto_1c
    return-void

    .line 103
    :cond_1d
    iget-object v0, p0, Lcom/android/mms/ui/SlideListItemView;->mAttachmentName:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v0, p0, Lcom/android/mms/ui/SlideListItemView;->mAttachmentName:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 105
    iget-object v0, p0, Lcom/android/mms/ui/SlideListItemView;->mAttachmentIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 106
    iget-object v0, p0, Lcom/android/mms/ui/SlideListItemView;->mAttachmentIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1c
.end method

.method public setDrmAudio(Lcom/android/mms/model/AudioModel;I)V
    .registers 9
    .parameter "audio"
    .parameter "icID"

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 113
    invoke-virtual {p1}, Lcom/android/mms/model/AudioModel;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/mms/model/AudioModel;->getFileName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, fn:Ljava/lang/String;
    if-eqz v0, :cond_31

    .line 116
    iget-object v1, p0, Lcom/android/mms/ui/SlideListItemView;->mAttachmentName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v1, p0, Lcom/android/mms/ui/SlideListItemView;->mAttachmentName:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 118
    iget-object v1, p0, Lcom/android/mms/ui/SlideListItemView;->mAttachmentIcon:Landroid/widget/ImageView;

    const v2, 0x7f02002d

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 119
    iget-object v1, p0, Lcom/android/mms/ui/SlideListItemView;->mAttachmentIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 126
    :goto_30
    return-void

    .line 121
    :cond_31
    iget-object v1, p0, Lcom/android/mms/ui/SlideListItemView;->mAttachmentName:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v1, p0, Lcom/android/mms/ui/SlideListItemView;->mAttachmentName:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 123
    iget-object v1, p0, Lcom/android/mms/ui/SlideListItemView;->mAttachmentIcon:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 124
    iget-object v1, p0, Lcom/android/mms/ui/SlideListItemView;->mAttachmentIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_30
.end method

.method public setDrmImage(Lcom/android/mms/model/ImageModel;Landroid/graphics/Bitmap;I)V
    .registers 4
    .parameter "image"
    .parameter "bitmap"
    .parameter "icID"

    .prologue
    .line 148
    return-void
.end method

.method public setDrmVideo(Lcom/android/mms/model/VideoModel;I)V
    .registers 3
    .parameter "video"
    .parameter "icID"

    .prologue
    .line 219
    return-void
.end method

.method public setImage(Lcom/android/mms/model/ImageModel;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 6
    .parameter "image"
    .parameter "name"
    .parameter "bitmap"

    .prologue
    .line 130
    if-nez p3, :cond_d

    .line 131
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideListItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020025

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p3

    .line 134
    :cond_d
    iget-object v0, p0, Lcom/android/mms/ui/SlideListItemView;->mImagePreview:Landroid/widget/ImageView;

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 135
    return-void
.end method

.method public setImage(Lcom/android/mms/model/SlideshowModel;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 6
    .parameter "slideShow"
    .parameter "name"
    .parameter "bitmap"

    .prologue
    .line 138
    if-nez p3, :cond_d

    .line 139
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideListItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020025

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p3

    .line 142
    :cond_d
    iget-object v0, p0, Lcom/android/mms/ui/SlideListItemView;->mImagePreview:Landroid/widget/ImageView;

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 143
    return-void
.end method

.method public setImageRegionFit(Ljava/lang/String;)V
    .registers 2
    .parameter "fit"

    .prologue
    .line 152
    return-void
.end method

.method public setImageVisibility(Z)V
    .registers 2
    .parameter "visible"

    .prologue
    .line 156
    return-void
.end method

.method public setText(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "name"
    .parameter "text"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/mms/ui/SlideListItemView;->mTextPreview:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    iget-object v0, p0, Lcom/android/mms/ui/SlideListItemView;->mTextPreview:Landroid/widget/TextView;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/16 v1, 0x8

    :goto_f
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 161
    return-void

    .line 160
    :cond_13
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public setTextVisibility(Z)V
    .registers 2
    .parameter "visible"

    .prologue
    .line 165
    return-void
.end method

.method public setVideo(Lcom/android/mms/model/SlideshowModel;Ljava/lang/String;Landroid/net/Uri;)V
    .registers 10
    .parameter "slideShow"
    .parameter "name"
    .parameter "videoUri"

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 193
    if-eqz p2, :cond_35

    .line 194
    iget-object v2, p0, Lcom/android/mms/ui/SlideListItemView;->mAttachmentName:Landroid/widget/TextView;

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    iget-object v2, p0, Lcom/android/mms/ui/SlideListItemView;->mAttachmentName:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 196
    iget-object v2, p0, Lcom/android/mms/ui/SlideListItemView;->mAttachmentIcon:Landroid/widget/ImageView;

    const v3, 0x7f02003a

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 197
    iget-object v2, p0, Lcom/android/mms/ui/SlideListItemView;->mAttachmentIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 205
    :goto_1c
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    .line 207
    .local v1, mp:Landroid/media/MediaPlayer;
    :try_start_21
    iget-object v2, p0, Lcom/android/mms/ui/SlideListItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, p3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 208
    iget-object v2, p0, Lcom/android/mms/ui/SlideListItemView;->mImagePreview:Landroid/widget/ImageView;

    const/16 v3, 0x3e8

    invoke-virtual {v1, v3}, Landroid/media/MediaPlayer;->getFrameAt(I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_31
    .catchall {:try_start_21 .. :try_end_31} :catchall_5a
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_31} :catch_4d

    .line 212
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 214
    :goto_34
    return-void

    .line 199
    .end local v1           #mp:Landroid/media/MediaPlayer;
    :cond_35
    iget-object v2, p0, Lcom/android/mms/ui/SlideListItemView;->mAttachmentName:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    iget-object v2, p0, Lcom/android/mms/ui/SlideListItemView;->mAttachmentName:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 201
    iget-object v2, p0, Lcom/android/mms/ui/SlideListItemView;->mAttachmentIcon:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 202
    iget-object v2, p0, Lcom/android/mms/ui/SlideListItemView;->mAttachmentIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1c

    .line 209
    .restart local v1       #mp:Landroid/media/MediaPlayer;
    :catch_4d
    move-exception v2

    move-object v0, v2

    .line 210
    .local v0, e:Ljava/io/IOException;
    :try_start_4f
    const-string v2, "SlideListItemView"

    const-string v3, "Unexpected IOException."

    invoke-static {v2, v3, v0}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_56
    .catchall {:try_start_4f .. :try_end_56} :catchall_5a

    .line 212
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    goto :goto_34

    .end local v0           #e:Ljava/io/IOException;
    :catchall_5a
    move-exception v2

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    throw v2
.end method

.method public setVideo(Lcom/android/mms/model/VideoModel;Ljava/lang/String;Landroid/net/Uri;)V
    .registers 10
    .parameter "video"
    .parameter "name"
    .parameter "videoUri"

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 168
    if-eqz p2, :cond_35

    .line 169
    iget-object v2, p0, Lcom/android/mms/ui/SlideListItemView;->mAttachmentName:Landroid/widget/TextView;

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    iget-object v2, p0, Lcom/android/mms/ui/SlideListItemView;->mAttachmentName:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 171
    iget-object v2, p0, Lcom/android/mms/ui/SlideListItemView;->mAttachmentIcon:Landroid/widget/ImageView;

    const v3, 0x7f02003a

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 172
    iget-object v2, p0, Lcom/android/mms/ui/SlideListItemView;->mAttachmentIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 180
    :goto_1c
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    .line 182
    .local v1, mp:Landroid/media/MediaPlayer;
    :try_start_21
    iget-object v2, p0, Lcom/android/mms/ui/SlideListItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, p3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 183
    iget-object v2, p0, Lcom/android/mms/ui/SlideListItemView;->mImagePreview:Landroid/widget/ImageView;

    const/16 v3, 0x3e8

    invoke-virtual {v1, v3}, Landroid/media/MediaPlayer;->getFrameAt(I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_31
    .catchall {:try_start_21 .. :try_end_31} :catchall_5a
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_31} :catch_4d

    .line 187
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 189
    :goto_34
    return-void

    .line 174
    .end local v1           #mp:Landroid/media/MediaPlayer;
    :cond_35
    iget-object v2, p0, Lcom/android/mms/ui/SlideListItemView;->mAttachmentName:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    iget-object v2, p0, Lcom/android/mms/ui/SlideListItemView;->mAttachmentName:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 176
    iget-object v2, p0, Lcom/android/mms/ui/SlideListItemView;->mAttachmentIcon:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 177
    iget-object v2, p0, Lcom/android/mms/ui/SlideListItemView;->mAttachmentIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1c

    .line 184
    .restart local v1       #mp:Landroid/media/MediaPlayer;
    :catch_4d
    move-exception v2

    move-object v0, v2

    .line 185
    .local v0, e:Ljava/io/IOException;
    :try_start_4f
    const-string v2, "SlideListItemView"

    const-string v3, "Unexpected IOException."

    invoke-static {v2, v3, v0}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_56
    .catchall {:try_start_4f .. :try_end_56} :catchall_5a

    .line 187
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    goto :goto_34

    .end local v0           #e:Ljava/io/IOException;
    :catchall_5a
    move-exception v2

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    throw v2
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
    .line 74
    return-void
.end method

.method public startVideo()V
    .registers 1

    .prologue
    .line 78
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
