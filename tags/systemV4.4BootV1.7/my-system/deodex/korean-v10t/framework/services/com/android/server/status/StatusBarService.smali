.class public Lcom/android/server/status/StatusBarService;
.super Landroid/app/IStatusBar$Stub;
.source "StatusBarService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/status/StatusBarService$UninstallReceiver;,
        Lcom/android/server/status/StatusBarService$MyTicker;,
        Lcom/android/server/status/StatusBarService$Launcher;,
        Lcom/android/server/status/StatusBarService$H;,
        Lcom/android/server/status/StatusBarService$ExpandedDialog;,
        Lcom/android/server/status/StatusBarService$NotificationCallbacks;,
        Lcom/android/server/status/StatusBarService$DisableRecord;,
        Lcom/android/server/status/StatusBarService$PendingOp;
    }
.end annotation


# static fields
.field static final ANIM_FRAME_DURATION:I = 0x10

.field static final DBG:Z = false

.field static final DEBUG:Z = false

.field static final EXPANDED_FULL_OPEN:I = -0x2711

.field static final EXPANDED_LEAVE_ALONE:I = -0x2710

.field private static final MSG_ANIMATE:I = 0x3e8

.field private static final MSG_ANIMATE_REVEAL:I = 0x3e9

.field private static final OP_ADD_ICON:I = 0x1

.field private static final OP_DISABLE:I = 0x7

.field private static final OP_EXPAND:I = 0x5

.field private static final OP_REMOVE_ICON:I = 0x3

.field private static final OP_SET_BACKGROUND:I = 0x8

.field private static final OP_SET_VISIBLE:I = 0x4

.field private static final OP_TOGGLE:I = 0x6

.field private static final OP_UPDATE_ICON:I = 0x2

.field private static final OP_UPDATE_ICON_COLOR:I = 0x9

.field static final SPEW:Z = false

.field static final TAG:Ljava/lang/String; = "StatusBar"

.field private static mBTImgButton:Landroid/widget/ImageButton;

.field private static mOffBT:Landroid/graphics/Bitmap;

.field private static mOffWiFi:Landroid/graphics/Bitmap;

.field private static mOnBT:Landroid/graphics/Bitmap;

.field private static mOnWiFi:Landroid/graphics/Bitmap;

.field private static mPressedBT:Landroid/graphics/Bitmap;

.field private static mPressedWiFi:Landroid/graphics/Bitmap;

.field private static mWiFiImgButton:Landroid/widget/ImageButton;


# instance fields
.field mAbsPos:[I

.field mAnimAccel:F

.field mAnimLastTime:J

.field mAnimVel:F

.field mAnimY:F

.field mAnimating:Z

.field mAnimatingReveal:Z

.field private mBluetoothSet:Landroid/bluetooth/BluetoothDevice;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mBtButtonHandler:Landroid/view/View$OnClickListener;

.field mClearButton:Landroid/widget/TextView;

.field private mClearButtonListener:Landroid/view/View$OnClickListener;

.field mCloseLocation:[I

.field mCloseView:Lcom/android/server/status/CloseDragHandle;

.field private mContentResolver:Landroid/content/ContentResolver;

.field final mContext:Landroid/content/Context;

.field mCurAnimationTime:J

.field mDateView:Lcom/android/server/status/DateView;

.field mDisableRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/status/StatusBarService$DisableRecord;",
            ">;"
        }
    .end annotation
.end field

.field mDisabled:I

.field final mDisplay:Landroid/view/Display;

.field mDisplayHeight:F

.field mExpanded:Z

.field mExpandedDialog:Landroid/app/Dialog;

.field mExpandedParams:Landroid/view/WindowManager$LayoutParams;

.field mExpandedView:Lcom/android/server/status/ExpandedView;

.field mExpandedVisible:Z

.field mFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field mHandler:Lcom/android/server/status/StatusBarService$H;

.field mIconList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/status/StatusBarIcon;",
            ">;"
        }
    .end annotation
.end field

.field mIconMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/status/StatusBarIcon;",
            ">;"
        }
    .end annotation
.end field

.field mIcons:Landroid/widget/LinearLayout;

.field mLatestItems:Landroid/widget/LinearLayout;

.field mLatestTitle:Landroid/widget/TextView;

.field mMoreIcon:Lcom/android/server/status/StatusBarIcon;

.field private mNetTypeBT:I

.field private mNetTypeWiFi:I

.field mNoNotificationsTitle:Landroid/widget/TextView;

.field mNotificationCallbacks:Lcom/android/server/status/StatusBarService$NotificationCallbacks;

.field mNotificationData:Lcom/android/server/status/NotificationViewList;

.field mNotificationIcons:Lcom/android/server/status/IconMerger;

.field mNotificationLinearLayout:Landroid/view/View;

.field mOngoingItems:Landroid/widget/LinearLayout;

.field mOngoingTitle:Landroid/widget/TextView;

.field private mPanelSlightlyVisible:Z

.field mPixelFormat:I

.field mPlmnLabel:Landroid/widget/TextView;

.field mQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/status/StatusBarService$PendingOp;",
            ">;"
        }
    .end annotation
.end field

.field mRightIconSlots:[Ljava/lang/String;

.field mRightIcons:[Lcom/android/server/status/StatusBarIcon;

.field mScrollView:Landroid/widget/ScrollView;

.field mSpnLabel:Landroid/widget/TextView;

.field mStartTracing:Ljava/lang/Runnable;

.field mStatusBarView:Lcom/android/server/status/StatusBarView;

.field mStatusIcons:Landroid/widget/LinearLayout;

.field mStopTracing:Ljava/lang/Runnable;

.field private mTicker:Lcom/android/server/status/Ticker;

.field private mTickerView:Landroid/view/View;

.field private mTicking:Z

.field mTickingDoneListener:Landroid/view/animation/Animation$AnimationListener;

.field mTracking:Z

.field mTrackingParams:Landroid/view/WindowManager$LayoutParams;

.field mTrackingPosition:I

.field mTrackingView:Lcom/android/server/status/TrackingView;

.field private mUninstallReceiver:Lcom/android/server/status/StatusBarService$UninstallReceiver;

.field mVelocityTracker:Landroid/view/VelocityTracker;

.field mViewDelta:I

.field private mWifiButtonHandler:Landroid/view/View$OnClickListener;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mbluetoothOn:I

.field private mwifiOn:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 269
    sput-object v0, Lcom/android/server/status/StatusBarService;->mOnBT:Landroid/graphics/Bitmap;

    .line 270
    sput-object v0, Lcom/android/server/status/StatusBarService;->mOffBT:Landroid/graphics/Bitmap;

    .line 271
    sput-object v0, Lcom/android/server/status/StatusBarService;->mPressedBT:Landroid/graphics/Bitmap;

    .line 272
    sput-object v0, Lcom/android/server/status/StatusBarService;->mOnWiFi:Landroid/graphics/Bitmap;

    .line 273
    sput-object v0, Lcom/android/server/status/StatusBarService;->mOffWiFi:Landroid/graphics/Bitmap;

    .line 274
    sput-object v0, Lcom/android/server/status/StatusBarService;->mPressedWiFi:Landroid/graphics/Bitmap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 280
    invoke-direct {p0}, Landroid/app/IStatusBar$Stub;-><init>()V

    .line 184
    new-instance v0, Lcom/android/server/status/StatusBarService$H;

    invoke-direct {v0, p0, v2}, Lcom/android/server/status/StatusBarService$H;-><init>(Lcom/android/server/status/StatusBarService;Lcom/android/server/status/StatusBarService$1;)V

    iput-object v0, p0, Lcom/android/server/status/StatusBarService;->mHandler:Lcom/android/server/status/StatusBarService$H;

    .line 185
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/status/StatusBarService;->mQueue:Ljava/util/ArrayList;

    .line 194
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/status/StatusBarService;->mIconMap:Ljava/util/HashMap;

    .line 195
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/status/StatusBarService;->mIconList:Ljava/util/ArrayList;

    .line 205
    new-instance v0, Lcom/android/server/status/NotificationViewList;

    invoke-direct {v0}, Lcom/android/server/status/NotificationViewList;-><init>()V

    iput-object v0, p0, Lcom/android/server/status/StatusBarService;->mNotificationData:Lcom/android/server/status/NotificationViewList;

    .line 220
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/android/server/status/StatusBarService;->mCloseLocation:[I

    .line 250
    iput-boolean v1, p0, Lcom/android/server/status/StatusBarService;->mAnimatingReveal:Z

    .line 252
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/android/server/status/StatusBarService;->mAbsPos:[I

    .line 255
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/status/StatusBarService;->mDisableRecords:Ljava/util/ArrayList;

    .line 256
    iput v1, p0, Lcom/android/server/status/StatusBarService;->mDisabled:I

    .line 260
    iput-object v2, p0, Lcom/android/server/status/StatusBarService;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 261
    iput-object v2, p0, Lcom/android/server/status/StatusBarService;->mBluetoothSet:Landroid/bluetooth/BluetoothDevice;

    .line 265
    iput v1, p0, Lcom/android/server/status/StatusBarService;->mNetTypeWiFi:I

    .line 266
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/status/StatusBarService;->mNetTypeBT:I

    .line 467
    new-instance v0, Lcom/android/server/status/StatusBarService$1;

    invoke-direct {v0, p0}, Lcom/android/server/status/StatusBarService$1;-><init>(Lcom/android/server/status/StatusBarService;)V

    iput-object v0, p0, Lcom/android/server/status/StatusBarService;->mWifiButtonHandler:Landroid/view/View$OnClickListener;

    .line 491
    new-instance v0, Lcom/android/server/status/StatusBarService$2;

    invoke-direct {v0, p0}, Lcom/android/server/status/StatusBarService$2;-><init>(Lcom/android/server/status/StatusBarService;)V

    iput-object v0, p0, Lcom/android/server/status/StatusBarService;->mBtButtonHandler:Landroid/view/View$OnClickListener;

    .line 1096
    new-instance v0, Lcom/android/server/status/StatusBarService$3;

    invoke-direct {v0, p0}, Lcom/android/server/status/StatusBarService$3;-><init>(Lcom/android/server/status/StatusBarService;)V

    iput-object v0, p0, Lcom/android/server/status/StatusBarService;->mFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 1606
    new-instance v0, Lcom/android/server/status/StatusBarService$4;

    invoke-direct {v0, p0}, Lcom/android/server/status/StatusBarService$4;-><init>(Lcom/android/server/status/StatusBarService;)V

    iput-object v0, p0, Lcom/android/server/status/StatusBarService;->mTickingDoneListener:Landroid/view/animation/Animation$AnimationListener;

    .line 1952
    new-instance v0, Lcom/android/server/status/StatusBarService$6;

    invoke-direct {v0, p0}, Lcom/android/server/status/StatusBarService$6;-><init>(Lcom/android/server/status/StatusBarService;)V

    iput-object v0, p0, Lcom/android/server/status/StatusBarService;->mClearButtonListener:Landroid/view/View$OnClickListener;

    .line 1959
    new-instance v0, Lcom/android/server/status/StatusBarService$7;

    invoke-direct {v0, p0}, Lcom/android/server/status/StatusBarService$7;-><init>(Lcom/android/server/status/StatusBarService;)V

    iput-object v0, p0, Lcom/android/server/status/StatusBarService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 2122
    new-instance v0, Lcom/android/server/status/StatusBarService$8;

    invoke-direct {v0, p0}, Lcom/android/server/status/StatusBarService$8;-><init>(Lcom/android/server/status/StatusBarService;)V

    iput-object v0, p0, Lcom/android/server/status/StatusBarService;->mStartTracing:Ljava/lang/Runnable;

    .line 2132
    new-instance v0, Lcom/android/server/status/StatusBarService$9;

    invoke-direct {v0, p0}, Lcom/android/server/status/StatusBarService$9;-><init>(Lcom/android/server/status/StatusBarService;)V

    iput-object v0, p0, Lcom/android/server/status/StatusBarService;->mStopTracing:Ljava/lang/Runnable;

    .line 281
    iput-object p1, p0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    .line 282
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/status/StatusBarService;->mDisplay:Landroid/view/Display;

    .line 284
    invoke-direct {p0, p1}, Lcom/android/server/status/StatusBarService;->makeStatusBarView(Landroid/content/Context;)V

    .line 285
    new-instance v0, Lcom/android/server/status/StatusBarService$UninstallReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/status/StatusBarService$UninstallReceiver;-><init>(Lcom/android/server/status/StatusBarService;)V

    iput-object v0, p0, Lcom/android/server/status/StatusBarService;->mUninstallReceiver:Lcom/android/server/status/StatusBarService$UninstallReceiver;

    .line 286
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/status/StatusBarService;)Landroid/net/wifi/WifiManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/server/status/StatusBarService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    iput-boolean p1, p0, Lcom/android/server/status/StatusBarService;->mTicking:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/server/status/StatusBarService;Landroid/net/wifi/WifiManager;)Landroid/net/wifi/WifiManager;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/server/status/StatusBarService;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/server/status/StatusBarService;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mTickerView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/status/StatusBarService;ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 104
    invoke-direct {p0, p1, p2}, Lcom/android/server/status/StatusBarService;->loadAnim(ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300()Landroid/graphics/Bitmap;
    .registers 1

    .prologue
    .line 104
    sget-object v0, Lcom/android/server/status/StatusBarService;->mOnBT:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/status/StatusBarService;)Landroid/view/View$OnClickListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mBtButtonHandler:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$1500()Landroid/graphics/Bitmap;
    .registers 1

    .prologue
    .line 104
    sget-object v0, Lcom/android/server/status/StatusBarService;->mOffBT:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1600()Landroid/graphics/Bitmap;
    .registers 1

    .prologue
    .line 104
    sget-object v0, Lcom/android/server/status/StatusBarService;->mOnWiFi:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/status/StatusBarService;)Landroid/view/View$OnClickListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mWifiButtonHandler:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$1800()Landroid/graphics/Bitmap;
    .registers 1

    .prologue
    .line 104
    sget-object v0, Lcom/android/server/status/StatusBarService;->mOffWiFi:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/status/StatusBarService;)Landroid/content/ContentResolver;
    .registers 2
    .parameter "x0"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$200()Landroid/graphics/Bitmap;
    .registers 1

    .prologue
    .line 104
    sget-object v0, Lcom/android/server/status/StatusBarService;->mPressedWiFi:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/server/status/StatusBarService;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    iput p1, p0, Lcom/android/server/status/StatusBarService;->mwifiOn:I

    return p1
.end method

.method static synthetic access$2100(Lcom/android/server/status/StatusBarService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/android/server/status/StatusBarService;->setWiFiButton()V

    return-void
.end method

.method static synthetic access$2202(Lcom/android/server/status/StatusBarService;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    iput p1, p0, Lcom/android/server/status/StatusBarService;->mbluetoothOn:I

    return p1
.end method

.method static synthetic access$2300(Lcom/android/server/status/StatusBarService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/android/server/status/StatusBarService;->setBTButton()V

    return-void
.end method

.method static synthetic access$300()Landroid/widget/ImageButton;
    .registers 1

    .prologue
    .line 104
    sget-object v0, Lcom/android/server/status/StatusBarService;->mWiFiImgButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/status/StatusBarService;)Landroid/bluetooth/BluetoothDevice;
    .registers 2
    .parameter "x0"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mBluetoothSet:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/status/StatusBarService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/server/status/StatusBarService;->mBluetoothSet:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic access$500()Landroid/graphics/Bitmap;
    .registers 1

    .prologue
    .line 104
    sget-object v0, Lcom/android/server/status/StatusBarService;->mPressedBT:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$600()Landroid/widget/ImageButton;
    .registers 1

    .prologue
    .line 104
    sget-object v0, Lcom/android/server/status/StatusBarService;->mBTImgButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/status/StatusBarService;I)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/android/server/status/StatusBarService;->alwaysHandle(I)Z

    move-result v0

    return v0
.end method

.method private addPendingOp(II)V
    .registers 7
    .parameter "code"
    .parameter "integer"

    .prologue
    const/4 v3, 0x1

    .line 691
    iget-object v1, p0, Lcom/android/server/status/StatusBarService;->mQueue:Ljava/util/ArrayList;

    monitor-enter v1

    .line 692
    :try_start_4
    new-instance v0, Lcom/android/server/status/StatusBarService$PendingOp;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/server/status/StatusBarService$PendingOp;-><init>(Lcom/android/server/status/StatusBarService;Lcom/android/server/status/StatusBarService$1;)V

    .line 693
    .local v0, op:Lcom/android/server/status/StatusBarService$PendingOp;
    iput p1, v0, Lcom/android/server/status/StatusBarService$PendingOp;->code:I

    .line 694
    iput p2, v0, Lcom/android/server/status/StatusBarService$PendingOp;->integer:I

    .line 695
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 696
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v3, :cond_21

    .line 697
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mHandler:Lcom/android/server/status/StatusBarService$H;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/status/StatusBarService$H;->sendEmptyMessage(I)Z

    .line 699
    :cond_21
    monitor-exit v1

    .line 700
    return-void

    .line 699
    .end local v0           #op:Lcom/android/server/status/StatusBarService$PendingOp;
    :catchall_23
    move-exception v2

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_4 .. :try_end_25} :catchall_23

    throw v2
.end method

.method private addPendingOp(ILandroid/os/IBinder;Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;I)V
    .registers 10
    .parameter "code"
    .parameter "key"
    .parameter "data"
    .parameter "n"
    .parameter "i"

    .prologue
    const/4 v3, 0x0

    .line 663
    iget-object v1, p0, Lcom/android/server/status/StatusBarService;->mQueue:Ljava/util/ArrayList;

    monitor-enter v1

    .line 664
    :try_start_4
    new-instance v0, Lcom/android/server/status/StatusBarService$PendingOp;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/server/status/StatusBarService$PendingOp;-><init>(Lcom/android/server/status/StatusBarService;Lcom/android/server/status/StatusBarService$1;)V

    .line 665
    .local v0, op:Lcom/android/server/status/StatusBarService$PendingOp;
    iput-object p2, v0, Lcom/android/server/status/StatusBarService$PendingOp;->key:Landroid/os/IBinder;

    .line 666
    iput p1, v0, Lcom/android/server/status/StatusBarService$PendingOp;->code:I

    .line 667
    if-nez p3, :cond_2d

    move-object v2, v3

    :goto_11
    iput-object v2, v0, Lcom/android/server/status/StatusBarService$PendingOp;->iconData:Lcom/android/server/status/IconData;

    .line 668
    iput-object p4, v0, Lcom/android/server/status/StatusBarService$PendingOp;->notificationData:Lcom/android/server/status/NotificationData;

    .line 669
    iput p5, v0, Lcom/android/server/status/StatusBarService$PendingOp;->integer:I

    .line 670
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 671
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2b

    .line 672
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mHandler:Lcom/android/server/status/StatusBarService$H;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/server/status/StatusBarService$H;->sendEmptyMessage(I)Z

    .line 674
    :cond_2b
    monitor-exit v1

    .line 675
    return-void

    .line 667
    :cond_2d
    invoke-virtual {p3}, Lcom/android/server/status/IconData;->clone()Lcom/android/server/status/IconData;

    move-result-object v2

    goto :goto_11

    .line 674
    .end local v0           #op:Lcom/android/server/status/StatusBarService$PendingOp;
    :catchall_32
    move-exception v2

    monitor-exit v1
    :try_end_34
    .catchall {:try_start_4 .. :try_end_34} :catchall_32

    throw v2
.end method

.method private addPendingOp(ILandroid/os/IBinder;Z)V
    .registers 8
    .parameter "code"
    .parameter "key"
    .parameter "visible"

    .prologue
    const/4 v3, 0x1

    .line 678
    iget-object v1, p0, Lcom/android/server/status/StatusBarService;->mQueue:Ljava/util/ArrayList;

    monitor-enter v1

    .line 679
    :try_start_4
    new-instance v0, Lcom/android/server/status/StatusBarService$PendingOp;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/server/status/StatusBarService$PendingOp;-><init>(Lcom/android/server/status/StatusBarService;Lcom/android/server/status/StatusBarService$1;)V

    .line 680
    .local v0, op:Lcom/android/server/status/StatusBarService$PendingOp;
    iput-object p2, v0, Lcom/android/server/status/StatusBarService$PendingOp;->key:Landroid/os/IBinder;

    .line 681
    iput p1, v0, Lcom/android/server/status/StatusBarService$PendingOp;->code:I

    .line 682
    iput-boolean p3, v0, Lcom/android/server/status/StatusBarService$PendingOp;->visible:Z

    .line 683
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 684
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v3, :cond_23

    .line 685
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mHandler:Lcom/android/server/status/StatusBarService$H;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/status/StatusBarService$H;->sendEmptyMessage(I)Z

    .line 687
    :cond_23
    monitor-exit v1

    .line 688
    return-void

    .line 687
    .end local v0           #op:Lcom/android/server/status/StatusBarService$PendingOp;
    :catchall_25
    move-exception v2

    monitor-exit v1
    :try_end_27
    .catchall {:try_start_4 .. :try_end_27} :catchall_25

    throw v2
.end method

.method private addPendingOp(ILjava/lang/String;)V
    .registers 7
    .parameter "code"
    .parameter "theme"

    .prologue
    const/4 v3, 0x1

    .line 704
    iget-object v1, p0, Lcom/android/server/status/StatusBarService;->mQueue:Ljava/util/ArrayList;

    monitor-enter v1

    .line 705
    :try_start_4
    new-instance v0, Lcom/android/server/status/StatusBarService$PendingOp;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/server/status/StatusBarService$PendingOp;-><init>(Lcom/android/server/status/StatusBarService;Lcom/android/server/status/StatusBarService$1;)V

    .line 706
    .local v0, op:Lcom/android/server/status/StatusBarService$PendingOp;
    iput p1, v0, Lcom/android/server/status/StatusBarService$PendingOp;->code:I

    .line 707
    iput-object p2, v0, Lcom/android/server/status/StatusBarService$PendingOp;->theme:Ljava/lang/String;

    .line 708
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 709
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v3, :cond_21

    .line 710
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mHandler:Lcom/android/server/status/StatusBarService$H;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/status/StatusBarService$H;->sendEmptyMessage(I)Z

    .line 712
    :cond_21
    monitor-exit v1

    .line 713
    return-void

    .line 712
    .end local v0           #op:Lcom/android/server/status/StatusBarService$PendingOp;
    :catchall_23
    move-exception v2

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_4 .. :try_end_25} :catchall_23

    throw v2
.end method

.method private alwaysHandle(I)Z
    .registers 3
    .parameter "code"

    .prologue
    .line 902
    const/4 v0, 0x7

    if-ne p1, v0, :cond_5

    const/4 v0, 0x1

    :goto_4
    return v0

    :cond_5
    const/4 v0, 0x0

    goto :goto_4
.end method

.method private enforceExpandStatusBar()V
    .registers 4

    .prologue
    .line 622
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.EXPAND_STATUS_BAR"

    const-string v2, "StatusBarService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    return-void
.end method

.method private enforceStatusBar()V
    .registers 4

    .prologue
    .line 616
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR"

    const-string v2, "StatusBarService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    return-void
.end method

.method private getRightIconIndex(Ljava/lang/String;)I
    .registers 5
    .parameter "slot"

    .prologue
    .line 769
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mRightIconSlots:[Ljava/lang/String;

    array-length v0, v2

    .line 770
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_4
    if-ge v1, v0, :cond_15

    .line 771
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mRightIconSlots:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    move v2, v1

    .line 775
    :goto_11
    return v2

    .line 770
    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 775
    :cond_15
    const/4 v2, -0x1

    goto :goto_11
.end method

.method public static isAirplaneModeOn(Landroid/content/Context;)Z
    .registers 4
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 532
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    move v0, v2

    goto :goto_e
.end method

.method private loadAnim(ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;
    .registers 5
    .parameter "id"
    .parameter "listener"

    .prologue
    .line 1617
    iget-object v1, p0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1618
    .local v0, anim:Landroid/view/animation/Animation;
    if-eqz p2, :cond_b

    .line 1619
    invoke-virtual {v0, p2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1621
    :cond_b
    return-object v0
.end method

.method private makeExpandedVisible()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 1232
    iget-boolean v0, p0, Lcom/android/server/status/StatusBarService;->mExpandedVisible:Z

    if-eqz v0, :cond_6

    .line 1246
    :cond_5
    :goto_5
    return-void

    .line 1235
    :cond_6
    iput-boolean v2, p0, Lcom/android/server/status/StatusBarService;->mExpandedVisible:Z

    .line 1236
    invoke-virtual {p0, v2}, Lcom/android/server/status/StatusBarService;->panelSlightlyVisible(Z)V

    .line 1238
    const/16 v0, -0x2710

    invoke-virtual {p0, v0}, Lcom/android/server/status/StatusBarService;->updateExpandedViewPos(I)V

    .line 1239
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1240
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mExpandedView:Lcom/android/server/status/ExpandedView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/status/ExpandedView;->requestFocus(I)Z

    .line 1241
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mTrackingView:Lcom/android/server/status/TrackingView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/status/TrackingView;->setVisibility(I)V

    .line 1243
    iget-boolean v0, p0, Lcom/android/server/status/StatusBarService;->mTicking:Z

    if-nez v0, :cond_5

    .line 1244
    const/high16 v0, 0x10a

    invoke-virtual {p0, v2, v0}, Lcom/android/server/status/StatusBarService;->setDateViewVisibility(ZI)V

    goto :goto_5
.end method

.method private makeStatusBarView(Landroid/content/Context;)V
    .registers 16
    .parameter "context"

    .prologue
    const v13, 0x108029a

    const v12, 0x1080079

    const/16 v11, 0x8

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 296
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 297
    .local v4, res:Landroid/content/res/Resources;
    const v7, 0x1070009

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/status/StatusBarService;->mRightIconSlots:[Ljava/lang/String;

    .line 298
    iget-object v7, p0, Lcom/android/server/status/StatusBarService;->mRightIconSlots:[Ljava/lang/String;

    array-length v7, v7

    new-array v7, v7, [Lcom/android/server/status/StatusBarIcon;

    iput-object v7, p0, Lcom/android/server/status/StatusBarService;->mRightIcons:[Lcom/android/server/status/StatusBarIcon;

    .line 301
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/status/StatusBarService;->mContentResolver:Landroid/content/ContentResolver;

    .line 304
    const v7, 0x109005b

    invoke-static {p1, v7, v9}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/server/status/ExpandedView;

    .line 306
    .local v1, expanded:Lcom/android/server/status/ExpandedView;
    iput-object p0, v1, Lcom/android/server/status/ExpandedView;->mService:Lcom/android/server/status/StatusBarService;

    .line 307
    const v7, 0x109005a

    invoke-static {p1, v7, v9}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/server/status/StatusBarView;

    .line 309
    .local v5, sb:Lcom/android/server/status/StatusBarView;
    iput-object p0, v5, Lcom/android/server/status/StatusBarView;->mService:Lcom/android/server/status/StatusBarService;

    .line 312
    const/4 v7, -0x3

    iput v7, p0, Lcom/android/server/status/StatusBarService;->mPixelFormat:I

    .line 313
    invoke-virtual {v5}, Lcom/android/server/status/StatusBarView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 314
    .local v0, bg:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_49

    .line 315
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v7

    iput v7, p0, Lcom/android/server/status/StatusBarService;->mPixelFormat:I

    .line 318
    :cond_49
    iput-object v5, p0, Lcom/android/server/status/StatusBarService;->mStatusBarView:Lcom/android/server/status/StatusBarView;

    .line 319
    const v7, 0x10201d2

    invoke-virtual {v5, v7}, Lcom/android/server/status/StatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/android/server/status/StatusBarService;->mStatusIcons:Landroid/widget/LinearLayout;

    .line 320
    const v7, 0x10201d1

    invoke-virtual {v5, v7}, Lcom/android/server/status/StatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/server/status/IconMerger;

    iput-object v7, p0, Lcom/android/server/status/StatusBarService;->mNotificationIcons:Lcom/android/server/status/IconMerger;

    .line 321
    iget-object v7, p0, Lcom/android/server/status/StatusBarService;->mNotificationIcons:Lcom/android/server/status/IconMerger;

    iput-object p0, v7, Lcom/android/server/status/IconMerger;->service:Lcom/android/server/status/StatusBarService;

    .line 322
    const v7, 0x10201d0

    invoke-virtual {v5, v7}, Lcom/android/server/status/StatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/android/server/status/StatusBarService;->mIcons:Landroid/widget/LinearLayout;

    .line 323
    const v7, 0x10201d3

    invoke-virtual {v5, v7}, Lcom/android/server/status/StatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/status/StatusBarService;->mTickerView:Landroid/view/View;

    .line 324
    const v7, 0x1020058

    invoke-virtual {v5, v7}, Lcom/android/server/status/StatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/server/status/DateView;

    iput-object v7, p0, Lcom/android/server/status/StatusBarService;->mDateView:Lcom/android/server/status/DateView;

    .line 326
    new-instance v7, Lcom/android/server/status/StatusBarService$ExpandedDialog;

    invoke-direct {v7, p0, p1}, Lcom/android/server/status/StatusBarService$ExpandedDialog;-><init>(Lcom/android/server/status/StatusBarService;Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/server/status/StatusBarService;->mExpandedDialog:Landroid/app/Dialog;

    .line 327
    iput-object v1, p0, Lcom/android/server/status/StatusBarService;->mExpandedView:Lcom/android/server/status/ExpandedView;

    .line 328
    const v7, 0x10201dc

    invoke-virtual {v1, v7}, Lcom/android/server/status/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/server/status/StatusBarService;->mOngoingTitle:Landroid/widget/TextView;

    .line 329
    const v7, 0x10201dd

    invoke-virtual {v1, v7}, Lcom/android/server/status/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/android/server/status/StatusBarService;->mOngoingItems:Landroid/widget/LinearLayout;

    .line 330
    const v7, 0x10201de

    invoke-virtual {v1, v7}, Lcom/android/server/status/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/server/status/StatusBarService;->mLatestTitle:Landroid/widget/TextView;

    .line 331
    const v7, 0x10201df

    invoke-virtual {v1, v7}, Lcom/android/server/status/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/android/server/status/StatusBarService;->mLatestItems:Landroid/widget/LinearLayout;

    .line 332
    const v7, 0x10201db

    invoke-virtual {v1, v7}, Lcom/android/server/status/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/server/status/StatusBarService;->mNoNotificationsTitle:Landroid/widget/TextView;

    .line 333
    const v7, 0x10201d8

    invoke-virtual {v1, v7}, Lcom/android/server/status/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/server/status/StatusBarService;->mClearButton:Landroid/widget/TextView;

    .line 334
    iget-object v7, p0, Lcom/android/server/status/StatusBarService;->mClearButton:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/server/status/StatusBarService;->mClearButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 335
    const v7, 0x10201d7

    invoke-virtual {v1, v7}, Lcom/android/server/status/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/server/status/StatusBarService;->mSpnLabel:Landroid/widget/TextView;

    .line 336
    const v7, 0x10201d6

    invoke-virtual {v1, v7}, Lcom/android/server/status/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/server/status/StatusBarService;->mPlmnLabel:Landroid/widget/TextView;

    .line 337
    const v7, 0x10201d9

    invoke-virtual {v1, v7}, Lcom/android/server/status/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ScrollView;

    iput-object v7, p0, Lcom/android/server/status/StatusBarService;->mScrollView:Landroid/widget/ScrollView;

    .line 338
    const v7, 0x10201da

    invoke-virtual {v1, v7}, Lcom/android/server/status/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/status/StatusBarService;->mNotificationLinearLayout:Landroid/view/View;

    .line 340
    iget-object v7, p0, Lcom/android/server/status/StatusBarService;->mOngoingTitle:Landroid/widget/TextView;

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 341
    iget-object v7, p0, Lcom/android/server/status/StatusBarService;->mLatestTitle:Landroid/widget/TextView;

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 343
    new-instance v7, Lcom/android/server/status/StatusBarService$MyTicker;

    invoke-direct {v7, p0, p1, v5}, Lcom/android/server/status/StatusBarService$MyTicker;-><init>(Lcom/android/server/status/StatusBarService;Landroid/content/Context;Lcom/android/server/status/StatusBarView;)V

    iput-object v7, p0, Lcom/android/server/status/StatusBarService;->mTicker:Lcom/android/server/status/Ticker;

    .line 345
    const v7, 0x10201d5

    invoke-virtual {v5, v7}, Lcom/android/server/status/StatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/server/status/TickerView;

    .line 346
    .local v6, tickerView:Lcom/android/server/status/TickerView;
    iget-object v7, p0, Lcom/android/server/status/StatusBarService;->mTicker:Lcom/android/server/status/Ticker;

    iput-object v7, v6, Lcom/android/server/status/TickerView;->mTicker:Lcom/android/server/status/Ticker;

    .line 348
    const v7, 0x109005f

    invoke-static {p1, v7, v9}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/server/status/TrackingView;

    iput-object v7, p0, Lcom/android/server/status/StatusBarService;->mTrackingView:Lcom/android/server/status/TrackingView;

    .line 350
    iget-object v7, p0, Lcom/android/server/status/StatusBarService;->mTrackingView:Lcom/android/server/status/TrackingView;

    iput-object p0, v7, Lcom/android/server/status/TrackingView;->mService:Lcom/android/server/status/StatusBarService;

    .line 351
    iget-object v7, p0, Lcom/android/server/status/StatusBarService;->mTrackingView:Lcom/android/server/status/TrackingView;

    const v8, 0x10201e0

    invoke-virtual {v7, v8}, Lcom/android/server/status/TrackingView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/server/status/CloseDragHandle;

    iput-object v7, p0, Lcom/android/server/status/StatusBarService;->mCloseView:Lcom/android/server/status/CloseDragHandle;

    .line 352
    iget-object v7, p0, Lcom/android/server/status/StatusBarService;->mCloseView:Lcom/android/server/status/CloseDragHandle;

    iput-object p0, v7, Lcom/android/server/status/CloseDragHandle;->mService:Lcom/android/server/status/StatusBarService;

    .line 355
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x2a

    invoke-static {v9, v7, v12, v10, v8}, Lcom/android/server/status/IconData;->makeIcon(Ljava/lang/String;Ljava/lang/String;III)Lcom/android/server/status/IconData;

    move-result-object v3

    .line 357
    .local v3, moreData:Lcom/android/server/status/IconData;
    new-instance v7, Lcom/android/server/status/StatusBarIcon;

    iget-object v8, p0, Lcom/android/server/status/StatusBarService;->mNotificationIcons:Lcom/android/server/status/IconMerger;

    invoke-direct {v7, p1, v3, v8}, Lcom/android/server/status/StatusBarIcon;-><init>(Landroid/content/Context;Lcom/android/server/status/IconData;Landroid/view/ViewGroup;)V

    iput-object v7, p0, Lcom/android/server/status/StatusBarService;->mMoreIcon:Lcom/android/server/status/StatusBarIcon;

    .line 358
    iget-object v7, p0, Lcom/android/server/status/StatusBarService;->mMoreIcon:Lcom/android/server/status/StatusBarIcon;

    iget-object v7, v7, Lcom/android/server/status/StatusBarIcon;->view:Landroid/view/View;

    invoke-virtual {v7, v12}, Landroid/view/View;->setId(I)V

    .line 359
    iget-object v7, p0, Lcom/android/server/status/StatusBarService;->mNotificationIcons:Lcom/android/server/status/IconMerger;

    iget-object v8, p0, Lcom/android/server/status/StatusBarService;->mMoreIcon:Lcom/android/server/status/StatusBarIcon;

    iput-object v8, v7, Lcom/android/server/status/IconMerger;->moreIcon:Lcom/android/server/status/StatusBarIcon;

    .line 360
    iget-object v7, p0, Lcom/android/server/status/StatusBarService;->mNotificationIcons:Lcom/android/server/status/IconMerger;

    iget-object v8, p0, Lcom/android/server/status/StatusBarService;->mMoreIcon:Lcom/android/server/status/StatusBarIcon;

    iget-object v8, v8, Lcom/android/server/status/StatusBarIcon;->view:Landroid/view/View;

    invoke-virtual {v7, v8}, Lcom/android/server/status/IconMerger;->addView(Landroid/view/View;)V

    .line 363
    invoke-direct {p0}, Lcom/android/server/status/StatusBarService;->setAreThereNotifications()V

    .line 364
    iget-object v7, p0, Lcom/android/server/status/StatusBarService;->mDateView:Lcom/android/server/status/DateView;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Lcom/android/server/status/DateView;->setVisibility(I)V

    .line 367
    iget-object v7, p0, Lcom/android/server/status/StatusBarService;->mPlmnLabel:Landroid/widget/TextView;

    const v8, 0x104017d

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 368
    iget-object v7, p0, Lcom/android/server/status/StatusBarService;->mPlmnLabel:Landroid/widget/TextView;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 369
    iget-object v7, p0, Lcom/android/server/status/StatusBarService;->mSpnLabel:Landroid/widget/TextView;

    const-string v8, ""

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 370
    iget-object v7, p0, Lcom/android/server/status/StatusBarService;->mSpnLabel:Landroid/widget/TextView;

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 373
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 374
    .local v2, filter:Landroid/content/IntentFilter;
    const-string v7, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 375
    const-string v7, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 376
    const-string v7, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 377
    iget-object v7, p0, Lcom/android/server/status/StatusBarService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v7, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 380
    iget-object v7, p0, Lcom/android/server/status/StatusBarService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v8, Landroid/content/IntentFilter;

    const-string v9, "android.bluetooth.intent.action.BLUETOOTH_STATE_CHANGED"

    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v7, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 381
    iget-object v7, p0, Lcom/android/server/status/StatusBarService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v8, Landroid/content/IntentFilter;

    const-string v9, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v7, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 382
    iget-object v7, p0, Lcom/android/server/status/StatusBarService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v8, Landroid/content/IntentFilter;

    const-string v9, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v7, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 399
    iget-object v7, p0, Lcom/android/server/status/StatusBarService;->mStatusBarView:Lcom/android/server/status/StatusBarView;

    invoke-virtual {v7, v13}, Lcom/android/server/status/StatusBarView;->setBackgroundResource(I)V

    .line 400
    iget-object v7, p0, Lcom/android/server/status/StatusBarService;->mDateView:Lcom/android/server/status/DateView;

    invoke-virtual {v7, v13}, Lcom/android/server/status/DateView;->setBackgroundResource(I)V

    .line 401
    iget-object v7, p0, Lcom/android/server/status/StatusBarService;->mDateView:Lcom/android/server/status/DateView;

    const/high16 v8, -0x100

    invoke-virtual {v7, v8}, Lcom/android/server/status/DateView;->setTextColor(I)V

    .line 408
    iget-object v7, p0, Lcom/android/server/status/StatusBarService;->mStatusBarView:Lcom/android/server/status/StatusBarView;

    invoke-virtual {v7}, Lcom/android/server/status/StatusBarView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x203006b

    invoke-static {v7, v8}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    sput-object v7, Lcom/android/server/status/StatusBarService;->mOnBT:Landroid/graphics/Bitmap;

    .line 409
    iget-object v7, p0, Lcom/android/server/status/StatusBarService;->mStatusBarView:Lcom/android/server/status/StatusBarView;

    invoke-virtual {v7}, Lcom/android/server/status/StatusBarView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x203006a

    invoke-static {v7, v8}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    sput-object v7, Lcom/android/server/status/StatusBarService;->mOffBT:Landroid/graphics/Bitmap;

    .line 410
    iget-object v7, p0, Lcom/android/server/status/StatusBarService;->mStatusBarView:Lcom/android/server/status/StatusBarView;

    invoke-virtual {v7}, Lcom/android/server/status/StatusBarView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x203006c

    invoke-static {v7, v8}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    sput-object v7, Lcom/android/server/status/StatusBarService;->mPressedBT:Landroid/graphics/Bitmap;

    .line 411
    iget-object v7, p0, Lcom/android/server/status/StatusBarService;->mStatusBarView:Lcom/android/server/status/StatusBarView;

    invoke-virtual {v7}, Lcom/android/server/status/StatusBarView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x203006e

    invoke-static {v7, v8}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    sput-object v7, Lcom/android/server/status/StatusBarService;->mOnWiFi:Landroid/graphics/Bitmap;

    .line 412
    iget-object v7, p0, Lcom/android/server/status/StatusBarService;->mStatusBarView:Lcom/android/server/status/StatusBarView;

    invoke-virtual {v7}, Lcom/android/server/status/StatusBarView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x203006d

    invoke-static {v7, v8}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    sput-object v7, Lcom/android/server/status/StatusBarService;->mOffWiFi:Landroid/graphics/Bitmap;

    .line 413
    iget-object v7, p0, Lcom/android/server/status/StatusBarService;->mStatusBarView:Lcom/android/server/status/StatusBarView;

    invoke-virtual {v7}, Lcom/android/server/status/StatusBarView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x203006f

    invoke-static {v7, v8}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    sput-object v7, Lcom/android/server/status/StatusBarService;->mPressedWiFi:Landroid/graphics/Bitmap;

    .line 415
    iget-object v7, p0, Lcom/android/server/status/StatusBarService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v8, "wifi_on"

    invoke-static {v7, v8, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/android/server/status/StatusBarService;->mwifiOn:I

    .line 416
    const v7, 0x1020200

    invoke-virtual {v1, v7}, Lcom/android/server/status/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageButton;

    sput-object v7, Lcom/android/server/status/StatusBarService;->mWiFiImgButton:Landroid/widget/ImageButton;

    .line 417
    const-string v7, "StatusBar"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isWiFiEnable = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/server/status/StatusBarService;->mwifiOn:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    invoke-direct {p0}, Lcom/android/server/status/StatusBarService;->setWiFiButton()V

    .line 420
    iget-object v7, p0, Lcom/android/server/status/StatusBarService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v8, "bluetooth_on"

    invoke-static {v7, v8, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/android/server/status/StatusBarService;->mbluetoothOn:I

    .line 422
    const v7, 0x10201fa

    invoke-virtual {v1, v7}, Lcom/android/server/status/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageButton;

    sput-object v7, Lcom/android/server/status/StatusBarService;->mBTImgButton:Landroid/widget/ImageButton;

    .line 423
    const-string v7, "StatusBar"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isBTEnable = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/server/status/StatusBarService;->mbluetoothOn:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    invoke-direct {p0}, Lcom/android/server/status/StatusBarService;->setBTButton()V

    .line 426
    return-void
.end method

.method private setAreThereNotifications()V
    .registers 7

    .prologue
    const/4 v3, 0x1

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 1211
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mOngoingItems:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-eqz v2, :cond_3d

    move v1, v3

    .line 1212
    .local v1, ongoing:Z
    :goto_d
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mLatestItems:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-eqz v2, :cond_3f

    move v0, v3

    .line 1214
    .local v0, latest:Z
    :goto_16
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mNotificationData:Lcom/android/server/status/NotificationViewList;

    invoke-virtual {v2}, Lcom/android/server/status/NotificationViewList;->hasClearableItems()Z

    move-result v2

    if-eqz v2, :cond_41

    .line 1215
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mClearButton:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1220
    :goto_23
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mOngoingTitle:Landroid/widget/TextView;

    if-eqz v1, :cond_48

    move v3, v4

    :goto_28
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1221
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mLatestTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_4a

    move v3, v4

    :goto_30
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1223
    if-nez v1, :cond_37

    if-eqz v0, :cond_4c

    .line 1224
    :cond_37
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mNoNotificationsTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1228
    :goto_3c
    return-void

    .end local v0           #latest:Z
    .end local v1           #ongoing:Z
    :cond_3d
    move v1, v4

    .line 1211
    goto :goto_d

    .restart local v1       #ongoing:Z
    :cond_3f
    move v0, v4

    .line 1212
    goto :goto_16

    .line 1217
    .restart local v0       #latest:Z
    :cond_41
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mClearButton:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_23

    :cond_48
    move v3, v5

    .line 1220
    goto :goto_28

    :cond_4a
    move v3, v5

    .line 1221
    goto :goto_30

    .line 1226
    :cond_4c
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mNoNotificationsTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3c
.end method

.method private setBTButton()V
    .registers 4

    .prologue
    const-string v2, "StatusBar"

    .line 448
    iget v0, p0, Lcom/android/server/status/StatusBarService;->mbluetoothOn:I

    if-lez v0, :cond_29

    .line 449
    const-string v0, "StatusBar"

    const-string v0, "setBTButton: BT Set TRUE"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    sget-object v0, Lcom/android/server/status/StatusBarService;->mBTImgButton:Landroid/widget/ImageButton;

    sget-object v1, Lcom/android/server/status/StatusBarService;->mOnBT:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 456
    :goto_14
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mStatusBarView:Lcom/android/server/status/StatusBarView;

    invoke-virtual {v0}, Lcom/android/server/status/StatusBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/status/StatusBarService;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_38

    .line 457
    sget-object v0, Lcom/android/server/status/StatusBarService;->mBTImgButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/server/status/StatusBarService;->mBtButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 464
    :goto_28
    return-void

    .line 452
    :cond_29
    const-string v0, "StatusBar"

    const-string v0, "setBTButton: BT Set FALSE"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    sget-object v0, Lcom/android/server/status/StatusBarService;->mBTImgButton:Landroid/widget/ImageButton;

    sget-object v1, Lcom/android/server/status/StatusBarService;->mOffBT:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_14

    .line 460
    :cond_38
    const-string v0, "StatusBar"

    const-string v0, "setBTButton:: AirPlane Mode!!!"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    sget-object v0, Lcom/android/server/status/StatusBarService;->mBTImgButton:Landroid/widget/ImageButton;

    sget-object v1, Lcom/android/server/status/StatusBarService;->mOffBT:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 462
    sget-object v0, Lcom/android/server/status/StatusBarService;->mBTImgButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_28
.end method

.method private setWiFiButton()V
    .registers 4

    .prologue
    const-string v2, "StatusBar"

    .line 430
    iget v0, p0, Lcom/android/server/status/StatusBarService;->mwifiOn:I

    if-lez v0, :cond_29

    .line 431
    const-string v0, "StatusBar"

    const-string v0, "setWIFIButton: WiFi Set TRUE"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    sget-object v0, Lcom/android/server/status/StatusBarService;->mWiFiImgButton:Landroid/widget/ImageButton;

    sget-object v1, Lcom/android/server/status/StatusBarService;->mOnWiFi:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 437
    :goto_14
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mStatusBarView:Lcom/android/server/status/StatusBarView;

    invoke-virtual {v0}, Lcom/android/server/status/StatusBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/status/StatusBarService;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_38

    .line 438
    sget-object v0, Lcom/android/server/status/StatusBarService;->mWiFiImgButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/server/status/StatusBarService;->mWifiButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 445
    :goto_28
    return-void

    .line 434
    :cond_29
    const-string v0, "StatusBar"

    const-string v0, "setWIFIButton: WiFi Set FALSE"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    sget-object v0, Lcom/android/server/status/StatusBarService;->mWiFiImgButton:Landroid/widget/ImageButton;

    sget-object v1, Lcom/android/server/status/StatusBarService;->mOffWiFi:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_14

    .line 441
    :cond_38
    const-string v0, "StatusBar"

    const-string v0, "setWiFiButton:: AirPlane Mode!!!"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    sget-object v0, Lcom/android/server/status/StatusBarService;->mWiFiImgButton:Landroid/widget/ImageButton;

    sget-object v1, Lcom/android/server/status/StatusBarService;->mOffWiFi:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 443
    sget-object v0, Lcom/android/server/status/StatusBarService;->mWiFiImgButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_28
.end method


# virtual methods
.method public activate()V
    .registers 4

    .prologue
    .line 560
    invoke-direct {p0}, Lcom/android/server/status/StatusBarService;->enforceExpandStatusBar()V

    .line 561
    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/status/StatusBarService;->addPendingOp(ILandroid/os/IBinder;Z)V

    .line 562
    return-void
.end method

.method public addIcon(Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;)Landroid/os/IBinder;
    .registers 10
    .parameter "data"
    .parameter "n"

    .prologue
    const-string v5, "\'"

    .line 633
    if-eqz p1, :cond_49

    if-nez p2, :cond_49

    .line 634
    iget-object v0, p1, Lcom/android/server/status/IconData;->slot:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/status/StatusBarService;->getRightIconIndex(Ljava/lang/String;)I

    move-result v6

    .line 635
    .local v6, slot:I
    if-gez v6, :cond_4a

    .line 636
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid status bar icon slot: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p1, Lcom/android/server/status/IconData;->slot:Ljava/lang/String;

    if-eqz v3, :cond_46

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/status/IconData;->slot:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_3a
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_46
    const-string v3, "null"

    goto :goto_3a

    .line 640
    .end local v6           #slot:I
    :cond_49
    const/4 v6, -0x1

    .line 642
    .restart local v6       #slot:I
    :cond_4a
    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    .line 643
    .local v2, key:Landroid/os/IBinder;
    const/4 v1, 0x1

    const/4 v5, -0x1

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/status/StatusBarService;->addPendingOp(ILandroid/os/IBinder;Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;I)V

    .line 644
    return-object v2
.end method

.method public addIcon(Ljava/lang/String;Ljava/lang/String;II)Landroid/os/IBinder;
    .registers 7
    .parameter "slot"
    .parameter "iconPackage"
    .parameter "iconId"
    .parameter "iconLevel"

    .prologue
    .line 592
    invoke-direct {p0}, Lcom/android/server/status/StatusBarService;->enforceStatusBar()V

    .line 593
    const/4 v0, 0x0

    invoke-static {p1, p2, p3, p4, v0}, Lcom/android/server/status/IconData;->makeIcon(Ljava/lang/String;Ljava/lang/String;III)Lcom/android/server/status/IconData;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/status/StatusBarService;->addIcon(Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method addNotificationView(Lcom/android/server/status/StatusBarNotification;)V
    .registers 8
    .parameter "notification"

    .prologue
    .line 1148
    iget-object v3, p1, Lcom/android/server/status/StatusBarNotification;->view:Landroid/view/View;

    if-eqz v3, :cond_1f

    .line 1149
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Assertion failed: notification.view="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/server/status/StatusBarNotification;->view:Landroid/view/View;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1153
    :cond_1f
    iget-object v3, p1, Lcom/android/server/status/StatusBarNotification;->data:Lcom/android/server/status/NotificationData;

    iget-boolean v3, v3, Lcom/android/server/status/NotificationData;->ongoingEvent:Z

    if-eqz v3, :cond_2f

    iget-object v3, p0, Lcom/android/server/status/StatusBarService;->mOngoingItems:Landroid/widget/LinearLayout;

    move-object v2, v3

    .line 1155
    .local v2, parent:Landroid/widget/LinearLayout;
    :goto_28
    invoke-virtual {p0, p1, v2}, Lcom/android/server/status/StatusBarService;->makeNotificationView(Lcom/android/server/status/StatusBarNotification;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1156
    .local v0, child:Landroid/view/View;
    if-nez v0, :cond_33

    .line 1162
    :goto_2e
    return-void

    .line 1153
    .end local v0           #child:Landroid/view/View;
    .end local v2           #parent:Landroid/widget/LinearLayout;
    :cond_2f
    iget-object v3, p0, Lcom/android/server/status/StatusBarService;->mLatestItems:Landroid/widget/LinearLayout;

    move-object v2, v3

    goto :goto_28

    .line 1160
    .restart local v0       #child:Landroid/view/View;
    .restart local v2       #parent:Landroid/widget/LinearLayout;
    :cond_33
    iget-object v3, p0, Lcom/android/server/status/StatusBarService;->mNotificationData:Lcom/android/server/status/NotificationViewList;

    invoke-virtual {v3, p1}, Lcom/android/server/status/NotificationViewList;->getExpandedIndex(Lcom/android/server/status/StatusBarNotification;)I

    move-result v1

    .line 1161
    .local v1, index:I
    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto :goto_2e
.end method

.method animateCollapse()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 1265
    iget-boolean v0, p0, Lcom/android/server/status/StatusBarService;->mExpandedVisible:Z

    if-nez v0, :cond_6

    .line 1271
    :goto_5
    return-void

    .line 1269
    :cond_6
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/android/server/status/StatusBarService;->prepareTracking(I)V

    .line 1270
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    sub-int/2addr v0, v2

    const/high16 v1, -0x3b06

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/status/StatusBarService;->performFling(IFZ)V

    goto :goto_5
.end method

.method animateExpand()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1250
    iget v0, p0, Lcom/android/server/status/StatusBarService;->mDisabled:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_8

    .line 1259
    :cond_7
    :goto_7
    return-void

    .line 1253
    :cond_8
    iget-boolean v0, p0, Lcom/android/server/status/StatusBarService;->mExpanded:Z

    if-nez v0, :cond_7

    .line 1257
    invoke-virtual {p0, v2}, Lcom/android/server/status/StatusBarService;->prepareTracking(I)V

    .line 1258
    const/high16 v0, 0x44fa

    const/4 v1, 0x1

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/status/StatusBarService;->performFling(IFZ)V

    goto :goto_7
.end method

.method public deactivate()V
    .registers 4

    .prologue
    .line 565
    invoke-direct {p0}, Lcom/android/server/status/StatusBarService;->enforceExpandStatusBar()V

    .line 566
    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/status/StatusBarService;->addPendingOp(ILandroid/os/IBinder;Z)V

    .line 567
    return-void
.end method

.method public disable(ILandroid/os/IBinder;Ljava/lang/String;)V
    .registers 8
    .parameter "what"
    .parameter "token"
    .parameter "pkg"

    .prologue
    .line 575
    invoke-direct {p0}, Lcom/android/server/status/StatusBarService;->enforceStatusBar()V

    .line 576
    iget-object v1, p0, Lcom/android/server/status/StatusBarService;->mNotificationCallbacks:Lcom/android/server/status/StatusBarService$NotificationCallbacks;

    monitor-enter v1

    .line 582
    :try_start_6
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mDisableRecords:Ljava/util/ArrayList;

    monitor-enter v2
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_1f

    .line 583
    :try_start_9
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/status/StatusBarService;->manageDisableListLocked(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 584
    invoke-virtual {p0}, Lcom/android/server/status/StatusBarService;->gatherDisableActionsLocked()I

    move-result v0

    .line 585
    .local v0, net:I
    iget-object v3, p0, Lcom/android/server/status/StatusBarService;->mNotificationCallbacks:Lcom/android/server/status/StatusBarService$NotificationCallbacks;

    invoke-interface {v3, v0}, Lcom/android/server/status/StatusBarService$NotificationCallbacks;->onSetDisabled(I)V

    .line 586
    monitor-exit v2
    :try_end_16
    .catchall {:try_start_9 .. :try_end_16} :catchall_1c

    .line 587
    const/4 v2, 0x7

    :try_start_17
    invoke-direct {p0, v2, v0}, Lcom/android/server/status/StatusBarService;->addPendingOp(II)V

    .line 588
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_17 .. :try_end_1b} :catchall_1f

    .line 589
    return-void

    .line 586
    .end local v0           #net:I
    :catchall_1c
    move-exception v3

    :try_start_1d
    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    :try_start_1e
    throw v3

    .line 588
    :catchall_1f
    move-exception v2

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_1f

    throw v2
.end method

.method doAnimation()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1322
    iget-boolean v0, p0, Lcom/android/server/status/StatusBarService;->mAnimating:Z

    if-eqz v0, :cond_21

    .line 1325
    invoke-virtual {p0}, Lcom/android/server/status/StatusBarService;->incrementAnim()V

    .line 1327
    iget v0, p0, Lcom/android/server/status/StatusBarService;->mAnimY:F

    iget-object v1, p0, Lcom/android/server/status/StatusBarService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_22

    .line 1329
    iput-boolean v3, p0, Lcom/android/server/status/StatusBarService;->mAnimating:Z

    .line 1330
    const/16 v0, -0x2711

    invoke-virtual {p0, v0}, Lcom/android/server/status/StatusBarService;->updateExpandedViewPos(I)V

    .line 1331
    invoke-virtual {p0}, Lcom/android/server/status/StatusBarService;->performExpand()V

    .line 1344
    :cond_21
    :goto_21
    return-void

    .line 1333
    :cond_22
    iget v0, p0, Lcom/android/server/status/StatusBarService;->mAnimY:F

    iget-object v1, p0, Lcom/android/server/status/StatusBarService;->mStatusBarView:Lcom/android/server/status/StatusBarView;

    invoke-virtual {v1}, Lcom/android/server/status/StatusBarView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_35

    .line 1335
    iput-boolean v3, p0, Lcom/android/server/status/StatusBarService;->mAnimating:Z

    .line 1336
    invoke-virtual {p0}, Lcom/android/server/status/StatusBarService;->performCollapse()V

    goto :goto_21

    .line 1339
    :cond_35
    iget v0, p0, Lcom/android/server/status/StatusBarService;->mAnimY:F

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/android/server/status/StatusBarService;->updateExpandedViewPos(I)V

    .line 1340
    iget-wide v0, p0, Lcom/android/server/status/StatusBarService;->mCurAnimationTime:J

    const-wide/16 v2, 0x10

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/status/StatusBarService;->mCurAnimationTime:J

    .line 1341
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mHandler:Lcom/android/server/status/StatusBarService$H;

    iget-object v1, p0, Lcom/android/server/status/StatusBarService;->mHandler:Lcom/android/server/status/StatusBarService$H;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Lcom/android/server/status/StatusBarService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/status/StatusBarService;->mCurAnimationTime:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/status/StatusBarService$H;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_21
.end method

.method doRevealAnimation()V
    .registers 6

    .prologue
    .line 1366
    iget-object v1, p0, Lcom/android/server/status/StatusBarService;->mCloseView:Lcom/android/server/status/CloseDragHandle;

    invoke-virtual {v1}, Lcom/android/server/status/CloseDragHandle;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mStatusBarView:Lcom/android/server/status/StatusBarView;

    invoke-virtual {v2}, Lcom/android/server/status/StatusBarView;->getHeight()I

    move-result v2

    add-int v0, v1, v2

    .line 1367
    .local v0, h:I
    iget-boolean v1, p0, Lcom/android/server/status/StatusBarService;->mAnimatingReveal:Z

    if-eqz v1, :cond_30

    iget-boolean v1, p0, Lcom/android/server/status/StatusBarService;->mAnimating:Z

    if-eqz v1, :cond_30

    iget v1, p0, Lcom/android/server/status/StatusBarService;->mAnimY:F

    int-to-float v2, v0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_30

    .line 1368
    invoke-virtual {p0}, Lcom/android/server/status/StatusBarService;->incrementAnim()V

    .line 1369
    iget v1, p0, Lcom/android/server/status/StatusBarService;->mAnimY:F

    int-to-float v2, v0

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_31

    .line 1370
    int-to-float v1, v0

    iput v1, p0, Lcom/android/server/status/StatusBarService;->mAnimY:F

    .line 1371
    iget v1, p0, Lcom/android/server/status/StatusBarService;->mAnimY:F

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Lcom/android/server/status/StatusBarService;->updateExpandedViewPos(I)V

    .line 1379
    :cond_30
    :goto_30
    return-void

    .line 1373
    :cond_31
    iget v1, p0, Lcom/android/server/status/StatusBarService;->mAnimY:F

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Lcom/android/server/status/StatusBarService;->updateExpandedViewPos(I)V

    .line 1374
    iget-wide v1, p0, Lcom/android/server/status/StatusBarService;->mCurAnimationTime:J

    const-wide/16 v3, 0x10

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/server/status/StatusBarService;->mCurAnimationTime:J

    .line 1375
    iget-object v1, p0, Lcom/android/server/status/StatusBarService;->mHandler:Lcom/android/server/status/StatusBarService$H;

    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mHandler:Lcom/android/server/status/StatusBarService$H;

    const/16 v3, 0x3e9

    invoke-virtual {v2, v3}, Lcom/android/server/status/StatusBarService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/server/status/StatusBarService;->mCurAnimationTime:J

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/status/StatusBarService$H;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_30
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 17
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 1630
    iget-object v9, p0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    const-string v10, "android.permission.DUMP"

    invoke-virtual {v9, v10}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_33

    .line 1632
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Permission Denial: can\'t dump StatusBar from from pid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", uid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1742
    :goto_32
    return-void

    .line 1638
    :cond_33
    iget-object v9, p0, Lcom/android/server/status/StatusBarService;->mQueue:Ljava/util/ArrayList;

    monitor-enter v9

    .line 1639
    :try_start_36
    const-string v10, "Current Status Bar state:"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1640
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mExpanded="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/server/status/StatusBarService;->mExpanded:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", mExpandedVisible="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/server/status/StatusBarService;->mExpandedVisible:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1642
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mTicking="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/server/status/StatusBarService;->mTicking:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1643
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mTracking="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/server/status/StatusBarService;->mTracking:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1644
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mAnimating="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/server/status/StatusBarService;->mAnimating:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", mAnimY="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/server/status/StatusBarService;->mAnimY:F

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", mAnimVel="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/server/status/StatusBarService;->mAnimVel:F

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", mAnimAccel="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/server/status/StatusBarService;->mAnimAccel:F

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1647
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mCurAnimationTime="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v11, p0, Lcom/android/server/status/StatusBarService;->mCurAnimationTime:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " mAnimLastTime="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v11, p0, Lcom/android/server/status/StatusBarService;->mAnimLastTime:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1649
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mDisplayHeight="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/server/status/StatusBarService;->mDisplayHeight:F

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " mAnimatingReveal="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/server/status/StatusBarService;->mAnimatingReveal:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " mViewDelta="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/server/status/StatusBarService;->mViewDelta:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1652
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mDisplayHeight="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/server/status/StatusBarService;->mDisplayHeight:F

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1653
    iget-object v10, p0, Lcom/android/server/status/StatusBarService;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1654
    .local v0, N:I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mQueue.size="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1655
    const/4 v1, 0x0

    .local v1, i:I
    :goto_154
    if-ge v1, v0, :cond_1cb

    .line 1656
    iget-object v10, p0, Lcom/android/server/status/StatusBarService;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/status/StatusBarService$PendingOp;

    .line 1657
    .local v7, op:Lcom/android/server/status/StatusBarService$PendingOp;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "    ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] key="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v7, Lcom/android/server/status/StatusBarService$PendingOp;->key:Landroid/os/IBinder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " code="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v7, Lcom/android/server/status/StatusBarService$PendingOp;->code:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " visible="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, v7, Lcom/android/server/status/StatusBarService$PendingOp;->visible:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1659
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "           iconData="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v7, Lcom/android/server/status/StatusBarService$PendingOp;->iconData:Lcom/android/server/status/IconData;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1660
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "           notificationData="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v7, Lcom/android/server/status/StatusBarService$PendingOp;->notificationData:Lcom/android/server/status/NotificationData;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1655
    add-int/lit8 v1, v1, 0x1

    goto :goto_154

    .line 1662
    .end local v7           #op:Lcom/android/server/status/StatusBarService$PendingOp;
    :cond_1cb
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mExpandedParams: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/status/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1663
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mExpandedView: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/status/StatusBarService;->mExpandedView:Lcom/android/server/status/ExpandedView;

    invoke-virtual {p0, v11}, Lcom/android/server/status/StatusBarService;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1664
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mExpandedDialog: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/status/StatusBarService;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1665
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mTrackingParams: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/status/StatusBarService;->mTrackingParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1666
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mTrackingView: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/status/StatusBarService;->mTrackingView:Lcom/android/server/status/TrackingView;

    invoke-virtual {p0, v11}, Lcom/android/server/status/StatusBarService;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1667
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mOngoingTitle: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/status/StatusBarService;->mOngoingTitle:Landroid/widget/TextView;

    invoke-virtual {p0, v11}, Lcom/android/server/status/StatusBarService;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1668
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mOngoingItems: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/status/StatusBarService;->mOngoingItems:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v11}, Lcom/android/server/status/StatusBarService;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1669
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mLatestTitle: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/status/StatusBarService;->mLatestTitle:Landroid/widget/TextView;

    invoke-virtual {p0, v11}, Lcom/android/server/status/StatusBarService;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1670
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mLatestItems: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/status/StatusBarService;->mLatestItems:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v11}, Lcom/android/server/status/StatusBarService;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1671
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mNoNotificationsTitle: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/status/StatusBarService;->mNoNotificationsTitle:Landroid/widget/TextView;

    invoke-virtual {p0, v11}, Lcom/android/server/status/StatusBarService;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1672
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mCloseView: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/status/StatusBarService;->mCloseView:Lcom/android/server/status/CloseDragHandle;

    invoke-virtual {p0, v11}, Lcom/android/server/status/StatusBarService;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1673
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mTickerView: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/status/StatusBarService;->mTickerView:Landroid/view/View;

    invoke-virtual {p0, v11}, Lcom/android/server/status/StatusBarService;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1674
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mScrollView: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/status/StatusBarService;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {p0, v11}, Lcom/android/server/status/StatusBarService;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " scroll "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/status/StatusBarService;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v11}, Landroid/widget/ScrollView;->getScrollX()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/status/StatusBarService;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v11}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1676
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mNotificationLinearLayout: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/status/StatusBarService;->mNotificationLinearLayout:Landroid/view/View;

    invoke-virtual {p0, v11}, Lcom/android/server/status/StatusBarService;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1677
    monitor-exit v9
    :try_end_368
    .catchall {:try_start_36 .. :try_end_368} :catchall_3e1

    .line 1678
    iget-object v9, p0, Lcom/android/server/status/StatusBarService;->mIconMap:Ljava/util/HashMap;

    monitor-enter v9

    .line 1679
    :try_start_36b
    iget-object v10, p0, Lcom/android/server/status/StatusBarService;->mIconMap:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v0

    .line 1680
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mIconMap.size="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1681
    iget-object v10, p0, Lcom/android/server/status/StatusBarService;->mIconMap:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 1682
    .local v5, keys:Ljava/util/Set;,"Ljava/util/Set<Landroid/os/IBinder;>;"
    const/4 v1, 0x0

    .line 1683
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_392
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3e4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IBinder;

    .line 1684
    .local v4, key:Landroid/os/IBinder;
    iget-object v10, p0, Lcom/android/server/status/StatusBarService;->mIconMap:Ljava/util/HashMap;

    invoke-virtual {v10, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/status/StatusBarIcon;

    .line 1685
    .local v3, icon:Lcom/android/server/status/StatusBarIcon;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "    ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] key="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1686
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "           data="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v3, Lcom/android/server/status/StatusBarIcon;->mData:Lcom/android/server/status/IconData;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_3de
    .catchall {:try_start_36b .. :try_end_3de} :catchall_456

    .line 1687
    add-int/lit8 v1, v1, 0x1

    .line 1688
    goto :goto_392

    .line 1677
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #icon:Lcom/android/server/status/StatusBarIcon;
    .end local v4           #key:Landroid/os/IBinder;
    .end local v5           #keys:Ljava/util/Set;,"Ljava/util/Set<Landroid/os/IBinder;>;"
    :catchall_3e1
    move-exception v10

    :try_start_3e2
    monitor-exit v9
    :try_end_3e3
    .catchall {:try_start_3e2 .. :try_end_3e3} :catchall_3e1

    throw v10

    .line 1689
    .restart local v0       #N:I
    .restart local v1       #i:I
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v5       #keys:Ljava/util/Set;,"Ljava/util/Set<Landroid/os/IBinder;>;"
    :cond_3e4
    :try_start_3e4
    monitor-exit v9
    :try_end_3e5
    .catchall {:try_start_3e4 .. :try_end_3e5} :catchall_456

    .line 1690
    iget-object v9, p0, Lcom/android/server/status/StatusBarService;->mNotificationData:Lcom/android/server/status/NotificationViewList;

    monitor-enter v9

    .line 1691
    :try_start_3e8
    iget-object v10, p0, Lcom/android/server/status/StatusBarService;->mNotificationData:Lcom/android/server/status/NotificationViewList;

    invoke-virtual {v10}, Lcom/android/server/status/NotificationViewList;->ongoingCount()I

    move-result v0

    .line 1692
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  ongoingCount.size="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1693
    const/4 v1, 0x0

    :goto_405
    if-ge v1, v0, :cond_459

    .line 1694
    iget-object v10, p0, Lcom/android/server/status/StatusBarService;->mNotificationData:Lcom/android/server/status/NotificationViewList;

    invoke-virtual {v10, v1}, Lcom/android/server/status/NotificationViewList;->getOngoing(I)Lcom/android/server/status/StatusBarNotification;

    move-result-object v6

    .line 1695
    .local v6, n:Lcom/android/server/status/StatusBarNotification;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "    ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] key="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v6, Lcom/android/server/status/StatusBarNotification;->key:Landroid/os/IBinder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " view="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v6, Lcom/android/server/status/StatusBarNotification;->view:Landroid/view/View;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1696
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "           data="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v6, Lcom/android/server/status/StatusBarNotification;->data:Lcom/android/server/status/NotificationData;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_453
    .catchall {:try_start_3e8 .. :try_end_453} :catchall_543

    .line 1693
    add-int/lit8 v1, v1, 0x1

    goto :goto_405

    .line 1689
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v5           #keys:Ljava/util/Set;,"Ljava/util/Set<Landroid/os/IBinder;>;"
    .end local v6           #n:Lcom/android/server/status/StatusBarNotification;
    :catchall_456
    move-exception v10

    :try_start_457
    monitor-exit v9
    :try_end_458
    .catchall {:try_start_457 .. :try_end_458} :catchall_456

    throw v10

    .line 1698
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v5       #keys:Ljava/util/Set;,"Ljava/util/Set<Landroid/os/IBinder;>;"
    :cond_459
    :try_start_459
    iget-object v10, p0, Lcom/android/server/status/StatusBarService;->mNotificationData:Lcom/android/server/status/NotificationViewList;

    invoke-virtual {v10}, Lcom/android/server/status/NotificationViewList;->latestCount()I

    move-result v0

    .line 1699
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  ongoingCount.size="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1700
    const/4 v1, 0x0

    :goto_476
    if-ge v1, v0, :cond_4c7

    .line 1701
    iget-object v10, p0, Lcom/android/server/status/StatusBarService;->mNotificationData:Lcom/android/server/status/NotificationViewList;

    invoke-virtual {v10, v1}, Lcom/android/server/status/NotificationViewList;->getLatest(I)Lcom/android/server/status/StatusBarNotification;

    move-result-object v6

    .line 1702
    .restart local v6       #n:Lcom/android/server/status/StatusBarNotification;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "    ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] key="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v6, Lcom/android/server/status/StatusBarNotification;->key:Landroid/os/IBinder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " view="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v6, Lcom/android/server/status/StatusBarNotification;->view:Landroid/view/View;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1703
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "           data="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v6, Lcom/android/server/status/StatusBarNotification;->data:Lcom/android/server/status/NotificationData;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1700
    add-int/lit8 v1, v1, 0x1

    goto :goto_476

    .line 1705
    .end local v6           #n:Lcom/android/server/status/StatusBarNotification;
    :cond_4c7
    monitor-exit v9
    :try_end_4c8
    .catchall {:try_start_459 .. :try_end_4c8} :catchall_543

    .line 1706
    iget-object v9, p0, Lcom/android/server/status/StatusBarService;->mDisableRecords:Ljava/util/ArrayList;

    monitor-enter v9

    .line 1707
    :try_start_4cb
    iget-object v10, p0, Lcom/android/server/status/StatusBarService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1708
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  mDisableRecords.size="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " mDisabled=0x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/server/status/StatusBarService;->mDisabled:I

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1710
    const/4 v1, 0x0

    :goto_4f8
    if-ge v1, v0, :cond_546

    .line 1711
    iget-object v10, p0, Lcom/android/server/status/StatusBarService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/status/StatusBarService$DisableRecord;

    .line 1712
    .local v8, tok:Lcom/android/server/status/StatusBarService$DisableRecord;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "    ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] what=0x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v8, Lcom/android/server/status/StatusBarService$DisableRecord;->what:I

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " pkg="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v8, Lcom/android/server/status/StatusBarService$DisableRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " token="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v8, Lcom/android/server/status/StatusBarService$DisableRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_540
    .catchall {:try_start_4cb .. :try_end_540} :catchall_549

    .line 1710
    add-int/lit8 v1, v1, 0x1

    goto :goto_4f8

    .line 1705
    .end local v8           #tok:Lcom/android/server/status/StatusBarService$DisableRecord;
    :catchall_543
    move-exception v10

    :try_start_544
    monitor-exit v9
    :try_end_545
    .catchall {:try_start_544 .. :try_end_545} :catchall_543

    throw v10

    .line 1715
    :cond_546
    :try_start_546
    monitor-exit v9

    goto/16 :goto_32

    :catchall_549
    move-exception v10

    monitor-exit v9
    :try_end_54b
    .catchall {:try_start_546 .. :try_end_54b} :catchall_549

    throw v10
.end method

.method gatherDisableActionsLocked()I
    .registers 5

    .prologue
    .line 759
    iget-object v3, p0, Lcom/android/server/status/StatusBarService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 761
    .local v0, N:I
    const/4 v2, 0x0

    .line 762
    .local v2, net:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_8
    if-ge v1, v0, :cond_18

    .line 763
    iget-object v3, p0, Lcom/android/server/status/StatusBarService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/status/StatusBarService$DisableRecord;

    iget v3, v3, Lcom/android/server/status/StatusBarService$DisableRecord;->what:I

    or-int/2addr v2, v3

    .line 762
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 765
    :cond_18
    return v2
.end method

.method getIconNumberForView(Landroid/view/View;)I
    .registers 8
    .parameter "v"

    .prologue
    .line 1071
    iget-object v4, p0, Lcom/android/server/status/StatusBarService;->mIconMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 1072
    const/4 v3, 0x0

    .line 1073
    .local v3, icon:Lcom/android/server/status/StatusBarIcon;
    :try_start_4
    iget-object v5, p0, Lcom/android/server/status/StatusBarService;->mIconList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1074
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_b
    if-ge v1, v0, :cond_1a

    .line 1075
    iget-object v5, p0, Lcom/android/server/status/StatusBarService;->mIconList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/status/StatusBarIcon;

    .line 1076
    .local v2, ic:Lcom/android/server/status/StatusBarIcon;
    iget-object v5, v2, Lcom/android/server/status/StatusBarIcon;->view:Landroid/view/View;

    if-ne v5, p1, :cond_23

    .line 1077
    move-object v3, v2

    .line 1081
    .end local v2           #ic:Lcom/android/server/status/StatusBarIcon;
    :cond_1a
    if-eqz v3, :cond_26

    .line 1082
    invoke-virtual {v3}, Lcom/android/server/status/StatusBarIcon;->getNumber()I

    move-result v5

    monitor-exit v4

    move v4, v5

    .line 1084
    :goto_22
    return v4

    .line 1074
    .restart local v2       #ic:Lcom/android/server/status/StatusBarIcon;
    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 1084
    .end local v2           #ic:Lcom/android/server/status/StatusBarIcon;
    :cond_26
    const/4 v5, -0x1

    monitor-exit v4

    move v4, v5

    goto :goto_22

    .line 1086
    .end local v0           #N:I
    .end local v1           #i:I
    :catchall_2a
    move-exception v5

    monitor-exit v4
    :try_end_2c
    .catchall {:try_start_4 .. :try_end_2c} :catchall_2a

    throw v5
.end method

.method getNotification(Landroid/os/IBinder;)Lcom/android/server/status/StatusBarNotification;
    .registers 4
    .parameter "key"

    .prologue
    .line 1091
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mNotificationData:Lcom/android/server/status/NotificationViewList;

    monitor-enter v0

    .line 1092
    :try_start_3
    iget-object v1, p0, Lcom/android/server/status/StatusBarService;->mNotificationData:Lcom/android/server/status/NotificationViewList;

    invoke-virtual {v1, p1}, Lcom/android/server/status/NotificationViewList;->get(Landroid/os/IBinder;)Lcom/android/server/status/StatusBarNotification;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1093
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method incrementAnim()V
    .registers 9

    .prologue
    .line 1353
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 1354
    .local v1, now:J
    iget-wide v6, p0, Lcom/android/server/status/StatusBarService;->mAnimLastTime:J

    sub-long v6, v1, v6

    long-to-float v6, v6

    const/high16 v7, 0x447a

    div-float v3, v6, v7

    .line 1355
    .local v3, t:F
    iget v5, p0, Lcom/android/server/status/StatusBarService;->mAnimY:F

    .line 1356
    .local v5, y:F
    iget v4, p0, Lcom/android/server/status/StatusBarService;->mAnimVel:F

    .line 1357
    .local v4, v:F
    iget v0, p0, Lcom/android/server/status/StatusBarService;->mAnimAccel:F

    .line 1358
    .local v0, a:F
    mul-float v6, v4, v3

    add-float/2addr v6, v5

    const/high16 v7, 0x3f00

    mul-float/2addr v7, v0

    mul-float/2addr v7, v3

    mul-float/2addr v7, v3

    add-float/2addr v6, v7

    iput v6, p0, Lcom/android/server/status/StatusBarService;->mAnimY:F

    .line 1359
    mul-float v6, v0, v3

    add-float/2addr v6, v4

    iput v6, p0, Lcom/android/server/status/StatusBarService;->mAnimVel:F

    .line 1360
    iput-wide v1, p0, Lcom/android/server/status/StatusBarService;->mAnimLastTime:J

    .line 1363
    return-void
.end method

.method interceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 15
    .parameter "event"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v12, 0x0

    .line 1477
    iget v8, p0, Lcom/android/server/status/StatusBarService;->mDisabled:I

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_b

    move v8, v10

    .line 1531
    :goto_a
    return v8

    .line 1481
    :cond_b
    iget-object v8, p0, Lcom/android/server/status/StatusBarService;->mStatusBarView:Lcom/android/server/status/StatusBarView;

    invoke-virtual {v8}, Lcom/android/server/status/StatusBarView;->getHeight()I

    move-result v3

    .line 1482
    .local v3, statusBarSize:I
    mul-int/lit8 v0, v3, 0x2

    .line 1483
    .local v0, hitSize:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    if-nez v8, :cond_59

    .line 1484
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    float-to-int v6, v8

    .line 1486
    .local v6, y:I
    iget-boolean v8, p0, Lcom/android/server/status/StatusBarService;->mExpanded:Z

    if-nez v8, :cond_43

    .line 1487
    sub-int v8, v3, v6

    iput v8, p0, Lcom/android/server/status/StatusBarService;->mViewDelta:I

    .line 1492
    :goto_26
    iget-boolean v8, p0, Lcom/android/server/status/StatusBarService;->mExpanded:Z

    if-nez v8, :cond_2c

    if-lt v6, v0, :cond_39

    :cond_2c
    iget-boolean v8, p0, Lcom/android/server/status/StatusBarService;->mExpanded:Z

    if-eqz v8, :cond_41

    iget-object v8, p0, Lcom/android/server/status/StatusBarService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v8}, Landroid/view/Display;->getHeight()I

    move-result v8

    sub-int/2addr v8, v0

    if-le v6, v8, :cond_41

    .line 1494
    :cond_39
    invoke-virtual {p0, v6}, Lcom/android/server/status/StatusBarService;->prepareTracking(I)V

    .line 1495
    iget-object v8, p0, Lcom/android/server/status/StatusBarService;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .end local v6           #y:I
    :cond_41
    :goto_41
    move v8, v12

    .line 1531
    goto :goto_a

    .line 1489
    .restart local v6       #y:I
    :cond_43
    iget-object v8, p0, Lcom/android/server/status/StatusBarService;->mTrackingView:Lcom/android/server/status/TrackingView;

    iget-object v9, p0, Lcom/android/server/status/StatusBarService;->mAbsPos:[I

    invoke-virtual {v8, v9}, Lcom/android/server/status/TrackingView;->getLocationOnScreen([I)V

    .line 1490
    iget-object v8, p0, Lcom/android/server/status/StatusBarService;->mAbsPos:[I

    aget v8, v8, v10

    iget-object v9, p0, Lcom/android/server/status/StatusBarService;->mTrackingView:Lcom/android/server/status/TrackingView;

    invoke-virtual {v9}, Lcom/android/server/status/TrackingView;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    sub-int/2addr v8, v6

    iput v8, p0, Lcom/android/server/status/StatusBarService;->mViewDelta:I

    goto :goto_26

    .line 1497
    .end local v6           #y:I
    :cond_59
    iget-boolean v8, p0, Lcom/android/server/status/StatusBarService;->mTracking:Z

    if-eqz v8, :cond_41

    .line 1498
    iget-object v8, p0, Lcom/android/server/status/StatusBarService;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1499
    iget-object v8, p0, Lcom/android/server/status/StatusBarService;->mCloseView:Lcom/android/server/status/CloseDragHandle;

    invoke-virtual {v8}, Lcom/android/server/status/CloseDragHandle;->getHeight()I

    move-result v8

    add-int v1, v3, v8

    .line 1500
    .local v1, minY:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_85

    .line 1501
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    float-to-int v6, v8

    .line 1502
    .restart local v6       #y:I
    iget-boolean v8, p0, Lcom/android/server/status/StatusBarService;->mAnimatingReveal:Z

    if-eqz v8, :cond_7c

    if-lt v6, v1, :cond_41

    .line 1505
    :cond_7c
    iput-boolean v12, p0, Lcom/android/server/status/StatusBarService;->mAnimatingReveal:Z

    .line 1506
    iget v8, p0, Lcom/android/server/status/StatusBarService;->mViewDelta:I

    add-int/2addr v8, v6

    invoke-virtual {p0, v8}, Lcom/android/server/status/StatusBarService;->updateExpandedViewPos(I)V

    goto :goto_41

    .line 1508
    .end local v6           #y:I
    :cond_85
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    if-ne v8, v10, :cond_41

    .line 1509
    iget-object v8, p0, Lcom/android/server/status/StatusBarService;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v9, 0x3e8

    invoke-virtual {v8, v9}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 1511
    iget-object v8, p0, Lcom/android/server/status/StatusBarService;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v7

    .line 1512
    .local v7, yVel:F
    cmpg-float v8, v7, v11

    if-gez v8, :cond_c4

    move v2, v10

    .line 1514
    .local v2, negative:Z
    :goto_9d
    iget-object v8, p0, Lcom/android/server/status/StatusBarService;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v5

    .line 1515
    .local v5, xVel:F
    cmpg-float v8, v5, v11

    if-gez v8, :cond_a8

    .line 1516
    neg-float v5, v5

    .line 1518
    :cond_a8
    const/high16 v8, 0x4316

    cmpl-float v8, v5, v8

    if-lez v8, :cond_b0

    .line 1519
    const/high16 v5, 0x4316

    .line 1522
    :cond_b0
    float-to-double v8, v7

    float-to-double v10, v5

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v8

    double-to-float v4, v8

    .line 1523
    .local v4, vel:F
    if-eqz v2, :cond_ba

    .line 1524
    neg-float v4, v4

    .line 1527
    :cond_ba
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {p0, v8, v4, v12}, Lcom/android/server/status/StatusBarService;->performFling(IFZ)V

    goto/16 :goto_41

    .end local v2           #negative:Z
    .end local v4           #vel:F
    .end local v5           #xVel:F
    :cond_c4
    move v2, v12

    .line 1512
    goto :goto_9d
.end method

.method makeNotificationView(Lcom/android/server/status/StatusBarNotification;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 15
    .parameter "notification"
    .parameter "parent"

    .prologue
    .line 1105
    iget-object v6, p1, Lcom/android/server/status/StatusBarNotification;->data:Lcom/android/server/status/NotificationData;

    .line 1106
    .local v6, n:Lcom/android/server/status/NotificationData;
    iget-object v7, v6, Lcom/android/server/status/NotificationData;->contentView:Landroid/widget/RemoteViews;

    .line 1107
    .local v7, remoteViews:Landroid/widget/RemoteViews;
    if-nez v7, :cond_8

    .line 1108
    const/4 v9, 0x0

    .line 1144
    :goto_7
    return-object v9

    .line 1112
    :cond_8
    iget-object v9, p0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    const-string v10, "layout_inflater"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .line 1114
    .local v5, inflater:Landroid/view/LayoutInflater;
    const v9, 0x109005d

    const/4 v10, 0x0

    invoke-virtual {v5, v9, p2, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    .line 1117
    .local v8, row:Landroid/view/View;
    const v9, 0x1020002

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 1118
    .local v1, content:Landroid/view/ViewGroup;
    const/high16 v9, 0x6

    invoke-virtual {v1, v9}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 1119
    iget-object v9, p0, Lcom/android/server/status/StatusBarService;->mFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v1, v9}, Landroid/view/ViewGroup;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1120
    iget-object v2, v6, Lcom/android/server/status/NotificationData;->contentIntent:Landroid/app/PendingIntent;

    .line 1121
    .local v2, contentIntent:Landroid/app/PendingIntent;
    if-eqz v2, :cond_3d

    .line 1122
    new-instance v9, Lcom/android/server/status/StatusBarService$Launcher;

    iget-object v10, v6, Lcom/android/server/status/NotificationData;->pkg:Ljava/lang/String;

    iget v11, v6, Lcom/android/server/status/NotificationData;->id:I

    invoke-direct {v9, p0, v2, v10, v11}, Lcom/android/server/status/StatusBarService$Launcher;-><init>(Lcom/android/server/status/StatusBarService;Landroid/app/PendingIntent;Ljava/lang/String;I)V

    invoke-virtual {v1, v9}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1125
    :cond_3d
    const/4 v0, 0x0

    .line 1126
    .local v0, child:Landroid/view/View;
    const/4 v4, 0x0

    .line 1128
    .local v4, exception:Ljava/lang/Exception;
    :try_start_3f
    iget-object v9, p0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v9, v1}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    :try_end_44
    .catch Ljava/lang/RuntimeException; {:try_start_3f .. :try_end_44} :catch_63

    move-result-object v0

    .line 1133
    :goto_45
    if-nez v0, :cond_67

    .line 1134
    const-string v9, "StatusBar"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "couldn\'t inflate view for package "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v6, Lcom/android/server/status/NotificationData;->pkg:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1135
    const/4 v9, 0x0

    goto :goto_7

    .line 1130
    :catch_63
    move-exception v9

    move-object v3, v9

    .line 1131
    .local v3, e:Ljava/lang/RuntimeException;
    move-object v4, v3

    goto :goto_45

    .line 1137
    .end local v3           #e:Ljava/lang/RuntimeException;
    :cond_67
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1139
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 1141
    iput-object v8, p1, Lcom/android/server/status/StatusBarNotification;->view:Landroid/view/View;

    .line 1142
    iput-object v0, p1, Lcom/android/server/status/StatusBarNotification;->contentView:Landroid/view/View;

    move-object v9, v8

    .line 1144
    goto :goto_7
.end method

.method manageDisableListLocked(ILandroid/os/IBinder;Ljava/lang/String;)V
    .registers 12
    .parameter "what"
    .parameter "token"
    .parameter "pkg"

    .prologue
    .line 723
    iget-object v5, p0, Lcom/android/server/status/StatusBarService;->mDisableRecords:Ljava/util/ArrayList;

    monitor-enter v5

    .line 724
    :try_start_3
    iget-object v6, p0, Lcom/android/server/status/StatusBarService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 725
    .local v0, N:I
    const/4 v4, 0x0

    .line 727
    .local v4, tok:Lcom/android/server/status/StatusBarService$DisableRecord;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_b
    if-ge v2, v0, :cond_1a

    .line 728
    iget-object v6, p0, Lcom/android/server/status/StatusBarService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/status/StatusBarService$DisableRecord;

    .line 729
    .local v3, t:Lcom/android/server/status/StatusBarService$DisableRecord;
    iget-object v6, v3, Lcom/android/server/status/StatusBarService$DisableRecord;->token:Landroid/os/IBinder;

    if-ne v6, p2, :cond_31

    .line 730
    move-object v4, v3

    .line 734
    .end local v3           #t:Lcom/android/server/status/StatusBarService$DisableRecord;
    :cond_1a
    if-eqz p1, :cond_22

    invoke-interface {p2}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v6

    if-nez v6, :cond_34

    .line 735
    :cond_22
    if-eqz v4, :cond_2f

    .line 736
    iget-object v6, p0, Lcom/android/server/status/StatusBarService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 737
    iget-object v6, v4, Lcom/android/server/status/StatusBarService$DisableRecord;->token:Landroid/os/IBinder;

    const/4 v7, 0x0

    invoke-interface {v6, v4, v7}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 754
    :cond_2f
    :goto_2f
    monitor-exit v5

    .line 755
    :goto_30
    return-void

    .line 727
    .restart local v3       #t:Lcom/android/server/status/StatusBarService$DisableRecord;
    :cond_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 740
    .end local v3           #t:Lcom/android/server/status/StatusBarService$DisableRecord;
    :cond_34
    if-nez v4, :cond_45

    .line 741
    new-instance v4, Lcom/android/server/status/StatusBarService$DisableRecord;

    .end local v4           #tok:Lcom/android/server/status/StatusBarService$DisableRecord;
    const/4 v6, 0x0

    invoke-direct {v4, p0, v6}, Lcom/android/server/status/StatusBarService$DisableRecord;-><init>(Lcom/android/server/status/StatusBarService;Lcom/android/server/status/StatusBarService$1;)V
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_4c

    .line 743
    .restart local v4       #tok:Lcom/android/server/status/StatusBarService$DisableRecord;
    const/4 v6, 0x0

    :try_start_3d
    invoke-interface {p2, v4, v6}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_4c
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_40} :catch_4f

    .line 748
    :try_start_40
    iget-object v6, p0, Lcom/android/server/status/StatusBarService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 750
    :cond_45
    iput p1, v4, Lcom/android/server/status/StatusBarService$DisableRecord;->what:I

    .line 751
    iput-object p2, v4, Lcom/android/server/status/StatusBarService$DisableRecord;->token:Landroid/os/IBinder;

    .line 752
    iput-object p3, v4, Lcom/android/server/status/StatusBarService$DisableRecord;->pkg:Ljava/lang/String;

    goto :goto_2f

    .line 754
    .end local v0           #N:I
    .end local v2           #i:I
    .end local v4           #tok:Lcom/android/server/status/StatusBarService$DisableRecord;
    :catchall_4c
    move-exception v6

    monitor-exit v5
    :try_end_4e
    .catchall {:try_start_40 .. :try_end_4e} :catchall_4c

    throw v6

    .line 745
    .restart local v0       #N:I
    .restart local v2       #i:I
    .restart local v4       #tok:Lcom/android/server/status/StatusBarService$DisableRecord;
    :catch_4f
    move-exception v1

    .line 746
    .local v1, ex:Landroid/os/RemoteException;
    :try_start_50
    monitor-exit v5
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4c

    goto :goto_30
.end method

.method onBarViewAttached()V
    .registers 8

    .prologue
    const/4 v1, -0x1

    .line 1750
    const/4 v5, -0x3

    .line 1751
    .local v5, pixelFormat:I
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mTrackingView:Lcom/android/server/status/TrackingView;

    invoke-virtual {v2}, Lcom/android/server/status/TrackingView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 1752
    .local v6, bg:Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_e

    .line 1753
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v5

    .line 1756
    :cond_e
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7d8

    const v4, 0x20300

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 1765
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x37

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1766
    const-string v1, "TrackingView"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1767
    iput-object v0, p0, Lcom/android/server/status/StatusBarService;->mTrackingParams:Landroid/view/WindowManager$LayoutParams;

    .line 1769
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mTrackingView:Lcom/android/server/status/TrackingView;

    invoke-virtual {v1, v2, v0}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1770
    return-void
.end method

.method onTrackingViewAttached()V
    .registers 9

    .prologue
    const/4 v4, 0x0

    const/4 v7, -0x1

    const/4 v6, -0x2

    .line 1778
    const/4 v2, -0x3

    .line 1786
    .local v2, pixelFormat:I
    iget-object v3, p0, Lcom/android/server/status/StatusBarService;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 1787
    .local v1, lp:Landroid/view/WindowManager$LayoutParams;
    iput v7, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1788
    iput v6, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1789
    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1790
    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1791
    const/16 v3, 0x7d8

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1792
    const v3, 0x21320

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1797
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1798
    const/16 v3, 0x37

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1799
    const-string v3, "StatusBarExpanded"

    invoke-virtual {v1, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1800
    iget-object v3, p0, Lcom/android/server/status/StatusBarService;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1801
    iget-object v3, p0, Lcom/android/server/status/StatusBarService;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Window;->setFormat(I)V

    .line 1802
    iput-object v1, p0, Lcom/android/server/status/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    .line 1804
    iget-object v3, p0, Lcom/android/server/status/StatusBarService;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/Window;->requestFeature(I)Z

    .line 1805
    iget-object v3, p0, Lcom/android/server/status/StatusBarService;->mExpandedDialog:Landroid/app/Dialog;

    iget-object v4, p0, Lcom/android/server/status/StatusBarService;->mExpandedView:Lcom/android/server/status/ExpandedView;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v7, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4, v5}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1808
    iget-object v3, p0, Lcom/android/server/status/StatusBarService;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 1809
    iget-object v3, p0, Lcom/android/server/status/StatusBarService;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->hide()V

    .line 1810
    iget-object v3, p0, Lcom/android/server/status/StatusBarService;->mExpandedView:Lcom/android/server/status/ExpandedView;

    invoke-virtual {v3}, Lcom/android/server/status/ExpandedView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 1811
    .local v0, hack:Landroid/widget/FrameLayout;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 1812
    return-void
.end method

.method panelSlightlyVisible(Z)V
    .registers 3
    .parameter "visible"

    .prologue
    .line 1914
    iget-boolean v0, p0, Lcom/android/server/status/StatusBarService;->mPanelSlightlyVisible:Z

    if-eq v0, p1, :cond_d

    .line 1915
    iput-boolean p1, p0, Lcom/android/server/status/StatusBarService;->mPanelSlightlyVisible:Z

    .line 1916
    if-eqz p1, :cond_d

    .line 1918
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mNotificationCallbacks:Lcom/android/server/status/StatusBarService$NotificationCallbacks;

    invoke-interface {v0}, Lcom/android/server/status/StatusBarService$NotificationCallbacks;->onPanelRevealed()V

    .line 1921
    :cond_d
    return-void
.end method

.method performAddUpdateIcon(Landroid/os/IBinder;Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;)V
    .registers 23
    .parameter "key"
    .parameter "data"
    .parameter "n"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/status/StatusBarException;
        }
    .end annotation

    .prologue
    .line 911
    if-eqz p3, :cond_86

    .line 912
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/status/StatusBarService;->getNotification(Landroid/os/IBinder;)Lcom/android/server/status/StatusBarNotification;

    move-result-object v8

    .line 913
    .local v8, notification:Lcom/android/server/status/StatusBarNotification;
    const/4 v9, 0x0

    .line 914
    .local v9, oldData:Lcom/android/server/status/NotificationData;
    if-nez v8, :cond_10a

    .line 916
    new-instance v8, Lcom/android/server/status/StatusBarNotification;

    .end local v8           #notification:Lcom/android/server/status/StatusBarNotification;
    invoke-direct {v8}, Lcom/android/server/status/StatusBarNotification;-><init>()V

    .line 917
    .restart local v8       #notification:Lcom/android/server/status/StatusBarNotification;
    move-object/from16 v0, p1

    move-object v1, v8

    iput-object v0, v1, Lcom/android/server/status/StatusBarNotification;->key:Landroid/os/IBinder;

    .line 918
    move-object/from16 v0, p3

    move-object v1, v8

    iput-object v0, v1, Lcom/android/server/status/StatusBarNotification;->data:Lcom/android/server/status/NotificationData;

    .line 919
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService;->mNotificationData:Lcom/android/server/status/NotificationViewList;

    move-object v15, v0

    monitor-enter v15

    .line 920
    :try_start_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService;->mNotificationData:Lcom/android/server/status/NotificationViewList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v8

    invoke-virtual {v0, v1}, Lcom/android/server/status/NotificationViewList;->add(Lcom/android/server/status/StatusBarNotification;)V

    .line 921
    monitor-exit v15
    :try_end_2b
    .catchall {:try_start_1e .. :try_end_2b} :catchall_107

    .line 922
    move-object/from16 v0, p0

    move-object v1, v8

    invoke-virtual {v0, v1}, Lcom/android/server/status/StatusBarService;->addNotificationView(Lcom/android/server/status/StatusBarNotification;)V

    .line 923
    invoke-direct/range {p0 .. p0}, Lcom/android/server/status/StatusBarService;->setAreThereNotifications()V

    .line 935
    :goto_34
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/server/status/NotificationData;->tickerText:Ljava/lang/CharSequence;

    move-object v15, v0

    if-eqz v15, :cond_86

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService;->mStatusBarView:Lcom/android/server/status/StatusBarView;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/android/server/status/StatusBarView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v15

    if-eqz v15, :cond_86

    if-eqz v9, :cond_5a

    iget-object v15, v9, Lcom/android/server/status/NotificationData;->tickerText:Ljava/lang/CharSequence;

    if-eqz v15, :cond_5a

    iget-object v15, v9, Lcom/android/server/status/NotificationData;->tickerText:Ljava/lang/CharSequence;

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/server/status/NotificationData;->tickerText:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    invoke-static/range {v15 .. v16}, Lcom/android/internal/util/CharSequences;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_86

    .line 939
    :cond_5a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/status/StatusBarService;->mDisabled:I

    move v15, v0

    and-int/lit8 v15, v15, 0x2

    if-nez v15, :cond_86

    .line 940
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService;->mTicker:Lcom/android/server/status/Ticker;

    move-object v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/android/server/status/StatusBarIcon;->getIcon(Landroid/content/Context;Lcom/android/server/status/IconData;)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/server/status/NotificationData;->tickerText:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    move-object v0, v15

    move-object/from16 v1, p3

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/status/Ticker;->addEntry(Lcom/android/server/status/NotificationData;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    .line 946
    .end local v8           #notification:Lcom/android/server/status/StatusBarNotification;
    .end local v9           #oldData:Lcom/android/server/status/NotificationData;
    :cond_86
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService;->mIconMap:Ljava/util/HashMap;

    move-object v15, v0

    monitor-enter v15

    .line 947
    :try_start_8c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService;->mIconMap:Ljava/util/HashMap;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/status/StatusBarIcon;

    .line 948
    .local v6, icon:Lcom/android/server/status/StatusBarIcon;
    if-nez v6, :cond_1a5

    .line 950
    if-nez p3, :cond_11a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService;->mStatusIcons:Landroid/widget/LinearLayout;

    move-object/from16 v16, v0

    move-object/from16 v14, v16

    .line 952
    .local v14, v:Landroid/widget/LinearLayout;
    :goto_a8
    new-instance v6, Lcom/android/server/status/StatusBarIcon;

    .end local v6           #icon:Lcom/android/server/status/StatusBarIcon;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object v0, v6

    move-object/from16 v1, v16

    move-object/from16 v2, p2

    move-object v3, v14

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/status/StatusBarIcon;-><init>(Landroid/content/Context;Lcom/android/server/status/IconData;Landroid/view/ViewGroup;)V

    .line 953
    .restart local v6       #icon:Lcom/android/server/status/StatusBarIcon;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService;->mIconMap:Ljava/util/HashMap;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 954
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService;->mIconList:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 956
    if-nez p3, :cond_183

    .line 957
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/status/IconData;->slot:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/server/status/StatusBarService;->getRightIconIndex(Ljava/lang/String;)I

    move-result v13

    .line 958
    .local v13, slotIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService;->mRightIcons:[Lcom/android/server/status/StatusBarIcon;

    move-object v12, v0

    .line 959
    .local v12, rightIcons:[Lcom/android/server/status/StatusBarIcon;
    aget-object v16, v12, v13

    if-nez v16, :cond_13a

    .line 960
    const/4 v11, 0x0

    .line 961
    .local v11, pos:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService;->mRightIcons:[Lcom/android/server/status/StatusBarIcon;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    const/16 v17, 0x1

    sub-int v4, v16, v17

    .local v4, i:I
    :goto_fc
    if-le v4, v13, :cond_123

    .line 962
    aget-object v5, v12, v4
    :try_end_100
    .catchall {:try_start_8c .. :try_end_100} :catchall_180

    .line 963
    .local v5, ic:Lcom/android/server/status/StatusBarIcon;
    if-eqz v5, :cond_104

    .line 964
    add-int/lit8 v11, v11, 0x1

    .line 961
    :cond_104
    add-int/lit8 v4, v4, -0x1

    goto :goto_fc

    .line 921
    .end local v4           #i:I
    .end local v5           #ic:Lcom/android/server/status/StatusBarIcon;
    .end local v6           #icon:Lcom/android/server/status/StatusBarIcon;
    .end local v11           #pos:I
    .end local v12           #rightIcons:[Lcom/android/server/status/StatusBarIcon;
    .end local v13           #slotIndex:I
    .end local v14           #v:Landroid/widget/LinearLayout;
    .restart local v8       #notification:Lcom/android/server/status/StatusBarNotification;
    .restart local v9       #oldData:Lcom/android/server/status/NotificationData;
    :catchall_107
    move-exception v16

    :try_start_108
    monitor-exit v15
    :try_end_109
    .catchall {:try_start_108 .. :try_end_109} :catchall_107

    throw v16

    .line 926
    :cond_10a
    iget-object v9, v8, Lcom/android/server/status/StatusBarNotification;->data:Lcom/android/server/status/NotificationData;

    .line 927
    move-object/from16 v0, p3

    move-object v1, v8

    iput-object v0, v1, Lcom/android/server/status/StatusBarNotification;->data:Lcom/android/server/status/NotificationData;

    .line 928
    move-object/from16 v0, p0

    move-object v1, v8

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Lcom/android/server/status/StatusBarService;->updateNotificationView(Lcom/android/server/status/StatusBarNotification;Lcom/android/server/status/NotificationData;)V

    goto/16 :goto_34

    .line 950
    .end local v8           #notification:Lcom/android/server/status/StatusBarNotification;
    .end local v9           #oldData:Lcom/android/server/status/NotificationData;
    .restart local v6       #icon:Lcom/android/server/status/StatusBarIcon;
    :cond_11a
    :try_start_11a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService;->mNotificationIcons:Lcom/android/server/status/IconMerger;

    move-object/from16 v16, v0

    move-object/from16 v14, v16

    goto :goto_a8

    .line 967
    .restart local v4       #i:I
    .restart local v11       #pos:I
    .restart local v12       #rightIcons:[Lcom/android/server/status/StatusBarIcon;
    .restart local v13       #slotIndex:I
    .restart local v14       #v:Landroid/widget/LinearLayout;
    :cond_123
    aput-object v6, v12, v13

    .line 968
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService;->mStatusIcons:Landroid/widget/LinearLayout;

    move-object/from16 v16, v0

    move-object v0, v6

    iget-object v0, v0, Lcom/android/server/status/StatusBarIcon;->view:Landroid/view/View;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move v2, v11

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 993
    .end local v4           #i:I
    .end local v11           #pos:I
    .end local v12           #rightIcons:[Lcom/android/server/status/StatusBarIcon;
    .end local v13           #slotIndex:I
    .end local v14           #v:Landroid/widget/LinearLayout;
    :goto_138
    monitor-exit v15

    .line 994
    :goto_139
    return-void

    .line 970
    .restart local v12       #rightIcons:[Lcom/android/server/status/StatusBarIcon;
    .restart local v13       #slotIndex:I
    .restart local v14       #v:Landroid/widget/LinearLayout;
    :cond_13a
    const-string v16, "StatusBar"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "duplicate icon in slot "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/status/IconData;->slot:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService;->mIconMap:Ljava/util/HashMap;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 972
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService;->mIconList:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 973
    monitor-exit v15

    goto :goto_139

    .line 993
    .end local v6           #icon:Lcom/android/server/status/StatusBarIcon;
    .end local v12           #rightIcons:[Lcom/android/server/status/StatusBarIcon;
    .end local v13           #slotIndex:I
    .end local v14           #v:Landroid/widget/LinearLayout;
    :catchall_180
    move-exception v16

    monitor-exit v15
    :try_end_182
    .catchall {:try_start_11a .. :try_end_182} :catchall_180

    throw v16

    .line 976
    .restart local v6       #icon:Lcom/android/server/status/StatusBarIcon;
    .restart local v14       #v:Landroid/widget/LinearLayout;
    :cond_183
    :try_start_183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService;->mNotificationData:Lcom/android/server/status/NotificationViewList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/server/status/NotificationViewList;->getIconIndex(Lcom/android/server/status/NotificationData;)I

    move-result v7

    .line 977
    .local v7, iconIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService;->mNotificationIcons:Lcom/android/server/status/IconMerger;

    move-object/from16 v16, v0

    move-object v0, v6

    iget-object v0, v0, Lcom/android/server/status/StatusBarIcon;->view:Landroid/view/View;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/android/server/status/IconMerger;->addView(Landroid/view/View;I)V

    goto :goto_138

    .line 980
    .end local v7           #iconIndex:I
    .end local v14           #v:Landroid/widget/LinearLayout;
    :cond_1a5
    if-nez p3, :cond_1b6

    .line 982
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object v0, v6

    move-object/from16 v1, v16

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/status/StatusBarIcon;->update(Landroid/content/Context;Lcom/android/server/status/IconData;)V

    goto :goto_138

    .line 985
    :cond_1b6
    move-object v0, v6

    iget-object v0, v0, Lcom/android/server/status/StatusBarIcon;->view:Landroid/view/View;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    .line 986
    .local v10, parent:Landroid/view/ViewGroup;
    move-object v0, v6

    iget-object v0, v0, Lcom/android/server/status/StatusBarIcon;->view:Landroid/view/View;

    move-object/from16 v16, v0

    move-object v0, v10

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 988
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object v0, v6

    move-object/from16 v1, v16

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/status/StatusBarIcon;->update(Landroid/content/Context;Lcom/android/server/status/IconData;)V

    .line 989
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService;->mNotificationData:Lcom/android/server/status/NotificationViewList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/server/status/NotificationViewList;->getIconIndex(Lcom/android/server/status/NotificationData;)I

    move-result v7

    .line 990
    .restart local v7       #iconIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService;->mNotificationIcons:Lcom/android/server/status/IconMerger;

    move-object/from16 v16, v0

    move-object v0, v6

    iget-object v0, v0, Lcom/android/server/status/StatusBarIcon;->view:Landroid/view/View;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/android/server/status/IconMerger;->addView(Landroid/view/View;I)V
    :try_end_1fb
    .catchall {:try_start_183 .. :try_end_1fb} :catchall_180

    goto/16 :goto_138
.end method

.method performCollapse()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1302
    iget-boolean v0, p0, Lcom/android/server/status/StatusBarService;->mExpandedVisible:Z

    if-nez v0, :cond_6

    .line 1319
    :cond_5
    :goto_5
    return-void

    .line 1305
    :cond_6
    iput-boolean v2, p0, Lcom/android/server/status/StatusBarService;->mExpandedVisible:Z

    .line 1306
    invoke-virtual {p0, v2}, Lcom/android/server/status/StatusBarService;->panelSlightlyVisible(Z)V

    .line 1307
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    .line 1308
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mTrackingView:Lcom/android/server/status/TrackingView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/server/status/TrackingView;->setVisibility(I)V

    .line 1310
    iget v0, p0, Lcom/android/server/status/StatusBarService;->mDisabled:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_23

    .line 1311
    const/4 v0, 0x1

    const/high16 v1, 0x10a

    invoke-virtual {p0, v0, v1}, Lcom/android/server/status/StatusBarService;->setNotificationIconVisibility(ZI)V

    .line 1313
    :cond_23
    const v0, 0x10a0001

    invoke-virtual {p0, v2, v0}, Lcom/android/server/status/StatusBarService;->setDateViewVisibility(ZI)V

    .line 1315
    iget-boolean v0, p0, Lcom/android/server/status/StatusBarService;->mExpanded:Z

    if-eqz v0, :cond_5

    .line 1318
    iput-boolean v2, p0, Lcom/android/server/status/StatusBarService;->mExpanded:Z

    goto :goto_5
.end method

.method performDisableActions(I)V
    .registers 6
    .parameter "net"

    .prologue
    const-string v3, "StatusBar"

    .line 1924
    iget v1, p0, Lcom/android/server/status/StatusBarService;->mDisabled:I

    .line 1925
    .local v1, old:I
    xor-int v0, p1, v1

    .line 1926
    .local v0, diff:I
    iput p1, p0, Lcom/android/server/status/StatusBarService;->mDisabled:I

    .line 1929
    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_13

    .line 1930
    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_13

    .line 1931
    invoke-virtual {p0}, Lcom/android/server/status/StatusBarService;->performCollapse()V

    .line 1934
    :cond_13
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_31

    .line 1935
    and-int/lit8 v2, p1, 0x2

    if-eqz v2, :cond_3a

    .line 1936
    const-string v2, "StatusBar"

    const-string v2, "DISABLE_NOTIFICATION_ICONS: yes"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1937
    iget-boolean v2, p0, Lcom/android/server/status/StatusBarService;->mTicking:Z

    if-eqz v2, :cond_32

    .line 1938
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mNotificationIcons:Lcom/android/server/status/IconMerger;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/server/status/IconMerger;->setVisibility(I)V

    .line 1939
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mTicker:Lcom/android/server/status/Ticker;

    invoke-virtual {v2}, Lcom/android/server/status/Ticker;->halt()V

    .line 1950
    :cond_31
    :goto_31
    return-void

    .line 1941
    :cond_32
    const/4 v2, 0x0

    const v3, 0x10a0001

    invoke-virtual {p0, v2, v3}, Lcom/android/server/status/StatusBarService;->setNotificationIconVisibility(ZI)V

    goto :goto_31

    .line 1944
    :cond_3a
    const-string v2, "StatusBar"

    const-string v2, "DISABLE_NOTIFICATION_ICONS: no"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1945
    iget-boolean v2, p0, Lcom/android/server/status/StatusBarService;->mExpandedVisible:Z

    if-nez v2, :cond_31

    .line 1946
    const/4 v2, 0x1

    const/high16 v3, 0x10a

    invoke-virtual {p0, v2, v3}, Lcom/android/server/status/StatusBarService;->setNotificationIconVisibility(ZI)V

    goto :goto_31
.end method

.method performExpand()V
    .registers 2

    .prologue
    .line 1275
    iget v0, p0, Lcom/android/server/status/StatusBarService;->mDisabled:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_7

    .line 1296
    :cond_6
    :goto_6
    return-void

    .line 1278
    :cond_7
    iget-boolean v0, p0, Lcom/android/server/status/StatusBarService;->mExpanded:Z

    if-nez v0, :cond_6

    .line 1291
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/status/StatusBarService;->mExpanded:Z

    .line 1292
    invoke-direct {p0}, Lcom/android/server/status/StatusBarService;->makeExpandedVisible()V

    .line 1293
    const/16 v0, -0x2711

    invoke-virtual {p0, v0}, Lcom/android/server/status/StatusBarService;->updateExpandedViewPos(I)V

    goto :goto_6
.end method

.method performFling(IFZ)V
    .registers 13
    .parameter "y"
    .parameter "vel"
    .parameter "always"

    .prologue
    const/high16 v8, 0x44fa

    const/high16 v3, 0x4348

    const/high16 v7, -0x3b06

    const/high16 v6, -0x3cb8

    const/4 v5, 0x0

    .line 1415
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/status/StatusBarService;->mAnimatingReveal:Z

    .line 1416
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/server/status/StatusBarService;->mDisplayHeight:F

    .line 1418
    int-to-float v2, p1

    iput v2, p0, Lcom/android/server/status/StatusBarService;->mAnimY:F

    .line 1419
    iput p2, p0, Lcom/android/server/status/StatusBarService;->mAnimVel:F

    .line 1423
    iget-boolean v2, p0, Lcom/android/server/status/StatusBarService;->mExpanded:Z

    if-eqz v2, :cond_72

    .line 1424
    if-nez p3, :cond_69

    cmpl-float v2, p2, v3

    if-gtz v2, :cond_32

    int-to-float v2, p1

    iget v3, p0, Lcom/android/server/status/StatusBarService;->mDisplayHeight:F

    const/high16 v4, 0x41c8

    sub-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_69

    cmpl-float v2, p2, v6

    if-lez v2, :cond_69

    .line 1429
    :cond_32
    iput v8, p0, Lcom/android/server/status/StatusBarService;->mAnimAccel:F

    .line 1430
    cmpg-float v2, p2, v5

    if-gez v2, :cond_3a

    .line 1431
    iput v5, p0, Lcom/android/server/status/StatusBarService;->mAnimVel:F

    .line 1464
    :cond_3a
    :goto_3a
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1465
    .local v0, now:J
    iput-wide v0, p0, Lcom/android/server/status/StatusBarService;->mAnimLastTime:J

    .line 1466
    const-wide/16 v2, 0x10

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/server/status/StatusBarService;->mCurAnimationTime:J

    .line 1467
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/status/StatusBarService;->mAnimating:Z

    .line 1468
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mHandler:Lcom/android/server/status/StatusBarService$H;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/android/server/status/StatusBarService$H;->removeMessages(I)V

    .line 1469
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mHandler:Lcom/android/server/status/StatusBarService$H;

    const/16 v3, 0x3e9

    invoke-virtual {v2, v3}, Lcom/android/server/status/StatusBarService$H;->removeMessages(I)V

    .line 1470
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mHandler:Lcom/android/server/status/StatusBarService$H;

    iget-object v3, p0, Lcom/android/server/status/StatusBarService;->mHandler:Lcom/android/server/status/StatusBarService$H;

    const/16 v4, 0x3e8

    invoke-virtual {v3, v4}, Lcom/android/server/status/StatusBarService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/status/StatusBarService;->mCurAnimationTime:J

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/status/StatusBarService$H;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 1471
    invoke-virtual {p0}, Lcom/android/server/status/StatusBarService;->stopTracking()V

    .line 1472
    return-void

    .line 1436
    .end local v0           #now:J
    :cond_69
    iput v7, p0, Lcom/android/server/status/StatusBarService;->mAnimAccel:F

    .line 1437
    cmpl-float v2, p2, v5

    if-lez v2, :cond_3a

    .line 1438
    iput v5, p0, Lcom/android/server/status/StatusBarService;->mAnimVel:F

    goto :goto_3a

    .line 1442
    :cond_72
    if-nez p3, :cond_86

    cmpl-float v2, p2, v3

    if-gtz v2, :cond_86

    int-to-float v2, p1

    iget v3, p0, Lcom/android/server/status/StatusBarService;->mDisplayHeight:F

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_8f

    cmpl-float v2, p2, v6

    if-lez v2, :cond_8f

    .line 1447
    :cond_86
    iput v8, p0, Lcom/android/server/status/StatusBarService;->mAnimAccel:F

    .line 1448
    cmpg-float v2, p2, v5

    if-gez v2, :cond_3a

    .line 1449
    iput v5, p0, Lcom/android/server/status/StatusBarService;->mAnimVel:F

    goto :goto_3a

    .line 1455
    :cond_8f
    iput v7, p0, Lcom/android/server/status/StatusBarService;->mAnimAccel:F

    .line 1456
    cmpl-float v2, p2, v5

    if-lez v2, :cond_3a

    .line 1457
    iput v5, p0, Lcom/android/server/status/StatusBarService;->mAnimVel:F

    goto :goto_3a
.end method

.method performRemoveIcon(Landroid/os/IBinder;)V
    .registers 8
    .parameter "key"

    .prologue
    .line 1045
    monitor-enter p0

    .line 1049
    :try_start_1
    iget-object v4, p0, Lcom/android/server/status/StatusBarService;->mIconMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/status/StatusBarIcon;

    .line 1050
    .local v0, icon:Lcom/android/server/status/StatusBarIcon;
    iget-object v4, p0, Lcom/android/server/status/StatusBarService;->mIconList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1051
    if-eqz v0, :cond_2c

    .line 1052
    iget-object v4, v0, Lcom/android/server/status/StatusBarIcon;->view:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 1053
    .local v2, parent:Landroid/view/ViewGroup;
    iget-object v4, v0, Lcom/android/server/status/StatusBarIcon;->view:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1054
    iget-object v4, v0, Lcom/android/server/status/StatusBarIcon;->mData:Lcom/android/server/status/IconData;

    iget-object v4, v4, Lcom/android/server/status/IconData;->slot:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/status/StatusBarService;->getRightIconIndex(Ljava/lang/String;)I

    move-result v3

    .line 1055
    .local v3, slotIndex:I
    if-ltz v3, :cond_2c

    .line 1056
    iget-object v4, p0, Lcom/android/server/status/StatusBarService;->mRightIcons:[Lcom/android/server/status/StatusBarIcon;

    const/4 v5, 0x0

    aput-object v5, v4, v3

    .line 1059
    .end local v2           #parent:Landroid/view/ViewGroup;
    .end local v3           #slotIndex:I
    :cond_2c
    invoke-virtual {p0, p1}, Lcom/android/server/status/StatusBarService;->getNotification(Landroid/os/IBinder;)Lcom/android/server/status/StatusBarNotification;

    move-result-object v1

    .line 1060
    .local v1, notification:Lcom/android/server/status/StatusBarNotification;
    if-eqz v1, :cond_41

    .line 1061
    invoke-virtual {p0, v1}, Lcom/android/server/status/StatusBarService;->removeNotificationView(Lcom/android/server/status/StatusBarNotification;)V

    .line 1062
    iget-object v4, p0, Lcom/android/server/status/StatusBarService;->mNotificationData:Lcom/android/server/status/NotificationViewList;

    monitor-enter v4
    :try_end_38
    .catchall {:try_start_1 .. :try_end_38} :catchall_46

    .line 1063
    :try_start_38
    iget-object v5, p0, Lcom/android/server/status/StatusBarService;->mNotificationData:Lcom/android/server/status/NotificationViewList;

    invoke-virtual {v5, v1}, Lcom/android/server/status/NotificationViewList;->remove(Lcom/android/server/status/StatusBarNotification;)V

    .line 1064
    monitor-exit v4
    :try_end_3e
    .catchall {:try_start_38 .. :try_end_3e} :catchall_43

    .line 1065
    :try_start_3e
    invoke-direct {p0}, Lcom/android/server/status/StatusBarService;->setAreThereNotifications()V

    .line 1067
    :cond_41
    monitor-exit p0
    :try_end_42
    .catchall {:try_start_3e .. :try_end_42} :catchall_46

    .line 1068
    return-void

    .line 1064
    :catchall_43
    move-exception v5

    :try_start_44
    monitor-exit v4
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    :try_start_45
    throw v5

    .line 1067
    .end local v0           #icon:Lcom/android/server/status/StatusBarIcon;
    .end local v1           #notification:Lcom/android/server/status/StatusBarNotification;
    :catchall_46
    move-exception v4

    monitor-exit p0
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_46

    throw v4
.end method

.method performSetBackground(Ljava/lang/String;)V
    .registers 4
    .parameter "theme"

    .prologue
    .line 1008
    monitor-enter p0

    .line 1021
    :try_start_1
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mStatusBarView:Lcom/android/server/status/StatusBarView;

    const v1, 0x108029a

    invoke-virtual {v0, v1}, Lcom/android/server/status/StatusBarView;->setBackgroundResource(I)V

    .line 1022
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mDateView:Lcom/android/server/status/DateView;

    const v1, 0x108029a

    invoke-virtual {v0, v1}, Lcom/android/server/status/DateView;->setBackgroundResource(I)V

    .line 1023
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mDateView:Lcom/android/server/status/DateView;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Lcom/android/server/status/DateView;->setTextColor(I)V

    .line 1025
    monitor-exit p0

    .line 1026
    return-void

    .line 1025
    :catchall_1a
    move-exception v0

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method performSetIconVisibility(Landroid/os/IBinder;Z)V
    .registers 7
    .parameter "key"
    .parameter "visible"

    .prologue
    .line 997
    iget-object v1, p0, Lcom/android/server/status/StatusBarService;->mIconMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 1001
    :try_start_3
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mIconMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/status/StatusBarIcon;

    .line 1002
    .local v0, icon:Lcom/android/server/status/StatusBarIcon;
    iget-object v2, v0, Lcom/android/server/status/StatusBarIcon;->view:Landroid/view/View;

    if-eqz p2, :cond_15

    const/4 v3, 0x0

    :goto_10
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1003
    monitor-exit v1

    .line 1004
    return-void

    .line 1002
    :cond_15
    const/16 v3, 0x8

    goto :goto_10

    .line 1003
    .end local v0           #icon:Lcom/android/server/status/StatusBarIcon;
    :catchall_18
    move-exception v2

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v2
.end method

.method performUpdateIconColor(Landroid/os/IBinder;Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;I)V
    .registers 8
    .parameter "key"
    .parameter "data"
    .parameter "n"
    .parameter "color"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/status/StatusBarException;
        }
    .end annotation

    .prologue
    .line 1035
    iget-object v1, p0, Lcom/android/server/status/StatusBarService;->mIconMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 1036
    :try_start_3
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mIconMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/status/StatusBarIcon;

    .line 1037
    .local v0, icon:Lcom/android/server/status/StatusBarIcon;
    if-eqz v0, :cond_12

    .line 1038
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2, p2, p4}, Lcom/android/server/status/StatusBarIcon;->updateTextIconColor(Landroid/content/Context;Lcom/android/server/status/IconData;I)V

    .line 1040
    :cond_12
    monitor-exit v1

    .line 1041
    return-void

    .line 1040
    .end local v0           #icon:Lcom/android/server/status/StatusBarIcon;
    :catchall_14
    move-exception v2

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v2
.end method

.method postStartTracing()V
    .registers 5

    .prologue
    .line 2113
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mHandler:Lcom/android/server/status/StatusBarService$H;

    iget-object v1, p0, Lcom/android/server/status/StatusBarService;->mStartTracing:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/status/StatusBarService$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2114
    return-void
.end method

.method prepareTracking(I)V
    .registers 10
    .parameter "y"

    .prologue
    const/16 v7, 0x3e9

    const/16 v6, 0x3e8

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 1382
    iput-boolean v5, p0, Lcom/android/server/status/StatusBarService;->mTracking:Z

    .line 1383
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/status/StatusBarService;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1384
    iget-boolean v3, p0, Lcom/android/server/status/StatusBarService;->mExpanded:Z

    if-nez v3, :cond_5c

    move v2, v5

    .line 1385
    .local v2, opening:Z
    :goto_13
    iget-boolean v3, p0, Lcom/android/server/status/StatusBarService;->mExpanded:Z

    if-nez v3, :cond_5e

    .line 1386
    const/high16 v3, 0x44fa

    iput v3, p0, Lcom/android/server/status/StatusBarService;->mAnimAccel:F

    .line 1387
    const/high16 v3, 0x4348

    iput v3, p0, Lcom/android/server/status/StatusBarService;->mAnimVel:F

    .line 1388
    iget-object v3, p0, Lcom/android/server/status/StatusBarService;->mStatusBarView:Lcom/android/server/status/StatusBarView;

    invoke-virtual {v3}, Lcom/android/server/status/StatusBarView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/android/server/status/StatusBarService;->mAnimY:F

    .line 1389
    iget v3, p0, Lcom/android/server/status/StatusBarService;->mAnimY:F

    float-to-int v3, v3

    invoke-virtual {p0, v3}, Lcom/android/server/status/StatusBarService;->updateExpandedViewPos(I)V

    .line 1390
    iput-boolean v5, p0, Lcom/android/server/status/StatusBarService;->mAnimating:Z

    .line 1391
    iput-boolean v5, p0, Lcom/android/server/status/StatusBarService;->mAnimatingReveal:Z

    .line 1392
    iget-object v3, p0, Lcom/android/server/status/StatusBarService;->mHandler:Lcom/android/server/status/StatusBarService$H;

    invoke-virtual {v3, v6}, Lcom/android/server/status/StatusBarService$H;->removeMessages(I)V

    .line 1393
    iget-object v3, p0, Lcom/android/server/status/StatusBarService;->mHandler:Lcom/android/server/status/StatusBarService$H;

    invoke-virtual {v3, v7}, Lcom/android/server/status/StatusBarService$H;->removeMessages(I)V

    .line 1394
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1395
    .local v0, now:J
    iput-wide v0, p0, Lcom/android/server/status/StatusBarService;->mAnimLastTime:J

    .line 1396
    const-wide/16 v3, 0x10

    add-long/2addr v3, v0

    iput-wide v3, p0, Lcom/android/server/status/StatusBarService;->mCurAnimationTime:J

    .line 1397
    iput-boolean v5, p0, Lcom/android/server/status/StatusBarService;->mAnimating:Z

    .line 1398
    iget-object v3, p0, Lcom/android/server/status/StatusBarService;->mHandler:Lcom/android/server/status/StatusBarService$H;

    iget-object v4, p0, Lcom/android/server/status/StatusBarService;->mHandler:Lcom/android/server/status/StatusBarService$H;

    invoke-virtual {v4, v7}, Lcom/android/server/status/StatusBarService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/server/status/StatusBarService;->mCurAnimationTime:J

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/status/StatusBarService$H;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 1407
    .end local v0           #now:J
    :cond_56
    :goto_56
    if-eqz v2, :cond_6a

    .line 1408
    invoke-direct {p0}, Lcom/android/server/status/StatusBarService;->makeExpandedVisible()V

    .line 1412
    :goto_5b
    return-void

    .end local v2           #opening:Z
    :cond_5c
    move v2, v4

    .line 1384
    goto :goto_13

    .line 1402
    .restart local v2       #opening:Z
    :cond_5e
    iget-boolean v3, p0, Lcom/android/server/status/StatusBarService;->mAnimating:Z

    if-eqz v3, :cond_56

    .line 1403
    iput-boolean v4, p0, Lcom/android/server/status/StatusBarService;->mAnimating:Z

    .line 1404
    iget-object v3, p0, Lcom/android/server/status/StatusBarService;->mHandler:Lcom/android/server/status/StatusBarService$H;

    invoke-virtual {v3, v6}, Lcom/android/server/status/StatusBarService$H;->removeMessages(I)V

    goto :goto_56

    .line 1410
    :cond_6a
    iget v3, p0, Lcom/android/server/status/StatusBarService;->mViewDelta:I

    add-int/2addr v3, p1

    invoke-virtual {p0, v3}, Lcom/android/server/status/StatusBarService;->updateExpandedViewPos(I)V

    goto :goto_5b
.end method

.method public removeIcon(Landroid/os/IBinder;)V
    .registers 8
    .parameter "key"

    .prologue
    const/4 v3, 0x0

    .line 603
    invoke-direct {p0}, Lcom/android/server/status/StatusBarService;->enforceStatusBar()V

    .line 604
    const/4 v1, 0x3

    const/4 v5, -0x1

    move-object v0, p0

    move-object v2, p1

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/status/StatusBarService;->addPendingOp(ILandroid/os/IBinder;Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;I)V

    .line 605
    return-void
.end method

.method removeNotificationView(Lcom/android/server/status/StatusBarNotification;)V
    .registers 5
    .parameter "notification"

    .prologue
    .line 1202
    iget-object v1, p1, Lcom/android/server/status/StatusBarNotification;->view:Landroid/view/View;

    .line 1203
    .local v1, v:Landroid/view/View;
    if-eqz v1, :cond_10

    .line 1204
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1205
    .local v0, parent:Landroid/view/ViewGroup;
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1206
    const/4 v2, 0x0

    iput-object v2, p1, Lcom/android/server/status/StatusBarNotification;->view:Landroid/view/View;

    .line 1208
    .end local v0           #parent:Landroid/view/ViewGroup;
    :cond_10
    return-void
.end method

.method setDateViewVisibility(ZI)V
    .registers 5
    .parameter "visible"
    .parameter "anim"

    .prologue
    .line 1815
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mDateView:Lcom/android/server/status/DateView;

    invoke-virtual {v0, p1}, Lcom/android/server/status/DateView;->setUpdates(Z)V

    .line 1816
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mDateView:Lcom/android/server/status/DateView;

    if-eqz p1, :cond_18

    const/4 v1, 0x0

    :goto_a
    invoke-virtual {v0, v1}, Lcom/android/server/status/DateView;->setVisibility(I)V

    .line 1817
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mDateView:Lcom/android/server/status/DateView;

    const/4 v1, 0x0

    invoke-direct {p0, p2, v1}, Lcom/android/server/status/StatusBarService;->loadAnim(ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/status/DateView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1818
    return-void

    .line 1816
    :cond_18
    const/4 v1, 0x4

    goto :goto_a
.end method

.method public setIconVisibility(Landroid/os/IBinder;Z)V
    .registers 4
    .parameter "key"
    .parameter "visible"

    .prologue
    .line 659
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/status/StatusBarService;->addPendingOp(ILandroid/os/IBinder;Z)V

    .line 660
    return-void
.end method

.method public setNotificationCallbacks(Lcom/android/server/status/StatusBarService$NotificationCallbacks;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 289
    iput-object p1, p0, Lcom/android/server/status/StatusBarService;->mNotificationCallbacks:Lcom/android/server/status/StatusBarService$NotificationCallbacks;

    .line 290
    return-void
.end method

.method setNotificationIconVisibility(ZI)V
    .registers 7
    .parameter "visible"
    .parameter "anim"

    .prologue
    .line 1821
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mNotificationIcons:Lcom/android/server/status/IconMerger;

    invoke-virtual {v2}, Lcom/android/server/status/IconMerger;->getVisibility()I

    move-result v0

    .line 1822
    .local v0, old:I
    if-eqz p1, :cond_1c

    const/4 v2, 0x0

    move v1, v2

    .line 1823
    .local v1, v:I
    :goto_a
    if-eq v0, v1, :cond_1b

    .line 1824
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mNotificationIcons:Lcom/android/server/status/IconMerger;

    invoke-virtual {v2, v1}, Lcom/android/server/status/IconMerger;->setVisibility(I)V

    .line 1825
    iget-object v2, p0, Lcom/android/server/status/StatusBarService;->mNotificationIcons:Lcom/android/server/status/IconMerger;

    const/4 v3, 0x0

    invoke-direct {p0, p2, v3}, Lcom/android/server/status/StatusBarService;->loadAnim(ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/status/IconMerger;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1827
    :cond_1b
    return-void

    .line 1822
    .end local v1           #v:I
    :cond_1c
    const/4 v2, 0x4

    move v1, v2

    goto :goto_a
.end method

.method public setStatusBarBackground(Ljava/lang/String;)V
    .registers 3
    .parameter "theme"

    .prologue
    .line 610
    invoke-direct {p0}, Lcom/android/server/status/StatusBarService;->enforceExpandStatusBar()V

    .line 611
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Lcom/android/server/status/StatusBarService;->addPendingOp(ILjava/lang/String;)V

    .line 612
    return-void
.end method

.method stopTracking()V
    .registers 2

    .prologue
    .line 1347
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/status/StatusBarService;->mTracking:Z

    .line 1348
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1349
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/status/StatusBarService;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1350
    return-void
.end method

.method public systemReady()V
    .registers 8

    .prologue
    .line 540
    iget-object v6, p0, Lcom/android/server/status/StatusBarService;->mStatusBarView:Lcom/android/server/status/StatusBarView;

    .line 541
    .local v6, view:Lcom/android/server/status/StatusBarView;
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    invoke-virtual {v6}, Lcom/android/server/status/StatusBarView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050004

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const/16 v3, 0x7d0

    const/16 v4, 0x48

    iget v5, p0, Lcom/android/server/status/StatusBarService;->mPixelFormat:I

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 549
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x37

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 550
    const-string v1, "StatusBar"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 551
    const v1, 0x1030062

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 553
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v1

    invoke-virtual {v1, v6, v0}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 554
    return-void
.end method

.method public toggle()V
    .registers 4

    .prologue
    .line 570
    invoke-direct {p0}, Lcom/android/server/status/StatusBarService;->enforceExpandStatusBar()V

    .line 571
    const/4 v0, 0x6

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/status/StatusBarService;->addPendingOp(ILandroid/os/IBinder;Z)V

    .line 572
    return-void
.end method

.method updateAvailableHeight()V
    .registers 5

    .prologue
    .line 1897
    iget-object v3, p0, Lcom/android/server/status/StatusBarService;->mExpandedView:Lcom/android/server/status/ExpandedView;

    if-eqz v3, :cond_1e

    .line 1898
    iget-object v3, p0, Lcom/android/server/status/StatusBarService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v0

    .line 1899
    .local v0, disph:I
    iget-object v3, p0, Lcom/android/server/status/StatusBarService;->mStatusBarView:Lcom/android/server/status/StatusBarView;

    invoke-virtual {v3}, Lcom/android/server/status/StatusBarView;->getHeight()I

    move-result v1

    .line 1900
    .local v1, h:I
    iget-object v3, p0, Lcom/android/server/status/StatusBarService;->mCloseView:Lcom/android/server/status/CloseDragHandle;

    invoke-virtual {v3}, Lcom/android/server/status/CloseDragHandle;->getHeight()I

    move-result v3

    add-int/2addr v3, v1

    sub-int v2, v0, v3

    .line 1901
    .local v2, max:I
    iget-object v3, p0, Lcom/android/server/status/StatusBarService;->mExpandedView:Lcom/android/server/status/ExpandedView;

    invoke-virtual {v3, v2}, Lcom/android/server/status/ExpandedView;->setMaxHeight(I)V

    .line 1903
    .end local v0           #disph:I
    .end local v1           #h:I
    .end local v2           #max:I
    :cond_1e
    return-void
.end method

.method updateExpandedViewPos(I)V
    .registers 12
    .parameter "expandedPosition"

    .prologue
    const/4 v9, 0x1

    .line 1838
    iget-boolean v5, p0, Lcom/android/server/status/StatusBarService;->mExpandedVisible:Z

    if-nez v5, :cond_6

    .line 1894
    :cond_5
    :goto_5
    return-void

    .line 1843
    :cond_6
    iget-object v5, p0, Lcom/android/server/status/StatusBarService;->mStatusBarView:Lcom/android/server/status/StatusBarView;

    invoke-virtual {v5}, Lcom/android/server/status/StatusBarView;->getHeight()I

    move-result v1

    .line 1844
    .local v1, h:I
    iget-object v5, p0, Lcom/android/server/status/StatusBarService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v5}, Landroid/view/Display;->getHeight()I

    move-result v0

    .line 1846
    .local v0, disph:I
    const/16 v5, -0x2711

    if-ne p1, v5, :cond_88

    .line 1847
    move v4, v1

    .line 1860
    .local v4, pos:I
    :goto_17
    iget-object v5, p0, Lcom/android/server/status/StatusBarService;->mTrackingParams:Landroid/view/WindowManager$LayoutParams;

    iput v4, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v4, p0, Lcom/android/server/status/StatusBarService;->mTrackingPosition:I

    .line 1861
    iget-object v5, p0, Lcom/android/server/status/StatusBarService;->mTrackingParams:Landroid/view/WindowManager$LayoutParams;

    sub-int v6, v0, v1

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1862
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/status/StatusBarService;->mTrackingView:Lcom/android/server/status/TrackingView;

    iget-object v7, p0, Lcom/android/server/status/StatusBarService;->mTrackingParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v5, v6, v7}, Landroid/view/WindowManagerImpl;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1864
    iget-object v5, p0, Lcom/android/server/status/StatusBarService;->mCloseView:Lcom/android/server/status/CloseDragHandle;

    iget-object v6, p0, Lcom/android/server/status/StatusBarService;->mCloseLocation:[I

    invoke-virtual {v5, v6}, Lcom/android/server/status/CloseDragHandle;->getLocationInWindow([I)V

    .line 1866
    iget-object v5, p0, Lcom/android/server/status/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v5, :cond_5

    .line 1867
    iget-object v5, p0, Lcom/android/server/status/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v6, p0, Lcom/android/server/status/StatusBarService;->mTrackingView:Lcom/android/server/status/TrackingView;

    invoke-virtual {v6}, Lcom/android/server/status/TrackingView;->getHeight()I

    move-result v6

    add-int/2addr v6, v4

    iget-object v7, p0, Lcom/android/server/status/StatusBarService;->mTrackingParams:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v8, p0, Lcom/android/server/status/StatusBarService;->mCloseLocation:[I

    aget v8, v8, v9

    sub-int/2addr v7, v8

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/android/server/status/StatusBarService;->mExpandedView:Lcom/android/server/status/ExpandedView;

    invoke-virtual {v7}, Lcom/android/server/status/ExpandedView;->getHeight()I

    move-result v7

    sub-int/2addr v6, v7

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1869
    move v2, v1

    .line 1870
    .local v2, max:I
    iget-object v5, p0, Lcom/android/server/status/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    if-le v5, v2, :cond_60

    .line 1871
    iget-object v5, p0, Lcom/android/server/status/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1873
    :cond_60
    iget v3, p0, Lcom/android/server/status/StatusBarService;->mTrackingPosition:I

    .line 1874
    .local v3, min:I
    iget-object v5, p0, Lcom/android/server/status/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    if-ge v5, v3, :cond_6c

    .line 1875
    iget-object v5, p0, Lcom/android/server/status/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1884
    :cond_6c
    iget v5, p0, Lcom/android/server/status/StatusBarService;->mTrackingPosition:I

    iget-object v6, p0, Lcom/android/server/status/StatusBarService;->mTrackingView:Lcom/android/server/status/TrackingView;

    invoke-virtual {v6}, Lcom/android/server/status/TrackingView;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    if-le v5, v1, :cond_98

    move v5, v9

    :goto_78
    invoke-virtual {p0, v5}, Lcom/android/server/status/StatusBarService;->panelSlightlyVisible(Z)V

    .line 1885
    iget-object v5, p0, Lcom/android/server/status/StatusBarService;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/status/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v5, v6}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto/16 :goto_5

    .line 1849
    .end local v2           #max:I
    .end local v3           #min:I
    .end local v4           #pos:I
    :cond_88
    const/16 v5, -0x2710

    if-ne p1, v5, :cond_8f

    .line 1850
    iget v4, p0, Lcom/android/server/status/StatusBarService;->mTrackingPosition:I

    .restart local v4       #pos:I
    goto :goto_17

    .line 1853
    .end local v4           #pos:I
    :cond_8f
    if-gt p1, v0, :cond_96

    .line 1854
    move v4, p1

    .line 1858
    .restart local v4       #pos:I
    :goto_92
    sub-int v5, v0, v1

    sub-int/2addr v4, v5

    goto :goto_17

    .line 1856
    .end local v4           #pos:I
    :cond_96
    move v4, v0

    .restart local v4       #pos:I
    goto :goto_92

    .line 1884
    .restart local v2       #max:I
    .restart local v3       #min:I
    :cond_98
    const/4 v5, 0x0

    goto :goto_78
.end method

.method public updateIcon(Landroid/os/IBinder;Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;)V
    .registers 10
    .parameter "key"
    .parameter "data"
    .parameter "n"

    .prologue
    .line 648
    const/4 v1, 0x2

    const/4 v5, -0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/status/StatusBarService;->addPendingOp(ILandroid/os/IBinder;Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;I)V

    .line 650
    return-void
.end method

.method public updateIcon(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 8
    .parameter "key"
    .parameter "slot"
    .parameter "iconPackage"
    .parameter "iconId"
    .parameter "iconLevel"

    .prologue
    .line 598
    invoke-direct {p0}, Lcom/android/server/status/StatusBarService;->enforceStatusBar()V

    .line 599
    const/4 v0, 0x0

    invoke-static {p2, p3, p4, p5, v0}, Lcom/android/server/status/IconData;->makeIcon(Ljava/lang/String;Ljava/lang/String;III)Lcom/android/server/status/IconData;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/status/StatusBarService;->updateIcon(Landroid/os/IBinder;Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;)V

    .line 600
    return-void
.end method

.method public updateIconTextColor(Landroid/os/IBinder;Lcom/android/server/status/IconData;I)V
    .registers 10
    .parameter "key"
    .parameter "data"
    .parameter "color"

    .prologue
    .line 654
    const/16 v1, 0x9

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/status/StatusBarService;->addPendingOp(ILandroid/os/IBinder;Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;I)V

    .line 655
    return-void
.end method

.method updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V
    .registers 11
    .parameter "showSpn"
    .parameter "spn"
    .parameter "showPlmn"
    .parameter "plmn"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    const-string v5, ""

    .line 2071
    const/4 v0, 0x0

    .line 2072
    .local v0, something:Z
    if-eqz p3, :cond_2d

    .line 2073
    iget-object v1, p0, Lcom/android/server/status/StatusBarService;->mPlmnLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2074
    if-eqz p4, :cond_24

    .line 2075
    iget-object v1, p0, Lcom/android/server/status/StatusBarService;->mPlmnLabel:Landroid/widget/TextView;

    invoke-virtual {v1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2083
    :goto_14
    if-eqz p1, :cond_3a

    if-eqz p2, :cond_3a

    .line 2084
    iget-object v1, p0, Lcom/android/server/status/StatusBarService;->mSpnLabel:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2085
    iget-object v1, p0, Lcom/android/server/status/StatusBarService;->mSpnLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2086
    const/4 v0, 0x1

    .line 2091
    :goto_23
    return-void

    .line 2077
    :cond_24
    iget-object v1, p0, Lcom/android/server/status/StatusBarService;->mPlmnLabel:Landroid/widget/TextView;

    const v2, 0x104017d

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_14

    .line 2080
    :cond_2d
    iget-object v1, p0, Lcom/android/server/status/StatusBarService;->mPlmnLabel:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2081
    iget-object v1, p0, Lcom/android/server/status/StatusBarService;->mPlmnLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_14

    .line 2088
    :cond_3a
    iget-object v1, p0, Lcom/android/server/status/StatusBarService;->mSpnLabel:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2089
    iget-object v1, p0, Lcom/android/server/status/StatusBarService;->mSpnLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_23
.end method

.method updateNotificationView(Lcom/android/server/status/StatusBarNotification;Lcom/android/server/status/NotificationData;)V
    .registers 10
    .parameter "notification"
    .parameter "oldData"

    .prologue
    .line 1169
    iget-object v3, p1, Lcom/android/server/status/StatusBarNotification;->data:Lcom/android/server/status/NotificationData;

    .line 1170
    .local v3, n:Lcom/android/server/status/NotificationData;
    if-eqz p2, :cond_8f

    if-eqz v3, :cond_8f

    iget-object v4, v3, Lcom/android/server/status/NotificationData;->contentView:Landroid/widget/RemoteViews;

    if-eqz v4, :cond_8f

    iget-object v4, p2, Lcom/android/server/status/NotificationData;->contentView:Landroid/widget/RemoteViews;

    if-eqz v4, :cond_8f

    iget-object v4, v3, Lcom/android/server/status/NotificationData;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v4}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8f

    iget-object v4, p2, Lcom/android/server/status/NotificationData;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v4}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8f

    iget-object v4, p2, Lcom/android/server/status/NotificationData;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v4}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v3, Lcom/android/server/status/NotificationData;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v5}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8f

    iget-object v4, p2, Lcom/android/server/status/NotificationData;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v4}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v4

    iget-object v5, v3, Lcom/android/server/status/NotificationData;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v5}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v5

    if-ne v4, v5, :cond_8f

    .line 1176
    iget-object v4, p0, Lcom/android/server/status/StatusBarService;->mNotificationData:Lcom/android/server/status/NotificationViewList;

    invoke-virtual {v4, p1}, Lcom/android/server/status/NotificationViewList;->update(Lcom/android/server/status/StatusBarNotification;)V

    .line 1178
    :try_start_43
    iget-object v4, v3, Lcom/android/server/status/NotificationData;->contentView:Landroid/widget/RemoteViews;

    iget-object v5, p0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    iget-object v6, p1, Lcom/android/server/status/StatusBarNotification;->contentView:Landroid/view/View;

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;)V

    .line 1181
    iget-object v4, p1, Lcom/android/server/status/StatusBarNotification;->view:Landroid/view/View;

    const v5, 0x1020002

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1183
    .local v0, content:Landroid/view/ViewGroup;
    iget-object v1, v3, Lcom/android/server/status/NotificationData;->contentIntent:Landroid/app/PendingIntent;

    .line 1184
    .local v1, contentIntent:Landroid/app/PendingIntent;
    if-eqz v1, :cond_67

    .line 1185
    new-instance v4, Lcom/android/server/status/StatusBarService$Launcher;

    iget-object v5, v3, Lcom/android/server/status/NotificationData;->pkg:Ljava/lang/String;

    iget v6, v3, Lcom/android/server/status/NotificationData;->id:I

    invoke-direct {v4, p0, v1, v5, v6}, Lcom/android/server/status/StatusBarService$Launcher;-><init>(Lcom/android/server/status/StatusBarService;Landroid/app/PendingIntent;Ljava/lang/String;I)V

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_67
    .catch Ljava/lang/RuntimeException; {:try_start_43 .. :try_end_67} :catch_6b

    .line 1198
    .end local v0           #content:Landroid/view/ViewGroup;
    .end local v1           #contentIntent:Landroid/app/PendingIntent;
    :cond_67
    :goto_67
    invoke-direct {p0}, Lcom/android/server/status/StatusBarService;->setAreThereNotifications()V

    .line 1199
    return-void

    .line 1188
    :catch_6b
    move-exception v4

    move-object v2, v4

    .line 1190
    .local v2, e:Ljava/lang/RuntimeException;
    const-string v4, "StatusBar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "couldn\'t reapply views for package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lcom/android/server/status/NotificationData;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v6}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1191
    invoke-virtual {p0, p1}, Lcom/android/server/status/StatusBarService;->removeNotificationView(Lcom/android/server/status/StatusBarNotification;)V

    goto :goto_67

    .line 1194
    .end local v2           #e:Ljava/lang/RuntimeException;
    :cond_8f
    iget-object v4, p0, Lcom/android/server/status/StatusBarService;->mNotificationData:Lcom/android/server/status/NotificationViewList;

    invoke-virtual {v4, p1}, Lcom/android/server/status/NotificationViewList;->update(Lcom/android/server/status/StatusBarNotification;)V

    .line 1195
    invoke-virtual {p0, p1}, Lcom/android/server/status/StatusBarService;->removeNotificationView(Lcom/android/server/status/StatusBarNotification;)V

    .line 1196
    invoke-virtual {p0, p1}, Lcom/android/server/status/StatusBarService;->addNotificationView(Lcom/android/server/status/StatusBarNotification;)V

    goto :goto_67
.end method

.method public updateQuickSetting(I)V
    .registers 7
    .parameter "networkType"

    .prologue
    const/4 v3, 0x0

    const-string v4, "StatusBar"

    .line 515
    const-string v1, "StatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateQuickSetting---> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    iget v1, p0, Lcom/android/server/status/StatusBarService;->mNetTypeWiFi:I

    if-ne p1, v1, :cond_37

    .line 518
    iget-object v1, p0, Lcom/android/server/status/StatusBarService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "wifi_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/status/StatusBarService;->mwifiOn:I

    .line 519
    iget-object v1, p0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 520
    .local v0, mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-direct {p0}, Lcom/android/server/status/StatusBarService;->setWiFiButton()V

    .line 528
    .end local v0           #mWifiManager:Landroid/net/wifi/WifiManager;
    :goto_36
    return-void

    .line 521
    :cond_37
    iget v1, p0, Lcom/android/server/status/StatusBarService;->mNetTypeBT:I

    if-ne p1, v1, :cond_55

    .line 522
    iget-object v1, p0, Lcom/android/server/status/StatusBarService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "bluetooth_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/status/StatusBarService;->mbluetoothOn:I

    .line 523
    iget-object v1, p0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    const-string v2, "bluetooth"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    iput-object v1, p0, Lcom/android/server/status/StatusBarService;->mBluetoothSet:Landroid/bluetooth/BluetoothDevice;

    .line 524
    invoke-direct {p0}, Lcom/android/server/status/StatusBarService;->setBTButton()V

    goto :goto_36

    .line 526
    :cond_55
    const-string v1, "StatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateQuickSetting---> Network type is unknown: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36
.end method

.method updateResources()V
    .registers 4

    .prologue
    .line 2101
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mClearButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    const v2, 0x10401ad

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2102
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mOngoingTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    const v2, 0x10401af

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2103
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mLatestTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    const v2, 0x10401b0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2104
    iget-object v0, p0, Lcom/android/server/status/StatusBarService;->mNoNotificationsTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    const v2, 0x10401ae

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2105
    const-string v0, "StatusBar"

    const-string v1, "updateResources"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2106
    return-void
.end method

.method vibrate()V
    .registers 4

    .prologue
    .line 2117
    iget-object v1, p0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 2119
    .local v0, vib:Landroid/os/Vibrator;
    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 2120
    return-void
.end method

.method public viewInfo(Landroid/view/View;)Ljava/lang/String;
    .registers 5
    .parameter "v"

    .prologue
    const-string v2, ","

    .line 1625
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
