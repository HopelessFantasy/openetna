.class public Lcom/android/music/MediaPlaybackActivity;
.super Landroid/app/Activity;
.source "MediaPlaybackActivity.java"

# interfaces
.implements Lcom/android/music/MusicUtils$Defs;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/music/MediaPlaybackActivity$Worker;,
        Lcom/android/music/MediaPlaybackActivity$AlbumArtHandler;
    }
.end annotation


# static fields
.field public static final ACTION_PUSH_FILE:Ljava/lang/String; = "com.quicinc.bluetooth.ACTION_PUSH_FILE"

.field private static final ALBUM_ART_DECODED:I = 0x4

.field public static final COMPONENT_BLUETOOTH_TRANSFER:Ljava/lang/String; = "com.quicinc.bluetooth.BluetoothDevicePicker"

.field private static final GET_ALBUM_ART:I = 0x3

.field public static final MENU_GROUP_BT:I = 0x1

.field public static final MENU_ITEM_SEND_BT:I = 0x1

.field public static final PACKAGE_BLUETOOTH_TRANSFER:Ljava/lang/String; = "com.quicinc.bluetooth"

.field public static final PROFILE:Ljava/lang/String; = "com.quicinc.bluetooth.intent.PROFILE"

.field public static final PROFILE_OPP:Ljava/lang/String; = "com.quicinc.bluetooth.intent.PROFILE.OPP"

.field private static final QUIT:I = 0x2

.field private static final REFRESH:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MediaPlaybackActivity"

.field private static final USE_AS_RINGTONE:I = 0xd


# instance fields
.field private final keyboard:[[I

.field private lastX:I

.field private lastY:I

.field private mAlbum:Landroid/widget/ImageView;

.field private mAlbumArtHandler:Lcom/android/music/MediaPlaybackActivity$AlbumArtHandler;

.field private mAlbumArtWorker:Lcom/android/music/MediaPlaybackActivity$Worker;

.field private mAlbumName:Landroid/widget/TextView;

.field private mArtistName:Landroid/widget/TextView;

.field private mBluetooth:Landroid/bluetooth/BluetoothDevice;

.field private mCurrentTime:Landroid/widget/TextView;

.field private mDeviceHasNoDpad:Z

.field mDraggingLabel:Z

.field private mDuration:J

.field private mFfwdListener:Lcom/android/music/RepeatingImageButton$RepeatListener;

.field private mFirstRefreshEvent:Z

.field private mFromTouch:Z

.field private final mHandler:Landroid/os/Handler;

.field mInitialX:I

.field mLabelScroller:Landroid/os/Handler;

.field private mLastSeekEventTime:J

.field mLastX:I

.field private mMenu:Landroid/view/Menu;

.field private mNextButton:Lcom/android/music/RepeatingImageButton;

.field private mNextListener:Landroid/view/View$OnClickListener;

.field private mOneShot:Z

.field private mPauseButton:Landroid/widget/ImageButton;

.field private mPauseListener:Landroid/view/View$OnClickListener;

.field private mPosOverride:J

.field private mPrevButton:Lcom/android/music/RepeatingImageButton;

.field private mPrevListener:Landroid/view/View$OnClickListener;

.field private mProgress:Landroid/widget/ProgressBar;

.field private mQueueButton:Landroid/widget/ImageButton;

.field private mQueueListener:Landroid/view/View$OnClickListener;

.field private mRepeatButton:Landroid/widget/ImageButton;

.field private mRepeatListener:Landroid/view/View$OnClickListener;

.field private mRewListener:Lcom/android/music/RepeatingImageButton$RepeatListener;

.field private mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mSeeking:Z

.field private mService:Lcom/android/music/IMediaPlaybackService;

.field private mShuffleButton:Landroid/widget/ImageButton;

.field private mShuffleListener:Landroid/view/View$OnClickListener;

.field private mSkipSeek:Z

.field private mStartSeekPos:J

.field private mStatusListener:Landroid/content/BroadcastReceiver;

.field mTextWidth:I

.field private mToast:Landroid/widget/Toast;

.field private mTotalTime:Landroid/widget/TextView;

.field private mTouchSlop:I

.field private mTrackName:Landroid/widget/TextView;

.field mViewWidth:I

.field private osc:Landroid/content/ServiceConnection;

.field private paused:Z

.field private seekmethod:I


# direct methods
.method public constructor <init>()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/16 v2, 0xa

    const/4 v3, 0x0

    .line 112
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 75
    iput-boolean v3, p0, Lcom/android/music/MediaPlaybackActivity;->mOneShot:Z

    .line 76
    iput-boolean v3, p0, Lcom/android/music/MediaPlaybackActivity;->mSeeking:Z

    .line 78
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/music/MediaPlaybackActivity;->mStartSeekPos:J

    .line 80
    iput-object v6, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    .line 91
    iput-boolean v3, p0, Lcom/android/music/MediaPlaybackActivity;->mSkipSeek:Z

    .line 92
    iput-boolean v5, p0, Lcom/android/music/MediaPlaybackActivity;->mFirstRefreshEvent:Z

    .line 99
    iput-object v6, p0, Lcom/android/music/MediaPlaybackActivity;->mBluetooth:Landroid/bluetooth/BluetoothDevice;

    .line 188
    iput v4, p0, Lcom/android/music/MediaPlaybackActivity;->mInitialX:I

    .line 189
    iput v4, p0, Lcom/android/music/MediaPlaybackActivity;->mLastX:I

    .line 190
    iput v3, p0, Lcom/android/music/MediaPlaybackActivity;->mTextWidth:I

    .line 191
    iput v3, p0, Lcom/android/music/MediaPlaybackActivity;->mViewWidth:I

    .line 192
    iput-boolean v3, p0, Lcom/android/music/MediaPlaybackActivity;->mDraggingLabel:Z

    .line 277
    new-instance v0, Lcom/android/music/MediaPlaybackActivity$1;

    invoke-direct {v0, p0}, Lcom/android/music/MediaPlaybackActivity$1;-><init>(Lcom/android/music/MediaPlaybackActivity;)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mLabelScroller:Landroid/os/Handler;

    .line 364
    new-instance v0, Lcom/android/music/MediaPlaybackActivity$2;

    invoke-direct {v0, p0}, Lcom/android/music/MediaPlaybackActivity$2;-><init>(Lcom/android/music/MediaPlaybackActivity;)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 396
    new-instance v0, Lcom/android/music/MediaPlaybackActivity$3;

    invoke-direct {v0, p0}, Lcom/android/music/MediaPlaybackActivity$3;-><init>(Lcom/android/music/MediaPlaybackActivity;)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mQueueListener:Landroid/view/View$OnClickListener;

    .line 406
    new-instance v0, Lcom/android/music/MediaPlaybackActivity$4;

    invoke-direct {v0, p0}, Lcom/android/music/MediaPlaybackActivity$4;-><init>(Lcom/android/music/MediaPlaybackActivity;)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mShuffleListener:Landroid/view/View$OnClickListener;

    .line 412
    new-instance v0, Lcom/android/music/MediaPlaybackActivity$5;

    invoke-direct {v0, p0}, Lcom/android/music/MediaPlaybackActivity$5;-><init>(Lcom/android/music/MediaPlaybackActivity;)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mRepeatListener:Landroid/view/View$OnClickListener;

    .line 418
    new-instance v0, Lcom/android/music/MediaPlaybackActivity$6;

    invoke-direct {v0, p0}, Lcom/android/music/MediaPlaybackActivity$6;-><init>(Lcom/android/music/MediaPlaybackActivity;)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mPauseListener:Landroid/view/View$OnClickListener;

    .line 424
    new-instance v0, Lcom/android/music/MediaPlaybackActivity$7;

    invoke-direct {v0, p0}, Lcom/android/music/MediaPlaybackActivity$7;-><init>(Lcom/android/music/MediaPlaybackActivity;)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mPrevListener:Landroid/view/View$OnClickListener;

    .line 439
    new-instance v0, Lcom/android/music/MediaPlaybackActivity$8;

    invoke-direct {v0, p0}, Lcom/android/music/MediaPlaybackActivity$8;-><init>(Lcom/android/music/MediaPlaybackActivity;)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mNextListener:Landroid/view/View$OnClickListener;

    .line 449
    new-instance v0, Lcom/android/music/MediaPlaybackActivity$9;

    invoke-direct {v0, p0}, Lcom/android/music/MediaPlaybackActivity$9;-><init>(Lcom/android/music/MediaPlaybackActivity;)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mRewListener:Lcom/android/music/RepeatingImageButton$RepeatListener;

    .line 456
    new-instance v0, Lcom/android/music/MediaPlaybackActivity$10;

    invoke-direct {v0, p0}, Lcom/android/music/MediaPlaybackActivity$10;-><init>(Lcom/android/music/MediaPlaybackActivity;)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mFfwdListener:Lcom/android/music/RepeatingImageButton$RepeatListener;

    .line 707
    const/4 v0, 0x3

    new-array v0, v0, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_a0

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_b8

    aput-object v1, v0, v5

    const/4 v1, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_d0

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->keyboard:[[I

    .line 1115
    new-instance v0, Lcom/android/music/MediaPlaybackActivity$11;

    invoke-direct {v0, p0}, Lcom/android/music/MediaPlaybackActivity$11;-><init>(Lcom/android/music/MediaPlaybackActivity;)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->osc:Landroid/content/ServiceConnection;

    .line 1208
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/music/MediaPlaybackActivity;->mPosOverride:J

    .line 1209
    iput-boolean v3, p0, Lcom/android/music/MediaPlaybackActivity;->mFromTouch:Z

    .line 1267
    new-instance v0, Lcom/android/music/MediaPlaybackActivity$12;

    invoke-direct {v0, p0}, Lcom/android/music/MediaPlaybackActivity$12;-><init>(Lcom/android/music/MediaPlaybackActivity;)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mHandler:Landroid/os/Handler;

    .line 1303
    new-instance v0, Lcom/android/music/MediaPlaybackActivity$13;

    invoke-direct {v0, p0}, Lcom/android/music/MediaPlaybackActivity$13;-><init>(Lcom/android/music/MediaPlaybackActivity;)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mStatusListener:Landroid/content/BroadcastReceiver;

    .line 113
    return-void

    .line 707
    :array_a0
    .array-data 0x4
        0x2dt 0x0t 0x0t 0x0t
        0x33t 0x0t 0x0t 0x0t
        0x21t 0x0t 0x0t 0x0t
        0x2et 0x0t 0x0t 0x0t
        0x30t 0x0t 0x0t 0x0t
        0x35t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
        0x25t 0x0t 0x0t 0x0t
        0x2bt 0x0t 0x0t 0x0t
        0x2ct 0x0t 0x0t 0x0t
    .end array-data

    :array_b8
    .array-data 0x4
        0x1dt 0x0t 0x0t 0x0t
        0x2ft 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x23t 0x0t 0x0t 0x0t
        0x24t 0x0t 0x0t 0x0t
        0x26t 0x0t 0x0t 0x0t
        0x27t 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t
        0x43t 0x0t 0x0t 0x0t
    .end array-data

    :array_d0
    .array-data 0x4
        0x36t 0x0t 0x0t 0x0t
        0x34t 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x2at 0x0t 0x0t 0x0t
        0x29t 0x0t 0x0t 0x0t
        0x37t 0x0t 0x0t 0x0t
        0x38t 0x0t 0x0t 0x0t
        0x42t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/music/MediaPlaybackActivity;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/android/music/MediaPlaybackActivity;->mLastSeekEventTime:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/android/music/MediaPlaybackActivity;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-wide p1, p0, Lcom/android/music/MediaPlaybackActivity;->mLastSeekEventTime:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/android/music/MediaPlaybackActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/music/MediaPlaybackActivity;->mFromTouch:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/music/MediaPlaybackActivity;IJ)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 69
    invoke-direct {p0, p1, p2, p3}, Lcom/android/music/MediaPlaybackActivity;->scanBackward(IJ)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/music/MediaPlaybackActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/android/music/MediaPlaybackActivity;->mFromTouch:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/music/MediaPlaybackActivity;IJ)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 69
    invoke-direct {p0, p1, p2, p3}, Lcom/android/music/MediaPlaybackActivity;->scanForward(IJ)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/music/MediaPlaybackActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->startPlayback()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/music/MediaPlaybackActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/music/MediaPlaybackActivity;->mOneShot:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/android/music/MediaPlaybackActivity;)Landroid/widget/ImageButton;
    .registers 2
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mRepeatButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/music/MediaPlaybackActivity;)Landroid/widget/ImageButton;
    .registers 2
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mShuffleButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/music/MediaPlaybackActivity;)Landroid/widget/ImageButton;
    .registers 2
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mQueueButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/music/MediaPlaybackActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->setRepeatButtonImage()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/music/MediaPlaybackActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->setShuffleButtonImage()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/music/MediaPlaybackActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->setPauseButtonImage()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/music/MediaPlaybackActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/music/MediaPlaybackActivity;->mSkipSeek:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/music/MediaPlaybackActivity;)Landroid/widget/ImageView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mAlbum:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/music/MediaPlaybackActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/android/music/MediaPlaybackActivity;->mSkipSeek:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/music/MediaPlaybackActivity;J)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/android/music/MediaPlaybackActivity;->queueNextRefresh(J)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/music/MediaPlaybackActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->updateTrackInfo()V

    return-void
.end method

.method static synthetic access$2302(Lcom/android/music/MediaPlaybackActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/android/music/MediaPlaybackActivity;->mFirstRefreshEvent:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/android/music/MediaPlaybackActivity;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/music/MediaPlaybackActivity;)Lcom/android/music/IMediaPlaybackService;
    .registers 2
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/music/MediaPlaybackActivity;Lcom/android/music/IMediaPlaybackService;)Lcom/android/music/IMediaPlaybackService;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/music/MediaPlaybackActivity;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/android/music/MediaPlaybackActivity;->mPosOverride:J

    return-wide v0
.end method

.method static synthetic access$402(Lcom/android/music/MediaPlaybackActivity;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-wide p1, p0, Lcom/android/music/MediaPlaybackActivity;->mPosOverride:J

    return-wide p1
.end method

.method static synthetic access$500(Lcom/android/music/MediaPlaybackActivity;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/android/music/MediaPlaybackActivity;->mDuration:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/android/music/MediaPlaybackActivity;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->refreshNow()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$700(Lcom/android/music/MediaPlaybackActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->toggleShuffle()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/music/MediaPlaybackActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->cycleRepeat()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/music/MediaPlaybackActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->doPauseResume()V

    return-void
.end method

.method private cycleRepeat()V
    .registers 4

    .prologue
    const/4 v2, 0x2

    .line 1047
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    if-nez v1, :cond_6

    .line 1070
    :goto_5
    return-void

    .line 1051
    :cond_6
    :try_start_6
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/android/music/IMediaPlaybackService;->getRepeatMode()I

    move-result v0

    .line 1052
    .local v0, mode:I
    if-nez v0, :cond_20

    .line 1053
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/android/music/IMediaPlaybackService;->setRepeatMode(I)V

    .line 1054
    const v1, 0x7f070035

    invoke-direct {p0, v1}, Lcom/android/music/MediaPlaybackActivity;->showToast(I)V

    .line 1066
    :goto_1a
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->setRepeatButtonImage()V

    goto :goto_5

    .line 1067
    .end local v0           #mode:I
    :catch_1e
    move-exception v1

    goto :goto_5

    .line 1055
    .restart local v0       #mode:I
    :cond_20
    if-ne v0, v2, :cond_40

    .line 1056
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/music/IMediaPlaybackService;->setRepeatMode(I)V

    .line 1057
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/android/music/IMediaPlaybackService;->getShuffleMode()I

    move-result v1

    if-eqz v1, :cond_39

    .line 1058
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/music/IMediaPlaybackService;->setShuffleMode(I)V

    .line 1059
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->setShuffleButtonImage()V

    .line 1061
    :cond_39
    const v1, 0x7f070034

    invoke-direct {p0, v1}, Lcom/android/music/MediaPlaybackActivity;->showToast(I)V

    goto :goto_1a

    .line 1063
    :cond_40
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/music/IMediaPlaybackService;->setRepeatMode(I)V

    .line 1064
    const v1, 0x7f070033

    invoke-direct {p0, v1}, Lcom/android/music/MediaPlaybackActivity;->showToast(I)V
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_4c} :catch_1e

    goto :goto_1a
.end method

.method private doBluetoothDeviceTransfer(Landroid/net/Uri;)V
    .registers 6
    .parameter "uri"

    .prologue
    .line 671
    const-string v2, "ro.qualcomm.proprietary_obex"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 672
    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mBluetooth:Landroid/bluetooth/BluetoothDevice;

    if-eqz v2, :cond_30

    .line 673
    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mBluetooth:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 674
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.quicinc.bluetooth.ACTION_PUSH_FILE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 675
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 676
    const-string v2, "com.quicinc.bluetooth.intent.PROFILE"

    const-string v3, "com.quicinc.bluetooth.intent.PROFILE.OPP"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 677
    const-string v2, "com.quicinc.bluetooth"

    const-string v3, "com.quicinc.bluetooth.BluetoothDevicePicker"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 679
    :try_start_2d
    invoke-virtual {p0, v1}, Lcom/android/music/MediaPlaybackActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_30
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2d .. :try_end_30} :catch_31

    .line 686
    .end local v1           #intent:Landroid/content/Intent;
    :cond_30
    :goto_30
    return-void

    .line 680
    .restart local v1       #intent:Landroid/content/Intent;
    :catch_31
    move-exception v0

    .line 681
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v2, "MediaPlaybackActivity"

    const-string v3, "No Activity for : com.quicinc.bluetooth.ACTION_PUSH_FILE"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_30
.end method

.method private doPauseResume()V
    .registers 2

    .prologue
    .line 1008
    :try_start_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    if-eqz v0, :cond_17

    .line 1009
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/android/music/IMediaPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1010
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/android/music/IMediaPlaybackService;->pause()V

    .line 1014
    :goto_11
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->refreshNow()J

    .line 1015
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->setPauseButtonImage()V

    .line 1019
    :cond_17
    :goto_17
    return-void

    .line 1012
    :cond_18
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/android/music/IMediaPlaybackService;->play()V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1d} :catch_1e

    goto :goto_11

    .line 1017
    :catch_1e
    move-exception v0

    goto :goto_17
.end method

.method private queueNextRefresh(J)V
    .registers 6
    .parameter "delay"

    .prologue
    const/4 v2, 0x1

    .line 1220
    iget-boolean v1, p0, Lcom/android/music/MediaPlaybackActivity;->paused:Z

    if-nez v1, :cond_15

    .line 1221
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1222
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1223
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1225
    .end local v0           #msg:Landroid/os/Message;
    :cond_15
    return-void
.end method

.method private refreshNow()J
    .registers 11

    .prologue
    .line 1228
    iget-object v5, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    if-nez v5, :cond_7

    .line 1229
    const-wide/16 v5, 0x1f4

    .line 1264
    :goto_6
    return-wide v5

    .line 1231
    :cond_7
    :try_start_7
    iget-boolean v5, p0, Lcom/android/music/MediaPlaybackActivity;->mFirstRefreshEvent:Z

    if-nez v5, :cond_e

    .line 1232
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/music/MediaPlaybackActivity;->mSkipSeek:Z

    .line 1234
    :cond_e
    iget-boolean v5, p0, Lcom/android/music/MediaPlaybackActivity;->mFirstRefreshEvent:Z

    const/4 v6, 0x1

    if-ne v5, v6, :cond_16

    .line 1235
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/music/MediaPlaybackActivity;->mFirstRefreshEvent:Z

    .line 1237
    :cond_16
    iget-wide v5, p0, Lcom/android/music/MediaPlaybackActivity;->mPosOverride:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-gez v5, :cond_66

    iget-object v5, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v5}, Lcom/android/music/IMediaPlaybackService;->position()J

    move-result-wide v5

    move-wide v0, v5

    .line 1238
    .local v0, pos:J
    :goto_25
    const-wide/16 v5, 0x3e8

    const-wide/16 v7, 0x3e8

    rem-long v7, v0, v7

    sub-long v2, v5, v7

    .line 1239
    .local v2, remaining:J
    const-wide/16 v5, 0x0

    cmp-long v5, v0, v5

    if-ltz v5, :cond_7e

    iget-wide v5, p0, Lcom/android/music/MediaPlaybackActivity;->mDuration:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_7e

    .line 1240
    iget-object v5, p0, Lcom/android/music/MediaPlaybackActivity;->mCurrentTime:Landroid/widget/TextView;

    const-wide/16 v6, 0x1f4

    add-long/2addr v6, v0

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-static {p0, v6, v7}, Lcom/android/music/MusicUtils;->makeTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1242
    iget-object v5, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v5}, Lcom/android/music/IMediaPlaybackService;->isPlaying()Z

    move-result v5

    if-eqz v5, :cond_6a

    .line 1243
    iget-object v5, p0, Lcom/android/music/MediaPlaybackActivity;->mCurrentTime:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1251
    :goto_58
    iget-object v5, p0, Lcom/android/music/MediaPlaybackActivity;->mProgress:Landroid/widget/ProgressBar;

    const-wide/16 v6, 0x3e8

    mul-long/2addr v6, v0

    iget-wide v8, p0, Lcom/android/music/MediaPlaybackActivity;->mDuration:J

    div-long/2addr v6, v8

    long-to-int v6, v6

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setProgress(I)V

    :goto_64
    move-wide v5, v2

    .line 1261
    goto :goto_6

    .line 1237
    .end local v0           #pos:J
    .end local v2           #remaining:J
    :cond_66
    iget-wide v5, p0, Lcom/android/music/MediaPlaybackActivity;->mPosOverride:J

    move-wide v0, v5

    goto :goto_25

    .line 1246
    .restart local v0       #pos:J
    .restart local v2       #remaining:J
    :cond_6a
    iget-object v5, p0, Lcom/android/music/MediaPlaybackActivity;->mCurrentTime:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    .line 1247
    .local v4, vis:I
    iget-object v5, p0, Lcom/android/music/MediaPlaybackActivity;->mCurrentTime:Landroid/widget/TextView;

    const/4 v6, 0x4

    if-ne v4, v6, :cond_7c

    const/4 v6, 0x0

    :goto_76
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1248
    const-wide/16 v2, 0x1f4

    goto :goto_58

    .line 1247
    :cond_7c
    const/4 v6, 0x4

    goto :goto_76

    .line 1254
    .end local v4           #vis:I
    :cond_7e
    iget-object v5, p0, Lcom/android/music/MediaPlaybackActivity;->mCurrentTime:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    .line 1255
    .restart local v4       #vis:I
    iget-object v5, p0, Lcom/android/music/MediaPlaybackActivity;->mCurrentTime:Landroid/widget/TextView;

    const/4 v6, 0x4

    if-ne v4, v6, :cond_9c

    const/4 v6, 0x0

    :goto_8a
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1256
    const-wide/16 v2, 0x1f4

    .line 1257
    iget-object v5, p0, Lcom/android/music/MediaPlaybackActivity;->mProgress:Landroid/widget/ProgressBar;

    const/16 v6, 0x3e8

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_96
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_96} :catch_97

    goto :goto_64

    .line 1262
    .end local v0           #pos:J
    .end local v2           #remaining:J
    .end local v4           #vis:I
    :catch_97
    move-exception v5

    .line 1264
    const-wide/16 v5, 0x1f4

    goto/16 :goto_6

    .line 1255
    .restart local v0       #pos:J
    .restart local v2       #remaining:J
    .restart local v4       #vis:I
    :cond_9c
    const/4 v6, 0x4

    goto :goto_8a
.end method

.method private scanBackward(IJ)V
    .registers 16
    .parameter "repcnt"
    .parameter "delta"

    .prologue
    const-wide/16 v6, 0x1388

    const-wide/16 v10, 0x0

    .line 918
    iget-object v4, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    if-nez v4, :cond_9

    .line 958
    :goto_8
    return-void

    .line 920
    :cond_9
    if-nez p1, :cond_27

    .line 921
    :try_start_b
    iget-object v4, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/android/music/IMediaPlaybackService;->position()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/music/MediaPlaybackActivity;->mStartSeekPos:J

    .line 923
    iget-wide v4, p0, Lcom/android/music/MediaPlaybackActivity;->mStartSeekPos:J

    cmp-long v4, v4, v10

    if-gez v4, :cond_1d

    .line 924
    iget-wide v4, p0, Lcom/android/music/MediaPlaybackActivity;->mDuration:J

    iput-wide v4, p0, Lcom/android/music/MediaPlaybackActivity;->mStartSeekPos:J

    .line 926
    :cond_1d
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/music/MediaPlaybackActivity;->mLastSeekEventTime:J

    .line 927
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/music/MediaPlaybackActivity;->mSeeking:Z

    goto :goto_8

    .line 956
    :catch_25
    move-exception v4

    goto :goto_8

    .line 929
    :cond_27
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/music/MediaPlaybackActivity;->mSeeking:Z

    .line 930
    cmp-long v4, p2, v6

    if-gez v4, :cond_65

    .line 932
    const-wide/16 v4, 0xa

    mul-long/2addr p2, v4

    .line 937
    :goto_31
    iget-wide v4, p0, Lcom/android/music/MediaPlaybackActivity;->mStartSeekPos:J

    sub-long v2, v4, p2

    .line 938
    .local v2, newpos:J
    cmp-long v4, v2, v10

    if-gez v4, :cond_4a

    .line 940
    iget-object v4, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/android/music/IMediaPlaybackService;->prev()V

    .line 941
    iget-object v4, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/android/music/IMediaPlaybackService;->duration()J

    move-result-wide v0

    .line 942
    .local v0, duration:J
    iget-wide v4, p0, Lcom/android/music/MediaPlaybackActivity;->mStartSeekPos:J

    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/android/music/MediaPlaybackActivity;->mStartSeekPos:J

    .line 943
    add-long/2addr v2, v0

    .line 945
    .end local v0           #duration:J
    :cond_4a
    iget-wide v4, p0, Lcom/android/music/MediaPlaybackActivity;->mLastSeekEventTime:J

    sub-long v4, p2, v4

    const-wide/16 v6, 0xfa

    cmp-long v4, v4, v6

    if-gtz v4, :cond_56

    if-gez p1, :cond_5d

    .line 946
    :cond_56
    iget-object v4, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v4, v2, v3}, Lcom/android/music/IMediaPlaybackService;->seek(J)J

    .line 947
    iput-wide p2, p0, Lcom/android/music/MediaPlaybackActivity;->mLastSeekEventTime:J

    .line 949
    :cond_5d
    if-ltz p1, :cond_70

    .line 950
    iput-wide v2, p0, Lcom/android/music/MediaPlaybackActivity;->mPosOverride:J

    .line 954
    :goto_61
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->refreshNow()J

    goto :goto_8

    .line 935
    .end local v2           #newpos:J
    :cond_65
    const-wide/32 v4, 0xc350

    sub-long v6, p2, v6

    const-wide/16 v8, 0x28

    mul-long/2addr v6, v8

    add-long p2, v4, v6

    goto :goto_31

    .line 952
    .restart local v2       #newpos:J
    :cond_70
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/android/music/MediaPlaybackActivity;->mPosOverride:J
    :try_end_74
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_74} :catch_25

    goto :goto_61
.end method

.method private scanForward(IJ)V
    .registers 14
    .parameter "repcnt"
    .parameter "delta"

    .prologue
    const-wide/16 v8, 0x1388

    const-wide/16 v6, 0x0

    .line 961
    iget-object v4, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    if-nez v4, :cond_9

    .line 1004
    :goto_8
    return-void

    .line 963
    :cond_9
    if-nez p1, :cond_27

    .line 964
    :try_start_b
    iget-object v4, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/android/music/IMediaPlaybackService;->position()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/music/MediaPlaybackActivity;->mStartSeekPos:J

    .line 966
    iget-wide v4, p0, Lcom/android/music/MediaPlaybackActivity;->mStartSeekPos:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_1d

    .line 967
    iget-wide v4, p0, Lcom/android/music/MediaPlaybackActivity;->mDuration:J

    iput-wide v4, p0, Lcom/android/music/MediaPlaybackActivity;->mStartSeekPos:J

    .line 969
    :cond_1d
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/music/MediaPlaybackActivity;->mLastSeekEventTime:J

    .line 970
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/music/MediaPlaybackActivity;->mSeeking:Z

    goto :goto_8

    .line 1002
    :catch_25
    move-exception v4

    goto :goto_8

    .line 972
    :cond_27
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/music/MediaPlaybackActivity;->mSeeking:Z

    .line 973
    cmp-long v4, p2, v8

    if-gez v4, :cond_70

    .line 975
    const-wide/16 v4, 0xa

    mul-long/2addr p2, v4

    .line 980
    :goto_31
    iget-wide v4, p0, Lcom/android/music/MediaPlaybackActivity;->mStartSeekPos:J

    add-long v2, v4, p2

    .line 981
    .local v2, newpos:J
    iget-object v4, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/android/music/IMediaPlaybackService;->duration()J

    move-result-wide v0

    .line 982
    .local v0, duration:J
    cmp-long v4, v2, v0

    if-ltz v4, :cond_55

    .line 984
    iget-object v4, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/android/music/IMediaPlaybackService;->next()V

    .line 985
    iget-wide v4, p0, Lcom/android/music/MediaPlaybackActivity;->mStartSeekPos:J

    sub-long/2addr v4, v0

    iput-wide v4, p0, Lcom/android/music/MediaPlaybackActivity;->mStartSeekPos:J

    .line 986
    sub-long/2addr v2, v0

    .line 987
    iget-object v4, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/android/music/IMediaPlaybackService;->duration()J

    move-result-wide v0

    .line 988
    cmp-long v4, v2, v0

    if-lez v4, :cond_55

    .line 989
    move-wide v2, v0

    .line 991
    :cond_55
    iget-wide v4, p0, Lcom/android/music/MediaPlaybackActivity;->mLastSeekEventTime:J

    sub-long v4, p2, v4

    const-wide/16 v6, 0xfa

    cmp-long v4, v4, v6

    if-gtz v4, :cond_61

    if-gez p1, :cond_68

    .line 992
    :cond_61
    iget-object v4, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v4, v2, v3}, Lcom/android/music/IMediaPlaybackService;->seek(J)J

    .line 993
    iput-wide p2, p0, Lcom/android/music/MediaPlaybackActivity;->mLastSeekEventTime:J

    .line 995
    :cond_68
    if-ltz p1, :cond_7b

    .line 996
    iput-wide v2, p0, Lcom/android/music/MediaPlaybackActivity;->mPosOverride:J

    .line 1000
    :goto_6c
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->refreshNow()J

    goto :goto_8

    .line 978
    .end local v0           #duration:J
    .end local v2           #newpos:J
    :cond_70
    const-wide/32 v4, 0xc350

    sub-long v6, p2, v8

    const-wide/16 v8, 0x28

    mul-long/2addr v6, v8

    add-long p2, v4, v6

    goto :goto_31

    .line 998
    .restart local v0       #duration:J
    .restart local v2       #newpos:J
    :cond_7b
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/android/music/MediaPlaybackActivity;->mPosOverride:J
    :try_end_7f
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_7f} :catch_25

    goto :goto_6c
.end method

.method private seekMethod1(I)Z
    .registers 10
    .parameter "keyCode"

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, -0x1

    const/4 v4, 0x2

    .line 752
    const/4 v1, 0x0

    .local v1, x:I
    :goto_5
    const/16 v3, 0xa

    if-ge v1, v3, :cond_8e

    .line 753
    const/4 v2, 0x0

    .local v2, y:I
    :goto_a
    const/4 v3, 0x3

    if-ge v2, v3, :cond_8a

    .line 754
    iget-object v3, p0, Lcom/android/music/MediaPlaybackActivity;->keyboard:[[I

    aget-object v3, v3, v2

    aget v3, v3, v1

    if-ne v3, p1, :cond_87

    .line 755
    const/4 v0, 0x0

    .line 757
    .local v0, dir:I
    iget v3, p0, Lcom/android/music/MediaPlaybackActivity;->lastX:I

    if-ne v1, v3, :cond_37

    iget v3, p0, Lcom/android/music/MediaPlaybackActivity;->lastY:I

    if-ne v2, v3, :cond_37

    const/4 v0, 0x0

    .line 769
    :cond_1f
    :goto_1f
    iput v1, p0, Lcom/android/music/MediaPlaybackActivity;->lastX:I

    .line 770
    iput v2, p0, Lcom/android/music/MediaPlaybackActivity;->lastY:I

    .line 772
    :try_start_23
    iget-object v3, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    iget-object v4, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/android/music/IMediaPlaybackService;->position()J

    move-result-wide v4

    mul-int/lit8 v6, v0, 0x5

    int-to-long v6, v6

    add-long/2addr v4, v6

    invoke-interface {v3, v4, v5}, Lcom/android/music/IMediaPlaybackService;->seek(J)J
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_32} :catch_94

    .line 775
    :goto_32
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->refreshNow()J

    .line 776
    const/4 v3, 0x1

    .line 782
    .end local v0           #dir:I
    .end local v2           #y:I
    :goto_36
    return v3

    .line 758
    .restart local v0       #dir:I
    .restart local v2       #y:I
    :cond_37
    if-nez v2, :cond_43

    iget v3, p0, Lcom/android/music/MediaPlaybackActivity;->lastY:I

    if-nez v3, :cond_43

    iget v3, p0, Lcom/android/music/MediaPlaybackActivity;->lastX:I

    if-le v1, v3, :cond_43

    const/4 v0, 0x1

    goto :goto_1f

    .line 759
    :cond_43
    if-nez v2, :cond_4f

    iget v3, p0, Lcom/android/music/MediaPlaybackActivity;->lastY:I

    if-nez v3, :cond_4f

    iget v3, p0, Lcom/android/music/MediaPlaybackActivity;->lastX:I

    if-ge v1, v3, :cond_4f

    const/4 v0, -0x1

    goto :goto_1f

    .line 761
    :cond_4f
    if-ne v2, v4, :cond_5b

    iget v3, p0, Lcom/android/music/MediaPlaybackActivity;->lastY:I

    if-ne v3, v4, :cond_5b

    iget v3, p0, Lcom/android/music/MediaPlaybackActivity;->lastX:I

    if-le v1, v3, :cond_5b

    const/4 v0, -0x1

    goto :goto_1f

    .line 762
    :cond_5b
    if-ne v2, v4, :cond_67

    iget v3, p0, Lcom/android/music/MediaPlaybackActivity;->lastY:I

    if-ne v3, v4, :cond_67

    iget v3, p0, Lcom/android/music/MediaPlaybackActivity;->lastX:I

    if-ge v1, v3, :cond_67

    const/4 v0, 0x1

    goto :goto_1f

    .line 764
    :cond_67
    iget v3, p0, Lcom/android/music/MediaPlaybackActivity;->lastY:I

    if-ge v2, v3, :cond_6f

    if-gt v1, v6, :cond_6f

    const/4 v0, 0x1

    goto :goto_1f

    .line 765
    :cond_6f
    iget v3, p0, Lcom/android/music/MediaPlaybackActivity;->lastY:I

    if-ge v2, v3, :cond_77

    if-lt v1, v7, :cond_77

    const/4 v0, -0x1

    goto :goto_1f

    .line 767
    :cond_77
    iget v3, p0, Lcom/android/music/MediaPlaybackActivity;->lastY:I

    if-le v2, v3, :cond_7f

    if-gt v1, v6, :cond_7f

    const/4 v0, -0x1

    goto :goto_1f

    .line 768
    :cond_7f
    iget v3, p0, Lcom/android/music/MediaPlaybackActivity;->lastY:I

    if-le v2, v3, :cond_1f

    if-lt v1, v7, :cond_1f

    const/4 v0, 0x1

    goto :goto_1f

    .line 753
    .end local v0           #dir:I
    :cond_87
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 752
    :cond_8a
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_5

    .line 780
    .end local v2           #y:I
    :cond_8e
    iput v5, p0, Lcom/android/music/MediaPlaybackActivity;->lastX:I

    .line 781
    iput v5, p0, Lcom/android/music/MediaPlaybackActivity;->lastY:I

    .line 782
    const/4 v3, 0x0

    goto :goto_36

    .line 773
    .restart local v0       #dir:I
    .restart local v2       #y:I
    :catch_94
    move-exception v3

    goto :goto_32
.end method

.method private seekMethod2(I)Z
    .registers 9
    .parameter "keyCode"

    .prologue
    const/4 v3, 0x0

    .line 787
    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    if-nez v2, :cond_7

    move v2, v3

    .line 799
    :goto_6
    return v2

    .line 788
    :cond_7
    const/4 v0, 0x0

    .local v0, i:I
    :goto_8
    const/16 v2, 0xa

    if-ge v0, v2, :cond_30

    .line 789
    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->keyboard:[[I

    aget-object v2, v2, v3

    aget v2, v2, v0

    if-ne v2, p1, :cond_2d

    .line 790
    mul-int/lit8 v2, v0, 0x64

    div-int/lit8 v1, v2, 0xa

    .line 792
    .local v1, seekpercentage:I
    :try_start_18
    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    iget-object v3, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/android/music/IMediaPlaybackService;->duration()J

    move-result-wide v3

    int-to-long v5, v1

    mul-long/2addr v3, v5

    const-wide/16 v5, 0x64

    div-long/2addr v3, v5

    invoke-interface {v2, v3, v4}, Lcom/android/music/IMediaPlaybackService;->seek(J)J
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_28} :catch_32

    .line 795
    :goto_28
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->refreshNow()J

    .line 796
    const/4 v2, 0x1

    goto :goto_6

    .line 788
    .end local v1           #seekpercentage:I
    :cond_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_30
    move v2, v3

    .line 799
    goto :goto_6

    .line 793
    .restart local v1       #seekpercentage:I
    :catch_32
    move-exception v2

    goto :goto_28
.end method

.method private setPauseButtonImage()V
    .registers 3

    .prologue
    .line 1192
    :try_start_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/android/music/IMediaPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1193
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mPauseButton:Landroid/widget/ImageButton;

    const v1, 0x1080023

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1199
    :goto_14
    return-void

    .line 1195
    :cond_15
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mPauseButton:Landroid/widget/ImageButton;

    const v1, 0x1080024

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1d} :catch_1e

    goto :goto_14

    .line 1197
    :catch_1e
    move-exception v0

    goto :goto_14
.end method

.method private setRepeatButtonImage()V
    .registers 3

    .prologue
    .line 1158
    :try_start_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/android/music/IMediaPlaybackService;->getRepeatMode()I

    move-result v0

    packed-switch v0, :pswitch_data_26

    .line 1166
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mRepeatButton:Landroid/widget/ImageButton;

    const v1, 0x7f020027

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1171
    :goto_11
    return-void

    .line 1160
    :pswitch_12
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mRepeatButton:Landroid/widget/ImageButton;

    const v1, 0x7f020026

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_11

    .line 1169
    :catch_1b
    move-exception v0

    goto :goto_11

    .line 1163
    :pswitch_1d
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mRepeatButton:Landroid/widget/ImageButton;

    const v1, 0x7f020028

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_25} :catch_1b

    goto :goto_11

    .line 1158
    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_12
    .end packed-switch
.end method

.method private setShuffleButtonImage()V
    .registers 3

    .prologue
    .line 1175
    :try_start_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/android/music/IMediaPlaybackService;->getShuffleMode()I

    move-result v0

    packed-switch v0, :pswitch_data_26

    .line 1183
    :pswitch_9
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mShuffleButton:Landroid/widget/ImageButton;

    const v1, 0x7f02002f

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1188
    :goto_11
    return-void

    .line 1177
    :pswitch_12
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mShuffleButton:Landroid/widget/ImageButton;

    const v1, 0x7f02002e

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_11

    .line 1186
    :catch_1b
    move-exception v0

    goto :goto_11

    .line 1180
    :pswitch_1d
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mShuffleButton:Landroid/widget/ImageButton;

    const v1, 0x7f020023

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_25} :catch_1b

    goto :goto_11

    .line 1175
    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_12
        :pswitch_9
        :pswitch_1d
    .end packed-switch
.end method

.method private showToast(I)V
    .registers 4
    .parameter "resid"

    .prologue
    .line 1073
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_d

    .line 1074
    const-string v0, ""

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mToast:Landroid/widget/Toast;

    .line 1076
    :cond_d
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(I)V

    .line 1077
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1078
    return-void
.end method

.method private startPlayback()V
    .registers 11

    .prologue
    .line 1082
    iget-object v7, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    if-nez v7, :cond_5

    .line 1113
    :goto_4
    return-void

    .line 1084
    :cond_5
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 1085
    .local v2, intent:Landroid/content/Intent;
    const-string v1, ""

    .line 1086
    .local v1, filename:Ljava/lang/String;
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    .line 1087
    .local v6, uri:Landroid/net/Uri;
    if-eqz v6, :cond_5b

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_5b

    .line 1090
    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    .line 1091
    .local v5, scheme:Ljava/lang/String;
    const-string v7, "file"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_66

    .line 1092
    invoke-virtual {v6}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 1097
    :goto_2b
    :try_start_2b
    const-string v7, "content"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3f

    const-string v7, "media"

    invoke-virtual {v6}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_42

    .line 1099
    :cond_3f
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/music/MediaPlaybackActivity;->mOneShot:Z

    .line 1101
    :cond_42
    iget-object v7, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v7}, Lcom/android/music/IMediaPlaybackService;->stop()V

    .line 1102
    iget-object v7, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    iget-boolean v8, p0, Lcom/android/music/MediaPlaybackActivity;->mOneShot:Z

    invoke-interface {v7, v1, v8}, Lcom/android/music/IMediaPlaybackService;->openFile(Ljava/lang/String;Z)V

    .line 1103
    iget-object v7, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v7}, Lcom/android/music/IMediaPlaybackService;->play()V

    .line 1104
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, v7}, Lcom/android/music/MediaPlaybackActivity;->setIntent(Landroid/content/Intent;)V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_5b} :catch_6b

    .line 1110
    .end local v5           #scheme:Ljava/lang/String;
    :cond_5b
    :goto_5b
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->updateTrackInfo()V

    .line 1111
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->refreshNow()J

    move-result-wide v3

    .line 1112
    .local v3, next:J
    invoke-direct {p0, v3, v4}, Lcom/android/music/MediaPlaybackActivity;->queueNextRefresh(J)V

    goto :goto_4

    .line 1094
    .end local v3           #next:J
    .restart local v5       #scheme:Ljava/lang/String;
    :cond_66
    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2b

    .line 1105
    :catch_6b
    move-exception v7

    move-object v0, v7

    .line 1106
    .local v0, ex:Ljava/lang/Exception;
    const-string v7, "MediaPlaybackActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "couldn\'t start playback: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5b
.end method

.method private toggleShuffle()V
    .registers 5

    .prologue
    const/4 v2, 0x2

    const/4 v3, 0x1

    .line 1022
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    if-nez v1, :cond_7

    .line 1044
    :goto_6
    return-void

    .line 1026
    :cond_7
    :try_start_7
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/android/music/IMediaPlaybackService;->getShuffleMode()I

    move-result v0

    .line 1027
    .local v0, shuffle:I
    if-nez v0, :cond_32

    .line 1028
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/music/IMediaPlaybackService;->setShuffleMode(I)V

    .line 1029
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/android/music/IMediaPlaybackService;->getRepeatMode()I

    move-result v1

    if-ne v1, v3, :cond_26

    .line 1030
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/android/music/IMediaPlaybackService;->setRepeatMode(I)V

    .line 1031
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->setRepeatButtonImage()V

    .line 1033
    :cond_26
    const v1, 0x7f070031

    invoke-direct {p0, v1}, Lcom/android/music/MediaPlaybackActivity;->showToast(I)V

    .line 1041
    :goto_2c
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->setShuffleButtonImage()V

    goto :goto_6

    .line 1042
    .end local v0           #shuffle:I
    :catch_30
    move-exception v1

    goto :goto_6

    .line 1034
    .restart local v0       #shuffle:I
    :cond_32
    if-eq v0, v3, :cond_36

    if-ne v0, v2, :cond_43

    .line 1036
    :cond_36
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/music/IMediaPlaybackService;->setShuffleMode(I)V

    .line 1037
    const v1, 0x7f070032

    invoke-direct {p0, v1}, Lcom/android/music/MediaPlaybackActivity;->showToast(I)V

    goto :goto_2c

    .line 1039
    :cond_43
    const-string v1, "MediaPlaybackActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid shuffle mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5b
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_5b} :catch_30

    goto :goto_2c
.end method

.method private updateTrackInfo()V
    .registers 11

    .prologue
    const-string v5, "<unknown>"

    .line 1331
    iget-object v5, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    if-nez v5, :cond_7

    .line 1375
    :cond_6
    :goto_6
    return-void

    .line 1335
    :cond_7
    :try_start_7
    iget-object v5, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v5}, Lcom/android/music/IMediaPlaybackService;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 1336
    .local v4, path:Ljava/lang/String;
    if-nez v4, :cond_19

    .line 1337
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackActivity;->finish()V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_12} :catch_13

    goto :goto_6

    .line 1372
    .end local v4           #path:Ljava/lang/String;
    :catch_13
    move-exception v5

    move-object v3, v5

    .line 1373
    .local v3, ex:Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackActivity;->finish()V

    goto :goto_6

    .line 1341
    .end local v3           #ex:Landroid/os/RemoteException;
    .restart local v4       #path:Ljava/lang/String;
    :cond_19
    :try_start_19
    iget-object v5, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v5}, Lcom/android/music/IMediaPlaybackService;->getAudioId()I

    move-result v5

    if-gez v5, :cond_8a

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "http://"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8a

    .line 1342
    iget-object v5, p0, Lcom/android/music/MediaPlaybackActivity;->mArtistName:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1343
    iget-object v5, p0, Lcom/android/music/MediaPlaybackActivity;->mAlbumName:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1344
    iget-object v5, p0, Lcom/android/music/MediaPlaybackActivity;->mAlbum:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1345
    iget-object v5, p0, Lcom/android/music/MediaPlaybackActivity;->mTrackName:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1346
    iget-object v5, p0, Lcom/android/music/MediaPlaybackActivity;->mAlbumArtHandler:Lcom/android/music/MediaPlaybackActivity$AlbumArtHandler;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lcom/android/music/MediaPlaybackActivity$AlbumArtHandler;->removeMessages(I)V

    .line 1347
    iget-object v5, p0, Lcom/android/music/MediaPlaybackActivity;->mAlbumArtHandler:Lcom/android/music/MediaPlaybackActivity$AlbumArtHandler;

    const/4 v6, 0x3

    const/4 v7, -0x1

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/music/MediaPlaybackActivity$AlbumArtHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 1368
    :goto_63
    iget-object v5, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v5}, Lcom/android/music/IMediaPlaybackService;->duration()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_6

    .line 1369
    iget-object v5, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v5}, Lcom/android/music/IMediaPlaybackService;->duration()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/music/MediaPlaybackActivity;->mDuration:J

    .line 1370
    iget-object v5, p0, Lcom/android/music/MediaPlaybackActivity;->mTotalTime:Landroid/widget/TextView;

    iget-wide v6, p0, Lcom/android/music/MediaPlaybackActivity;->mDuration:J

    const-wide/16 v8, 0x1f4

    add-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-static {p0, v6, v7}, Lcom/android/music/MusicUtils;->makeTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 1349
    :cond_8a
    iget-object v5, p0, Lcom/android/music/MediaPlaybackActivity;->mArtistName:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1350
    iget-object v5, p0, Lcom/android/music/MediaPlaybackActivity;->mAlbumName:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1351
    iget-object v5, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v5}, Lcom/android/music/IMediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v2

    .line 1352
    .local v2, artistName:Ljava/lang/String;
    const-string v5, "<unknown>"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b7

    .line 1353
    const v5, 0x7f07002f

    invoke-virtual {p0, v5}, Lcom/android/music/MediaPlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1355
    :cond_b7
    iget-object v5, p0, Lcom/android/music/MediaPlaybackActivity;->mArtistName:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1356
    iget-object v5, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v5}, Lcom/android/music/IMediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v0

    .line 1357
    .local v0, albumName:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v5}, Lcom/android/music/IMediaPlaybackService;->getAlbumId()I

    move-result v1

    .line 1358
    .local v1, albumid:I
    const-string v5, "<unknown>"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d8

    .line 1359
    const v5, 0x7f070030

    invoke-virtual {p0, v5}, Lcom/android/music/MediaPlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1360
    const/4 v1, -0x1

    .line 1362
    :cond_d8
    iget-object v5, p0, Lcom/android/music/MediaPlaybackActivity;->mAlbumName:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1363
    iget-object v5, p0, Lcom/android/music/MediaPlaybackActivity;->mTrackName:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v6}, Lcom/android/music/IMediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1364
    iget-object v5, p0, Lcom/android/music/MediaPlaybackActivity;->mAlbumArtHandler:Lcom/android/music/MediaPlaybackActivity$AlbumArtHandler;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lcom/android/music/MediaPlaybackActivity$AlbumArtHandler;->removeMessages(I)V

    .line 1365
    iget-object v5, p0, Lcom/android/music/MediaPlaybackActivity;->mAlbumArtHandler:Lcom/android/music/MediaPlaybackActivity$AlbumArtHandler;

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v1, v7}, Lcom/android/music/MediaPlaybackActivity$AlbumArtHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 1366
    iget-object v5, p0, Lcom/android/music/MediaPlaybackActivity;->mAlbum:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_ff
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_ff} :catch_13

    goto/16 :goto_63
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 9
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 690
    const/4 v3, -0x1

    if-eq p2, v3, :cond_4

    .line 706
    :goto_3
    return-void

    .line 693
    :cond_4
    packed-switch p1, :pswitch_data_2a

    goto :goto_3

    .line 695
    :pswitch_8
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 696
    .local v2, uri:Landroid/net/Uri;
    if-eqz v2, :cond_24

    .line 697
    const/4 v3, 0x1

    new-array v0, v3, [I

    .line 698
    .local v0, list:[I
    const/4 v3, 0x0

    invoke-static {}, Lcom/android/music/MusicUtils;->getCurrentAudioId()I

    move-result v4

    aput v4, v0, v3

    .line 699
    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 700
    .local v1, playlist:I
    int-to-long v3, v1

    invoke-static {p0, v0, v3, v4}, Lcom/android/music/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJ)V

    .line 703
    .end local v0           #list:[I
    .end local v1           #playlist:I
    :cond_24
    iget-object v3, p0, Lcom/android/music/MediaPlaybackActivity;->mMenu:Landroid/view/Menu;

    invoke-virtual {p0, v3}, Lcom/android/music/MediaPlaybackActivity;->onUpgradeOptionsMenu(Landroid/view/Menu;)Z

    goto :goto_3

    .line 693
    :pswitch_data_2a
    .packed-switch 0x4
        :pswitch_8
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 11
    .parameter "icicle"

    .prologue
    const-wide/16 v6, 0x104

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v8, "oneshot"

    .line 119
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 120
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/android/music/MediaPlaybackActivity;->setVolumeControlStream(I)V

    .line 122
    new-instance v2, Lcom/android/music/MediaPlaybackActivity$Worker;

    const-string v3, "album art worker"

    invoke-direct {v2, v3}, Lcom/android/music/MediaPlaybackActivity$Worker;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mAlbumArtWorker:Lcom/android/music/MediaPlaybackActivity$Worker;

    .line 123
    new-instance v2, Lcom/android/music/MediaPlaybackActivity$AlbumArtHandler;

    iget-object v3, p0, Lcom/android/music/MediaPlaybackActivity;->mAlbumArtWorker:Lcom/android/music/MediaPlaybackActivity$Worker;

    invoke-virtual {v3}, Lcom/android/music/MediaPlaybackActivity$Worker;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/music/MediaPlaybackActivity$AlbumArtHandler;-><init>(Lcom/android/music/MediaPlaybackActivity;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mAlbumArtHandler:Lcom/android/music/MediaPlaybackActivity$AlbumArtHandler;

    .line 125
    invoke-virtual {p0, v5}, Lcom/android/music/MediaPlaybackActivity;->requestWindowFeature(I)Z

    .line 126
    const v2, 0x7f030001

    invoke-virtual {p0, v2}, Lcom/android/music/MediaPlaybackActivity;->setContentView(I)V

    .line 128
    const v2, 0x7f0a000d

    invoke-virtual {p0, v2}, Lcom/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mCurrentTime:Landroid/widget/TextView;

    .line 129
    const v2, 0x7f0a0011

    invoke-virtual {p0, v2}, Lcom/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mTotalTime:Landroid/widget/TextView;

    .line 130
    const v2, 0x102000d

    invoke-virtual {p0, v2}, Lcom/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mProgress:Landroid/widget/ProgressBar;

    .line 131
    const v2, 0x7f0a0006

    invoke-virtual {p0, v2}, Lcom/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mAlbum:Landroid/widget/ImageView;

    .line 132
    const v2, 0x7f0a000a

    invoke-virtual {p0, v2}, Lcom/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mArtistName:Landroid/widget/TextView;

    .line 133
    const v2, 0x7f0a000b

    invoke-virtual {p0, v2}, Lcom/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mAlbumName:Landroid/widget/TextView;

    .line 134
    const v2, 0x7f0a000c

    invoke-virtual {p0, v2}, Lcom/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mTrackName:Landroid/widget/TextView;

    .line 136
    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mArtistName:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 137
    .local v1, v:Landroid/view/View;
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 138
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 140
    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mAlbumName:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .end local v1           #v:Landroid/view/View;
    check-cast v1, Landroid/view/View;

    .line 141
    .restart local v1       #v:Landroid/view/View;
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 142
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 144
    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mTrackName:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .end local v1           #v:Landroid/view/View;
    check-cast v1, Landroid/view/View;

    .line 145
    .restart local v1       #v:Landroid/view/View;
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 146
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 148
    const v2, 0x7f0a000e

    invoke-virtual {p0, v2}, Lcom/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/music/RepeatingImageButton;

    iput-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mPrevButton:Lcom/android/music/RepeatingImageButton;

    .line 149
    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mPrevButton:Lcom/android/music/RepeatingImageButton;

    iget-object v3, p0, Lcom/android/music/MediaPlaybackActivity;->mPrevListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Lcom/android/music/RepeatingImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mPrevButton:Lcom/android/music/RepeatingImageButton;

    iget-object v3, p0, Lcom/android/music/MediaPlaybackActivity;->mRewListener:Lcom/android/music/RepeatingImageButton$RepeatListener;

    invoke-virtual {v2, v3, v6, v7}, Lcom/android/music/RepeatingImageButton;->setRepeatListener(Lcom/android/music/RepeatingImageButton$RepeatListener;J)V

    .line 151
    const v2, 0x7f0a000f

    invoke-virtual {p0, v2}, Lcom/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mPauseButton:Landroid/widget/ImageButton;

    .line 152
    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->requestFocus()Z

    .line 153
    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mPauseButton:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/android/music/MediaPlaybackActivity;->mPauseListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    const v2, 0x7f0a0010

    invoke-virtual {p0, v2}, Lcom/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/music/RepeatingImageButton;

    iput-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mNextButton:Lcom/android/music/RepeatingImageButton;

    .line 155
    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mNextButton:Lcom/android/music/RepeatingImageButton;

    iget-object v3, p0, Lcom/android/music/MediaPlaybackActivity;->mNextListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Lcom/android/music/RepeatingImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mNextButton:Lcom/android/music/RepeatingImageButton;

    iget-object v3, p0, Lcom/android/music/MediaPlaybackActivity;->mFfwdListener:Lcom/android/music/RepeatingImageButton$RepeatListener;

    invoke-virtual {v2, v3, v6, v7}, Lcom/android/music/RepeatingImageButton;->setRepeatListener(Lcom/android/music/RepeatingImageButton$RepeatListener;J)V

    .line 157
    iput v5, p0, Lcom/android/music/MediaPlaybackActivity;->seekmethod:I

    .line 159
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->navigation:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_171

    move v2, v5

    :goto_fc
    iput-boolean v2, p0, Lcom/android/music/MediaPlaybackActivity;->mDeviceHasNoDpad:Z

    .line 162
    const v2, 0x7f0a0007

    invoke-virtual {p0, v2}, Lcom/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mQueueButton:Landroid/widget/ImageButton;

    .line 163
    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mQueueButton:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/android/music/MediaPlaybackActivity;->mQueueListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    const v2, 0x7f0a0008

    invoke-virtual {p0, v2}, Lcom/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mShuffleButton:Landroid/widget/ImageButton;

    .line 165
    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mShuffleButton:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/android/music/MediaPlaybackActivity;->mShuffleListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    const v2, 0x7f0a0009

    invoke-virtual {p0, v2}, Lcom/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mRepeatButton:Landroid/widget/ImageButton;

    .line 167
    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mRepeatButton:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/android/music/MediaPlaybackActivity;->mRepeatListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mProgress:Landroid/widget/ProgressBar;

    instance-of v2, v2, Landroid/widget/SeekBar;

    if-eqz v2, :cond_143

    .line 170
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mProgress:Landroid/widget/ProgressBar;

    check-cast v0, Landroid/widget/SeekBar;

    .line 171
    .local v0, seeker:Landroid/widget/SeekBar;
    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 173
    .end local v0           #seeker:Landroid/widget/SeekBar;
    :cond_143
    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mProgress:Landroid/widget/ProgressBar;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 175
    if-eqz p1, :cond_173

    .line 176
    const-string v2, "oneshot"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/music/MediaPlaybackActivity;->mOneShot:Z

    .line 181
    :goto_154
    const-string v2, "ro.qualcomm.proprietary_obex"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_166

    .line 182
    const-string v2, "bluetooth"

    invoke-virtual {p0, v2}, Lcom/android/music/MediaPlaybackActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    iput-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mBluetooth:Landroid/bluetooth/BluetoothDevice;

    .line 185
    :cond_166
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/android/music/MediaPlaybackActivity;->mTouchSlop:I

    .line 186
    return-void

    :cond_171
    move v2, v4

    .line 159
    goto :goto_fc

    .line 178
    :cond_173
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "oneshot"

    invoke-virtual {v2, v8, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/music/MediaPlaybackActivity;->mOneShot:Z

    goto :goto_154
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 3
    .parameter "menu"

    .prologue
    .line 530
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 536
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mMenu:Landroid/view/Menu;

    if-nez v0, :cond_9

    iput-object p1, p0, Lcom/android/music/MediaPlaybackActivity;->mMenu:Landroid/view/Menu;

    .line 537
    :cond_9
    invoke-virtual {p0, p1}, Lcom/android/music/MediaPlaybackActivity;->onUpgradeOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 523
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mAlbumArtWorker:Lcom/android/music/MediaPlaybackActivity$Worker;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackActivity$Worker;->quit()V

    .line 524
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 526
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 10
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v6, 0x1

    .line 854
    const/4 v0, -0x1

    .line 855
    .local v0, direction:I
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    .line 857
    .local v1, repcnt:I
    iget v2, p0, Lcom/android/music/MediaPlaybackActivity;->seekmethod:I

    if-nez v2, :cond_12

    invoke-direct {p0, p1}, Lcom/android/music/MediaPlaybackActivity;->seekMethod1(I)Z

    move-result v2

    if-eqz v2, :cond_18

    :cond_10
    move v2, v6

    .line 914
    :goto_11
    return v2

    .line 857
    :cond_12
    invoke-direct {p0, p1}, Lcom/android/music/MediaPlaybackActivity;->seekMethod2(I)Z

    move-result v2

    if-nez v2, :cond_10

    .line 860
    :cond_18
    sparse-switch p1, :sswitch_data_70

    .line 914
    :cond_1b
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_11

    .line 883
    :sswitch_20
    iget v2, p0, Lcom/android/music/MediaPlaybackActivity;->seekmethod:I

    sub-int v2, v6, v2

    iput v2, p0, Lcom/android/music/MediaPlaybackActivity;->seekmethod:I

    move v2, v6

    .line 884
    goto :goto_11

    .line 887
    :sswitch_28
    iget-boolean v2, p0, Lcom/android/music/MediaPlaybackActivity;->mDeviceHasNoDpad:Z

    if-nez v2, :cond_1b

    .line 890
    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mPrevButton:Lcom/android/music/RepeatingImageButton;

    invoke-virtual {v2}, Lcom/android/music/RepeatingImageButton;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_39

    .line 891
    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mPrevButton:Lcom/android/music/RepeatingImageButton;

    invoke-virtual {v2}, Lcom/android/music/RepeatingImageButton;->requestFocus()Z

    .line 893
    :cond_39
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-direct {p0, v1, v2, v3}, Lcom/android/music/MediaPlaybackActivity;->scanBackward(IJ)V

    move v2, v6

    .line 894
    goto :goto_11

    .line 896
    :sswitch_47
    iget-boolean v2, p0, Lcom/android/music/MediaPlaybackActivity;->mDeviceHasNoDpad:Z

    if-nez v2, :cond_1b

    .line 899
    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mNextButton:Lcom/android/music/RepeatingImageButton;

    invoke-virtual {v2}, Lcom/android/music/RepeatingImageButton;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_58

    .line 900
    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mNextButton:Lcom/android/music/RepeatingImageButton;

    invoke-virtual {v2}, Lcom/android/music/RepeatingImageButton;->requestFocus()Z

    .line 902
    :cond_58
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-direct {p0, v1, v2, v3}, Lcom/android/music/MediaPlaybackActivity;->scanForward(IJ)V

    move v2, v6

    .line 903
    goto :goto_11

    .line 906
    :sswitch_66
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->toggleShuffle()V

    move v2, v6

    .line 907
    goto :goto_11

    .line 911
    :sswitch_6b
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->doPauseResume()V

    move v2, v6

    .line 912
    goto :goto_11

    .line 860
    :sswitch_data_70
    .sparse-switch
        0x15 -> :sswitch_28
        0x16 -> :sswitch_47
        0x17 -> :sswitch_6b
        0x2f -> :sswitch_66
        0x3e -> :sswitch_6b
        0x4c -> :sswitch_20
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 9
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    const-wide/16 v2, 0x0

    .line 805
    packed-switch p1, :pswitch_data_96

    .line 848
    :cond_6
    :goto_6
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_a
    return v0

    .line 808
    :pswitch_b
    :try_start_b
    iget-boolean v0, p0, Lcom/android/music/MediaPlaybackActivity;->mDeviceHasNoDpad:Z

    if-nez v0, :cond_6

    .line 811
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    if-eqz v0, :cond_2f

    .line 812
    iget-boolean v0, p0, Lcom/android/music/MediaPlaybackActivity;->mSeeking:Z

    if-nez v0, :cond_42

    iget-wide v0, p0, Lcom/android/music/MediaPlaybackActivity;->mStartSeekPos:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_42

    .line 813
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->requestFocus()Z

    .line 814
    iget-wide v0, p0, Lcom/android/music/MediaPlaybackActivity;->mStartSeekPos:J

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-gez v0, :cond_38

    .line 815
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/android/music/IMediaPlaybackService;->prev()V

    .line 825
    :cond_2f
    :goto_2f
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/music/MediaPlaybackActivity;->mSeeking:Z

    .line 826
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/music/MediaPlaybackActivity;->mPosOverride:J

    move v0, v5

    .line 827
    goto :goto_a

    .line 817
    :cond_38
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/music/IMediaPlaybackService;->seek(J)J

    goto :goto_2f

    .line 846
    :catch_40
    move-exception v0

    goto :goto_6

    .line 820
    :cond_42
    const/4 v0, -0x1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-direct {p0, v0, v1, v2}, Lcom/android/music/MediaPlaybackActivity;->scanBackward(IJ)V

    .line 821
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->requestFocus()Z

    .line 822
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/music/MediaPlaybackActivity;->mStartSeekPos:J

    goto :goto_2f

    .line 829
    :pswitch_59
    iget-boolean v0, p0, Lcom/android/music/MediaPlaybackActivity;->mDeviceHasNoDpad:Z

    if-nez v0, :cond_6

    .line 832
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    if-eqz v0, :cond_75

    .line 833
    iget-boolean v0, p0, Lcom/android/music/MediaPlaybackActivity;->mSeeking:Z

    if-nez v0, :cond_7e

    iget-wide v0, p0, Lcom/android/music/MediaPlaybackActivity;->mStartSeekPos:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_7e

    .line 834
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->requestFocus()Z

    .line 835
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/android/music/IMediaPlaybackService;->next()V

    .line 842
    :cond_75
    :goto_75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/music/MediaPlaybackActivity;->mSeeking:Z

    .line 843
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/music/MediaPlaybackActivity;->mPosOverride:J

    move v0, v5

    .line 844
    goto :goto_a

    .line 837
    :cond_7e
    const/4 v0, -0x1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-direct {p0, v0, v1, v2}, Lcom/android/music/MediaPlaybackActivity;->scanForward(IJ)V

    .line 838
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->requestFocus()Z

    .line 839
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/music/MediaPlaybackActivity;->mStartSeekPos:J
    :try_end_94
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_94} :catch_40

    goto :goto_75

    .line 805
    nop

    :pswitch_data_96
    .packed-switch 0x15
        :pswitch_b
        :pswitch_59
    .end packed-switch
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 15
    .parameter "view"

    .prologue
    .line 295
    const/4 v9, 0x0

    .line 296
    .local v9, title:Ljava/lang/CharSequence;
    const/4 v6, 0x0

    .line 297
    .local v6, mime:Ljava/lang/String;
    const/4 v7, 0x0

    .line 303
    .local v7, query:Ljava/lang/String;
    :try_start_3
    iget-object v10, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v10}, Lcom/android/music/IMediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v1

    .line 304
    .local v1, artist:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v10}, Lcom/android/music/IMediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v0

    .line 305
    .local v0, album:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v10}, Lcom/android/music/IMediaPlaybackService;->getTrackName()Ljava/lang/String;
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_14} :catch_81

    move-result-object v8

    .line 310
    .local v8, song:Ljava/lang/String;
    if-eqz v1, :cond_85

    const-string v10, "<unknown>"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_85

    const/4 v10, 0x1

    move v5, v10

    .line 313
    .local v5, knownartist:Z
    :goto_21
    if-eqz v0, :cond_88

    const-string v10, "<unknown>"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_88

    const/4 v10, 0x1

    move v4, v10

    .line 316
    .local v4, knownalbum:Z
    :goto_2d
    if-eqz v5, :cond_8b

    iget-object v10, p0, Lcom/android/music/MediaPlaybackActivity;->mArtistName:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8b

    .line 317
    move-object v9, v1

    .line 318
    move-object v7, v1

    .line 319
    const-string v6, "vnd.android.cursor.item/artist"

    .line 345
    :goto_3f
    const v10, 0x7f070052

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v9, v11, v12

    invoke-virtual {p0, v10, v11}, Lcom/android/music/MediaPlaybackActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 347
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 348
    .local v3, i:Landroid/content/Intent;
    const/high16 v10, 0x1000

    invoke-virtual {v3, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 349
    const-string v10, "android.intent.action.MEDIA_SEARCH"

    invoke-virtual {v3, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 350
    const-string v10, "query"

    invoke-virtual {v3, v10, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 351
    if-eqz v5, :cond_67

    .line 352
    const-string v10, "android.intent.extra.artist"

    invoke-virtual {v3, v10, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 354
    :cond_67
    if-eqz v4, :cond_6e

    .line 355
    const-string v10, "android.intent.extra.album"

    invoke-virtual {v3, v10, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 357
    :cond_6e
    const-string v10, "android.intent.extra.title"

    invoke-virtual {v3, v10, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 358
    const-string v10, "android.intent.extra.focus"

    invoke-virtual {v3, v10, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 360
    invoke-static {v3, v9}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/music/MediaPlaybackActivity;->startActivity(Landroid/content/Intent;)V

    .line 361
    const/4 v10, 0x1

    .end local v0           #album:Ljava/lang/String;
    .end local v1           #artist:Ljava/lang/String;
    .end local v3           #i:Landroid/content/Intent;
    .end local v4           #knownalbum:Z
    .end local v5           #knownartist:Z
    .end local v8           #song:Ljava/lang/String;
    :goto_80
    return v10

    .line 306
    :catch_81
    move-exception v10

    move-object v2, v10

    .line 307
    .local v2, ex:Landroid/os/RemoteException;
    const/4 v10, 0x1

    goto :goto_80

    .line 310
    .end local v2           #ex:Landroid/os/RemoteException;
    .restart local v0       #album:Ljava/lang/String;
    .restart local v1       #artist:Ljava/lang/String;
    .restart local v8       #song:Ljava/lang/String;
    :cond_85
    const/4 v10, 0x0

    move v5, v10

    goto :goto_21

    .line 313
    .restart local v5       #knownartist:Z
    :cond_88
    const/4 v10, 0x0

    move v4, v10

    goto :goto_2d

    .line 320
    .restart local v4       #knownalbum:Z
    :cond_8b
    if-eqz v4, :cond_b8

    iget-object v10, p0, Lcom/android/music/MediaPlaybackActivity;->mAlbumName:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b8

    .line 321
    move-object v9, v0

    .line 322
    if-eqz v5, :cond_b6

    .line 323
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 327
    :goto_b3
    const-string v6, "vnd.android.cursor.item/album"

    goto :goto_3f

    .line 325
    :cond_b6
    move-object v7, v0

    goto :goto_b3

    .line 328
    :cond_b8
    iget-object v10, p0, Lcom/android/music/MediaPlaybackActivity;->mTrackName:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_c8

    if-eqz v5, :cond_c8

    if-nez v4, :cond_f4

    .line 329
    :cond_c8
    if-eqz v8, :cond_d2

    const-string v10, "<unknown>"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d4

    .line 332
    :cond_d2
    const/4 v10, 0x1

    goto :goto_80

    .line 335
    :cond_d4
    move-object v9, v8

    .line 336
    if-eqz v5, :cond_f2

    .line 337
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 341
    :goto_ee
    const-string v6, "audio/*"

    goto/16 :goto_3f

    .line 339
    :cond_f2
    move-object v7, v8

    goto :goto_ee

    .line 343
    :cond_f4
    new-instance v10, Ljava/lang/RuntimeException;

    const-string v11, "shouldn\'t be here"

    invoke-direct {v10, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v10
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .registers 4
    .parameter "intent"

    .prologue
    .line 509
    invoke-virtual {p0, p1}, Lcom/android/music/MediaPlaybackActivity;->setIntent(Landroid/content/Intent;)V

    .line 510
    const-string v0, "oneshot"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/music/MediaPlaybackActivity;->mOneShot:Z

    .line 511
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 14
    .parameter "item"

    .prologue
    const/4 v7, 0x2

    const/4 v11, 0x1

    .line 602
    :try_start_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_5} :catch_21

    move-result v6

    packed-switch v6, :pswitch_data_d0

    .line 667
    :goto_9
    :pswitch_9
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v6

    :goto_d
    return v6

    .line 604
    :pswitch_e
    :try_start_e
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 605
    .local v1, intent:Landroid/content/Intent;
    const-class v6, Lcom/android/music/MusicBrowserActivity;

    invoke-virtual {v1, p0, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 606
    const/high16 v6, 0x1400

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 608
    invoke-virtual {p0, v1}, Lcom/android/music/MediaPlaybackActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_9

    .line 665
    .end local v1           #intent:Landroid/content/Intent;
    :catch_21
    move-exception v6

    goto :goto_9

    .line 612
    :pswitch_23
    iget-object v6, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    if-eqz v6, :cond_31

    .line 613
    iget-object v6, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v6}, Lcom/android/music/IMediaPlaybackService;->getAudioId()I

    move-result v6

    int-to-long v6, v6

    invoke-static {p0, v6, v7}, Lcom/android/music/MusicUtils;->setRingtone(Landroid/content/Context;J)V

    :cond_31
    move v6, v11

    .line 615
    goto :goto_d

    .line 618
    :pswitch_33
    iget-object v6, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    if-eqz v6, :cond_45

    .line 619
    iget-object v6, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v6}, Lcom/android/music/IMediaPlaybackService;->getShuffleMode()I

    move-result v4

    .line 620
    .local v4, shuffle:I
    if-ne v4, v7, :cond_49

    .line 621
    iget-object v6, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Lcom/android/music/IMediaPlaybackService;->setShuffleMode(I)V

    .line 626
    .end local v4           #shuffle:I
    :cond_45
    :goto_45
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->setShuffleButtonImage()V

    goto :goto_9

    .line 623
    .restart local v4       #shuffle:I
    :cond_49
    iget-object v6, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    const/4 v7, 0x2

    invoke-interface {v6, v7}, Lcom/android/music/IMediaPlaybackService;->setShuffleMode(I)V

    goto :goto_45

    .line 630
    .end local v4           #shuffle:I
    :pswitch_50
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 631
    .restart local v1       #intent:Landroid/content/Intent;
    const-class v6, Lcom/android/music/CreatePlaylist;

    invoke-virtual {v1, p0, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 632
    const/4 v6, 0x4

    invoke-virtual {p0, v1, v6}, Lcom/android/music/MediaPlaybackActivity;->startActivityForResult(Landroid/content/Intent;I)V

    move v6, v11

    .line 633
    goto :goto_d

    .line 637
    .end local v1           #intent:Landroid/content/Intent;
    :pswitch_60
    const/4 v6, 0x1

    new-array v2, v6, [I

    .line 638
    .local v2, list:[I
    const/4 v6, 0x0

    invoke-static {}, Lcom/android/music/MusicUtils;->getCurrentAudioId()I

    move-result v7

    aput v7, v2, v6

    .line 639
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "playlist"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 640
    .local v3, playlist:I
    int-to-long v6, v3

    invoke-static {p0, v2, v6, v7}, Lcom/android/music/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJ)V

    move v6, v11

    .line 641
    goto :goto_d

    .line 645
    .end local v2           #list:[I
    .end local v3           #playlist:I
    :pswitch_7b
    iget-object v6, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    if-eqz v6, :cond_bc

    .line 646
    const/4 v6, 0x1

    new-array v2, v6, [I

    .line 647
    .restart local v2       #list:[I
    const/4 v6, 0x0

    invoke-static {}, Lcom/android/music/MusicUtils;->getCurrentAudioId()I

    move-result v7

    aput v7, v2, v6

    .line 648
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 649
    .local v0, b:Landroid/os/Bundle;
    const-string v6, "description"

    const v7, 0x7f07000d

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v10}, Lcom/android/music/IMediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {p0, v7, v8}, Lcom/android/music/MediaPlaybackActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    const-string v6, "items"

    invoke-virtual {v0, v6, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 652
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 653
    .restart local v1       #intent:Landroid/content/Intent;
    const-class v6, Lcom/android/music/DeleteItems;

    invoke-virtual {v1, p0, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 654
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 655
    const/4 v6, -0x1

    invoke-virtual {p0, v1, v6}, Lcom/android/music/MediaPlaybackActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .end local v0           #b:Landroid/os/Bundle;
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #list:[I
    :cond_bc
    move v6, v11

    .line 657
    goto/16 :goto_d

    .line 660
    :pswitch_bf
    iget-object v6, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v6}, Lcom/android/music/IMediaPlaybackService;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 661
    .local v5, uri:Landroid/net/Uri;
    invoke-direct {p0, v5}, Lcom/android/music/MediaPlaybackActivity;->doBluetoothDeviceTransfer(Landroid/net/Uri;)V
    :try_end_cc
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_cc} :catch_21

    move v6, v11

    .line 662
    goto/16 :goto_d

    .line 602
    nop

    :pswitch_data_d0
    .packed-switch 0x1
        :pswitch_bf
        :pswitch_9
        :pswitch_60
        :pswitch_50
        :pswitch_9
        :pswitch_e
        :pswitch_9
        :pswitch_33
        :pswitch_9
        :pswitch_7b
        :pswitch_9
        :pswitch_9
        :pswitch_23
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 8
    .parameter "menu"

    .prologue
    const v5, 0x7f02001a

    const/4 v4, 0x1

    .line 573
    const/16 v3, 0x8

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 574
    .local v1, item:Landroid/view/MenuItem;
    if-eqz v1, :cond_1c

    .line 575
    invoke-static {}, Lcom/android/music/MusicUtils;->getCurrentShuffleMode()I

    move-result v2

    .line 576
    .local v2, shuffle:I
    const/4 v3, 0x2

    if-ne v2, v3, :cond_2e

    .line 577
    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 578
    const v3, 0x7f070007

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 588
    .end local v2           #shuffle:I
    :cond_1c
    :goto_1c
    const/4 v0, 0x0

    .line 589
    .local v0, bluetoothEnabled:Z
    iget-object v3, p0, Lcom/android/music/MediaPlaybackActivity;->mBluetooth:Landroid/bluetooth/BluetoothDevice;

    if-eqz v3, :cond_27

    .line 590
    iget-object v3, p0, Lcom/android/music/MediaPlaybackActivity;->mBluetooth:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->isEnabled()Z

    move-result v0

    .line 592
    :cond_27
    invoke-interface {p1, v4, v0}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 593
    invoke-interface {p1, v4, v0}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 595
    return v4

    .line 580
    .end local v0           #bluetoothEnabled:Z
    .restart local v2       #shuffle:I
    :cond_2e
    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 581
    const v3, 0x7f070006

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_1c
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 515
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 516
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->updateTrackInfo()V

    .line 517
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->setPauseButtonImage()V

    .line 518
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 481
    const-string v0, "oneshot"

    iget-boolean v1, p0, Lcom/android/music/MediaPlaybackActivity;->mOneShot:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 482
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 483
    return-void
.end method

.method public onStart()V
    .registers 6

    .prologue
    .line 487
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 488
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/music/MediaPlaybackActivity;->paused:Z

    .line 490
    iget-object v3, p0, Lcom/android/music/MediaPlaybackActivity;->osc:Landroid/content/ServiceConnection;

    invoke-static {p0, v3}, Lcom/android/music/MusicUtils;->bindToService(Landroid/content/Context;Landroid/content/ServiceConnection;)Z

    move-result v3

    if-nez v3, :cond_14

    .line 492
    iget-object v3, p0, Lcom/android/music/MediaPlaybackActivity;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 495
    :cond_14
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 496
    .local v0, f:Landroid/content/IntentFilter;
    const-string v3, "com.android.music.playstatechanged"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 497
    const-string v3, "com.android.music.metachanged"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 498
    const-string v3, "com.android.music.playbackcomplete"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 499
    const-string v3, "com.android.music.refreshui"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 500
    const-string v3, "com.android.music.trackend"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 501
    iget-object v3, p0, Lcom/android/music/MediaPlaybackActivity;->mStatusListener:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4, v0}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    invoke-virtual {p0, v3, v4}, Lcom/android/music/MediaPlaybackActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 502
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->updateTrackInfo()V

    .line 503
    invoke-direct {p0}, Lcom/android/music/MediaPlaybackActivity;->refreshNow()J

    move-result-wide v1

    .line 504
    .local v1, next:J
    invoke-direct {p0, v1, v2}, Lcom/android/music/MediaPlaybackActivity;->queueNextRefresh(J)V

    .line 505
    return-void
.end method

.method public onStop()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 465
    iput-boolean v1, p0, Lcom/android/music/MediaPlaybackActivity;->paused:Z

    .line 466
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Lcom/android/music/MediaPlaybackActivity;->mOneShot:Z

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackActivity;->getChangingConfigurations()I

    move-result v0

    if-nez v0, :cond_16

    .line 468
    :try_start_11
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/android/music/IMediaPlaybackService;->stop()V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_16} :catch_2a

    .line 472
    :cond_16
    :goto_16
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 473
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mStatusListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/music/MediaPlaybackActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 474
    invoke-static {p0}, Lcom/android/music/MusicUtils;->unbindFromService(Landroid/content/Context;)V

    .line 475
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;

    .line 476
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 477
    return-void

    .line 469
    :catch_2a
    move-exception v0

    goto :goto_16
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 14
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 205
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 206
    .local v0, action:I
    invoke-virtual {p0, p1}, Lcom/android/music/MediaPlaybackActivity;->textViewForContainer(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v5

    .line 207
    .local v5, tv:Landroid/widget/TextView;
    if-nez v5, :cond_e

    move v7, v10

    .line 274
    :goto_d
    return v7

    .line 210
    :cond_e
    if-nez v0, :cond_23

    .line 211
    const v7, -0x9f9fa0

    invoke-virtual {p1, v7}, Landroid/view/View;->setBackgroundColor(I)V

    .line 212
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/android/music/MediaPlaybackActivity;->mLastX:I

    iput v7, p0, Lcom/android/music/MediaPlaybackActivity;->mInitialX:I

    .line 213
    iput-boolean v10, p0, Lcom/android/music/MediaPlaybackActivity;->mDraggingLabel:Z

    :cond_21
    :goto_21
    move v7, v10

    .line 274
    goto :goto_d

    .line 214
    :cond_23
    if-eq v0, v9, :cond_28

    const/4 v7, 0x3

    if-ne v0, v7, :cond_3d

    .line 216
    :cond_28
    invoke-virtual {p1, v10}, Landroid/view/View;->setBackgroundColor(I)V

    .line 217
    iget-boolean v7, p0, Lcom/android/music/MediaPlaybackActivity;->mDraggingLabel:Z

    if-eqz v7, :cond_21

    .line 218
    iget-object v7, p0, Lcom/android/music/MediaPlaybackActivity;->mLabelScroller:Landroid/os/Handler;

    invoke-virtual {v7, v10, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 219
    .local v3, msg:Landroid/os/Message;
    iget-object v7, p0, Lcom/android/music/MediaPlaybackActivity;->mLabelScroller:Landroid/os/Handler;

    const-wide/16 v8, 0x3e8

    invoke-virtual {v7, v3, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_21

    .line 221
    .end local v3           #msg:Landroid/os/Message;
    :cond_3d
    const/4 v7, 0x2

    if-ne v0, v7, :cond_21

    .line 222
    iget-boolean v7, p0, Lcom/android/music/MediaPlaybackActivity;->mDraggingLabel:Z

    if-eqz v7, :cond_70

    .line 223
    invoke-virtual {v5}, Landroid/widget/TextView;->getScrollX()I

    move-result v4

    .line 224
    .local v4, scrollx:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v6, v7

    .line 225
    .local v6, x:I
    iget v7, p0, Lcom/android/music/MediaPlaybackActivity;->mLastX:I

    sub-int v1, v7, v6

    .line 226
    .local v1, delta:I
    if-eqz v1, :cond_6e

    .line 227
    iput v6, p0, Lcom/android/music/MediaPlaybackActivity;->mLastX:I

    .line 228
    add-int/2addr v4, v1

    .line 229
    iget v7, p0, Lcom/android/music/MediaPlaybackActivity;->mTextWidth:I

    if-le v4, v7, :cond_60

    .line 231
    iget v7, p0, Lcom/android/music/MediaPlaybackActivity;->mTextWidth:I

    sub-int/2addr v4, v7

    .line 232
    iget v7, p0, Lcom/android/music/MediaPlaybackActivity;->mViewWidth:I

    sub-int/2addr v4, v7

    .line 234
    :cond_60
    iget v7, p0, Lcom/android/music/MediaPlaybackActivity;->mViewWidth:I

    neg-int v7, v7

    if-ge v4, v7, :cond_6b

    .line 236
    iget v7, p0, Lcom/android/music/MediaPlaybackActivity;->mViewWidth:I

    add-int/2addr v4, v7

    .line 237
    iget v7, p0, Lcom/android/music/MediaPlaybackActivity;->mTextWidth:I

    add-int/2addr v4, v7

    .line 239
    :cond_6b
    invoke-virtual {v5, v4, v10}, Landroid/widget/TextView;->scrollTo(II)V

    :cond_6e
    move v7, v9

    .line 241
    goto :goto_d

    .line 243
    .end local v1           #delta:I
    .end local v4           #scrollx:I
    .end local v6           #x:I
    :cond_70
    iget v7, p0, Lcom/android/music/MediaPlaybackActivity;->mInitialX:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v8, v8

    sub-int v1, v7, v8

    .line 244
    .restart local v1       #delta:I
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v7

    iget v8, p0, Lcom/android/music/MediaPlaybackActivity;->mTouchSlop:I

    if-le v7, v8, :cond_21

    .line 246
    iget-object v7, p0, Lcom/android/music/MediaPlaybackActivity;->mLabelScroller:Landroid/os/Handler;

    invoke-virtual {v7, v10, v5}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 250
    invoke-virtual {v5}, Landroid/widget/TextView;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    move-result-object v7

    if-eqz v7, :cond_90

    .line 251
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 253
    :cond_90
    invoke-virtual {v5}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    .line 256
    .local v2, ll:Landroid/text/Layout;
    if-nez v2, :cond_99

    move v7, v10

    .line 257
    goto/16 :goto_d

    .line 261
    :cond_99
    invoke-virtual {v5}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/android/music/MediaPlaybackActivity;->mTextWidth:I

    .line 262
    invoke-virtual {v5}, Landroid/widget/TextView;->getWidth()I

    move-result v7

    iput v7, p0, Lcom/android/music/MediaPlaybackActivity;->mViewWidth:I

    .line 263
    iget v7, p0, Lcom/android/music/MediaPlaybackActivity;->mViewWidth:I

    iget v8, p0, Lcom/android/music/MediaPlaybackActivity;->mTextWidth:I

    if-le v7, v8, :cond_bb

    .line 264
    sget-object v7, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 265
    invoke-virtual {p1}, Landroid/view/View;->cancelLongPress()V

    move v7, v10

    .line 266
    goto/16 :goto_d

    .line 268
    :cond_bb
    iput-boolean v9, p0, Lcom/android/music/MediaPlaybackActivity;->mDraggingLabel:Z

    .line 269
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 270
    invoke-virtual {p1}, Landroid/view/View;->cancelLongPress()V

    move v7, v9

    .line 271
    goto/16 :goto_d
.end method

.method public onUpgradeOptionsMenu(Landroid/view/Menu;)Z
    .registers 8
    .parameter "menu"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 542
    invoke-static {}, Lcom/android/music/MusicUtils;->getCurrentAudioId()I

    move-result v2

    if-ltz v2, :cond_7a

    iget-boolean v2, p0, Lcom/android/music/MediaPlaybackActivity;->mOneShot:Z

    if-nez v2, :cond_7a

    .line 543
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 545
    const/4 v2, 0x6

    const v3, 0x7f070004

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f020019

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 546
    const/16 v2, 0x8

    const v3, 0x7f070006

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 547
    const v2, 0x7f07003a

    invoke-interface {p1, v4, v5, v4, v2}, Landroid/view/Menu;->addSubMenu(IIII)Landroid/view/SubMenu;

    move-result-object v2

    const v3, 0x1080033

    invoke-interface {v2, v3}, Landroid/view/SubMenu;->setIcon(I)Landroid/view/SubMenu;

    move-result-object v1

    .line 549
    .local v1, sub:Landroid/view/SubMenu;
    invoke-static {p0, v1}, Lcom/android/music/MusicUtils;->makePlaylistMenu(Landroid/content/Context;Landroid/view/SubMenu;)V

    .line 550
    const/16 v2, 0xd

    const v3, 0x7f070037

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f02001c

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 551
    const/16 v2, 0xa

    const v3, 0x7f070008

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f020018

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 556
    const/high16 v2, 0x7f07

    invoke-interface {p1, v5, v4, v4, v2}, Landroid/view/Menu;->addSubMenu(IIII)Landroid/view/SubMenu;

    move-result-object v2

    const v3, 0x1080052

    invoke-interface {v2, v3}, Landroid/view/SubMenu;->setIcon(I)Landroid/view/SubMenu;

    move-result-object v1

    .line 558
    const v2, 0x7f070001

    invoke-interface {v1, v5, v5, v4, v2}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    .line 560
    const/4 v0, 0x0

    .line 561
    .local v0, bluetoothEnabled:Z
    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mBluetooth:Landroid/bluetooth/BluetoothDevice;

    if-eqz v2, :cond_72

    .line 562
    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity;->mBluetooth:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->isEnabled()Z

    move-result v0

    .line 564
    :cond_72
    invoke-interface {p1, v5, v0}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 565
    invoke-interface {p1, v5, v0}, Landroid/view/Menu;->setGroupVisible(IZ)V

    move v2, v5

    .line 568
    .end local v0           #bluetoothEnabled:Z
    .end local v1           #sub:Landroid/view/SubMenu;
    :goto_79
    return v2

    :cond_7a
    move v2, v4

    goto :goto_79
.end method

.method textViewForContainer(Landroid/view/View;)Landroid/widget/TextView;
    .registers 5
    .parameter "v"

    .prologue
    .line 195
    const v2, 0x7f0a000a

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 196
    .local v1, vv:Landroid/view/View;
    if-eqz v1, :cond_e

    move-object v0, v1

    check-cast v0, Landroid/widget/TextView;

    move-object v2, v0

    .line 201
    :goto_d
    return-object v2

    .line 197
    :cond_e
    const v2, 0x7f0a000b

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 198
    if-eqz v1, :cond_1c

    move-object v0, v1

    check-cast v0, Landroid/widget/TextView;

    move-object v2, v0

    goto :goto_d

    .line 199
    :cond_1c
    const v2, 0x7f0a000c

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 200
    if-eqz v1, :cond_2a

    move-object v0, v1

    check-cast v0, Landroid/widget/TextView;

    move-object v2, v0

    goto :goto_d

    .line 201
    :cond_2a
    const/4 v2, 0x0

    goto :goto_d
.end method
