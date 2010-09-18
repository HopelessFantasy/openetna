.class public Landroid/widget/VideoView;
.super Landroid/view/SurfaceView;
.source "VideoView.java"

# interfaces
.implements Landroid/widget/MediaController$MediaPlayerControl;


# instance fields
.field private TAG:Ljava/lang/String;

.field private mAudioOnly:Z

.field private mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field private mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mCurrentBufferPercentage:I

.field private mDuration:I

.field private mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mIsPlaybackCompleted:Z

.field private mIsPrepared:Z

.field private mIsStreaming:Z

.field private mMediaController:Landroid/widget/MediaController;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field mSHCallback:Landroid/view/SurfaceHolder$Callback;

.field private mSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

.field private mSeekWaiting:Z

.field private mSeekWhenPrepared:I

.field mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field private mStartWhenPrepared:Z

.field private mSurfaceHeight:I

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceWidth:I

.field private mUri:Landroid/net/Uri;

.field private mVideoHeight:I

.field private mVideoWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 90
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 60
    const-string v0, "VideoView"

    iput-object v0, p0, Landroid/widget/VideoView;->TAG:Ljava/lang/String;

    .line 66
    iput-object v1, p0, Landroid/widget/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 67
    iput-object v1, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 400
    new-instance v0, Landroid/widget/VideoView$2;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$2;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, Landroid/widget/VideoView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 411
    new-instance v0, Landroid/widget/VideoView$3;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$3;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, Landroid/widget/VideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 499
    new-instance v0, Landroid/widget/VideoView$4;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$4;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, Landroid/widget/VideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 512
    new-instance v0, Landroid/widget/VideoView$5;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$5;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, Landroid/widget/VideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 563
    new-instance v0, Landroid/widget/VideoView$6;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$6;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, Landroid/widget/VideoView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 573
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/VideoView;->mSeekWaiting:Z

    .line 575
    new-instance v0, Landroid/widget/VideoView$7;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$7;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, Landroid/widget/VideoView;->mSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .line 621
    new-instance v0, Landroid/widget/VideoView$8;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$8;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, Landroid/widget/VideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    .line 91
    invoke-direct {p0}, Landroid/widget/VideoView;->initVideoView()V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 95
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 96
    invoke-direct {p0}, Landroid/widget/VideoView;->initVideoView()V

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 100
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    const-string v0, "VideoView"

    iput-object v0, p0, Landroid/widget/VideoView;->TAG:Ljava/lang/String;

    .line 66
    iput-object v1, p0, Landroid/widget/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 67
    iput-object v1, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 400
    new-instance v0, Landroid/widget/VideoView$2;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$2;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, Landroid/widget/VideoView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 411
    new-instance v0, Landroid/widget/VideoView$3;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$3;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, Landroid/widget/VideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 499
    new-instance v0, Landroid/widget/VideoView$4;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$4;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, Landroid/widget/VideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 512
    new-instance v0, Landroid/widget/VideoView$5;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$5;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, Landroid/widget/VideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 563
    new-instance v0, Landroid/widget/VideoView$6;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$6;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, Landroid/widget/VideoView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 573
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/VideoView;->mSeekWaiting:Z

    .line 575
    new-instance v0, Landroid/widget/VideoView$7;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$7;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, Landroid/widget/VideoView;->mSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .line 621
    new-instance v0, Landroid/widget/VideoView$8;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$8;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, Landroid/widget/VideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    .line 102
    invoke-direct {p0}, Landroid/widget/VideoView;->initVideoView()V

    .line 103
    return-void
.end method

.method static synthetic access$000(Landroid/widget/VideoView;)Landroid/media/MediaPlayer$OnCompletionListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Landroid/widget/VideoView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    return-object v0
.end method

.method static synthetic access$100(Landroid/widget/VideoView;)Landroid/media/MediaPlayer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/widget/VideoView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-boolean v0, p0, Landroid/widget/VideoView;->mIsStreaming:Z

    return v0
.end method

.method static synthetic access$102(Landroid/widget/VideoView;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-object p1, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic access$1100(Landroid/widget/VideoView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget v0, p0, Landroid/widget/VideoView;->mSurfaceWidth:I

    return v0
.end method

.method static synthetic access$1102(Landroid/widget/VideoView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput p1, p0, Landroid/widget/VideoView;->mSurfaceWidth:I

    return p1
.end method

.method static synthetic access$1200(Landroid/widget/VideoView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget v0, p0, Landroid/widget/VideoView;->mSurfaceHeight:I

    return v0
.end method

.method static synthetic access$1202(Landroid/widget/VideoView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput p1, p0, Landroid/widget/VideoView;->mSurfaceHeight:I

    return p1
.end method

.method static synthetic access$1300(Landroid/widget/VideoView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget v0, p0, Landroid/widget/VideoView;->mSeekWhenPrepared:I

    return v0
.end method

.method static synthetic access$1302(Landroid/widget/VideoView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput p1, p0, Landroid/widget/VideoView;->mSeekWhenPrepared:I

    return p1
.end method

.method static synthetic access$1400(Landroid/widget/VideoView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-boolean v0, p0, Landroid/widget/VideoView;->mStartWhenPrepared:Z

    return v0
.end method

.method static synthetic access$1402(Landroid/widget/VideoView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-boolean p1, p0, Landroid/widget/VideoView;->mStartWhenPrepared:Z

    return p1
.end method

.method static synthetic access$1500(Landroid/widget/VideoView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-boolean v0, p0, Landroid/widget/VideoView;->mIsPlaybackCompleted:Z

    return v0
.end method

.method static synthetic access$1502(Landroid/widget/VideoView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-boolean p1, p0, Landroid/widget/VideoView;->mIsPlaybackCompleted:Z

    return p1
.end method

.method static synthetic access$1600(Landroid/widget/VideoView;)Landroid/media/MediaPlayer$OnErrorListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Landroid/widget/VideoView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    return-object v0
.end method

.method static synthetic access$1700(Landroid/widget/VideoView;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Landroid/widget/VideoView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1800(Landroid/widget/VideoView;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Landroid/widget/VideoView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1902(Landroid/widget/VideoView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput p1, p0, Landroid/widget/VideoView;->mCurrentBufferPercentage:I

    return p1
.end method

.method static synthetic access$200(Landroid/widget/VideoView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget v0, p0, Landroid/widget/VideoView;->mVideoWidth:I

    return v0
.end method

.method static synthetic access$2000(Landroid/widget/VideoView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-boolean v0, p0, Landroid/widget/VideoView;->mSeekWaiting:Z

    return v0
.end method

.method static synthetic access$202(Landroid/widget/VideoView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput p1, p0, Landroid/widget/VideoView;->mVideoWidth:I

    return p1
.end method

.method static synthetic access$2102(Landroid/widget/VideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-object p1, p0, Landroid/widget/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object p1
.end method

.method static synthetic access$2200(Landroid/widget/VideoView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/widget/VideoView;->openVideo()V

    return-void
.end method

.method static synthetic access$300(Landroid/widget/VideoView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget v0, p0, Landroid/widget/VideoView;->mVideoHeight:I

    return v0
.end method

.method static synthetic access$302(Landroid/widget/VideoView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput p1, p0, Landroid/widget/VideoView;->mVideoHeight:I

    return p1
.end method

.method static synthetic access$400(Landroid/widget/VideoView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-boolean v0, p0, Landroid/widget/VideoView;->mIsPrepared:Z

    return v0
.end method

.method static synthetic access$402(Landroid/widget/VideoView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-boolean p1, p0, Landroid/widget/VideoView;->mIsPrepared:Z

    return p1
.end method

.method static synthetic access$500(Landroid/widget/VideoView;)Landroid/media/MediaPlayer$OnPreparedListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Landroid/widget/VideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    return-object v0
.end method

.method static synthetic access$600(Landroid/widget/VideoView;)Landroid/widget/MediaController;
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    return-object v0
.end method

.method static synthetic access$700(Landroid/widget/VideoView;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Landroid/widget/VideoView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Landroid/widget/VideoView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-boolean v0, p0, Landroid/widget/VideoView;->mAudioOnly:Z

    return v0
.end method

.method static synthetic access$802(Landroid/widget/VideoView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-boolean p1, p0, Landroid/widget/VideoView;->mAudioOnly:Z

    return p1
.end method

.method static synthetic access$900(Landroid/widget/VideoView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget v0, p0, Landroid/widget/VideoView;->mDuration:I

    return v0
.end method

.method static synthetic access$902(Landroid/widget/VideoView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput p1, p0, Landroid/widget/VideoView;->mDuration:I

    return p1
.end method

.method private attachMediaController()V
    .registers 4

    .prologue
    .line 391
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_28

    iget-object v1, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v1, :cond_28

    .line 392
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v1, p0}, Landroid/widget/MediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    .line 393
    invoke-virtual {p0}, Landroid/widget/VideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_29

    invoke-virtual {p0}, Landroid/widget/VideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    move-object v0, v1

    .line 395
    .local v0, anchorView:Landroid/view/View;
    :goto_1c
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v1, v0}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    .line 396
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    iget-boolean v2, p0, Landroid/widget/VideoView;->mIsPrepared:Z

    invoke-virtual {v1, v2}, Landroid/widget/MediaController;->setEnabled(Z)V

    .line 398
    .end local v0           #anchorView:Landroid/view/View;
    :cond_28
    return-void

    :cond_29
    move-object v0, p0

    .line 393
    goto :goto_1c
.end method

.method private initVideoView()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 157
    iput v0, p0, Landroid/widget/VideoView;->mVideoWidth:I

    .line 158
    iput v0, p0, Landroid/widget/VideoView;->mVideoHeight:I

    .line 159
    invoke-virtual {p0}, Landroid/widget/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/VideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 160
    invoke-virtual {p0}, Landroid/widget/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 161
    invoke-virtual {p0, v2}, Landroid/widget/VideoView;->setFocusable(Z)V

    .line 162
    invoke-virtual {p0, v2}, Landroid/widget/VideoView;->setFocusableInTouchMode(Z)V

    .line 163
    invoke-virtual {p0}, Landroid/widget/VideoView;->requestFocus()Z

    .line 164
    return-void
.end method

.method private openVideo()V
    .registers 13

    .prologue
    const-string v11, "Unable to open content: "

    .line 249
    iget-object v8, p0, Landroid/widget/VideoView;->mUri:Landroid/net/Uri;

    if-eqz v8, :cond_a

    iget-object v8, p0, Landroid/widget/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v8, :cond_b

    .line 380
    :cond_a
    :goto_a
    return-void

    .line 257
    :cond_b
    const/4 v4, 0x0

    .line 258
    .local v4, mDrmtype:I
    const/4 v1, 0x0

    .line 261
    .local v1, filepath:Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    const-string v8, "com.android.music.musicservicecommand"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 262
    .local v2, i:Landroid/content/Intent;
    const-string v8, "command"

    const-string v9, "pause"

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 263
    iget-object v8, p0, Landroid/widget/VideoView;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 265
    iget-object v8, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v8, :cond_31

    .line 266
    iget-object v8, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v8}, Landroid/media/MediaPlayer;->reset()V

    .line 267
    iget-object v8, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v8}, Landroid/media/MediaPlayer;->release()V

    .line 268
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 271
    :cond_31
    :try_start_31
    new-instance v8, Landroid/media/MediaPlayer;

    invoke-direct {v8}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v8, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 272
    iget-object v8, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v9, p0, Landroid/widget/VideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v8, v9}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 273
    iget-object v8, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v9, p0, Landroid/widget/VideoView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    invoke-virtual {v8, v9}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 275
    iget-object v8, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v9, p0, Landroid/widget/VideoView;->mSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    invoke-virtual {v8, v9}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 276
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/widget/VideoView;->mIsPrepared:Z

    .line 277
    iget-object v8, p0, Landroid/widget/VideoView;->TAG:Ljava/lang/String;

    const-string v9, "reset duration to -1 in openVideo"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    const/4 v8, -0x1

    iput v8, p0, Landroid/widget/VideoView;->mDuration:I

    .line 281
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/widget/VideoView;->mAudioOnly:Z

    .line 282
    const/4 v3, 0x0

    .line 283
    .local v3, mDrmContentSession:Landroid/lge/lgdrm/DrmContentSession;
    iget-object v8, p0, Landroid/widget/VideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    .line 286
    .local v7, uripath:Ljava/lang/String;
    const-string v8, "content://media"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_74

    const-string v8, "content://mms"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_10f

    .line 288
    :cond_74
    iget-object v8, p0, Landroid/widget/VideoView;->mContext:Landroid/content/Context;

    iget-object v9, p0, Landroid/widget/VideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {p0, v8, v9}, Landroid/widget/VideoView;->getFilepathFromContentUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 290
    if-nez v1, :cond_ce

    .line 291
    const v5, 0x1040011

    .line 292
    .local v5, messageId:I
    iget-object v8, p0, Landroid/widget/VideoView;->TAG:Ljava/lang/String;

    const-string v9, "filepath value is null"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    new-instance v8, Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Landroid/widget/VideoView;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v9, 0x1040012

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x1040010

    new-instance v10, Landroid/widget/VideoView$1;

    invoke-direct {v10, p0}, Landroid/widget/VideoView$1;-><init>(Landroid/widget/VideoView;)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_ae
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_ae} :catch_b0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_31 .. :try_end_ae} :catch_15b

    goto/16 :goto_a

    .line 373
    .end local v3           #mDrmContentSession:Landroid/lge/lgdrm/DrmContentSession;
    .end local v5           #messageId:I
    .end local v7           #uripath:Ljava/lang/String;
    :catch_b0
    move-exception v8

    move-object v0, v8

    .line 374
    .local v0, ex:Ljava/io/IOException;
    iget-object v8, p0, Landroid/widget/VideoView;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to open content: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Landroid/widget/VideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_a

    .line 309
    .end local v0           #ex:Ljava/io/IOException;
    .restart local v3       #mDrmContentSession:Landroid/lge/lgdrm/DrmContentSession;
    .restart local v7       #uripath:Ljava/lang/String;
    :cond_ce
    :try_start_ce
    invoke-static {v1}, Landroid/lge/lgdrm/DrmManager;->isDRM(Ljava/lang/String;)I

    move-result v4

    .line 310
    iget-object v8, p0, Landroid/widget/VideoView;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "openVideo!! path = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ea
    .catch Ljava/io/IOException; {:try_start_ce .. :try_end_ea} :catch_b0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_ce .. :try_end_ea} :catch_15b

    .line 312
    const/16 v8, 0x51

    if-lt v4, v8, :cond_10f

    const/16 v8, 0x5000

    if-gt v4, v8, :cond_10f

    .line 316
    :try_start_f2
    iget-object v8, p0, Landroid/widget/VideoView;->TAG:Ljava/lang/String;

    const-string v9, "Need to consume!!"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    iget-object v8, p0, Landroid/widget/VideoView;->mContext:Landroid/content/Context;

    if-eqz v8, :cond_1a5

    .line 319
    iget-object v8, p0, Landroid/widget/VideoView;->mContext:Landroid/content/Context;

    invoke-static {v1, v8}, Landroid/lge/lgdrm/DrmManager;->createContentSession(Ljava/lang/String;Landroid/content/Context;)Landroid/lge/lgdrm/DrmContentSession;

    move-result-object v3

    .line 320
    if-nez v3, :cond_179

    .line 322
    iget-object v8, p0, Landroid/widget/VideoView;->TAG:Ljava/lang/String;

    const-string v9, "Creating DrmContentSession is not successful!!"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10c
    .catch Ljava/lang/Exception; {:try_start_f2 .. :try_end_10c} :catch_10e
    .catch Ljava/io/IOException; {:try_start_f2 .. :try_end_10c} :catch_b0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f2 .. :try_end_10c} :catch_15b

    goto/16 :goto_a

    .line 342
    :catch_10e
    move-exception v8

    .line 348
    :cond_10f
    :goto_10f
    :try_start_10f
    iget-object v8, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v9, p0, Landroid/widget/VideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v8, v9}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 349
    iget-object v8, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v9, p0, Landroid/widget/VideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v8, v9}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 350
    iget-object v8, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v9, p0, Landroid/widget/VideoView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {v8, v9}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 351
    const/4 v8, 0x0

    iput v8, p0, Landroid/widget/VideoView;->mCurrentBufferPercentage:I

    .line 354
    if-lez v4, :cond_1ae

    .line 356
    iget-object v8, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v9, p0, Landroid/widget/VideoView;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v9, v3, v1}, Landroid/media/MediaPlayer;->setDataSourceDrm(Landroid/content/Context;Landroid/lge/lgdrm/DrmContentSession;Ljava/lang/String;)I

    .line 364
    :goto_130
    iget-object v8, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v9, p0, Landroid/widget/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v8, v9}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 365
    iget-object v8, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 366
    iget-object v8, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 367
    iget v8, p0, Landroid/widget/VideoView;->mSeekWhenPrepared:I

    if-eqz v8, :cond_151

    .line 368
    iget-object v8, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget v9, p0, Landroid/widget/VideoView;->mSeekWhenPrepared:I

    invoke-virtual {v8, v9}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 369
    const/4 v8, 0x0

    iput v8, p0, Landroid/widget/VideoView;->mSeekWhenPrepared:I

    .line 371
    :cond_151
    iget-object v8, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v8}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 372
    invoke-direct {p0}, Landroid/widget/VideoView;->attachMediaController()V
    :try_end_159
    .catch Ljava/io/IOException; {:try_start_10f .. :try_end_159} :catch_b0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10f .. :try_end_159} :catch_15b

    goto/16 :goto_a

    .line 376
    .end local v3           #mDrmContentSession:Landroid/lge/lgdrm/DrmContentSession;
    .end local v7           #uripath:Ljava/lang/String;
    :catch_15b
    move-exception v8

    move-object v0, v8

    .line 377
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    iget-object v8, p0, Landroid/widget/VideoView;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to open content: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Landroid/widget/VideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_a

    .line 327
    .end local v0           #ex:Ljava/lang/IllegalArgumentException;
    .restart local v3       #mDrmContentSession:Landroid/lge/lgdrm/DrmContentSession;
    .restart local v7       #uripath:Ljava/lang/String;
    :cond_179
    const/4 v6, 0x0

    .line 328
    .local v6, result:I
    :try_start_17a
    iget-object v8, p0, Landroid/widget/VideoView;->TAG:Ljava/lang/String;

    const-string v9, "Creating DrmContentSession is successful!!"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {v3, v8, v9}, Landroid/lge/lgdrm/DrmContentSession;->judgeRight(IZ)I

    move-result v6

    .line 330
    iget-object v8, p0, Landroid/widget/VideoView;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "result = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10f

    .line 336
    .end local v6           #result:I
    :cond_1a5
    iget-object v8, p0, Landroid/widget/VideoView;->TAG:Ljava/lang/String;

    const-string v9, "context is null!!"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1ac
    .catch Ljava/lang/Exception; {:try_start_17a .. :try_end_1ac} :catch_10e
    .catch Ljava/io/IOException; {:try_start_17a .. :try_end_1ac} :catch_b0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_17a .. :try_end_1ac} :catch_15b

    goto/16 :goto_a

    .line 360
    :cond_1ae
    :try_start_1ae
    iget-object v8, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v9, p0, Landroid/widget/VideoView;->mContext:Landroid/content/Context;

    iget-object v10, p0, Landroid/widget/VideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v8, v9, v10}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_1b7
    .catch Ljava/io/IOException; {:try_start_1ae .. :try_end_1b7} :catch_b0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1ae .. :try_end_1b7} :catch_15b

    goto/16 :goto_130
.end method

.method private toggleMediaControlsVisiblity()V
    .registers 2

    .prologue
    .line 727
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 728
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 732
    :goto_d
    return-void

    .line 730
    :cond_e
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    goto :goto_d
.end method


# virtual methods
.method public getBufferPercentage()I
    .registers 2

    .prologue
    .line 792
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_7

    .line 793
    iget v0, p0, Landroid/widget/VideoView;->mCurrentBufferPercentage:I

    .line 795
    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public getCurrentPosition()I
    .registers 2

    .prologue
    .line 766
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Landroid/widget/VideoView;->mIsPrepared:Z

    if-eqz v0, :cond_f

    .line 767
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 769
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public getDuration()I
    .registers 2

    .prologue
    .line 754
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1a

    iget-boolean v0, p0, Landroid/widget/VideoView;->mIsPrepared:Z

    if-eqz v0, :cond_1a

    .line 755
    iget v0, p0, Landroid/widget/VideoView;->mDuration:I

    if-lez v0, :cond_f

    .line 756
    iget v0, p0, Landroid/widget/VideoView;->mDuration:I

    .line 762
    :goto_e
    return v0

    .line 758
    :cond_f
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    iput v0, p0, Landroid/widget/VideoView;->mDuration:I

    .line 759
    iget v0, p0, Landroid/widget/VideoView;->mDuration:I

    goto :goto_e

    .line 761
    :cond_1a
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/VideoView;->mDuration:I

    .line 762
    iget v0, p0, Landroid/widget/VideoView;->mDuration:I

    goto :goto_e
.end method

.method public getFilepathFromContentUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .registers 14
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 206
    const/4 v8, 0x0

    .line 207
    .local v8, filepath:Ljava/lang/String;
    const/4 v6, 0x0

    .line 208
    .local v6, c:Landroid/database/Cursor;
    const/4 v0, 0x0

    .line 211
    .local v0, testProvider:Landroid/content/IContentProvider;
    :try_start_3
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    .line 212
    .local v10, resolver:Landroid/content/ContentResolver;
    invoke-virtual {v10, p2}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object v0

    .line 213
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "_data"

    aput-object v3, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_1a} :catch_65

    move-result-object v6

    .line 218
    .end local v10           #resolver:Landroid/content/ContentResolver;
    :goto_1b
    if-eqz v6, :cond_2e

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    move v7, v1

    .line 219
    .local v7, count:I
    :goto_22
    const/4 v1, 0x1

    if-eq v7, v1, :cond_31

    .line 223
    if-eqz v6, :cond_2a

    .line 225
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 228
    :cond_2a
    if-nez v7, :cond_31

    .line 230
    const/4 v1, 0x0

    .line 243
    :goto_2d
    return-object v1

    .line 218
    .end local v7           #count:I
    :cond_2e
    const/4 v1, 0x0

    move v7, v1

    goto :goto_22

    .line 233
    .restart local v7       #count:I
    :cond_31
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 234
    const-string v1, "_data"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 235
    .local v9, i:I
    if-ltz v9, :cond_48

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v8, v1

    .line 236
    :goto_41
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 237
    if-nez v8, :cond_4b

    .line 239
    const/4 v1, 0x0

    goto :goto_2d

    .line 235
    :cond_48
    const/4 v1, 0x0

    move-object v8, v1

    goto :goto_41

    .line 242
    :cond_4b
    iget-object v1, p0, Landroid/widget/VideoView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFilepathFromContentUri Media _data result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v8

    .line 243
    goto :goto_2d

    .line 215
    .end local v7           #count:I
    .end local v9           #i:I
    :catch_65
    move-exception v1

    goto :goto_1b
.end method

.method public isPlaying()Z
    .registers 2

    .prologue
    .line 785
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Landroid/widget/VideoView;->mIsPrepared:Z

    if-eqz v0, :cond_f

    .line 786
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    .line 788
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 9
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v5, 0x55

    const/16 v4, 0x4f

    const/4 v3, 0x1

    .line 680
    iget-boolean v0, p0, Landroid/widget/VideoView;->mIsPrepared:Z

    if-eqz v0, :cond_9e

    const/4 v0, 0x4

    if-eq p1, v0, :cond_9e

    const/16 v0, 0x18

    if-eq p1, v0, :cond_9e

    const/16 v0, 0x19

    if-eq p1, v0, :cond_9e

    const/16 v0, 0x52

    if-eq p1, v0, :cond_9e

    const/4 v0, 0x5

    if-eq p1, v0, :cond_9e

    const/4 v0, 0x6

    if-eq p1, v0, :cond_9e

    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_9e

    iget-object v0, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_9e

    .line 691
    iget-object v0, p0, Landroid/widget/VideoView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Check live streaming "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/widget/VideoView;->mIsStreaming:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/VideoView;->mDuration:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    iget-boolean v0, p0, Landroid/widget/VideoView;->mIsStreaming:Z

    if-ne v0, v3, :cond_6b

    iget v0, p0, Landroid/widget/VideoView;->mDuration:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6b

    .line 694
    if-eq p1, v4, :cond_69

    if-eq p1, v5, :cond_69

    const/16 v0, 0x14

    if-eq p1, v0, :cond_69

    const/16 v0, 0x13

    if-eq p1, v0, :cond_69

    const/16 v0, 0x16

    if-eq p1, v0, :cond_69

    const/16 v0, 0x15

    if-ne p1, v0, :cond_6b

    :cond_69
    move v0, v3

    .line 723
    :goto_6a
    return v0

    .line 704
    :cond_6b
    if-eq p1, v4, :cond_6f

    if-ne p1, v5, :cond_8a

    .line 706
    :cond_6f
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_81

    .line 707
    invoke-virtual {p0}, Landroid/widget/VideoView;->pause()V

    .line 708
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    :goto_7f
    move v0, v3

    .line 713
    goto :goto_6a

    .line 710
    :cond_81
    invoke-virtual {p0}, Landroid/widget/VideoView;->start()V

    .line 711
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    goto :goto_7f

    .line 714
    :cond_8a
    const/16 v0, 0x56

    if-ne p1, v0, :cond_a3

    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_a3

    .line 716
    invoke-virtual {p0}, Landroid/widget/VideoView;->pause()V

    .line 717
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    .line 723
    :cond_9e
    :goto_9e
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_6a

    .line 719
    :cond_a3
    invoke-direct {p0}, Landroid/widget/VideoView;->toggleMediaControlsVisiblity()V

    goto :goto_9e
.end method

.method protected onMeasure(II)V
    .registers 7
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 108
    iget v2, p0, Landroid/widget/VideoView;->mVideoWidth:I

    invoke-static {v2, p1}, Landroid/widget/VideoView;->getDefaultSize(II)I

    move-result v1

    .line 109
    .local v1, width:I
    iget v2, p0, Landroid/widget/VideoView;->mVideoHeight:I

    invoke-static {v2, p2}, Landroid/widget/VideoView;->getDefaultSize(II)I

    move-result v0

    .line 110
    .local v0, height:I
    iget v2, p0, Landroid/widget/VideoView;->mVideoWidth:I

    if-lez v2, :cond_23

    iget v2, p0, Landroid/widget/VideoView;->mVideoHeight:I

    if-lez v2, :cond_23

    .line 111
    iget v2, p0, Landroid/widget/VideoView;->mVideoWidth:I

    mul-int/2addr v2, v0

    iget v3, p0, Landroid/widget/VideoView;->mVideoHeight:I

    mul-int/2addr v3, v1

    if-le v2, v3, :cond_27

    .line 113
    iget v2, p0, Landroid/widget/VideoView;->mVideoHeight:I

    mul-int/2addr v2, v1

    iget v3, p0, Landroid/widget/VideoView;->mVideoWidth:I

    div-int v0, v2, v3

    .line 124
    :cond_23
    :goto_23
    invoke-virtual {p0, v1, v0}, Landroid/widget/VideoView;->setMeasuredDimension(II)V

    .line 125
    return-void

    .line 114
    :cond_27
    iget v2, p0, Landroid/widget/VideoView;->mVideoWidth:I

    mul-int/2addr v2, v0

    iget v3, p0, Landroid/widget/VideoView;->mVideoHeight:I

    mul-int/2addr v3, v1

    if-ge v2, v3, :cond_23

    .line 116
    iget v2, p0, Landroid/widget/VideoView;->mVideoWidth:I

    mul-int/2addr v2, v0

    iget v3, p0, Landroid/widget/VideoView;->mVideoHeight:I

    div-int v1, v2, v3

    goto :goto_23
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "ev"

    .prologue
    .line 663
    iget-boolean v0, p0, Landroid/widget/VideoView;->mIsPrepared:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_f

    .line 664
    invoke-direct {p0}, Landroid/widget/VideoView;->toggleMediaControlsVisiblity()V

    .line 666
    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "ev"

    .prologue
    .line 671
    iget-boolean v0, p0, Landroid/widget/VideoView;->mIsPrepared:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_f

    .line 672
    invoke-direct {p0}, Landroid/widget/VideoView;->toggleMediaControlsVisiblity()V

    .line 674
    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public pause()V
    .registers 2

    .prologue
    .line 745
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_15

    iget-boolean v0, p0, Landroid/widget/VideoView;->mIsPrepared:Z

    if-eqz v0, :cond_15

    .line 746
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 747
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 750
    :cond_15
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/VideoView;->mStartWhenPrepared:Z

    .line 751
    return-void
.end method

.method public resolveAdjustedSize(II)I
    .registers 6
    .parameter "desiredSize"
    .parameter "measureSpec"

    .prologue
    .line 128
    move v0, p1

    .line 129
    .local v0, result:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 130
    .local v1, specMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 132
    .local v2, specSize:I
    sparse-switch v1, :sswitch_data_16

    .line 153
    :goto_c
    return v0

    .line 137
    :sswitch_d
    move v0, p1

    .line 138
    goto :goto_c

    .line 145
    :sswitch_f
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 146
    goto :goto_c

    .line 150
    :sswitch_14
    move v0, v2

    goto :goto_c

    .line 132
    :sswitch_data_16
    .sparse-switch
        -0x80000000 -> :sswitch_f
        0x0 -> :sswitch_d
        0x40000000 -> :sswitch_14
    .end sparse-switch
.end method

.method public seekTo(I)V
    .registers 4
    .parameter "msec"

    .prologue
    .line 773
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_17

    iget-boolean v0, p0, Landroid/widget/VideoView;->mIsPrepared:Z

    if-eqz v0, :cond_17

    .line 775
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/VideoView;->mSeekWaiting:Z

    .line 776
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->setPuaseEanbled(Z)V

    .line 778
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 782
    :goto_16
    return-void

    .line 780
    :cond_17
    iput p1, p0, Landroid/widget/VideoView;->mSeekWhenPrepared:I

    goto :goto_16
.end method

.method public setMediaController(Landroid/widget/MediaController;)V
    .registers 3
    .parameter "controller"

    .prologue
    .line 383
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_9

    .line 384
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 386
    :cond_9
    iput-object p1, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    .line 387
    invoke-direct {p0}, Landroid/widget/VideoView;->attachMediaController()V

    .line 388
    return-void
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .registers 2
    .parameter "l"

    .prologue
    .line 605
    iput-object p1, p0, Landroid/widget/VideoView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 606
    return-void
.end method

.method public setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .registers 2
    .parameter "l"

    .prologue
    .line 618
    iput-object p1, p0, Landroid/widget/VideoView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 619
    return-void
.end method

.method public setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .registers 2
    .parameter "l"

    .prologue
    .line 594
    iput-object p1, p0, Landroid/widget/VideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 595
    return-void
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .registers 3
    .parameter "path"

    .prologue
    .line 167
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 168
    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;)V
    .registers 7
    .parameter "uri"

    .prologue
    const/4 v4, 0x0

    .line 173
    iput-boolean v4, p0, Landroid/widget/VideoView;->mIsStreaming:Z

    .line 174
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, url:Ljava/lang/String;
    iget-object v1, p0, Landroid/widget/VideoView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setVideoURI "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    const-string v1, "rtsp://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2f

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 178
    :cond_2f
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/VideoView;->mIsStreaming:Z

    .line 182
    :cond_32
    iput-object p1, p0, Landroid/widget/VideoView;->mUri:Landroid/net/Uri;

    .line 183
    iput-boolean v4, p0, Landroid/widget/VideoView;->mStartWhenPrepared:Z

    .line 184
    iput v4, p0, Landroid/widget/VideoView;->mSeekWhenPrepared:I

    .line 185
    invoke-direct {p0}, Landroid/widget/VideoView;->openVideo()V

    .line 186
    invoke-virtual {p0}, Landroid/widget/VideoView;->requestLayout()V

    .line 187
    invoke-virtual {p0}, Landroid/widget/VideoView;->invalidate()V

    .line 188
    return-void
.end method

.method public start()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 735
    iput-boolean v1, p0, Landroid/widget/VideoView;->mIsPlaybackCompleted:Z

    .line 736
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Landroid/widget/VideoView;->mIsPrepared:Z

    if-eqz v0, :cond_13

    .line 737
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 738
    iput-boolean v1, p0, Landroid/widget/VideoView;->mStartWhenPrepared:Z

    .line 742
    :goto_12
    return-void

    .line 740
    :cond_13
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/VideoView;->mStartWhenPrepared:Z

    goto :goto_12
.end method

.method public stopPlayback()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 191
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_21

    .line 192
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 193
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 194
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 196
    iput v1, p0, Landroid/widget/VideoView;->mVideoWidth:I

    .line 197
    iput v1, p0, Landroid/widget/VideoView;->mVideoHeight:I

    .line 198
    invoke-virtual {p0}, Landroid/widget/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget v1, p0, Landroid/widget/VideoView;->mVideoWidth:I

    iget v2, p0, Landroid/widget/VideoView;->mVideoHeight:I

    invoke-interface {v0, v1, v2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 200
    :cond_21
    return-void
.end method
