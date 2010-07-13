.class public Lcom/android/mms/ui/SlideView;
.super Landroid/widget/AbsoluteLayout;
.source "SlideView.java"

# interfaces
.implements Lcom/android/mms/ui/AdaptableSlideViewInterface;


# static fields
.field private static final AUDIO_INFO_HEIGHT:I = 0x52

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "SlideView"


# instance fields
.field private mAudioInfoView:Landroid/view/View;

.field private mAudioPlayer:Landroid/media/MediaPlayer;

.field private mImageView:Landroid/widget/ImageView;

.field private mIsPrepared:Z

.field mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private mScrollText:Landroid/widget/ScrollView;

.field private mSeekWhenPrepared:I

.field private mSizeChangedListener:Lcom/android/mms/ui/AdaptableSlideViewInterface$OnSizeChangedListener;

.field private mStartWhenPrepared:Z

.field private mStopWhenPrepared:Z

.field private mTextView:Landroid/widget/TextView;

.field private mVideoPlayer:Landroid/media/MediaPlayer;

.field private mVideoView:Landroid/widget/VideoView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 94
    invoke-direct {p0, p1}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;)V

    .line 71
    new-instance v0, Lcom/android/mms/ui/SlideView$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideView$1;-><init>(Lcom/android/mms/ui/SlideView;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    new-instance v0, Lcom/android/mms/ui/SlideView$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideView$1;-><init>(Lcom/android/mms/ui/SlideView;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 99
    return-void
.end method

.method static synthetic access$002(Lcom/android/mms/ui/SlideView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/android/mms/ui/SlideView;->mIsPrepared:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/mms/ui/SlideView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lcom/android/mms/ui/SlideView;->mSeekWhenPrepared:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/mms/ui/SlideView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput p1, p0, Lcom/android/mms/ui/SlideView;->mSeekWhenPrepared:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/mms/ui/SlideView;)Landroid/media/MediaPlayer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/mms/ui/SlideView;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/mms/ui/SlideView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mStartWhenPrepared:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/mms/ui/SlideView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/android/mms/ui/SlideView;->mStartWhenPrepared:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/mms/ui/SlideView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/mms/ui/SlideView;->displayAudioInfo()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/mms/ui/SlideView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mStopWhenPrepared:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/mms/ui/SlideView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/android/mms/ui/SlideView;->mStopWhenPrepared:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/mms/ui/SlideView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/mms/ui/SlideView;->hideAudioInfo()V

    return-void
.end method

.method private displayAudioInfo()V
    .registers 3

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioInfoView:Landroid/view/View;

    if-eqz v0, :cond_a

    .line 233
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioInfoView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 235
    :cond_a
    return-void
.end method

.method private hideAudioInfo()V
    .registers 3

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioInfoView:Landroid/view/View;

    if-eqz v0, :cond_b

    .line 239
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioInfoView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 241
    :cond_b
    return-void
.end method

.method private initAudioInfoView(Ljava/lang/String;)V
    .registers 11
    .parameter "name"

    .prologue
    const/16 v8, 0x52

    .line 210
    iget-object v3, p0, Lcom/android/mms/ui/SlideView;->mAudioInfoView:Landroid/view/View;

    if-nez v3, :cond_2f

    .line 211
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 212
    .local v1, factory:Landroid/view/LayoutInflater;
    const v3, 0x7f03001b

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/SlideView;->mAudioInfoView:Landroid/view/View;

    .line 213
    iget-object v3, p0, Lcom/android/mms/ui/SlideView;->mAudioInfoView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 215
    .local v2, height:I
    iget-object v3, p0, Lcom/android/mms/ui/SlideView;->mAudioInfoView:Landroid/view/View;

    new-instance v4, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/mms/ui/SlideView;->getHeight()I

    move-result v7

    sub-int/2addr v7, v8

    invoke-direct {v4, v5, v8, v6, v7}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {p0, v3, v4}, Lcom/android/mms/ui/SlideView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 223
    .end local v1           #factory:Landroid/view/LayoutInflater;
    .end local v2           #height:I
    :cond_2f
    iget-object v3, p0, Lcom/android/mms/ui/SlideView;->mAudioInfoView:Landroid/view/View;

    if-eqz v3, :cond_41

    .line 224
    iget-object v3, p0, Lcom/android/mms/ui/SlideView;->mAudioInfoView:Landroid/view/View;

    const v4, 0x7f090059

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 225
    .local v0, audioName:Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    .end local v0           #audioName:Landroid/widget/TextView;
    :cond_41
    iget-object v3, p0, Lcom/android/mms/ui/SlideView;->mAudioInfoView:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 229
    return-void
.end method


# virtual methods
.method protected onSizeChanged(IIII)V
    .registers 8
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 482
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsoluteLayout;->onSizeChanged(IIII)V

    .line 484
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mSizeChangedListener:Lcom/android/mms/ui/AdaptableSlideViewInterface$OnSizeChangedListener;

    if-eqz v0, :cond_32

    .line 485
    const-string v0, "SlideView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mSizeChangedListener:Lcom/android/mms/ui/AdaptableSlideViewInterface$OnSizeChangedListener;

    const/16 v1, 0x52

    sub-int v1, p2, v1

    invoke-interface {v0, p1, v1}, Lcom/android/mms/ui/AdaptableSlideViewInterface$OnSizeChangedListener;->onSizeChanged(II)V

    .line 488
    :cond_32
    return-void
.end method

.method public pauseAudio()V
    .registers 2

    .prologue
    .line 411
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_15

    iget-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mIsPrepared:Z

    if-eqz v0, :cond_15

    .line 412
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 413
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 416
    :cond_15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mStartWhenPrepared:Z

    .line 417
    return-void
.end method

.method public pauseVideo()V
    .registers 3

    .prologue
    .line 442
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_10

    .line 443
    const-string v0, "SlideView"

    const-string v1, "Pausing video playback."

    invoke-static {v0, v1}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    .line 446
    :cond_10
    return-void
.end method

.method public reset()V
    .registers 3

    .prologue
    const/16 v1, 0x8

    .line 458
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mScrollText:Landroid/widget/ScrollView;

    if-eqz v0, :cond_b

    .line 459
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mScrollText:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 462
    :cond_b
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_14

    .line 463
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 466
    :cond_14
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1b

    .line 467
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideView;->stopAudio()V

    .line 470
    :cond_1b
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_27

    .line 471
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideView;->stopVideo()V

    .line 472
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVisibility(I)V

    .line 474
    :cond_27
    return-void
.end method

.method public seekAudio(I)V
    .registers 3
    .parameter "seekTo"

    .prologue
    .line 420
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mIsPrepared:Z

    if-eqz v0, :cond_e

    .line 421
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 425
    :goto_d
    return-void

    .line 423
    :cond_e
    iput p1, p0, Lcom/android/mms/ui/SlideView;->mSeekWhenPrepared:I

    goto :goto_d
.end method

.method public seekVideo(I)V
    .registers 5
    .parameter "seekTo"

    .prologue
    .line 449
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_23

    .line 450
    if-lez p1, :cond_23

    .line 451
    const-string v0, "SlideView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Seeking video playback to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, p1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 455
    :cond_23
    return-void
.end method

.method public setAttachSizeCounter(Lcom/android/mms/model/SlideshowModel;)V
    .registers 2
    .parameter "slideShow"

    .prologue
    .line 497
    return-void
.end method

.method public setAudio(Lcom/android/mms/model/AudioModel;Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;)V
    .registers 10
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
    const/4 v3, 0x0

    const-string v4, "SlideView"

    .line 244
    if-nez p1, :cond_d

    .line 245
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Audio URI may not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 248
    :cond_d
    const-string v1, "SlideView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Changing audio source to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_35

    .line 251
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 252
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 253
    iput-object v3, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    .line 255
    :cond_35
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/mms/ui/SlideView;->mIsPrepared:Z

    .line 258
    :try_start_38
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    .line 259
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 260
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, p2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 261
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_52} :catch_56

    .line 267
    :goto_52
    invoke-direct {p0, p3}, Lcom/android/mms/ui/SlideView;->initAudioInfoView(Ljava/lang/String;)V

    .line 268
    return-void

    .line 262
    :catch_56
    move-exception v1

    move-object v0, v1

    .line 263
    .local v0, e:Ljava/io/IOException;
    const-string v1, "SlideView"

    const-string v1, "Unexpected IOException."

    invoke-static {v4, v1, v0}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 264
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 265
    iput-object v3, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    goto :goto_52
.end method

.method public setAudio(Lcom/android/mms/model/SlideshowModel;Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;)V
    .registers 12
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
    const/4 v5, 0x0

    const/4 v4, 0x0

    const-string v6, "SlideView"

    .line 273
    const/4 v0, 0x0

    .line 274
    .local v0, audio:Lcom/android/mms/model/AudioModel;
    if-eqz p1, :cond_f

    .line 275
    invoke-virtual {p1, v4}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->getAudio()Lcom/android/mms/model/AudioModel;

    move-result-object v0

    .line 277
    :cond_f
    if-nez v0, :cond_19

    .line 278
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Audio URI may not be null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 281
    :cond_19
    const-string v2, "SlideView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Changing audio source to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_41

    .line 284
    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->reset()V

    .line 285
    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    .line 286
    iput-object v5, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    .line 288
    :cond_41
    iput-boolean v4, p0, Lcom/android/mms/ui/SlideView;->mIsPrepared:Z

    .line 291
    :try_start_43
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v2, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    .line 292
    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/android/mms/ui/SlideView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 293
    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, p2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 294
    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_5d} :catch_61

    .line 300
    :goto_5d
    invoke-direct {p0, p3}, Lcom/android/mms/ui/SlideView;->initAudioInfoView(Ljava/lang/String;)V

    .line 301
    return-void

    .line 295
    :catch_61
    move-exception v2

    move-object v1, v2

    .line 296
    .local v1, e:Ljava/io/IOException;
    const-string v2, "SlideView"

    const-string v2, "Unexpected IOException."

    invoke-static {v6, v2, v1}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 297
    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    .line 298
    iput-object v5, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    goto :goto_5d
.end method

.method public setDrmAudio(Lcom/android/mms/model/AudioModel;I)V
    .registers 10
    .parameter "audio"
    .parameter "icID"

    .prologue
    const/4 v5, 0x0

    const-string v6, "SlideView"

    .line 305
    invoke-virtual {p1}, Lcom/android/mms/model/AudioModel;->getUri()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_11

    .line 306
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Audio URI may not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 309
    :cond_11
    const-string v1, "SlideView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Changing audio source to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/mms/model/AudioModel;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_3d

    .line 312
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 313
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 314
    iput-object v5, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    .line 316
    :cond_3d
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/mms/ui/SlideView;->mIsPrepared:Z

    .line 319
    :try_start_40
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    .line 320
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 321
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/mms/model/AudioModel;->getDrmSession()Landroid/lge/lgdrm/DrmContentSession;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/mms/model/AudioModel;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/MediaPlayer;->setDataSourceDrm(Landroid/content/Context;Landroid/lge/lgdrm/DrmContentSession;Ljava/lang/String;)I

    .line 322
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_62} :catch_6a

    .line 328
    :goto_62
    invoke-virtual {p1}, Lcom/android/mms/model/AudioModel;->getSrc()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/mms/ui/SlideView;->initAudioInfoView(Ljava/lang/String;)V

    .line 329
    return-void

    .line 323
    :catch_6a
    move-exception v1

    move-object v0, v1

    .line 324
    .local v0, e:Ljava/io/IOException;
    const-string v1, "SlideView"

    const-string v1, "Unexpected IOException."

    invoke-static {v6, v1, v0}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 325
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 326
    iput-object v5, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    goto :goto_62
.end method

.method public setDrmImage(Lcom/android/mms/model/ImageModel;Landroid/graphics/Bitmap;I)V
    .registers 4
    .parameter "image"
    .parameter "bitmap"
    .parameter "icID"

    .prologue
    .line 139
    return-void
.end method

.method public setDrmVideo(Lcom/android/mms/model/VideoModel;I)V
    .registers 7
    .parameter "video"
    .parameter "icID"

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x2

    .line 181
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_e

    .line 182
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SlideView;->removeView(Landroid/view/View;)V

    .line 183
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    .line 186
    :cond_e
    new-instance v0, Landroid/widget/VideoView;

    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    .line 187
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v1, v3, v3, v2, v2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/SlideView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 193
    const-string v0, "SlideView"

    const-string v1, "Changing video drm source"

    invoke-static {v0, v1}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {p1}, Lcom/android/mms/model/VideoModel;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 207
    return-void
.end method

.method public setImage(Lcom/android/mms/model/ImageModel;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 8
    .parameter "image"
    .parameter "name"
    .parameter "bitmap"

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x2

    .line 102
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    if-nez v0, :cond_19

    .line 103
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    .line 104
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v1, v3, v3, v2, v2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/SlideView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    :cond_19
    if-nez p3, :cond_26

    .line 112
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020025

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p3

    .line 115
    :cond_26
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 116
    return-void
.end method

.method public setImage(Lcom/android/mms/model/SlideshowModel;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 8
    .parameter "slideShow"
    .parameter "name"
    .parameter "bitmap"

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x2

    .line 119
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    if-nez v0, :cond_19

    .line 120
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    .line 121
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v1, v3, v3, v2, v2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/SlideView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    :cond_19
    if-nez p3, :cond_26

    .line 129
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020025

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p3

    .line 132
    :cond_26
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 133
    return-void
.end method

.method public setImageRegion(IIII)V
    .registers 7
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_e

    .line 143
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v1, p3, p4, p1, p2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    :cond_e
    return-void
.end method

.method public setImageRegionFit(Ljava/lang/String;)V
    .registers 2
    .parameter "fit"

    .prologue
    .line 149
    return-void
.end method

.method public setImageVisibility(Z)V
    .registers 4
    .parameter "visible"

    .prologue
    .line 372
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_c

    .line 373
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    if-eqz p1, :cond_d

    const/4 v1, 0x0

    :goto_9
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 375
    :cond_c
    return-void

    .line 373
    :cond_d
    const/4 v1, 0x4

    goto :goto_9
.end method

.method public setOnSizeChangedListener(Lcom/android/mms/ui/AdaptableSlideViewInterface$OnSizeChangedListener;)V
    .registers 2
    .parameter "l"

    .prologue
    .line 491
    iput-object p1, p0, Lcom/android/mms/ui/SlideView;->mSizeChangedListener:Lcom/android/mms/ui/AdaptableSlideViewInterface$OnSizeChangedListener;

    .line 492
    return-void
.end method

.method public setText(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "name"
    .parameter "text"

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x2

    .line 332
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mScrollText:Landroid/widget/ScrollView;

    if-nez v0, :cond_20

    .line 333
    new-instance v0, Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mScrollText:Landroid/widget/ScrollView;

    .line 334
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mScrollText:Landroid/widget/ScrollView;

    const/high16 v1, 0x300

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setScrollBarStyle(I)V

    .line 335
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mScrollText:Landroid/widget/ScrollView;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v1, v3, v3, v2, v2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/SlideView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 342
    :cond_20
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    if-nez v0, :cond_3d

    .line 343
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    .line 344
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 345
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mScrollText:Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 348
    :cond_3d
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mScrollText:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->requestFocus()Z

    .line 349
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 350
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    const/16 v1, 0xf

    invoke-static {v0, v1}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z

    .line 351
    return-void
.end method

.method public setTextRegion(IIII)V
    .registers 7
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 354
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mScrollText:Landroid/widget/ScrollView;

    if-eqz v0, :cond_e

    .line 355
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mScrollText:Landroid/widget/ScrollView;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v1, p3, p4, p1, p2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 357
    :cond_e
    return-void
.end method

.method public setTextVisibility(Z)V
    .registers 4
    .parameter "visible"

    .prologue
    .line 378
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mScrollText:Landroid/widget/ScrollView;

    if-eqz v0, :cond_c

    .line 379
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mScrollText:Landroid/widget/ScrollView;

    if-eqz p1, :cond_d

    const/4 v1, 0x0

    :goto_9
    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 381
    :cond_c
    return-void

    .line 379
    :cond_d
    const/4 v1, 0x4

    goto :goto_9
.end method

.method public setVideo(Lcom/android/mms/model/SlideshowModel;Ljava/lang/String;Landroid/net/Uri;)V
    .registers 8
    .parameter "slideShow"
    .parameter "name"
    .parameter "videoUri"

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x2

    .line 166
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    if-nez v0, :cond_19

    .line 167
    new-instance v0, Landroid/widget/VideoView;

    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    .line 168
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v1, v3, v3, v2, v2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/SlideView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 175
    :cond_19
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, p3}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 176
    return-void
.end method

.method public setVideo(Lcom/android/mms/model/VideoModel;Ljava/lang/String;Landroid/net/Uri;)V
    .registers 8
    .parameter "video"
    .parameter "name"
    .parameter "videoUri"

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x2

    .line 152
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    if-nez v0, :cond_19

    .line 153
    new-instance v0, Landroid/widget/VideoView;

    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    .line 154
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v1, v3, v3, v2, v2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/SlideView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 161
    :cond_19
    const-string v0, "SlideView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Changing video source to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, p3}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 163
    return-void
.end method

.method public setVideoRegion(IIII)V
    .registers 11
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 360
    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    if-eqz v2, :cond_21

    .line 362
    mul-int/lit8 v2, p4, 0x3

    int-to-double v2, v2

    const-wide v4, 0x400199999999999aL

    div-double/2addr v2, v4

    double-to-int v1, v2

    .line 363
    .local v1, width2:I
    const/4 v0, 0x0

    .line 364
    .local v0, left2:I
    sub-int v2, p3, v1

    if-lez v2, :cond_17

    .line 365
    sub-int v2, p3, v1

    div-int/lit8 v0, v2, 0x2

    .line 367
    :cond_17
    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    new-instance v3, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v3, v1, p4, v0, p2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v2, v3}, Landroid/widget/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 369
    .end local v0           #left2:I
    .end local v1           #width2:I
    :cond_21
    return-void
.end method

.method public setVideoVisibility(Z)V
    .registers 4
    .parameter "visible"

    .prologue
    .line 384
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_c

    .line 385
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    if-eqz p1, :cond_d

    const/4 v1, 0x0

    :goto_9
    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVisibility(I)V

    .line 387
    :cond_c
    return-void

    .line 385
    :cond_d
    const/4 v1, 0x4

    goto :goto_9
.end method

.method public setVisibility(Z)V
    .registers 2
    .parameter "visible"

    .prologue
    .line 478
    return-void
.end method

.method public startAudio()V
    .registers 2

    .prologue
    .line 390
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mIsPrepared:Z

    if-eqz v0, :cond_14

    .line 391
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 392
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mStartWhenPrepared:Z

    .line 393
    invoke-direct {p0}, Lcom/android/mms/ui/SlideView;->displayAudioInfo()V

    .line 397
    :goto_13
    return-void

    .line 395
    :cond_14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mStartWhenPrepared:Z

    goto :goto_13
.end method

.method public startVideo()V
    .registers 3

    .prologue
    .line 428
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_10

    .line 429
    const-string v0, "SlideView"

    const-string v1, "Starting video playback."

    invoke-static {v0, v1}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 432
    :cond_10
    return-void
.end method

.method public stopAudio()V
    .registers 2

    .prologue
    .line 400
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_19

    iget-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mIsPrepared:Z

    if-eqz v0, :cond_19

    .line 401
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 402
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 403
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    .line 404
    invoke-direct {p0}, Lcom/android/mms/ui/SlideView;->hideAudioInfo()V

    .line 408
    :goto_18
    return-void

    .line 406
    :cond_19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mStopWhenPrepared:Z

    goto :goto_18
.end method

.method public stopVideo()V
    .registers 3

    .prologue
    .line 435
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_10

    .line 436
    const-string v0, "SlideView"

    const-string v1, "Stopping video playback."

    invoke-static {v0, v1}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 439
    :cond_10
    return-void
.end method
