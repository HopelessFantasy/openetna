.class public Landroid/widget/MediaController;
.super Landroid/widget/FrameLayout;
.source "MediaController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/MediaController$MediaPlayerControl;
    }
.end annotation


# static fields
.field private static final FADE_OUT:I = 0x1

.field private static final SHOW_PROGRESS:I = 0x2

.field private static final sDefaultTimeout:I = 0xbb8


# instance fields
.field private mAnchor:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mCurrentTime:Landroid/widget/TextView;

.field private mDecor:Landroid/view/View;

.field private mDragging:Z

.field private mDuration:I

.field private mEndTime:Landroid/widget/TextView;

.field private mFfwdButton:Landroid/widget/ImageButton;

.field private mFfwdListener:Landroid/view/View$OnClickListener;

.field mFormatBuilder:Ljava/lang/StringBuilder;

.field mFormatter:Ljava/util/Formatter;

.field private mFromXml:Z

.field private mHandler:Landroid/os/Handler;

.field private mIsStreaming:Z

.field private mKeepPos:I

.field private mListenersSet:Z

.field private mNextButton:Landroid/widget/ImageButton;

.field private mNextListener:Landroid/view/View$OnClickListener;

.field private mPauseButton:Landroid/widget/ImageButton;

.field private mPauseListener:Landroid/view/View$OnClickListener;

.field private mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

.field private mPrevButton:Landroid/widget/ImageButton;

.field private mPrevListener:Landroid/view/View$OnClickListener;

.field private mProgress:Landroid/widget/ProgressBar;

.field private mRewButton:Landroid/widget/ImageButton;

.field private mRewListener:Landroid/view/View$OnClickListener;

.field private mRoot:Landroid/view/View;

.field private mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mShowing:Z

.field private mTouchListener:Landroid/view/View$OnTouchListener;

.field private mUseFastForward:Z

.field private mWindow:Landroid/view/Window;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 126
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 152
    new-instance v0, Landroid/widget/MediaController$1;

    invoke-direct {v0, p0}, Landroid/widget/MediaController$1;-><init>(Landroid/widget/MediaController;)V

    iput-object v0, p0, Landroid/widget/MediaController;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 335
    new-instance v0, Landroid/widget/MediaController$2;

    invoke-direct {v0, p0}, Landroid/widget/MediaController$2;-><init>(Landroid/widget/MediaController;)V

    iput-object v0, p0, Landroid/widget/MediaController;->mHandler:Landroid/os/Handler;

    .line 440
    new-instance v0, Landroid/widget/MediaController$3;

    invoke-direct {v0, p0}, Landroid/widget/MediaController$3;-><init>(Landroid/widget/MediaController;)V

    iput-object v0, p0, Landroid/widget/MediaController;->mPauseListener:Landroid/view/View$OnClickListener;

    .line 491
    new-instance v0, Landroid/widget/MediaController$4;

    invoke-direct {v0, p0}, Landroid/widget/MediaController$4;-><init>(Landroid/widget/MediaController;)V

    iput-object v0, p0, Landroid/widget/MediaController;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 582
    new-instance v0, Landroid/widget/MediaController$5;

    invoke-direct {v0, p0}, Landroid/widget/MediaController$5;-><init>(Landroid/widget/MediaController;)V

    iput-object v0, p0, Landroid/widget/MediaController;->mRewListener:Landroid/view/View$OnClickListener;

    .line 593
    new-instance v0, Landroid/widget/MediaController$6;

    invoke-direct {v0, p0}, Landroid/widget/MediaController$6;-><init>(Landroid/widget/MediaController;)V

    iput-object v0, p0, Landroid/widget/MediaController;->mFfwdListener:Landroid/view/View$OnClickListener;

    .line 127
    iput-object p1, p0, Landroid/widget/MediaController;->mContext:Landroid/content/Context;

    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/MediaController;->mUseFastForward:Z

    .line 129
    invoke-direct {p0}, Landroid/widget/MediaController;->initFloatingWindow()V

    .line 130
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x1

    .line 105
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 152
    new-instance v0, Landroid/widget/MediaController$1;

    invoke-direct {v0, p0}, Landroid/widget/MediaController$1;-><init>(Landroid/widget/MediaController;)V

    iput-object v0, p0, Landroid/widget/MediaController;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 335
    new-instance v0, Landroid/widget/MediaController$2;

    invoke-direct {v0, p0}, Landroid/widget/MediaController$2;-><init>(Landroid/widget/MediaController;)V

    iput-object v0, p0, Landroid/widget/MediaController;->mHandler:Landroid/os/Handler;

    .line 440
    new-instance v0, Landroid/widget/MediaController$3;

    invoke-direct {v0, p0}, Landroid/widget/MediaController$3;-><init>(Landroid/widget/MediaController;)V

    iput-object v0, p0, Landroid/widget/MediaController;->mPauseListener:Landroid/view/View$OnClickListener;

    .line 491
    new-instance v0, Landroid/widget/MediaController$4;

    invoke-direct {v0, p0}, Landroid/widget/MediaController$4;-><init>(Landroid/widget/MediaController;)V

    iput-object v0, p0, Landroid/widget/MediaController;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 582
    new-instance v0, Landroid/widget/MediaController$5;

    invoke-direct {v0, p0}, Landroid/widget/MediaController$5;-><init>(Landroid/widget/MediaController;)V

    iput-object v0, p0, Landroid/widget/MediaController;->mRewListener:Landroid/view/View$OnClickListener;

    .line 593
    new-instance v0, Landroid/widget/MediaController$6;

    invoke-direct {v0, p0}, Landroid/widget/MediaController$6;-><init>(Landroid/widget/MediaController;)V

    iput-object v0, p0, Landroid/widget/MediaController;->mFfwdListener:Landroid/view/View$OnClickListener;

    .line 106
    iput-object p0, p0, Landroid/widget/MediaController;->mRoot:Landroid/view/View;

    .line 107
    iput-object p1, p0, Landroid/widget/MediaController;->mContext:Landroid/content/Context;

    .line 108
    iput-boolean v1, p0, Landroid/widget/MediaController;->mUseFastForward:Z

    .line 109
    iput-boolean v1, p0, Landroid/widget/MediaController;->mFromXml:Z

    .line 110
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 4
    .parameter "context"
    .parameter "useFastForward"

    .prologue
    .line 119
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 152
    new-instance v0, Landroid/widget/MediaController$1;

    invoke-direct {v0, p0}, Landroid/widget/MediaController$1;-><init>(Landroid/widget/MediaController;)V

    iput-object v0, p0, Landroid/widget/MediaController;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 335
    new-instance v0, Landroid/widget/MediaController$2;

    invoke-direct {v0, p0}, Landroid/widget/MediaController$2;-><init>(Landroid/widget/MediaController;)V

    iput-object v0, p0, Landroid/widget/MediaController;->mHandler:Landroid/os/Handler;

    .line 440
    new-instance v0, Landroid/widget/MediaController$3;

    invoke-direct {v0, p0}, Landroid/widget/MediaController$3;-><init>(Landroid/widget/MediaController;)V

    iput-object v0, p0, Landroid/widget/MediaController;->mPauseListener:Landroid/view/View$OnClickListener;

    .line 491
    new-instance v0, Landroid/widget/MediaController$4;

    invoke-direct {v0, p0}, Landroid/widget/MediaController$4;-><init>(Landroid/widget/MediaController;)V

    iput-object v0, p0, Landroid/widget/MediaController;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 582
    new-instance v0, Landroid/widget/MediaController$5;

    invoke-direct {v0, p0}, Landroid/widget/MediaController$5;-><init>(Landroid/widget/MediaController;)V

    iput-object v0, p0, Landroid/widget/MediaController;->mRewListener:Landroid/view/View$OnClickListener;

    .line 593
    new-instance v0, Landroid/widget/MediaController$6;

    invoke-direct {v0, p0}, Landroid/widget/MediaController$6;-><init>(Landroid/widget/MediaController;)V

    iput-object v0, p0, Landroid/widget/MediaController;->mFfwdListener:Landroid/view/View$OnClickListener;

    .line 120
    iput-object p1, p0, Landroid/widget/MediaController;->mContext:Landroid/content/Context;

    .line 121
    iput-boolean p2, p0, Landroid/widget/MediaController;->mUseFastForward:Z

    .line 122
    invoke-direct {p0}, Landroid/widget/MediaController;->initFloatingWindow()V

    .line 123
    return-void
.end method

.method static synthetic access$000(Landroid/widget/MediaController;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Landroid/widget/MediaController;->mShowing:Z

    return v0
.end method

.method static synthetic access$100(Landroid/widget/MediaController;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Landroid/widget/MediaController;->setProgress()I

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Landroid/widget/MediaController;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Landroid/widget/MediaController;->mCurrentTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/widget/MediaController;I)Ljava/lang/String;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Landroid/widget/MediaController;->stringForTime(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Landroid/widget/MediaController;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Landroid/widget/MediaController;->updatePausePlay()V

    return-void
.end method

.method static synthetic access$200(Landroid/widget/MediaController;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 69
    iget v0, p0, Landroid/widget/MediaController;->mKeepPos:I

    return v0
.end method

.method static synthetic access$202(Landroid/widget/MediaController;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput p1, p0, Landroid/widget/MediaController;->mKeepPos:I

    return p1
.end method

.method static synthetic access$300(Landroid/widget/MediaController;)Landroid/widget/ProgressBar;
    .registers 2
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Landroid/widget/MediaController;->mProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$400(Landroid/widget/MediaController;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Landroid/widget/MediaController;->mDragging:Z

    return v0
.end method

.method static synthetic access$402(Landroid/widget/MediaController;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-boolean p1, p0, Landroid/widget/MediaController;->mDragging:Z

    return p1
.end method

.method static synthetic access$500(Landroid/widget/MediaController;)Landroid/widget/MediaController$MediaPlayerControl;
    .registers 2
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    return-object v0
.end method

.method static synthetic access$600(Landroid/widget/MediaController;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Landroid/widget/MediaController;->mIsStreaming:Z

    return v0
.end method

.method static synthetic access$700(Landroid/widget/MediaController;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 69
    iget v0, p0, Landroid/widget/MediaController;->mDuration:I

    return v0
.end method

.method static synthetic access$800(Landroid/widget/MediaController;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Landroid/widget/MediaController;->doPauseResume()V

    return-void
.end method

.method static synthetic access$900(Landroid/widget/MediaController;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Landroid/widget/MediaController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private doPauseResume()V
    .registers 2

    .prologue
    .line 472
    iget-object v0, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v0}, Landroid/widget/MediaController$MediaPlayerControl;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 473
    iget-object v0, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v0}, Landroid/widget/MediaController$MediaPlayerControl;->pause()V

    .line 477
    :goto_d
    invoke-direct {p0}, Landroid/widget/MediaController;->updatePausePlay()V

    .line 478
    return-void

    .line 475
    :cond_11
    iget-object v0, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v0}, Landroid/widget/MediaController$MediaPlayerControl;->start()V

    goto :goto_d
.end method

.method private initControllerView(Landroid/view/View;)V
    .registers 7
    .parameter "v"

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 202
    const v1, 0x10201af

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    .line 203
    iget-object v1, p0, Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_1e

    .line 204
    iget-object v1, p0, Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->requestFocus()Z

    .line 205
    iget-object v1, p0, Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Landroid/widget/MediaController;->mPauseListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    :cond_1e
    const v1, 0x10201b0

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Landroid/widget/MediaController;->mFfwdButton:Landroid/widget/ImageButton;

    .line 209
    iget-object v1, p0, Landroid/widget/MediaController;->mFfwdButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_42

    .line 210
    iget-object v1, p0, Landroid/widget/MediaController;->mFfwdButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Landroid/widget/MediaController;->mFfwdListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    iget-boolean v1, p0, Landroid/widget/MediaController;->mFromXml:Z

    if-nez v1, :cond_42

    .line 212
    iget-object v1, p0, Landroid/widget/MediaController;->mFfwdButton:Landroid/widget/ImageButton;

    iget-boolean v2, p0, Landroid/widget/MediaController;->mUseFastForward:Z

    if-eqz v2, :cond_f1

    move v2, v4

    :goto_3f
    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 216
    :cond_42
    const v1, 0x10201ae

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Landroid/widget/MediaController;->mRewButton:Landroid/widget/ImageButton;

    .line 217
    iget-object v1, p0, Landroid/widget/MediaController;->mRewButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_66

    .line 218
    iget-object v1, p0, Landroid/widget/MediaController;->mRewButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Landroid/widget/MediaController;->mRewListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    iget-boolean v1, p0, Landroid/widget/MediaController;->mFromXml:Z

    if-nez v1, :cond_66

    .line 220
    iget-object v1, p0, Landroid/widget/MediaController;->mRewButton:Landroid/widget/ImageButton;

    iget-boolean v2, p0, Landroid/widget/MediaController;->mUseFastForward:Z

    if-eqz v2, :cond_f4

    move v2, v4

    :goto_63
    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 225
    :cond_66
    const v1, 0x10201b1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Landroid/widget/MediaController;->mNextButton:Landroid/widget/ImageButton;

    .line 226
    iget-object v1, p0, Landroid/widget/MediaController;->mNextButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_82

    iget-boolean v1, p0, Landroid/widget/MediaController;->mFromXml:Z

    if-nez v1, :cond_82

    iget-boolean v1, p0, Landroid/widget/MediaController;->mListenersSet:Z

    if-nez v1, :cond_82

    .line 227
    iget-object v1, p0, Landroid/widget/MediaController;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 229
    :cond_82
    const v1, 0x10201ad

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Landroid/widget/MediaController;->mPrevButton:Landroid/widget/ImageButton;

    .line 230
    iget-object v1, p0, Landroid/widget/MediaController;->mPrevButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_9e

    iget-boolean v1, p0, Landroid/widget/MediaController;->mFromXml:Z

    if-nez v1, :cond_9e

    iget-boolean v1, p0, Landroid/widget/MediaController;->mListenersSet:Z

    if-nez v1, :cond_9e

    .line 231
    iget-object v1, p0, Landroid/widget/MediaController;->mPrevButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 234
    :cond_9e
    const v1, 0x10201b3

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Landroid/widget/MediaController;->mProgress:Landroid/widget/ProgressBar;

    .line 235
    iget-object v1, p0, Landroid/widget/MediaController;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_c3

    .line 236
    iget-object v1, p0, Landroid/widget/MediaController;->mProgress:Landroid/widget/ProgressBar;

    instance-of v1, v1, Landroid/widget/SeekBar;

    if-eqz v1, :cond_bc

    .line 237
    iget-object v0, p0, Landroid/widget/MediaController;->mProgress:Landroid/widget/ProgressBar;

    check-cast v0, Landroid/widget/SeekBar;

    .line 238
    .local v0, seeker:Landroid/widget/SeekBar;
    iget-object v1, p0, Landroid/widget/MediaController;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 240
    .end local v0           #seeker:Landroid/widget/SeekBar;
    :cond_bc
    iget-object v1, p0, Landroid/widget/MediaController;->mProgress:Landroid/widget/ProgressBar;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 243
    :cond_c3
    const v1, 0x1020059

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Landroid/widget/MediaController;->mEndTime:Landroid/widget/TextView;

    .line 244
    const v1, 0x10201b2

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Landroid/widget/MediaController;->mCurrentTime:Landroid/widget/TextView;

    .line 245
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Landroid/widget/MediaController;->mFormatBuilder:Ljava/lang/StringBuilder;

    .line 246
    new-instance v1, Ljava/util/Formatter;

    iget-object v2, p0, Landroid/widget/MediaController;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v1, p0, Landroid/widget/MediaController;->mFormatter:Ljava/util/Formatter;

    .line 248
    invoke-direct {p0}, Landroid/widget/MediaController;->installPrevNextListeners()V

    .line 249
    return-void

    :cond_f1
    move v2, v3

    .line 212
    goto/16 :goto_3f

    :cond_f4
    move v2, v3

    .line 220
    goto/16 :goto_63
.end method

.method private initFloatingWindow()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 133
    iget-object v0, p0, Landroid/widget/MediaController;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Landroid/widget/MediaController;->mWindowManager:Landroid/view/WindowManager;

    .line 134
    iget-object v0, p0, Landroid/widget/MediaController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/PolicyManager;->makeNewWindow(Landroid/content/Context;)Landroid/view/Window;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/MediaController;->mWindow:Landroid/view/Window;

    .line 135
    iget-object v0, p0, Landroid/widget/MediaController;->mWindow:Landroid/view/Window;

    iget-object v1, p0, Landroid/widget/MediaController;->mWindowManager:Landroid/view/WindowManager;

    invoke-virtual {v0, v1, v3, v3}, Landroid/view/Window;->setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Landroid/widget/MediaController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 137
    iget-object v0, p0, Landroid/widget/MediaController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/MediaController;->mDecor:Landroid/view/View;

    .line 138
    iget-object v0, p0, Landroid/widget/MediaController;->mDecor:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/MediaController;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 139
    iget-object v0, p0, Landroid/widget/MediaController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p0}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 140
    iget-object v0, p0, Landroid/widget/MediaController;->mWindow:Landroid/view/Window;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 144
    iget-object v0, p0, Landroid/widget/MediaController;->mWindow:Landroid/view/Window;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setVolumeControlStream(I)V

    .line 146
    invoke-virtual {p0, v2}, Landroid/widget/MediaController;->setFocusable(Z)V

    .line 147
    invoke-virtual {p0, v2}, Landroid/widget/MediaController;->setFocusableInTouchMode(Z)V

    .line 148
    const/high16 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/MediaController;->setDescendantFocusability(I)V

    .line 149
    invoke-virtual {p0}, Landroid/widget/MediaController;->requestFocus()Z

    .line 150
    return-void
.end method

.method private installPrevNextListeners()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 605
    iget-object v0, p0, Landroid/widget/MediaController;->mNextButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_17

    .line 606
    iget-object v0, p0, Landroid/widget/MediaController;->mNextButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Landroid/widget/MediaController;->mNextListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 607
    iget-object v0, p0, Landroid/widget/MediaController;->mNextButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Landroid/widget/MediaController;->mNextListener:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_2d

    move v1, v3

    :goto_14
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 610
    :cond_17
    iget-object v0, p0, Landroid/widget/MediaController;->mPrevButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2c

    .line 611
    iget-object v0, p0, Landroid/widget/MediaController;->mPrevButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Landroid/widget/MediaController;->mPrevListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 612
    iget-object v0, p0, Landroid/widget/MediaController;->mPrevButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Landroid/widget/MediaController;->mPrevListener:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_2f

    move v1, v3

    :goto_29
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 614
    :cond_2c
    return-void

    :cond_2d
    move v1, v2

    .line 607
    goto :goto_14

    :cond_2f
    move v1, v2

    .line 612
    goto :goto_29
.end method

.method private setProgress()I
    .registers 10

    .prologue
    .line 375
    iget-object v5, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    if-eqz v5, :cond_8

    iget-boolean v5, p0, Landroid/widget/MediaController;->mDragging:Z

    if-eqz v5, :cond_a

    .line 376
    :cond_8
    const/4 v5, 0x0

    .line 395
    :goto_9
    return v5

    .line 378
    :cond_a
    iget-object v5, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v5}, Landroid/widget/MediaController$MediaPlayerControl;->getCurrentPosition()I

    move-result v4

    .line 379
    .local v4, position:I
    iget-object v5, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v5}, Landroid/widget/MediaController$MediaPlayerControl;->getDuration()I

    move-result v0

    .line 380
    .local v0, duration:I
    iget-object v5, p0, Landroid/widget/MediaController;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v5, :cond_36

    .line 381
    if-lez v0, :cond_29

    .line 383
    const-wide/16 v5, 0x3e8

    int-to-long v7, v4

    mul-long/2addr v5, v7

    int-to-long v7, v0

    div-long v2, v5, v7

    .line 384
    .local v2, pos:J
    iget-object v5, p0, Landroid/widget/MediaController;->mProgress:Landroid/widget/ProgressBar;

    long-to-int v6, v2

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 386
    .end local v2           #pos:J
    :cond_29
    iget-object v5, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v5}, Landroid/widget/MediaController$MediaPlayerControl;->getBufferPercentage()I

    move-result v1

    .line 387
    .local v1, percent:I
    iget-object v5, p0, Landroid/widget/MediaController;->mProgress:Landroid/widget/ProgressBar;

    mul-int/lit8 v6, v1, 0xa

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 390
    .end local v1           #percent:I
    :cond_36
    iget-object v5, p0, Landroid/widget/MediaController;->mEndTime:Landroid/widget/TextView;

    if-eqz v5, :cond_43

    .line 391
    iget-object v5, p0, Landroid/widget/MediaController;->mEndTime:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Landroid/widget/MediaController;->stringForTime(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 392
    :cond_43
    iget-object v5, p0, Landroid/widget/MediaController;->mCurrentTime:Landroid/widget/TextView;

    if-eqz v5, :cond_50

    .line 393
    iget-object v5, p0, Landroid/widget/MediaController;->mCurrentTime:Landroid/widget/TextView;

    invoke-direct {p0, v4}, Landroid/widget/MediaController;->stringForTime(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_50
    move v5, v4

    .line 395
    goto :goto_9
.end method

.method private stringForTime(I)Ljava/lang/String;
    .registers 13
    .parameter "timeMs"

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 360
    div-int/lit16 v3, p1, 0x3e8

    .line 362
    .local v3, totalSeconds:I
    rem-int/lit8 v2, v3, 0x3c

    .line 363
    .local v2, seconds:I
    div-int/lit8 v4, v3, 0x3c

    rem-int/lit8 v1, v4, 0x3c

    .line 364
    .local v1, minutes:I
    div-int/lit16 v0, v3, 0xe10

    .line 366
    .local v0, hours:I
    iget-object v4, p0, Landroid/widget/MediaController;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 367
    if-lez v0, :cond_36

    .line 368
    iget-object v4, p0, Landroid/widget/MediaController;->mFormatter:Ljava/util/Formatter;

    const-string v5, "%d:%02d:%02d"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {v4, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v4

    .line 370
    :goto_35
    return-object v4

    :cond_36
    iget-object v4, p0, Landroid/widget/MediaController;->mFormatter:Ljava/util/Formatter;

    const-string v5, "%02d:%02d"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v4, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_35
.end method

.method private updatePausePlay()V
    .registers 4

    .prologue
    .line 457
    iget-object v1, p0, Landroid/widget/MediaController;->mRoot:Landroid/view/View;

    if-nez v1, :cond_5

    .line 469
    :cond_4
    :goto_4
    return-void

    .line 460
    :cond_5
    iget-object v1, p0, Landroid/widget/MediaController;->mRoot:Landroid/view/View;

    const v2, 0x10201af

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 461
    .local v0, button:Landroid/widget/ImageButton;
    if-eqz v0, :cond_4

    .line 464
    iget-object v1, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v1}, Landroid/widget/MediaController$MediaPlayerControl;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 465
    const v1, 0x1080023

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_4

    .line 467
    :cond_21
    const v1, 0x1080024

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_4
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 6
    .parameter "event"

    .prologue
    const/16 v3, 0xbb8

    const/4 v2, 0x1

    .line 412
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 413
    .local v0, keyCode:I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isDown()Z

    move-result v1

    if-eqz v1, :cond_27

    const/16 v1, 0x4f

    if-eq v0, v1, :cond_1f

    const/16 v1, 0x55

    if-eq v0, v1, :cond_1f

    const/16 v1, 0x3e

    if-ne v0, v1, :cond_27

    .line 417
    :cond_1f
    invoke-direct {p0}, Landroid/widget/MediaController;->doPauseResume()V

    .line 418
    invoke-virtual {p0, v3}, Landroid/widget/MediaController;->show(I)V

    move v1, v2

    .line 437
    :goto_26
    return v1

    .line 420
    :cond_27
    const/16 v1, 0x56

    if-ne v0, v1, :cond_3d

    .line 421
    iget-object v1, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v1}, Landroid/widget/MediaController$MediaPlayerControl;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 422
    iget-object v1, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v1}, Landroid/widget/MediaController$MediaPlayerControl;->pause()V

    .line 423
    invoke-direct {p0}, Landroid/widget/MediaController;->updatePausePlay()V

    :cond_3b
    move v1, v2

    .line 425
    goto :goto_26

    .line 426
    :cond_3d
    const/16 v1, 0x19

    if-eq v0, v1, :cond_45

    const/16 v1, 0x18

    if-ne v0, v1, :cond_4a

    .line 429
    :cond_45
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_26

    .line 430
    :cond_4a
    const/4 v1, 0x4

    if-eq v0, v1, :cond_51

    const/16 v1, 0x52

    if-ne v0, v1, :cond_56

    .line 431
    :cond_51
    invoke-virtual {p0}, Landroid/widget/MediaController;->hide()V

    move v1, v2

    .line 433
    goto :goto_26

    .line 435
    :cond_56
    invoke-virtual {p0, v3}, Landroid/widget/MediaController;->show(I)V

    .line 437
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_26
.end method

.method public hide()V
    .registers 4

    .prologue
    .line 309
    iget-object v1, p0, Landroid/widget/MediaController;->mAnchor:Landroid/view/View;

    if-nez v1, :cond_5

    .line 321
    :cond_4
    :goto_4
    return-void

    .line 312
    :cond_5
    iget-boolean v1, p0, Landroid/widget/MediaController;->mShowing:Z

    if-eqz v1, :cond_4

    .line 314
    :try_start_9
    iget-object v1, p0, Landroid/widget/MediaController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 315
    iget-object v1, p0, Landroid/widget/MediaController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Landroid/widget/MediaController;->mDecor:Landroid/view/View;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_16
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_16} :catch_1a

    .line 319
    :goto_16
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/MediaController;->mShowing:Z

    goto :goto_4

    .line 316
    :catch_1a
    move-exception v1

    move-object v0, v1

    .line 317
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    const-string v1, "MediaController"

    const-string v2, "already removed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16
.end method

.method public isShowing()Z
    .registers 2

    .prologue
    .line 302
    iget-boolean v0, p0, Landroid/widget/MediaController;->mShowing:Z

    return v0
.end method

.method protected makeControllerView()Landroid/view/View;
    .registers 4

    .prologue
    .line 193
    iget-object v1, p0, Landroid/widget/MediaController;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 194
    .local v0, inflate:Landroid/view/LayoutInflater;
    const v1, 0x109003c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/MediaController;->mRoot:Landroid/view/View;

    .line 196
    iget-object v1, p0, Landroid/widget/MediaController;->mRoot:Landroid/view/View;

    invoke-direct {p0, v1}, Landroid/widget/MediaController;->initControllerView(Landroid/view/View;)V

    .line 198
    iget-object v1, p0, Landroid/widget/MediaController;->mRoot:Landroid/view/View;

    return-object v1
.end method

.method public onFinishInflate()V
    .registers 2

    .prologue
    .line 114
    iget-object v0, p0, Landroid/widget/MediaController;->mRoot:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 115
    iget-object v0, p0, Landroid/widget/MediaController;->mRoot:Landroid/view/View;

    invoke-direct {p0, v0}, Landroid/widget/MediaController;->initControllerView(Landroid/view/View;)V

    .line 116
    :cond_9
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 400
    const/16 v0, 0xbb8

    invoke-virtual {p0, v0}, Landroid/widget/MediaController;->show(I)V

    .line 401
    const/4 v0, 0x1

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "ev"

    .prologue
    .line 406
    const/16 v0, 0xbb8

    invoke-virtual {p0, v0}, Landroid/widget/MediaController;->show(I)V

    .line 407
    const/4 v0, 0x0

    return v0
.end method

.method public setAnchorView(Landroid/view/View;)V
    .registers 5
    .parameter "view"

    .prologue
    const/4 v2, -0x1

    .line 174
    iput-object p1, p0, Landroid/widget/MediaController;->mAnchor:Landroid/view/View;

    .line 176
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 181
    .local v0, frameParams:Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0}, Landroid/widget/MediaController;->removeAllViews()V

    .line 182
    invoke-virtual {p0}, Landroid/widget/MediaController;->makeControllerView()Landroid/view/View;

    move-result-object v1

    .line 183
    .local v1, v:Landroid/view/View;
    invoke-virtual {p0, v1, v0}, Landroid/widget/MediaController;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 184
    return-void
.end method

.method public setEnabled(Z)V
    .registers 6
    .parameter "enabled"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 547
    iget-object v0, p0, Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_b

    .line 548
    iget-object v0, p0, Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 550
    :cond_b
    iget-object v0, p0, Landroid/widget/MediaController;->mFfwdButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_14

    .line 551
    iget-object v0, p0, Landroid/widget/MediaController;->mFfwdButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 553
    :cond_14
    iget-object v0, p0, Landroid/widget/MediaController;->mRewButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1d

    .line 554
    iget-object v0, p0, Landroid/widget/MediaController;->mRewButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 556
    :cond_1d
    iget-object v0, p0, Landroid/widget/MediaController;->mNextButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2d

    .line 557
    iget-object v0, p0, Landroid/widget/MediaController;->mNextButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_4a

    iget-object v1, p0, Landroid/widget/MediaController;->mNextListener:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_4a

    move v1, v3

    :goto_2a
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 559
    :cond_2d
    iget-object v0, p0, Landroid/widget/MediaController;->mPrevButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_3d

    .line 560
    iget-object v0, p0, Landroid/widget/MediaController;->mPrevButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_4c

    iget-object v1, p0, Landroid/widget/MediaController;->mPrevListener:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_4c

    move v1, v3

    :goto_3a
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 562
    :cond_3d
    iget-object v0, p0, Landroid/widget/MediaController;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_46

    .line 563
    iget-object v0, p0, Landroid/widget/MediaController;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setEnabled(Z)V

    .line 566
    :cond_46
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 567
    return-void

    :cond_4a
    move v1, v2

    .line 557
    goto :goto_2a

    :cond_4c
    move v1, v2

    .line 560
    goto :goto_3a
.end method

.method public setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V
    .registers 2
    .parameter "player"

    .prologue
    .line 164
    iput-object p1, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    .line 165
    invoke-direct {p0}, Landroid/widget/MediaController;->updatePausePlay()V

    .line 166
    return-void
.end method

.method public setPrevNextListeners(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .registers 5
    .parameter "next"
    .parameter "prev"

    .prologue
    const/4 v1, 0x0

    .line 617
    iput-object p1, p0, Landroid/widget/MediaController;->mNextListener:Landroid/view/View$OnClickListener;

    .line 618
    iput-object p2, p0, Landroid/widget/MediaController;->mPrevListener:Landroid/view/View$OnClickListener;

    .line 619
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/MediaController;->mListenersSet:Z

    .line 621
    iget-object v0, p0, Landroid/widget/MediaController;->mRoot:Landroid/view/View;

    if-eqz v0, :cond_29

    .line 622
    invoke-direct {p0}, Landroid/widget/MediaController;->installPrevNextListeners()V

    .line 624
    iget-object v0, p0, Landroid/widget/MediaController;->mNextButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1c

    iget-boolean v0, p0, Landroid/widget/MediaController;->mFromXml:Z

    if-nez v0, :cond_1c

    .line 625
    iget-object v0, p0, Landroid/widget/MediaController;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 627
    :cond_1c
    iget-object v0, p0, Landroid/widget/MediaController;->mPrevButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_29

    iget-boolean v0, p0, Landroid/widget/MediaController;->mFromXml:Z

    if-nez v0, :cond_29

    .line 628
    iget-object v0, p0, Landroid/widget/MediaController;->mPrevButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 631
    :cond_29
    return-void
.end method

.method protected setPuaseEanbled(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 576
    iget-object v0, p0, Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_9

    .line 577
    iget-object v0, p0, Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 578
    :cond_9
    return-void
.end method

.method public setStreamingInfo(Z)V
    .registers 5
    .parameter "streaming"

    .prologue
    .line 326
    iput-boolean p1, p0, Landroid/widget/MediaController;->mIsStreaming:Z

    .line 327
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/MediaController;->mDuration:I

    .line 328
    iget-object v0, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    if-eqz v0, :cond_11

    .line 329
    iget-object v0, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v0}, Landroid/widget/MediaController$MediaPlayerControl;->getDuration()I

    move-result v0

    iput v0, p0, Landroid/widget/MediaController;->mDuration:I

    .line 330
    :cond_11
    const-string v0, "MediaController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setStreamingInfo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/widget/MediaController;->mIsStreaming:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/MediaController;->mDuration:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    return-void
.end method

.method public show()V
    .registers 2

    .prologue
    .line 256
    const/16 v0, 0xbb8

    invoke-virtual {p0, v0}, Landroid/widget/MediaController;->show(I)V

    .line 257
    return-void
.end method

.method public show(I)V
    .registers 10
    .parameter "timeout"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 267
    iget-boolean v3, p0, Landroid/widget/MediaController;->mShowing:Z

    if-nez v3, :cond_55

    iget-object v3, p0, Landroid/widget/MediaController;->mAnchor:Landroid/view/View;

    if-eqz v3, :cond_55

    .line 268
    invoke-direct {p0}, Landroid/widget/MediaController;->setProgress()I

    .line 270
    new-array v0, v7, [I

    .line 271
    .local v0, anchorpos:[I
    iget-object v3, p0, Landroid/widget/MediaController;->mAnchor:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 273
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 274
    .local v2, p:Landroid/view/WindowManager$LayoutParams;
    const/16 v3, 0x30

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 275
    iget-object v3, p0, Landroid/widget/MediaController;->mAnchor:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 276
    const/4 v3, -0x2

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 277
    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 278
    aget v3, v0, v5

    iget-object v4, p0, Landroid/widget/MediaController;->mAnchor:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 279
    const/4 v3, -0x3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 280
    const/16 v3, 0x3e8

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 281
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x2

    or-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 282
    const/4 v3, 0x0

    iput-object v3, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 283
    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 284
    iget-object v3, p0, Landroid/widget/MediaController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v4, p0, Landroid/widget/MediaController;->mDecor:Landroid/view/View;

    invoke-interface {v3, v4, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 285
    iput-boolean v5, p0, Landroid/widget/MediaController;->mShowing:Z

    .line 287
    .end local v0           #anchorpos:[I
    .end local v2           #p:Landroid/view/WindowManager$LayoutParams;
    :cond_55
    invoke-direct {p0}, Landroid/widget/MediaController;->updatePausePlay()V

    .line 292
    iget-object v3, p0, Landroid/widget/MediaController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 294
    iget-object v3, p0, Landroid/widget/MediaController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 295
    .local v1, msg:Landroid/os/Message;
    if-eqz p1, :cond_70

    .line 296
    iget-object v3, p0, Landroid/widget/MediaController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 297
    iget-object v3, p0, Landroid/widget/MediaController;->mHandler:Landroid/os/Handler;

    int-to-long v4, p1

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 299
    :cond_70
    return-void
.end method