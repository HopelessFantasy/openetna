.class public Lcom/android/mms/ui/AudioAttachmentView;
.super Landroid/widget/LinearLayout;
.source "AudioAttachmentView.java"

# interfaces
.implements Lcom/android/mms/ui/SlideViewInterface;


# static fields
.field private static final TAG:Ljava/lang/String; = "AudioAttachmentView"


# instance fields
.field private mAlbumView:Landroid/widget/TextView;

.field private mArtistView:Landroid/widget/TextView;

.field private mAudioSizeCounter:Landroid/widget/TextView;

.field private mAudioUri:Landroid/net/Uri;

.field private mErrorMsgView:Landroid/widget/TextView;

.field private mIsPlaying:Z

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mNameView:Landroid/widget/TextView;

.field private final mRes:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/AudioAttachmentView;->mRes:Landroid/content/res/Resources;

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/AudioAttachmentView;->mRes:Landroid/content/res/Resources;

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/AudioAttachmentView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/mms/ui/AudioAttachmentView;->onPlaybackError()V

    return-void
.end method

.method private cleanupMediaPlayer()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 88
    iget-object v0, p0, Lcom/android/mms/ui/AudioAttachmentView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_11

    .line 90
    :try_start_5
    iget-object v0, p0, Lcom/android/mms/ui/AudioAttachmentView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 91
    iget-object v0, p0, Lcom/android/mms/ui/AudioAttachmentView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_12

    .line 93
    iput-object v1, p0, Lcom/android/mms/ui/AudioAttachmentView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 96
    :cond_11
    return-void

    .line 93
    :catchall_12
    move-exception v0

    iput-object v1, p0, Lcom/android/mms/ui/AudioAttachmentView;->mMediaPlayer:Landroid/media/MediaPlayer;

    throw v0
.end method

.method private onPlaybackError()V
    .registers 3

    .prologue
    .line 82
    const-string v0, "AudioAttachmentView"

    const-string v1, "Error occurred while playing audio."

    invoke-static {v0, v1}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/android/mms/ui/AudioAttachmentView;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f070062

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/AudioAttachmentView;->showErrorMessage(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Lcom/android/mms/ui/AudioAttachmentView;->stopAudio()V

    .line 85
    return-void
.end method

.method private showErrorMessage(Ljava/lang/String;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/mms/ui/AudioAttachmentView;->mErrorMsgView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    iget-object v0, p0, Lcom/android/mms/ui/AudioAttachmentView;->mErrorMsgView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 300
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 74
    const v0, 0x7f090005

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/AudioAttachmentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/AudioAttachmentView;->mNameView:Landroid/widget/TextView;

    .line 75
    const v0, 0x7f090006

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/AudioAttachmentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/AudioAttachmentView;->mAlbumView:Landroid/widget/TextView;

    .line 76
    const v0, 0x7f090007

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/AudioAttachmentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/AudioAttachmentView;->mArtistView:Landroid/widget/TextView;

    .line 77
    const v0, 0x7f090008

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/AudioAttachmentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/AudioAttachmentView;->mErrorMsgView:Landroid/widget/TextView;

    .line 78
    const v0, 0x7f090009

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/AudioAttachmentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/AudioAttachmentView;->mAudioSizeCounter:Landroid/widget/TextView;

    .line 79
    return-void
.end method

.method public pauseAudio()V
    .registers 1

    .prologue
    .line 305
    return-void
.end method

.method public pauseVideo()V
    .registers 1

    .prologue
    .line 310
    return-void
.end method

.method public reset()V
    .registers 3

    .prologue
    .line 284
    monitor-enter p0

    .line 285
    :try_start_1
    iget-boolean v0, p0, Lcom/android/mms/ui/AudioAttachmentView;->mIsPlaying:Z

    if-eqz v0, :cond_8

    .line 286
    invoke-virtual {p0}, Lcom/android/mms/ui/AudioAttachmentView;->stopAudio()V

    .line 288
    :cond_8
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_11

    .line 289
    iget-object v0, p0, Lcom/android/mms/ui/AudioAttachmentView;->mErrorMsgView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 290
    return-void

    .line 288
    :catchall_11
    move-exception v0

    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw v0
.end method

.method public seekAudio(I)V
    .registers 2
    .parameter "seekTo"

    .prologue
    .line 315
    return-void
.end method

.method public seekVideo(I)V
    .registers 2
    .parameter "seekTo"

    .prologue
    .line 320
    return-void
.end method

.method public setAttachSizeCounter(Lcom/android/mms/model/SlideshowModel;)V
    .registers 2
    .parameter "slideShow"

    .prologue
    .line 325
    return-void
.end method

.method public setAudio(Lcom/android/mms/model/AudioModel;Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;)V
    .registers 15
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
    const/4 v9, 0x0

    .line 127
    monitor-enter p0

    .line 128
    :try_start_2
    iput-object p2, p0, Lcom/android/mms/ui/AudioAttachmentView;->mAudioUri:Landroid/net/Uri;

    .line 129
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_60

    .line 131
    iget-object v3, p0, Lcom/android/mms/ui/AudioAttachmentView;->mNameView:Landroid/widget/TextView;

    invoke-virtual {v3, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v4, p0, Lcom/android/mms/ui/AudioAttachmentView;->mAlbumView:Landroid/widget/TextView;

    const-string v3, "album"

    invoke-interface {p4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v4, p0, Lcom/android/mms/ui/AudioAttachmentView;->mArtistView:Landroid/widget/TextView;

    const-string v3, "artist"

    invoke-interface {p4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    if-eqz p1, :cond_5f

    .line 137
    const/4 v0, 0x0

    .line 138
    .local v0, currentSize:I
    const/4 v2, 0x0

    .line 140
    .local v2, maxSize:I
    invoke-virtual {p1}, Lcom/android/mms/model/AudioModel;->getRestriction()Lcom/android/mms/model/ContentRestriction;

    move-result-object v1

    .line 141
    .local v1, ir:Lcom/android/mms/model/ContentRestriction;
    if-eqz v1, :cond_3a

    .line 142
    invoke-interface {v1}, Lcom/android/mms/model/ContentRestriction;->getMessageCurrentSize()I

    move-result v3

    div-int/lit16 v0, v3, 0x400

    .line 143
    invoke-interface {v1}, Lcom/android/mms/model/ContentRestriction;->getMessageMaxSize()I

    move-result v3

    div-int/lit16 v2, v3, 0x400

    .line 145
    :cond_3a
    if-lez v0, :cond_63

    .line 146
    iget-object v3, p0, Lcom/android/mms/ui/AudioAttachmentView;->mAudioSizeCounter:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/mms/ui/AudioAttachmentView;->mContext:Landroid/content/Context;

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

    .line 147
    iget-object v3, p0, Lcom/android/mms/ui/AudioAttachmentView;->mAudioSizeCounter:Landroid/widget/TextView;

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 151
    .end local v0           #currentSize:I
    .end local v1           #ir:Lcom/android/mms/model/ContentRestriction;
    .end local v2           #maxSize:I
    :cond_5f
    :goto_5f
    return-void

    .line 129
    :catchall_60
    move-exception v3

    :try_start_61
    monitor-exit p0
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_60

    throw v3

    .line 149
    .restart local v0       #currentSize:I
    .restart local v1       #ir:Lcom/android/mms/model/ContentRestriction;
    .restart local v2       #maxSize:I
    :cond_63
    iget-object v3, p0, Lcom/android/mms/ui/AudioAttachmentView;->mAudioSizeCounter:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5f
.end method

.method public setAudio(Lcom/android/mms/model/SlideshowModel;Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;)V
    .registers 16
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
    const/4 v10, 0x0

    .line 157
    const/4 v0, 0x0

    .line 158
    .local v0, audio:Lcom/android/mms/model/AudioModel;
    if-eqz p1, :cond_c

    .line 159
    invoke-virtual {p1, v10}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/model/SlideModel;->getAudio()Lcom/android/mms/model/AudioModel;

    move-result-object v0

    .line 161
    :cond_c
    monitor-enter p0

    .line 162
    :try_start_d
    iput-object p2, p0, Lcom/android/mms/ui/AudioAttachmentView;->mAudioUri:Landroid/net/Uri;

    .line 163
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_6b

    .line 165
    iget-object v4, p0, Lcom/android/mms/ui/AudioAttachmentView;->mNameView:Landroid/widget/TextView;

    invoke-virtual {v4, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    iget-object v5, p0, Lcom/android/mms/ui/AudioAttachmentView;->mAlbumView:Landroid/widget/TextView;

    const-string v4, "album"

    invoke-interface {p4, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v5, p0, Lcom/android/mms/ui/AudioAttachmentView;->mArtistView:Landroid/widget/TextView;

    const-string v4, "artist"

    invoke-interface {p4, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    if-eqz v0, :cond_6a

    .line 171
    const/4 v1, 0x0

    .line 172
    .local v1, currentSize:I
    const/4 v3, 0x0

    .line 174
    .local v3, maxSize:I
    invoke-virtual {v0}, Lcom/android/mms/model/AudioModel;->getRestriction()Lcom/android/mms/model/ContentRestriction;

    move-result-object v2

    .line 175
    .local v2, ir:Lcom/android/mms/model/ContentRestriction;
    if-eqz v2, :cond_45

    .line 176
    invoke-interface {v2}, Lcom/android/mms/model/ContentRestriction;->getMessageCurrentSize()I

    move-result v4

    div-int/lit16 v1, v4, 0x400

    .line 177
    invoke-interface {v2}, Lcom/android/mms/model/ContentRestriction;->getMessageMaxSize()I

    move-result v4

    div-int/lit16 v3, v4, 0x400

    .line 179
    :cond_45
    if-lez v1, :cond_6e

    .line 180
    iget-object v4, p0, Lcom/android/mms/ui/AudioAttachmentView;->mAudioSizeCounter:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/mms/ui/AudioAttachmentView;->mContext:Landroid/content/Context;

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

    .line 181
    iget-object v4, p0, Lcom/android/mms/ui/AudioAttachmentView;->mAudioSizeCounter:Landroid/widget/TextView;

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 185
    .end local v1           #currentSize:I
    .end local v2           #ir:Lcom/android/mms/model/ContentRestriction;
    .end local v3           #maxSize:I
    :cond_6a
    :goto_6a
    return-void

    .line 163
    :catchall_6b
    move-exception v4

    :try_start_6c
    monitor-exit p0
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_6b

    throw v4

    .line 183
    .restart local v1       #currentSize:I
    .restart local v2       #ir:Lcom/android/mms/model/ContentRestriction;
    .restart local v3       #maxSize:I
    :cond_6e
    iget-object v4, p0, Lcom/android/mms/ui/AudioAttachmentView;->mAudioSizeCounter:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6a
.end method

.method public setDrmAudio(Lcom/android/mms/model/AudioModel;I)V
    .registers 14
    .parameter "audio"
    .parameter "icID"

    .prologue
    const/4 v10, 0x0

    const-string v7, ""

    .line 190
    invoke-virtual {p1}, Lcom/android/mms/model/AudioModel;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/mms/model/AudioModel;->getFileName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x2f

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 192
    .local v1, fn:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/mms/ui/AudioAttachmentView;->mNameView:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    iget-object v4, p0, Lcom/android/mms/ui/AudioAttachmentView;->mAlbumView:Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    iget-object v4, p0, Lcom/android/mms/ui/AudioAttachmentView;->mArtistView:Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    if-eqz p1, :cond_65

    .line 198
    const/4 v0, 0x0

    .line 199
    .local v0, currentSize:I
    const/4 v3, 0x0

    .line 201
    .local v3, maxSize:I
    invoke-virtual {p1}, Lcom/android/mms/model/AudioModel;->getRestriction()Lcom/android/mms/model/ContentRestriction;

    move-result-object v2

    .line 202
    .local v2, ir:Lcom/android/mms/model/ContentRestriction;
    if-eqz v2, :cond_40

    .line 203
    invoke-interface {v2}, Lcom/android/mms/model/ContentRestriction;->getMessageCurrentSize()I

    move-result v4

    div-int/lit16 v0, v4, 0x400

    .line 204
    invoke-interface {v2}, Lcom/android/mms/model/ContentRestriction;->getMessageMaxSize()I

    move-result v4

    div-int/lit16 v3, v4, 0x400

    .line 206
    :cond_40
    if-lez v0, :cond_66

    .line 207
    iget-object v4, p0, Lcom/android/mms/ui/AudioAttachmentView;->mAudioSizeCounter:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/mms/ui/AudioAttachmentView;->mContext:Landroid/content/Context;

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

    .line 208
    iget-object v4, p0, Lcom/android/mms/ui/AudioAttachmentView;->mAudioSizeCounter:Landroid/widget/TextView;

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 212
    .end local v0           #currentSize:I
    .end local v2           #ir:Lcom/android/mms/model/ContentRestriction;
    .end local v3           #maxSize:I
    :cond_65
    :goto_65
    return-void

    .line 210
    .restart local v0       #currentSize:I
    .restart local v2       #ir:Lcom/android/mms/model/ContentRestriction;
    .restart local v3       #maxSize:I
    :cond_66
    iget-object v4, p0, Lcom/android/mms/ui/AudioAttachmentView;->mAudioSizeCounter:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_65
.end method

.method public setDrmImage(Lcom/android/mms/model/ImageModel;Landroid/graphics/Bitmap;I)V
    .registers 4
    .parameter "image"
    .parameter "bitmap"
    .parameter "icID"

    .prologue
    .line 228
    return-void
.end method

.method public setDrmVideo(Lcom/android/mms/model/VideoModel;I)V
    .registers 3
    .parameter "video"
    .parameter "icID"

    .prologue
    .line 263
    return-void
.end method

.method public setImage(Lcom/android/mms/model/ImageModel;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 4
    .parameter "image"
    .parameter "name"
    .parameter "bitmap"

    .prologue
    .line 217
    return-void
.end method

.method public setImage(Lcom/android/mms/model/SlideshowModel;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 4
    .parameter "slideShow"
    .parameter "name"
    .parameter "bitmap"

    .prologue
    .line 222
    return-void
.end method

.method public setImageRegionFit(Ljava/lang/String;)V
    .registers 2
    .parameter "fit"

    .prologue
    .line 233
    return-void
.end method

.method public setImageVisibility(Z)V
    .registers 2
    .parameter "visible"

    .prologue
    .line 238
    return-void
.end method

.method public setText(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "name"
    .parameter "text"

    .prologue
    .line 243
    return-void
.end method

.method public setTextVisibility(Z)V
    .registers 2
    .parameter "visible"

    .prologue
    .line 248
    return-void
.end method

.method public setVideo(Lcom/android/mms/model/SlideshowModel;Ljava/lang/String;Landroid/net/Uri;)V
    .registers 4
    .parameter "slideShow"
    .parameter "name"
    .parameter "videoUri"

    .prologue
    .line 258
    return-void
.end method

.method public setVideo(Lcom/android/mms/model/VideoModel;Ljava/lang/String;Landroid/net/Uri;)V
    .registers 4
    .parameter "video"
    .parameter "name"
    .parameter "videoUri"

    .prologue
    .line 253
    return-void
.end method

.method public setVideoVisibility(Z)V
    .registers 2
    .parameter "visible"

    .prologue
    .line 268
    return-void
.end method

.method public setVisibility(Z)V
    .registers 2
    .parameter "visible"

    .prologue
    .line 295
    return-void
.end method

.method public declared-synchronized startAudio()V
    .registers 3

    .prologue
    .line 99
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/android/mms/ui/AudioAttachmentView;->mIsPlaying:Z

    if-nez v0, :cond_39

    iget-object v0, p0, Lcom/android/mms/ui/AudioAttachmentView;->mAudioUri:Landroid/net/Uri;

    if-eqz v0, :cond_39

    .line 100
    iget-object v0, p0, Lcom/android/mms/ui/AudioAttachmentView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/ui/AudioAttachmentView;->mAudioUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/AudioAttachmentView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 101
    iget-object v0, p0, Lcom/android/mms/ui/AudioAttachmentView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_39

    .line 102
    iget-object v0, p0, Lcom/android/mms/ui/AudioAttachmentView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 103
    iget-object v0, p0, Lcom/android/mms/ui/AudioAttachmentView;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/android/mms/ui/AudioAttachmentView$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/AudioAttachmentView$1;-><init>(Lcom/android/mms/ui/AudioAttachmentView;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 108
    iget-object v0, p0, Lcom/android/mms/ui/AudioAttachmentView;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/android/mms/ui/AudioAttachmentView$2;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/AudioAttachmentView$2;-><init>(Lcom/android/mms/ui/AudioAttachmentView;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/AudioAttachmentView;->mIsPlaying:Z

    .line 116
    iget-object v0, p0, Lcom/android/mms/ui/AudioAttachmentView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_39
    .catchall {:try_start_1 .. :try_end_39} :catchall_3b

    .line 119
    :cond_39
    monitor-exit p0

    return-void

    .line 99
    :catchall_3b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public startVideo()V
    .registers 1

    .prologue
    .line 124
    return-void
.end method

.method public declared-synchronized stopAudio()V
    .registers 3

    .prologue
    .line 272
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/android/mms/ui/AudioAttachmentView;->cleanupMediaPlayer()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_9

    .line 274
    const/4 v0, 0x0

    :try_start_5
    iput-boolean v0, p0, Lcom/android/mms/ui/AudioAttachmentView;->mIsPlaying:Z
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_e

    .line 276
    monitor-exit p0

    return-void

    .line 274
    :catchall_9
    move-exception v0

    const/4 v1, 0x0

    :try_start_b
    iput-boolean v1, p0, Lcom/android/mms/ui/AudioAttachmentView;->mIsPlaying:Z

    throw v0
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_e

    .line 272
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public stopVideo()V
    .registers 1

    .prologue
    .line 281
    return-void
.end method
